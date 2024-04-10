# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\caleb\workspace\Chandler_test\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\caleb\workspace\Chandler_test\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Chandler_test}\
-hw {C:\Users\caleb\Downloads\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {freertos10_xilinx} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Users/caleb/workspace}

platform write
platform generate -domains 
platform active {Chandler_test}
domain active {zynqmp_fsbl}
bsp reload
platform generate
platform generate -domains freertos10_xilinx_domain 
platform active {Chandler_test}
platform generate -domains 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate
domain active {freertos10_xilinx_domain}
bsp reload
domain active {zynqmp_fsbl}
bsp reload
domain active {zynqmp_pmufw}
bsp reload
platform generate -domains freertos10_xilinx_domain,zynqmp_fsbl,zynqmp_pmufw 
platform clean
platform generate
platform generate -domains freertos10_xilinx_domain,zynqmp_fsbl,zynqmp_pmufw 
platform generate -domains freertos10_xilinx_domain 
platform active {Chandler_test}
platform generate -domains 
platform generate
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform active {Chandler_test}
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate -domains freertos10_xilinx_domain 
platform generate
platform generate
platform generate -domains freertos10_xilinx_domain 
