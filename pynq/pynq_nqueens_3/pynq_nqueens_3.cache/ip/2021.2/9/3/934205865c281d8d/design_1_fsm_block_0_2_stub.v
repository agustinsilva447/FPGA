// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 25 18:41:24 2022
// Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fsm_block_0_2_stub.v
// Design      : design_1_fsm_block_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fsm_block,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, nRst, a_in, ack_in, next_in, a_out, ack_out, 
  next_out, output_state)
/* synthesis syn_black_box black_box_pad_pin="clk,nRst,a_in[7:0],ack_in,next_in,a_out[11:0],ack_out,next_out,output_state[2:0]" */;
  input clk;
  input nRst;
  input [7:0]a_in;
  input ack_in;
  input next_in;
  output [11:0]a_out;
  output ack_out;
  output next_out;
  output [2:0]output_state;
endmodule
