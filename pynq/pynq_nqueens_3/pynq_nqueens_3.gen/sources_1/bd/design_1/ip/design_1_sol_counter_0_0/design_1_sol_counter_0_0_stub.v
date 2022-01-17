// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jan 17 17:30:02 2022
// Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_3/pynq_nqueens_3.gen/sources_1/bd/design_1/ip/design_1_sol_counter_0_0/design_1_sol_counter_0_0_stub.v
// Design      : design_1_sol_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sol_counter,Vivado 2021.2" *)
module design_1_sol_counter_0_0(clk, reset, next_sol, count)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,next_sol,count[9:0]" */;
  input clk;
  input reset;
  output next_sol;
  output [9:0]count;
endmodule
