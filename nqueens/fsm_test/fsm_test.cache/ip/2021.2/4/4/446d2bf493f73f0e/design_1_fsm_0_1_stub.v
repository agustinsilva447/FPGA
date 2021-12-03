// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Nov 26 18:30:39 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fsm_0_1_stub.v
// Design      : design_1_fsm_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fsm,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, nRst, a_in, ack_in, next_in, a_out, ack_out, 
  next_out, output_state)
/* synthesis syn_black_box black_box_pad_pin="clk,nRst,a_in[3:0],ack_in,next_in,a_out[7:0],ack_out,next_out,output_state[2:0]" */;
  input clk;
  input nRst;
  input [3:0]a_in;
  input ack_in;
  input next_in;
  output [7:0]a_out;
  output ack_out;
  output next_out;
  output [2:0]output_state;
endmodule
