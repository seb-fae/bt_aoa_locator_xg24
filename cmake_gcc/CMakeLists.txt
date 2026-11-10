# Define minimal required version of CMake.
cmake_minimum_required(VERSION "3.25")

# Project definition
project(
	bt_aoa_locator_xg24
	VERSION 1.0
	LANGUAGES C CXX ASM
)

# Include the definition of the slc_bt_aoa_locator_xg24 target,
# which contains the content of the SLC project
include(bt_aoa_locator_xg24.cmake)

set_source_files_properties(
  ${CMAKE_CURRENT_SOURCE_DIR}/../ncp_user_cmd.c
  PROPERTIES HEADER_FILE_ONLY TRUE
)


add_executable(bt_aoa_locator_xg24
    # Add additional sources here
)

target_sources(slc PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/antenna_array/antenna_array.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/sl_bt_aoa.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_angle/aoa_angle.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_cte/aoa_cte.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_cte/cte_conn.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_cte/cte_conn_less.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_cte/cte_silabs.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_db/aoa_db.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_util/aoa_serdes.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_util/aoa_util.c"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/ncp_evt_filter/sl_ncp_evt_filter.c"
    "${CMAKE_CURRENT_LIST_DIR}/../drivers/sl_timer.c"
    "${CMAKE_CURRENT_LIST_DIR}/../drivers/sl_watchdog.c"
    "${CMAKE_CURRENT_LIST_DIR}/../utils/cJSON.c"
)

target_include_directories(slc PUBLIC
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/antenna_array"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_angle"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_angle/config"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_cte/config"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_db"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_util"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/ncp_evt_filter"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/ncp_evt_filter/config"
    "${CMAKE_CURRENT_LIST_DIR}/../bt/aoa/aoa_cte"
    "${CMAKE_CURRENT_LIST_DIR}/../drivers"
    "${CMAKE_CURRENT_LIST_DIR}/../bt"
    "${CMAKE_CURRENT_LIST_DIR}/../utils"
    # Add additional include paths here
)


target_compile_definitions(slc PUBLIC
    _POSIX_C_SOURCE=200809L
)

target_compile_options(bt_aoa_locator_xg24 PUBLIC
    # Set additional compiler flags here
)

target_link_options(bt_aoa_locator_xg24 PUBLIC
    # Set additional linker flags here
)

# Link with the content defined in the SLC project
target_link_libraries(bt_aoa_locator_xg24 PRIVATE
    slc
)

# Include managed project content if available
include(bt_aoa_locator_xg24_project.cmake OPTIONAL RESULT_VARIABLE managed_project)
if(managed_project)
    message(STATUS "Using managed project content from ${managed_project}")
endif()

# Force the gcc linker command
set_target_properties(bt_aoa_locator_xg24 PROPERTIES LINKER_LANGUAGE C)

# Create .bin, .hex and .s37 artifacts after building the project
add_custom_command(TARGET bt_aoa_locator_xg24
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_SREC_CMD} "$<TARGET_FILE:bt_aoa_locator_xg24>" "$<TARGET_FILE_DIR:bt_aoa_locator_xg24>/$<TARGET_FILE_BASE_NAME:bt_aoa_locator_xg24>.s37"
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_IHEX_CMD} "$<TARGET_FILE:bt_aoa_locator_xg24>" "$<TARGET_FILE_DIR:bt_aoa_locator_xg24>/$<TARGET_FILE_BASE_NAME:bt_aoa_locator_xg24>.hex"
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_BIN_CMD}  "$<TARGET_FILE:bt_aoa_locator_xg24>" "$<TARGET_FILE_DIR:bt_aoa_locator_xg24>/$<TARGET_FILE_BASE_NAME:bt_aoa_locator_xg24>.bin" 
)

# Run post-build pipeline to perform additional post-processing
if(post_build_command)
add_custom_command(TARGET bt_aoa_locator_xg24
    POST_BUILD
    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/..
    COMMAND ${post_build_command}
)
endif()