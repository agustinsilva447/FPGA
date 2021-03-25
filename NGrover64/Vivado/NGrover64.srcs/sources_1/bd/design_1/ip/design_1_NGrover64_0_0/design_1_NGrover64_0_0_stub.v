// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Mar 21 19:42:11 2017
// Host        : caos1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/caos1/Desktop/Tesis/Vivado/NGrover64/NGrover64.srcs/sources_1/bd/design_1/ip/design_1_NGrover64_0_0/design_1_NGrover64_0_0_stub.v
// Design      : design_1_NGrover64_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "NGrover64,Vivado 2016.4" *)
module design_1_NGrover64_0_0(s_axi_CRTL_BUS_AWADDR, 
  s_axi_CRTL_BUS_AWVALID, s_axi_CRTL_BUS_AWREADY, s_axi_CRTL_BUS_WDATA, 
  s_axi_CRTL_BUS_WSTRB, s_axi_CRTL_BUS_WVALID, s_axi_CRTL_BUS_WREADY, 
  s_axi_CRTL_BUS_BRESP, s_axi_CRTL_BUS_BVALID, s_axi_CRTL_BUS_BREADY, 
  s_axi_CRTL_BUS_ARADDR, s_axi_CRTL_BUS_ARVALID, s_axi_CRTL_BUS_ARREADY, 
  s_axi_CRTL_BUS_RDATA, s_axi_CRTL_BUS_RRESP, s_axi_CRTL_BUS_RVALID, 
  s_axi_CRTL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, E1_Clk_A, E1_Rst_A, E1_EN_A, E1_WEN_A, 
  E1_Addr_A, E1_Din_A, E1_Dout_A, B_Clk_A, B_Rst_A, B_EN_A, B_WEN_A, B_Addr_A, B_Din_A, B_Dout_A)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CRTL_BUS_AWADDR[4:0],s_axi_CRTL_BUS_AWVALID,s_axi_CRTL_BUS_AWREADY,s_axi_CRTL_BUS_WDATA[31:0],s_axi_CRTL_BUS_WSTRB[3:0],s_axi_CRTL_BUS_WVALID,s_axi_CRTL_BUS_WREADY,s_axi_CRTL_BUS_BRESP[1:0],s_axi_CRTL_BUS_BVALID,s_axi_CRTL_BUS_BREADY,s_axi_CRTL_BUS_ARADDR[4:0],s_axi_CRTL_BUS_ARVALID,s_axi_CRTL_BUS_ARREADY,s_axi_CRTL_BUS_RDATA[31:0],s_axi_CRTL_BUS_RRESP[1:0],s_axi_CRTL_BUS_RVALID,s_axi_CRTL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,E1_Clk_A,E1_Rst_A,E1_EN_A,E1_WEN_A[3:0],E1_Addr_A[31:0],E1_Din_A[31:0],E1_Dout_A[31:0],B_Clk_A,B_Rst_A,B_EN_A,B_WEN_A[3:0],B_Addr_A[31:0],B_Din_A[31:0],B_Dout_A[31:0]" */;
  input [4:0]s_axi_CRTL_BUS_AWADDR;
  input s_axi_CRTL_BUS_AWVALID;
  output s_axi_CRTL_BUS_AWREADY;
  input [31:0]s_axi_CRTL_BUS_WDATA;
  input [3:0]s_axi_CRTL_BUS_WSTRB;
  input s_axi_CRTL_BUS_WVALID;
  output s_axi_CRTL_BUS_WREADY;
  output [1:0]s_axi_CRTL_BUS_BRESP;
  output s_axi_CRTL_BUS_BVALID;
  input s_axi_CRTL_BUS_BREADY;
  input [4:0]s_axi_CRTL_BUS_ARADDR;
  input s_axi_CRTL_BUS_ARVALID;
  output s_axi_CRTL_BUS_ARREADY;
  output [31:0]s_axi_CRTL_BUS_RDATA;
  output [1:0]s_axi_CRTL_BUS_RRESP;
  output s_axi_CRTL_BUS_RVALID;
  input s_axi_CRTL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output E1_Clk_A;
  output E1_Rst_A;
  output E1_EN_A;
  output [3:0]E1_WEN_A;
  output [31:0]E1_Addr_A;
  output [31:0]E1_Din_A;
  input [31:0]E1_Dout_A;
  output B_Clk_A;
  output B_Rst_A;
  output B_EN_A;
  output [3:0]B_WEN_A;
  output [31:0]B_Addr_A;
  output [31:0]B_Din_A;
  input [31:0]B_Dout_A;
endmodule
