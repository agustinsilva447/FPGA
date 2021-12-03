// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Nov 23 15:45:11 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/mlabadm/Desktop/Github/FPGA/nqueens/debug_queen/debug_queen.srcs/sources_1/bd/design_1/ip/design_1_up_counter_0_0/design_1_up_counter_0_0_stub.v
// Design      : design_1_up_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "up_counter,Vivado 2019.2" *)
module design_1_up_counter_0_0(clk, ce, reset, complete_tick, count)
/* synthesis syn_black_box black_box_pad_pin="clk,ce,reset,complete_tick,count[3:0]" */;
  input clk;
  input ce;
  input reset;
  output complete_tick;
  output [3:0]count;
endmodule
