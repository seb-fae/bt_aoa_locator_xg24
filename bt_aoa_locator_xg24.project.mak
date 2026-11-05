####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 21                                              #
####################################################################

BASE_SDK_PATH = /Users/secerdan/.silabs/slt/installs/conan/p/simpleca33d691c539/p
BASE_PKG_PATH = /Users/secerdan/.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2026.6.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DEFR32MG24B010F1536IM48=1' \
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DSL_BOARD_NAME="BRD4002A"' \
 '-DSL_BOARD_REV="A07"' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMA_CHANNEL=dma_channel' \
 '-DSL_CODE_COMPONENT_DMA_MANAGER=dma_manager' \
 '-DSL_CODE_COMPONENT_GPIO=gpio' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DSL_CODE_COMPONENT_HAL_LDMA=hal_ldma' \
 '-DSL_CODE_COMPONENT_HAL_SYSRTC=hal_sysrtc' \
 '-DSL_CODE_COMPONENT_INTERRUPT_MANAGER=interrupt_manager' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_MEMORY_MANAGER=memory_manager' \
 '-DSL_BT_API_FULL=1' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_RAIL_UTIL_PA_PLUGIN_HEADER=<sl_rail_util_pa_conversions.h>' \
 '-DSL_RAIL_UTIL_PA_TABLES_CONFIG_HEADER=<sl_rail_util_pa_tables_config.h>' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_SLI_CRYPTO=sli_crypto' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1' \
 '-DSL_CODE_COMPONENT_SLI_PROTOCOL_CRYPTO=sli_protocol_crypto' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal'

ASM_DEFS += \
 '-DEFR32MG24B010F1536IM48=1' \
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DSL_BOARD_NAME="BRD4002A"' \
 '-DSL_BOARD_REV="A07"' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMA_CHANNEL=dma_channel' \
 '-DSL_CODE_COMPONENT_DMA_MANAGER=dma_manager' \
 '-DSL_CODE_COMPONENT_GPIO=gpio' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DSL_CODE_COMPONENT_HAL_LDMA=hal_ldma' \
 '-DSL_CODE_COMPONENT_HAL_SYSRTC=hal_sysrtc' \
 '-DSL_CODE_COMPONENT_INTERRUPT_MANAGER=interrupt_manager' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_MEMORY_MANAGER=memory_manager' \
 '-DSL_BT_API_FULL=1' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_RAIL_UTIL_PA_PLUGIN_HEADER=<sl_rail_util_pa_conversions.h>' \
 '-DSL_RAIL_UTIL_PA_TABLES_CONFIG_HEADER=<sl_rail_util_pa_tables_config.h>' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSL_CODE_COMPONENT_SLI_CRYPTO=sli_crypto' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1' \
 '-DSL_CODE_COMPONENT_SLI_PROTOCOL_CRYPTO=sli_protocol_crypto' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I$(COPIED_SDK_PATH)/platform_core/platform/Device/SiliconLabs/EFR32MG24/Include \
 -I$(COPIED_SDK_PATH)/platform_core/app/common/util/app_assert \
 -I$(COPIED_SDK_PATH)/platform_core/app/common/util/app_queue \
 -I$(COPIED_SDK_PATH)/platform_core/app/common/util/app_rta/inc \
 -I$(COPIED_SDK_PATH)/platform_core/app/common/util/app_rta/inc/bm \
 -I$(COPIED_SDK_PATH)/platform_core/app/common/util/app_timer \
 -I$(COPIED_SDK_PATH)/platform_core/app/common/util/app_timer/bm \
 -I$(COPIED_SDK_PATH)/platform_core/platform/common/inc \
 -I$(COPIED_SDK_PATH)/bgapi_protocol/protocol/inc \
 -I$(COPIED_SDK_PATH)/bluetooth_common/inc \
 -I$(COPIED_SDK_PATH)/bluetooth_le_host/inc \
 -I$(COPIED_SDK_PATH)/bluetooth_le_controller/inc \
 -I$(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_transport \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src \
 -I$(COPIED_SDK_PATH)/cmsis/Core/Include \
 -I$(COPIED_SDK_PATH)/cmsis/Core/Include/m-profile \
 -I$(COPIED_SDK_PATH)/cmsis/Core/Include/a-profile \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/driver/dma_channel/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/src \
 -I$(COPIED_SDK_PATH)/platform_core/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/common/errno_error_codes/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/driver/gpio/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/peripheral/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/src \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/interrupt_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/interrupt_manager/src \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/interrupt_manager/inc/arm \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/mbedtls/include \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(COPIED_SDK_PATH)/mbedtls/library \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/profiler/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/mpu/inc \
 -I$(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp \
 -I$(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_evt_filter \
 -I$(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/config \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/common \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop \
 -I$(COPIED_SDK_PATH)/mbedtls \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/inc \
 -I$(COPIED_SDK_PATH)/rail_library/common \
 -I$(COPIED_SDK_PATH)/rail_library/protocol/ble \
 -I$(COPIED_SDK_PATH)/rail_library/protocol/ieee802154 \
 -I$(COPIED_SDK_PATH)/rail_library/protocol/wmbus \
 -I$(COPIED_SDK_PATH)/rail_library/protocol/zwave \
 -I$(COPIED_SDK_PATH)/rail_library/chip/efr32/efr32xg2x \
 -I$(COPIED_SDK_PATH)/rail_library/protocol/sidewalk \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src \
 -I$(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_aox \
 -I$(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24 \
 -I$(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_compatible_pa \
 -I$(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_conversions \
 -I$(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_tables/efr32xg24 \
 -I$(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_power_manager_init \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sli_crypto/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_protocol_crypto/src \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sli_psec_common/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sli_psec_osal/inc \
 -I$(COPIED_SDK_PATH)/platform_core/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(COPIED_SDK_PATH)/bgapi_protocol/build/gcc/cortex-m33/bgapi_trace/release/libbgapi_trace_stub.a \
 $(COPIED_SDK_PATH)/bgapi_protocol/build/gcc/cortex-m33/protocol/command/release/libbgapi_command.a \
 $(COPIED_SDK_PATH)/bgapi_protocol/build/gcc/cortex-m33/protocol/core/release/libbgapi_core.a \
 $(COPIED_SDK_PATH)/bgapi_protocol/build/gcc/cortex-m33/protocol/device/release/libbgapi_device.a \
 $(COPIED_SDK_PATH)/bgapi_protocol/build/gcc/cortex-m33/protocol/event/release/libbgapi_event.a \
 $(COPIED_SDK_PATH)/bgapi_protocol/build/gcc/cortex-m33/protocol/release/libbgapi_protocol.a \
 $(COPIED_SDK_PATH)/bgapi_protocol/build/gcc/cortex-m33/rtos_adaptation/release/libbgapi_protocol_rtos_adaptation_stub.a \
 $(COPIED_SDK_PATH)/bluetooth_common/lib/build/gcc/cortex-m33/bgcommon/release/libbgcommon.a \
 $(COPIED_SDK_PATH)/bluetooth_le_controller/build/gcc/xg24/release/liblinklayer.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/crypto/release/libble_host_crypto.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/crypto/crypto_lib/crypto_lib_psa/release/libble_host_crypto_lib_psa.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/bgstack/release/libbondingdb.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/ble_bgapi/release/libble_bgapi_gatt_client.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/ble_bgapi/release/libble_bgapi_gatt_server.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/privacy/local_privacy/release/libble_host_local_privacy.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/privacy/rpa_resolution/release/libble_host_rpa_resolution.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/accept_list/release/libble_host_accept_list_stub.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/advertiser/periodic_advertiser/release/libble_host_periodic_advertiser.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/bgstack/release/libble_host.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/ble_bgapi/release/libble_bgapi.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/ble_system/release/libble_system.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/connection_subrating/release/libble_host_connection_subrating_stub.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/core/release/libble_host_core.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/cte_receiver/release/libble_host_cte_receiver.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/hal/release/libble_host_hal_series2.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/hci/release/libble_host_hci.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/privacy/resolving_list/release/libble_host_resolving_list_stub.a \
 $(COPIED_SDK_PATH)/bluetooth_le_host/build/gcc/cortex-m33/system/release/libble_host_system.a \
 $(COPIED_SDK_PATH)/rail_library/autogen/librail_release/librail_efr32xg24_gcc_release.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c18 \
 -mcmse \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 --specs=nano.specs \
 -fno-lto

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++17 \
 -fno-rtti \
 -fno-exceptions \
 -mcmse \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 --specs=nano.specs \
 -fno-lto

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Wl,-Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--wrap=_free_r -Wl,--wrap=_malloc_r -Wl,--wrap=_calloc_r -Wl,--wrap=_realloc_r \
 -fno-lto \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/bluetooth_common/src/sli_bgcommon_debug_efr32.o: $(COPIED_SDK_PATH)/bluetooth_common/src/sli_bgcommon_debug_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_common/src/sli_bgcommon_debug_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_common/src/sli_bgcommon_debug_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_common/src/sli_bgcommon_debug_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_common/src/sli_bgcommon_debug_efr32.o

$(OUTPUT_DIR)/sdk/bluetooth_common/src/sli_bluetooth_common_config.o: $(COPIED_SDK_PATH)/bluetooth_common/src/sli_bluetooth_common_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_common/src/sli_bluetooth_common_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_common/src/sli_bluetooth_common_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_common/src/sli_bluetooth_common_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_common/src/sli_bluetooth_common_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_controller/src/sl_btctrl_init.o: $(COPIED_SDK_PATH)/bluetooth_le_controller/src/sl_btctrl_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_controller/src/sl_btctrl_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_controller/src/sl_btctrl_init.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_controller/src/sl_btctrl_init.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_controller/src/sl_btctrl_init.o

$(OUTPUT_DIR)/sdk/bluetooth_le_controller/src/sl_btctrl_init_tasklets.o: $(COPIED_SDK_PATH)/bluetooth_le_controller/src/sl_btctrl_init_tasklets.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_controller/src/sl_btctrl_init_tasklets.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_controller/src/sl_btctrl_init_tasklets.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_controller/src/sl_btctrl_init_tasklets.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_controller/src/sl_btctrl_init_tasklets.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sl_bt_stack_init.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sl_bt_stack_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sl_bt_stack_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sl_bt_stack_init.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sl_bt_stack_init.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sl_bt_stack_init.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_accept_list_config.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_accept_list_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_accept_list_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_accept_list_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_accept_list_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_accept_list_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_advertiser_config.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_advertiser_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_connection_config.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_connection_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_connection_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_connection_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_connection_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_connection_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_dynamic_gattdb_config.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_dynamic_gattdb_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_dynamic_gattdb_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_dynamic_gattdb_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_dynamic_gattdb_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_dynamic_gattdb_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_external_bondingdb_config.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_external_bondingdb_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_external_bondingdb_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_external_bondingdb_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_external_bondingdb_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_external_bondingdb_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_hci_event_table.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_hci_event_table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_hci_event_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_hci_event_table.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_hci_event_table.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_hci_event_table.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_host_adaptation.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_host_adaptation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_host_adaptation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_host_adaptation.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_host_adaptation.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_host_adaptation.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_l2cap_config.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_l2cap_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_l2cap_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_l2cap_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_l2cap_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_l2cap_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_sync_config.o: $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_sync_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_sync_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_host/src/sli_bt_sync_config.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_sync_config.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_host/src/sli_bt_sync_config.o

$(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp/sl_ncp.o: $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp/sl_ncp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp/sl_ncp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp/sl_ncp.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp/sl_ncp.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp/sl_ncp.o

$(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp/sli_ncp_sync_bm.o: $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp/sli_ncp_sync_bm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp/sli_ncp_sync_bm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp/sli_ncp_sync_bm.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp/sli_ncp_sync_bm.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp/sli_ncp_sync_bm.o

$(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp_evt_filter/sl_ncp_evt_filter.o: $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_evt_filter/sl_ncp_evt_filter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_evt_filter/sl_ncp_evt_filter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_evt_filter/sl_ncp_evt_filter.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp_evt_filter/sl_ncp_evt_filter.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp_evt_filter/sl_ncp_evt_filter.o

$(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp_transport/sl_bt_ncp_transport_iostream.o: $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_transport/sl_bt_ncp_transport_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_transport/sl_bt_ncp_transport_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/bluetooth_le_middleware/common/ncp_transport/sl_bt_ncp_transport_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp_transport/sl_bt_ncp_transport_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/bluetooth_le_middleware/common/ncp_transport/sl_bt_ncp_transport_iostream.o

$(OUTPUT_DIR)/sdk/mbedtls/library/cipher.o: $(COPIED_SDK_PATH)/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/mbedtls/library/cipher_wrap.o: $(COPIED_SDK_PATH)/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/mbedtls/library/constant_time.o: $(COPIED_SDK_PATH)/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/mbedtls/library/memory_buffer_alloc.o: $(COPIED_SDK_PATH)/mbedtls/library/memory_buffer_alloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/memory_buffer_alloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/memory_buffer_alloc.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/memory_buffer_alloc.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/memory_buffer_alloc.o

$(OUTPUT_DIR)/sdk/mbedtls/library/platform.o: $(COPIED_SDK_PATH)/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/mbedtls/library/platform_util.o: $(COPIED_SDK_PATH)/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_aead.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_cipher.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_client.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_driver_wrappers_no_static.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_driver_wrappers_no_static.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_driver_wrappers_no_static.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_driver_wrappers_no_static.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_ecp.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_ffdh.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_ffdh.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_ffdh.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_ffdh.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_ffdh.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_ffdh.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_hash.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_mac.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_pake.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_pake.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_pake.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_pake.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_pake.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_pake.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_rsa.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_se.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_slot_management.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_storage.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/mbedtls/library/psa_util.o: $(COPIED_SDK_PATH)/mbedtls/library/psa_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/psa_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/psa_util.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_util.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/psa_util.o

$(OUTPUT_DIR)/sdk/mbedtls/library/sha3.o: $(COPIED_SDK_PATH)/mbedtls/library/sha3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/sha3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/sha3.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/sha3.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/sha3.o

$(OUTPUT_DIR)/sdk/mbedtls/library/threading.o: $(COPIED_SDK_PATH)/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_queue/app_queue.o: $(COPIED_SDK_PATH)/platform_core/app/common/util/app_queue/app_queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/app/common/util/app_queue/app_queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/app/common/util/app_queue/app_queue.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_queue/app_queue.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_queue/app_queue.o

$(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_rta/src/bm/app_rta_bm.o: $(COPIED_SDK_PATH)/platform_core/app/common/util/app_rta/src/bm/app_rta_bm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/app/common/util/app_rta/src/bm/app_rta_bm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/app/common/util/app_rta/src/bm/app_rta_bm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_rta/src/bm/app_rta_bm.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_rta/src/bm/app_rta_bm.o

$(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_timer/bm/app_timer.o: $(COPIED_SDK_PATH)/platform_core/app/common/util/app_timer/bm/app_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/app/common/util/app_timer/bm/app_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/app/common/util/app_timer/bm/app_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_timer/bm/app_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/app/common/util/app_timer/bm/app_timer.o

$(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_core_cortexm.o: $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_core_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_core_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_core_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_core_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_core_cortexm.o

$(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_syscalls.o: $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_syscalls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_syscalls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/common/src/sl_syscalls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_syscalls.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/common/src/sl_syscalls.o

$(OUTPUT_DIR)/sdk/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.o: $(COPIED_SDK_PATH)/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.o

$(OUTPUT_DIR)/sdk/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.o: $(COPIED_SDK_PATH)/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.o

$(OUTPUT_DIR)/sdk/platform_core/platform/driver/dma_channel/src/sl_dma_channel.o: $(COPIED_SDK_PATH)/platform_core/platform/driver/dma_channel/src/sl_dma_channel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/driver/dma_channel/src/sl_dma_channel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/driver/dma_channel/src/sl_dma_channel.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/driver/dma_channel/src/sl_dma_channel.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/driver/dma_channel/src/sl_dma_channel.o

$(OUTPUT_DIR)/sdk/platform_core/platform/driver/dma_channel/src/sl_dma_descriptor_allocator.o: $(COPIED_SDK_PATH)/platform_core/platform/driver/dma_channel/src/sl_dma_descriptor_allocator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/driver/dma_channel/src/sl_dma_descriptor_allocator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/driver/dma_channel/src/sl_dma_descriptor_allocator.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/driver/dma_channel/src/sl_dma_descriptor_allocator.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/driver/dma_channel/src/sl_dma_descriptor_allocator.o

$(OUTPUT_DIR)/sdk/platform_core/platform/driver/gpio/src/sl_gpio.o: $(COPIED_SDK_PATH)/platform_core/platform/driver/gpio/src/sl_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/driver/gpio/src/sl_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/driver/gpio/src/sl_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/driver/gpio/src/sl_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/driver/gpio/src/sl_gpio.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_cache.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_cache.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_cache.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_cache.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_lock.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_object.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_object.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_object.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_object.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_object.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_object.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_page.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_page.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_page.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_page.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_page.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_page.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_utils.o: $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_utils.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_utils.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emdrv/nvm3/src/nvm3_utils.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_utils.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emdrv/nvm3/src/nvm3_utils.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_burtc.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_cmu.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_emu.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_eusart.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_eusart.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_gpio.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_msc.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_prs.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_system.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_timer.o: $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_eusart.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_eusart.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_gpio.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_gpio.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_ldma.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_ldma.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_prs.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_prs.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_syscfg.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_syscfg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_syscfg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_syscfg.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_syscfg.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_syscfg.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_sysrtc.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_sysrtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_sysrtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_sysrtc.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_sysrtc_subsystem.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_sysrtc_subsystem.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_sysrtc_subsystem.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_sysrtc_subsystem.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_sysrtc_subsystem.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_sysrtc_subsystem.o

$(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_system.o: $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/peripheral/src/sl_hal_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/peripheral/src/sl_hal_system.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager.o: $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_init.o: $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_init.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/clocks/sl_device_clock_efr32xg24.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/clocks/sl_device_clock_efr32xg24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/clocks/sl_device_clock_efr32xg24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/clocks/sl_device_clock_efr32xg24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/clocks/sl_device_clock_efr32xg24.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/clocks/sl_device_clock_efr32xg24.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg24.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg24.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg24.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg24.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg24.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg24.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/dma/sl_device_dma_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/dma/sl_device_dma_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/dma/sl_device_dma_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/dma/sl_device_dma_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/dma/sl_device_dma_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/dma/sl_device_dma_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_clock.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_clock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_clock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_clock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_clock.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_clock.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_dma.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_dma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_dma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_dma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_dma.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_dma.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_gpio.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_gpio.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_peripheral.o: $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_peripheral.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_peripheral.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/device_manager/src/sl_device_peripheral.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_peripheral.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/device_manager/src/sl_device_peripheral.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/dma_manager/src/sl_dma_manager.o: $(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/src/sl_dma_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/src/sl_dma_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/src/sl_dma_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/dma_manager/src/sl_dma_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/dma_manager/src/sl_dma_manager.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/dma_manager/src/sl_dma_manager_hal_ldma.o: $(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/src/sl_dma_manager_hal_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/src/sl_dma_manager_hal_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/dma_manager/src/sl_dma_manager_hal_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/dma_manager/src/sl_dma_manager_hal_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/dma_manager/src/sl_dma_manager_hal_ldma.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager.o: $(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o: $(COPIED_SDK_PATH)/platform_core/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_dmadrv.o: $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_dmadrv.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_eusart.o: $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_eusart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_eusart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_eusart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_eusart.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_eusart.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_uart.o: $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool_common.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_pool_common.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_region.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_retarget.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_retarget.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_retarget.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sl_memory_manager_retarget.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_retarget.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sl_memory_manager_retarget.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sli_memory_manager_common.o: $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sli_memory_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sli_memory_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/memory_manager/src/sli_memory_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sli_memory_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/memory_manager/src/sli_memory_manager_common.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/mpu/src/sl_mpu_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/service/mpu/src/sl_mpu_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/mpu/src/sl_mpu_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/mpu/src/sl_mpu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/mpu/src/sl_mpu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/mpu/src/sl_mpu_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/common/sl_power_manager_common.o: $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/common/sl_power_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/common/sl_power_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/common/sl_power_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/common/sl_power_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/common/sl_power_manager_common.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/common/sl_power_manager_em4.o: $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/common/sl_power_manager_em4.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/common/sl_power_manager_em4.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/common/sl_power_manager_em4.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/common/sl_power_manager_em4.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/common/sl_power_manager_em4.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager.o: $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o: $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o: $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_init.o: $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_init.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_init_memory.o: $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_init_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_init_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_init_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_init_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_init_memory.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_process_action.o: $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/sl_main/src/sl_main_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sl_main/src/sl_main_process_action.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer.o: $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o: $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/udelay/src/sl_udelay.o: $(COPIED_SDK_PATH)/platform_core/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(COPIED_SDK_PATH)/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform_core/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_aox/sl_rail_util_aox.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_aox/sl_rail_util_aox.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_aox/sl_rail_util_aox.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_aox/sl_rail_util_aox.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_aox/sl_rail_util_aox.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_aox/sl_rail_util_aox.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_38M4Hz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_38M4Hz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_38M4Hz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_38M4Hz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_38M4Hz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_38M4Hz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_39MHz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_39MHz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_39MHz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_39MHz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_39MHz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_39MHz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_40MHz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_40MHz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_40MHz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_40MHz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_40MHz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ble_config_40MHz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_38M4Hz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_38M4Hz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_38M4Hz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_38M4Hz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_38M4Hz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_38M4Hz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_39MHz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_39MHz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_39MHz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_39MHz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_39MHz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_39MHz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_40MHz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_40MHz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_40MHz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_40MHz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_40MHz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_ieee802154_config_40MHz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_38M4Hz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_38M4Hz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_38M4Hz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_38M4Hz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_38M4Hz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_38M4Hz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_39MHz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_39MHz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_39MHz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_39MHz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_39MHz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_39MHz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_40MHz.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_40MHz.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_40MHz.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_40MHz.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_40MHz.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/efr32xg24/sl_rail_rfsense_ook_config_40MHz.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/sl_rail_util_built_in_phys.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/sl_rail_util_built_in_phys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/sl_rail_util_built_in_phys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_built_in_phys/sl_rail_util_built_in_phys.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/sl_rail_util_built_in_phys.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_built_in_phys/sl_rail_util_built_in_phys.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_conversions.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_conversions.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_conversions.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_conversions.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_conversions.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_conversions.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_tables.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_tables.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_tables.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_tables.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_tables.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_pa_conversions/sl_rail_util_pa_tables.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_power_manager_init/sl_rail_util_power_manager_init.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_power_manager_init/sl_rail_util_power_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_power_manager_init/sl_rail_util_power_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_power_manager_init/sl_rail_util_power_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_power_manager_init/sl_rail_util_power_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_power_manager_init/sl_rail_util_power_manager_init.o

$(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_sequencer/sl_rail_util_sequencer.o: $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_sequencer/sl_rail_util_sequencer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_sequencer/sl_rail_util_sequencer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/rail_library/plugin/sl_rail_util_sequencer/sl_rail_util_sequencer.c
CDEPS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_sequencer/sl_rail_util_sequencer.d
OBJS += $(OUTPUT_DIR)/sdk/rail_library/plugin/sl_rail_util_sequencer/sl_rail_util_sequencer.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/app_rta_init.o: autogen/app_rta_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/app_rta_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/app_rta_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/app_rta_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/app_rta_init.o

$(OUTPUT_DIR)/project/autogen/sl_bluetooth.o: autogen/sl_bluetooth.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_bluetooth.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_bluetooth.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.o

$(OUTPUT_DIR)/project/autogen/sl_dma_manager_instances.o: autogen/sl_dma_manager_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_dma_manager_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_dma_manager_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_dma_manager_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_dma_manager_instances.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o: autogen/sl_iostream_init_eusart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_eusart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_eusart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_eusart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_ncp_local_evt_process.o: autogen/sl_ncp_local_evt_process.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_ncp_local_evt_process.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_ncp_local_evt_process.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_ncp_local_evt_process.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_ncp_local_evt_process.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_power_manager_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/ncp_user_cmd.o: ncp_user_cmd.c
	@$(POSIX_TOOL_PATH)echo 'Building ncp_user_cmd.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ ncp_user_cmd.c
CDEPS += $(OUTPUT_DIR)/project/ncp_user_cmd.d
OBJS += $(OUTPUT_DIR)/project/ncp_user_cmd.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA