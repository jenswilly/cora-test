
cmake_minimum_required(VERSION 3.15)
project(bsp)

# Use CMAKE_LIBRARY_PATH in link_directories
link_directories(${CMAKE_LIBRARY_PATH})
        
set(DRIVER_TARGETS gpio;coresightps_dcc;devcfg;dmaps;emacps;gpiops;scugic;scutimer;scuwdt;sdps;ttcps;uartps;usbps;xadcps)
set(DRIVER_LOCATIONS /tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/gpio_v4_12;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/coresightps_dcc_v1_13;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/devcfg_v3_9;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/dmaps_v2_11;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/emacps_v3_23;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/gpiops_v3_14;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/scugic_v5_6;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/scutimer_v2_7;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/scuwdt_v2_6;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/sdps_v4_5;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/ttcps_v3_22;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/uartps_v3_17;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/usbps_v2_10;/tools/Xilinx/2025.2.1/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/xadcps_v2_7)

list(LENGTH DRIVER_TARGETS no_of_drivers)
set(index 0)

while(${index} LESS ${no_of_drivers})
    list(GET DRIVER_TARGETS ${index} drv)
    list(GET DRIVER_LOCATIONS ${index} drv_dir)
    set(exp_dir "${drv_dir}/examples")
    add_custom_target(
        ${drv}_example ALL
        COMMAND lopper -f -O /home/jenswilly/Projs/zynq7000/cora_test/cora_test.sw/platform/ps7_cortexa9_0/freertos_ps7_cortexa9_0/bsp/libsrc/${drv} /home/jenswilly/Projs/zynq7000/cora_test/cora_test.sw/platform/ps7_cortexa9_0/freertos_ps7_cortexa9_0/bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- bmcmake_metadata_xlnx ps7_cortexa9_0 ${exp_dir} drvcmake_metadata
        BYPRODUCTS x${drv}_exlist.yaml)
    MATH(EXPR index "${index}+1")
endwhile()
