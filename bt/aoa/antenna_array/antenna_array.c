/***************************************************************************//**
 * @file
 * @brief Antenna array handler for Silicon Labs boards.
 *******************************************************************************
 * # License
 * <b>Copyright 2022 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/

#include <stdlib.h>
#include <string.h>
#include "antenna_array.h"

static const uint8_t antenna_array_2x2_ura_pins[] = {
  0, 4,
  10, 14
};

/***************************************************************************//**
 * Initialize antenna switch pattern with default values.
 ******************************************************************************/
sl_status_t antenna_array_init(antenna_array_t *antenna_array,
                               uint8_t array_type)
{
  if (antenna_array == NULL) {
    return SL_STATUS_NULL_POINTER;
  }

  if (array_type != ANTENNA_ARRAY_TYPE_COREHW_2x2_URA) {
    // Array type not supported or invalid.
    return SL_STATUS_INVALID_PARAMETER;
  }

  antenna_array->array_type = array_type;
  antenna_array->size = 4;

  for (uint8_t i = 0; i < antenna_array->size; i++) {
    antenna_array->pattern[i] = i;
  }

  return SL_STATUS_OK;
}

/***************************************************************************//**
 * Override antenna switch pattern.
 ******************************************************************************/
sl_status_t antenna_array_set_pattern(antenna_array_t *antenna_array,
                                      uint8_t *pattern,
                                      uint8_t size)
{
  if ((antenna_array == NULL) || (pattern == NULL)) {
    return SL_STATUS_NULL_POINTER;
  }

  // Project fix: accept only permutations of the four CoreHW antenna indices.
  if ((antenna_array->array_type != ANTENNA_ARRAY_TYPE_COREHW_2x2_URA)
      || (size != 4) || (size != antenna_array->size)) {
    return SL_STATUS_INVALID_PARAMETER;
  }
  for (uint8_t i = 0; i < size; i++) {
    if (pattern[i] >= size) {
      return SL_STATUS_INVALID_PARAMETER;
    }
    for (uint8_t j = 0; j < i; j++) {
      if (pattern[i] == pattern[j]) {
        return SL_STATUS_INVALID_PARAMETER;
      }
    }
  }

  // Copy pattern.
  for (uint8_t i = 0; i < antenna_array->size; i++) {
    antenna_array->pattern[i] = pattern[i];
  }

  return SL_STATUS_OK;
}

/***************************************************************************//**
 * Get antenna switch pin sequence.
 *
 * @param[in] antenna_array Antenna array instance to operate on.
 * @param[out] pattern Pin sequence that implements the antenna switch pattern.
 *                     The first element in the sequence represents the
 *                     reference antenna.
 * @param[in,out] size Buffer length as input, actual pattern length as output.
 ******************************************************************************/
sl_status_t antenna_array_get_pin_pattern(antenna_array_t *antenna_array,
                                          uint8_t *pattern,
                                          uint8_t *size)
{
  if ((antenna_array == NULL) || (size == NULL)) {
    return SL_STATUS_NULL_POINTER;
  }

  if ((antenna_array->array_type != ANTENNA_ARRAY_TYPE_COREHW_2x2_URA)
      || (antenna_array->size != 4)) {
    return SL_STATUS_INVALID_PARAMETER;
  }
  for (uint8_t i = 0; i < antenna_array->size; i++) {
    if (antenna_array->pattern[i] >= 4) {
      return SL_STATUS_INVALID_PARAMETER;
    }
  }

  // Output buffer is optional.
  if (pattern != NULL) {
    // Check if output buffer size is large enough.
    if (*size < antenna_array->size) {
      return SL_STATUS_INVALID_PARAMETER;
    }
    // Fill output buffer.
    for (uint8_t i = 0; i < antenna_array->size; i++) {
      pattern[i] = antenna_array_2x2_ura_pins[antenna_array->pattern[i]];
    }
  }
  *size = antenna_array->size;

  return SL_STATUS_OK;
}

/***************************************************************************//**
 * Convert antenna switch pattern to [0..n-1] interval without gaps.
 ******************************************************************************/
sl_status_t antenna_array_get_continuous_pattern(antenna_array_t *antenna_array,
                                                 uint32_t *pattern,
                                                 uint32_t *size)
{
  if ((antenna_array == NULL) || (pattern == NULL) || (size == NULL)) {
    return SL_STATUS_NULL_POINTER;
  }

  if (*size < antenna_array->size) {
    return SL_STATUS_INVALID_PARAMETER;
  }

  for (uint8_t i = 0; i < antenna_array->size; i++) {
    pattern[i] = antenna_array->pattern[i];
  }
  *size = antenna_array->size;

  return SL_STATUS_OK;
}

/***************************************************************************//**
 * Shuffle the current antenna switch pattern.
 ******************************************************************************/
sl_status_t antenna_array_shuffle_pattern(antenna_array_t *antenna_array,
                                          int(random)(void))
{
  uint8_t i, j, temp;

  if ((antenna_array == NULL) || (random == NULL)) {
    return SL_STATUS_NULL_POINTER;
  }
  // Swap index i with a random index j.
  for (i = 0; i < antenna_array->size - 1; i++) {
    j = i + 1 + (random() % (antenna_array->size - i - 1));
    temp = antenna_array->pattern[j];
    antenna_array->pattern[j] = antenna_array->pattern[i];
    antenna_array->pattern[i] = temp;
  }
  return SL_STATUS_OK;
}

// Assign a compatible board to an antenna array type.
sl_status_t antenna_array_type_to_board(uint8_t array_type,
                                        antenna_array_board_t *board)
{
  (void)array_type;
  (void)board;
  return SL_STATUS_NOT_SUPPORTED;
}

// Assign a default antenna array type to a board.
sl_status_t antenna_array_board_to_type(antenna_array_board_t board,
                                        uint8_t *array_type)
{
  return SL_STATUS_NOT_SUPPORTED;
}

// Convert string to antenna array board.
sl_status_t antenna_array_string_to_board(const char *str,
                                          antenna_array_board_t *board)
{
  return SL_STATUS_NOT_SUPPORTED;
}

// Convert antenna array board to string.
sl_status_t antenna_array_board_to_string(antenna_array_board_t board,
                                          char *str)
{
  return SL_STATUS_NOT_SUPPORTED;
}
