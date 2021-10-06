// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct  5 11:45:16 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_fpga/nqueens_fpga.srcs/sources_1/bd/design_1/ip/design_1_top_nqueens_0_0/design_1_top_nqueens_0_0_stub.v
// Design      : design_1_top_nqueens_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_nqueens,Vivado 2019.2" *)
module design_1_top_nqueens_0_0(clk, nRst, flag, done, counter)
/* synthesis syn_black_box black_box_pad_pin="clk,nRst,flag,done,counter[10:0]" */;
  input clk;
  input nRst;
  output flag;
  output done;
  output [10:0]counter;
endmodule