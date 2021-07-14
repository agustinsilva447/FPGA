############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Lab6_HLS_BRAM
set_top crazyFunction
add_files core.cpp
add_files -tb test_core.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
#source "./Lab6_HLS_BRAM/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -compiled_library_dir "/home/agustinsilva447/Vivado/Vivado/2019.2/include" -rtl vhdl -tool xsim
export_design -format ip_catalog
