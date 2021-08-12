// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Aug 11 21:13:03 2021
// Host        : DESKTOP-UCL1PSP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/aguss/Desktop/project_uscale/project_uscale.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_stub.v
// Design      : design_1_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "zynq_ultra_ps_e_v3_3_1_zynq_ultra_ps_e,Vivado 2019.2" *)
module design_1_zynq_ultra_ps_e_0_0(pl_ps_irq0, pl_resetn0, pl_clk0)
/* synthesis syn_black_box black_box_pad_pin="pl_ps_irq0[0:0],pl_resetn0,pl_clk0" */;
  input [0:0]pl_ps_irq0;
  output pl_resetn0;
  output pl_clk0;
endmodule
