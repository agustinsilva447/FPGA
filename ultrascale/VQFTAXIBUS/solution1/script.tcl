############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project VQFTAXIBUS
set_top VQFTAXIBUS
add_files VQFTAXIBUS/VQFTAXIBUS.c
add_files -tb VQFTAXIBUS/VQFTAXIBUS_tb.c
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
#source "./VQFTAXIBUS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog
