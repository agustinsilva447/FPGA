############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hnn_fpga
set_top hnn_fpga
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/hnn_fpga.c
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/hnn_fpga.h
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/hnn_fpga_initialize.c
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/hnn_fpga_initialize.h
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/hnn_fpga_terminate.c
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/hnn_fpga_terminate.h
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/hnn_fpga_types.h
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/rtwtypes.h
add_files ../../../hnn_fpga/codegen/lib/hnn_fpga/tmwtypes.h
add_files -tb ../../../hnn_fpga/codegen/lib/hnn_fpga/main.c
add_files -tb ../../../hnn_fpga/codegen/lib/hnn_fpga/main.h
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
#source "./hnn_fpga/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog
