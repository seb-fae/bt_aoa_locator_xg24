#!/usr/bin/env python3
"""Host regressions for project AoA code; hardware/RTL calls are mocked.

Run: python3 tests/run_aoa_regressions.py
Requires a C compiler (CC or cc). All build products go into a temporary directory.
"""
import os
from pathlib import Path
import re
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[1]
SDK = ROOT / 'simplicity_sdk_2026.6.1'
ANGLE = ROOT / 'bt/aoa/aoa_angle/aoa_angle.c'
API = (SDK / 'realtime_locationing/inc/sl_rtl_clib_api.h').read_text()

# Keep mock signatures aligned with the bundled SDK, including argument types.
rtl_stubs = []
for name in sorted(set(re.findall(r'\b(sl_rtl_\w+)\(', ANGLE.read_text())) | {'sl_rtl_aox_get_latest_aox_standard_deviation'}):
    match = re.search(r'enum sl_rtl_error_code ' + name + r'\(([^;{}]*)\);', API)
    if not match:
        continue
    extra = ''
    if name == 'sl_rtl_aox_calculate_iq_sample_phase_rotation':
        extra = 'ratio = iq_data_downsampling_factor; *phase_rotation_out = 0;'
    if name.endswith('_deinit'):
        body = f'++{ "aox_frees" if "aox" in name else "util_frees" }; return SL_RTL_ERROR_SUCCESS;'
    else:
        body = f'if (++rtl_calls == rtl_fail_at) return SL_RTL_ERROR_OUT_OF_MEMORY; {extra} return SL_RTL_ERROR_SUCCESS;'
    rtl_stubs.append(f'enum sl_rtl_error_code {name}({match[1]}) {{ {body} }}')

HARNESS = r'''
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
static int alloc_calls, alloc_fail_at, live_allocs;
static void *checked_malloc(size_t n) {
  if (++alloc_calls == alloc_fail_at) return NULL;
  void *p = malloc(n); if (p) ++live_allocs; return p;
}
static void checked_free(void *p) { if (p) --live_allocs; free(p); }
#define malloc checked_malloc
#define free checked_free
#include "bt/aoa/aoa_angle/aoa_angle.c"
#undef malloc
#undef free
#include "aoa_db.h"
static int rtl_calls, rtl_fail_at, aox_frees, util_frees;
static float ratio;
static int tags_added, tags_removed;
void aoa_db_on_tag_added(aoa_db_entry_t *tag) { ++tags_added; }
void aoa_db_on_tag_removed(aoa_db_entry_t *tag) { ++tags_removed; }
void aoa_id_copy(aoa_id_t dst, aoa_id_t src) { strcpy(dst, src); }
int aoa_id_compare(aoa_id_t a, aoa_id_t b) { return strcmp(a, b); }
uint32_t sl_rtl_aox_iq_sample_qa_get_results(sl_rtl_aox_libitem *p) { return 0; }
char *sl_rtl_util_iq_sample_qa_code2string(char *p, int n, uint32_t c) { return p; }
@RTL_STUBS@
int main(void) {
  aoa_id_t id = "test";
  aoa_angle_config_t *cfg;
  // Every allocation failure during initial configuration must roll back cleanly.
  assert(aoa_angle_add_config(id, &cfg) == SL_STATUS_OK);
  int total_allocs = alloc_calls;
  aoa_angle_reset_configs();
  assert(live_allocs == 0);
  for (int fail = 1; fail <= total_allocs; ++fail) {
    alloc_calls = 0; alloc_fail_at = fail;
    assert(aoa_angle_add_config(id, &cfg) == SL_STATUS_ALLOCATION_FAILED);
    assert(cfg == NULL && head_config == NULL && live_allocs == 0);
  }
  alloc_fail_at = 0;
  assert(aoa_angle_add_config(id, &cfg) == SL_STATUS_OK);
  assert(cfg->num_snapshots == 18);
  aoa_angle_config_node_t *node = head_config;
  int8_t data[164]; memset(data, 127, sizeof(data));
  aoa_iq_report_t iq = {.channel = 0, .length = sizeof(data), .samples = data};
  assert(get_samples(&iq, node));
  assert(node->ref_i_samples[0] == 1.0f && node->q_samples[17][3] == 1.0f);
  // Every truncated/odd report must fail without changing any existing samples.
  for (int len = 0; len < 158; ++len) {
    iq.length = len; data[0] = 0;
    assert(!get_samples(&iq, node));
    assert(node->ref_i_samples[0] == 1.0f && node->q_samples[17][3] == 1.0f);
  }
  iq.length = 159; assert(!get_samples(&iq, node));
  iq.length = 158; assert(get_samples(&iq, node));
  iq.length = sizeof(data); iq.samples = NULL; assert(!get_samples(&iq, node));
  iq.samples = data;
  aoa_state_t state = {0}; aoa_angle_t angle = {0};
  iq.channel = 40; assert(aoa_calculate(&state, &iq, &angle, id) == SL_RTL_ERROR_ARGUMENT);
  iq.channel = 0; iq.length = 84;
  assert(aoa_calculate(&state, &iq, &angle, id) == SL_RTL_ERROR_ARGUMENT);
  iq.length = sizeof(data);
  assert(aoa_calculate(&state, &iq, &angle, id) == SL_RTL_ERROR_SUCCESS);
  assert(ratio == 2.0f);
  // Reconfiguration failures retain the old buffers and do not leak new ones.
  float **old_i = node->i_samples, **old_q = node->q_samples;
  int old_live = live_allocs;
  cfg->cte_slot_duration = 2;
  for (int fail = 1; fail <= 20; ++fail) {
    alloc_calls = 0; alloc_fail_at = fail;
    assert(aoa_angle_finalize_config(id) == SL_STATUS_ALLOCATION_FAILED);
    assert(node->i_samples == old_i && node->q_samples == old_q);
    assert(live_allocs == old_live);
  }
  alloc_fail_at = 0;
  assert(aoa_angle_finalize_config(id) == SL_STATUS_OK);
  assert(cfg->num_snapshots == 9);
  assert(aoa_calculate(&state, &iq, &angle, id) == SL_RTL_ERROR_SUCCESS);
  assert(ratio == 4.0f);
  cfg->cte_slot_duration = 0;
  assert(aoa_angle_finalize_config(id) == SL_STATUS_INVALID_PARAMETER);
  cfg->cte_slot_duration = 2;
  // Fail each RTL setup step and check partial initialization is cleaned up.
  rtl_calls = 0;
  assert(aoa_init_rtl(&state, id, false) == SL_RTL_ERROR_SUCCESS);
  int setup_calls = rtl_calls;
  assert(aoa_deinit_rtl(&state, id) == SL_RTL_ERROR_SUCCESS);
  for (int fail = 1; fail <= setup_calls; ++fail) {
    rtl_calls = aox_frees = util_frees = 0; rtl_fail_at = fail;
    assert(aoa_init_rtl(&state, id, false) == SL_RTL_ERROR_OUT_OF_MEMORY);
    assert(aox_frees == (fail > 1));
    assert(util_frees == (fail == setup_calls));
  }
  rtl_fail_at = 0;
  aoa_angle_reset_configs(); assert(live_allocs == 0);
  puts("PASS: IQ rejection, 1/2 us phase ratios, config/RTL allocation rollback");

  antenna_array_t arr;
  assert(antenna_array_init(&arr, ANTENNA_ARRAY_TYPE_COREHW_2x2_URA) == SL_STATUS_OK);
  // Exhaustively test all four-entry patterns in [0,4], including every permutation.
  for (int a=0;a<5;++a) for (int b=0;b<5;++b)
    for (int c=0;c<5;++c) for (int d=0;d<5;++d) {
      uint8_t p[4]={a,b,c,d};
      int valid=a<4&&b<4&&c<4&&d<4&&a!=b&&a!=c&&a!=d&&b!=c&&b!=d&&c!=d;
      antenna_array_t before=arr;
      assert((antenna_array_set_pattern(&arr,p,4)==SL_STATUS_OK)==valid);
      if (!valid) assert(memcmp(&arr,&before,sizeof(arr))==0);
    }
  uint8_t order[4]={3,2,1,0}, pins[4], size=4;
  assert(antenna_array_set_pattern(&arr,order,4)==SL_STATUS_OK);
  assert(antenna_array_get_pin_pattern(&arr,pins,&size)==SL_STATUS_OK);
  assert(pins[0]==14 && pins[1]==10 && pins[2]==4 && pins[3]==0);
  arr.pattern[0]=255;
  assert(antenna_array_get_pin_pattern(&arr,pins,&size)==SL_STATUS_INVALID_PARAMETER);
  puts("PASS: 625 antenna patterns, GPIO lookup bounds");

  bd_addr addr={{1,0,0,0,0,0}};
  aoa_db_entry_t *t;
  assert(aoa_db_add_tag(0,&addr,0,&t)==SL_STATUS_OK); t->last_seen_tick=0;
  addr.addr[0]=2;
  assert(aoa_db_add_tag(0,&addr,0,&t)==SL_STATUS_OK); t->last_seen_tick=80;
  addr.addr[0]=3;
  for (int i=0;i<300;++i) assert(aoa_db_add_tag(0,&addr,0,&t)==SL_STATUS_NO_MORE_RESOURCE);
  assert(aoa_db_get_number_of_tags()==2);
  // Both tags have handle 0: expiration must remove the old one, not the head.
  aoa_db_remove_inactive_tags(100,60);
  assert(aoa_db_get_number_of_tags()==1 && tags_removed==1);
  assert(aoa_db_get_tag_by_index(0,&t)==SL_STATUS_OK && t->address.addr[0]==2);
  assert(aoa_db_add_tag(0,&addr,0,&t)==SL_STATUS_OK);
  assert(t->user_data==NULL);
  aoa_db_remove_all(); assert(tags_added==tags_removed);
  // Repeated add/remove must not consume a monotonically increasing quota.
  for (int i=0;i<300;++i) {
    assert(aoa_db_add_tag(0,&addr,0,&t)==SL_STATUS_OK);
    assert(aoa_db_remove_tag(0)==SL_STATUS_OK);
  }
  assert(aoa_db_get_number_of_tags()==0 && tags_added==tags_removed);
  puts("PASS: tag limit, shared-handle expiration, cleanup callbacks, quota reuse");
}
'''

with tempfile.TemporaryDirectory(prefix='mg24-aoa-test-') as tmp:
    tmp = Path(tmp)
    headers = {
        'sl_bt_api.h': '#pragma once\n#include "sl_status.h"\ntypedef struct { uint8_t addr[6]; } bd_addr;\n',
        'sl_common.h': '#define SL_WEAK __attribute__((weak))\n',
        'sl_system_config.h': '#define SYSTEM_BT_AOA_MAX_TAG_COUNT 2\n',
        'app_log.h': '#define APP_LOG_NL "\\n"\n#define app_log_debug(...) ((void)0)\n',
    }
    for name, content in headers.items():
        (tmp / name).write_text(content)
    src = tmp / 'regressions.c'
    src.write_text(HARNESS.replace('@RTL_STUBS@', '\n'.join(rtl_stubs)))
    includes = [tmp, ROOT, ROOT/'bt/aoa/aoa_angle', ROOT/'bt/aoa/aoa_angle/config',
                ROOT/'bt/aoa/aoa_cte/config', ROOT/'bt/aoa/aoa_util',
                ROOT/'bt/aoa/antenna_array', ROOT/'bt/aoa/aoa_db',
                SDK/'realtime_locationing/inc', SDK/'platform_core/platform/common/inc']
    cmd = [os.environ.get('CC', 'cc'), '-std=c99', '-g', '-fsanitize=address,undefined']
    cmd += [f'-I{p}' for p in includes]
    cmd += [str(src), str(ROOT/'bt/aoa/antenna_array/antenna_array.c'),
            str(ROOT/'bt/aoa/aoa_db/aoa_db.c'), '-o', str(tmp/'regressions')]
    subprocess.run(cmd, check=True)
    subprocess.run([str(tmp/'regressions')], check=True)
