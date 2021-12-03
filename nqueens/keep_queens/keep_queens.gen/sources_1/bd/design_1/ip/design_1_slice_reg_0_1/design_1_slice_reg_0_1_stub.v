// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Nov 26 16:04:52 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_slice_reg_0_1 -prefix
//               design_1_slice_reg_0_1_ design_1_slice_reg_0_0_stub.v
// Design      : design_1_slice_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "slice_reg,Vivado 2021.2" *)
module design_1_slice_reg_0_1(clk, reset, a, idx, u, ux)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,a[0:27],idx[3:0],u[0:3],ux[0:3]" */;
  input clk;
  input reset;
  input [0:27]a;
  output [3:0]idx;
  output [0:3]u;
  output [0:3]ux;
endmodule
