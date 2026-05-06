# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/ps7_cortexa9_0/freertos_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/ps7_cortexa9_0/freertos_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/ps7_cortexa9_0/freertos_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/ps7_cortexa9_0/freertos_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
