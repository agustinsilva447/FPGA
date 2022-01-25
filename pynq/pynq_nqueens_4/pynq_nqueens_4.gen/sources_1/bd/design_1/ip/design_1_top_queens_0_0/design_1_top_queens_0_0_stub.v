// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 25 20:24:35 2022
// Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_4/pynq_nqueens_4.gen/sources_1/bd/design_1/ip/design_1_top_queens_0_0/design_1_top_queens_0_0_stub.v
// Design      : design_1_top_queens_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_queens,Vivado 2021.2" *)
module design_1_top_queens_0_0(clk, nRst, count, ack_in, next_out, a_in, a_out)
/* synthesis syn_black_box black_box_pad_pin="clk,nRst,count[9:0],ack_in,next_out,a_in[3:0],a_out[31:0]" */;
  input clk;
  input nRst;
  output [9:0]count;
  input ack_in;
  output next_out;
  input [3:0]a_in;
  output [31:0]a_out;
endmodule
