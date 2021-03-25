############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project VQFTAXIBUS
set_top VQFTAXIBUS
add_files VQFTAXIBUS/VQFTAXIBUS.cpp
add_files -tb VQFTAXIBUS/VQFTAXIBUS_test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./VQFTAXIBUS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
