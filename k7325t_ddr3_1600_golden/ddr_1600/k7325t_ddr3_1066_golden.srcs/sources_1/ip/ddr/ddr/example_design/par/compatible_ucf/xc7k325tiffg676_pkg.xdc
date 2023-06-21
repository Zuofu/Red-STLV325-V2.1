##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Tue Feb  7 10:50:28 2023

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       example_top.sd
##  Details :     Constraints file
##                    FPGA Family:       KINTEX7
##                    FPGA Part:         XC7K325TIFFG676_PKG
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         800 MHz
##                    Time Period:       1250 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->SODIMMs->MT8JTF12864HZ-1G6
## Data Width: 64
## Time Period: 1250
## Data Mask: 1
##################################################################################################

set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_n[*]} ]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_p[*]} ]
          
create_clock -period 5 [get_ports sys_clk_p]
          # Note: CLK_REF FALSE Constraint.
# CLK_REF is a 200  MHz clock source used to drive IODELAY CTRL logic (via an
# additional MMCM). This clock need not utilized CLOCK_DEDICADE_ROUTE (as they
# are limited in number), hence the FALSE value set.
# Please refer to UG 586 for details on clocking resources.
set_property CLOCK_DEDICATED_ROUTE FALSE [get_pins -hierarchical *clk_ref_mmcm_gen.mmcm_i*CLKIN1]
          

############## NET - IOSTANDARD ##################


