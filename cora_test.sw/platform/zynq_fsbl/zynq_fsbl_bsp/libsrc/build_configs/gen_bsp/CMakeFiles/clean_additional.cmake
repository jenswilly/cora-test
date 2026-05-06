# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/diskio.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/ff.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/ffconf.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/sleep.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilffs.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilffs_config.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilrsa.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/xiltimer.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/include/xtimer_config.h"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxilffs.a"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxilrsa.a"
  "/home/jenswilly/Xilinx/cora-test/cora_test.sw/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxiltimer.a"
  )
endif()
