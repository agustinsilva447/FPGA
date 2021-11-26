// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Nov 25 18:25:31 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_comblock_0_0_sim_netlist.v
// Design      : design_1_comblock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL
   (axil_awready,
    axil_wready,
    axil_arready,
    axil_bvalid,
    axil_rvalid,
    Q,
    \axi_araddr_reg[3]_rep_0 ,
    \axi_araddr_reg[2]_rep_0 ,
    axil_rdata,
    E,
    \axi_awaddr_reg[3]_0 ,
    \axi_awaddr_reg[4]_0 ,
    \axi_awaddr_reg[3]_1 ,
    \axi_awaddr_reg[4]_1 ,
    \axi_awaddr_reg[2]_0 ,
    \axi_awaddr_reg[4]_2 ,
    \axi_awaddr_reg[3]_2 ,
    \axi_awaddr_reg[4]_3 ,
    \axi_awaddr_reg[2]_1 ,
    axil_aclk,
    axil_arvalid,
    \axi_rdata_reg[31]_0 ,
    reg9_o,
    reg8_o,
    \axi_rdata_reg[0]_0 ,
    reg8_i,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[6]_0 ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[10]_0 ,
    \axi_rdata_reg[11]_0 ,
    \axi_rdata_reg[12]_0 ,
    \axi_rdata_reg[13]_0 ,
    \axi_rdata_reg[14]_0 ,
    \axi_rdata_reg[15]_0 ,
    \axi_rdata_reg[16]_0 ,
    \axi_rdata_reg[17]_0 ,
    \axi_rdata_reg[18]_0 ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[20]_0 ,
    \axi_rdata_reg[21]_0 ,
    \axi_rdata_reg[22]_0 ,
    \axi_rdata_reg[23]_0 ,
    \axi_rdata_reg[24]_0 ,
    \axi_rdata_reg[25]_0 ,
    \axi_rdata_reg[26]_0 ,
    \axi_rdata_reg[27]_0 ,
    \axi_rdata_reg[28]_0 ,
    \axi_rdata_reg[29]_0 ,
    \axi_rdata_reg[30]_0 ,
    reg7_i,
    reg6_i,
    reg5_i,
    reg4_i,
    reg3_i,
    reg2_i,
    reg1_i,
    reg0_i,
    axil_aresetn,
    axil_bready,
    axil_wvalid,
    axil_awvalid,
    axil_rready,
    axil_awaddr,
    axil_araddr);
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output axil_bvalid;
  output axil_rvalid;
  output [2:0]Q;
  output \axi_araddr_reg[3]_rep_0 ;
  output \axi_araddr_reg[2]_rep_0 ;
  output [31:0]axil_rdata;
  output [0:0]E;
  output [0:0]\axi_awaddr_reg[3]_0 ;
  output [0:0]\axi_awaddr_reg[4]_0 ;
  output [0:0]\axi_awaddr_reg[3]_1 ;
  output [0:0]\axi_awaddr_reg[4]_1 ;
  output [0:0]\axi_awaddr_reg[2]_0 ;
  output [0:0]\axi_awaddr_reg[4]_2 ;
  output [0:0]\axi_awaddr_reg[3]_2 ;
  output [0:0]\axi_awaddr_reg[4]_3 ;
  output [0:0]\axi_awaddr_reg[2]_1 ;
  input axil_aclk;
  input axil_arvalid;
  input \axi_rdata_reg[31]_0 ;
  input [31:0]reg9_o;
  input [31:0]reg8_o;
  input \axi_rdata_reg[0]_0 ;
  input [31:0]reg8_i;
  input \axi_rdata_reg[1]_0 ;
  input \axi_rdata_reg[2]_0 ;
  input \axi_rdata_reg[3]_0 ;
  input \axi_rdata_reg[4]_0 ;
  input \axi_rdata_reg[5]_0 ;
  input \axi_rdata_reg[6]_0 ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[8]_0 ;
  input \axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[10]_0 ;
  input \axi_rdata_reg[11]_0 ;
  input \axi_rdata_reg[12]_0 ;
  input \axi_rdata_reg[13]_0 ;
  input \axi_rdata_reg[14]_0 ;
  input \axi_rdata_reg[15]_0 ;
  input \axi_rdata_reg[16]_0 ;
  input \axi_rdata_reg[17]_0 ;
  input \axi_rdata_reg[18]_0 ;
  input \axi_rdata_reg[19]_0 ;
  input \axi_rdata_reg[20]_0 ;
  input \axi_rdata_reg[21]_0 ;
  input \axi_rdata_reg[22]_0 ;
  input \axi_rdata_reg[23]_0 ;
  input \axi_rdata_reg[24]_0 ;
  input \axi_rdata_reg[25]_0 ;
  input \axi_rdata_reg[26]_0 ;
  input \axi_rdata_reg[27]_0 ;
  input \axi_rdata_reg[28]_0 ;
  input \axi_rdata_reg[29]_0 ;
  input \axi_rdata_reg[30]_0 ;
  input [31:0]reg7_i;
  input [31:0]reg6_i;
  input [31:0]reg5_i;
  input [31:0]reg4_i;
  input [31:0]reg3_i;
  input [31:0]reg2_i;
  input [31:0]reg1_i;
  input [31:0]reg0_i;
  input axil_aresetn;
  input axil_bready;
  input axil_wvalid;
  input axil_awvalid;
  input axil_rready;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;

  wire [0:0]E;
  wire [2:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr_reg[2]_rep_0 ;
  wire \axi_araddr_reg[3]_rep_0 ;
  wire axi_arready0;
  wire [0:0]\axi_awaddr_reg[2]_0 ;
  wire [0:0]\axi_awaddr_reg[2]_1 ;
  wire [0:0]\axi_awaddr_reg[3]_0 ;
  wire [0:0]\axi_awaddr_reg[3]_1 ;
  wire [0:0]\axi_awaddr_reg[3]_2 ;
  wire [0:0]\axi_awaddr_reg[4]_0 ;
  wire [0:0]\axi_awaddr_reg[4]_1 ;
  wire [0:0]\axi_awaddr_reg[4]_2 ;
  wire [0:0]\axi_awaddr_reg[4]_3 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[10]_i_8_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[11]_i_8_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[12]_i_8_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[13]_i_8_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[14]_i_8_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[15]_i_8_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[16]_i_8_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[17]_i_8_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[18]_i_8_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[19]_i_8_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[1]_i_8_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[20]_i_8_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[21]_i_8_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[22]_i_8_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[23]_i_8_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[24]_i_8_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[25]_i_8_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[26]_i_8_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[27]_i_8_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[28]_i_8_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[29]_i_8_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[2]_i_8_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[30]_i_8_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
  wire \axi_rdata[31]_i_9_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[3]_i_8_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[4]_i_8_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[5]_i_8_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[6]_i_8_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[7]_i_8_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[8]_i_8_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
  wire \axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axil_aclk;
  wire [5:0]axil_araddr;
  wire axil_aresetn;
  wire axil_arready;
  wire axil_arvalid;
  wire [5:0]axil_awaddr;
  wire axil_awready;
  wire axil_awvalid;
  wire axil_bready;
  wire axil_bvalid;
  wire [31:0]axil_rdata;
  wire axil_rready;
  wire axil_rvalid;
  wire axil_wready;
  wire axil_wvalid;
  wire p_0_in;
  wire [31:0]reg0_i;
  wire [31:0]reg1_i;
  wire [31:0]reg2_i;
  wire [31:0]reg3_i;
  wire [31:0]reg4_i;
  wire [31:0]reg5_i;
  wire [31:0]reg6_i;
  wire [31:0]reg7_i;
  wire [31:0]reg8_i;
  wire [31:0]reg8_o;
  wire [31:0]reg9_o;
  wire [7:5]reg_rd_adr;
  wire [31:0]reg_rd_dat;
  wire [7:2]reg_wr_adr;
  wire \regs_out[0][31]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(axil_bvalid),
        .I1(axil_bready),
        .I2(axil_awready),
        .I3(axil_wvalid),
        .I4(axil_awvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDSE \axi_araddr_reg[2] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[0]),
        .Q(Q[0]),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDSE \axi_araddr_reg[2]_rep 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[0]),
        .Q(\axi_araddr_reg[2]_rep_0 ),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDSE \axi_araddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[1]),
        .Q(Q[1]),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDSE \axi_araddr_reg[3]_rep 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[1]),
        .Q(\axi_araddr_reg[3]_rep_0 ),
        .S(p_0_in));
  FDSE \axi_araddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[2]),
        .Q(Q[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[5] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[3]),
        .Q(reg_rd_adr[5]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[6] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[4]),
        .Q(reg_rd_adr[6]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[7] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[5]),
        .Q(reg_rd_adr[7]),
        .S(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axil_arvalid),
        .I1(axil_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axil_arready),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[0]),
        .Q(reg_wr_adr[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[1]),
        .Q(reg_wr_adr[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[2]),
        .Q(reg_wr_adr[4]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[3]),
        .Q(reg_wr_adr[5]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[4]),
        .Q(reg_wr_adr[6]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[5]),
        .Q(reg_wr_adr[7]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(axil_aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(axil_awready),
        .I1(axil_wvalid),
        .I2(axil_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axil_awready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(axil_bready),
        .I1(axil_bvalid),
        .I2(axil_wready),
        .I3(axil_awready),
        .I4(axil_wvalid),
        .I5(axil_awvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axil_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[0]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[0]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[0]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[0]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[0]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[0]),
        .I4(Q[2]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(reg3_i[0]),
        .I1(reg2_i[0]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[0]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_8 
       (.I0(reg7_i[0]),
        .I1(reg6_i[0]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[0]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[0]),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[10]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[10]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[10]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[10]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[10]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[10]),
        .I2(Q[0]),
        .I3(reg8_o[10]),
        .I4(Q[2]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(reg3_i[10]),
        .I1(reg2_i[10]),
        .I2(Q[1]),
        .I3(reg1_i[10]),
        .I4(Q[0]),
        .I5(reg0_i[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_8 
       (.I0(reg7_i[10]),
        .I1(reg6_i[10]),
        .I2(Q[1]),
        .I3(reg5_i[10]),
        .I4(Q[0]),
        .I5(reg4_i[10]),
        .O(\axi_rdata[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[11]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[11]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[11]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[11]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[11]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[11]),
        .I2(Q[0]),
        .I3(reg8_o[11]),
        .I4(Q[2]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(reg3_i[11]),
        .I1(reg2_i[11]),
        .I2(Q[1]),
        .I3(reg1_i[11]),
        .I4(Q[0]),
        .I5(reg0_i[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_8 
       (.I0(reg7_i[11]),
        .I1(reg6_i[11]),
        .I2(Q[1]),
        .I3(reg5_i[11]),
        .I4(Q[0]),
        .I5(reg4_i[11]),
        .O(\axi_rdata[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[12]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[12]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[12]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[12]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[12]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[12]),
        .I2(Q[0]),
        .I3(reg8_o[12]),
        .I4(Q[2]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(reg3_i[12]),
        .I1(reg2_i[12]),
        .I2(Q[1]),
        .I3(reg1_i[12]),
        .I4(Q[0]),
        .I5(reg0_i[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_8 
       (.I0(reg7_i[12]),
        .I1(reg6_i[12]),
        .I2(Q[1]),
        .I3(reg5_i[12]),
        .I4(Q[0]),
        .I5(reg4_i[12]),
        .O(\axi_rdata[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[13]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[13]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[13]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[13]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[13]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[13]),
        .I2(Q[0]),
        .I3(reg8_o[13]),
        .I4(Q[2]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(reg3_i[13]),
        .I1(reg2_i[13]),
        .I2(Q[1]),
        .I3(reg1_i[13]),
        .I4(Q[0]),
        .I5(reg0_i[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_8 
       (.I0(reg7_i[13]),
        .I1(reg6_i[13]),
        .I2(Q[1]),
        .I3(reg5_i[13]),
        .I4(Q[0]),
        .I5(reg4_i[13]),
        .O(\axi_rdata[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[14]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[14]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[14]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[14]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[14]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[14]),
        .I2(Q[0]),
        .I3(reg8_o[14]),
        .I4(Q[2]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(reg3_i[14]),
        .I1(reg2_i[14]),
        .I2(Q[1]),
        .I3(reg1_i[14]),
        .I4(Q[0]),
        .I5(reg0_i[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_8 
       (.I0(reg7_i[14]),
        .I1(reg6_i[14]),
        .I2(Q[1]),
        .I3(reg5_i[14]),
        .I4(Q[0]),
        .I5(reg4_i[14]),
        .O(\axi_rdata[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[15]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[15]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[15]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[15]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[15]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[15]),
        .I2(Q[0]),
        .I3(reg8_o[15]),
        .I4(Q[2]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(reg3_i[15]),
        .I1(reg2_i[15]),
        .I2(Q[1]),
        .I3(reg1_i[15]),
        .I4(Q[0]),
        .I5(reg0_i[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_8 
       (.I0(reg7_i[15]),
        .I1(reg6_i[15]),
        .I2(Q[1]),
        .I3(reg5_i[15]),
        .I4(Q[0]),
        .I5(reg4_i[15]),
        .O(\axi_rdata[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[16]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[16]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[16]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[16]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[16]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[16]),
        .I2(Q[0]),
        .I3(reg8_o[16]),
        .I4(Q[2]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(reg3_i[16]),
        .I1(reg2_i[16]),
        .I2(Q[1]),
        .I3(reg1_i[16]),
        .I4(Q[0]),
        .I5(reg0_i[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_8 
       (.I0(reg7_i[16]),
        .I1(reg6_i[16]),
        .I2(Q[1]),
        .I3(reg5_i[16]),
        .I4(Q[0]),
        .I5(reg4_i[16]),
        .O(\axi_rdata[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[17]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[17]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[17]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[17]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[17]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[17]),
        .I2(Q[0]),
        .I3(reg8_o[17]),
        .I4(Q[2]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(reg3_i[17]),
        .I1(reg2_i[17]),
        .I2(Q[1]),
        .I3(reg1_i[17]),
        .I4(Q[0]),
        .I5(reg0_i[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_8 
       (.I0(reg7_i[17]),
        .I1(reg6_i[17]),
        .I2(Q[1]),
        .I3(reg5_i[17]),
        .I4(Q[0]),
        .I5(reg4_i[17]),
        .O(\axi_rdata[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[18]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[18]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[18]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[18]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[18]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[18]),
        .I2(Q[0]),
        .I3(reg8_o[18]),
        .I4(Q[2]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(reg3_i[18]),
        .I1(reg2_i[18]),
        .I2(Q[1]),
        .I3(reg1_i[18]),
        .I4(Q[0]),
        .I5(reg0_i[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_8 
       (.I0(reg7_i[18]),
        .I1(reg6_i[18]),
        .I2(Q[1]),
        .I3(reg5_i[18]),
        .I4(Q[0]),
        .I5(reg4_i[18]),
        .O(\axi_rdata[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[19]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[19]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[19]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[19]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[19]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[19]),
        .I2(Q[0]),
        .I3(reg8_o[19]),
        .I4(Q[2]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(reg3_i[19]),
        .I1(reg2_i[19]),
        .I2(Q[1]),
        .I3(reg1_i[19]),
        .I4(Q[0]),
        .I5(reg0_i[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_8 
       (.I0(reg7_i[19]),
        .I1(reg6_i[19]),
        .I2(Q[1]),
        .I3(reg5_i[19]),
        .I4(Q[0]),
        .I5(reg4_i[19]),
        .O(\axi_rdata[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[1]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[1]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[1]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[1]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[1]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[1]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[1]),
        .I4(Q[2]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(reg3_i[1]),
        .I1(reg2_i[1]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[1]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_8 
       (.I0(reg7_i[1]),
        .I1(reg6_i[1]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[1]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[1]),
        .O(\axi_rdata[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[20]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[20]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[20]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[20]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[20]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[20]),
        .I2(Q[0]),
        .I3(reg8_o[20]),
        .I4(Q[2]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(reg3_i[20]),
        .I1(reg2_i[20]),
        .I2(Q[1]),
        .I3(reg1_i[20]),
        .I4(Q[0]),
        .I5(reg0_i[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_8 
       (.I0(reg7_i[20]),
        .I1(reg6_i[20]),
        .I2(Q[1]),
        .I3(reg5_i[20]),
        .I4(Q[0]),
        .I5(reg4_i[20]),
        .O(\axi_rdata[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[21]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[21]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[21]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[21]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[21]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[21]),
        .I2(Q[0]),
        .I3(reg8_o[21]),
        .I4(Q[2]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(reg3_i[21]),
        .I1(reg2_i[21]),
        .I2(Q[1]),
        .I3(reg1_i[21]),
        .I4(Q[0]),
        .I5(reg0_i[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_8 
       (.I0(reg7_i[21]),
        .I1(reg6_i[21]),
        .I2(Q[1]),
        .I3(reg5_i[21]),
        .I4(Q[0]),
        .I5(reg4_i[21]),
        .O(\axi_rdata[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[22]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[22]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[22]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[22]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[22]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[22]),
        .I2(Q[0]),
        .I3(reg8_o[22]),
        .I4(Q[2]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(reg3_i[22]),
        .I1(reg2_i[22]),
        .I2(Q[1]),
        .I3(reg1_i[22]),
        .I4(Q[0]),
        .I5(reg0_i[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_8 
       (.I0(reg7_i[22]),
        .I1(reg6_i[22]),
        .I2(Q[1]),
        .I3(reg5_i[22]),
        .I4(Q[0]),
        .I5(reg4_i[22]),
        .O(\axi_rdata[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[23]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[23]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[23]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[23]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[23]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[23]),
        .I2(Q[0]),
        .I3(reg8_o[23]),
        .I4(Q[2]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(reg3_i[23]),
        .I1(reg2_i[23]),
        .I2(Q[1]),
        .I3(reg1_i[23]),
        .I4(Q[0]),
        .I5(reg0_i[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_8 
       (.I0(reg7_i[23]),
        .I1(reg6_i[23]),
        .I2(Q[1]),
        .I3(reg5_i[23]),
        .I4(Q[0]),
        .I5(reg4_i[23]),
        .O(\axi_rdata[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[24]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[24]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[24]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[24]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[24]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[24]),
        .I2(Q[0]),
        .I3(reg8_o[24]),
        .I4(Q[2]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(reg3_i[24]),
        .I1(reg2_i[24]),
        .I2(Q[1]),
        .I3(reg1_i[24]),
        .I4(Q[0]),
        .I5(reg0_i[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_8 
       (.I0(reg7_i[24]),
        .I1(reg6_i[24]),
        .I2(Q[1]),
        .I3(reg5_i[24]),
        .I4(Q[0]),
        .I5(reg4_i[24]),
        .O(\axi_rdata[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[25]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[25]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[25]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[25]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[25]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[25]),
        .I2(Q[0]),
        .I3(reg8_o[25]),
        .I4(Q[2]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(reg3_i[25]),
        .I1(reg2_i[25]),
        .I2(Q[1]),
        .I3(reg1_i[25]),
        .I4(Q[0]),
        .I5(reg0_i[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_8 
       (.I0(reg7_i[25]),
        .I1(reg6_i[25]),
        .I2(Q[1]),
        .I3(reg5_i[25]),
        .I4(Q[0]),
        .I5(reg4_i[25]),
        .O(\axi_rdata[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[26]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[26]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[26]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[26]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[26]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[26]),
        .I2(Q[0]),
        .I3(reg8_o[26]),
        .I4(Q[2]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(reg3_i[26]),
        .I1(reg2_i[26]),
        .I2(Q[1]),
        .I3(reg1_i[26]),
        .I4(Q[0]),
        .I5(reg0_i[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_8 
       (.I0(reg7_i[26]),
        .I1(reg6_i[26]),
        .I2(Q[1]),
        .I3(reg5_i[26]),
        .I4(Q[0]),
        .I5(reg4_i[26]),
        .O(\axi_rdata[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[27]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[27]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[27]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[27]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[27]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[27]),
        .I2(Q[0]),
        .I3(reg8_o[27]),
        .I4(Q[2]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(reg3_i[27]),
        .I1(reg2_i[27]),
        .I2(Q[1]),
        .I3(reg1_i[27]),
        .I4(Q[0]),
        .I5(reg0_i[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_8 
       (.I0(reg7_i[27]),
        .I1(reg6_i[27]),
        .I2(Q[1]),
        .I3(reg5_i[27]),
        .I4(Q[0]),
        .I5(reg4_i[27]),
        .O(\axi_rdata[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[28]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[28]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[28]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[28]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[28]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[28]),
        .I2(Q[0]),
        .I3(reg8_o[28]),
        .I4(Q[2]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(reg3_i[28]),
        .I1(reg2_i[28]),
        .I2(Q[1]),
        .I3(reg1_i[28]),
        .I4(Q[0]),
        .I5(reg0_i[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_8 
       (.I0(reg7_i[28]),
        .I1(reg6_i[28]),
        .I2(Q[1]),
        .I3(reg5_i[28]),
        .I4(Q[0]),
        .I5(reg4_i[28]),
        .O(\axi_rdata[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[29]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[29]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[29]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[29]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[29]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[29]),
        .I2(Q[0]),
        .I3(reg8_o[29]),
        .I4(Q[2]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(reg3_i[29]),
        .I1(reg2_i[29]),
        .I2(Q[1]),
        .I3(reg1_i[29]),
        .I4(Q[0]),
        .I5(reg0_i[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_8 
       (.I0(reg7_i[29]),
        .I1(reg6_i[29]),
        .I2(Q[1]),
        .I3(reg5_i[29]),
        .I4(Q[0]),
        .I5(reg4_i[29]),
        .O(\axi_rdata[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[2]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[2]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[2]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[2]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[2]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[2]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[2]),
        .I4(Q[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(reg3_i[2]),
        .I1(reg2_i[2]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[2]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_8 
       (.I0(reg7_i[2]),
        .I1(reg6_i[2]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[2]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[2]),
        .O(\axi_rdata[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[30]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[30]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[30]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[30]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[30]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[30]),
        .I2(Q[0]),
        .I3(reg8_o[30]),
        .I4(Q[2]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(reg3_i[30]),
        .I1(reg2_i[30]),
        .I2(Q[1]),
        .I3(reg1_i[30]),
        .I4(Q[0]),
        .I5(reg0_i[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_8 
       (.I0(reg7_i[30]),
        .I1(reg6_i[30]),
        .I2(Q[1]),
        .I3(reg5_i[30]),
        .I4(Q[0]),
        .I5(reg4_i[30]),
        .O(\axi_rdata[30]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \axi_rdata[31]_i_1 
       (.I0(axil_rvalid),
        .I1(axil_arvalid),
        .I2(axil_arready),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata_reg[31]_i_3_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[31]_i_4_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[31]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[31]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[31]_i_6 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[31]_i_7 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[31]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[31]),
        .I4(Q[2]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_8 
       (.I0(reg3_i[31]),
        .I1(reg2_i[31]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[31]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_9 
       (.I0(reg7_i[31]),
        .I1(reg6_i[31]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[31]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[31]),
        .O(\axi_rdata[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[3]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[3]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[3]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[3]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[3]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[3]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[3]),
        .I4(Q[2]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(reg3_i[3]),
        .I1(reg2_i[3]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[3]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_8 
       (.I0(reg7_i[3]),
        .I1(reg6_i[3]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[3]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[3]),
        .O(\axi_rdata[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[4]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[4]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[4]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[4]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[4]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[4]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[4]),
        .I4(Q[2]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(reg3_i[4]),
        .I1(reg2_i[4]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[4]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_8 
       (.I0(reg7_i[4]),
        .I1(reg6_i[4]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[4]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[4]),
        .O(\axi_rdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[5]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[5]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[5]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[5]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[5]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[5]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[5]),
        .I4(Q[2]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(reg3_i[5]),
        .I1(reg2_i[5]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[5]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_8 
       (.I0(reg7_i[5]),
        .I1(reg6_i[5]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[5]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[5]),
        .O(\axi_rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[6]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[6]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[6]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[6]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[6]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[6]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[6]),
        .I4(Q[2]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(reg3_i[6]),
        .I1(reg2_i[6]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[6]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_8 
       (.I0(reg7_i[6]),
        .I1(reg6_i[6]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[6]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[6]),
        .O(\axi_rdata[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[7]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[7]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[7]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[7]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[7]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[7]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[7]),
        .I4(Q[2]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(reg3_i[7]),
        .I1(reg2_i[7]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[7]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_8 
       (.I0(reg7_i[7]),
        .I1(reg6_i[7]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[7]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[7]),
        .O(\axi_rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[8]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[8]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[8]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[8]_i_5 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[2]_rep_0 ),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg8_i[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[8]_i_6 
       (.I0(\axi_araddr_reg[3]_rep_0 ),
        .I1(reg9_o[8]),
        .I2(\axi_araddr_reg[2]_rep_0 ),
        .I3(reg8_o[8]),
        .I4(Q[2]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(reg3_i[8]),
        .I1(reg2_i[8]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg1_i[8]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg0_i[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_8 
       (.I0(reg7_i[8]),
        .I1(reg6_i[8]),
        .I2(\axi_araddr_reg[3]_rep_0 ),
        .I3(reg5_i[8]),
        .I4(\axi_araddr_reg[2]_rep_0 ),
        .I5(reg4_i[8]),
        .O(\axi_rdata[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(reg_rd_adr[5]),
        .I2(\axi_rdata_reg[9]_i_3_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(\axi_rdata_reg[9]_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[9]));
  LUT4 #(
    .INIT(16'h0100)) 
    \axi_rdata[9]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reg8_i[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[9]_i_6 
       (.I0(Q[1]),
        .I1(reg9_o[9]),
        .I2(Q[0]),
        .I3(reg8_o[9]),
        .I4(Q[2]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(reg3_i[9]),
        .I1(reg2_i[9]),
        .I2(Q[1]),
        .I3(reg1_i[9]),
        .I4(Q[0]),
        .I5(reg0_i[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_8 
       (.I0(reg7_i[9]),
        .I1(reg6_i[9]),
        .I2(Q[1]),
        .I3(reg5_i[9]),
        .I4(Q[0]),
        .I5(reg4_i[9]),
        .O(\axi_rdata[9]_i_8_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[0]),
        .Q(axil_rdata[0]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_5_n_0 ),
        .I1(\axi_rdata[0]_i_6_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_7_n_0 ),
        .I1(\axi_rdata[0]_i_8_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[10]),
        .Q(axil_rdata[10]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_5_n_0 ),
        .I1(\axi_rdata[10]_i_6_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_7_n_0 ),
        .I1(\axi_rdata[10]_i_8_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[11]),
        .Q(axil_rdata[11]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_5_n_0 ),
        .I1(\axi_rdata[11]_i_6_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_7_n_0 ),
        .I1(\axi_rdata[11]_i_8_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[12]),
        .Q(axil_rdata[12]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_5_n_0 ),
        .I1(\axi_rdata[12]_i_6_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_7_n_0 ),
        .I1(\axi_rdata[12]_i_8_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[13]),
        .Q(axil_rdata[13]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_5_n_0 ),
        .I1(\axi_rdata[13]_i_6_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_7_n_0 ),
        .I1(\axi_rdata[13]_i_8_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[14]),
        .Q(axil_rdata[14]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_5_n_0 ),
        .I1(\axi_rdata[14]_i_6_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_7_n_0 ),
        .I1(\axi_rdata[14]_i_8_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[15]),
        .Q(axil_rdata[15]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_5_n_0 ),
        .I1(\axi_rdata[15]_i_6_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_7_n_0 ),
        .I1(\axi_rdata[15]_i_8_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[16]),
        .Q(axil_rdata[16]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_5_n_0 ),
        .I1(\axi_rdata[16]_i_6_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_7_n_0 ),
        .I1(\axi_rdata[16]_i_8_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[17]),
        .Q(axil_rdata[17]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_5_n_0 ),
        .I1(\axi_rdata[17]_i_6_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_7_n_0 ),
        .I1(\axi_rdata[17]_i_8_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[18]),
        .Q(axil_rdata[18]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_5_n_0 ),
        .I1(\axi_rdata[18]_i_6_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_7_n_0 ),
        .I1(\axi_rdata[18]_i_8_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[19]),
        .Q(axil_rdata[19]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_5_n_0 ),
        .I1(\axi_rdata[19]_i_6_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_7_n_0 ),
        .I1(\axi_rdata[19]_i_8_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[1]),
        .Q(axil_rdata[1]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_5_n_0 ),
        .I1(\axi_rdata[1]_i_6_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_7_n_0 ),
        .I1(\axi_rdata[1]_i_8_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[20]),
        .Q(axil_rdata[20]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_5_n_0 ),
        .I1(\axi_rdata[20]_i_6_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_7_n_0 ),
        .I1(\axi_rdata[20]_i_8_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[21]),
        .Q(axil_rdata[21]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_5_n_0 ),
        .I1(\axi_rdata[21]_i_6_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_7_n_0 ),
        .I1(\axi_rdata[21]_i_8_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[22]),
        .Q(axil_rdata[22]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_5_n_0 ),
        .I1(\axi_rdata[22]_i_6_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_7_n_0 ),
        .I1(\axi_rdata[22]_i_8_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[23]),
        .Q(axil_rdata[23]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_5_n_0 ),
        .I1(\axi_rdata[23]_i_6_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_7_n_0 ),
        .I1(\axi_rdata[23]_i_8_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[24]),
        .Q(axil_rdata[24]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_5_n_0 ),
        .I1(\axi_rdata[24]_i_6_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_7_n_0 ),
        .I1(\axi_rdata[24]_i_8_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[25]),
        .Q(axil_rdata[25]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_5_n_0 ),
        .I1(\axi_rdata[25]_i_6_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_7_n_0 ),
        .I1(\axi_rdata[25]_i_8_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[26]),
        .Q(axil_rdata[26]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_5_n_0 ),
        .I1(\axi_rdata[26]_i_6_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_7_n_0 ),
        .I1(\axi_rdata[26]_i_8_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[27]),
        .Q(axil_rdata[27]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_5_n_0 ),
        .I1(\axi_rdata[27]_i_6_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_7_n_0 ),
        .I1(\axi_rdata[27]_i_8_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[28]),
        .Q(axil_rdata[28]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_5_n_0 ),
        .I1(\axi_rdata[28]_i_6_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_7_n_0 ),
        .I1(\axi_rdata[28]_i_8_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[29]),
        .Q(axil_rdata[29]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_5_n_0 ),
        .I1(\axi_rdata[29]_i_6_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_7_n_0 ),
        .I1(\axi_rdata[29]_i_8_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[2]),
        .Q(axil_rdata[2]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_5_n_0 ),
        .I1(\axi_rdata[2]_i_6_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_7_n_0 ),
        .I1(\axi_rdata[2]_i_8_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[30]),
        .Q(axil_rdata[30]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\axi_rdata[30]_i_6_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_7_n_0 ),
        .I1(\axi_rdata[30]_i_8_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[31]),
        .Q(axil_rdata[31]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_8_n_0 ),
        .I1(\axi_rdata[31]_i_9_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[3]),
        .Q(axil_rdata[3]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_5_n_0 ),
        .I1(\axi_rdata[3]_i_6_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_7_n_0 ),
        .I1(\axi_rdata[3]_i_8_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[4]),
        .Q(axil_rdata[4]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_5_n_0 ),
        .I1(\axi_rdata[4]_i_6_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_7_n_0 ),
        .I1(\axi_rdata[4]_i_8_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[5]),
        .Q(axil_rdata[5]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_5_n_0 ),
        .I1(\axi_rdata[5]_i_6_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_7_n_0 ),
        .I1(\axi_rdata[5]_i_8_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[6]),
        .Q(axil_rdata[6]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_5_n_0 ),
        .I1(\axi_rdata[6]_i_6_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_7_n_0 ),
        .I1(\axi_rdata[6]_i_8_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[7]),
        .Q(axil_rdata[7]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_5_n_0 ),
        .I1(\axi_rdata[7]_i_6_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_7_n_0 ),
        .I1(\axi_rdata[7]_i_8_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[8]),
        .Q(axil_rdata[8]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_5_n_0 ),
        .I1(\axi_rdata[8]_i_6_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_7_n_0 ),
        .I1(\axi_rdata[8]_i_8_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[9]),
        .Q(axil_rdata[9]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_5_n_0 ),
        .I1(\axi_rdata[9]_i_6_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(reg_rd_adr[6]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_7_n_0 ),
        .I1(\axi_rdata[9]_i_8_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(Q[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axil_arvalid),
        .I1(axil_arready),
        .I2(axil_rvalid),
        .I3(axil_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axil_rvalid),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(axil_awvalid),
        .I2(axil_wvalid),
        .I3(axil_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axil_wready),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \regs_out[0][31]_i_1 
       (.I0(reg_wr_adr[2]),
        .I1(\regs_out[0][31]_i_2_n_0 ),
        .I2(reg_wr_adr[5]),
        .I3(reg_wr_adr[4]),
        .I4(reg_wr_adr[3]),
        .O(\axi_awaddr_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \regs_out[0][31]_i_2 
       (.I0(reg_wr_adr[7]),
        .I1(reg_wr_adr[6]),
        .I2(axil_awvalid),
        .I3(axil_wvalid),
        .I4(axil_awready),
        .I5(axil_wready),
        .O(\regs_out[0][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \regs_out[1][31]_i_1 
       (.I0(reg_wr_adr[2]),
        .I1(\regs_out[0][31]_i_2_n_0 ),
        .I2(reg_wr_adr[5]),
        .I3(reg_wr_adr[4]),
        .I4(reg_wr_adr[3]),
        .O(\axi_awaddr_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \regs_out[2][31]_i_1 
       (.I0(reg_wr_adr[4]),
        .I1(reg_wr_adr[3]),
        .I2(reg_wr_adr[2]),
        .I3(\regs_out[0][31]_i_2_n_0 ),
        .I4(reg_wr_adr[5]),
        .O(\axi_awaddr_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \regs_out[3][31]_i_1 
       (.I0(reg_wr_adr[4]),
        .I1(reg_wr_adr[3]),
        .I2(reg_wr_adr[2]),
        .I3(\regs_out[0][31]_i_2_n_0 ),
        .I4(reg_wr_adr[5]),
        .O(\axi_awaddr_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \regs_out[4][31]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[4]),
        .I2(reg_wr_adr[2]),
        .I3(\regs_out[0][31]_i_2_n_0 ),
        .I4(reg_wr_adr[5]),
        .O(\axi_awaddr_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \regs_out[5][31]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[4]),
        .I2(reg_wr_adr[2]),
        .I3(\regs_out[0][31]_i_2_n_0 ),
        .I4(reg_wr_adr[5]),
        .O(\axi_awaddr_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \regs_out[6][31]_i_1 
       (.I0(reg_wr_adr[4]),
        .I1(reg_wr_adr[3]),
        .I2(reg_wr_adr[2]),
        .I3(\regs_out[0][31]_i_2_n_0 ),
        .I4(reg_wr_adr[5]),
        .O(\axi_awaddr_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \regs_out[7][31]_i_1 
       (.I0(reg_wr_adr[4]),
        .I1(reg_wr_adr[3]),
        .I2(reg_wr_adr[2]),
        .I3(\regs_out[0][31]_i_2_n_0 ),
        .I4(reg_wr_adr[5]),
        .O(\axi_awaddr_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \regs_out[8][31]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[4]),
        .I2(reg_wr_adr[5]),
        .I3(reg_wr_adr[2]),
        .I4(\regs_out[0][31]_i_2_n_0 ),
        .O(\axi_awaddr_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \regs_out[9][31]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[4]),
        .I2(reg_wr_adr[2]),
        .I3(reg_wr_adr[5]),
        .I4(\regs_out[0][31]_i_2_n_0 ),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock
   (\axi_araddr_reg[4] ,
    reg7_o,
    reg6_o,
    reg5_o,
    reg4_o,
    reg3_o,
    reg2_o,
    reg1_o,
    reg0_o,
    \axi_araddr_reg[4]_0 ,
    \axi_araddr_reg[4]_1 ,
    \axi_araddr_reg[4]_2 ,
    \axi_araddr_reg[4]_3 ,
    \axi_araddr_reg[4]_4 ,
    \axi_araddr_reg[4]_5 ,
    \axi_araddr_reg[4]_6 ,
    \axi_araddr_reg[4]_7 ,
    \axi_araddr_reg[4]_8 ,
    \axi_araddr_reg[4]_9 ,
    \axi_araddr_reg[4]_10 ,
    \axi_araddr_reg[4]_11 ,
    \axi_araddr_reg[4]_12 ,
    \axi_araddr_reg[4]_13 ,
    \axi_araddr_reg[4]_14 ,
    \axi_araddr_reg[4]_15 ,
    \axi_araddr_reg[4]_16 ,
    \axi_araddr_reg[4]_17 ,
    \axi_araddr_reg[4]_18 ,
    \axi_araddr_reg[4]_19 ,
    \axi_araddr_reg[4]_20 ,
    \axi_araddr_reg[4]_21 ,
    \axi_araddr_reg[4]_22 ,
    \axi_araddr_reg[4]_23 ,
    \axi_araddr_reg[4]_24 ,
    \axi_araddr_reg[4]_25 ,
    \axi_araddr_reg[4]_26 ,
    \axi_araddr_reg[4]_27 ,
    \axi_araddr_reg[4]_28 ,
    \axi_araddr_reg[4]_29 ,
    \axi_araddr_reg[4]_30 ,
    reg8_o,
    reg9_o,
    Q,
    \axi_rdata_reg[31]_i_5_0 ,
    \axi_rdata_reg[31]_i_5_1 ,
    E,
    axil_wdata,
    axil_aclk,
    \regs_out_reg[1][31]_0 ,
    \regs_out_reg[2][31]_0 ,
    \regs_out_reg[3][31]_0 ,
    \regs_out_reg[4][31]_0 ,
    \regs_out_reg[5][31]_0 ,
    \regs_out_reg[6][31]_0 ,
    \regs_out_reg[7][31]_0 ,
    \regs_out_reg[8][31]_0 ,
    \regs_out_reg[9][31]_0 );
  output \axi_araddr_reg[4] ;
  output [31:0]reg7_o;
  output [31:0]reg6_o;
  output [31:0]reg5_o;
  output [31:0]reg4_o;
  output [31:0]reg3_o;
  output [31:0]reg2_o;
  output [31:0]reg1_o;
  output [31:0]reg0_o;
  output \axi_araddr_reg[4]_0 ;
  output \axi_araddr_reg[4]_1 ;
  output \axi_araddr_reg[4]_2 ;
  output \axi_araddr_reg[4]_3 ;
  output \axi_araddr_reg[4]_4 ;
  output \axi_araddr_reg[4]_5 ;
  output \axi_araddr_reg[4]_6 ;
  output \axi_araddr_reg[4]_7 ;
  output \axi_araddr_reg[4]_8 ;
  output \axi_araddr_reg[4]_9 ;
  output \axi_araddr_reg[4]_10 ;
  output \axi_araddr_reg[4]_11 ;
  output \axi_araddr_reg[4]_12 ;
  output \axi_araddr_reg[4]_13 ;
  output \axi_araddr_reg[4]_14 ;
  output \axi_araddr_reg[4]_15 ;
  output \axi_araddr_reg[4]_16 ;
  output \axi_araddr_reg[4]_17 ;
  output \axi_araddr_reg[4]_18 ;
  output \axi_araddr_reg[4]_19 ;
  output \axi_araddr_reg[4]_20 ;
  output \axi_araddr_reg[4]_21 ;
  output \axi_araddr_reg[4]_22 ;
  output \axi_araddr_reg[4]_23 ;
  output \axi_araddr_reg[4]_24 ;
  output \axi_araddr_reg[4]_25 ;
  output \axi_araddr_reg[4]_26 ;
  output \axi_araddr_reg[4]_27 ;
  output \axi_araddr_reg[4]_28 ;
  output \axi_araddr_reg[4]_29 ;
  output \axi_araddr_reg[4]_30 ;
  output [31:0]reg8_o;
  output [31:0]reg9_o;
  input [2:0]Q;
  input \axi_rdata_reg[31]_i_5_0 ;
  input \axi_rdata_reg[31]_i_5_1 ;
  input [0:0]E;
  input [31:0]axil_wdata;
  input axil_aclk;
  input [0:0]\regs_out_reg[1][31]_0 ;
  input [0:0]\regs_out_reg[2][31]_0 ;
  input [0:0]\regs_out_reg[3][31]_0 ;
  input [0:0]\regs_out_reg[4][31]_0 ;
  input [0:0]\regs_out_reg[5][31]_0 ;
  input [0:0]\regs_out_reg[6][31]_0 ;
  input [0:0]\regs_out_reg[7][31]_0 ;
  input [0:0]\regs_out_reg[8][31]_0 ;
  input [0:0]\regs_out_reg[9][31]_0 ;

  wire [0:0]E;
  wire [2:0]Q;
  wire \axi_araddr_reg[4] ;
  wire \axi_araddr_reg[4]_0 ;
  wire \axi_araddr_reg[4]_1 ;
  wire \axi_araddr_reg[4]_10 ;
  wire \axi_araddr_reg[4]_11 ;
  wire \axi_araddr_reg[4]_12 ;
  wire \axi_araddr_reg[4]_13 ;
  wire \axi_araddr_reg[4]_14 ;
  wire \axi_araddr_reg[4]_15 ;
  wire \axi_araddr_reg[4]_16 ;
  wire \axi_araddr_reg[4]_17 ;
  wire \axi_araddr_reg[4]_18 ;
  wire \axi_araddr_reg[4]_19 ;
  wire \axi_araddr_reg[4]_2 ;
  wire \axi_araddr_reg[4]_20 ;
  wire \axi_araddr_reg[4]_21 ;
  wire \axi_araddr_reg[4]_22 ;
  wire \axi_araddr_reg[4]_23 ;
  wire \axi_araddr_reg[4]_24 ;
  wire \axi_araddr_reg[4]_25 ;
  wire \axi_araddr_reg[4]_26 ;
  wire \axi_araddr_reg[4]_27 ;
  wire \axi_araddr_reg[4]_28 ;
  wire \axi_araddr_reg[4]_29 ;
  wire \axi_araddr_reg[4]_3 ;
  wire \axi_araddr_reg[4]_30 ;
  wire \axi_araddr_reg[4]_4 ;
  wire \axi_araddr_reg[4]_5 ;
  wire \axi_araddr_reg[4]_6 ;
  wire \axi_araddr_reg[4]_7 ;
  wire \axi_araddr_reg[4]_8 ;
  wire \axi_araddr_reg[4]_9 ;
  wire \axi_rdata[0]_i_10_n_0 ;
  wire \axi_rdata[0]_i_9_n_0 ;
  wire \axi_rdata[10]_i_10_n_0 ;
  wire \axi_rdata[10]_i_9_n_0 ;
  wire \axi_rdata[11]_i_10_n_0 ;
  wire \axi_rdata[11]_i_9_n_0 ;
  wire \axi_rdata[12]_i_10_n_0 ;
  wire \axi_rdata[12]_i_9_n_0 ;
  wire \axi_rdata[13]_i_10_n_0 ;
  wire \axi_rdata[13]_i_9_n_0 ;
  wire \axi_rdata[14]_i_10_n_0 ;
  wire \axi_rdata[14]_i_9_n_0 ;
  wire \axi_rdata[15]_i_10_n_0 ;
  wire \axi_rdata[15]_i_9_n_0 ;
  wire \axi_rdata[16]_i_10_n_0 ;
  wire \axi_rdata[16]_i_9_n_0 ;
  wire \axi_rdata[17]_i_10_n_0 ;
  wire \axi_rdata[17]_i_9_n_0 ;
  wire \axi_rdata[18]_i_10_n_0 ;
  wire \axi_rdata[18]_i_9_n_0 ;
  wire \axi_rdata[19]_i_10_n_0 ;
  wire \axi_rdata[19]_i_9_n_0 ;
  wire \axi_rdata[1]_i_10_n_0 ;
  wire \axi_rdata[1]_i_9_n_0 ;
  wire \axi_rdata[20]_i_10_n_0 ;
  wire \axi_rdata[20]_i_9_n_0 ;
  wire \axi_rdata[21]_i_10_n_0 ;
  wire \axi_rdata[21]_i_9_n_0 ;
  wire \axi_rdata[22]_i_10_n_0 ;
  wire \axi_rdata[22]_i_9_n_0 ;
  wire \axi_rdata[23]_i_10_n_0 ;
  wire \axi_rdata[23]_i_9_n_0 ;
  wire \axi_rdata[24]_i_10_n_0 ;
  wire \axi_rdata[24]_i_9_n_0 ;
  wire \axi_rdata[25]_i_10_n_0 ;
  wire \axi_rdata[25]_i_9_n_0 ;
  wire \axi_rdata[26]_i_10_n_0 ;
  wire \axi_rdata[26]_i_9_n_0 ;
  wire \axi_rdata[27]_i_10_n_0 ;
  wire \axi_rdata[27]_i_9_n_0 ;
  wire \axi_rdata[28]_i_10_n_0 ;
  wire \axi_rdata[28]_i_9_n_0 ;
  wire \axi_rdata[29]_i_10_n_0 ;
  wire \axi_rdata[29]_i_9_n_0 ;
  wire \axi_rdata[2]_i_10_n_0 ;
  wire \axi_rdata[2]_i_9_n_0 ;
  wire \axi_rdata[30]_i_10_n_0 ;
  wire \axi_rdata[30]_i_9_n_0 ;
  wire \axi_rdata[31]_i_10_n_0 ;
  wire \axi_rdata[31]_i_11_n_0 ;
  wire \axi_rdata[3]_i_10_n_0 ;
  wire \axi_rdata[3]_i_9_n_0 ;
  wire \axi_rdata[4]_i_10_n_0 ;
  wire \axi_rdata[4]_i_9_n_0 ;
  wire \axi_rdata[5]_i_10_n_0 ;
  wire \axi_rdata[5]_i_9_n_0 ;
  wire \axi_rdata[6]_i_10_n_0 ;
  wire \axi_rdata[6]_i_9_n_0 ;
  wire \axi_rdata[7]_i_10_n_0 ;
  wire \axi_rdata[7]_i_9_n_0 ;
  wire \axi_rdata[8]_i_10_n_0 ;
  wire \axi_rdata[8]_i_9_n_0 ;
  wire \axi_rdata[9]_i_10_n_0 ;
  wire \axi_rdata[9]_i_9_n_0 ;
  wire \axi_rdata_reg[31]_i_5_0 ;
  wire \axi_rdata_reg[31]_i_5_1 ;
  wire axil_aclk;
  wire [31:0]axil_wdata;
  wire [31:0]reg0_o;
  wire [31:0]reg1_o;
  wire [31:0]reg2_o;
  wire [31:0]reg3_o;
  wire [31:0]reg4_o;
  wire [31:0]reg5_o;
  wire [31:0]reg6_o;
  wire [31:0]reg7_o;
  wire [31:0]reg8_o;
  wire [31:0]reg9_o;
  wire [0:0]\regs_out_reg[1][31]_0 ;
  wire [0:0]\regs_out_reg[2][31]_0 ;
  wire [0:0]\regs_out_reg[3][31]_0 ;
  wire [0:0]\regs_out_reg[4][31]_0 ;
  wire [0:0]\regs_out_reg[5][31]_0 ;
  wire [0:0]\regs_out_reg[6][31]_0 ;
  wire [0:0]\regs_out_reg[7][31]_0 ;
  wire [0:0]\regs_out_reg[8][31]_0 ;
  wire [0:0]\regs_out_reg[9][31]_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_10 
       (.I0(reg7_o[0]),
        .I1(reg6_o[0]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[0]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[0]),
        .O(\axi_rdata[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_9 
       (.I0(reg3_o[0]),
        .I1(reg2_o[0]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[0]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[0]),
        .O(\axi_rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_10 
       (.I0(reg7_o[10]),
        .I1(reg6_o[10]),
        .I2(Q[1]),
        .I3(reg5_o[10]),
        .I4(Q[0]),
        .I5(reg4_o[10]),
        .O(\axi_rdata[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_9 
       (.I0(reg3_o[10]),
        .I1(reg2_o[10]),
        .I2(Q[1]),
        .I3(reg1_o[10]),
        .I4(Q[0]),
        .I5(reg0_o[10]),
        .O(\axi_rdata[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_10 
       (.I0(reg7_o[11]),
        .I1(reg6_o[11]),
        .I2(Q[1]),
        .I3(reg5_o[11]),
        .I4(Q[0]),
        .I5(reg4_o[11]),
        .O(\axi_rdata[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_9 
       (.I0(reg3_o[11]),
        .I1(reg2_o[11]),
        .I2(Q[1]),
        .I3(reg1_o[11]),
        .I4(Q[0]),
        .I5(reg0_o[11]),
        .O(\axi_rdata[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_10 
       (.I0(reg7_o[12]),
        .I1(reg6_o[12]),
        .I2(Q[1]),
        .I3(reg5_o[12]),
        .I4(Q[0]),
        .I5(reg4_o[12]),
        .O(\axi_rdata[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_9 
       (.I0(reg3_o[12]),
        .I1(reg2_o[12]),
        .I2(Q[1]),
        .I3(reg1_o[12]),
        .I4(Q[0]),
        .I5(reg0_o[12]),
        .O(\axi_rdata[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_10 
       (.I0(reg7_o[13]),
        .I1(reg6_o[13]),
        .I2(Q[1]),
        .I3(reg5_o[13]),
        .I4(Q[0]),
        .I5(reg4_o[13]),
        .O(\axi_rdata[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_9 
       (.I0(reg3_o[13]),
        .I1(reg2_o[13]),
        .I2(Q[1]),
        .I3(reg1_o[13]),
        .I4(Q[0]),
        .I5(reg0_o[13]),
        .O(\axi_rdata[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_10 
       (.I0(reg7_o[14]),
        .I1(reg6_o[14]),
        .I2(Q[1]),
        .I3(reg5_o[14]),
        .I4(Q[0]),
        .I5(reg4_o[14]),
        .O(\axi_rdata[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_9 
       (.I0(reg3_o[14]),
        .I1(reg2_o[14]),
        .I2(Q[1]),
        .I3(reg1_o[14]),
        .I4(Q[0]),
        .I5(reg0_o[14]),
        .O(\axi_rdata[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_10 
       (.I0(reg7_o[15]),
        .I1(reg6_o[15]),
        .I2(Q[1]),
        .I3(reg5_o[15]),
        .I4(Q[0]),
        .I5(reg4_o[15]),
        .O(\axi_rdata[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_9 
       (.I0(reg3_o[15]),
        .I1(reg2_o[15]),
        .I2(Q[1]),
        .I3(reg1_o[15]),
        .I4(Q[0]),
        .I5(reg0_o[15]),
        .O(\axi_rdata[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_10 
       (.I0(reg7_o[16]),
        .I1(reg6_o[16]),
        .I2(Q[1]),
        .I3(reg5_o[16]),
        .I4(Q[0]),
        .I5(reg4_o[16]),
        .O(\axi_rdata[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_9 
       (.I0(reg3_o[16]),
        .I1(reg2_o[16]),
        .I2(Q[1]),
        .I3(reg1_o[16]),
        .I4(Q[0]),
        .I5(reg0_o[16]),
        .O(\axi_rdata[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_10 
       (.I0(reg7_o[17]),
        .I1(reg6_o[17]),
        .I2(Q[1]),
        .I3(reg5_o[17]),
        .I4(Q[0]),
        .I5(reg4_o[17]),
        .O(\axi_rdata[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_9 
       (.I0(reg3_o[17]),
        .I1(reg2_o[17]),
        .I2(Q[1]),
        .I3(reg1_o[17]),
        .I4(Q[0]),
        .I5(reg0_o[17]),
        .O(\axi_rdata[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_10 
       (.I0(reg7_o[18]),
        .I1(reg6_o[18]),
        .I2(Q[1]),
        .I3(reg5_o[18]),
        .I4(Q[0]),
        .I5(reg4_o[18]),
        .O(\axi_rdata[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_9 
       (.I0(reg3_o[18]),
        .I1(reg2_o[18]),
        .I2(Q[1]),
        .I3(reg1_o[18]),
        .I4(Q[0]),
        .I5(reg0_o[18]),
        .O(\axi_rdata[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_10 
       (.I0(reg7_o[19]),
        .I1(reg6_o[19]),
        .I2(Q[1]),
        .I3(reg5_o[19]),
        .I4(Q[0]),
        .I5(reg4_o[19]),
        .O(\axi_rdata[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_9 
       (.I0(reg3_o[19]),
        .I1(reg2_o[19]),
        .I2(Q[1]),
        .I3(reg1_o[19]),
        .I4(Q[0]),
        .I5(reg0_o[19]),
        .O(\axi_rdata[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_10 
       (.I0(reg7_o[1]),
        .I1(reg6_o[1]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[1]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[1]),
        .O(\axi_rdata[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_9 
       (.I0(reg3_o[1]),
        .I1(reg2_o[1]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[1]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[1]),
        .O(\axi_rdata[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_10 
       (.I0(reg7_o[20]),
        .I1(reg6_o[20]),
        .I2(Q[1]),
        .I3(reg5_o[20]),
        .I4(Q[0]),
        .I5(reg4_o[20]),
        .O(\axi_rdata[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_9 
       (.I0(reg3_o[20]),
        .I1(reg2_o[20]),
        .I2(Q[1]),
        .I3(reg1_o[20]),
        .I4(Q[0]),
        .I5(reg0_o[20]),
        .O(\axi_rdata[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_10 
       (.I0(reg7_o[21]),
        .I1(reg6_o[21]),
        .I2(Q[1]),
        .I3(reg5_o[21]),
        .I4(Q[0]),
        .I5(reg4_o[21]),
        .O(\axi_rdata[21]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_9 
       (.I0(reg3_o[21]),
        .I1(reg2_o[21]),
        .I2(Q[1]),
        .I3(reg1_o[21]),
        .I4(Q[0]),
        .I5(reg0_o[21]),
        .O(\axi_rdata[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_10 
       (.I0(reg7_o[22]),
        .I1(reg6_o[22]),
        .I2(Q[1]),
        .I3(reg5_o[22]),
        .I4(Q[0]),
        .I5(reg4_o[22]),
        .O(\axi_rdata[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_9 
       (.I0(reg3_o[22]),
        .I1(reg2_o[22]),
        .I2(Q[1]),
        .I3(reg1_o[22]),
        .I4(Q[0]),
        .I5(reg0_o[22]),
        .O(\axi_rdata[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_10 
       (.I0(reg7_o[23]),
        .I1(reg6_o[23]),
        .I2(Q[1]),
        .I3(reg5_o[23]),
        .I4(Q[0]),
        .I5(reg4_o[23]),
        .O(\axi_rdata[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_9 
       (.I0(reg3_o[23]),
        .I1(reg2_o[23]),
        .I2(Q[1]),
        .I3(reg1_o[23]),
        .I4(Q[0]),
        .I5(reg0_o[23]),
        .O(\axi_rdata[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_10 
       (.I0(reg7_o[24]),
        .I1(reg6_o[24]),
        .I2(Q[1]),
        .I3(reg5_o[24]),
        .I4(Q[0]),
        .I5(reg4_o[24]),
        .O(\axi_rdata[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_9 
       (.I0(reg3_o[24]),
        .I1(reg2_o[24]),
        .I2(Q[1]),
        .I3(reg1_o[24]),
        .I4(Q[0]),
        .I5(reg0_o[24]),
        .O(\axi_rdata[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_10 
       (.I0(reg7_o[25]),
        .I1(reg6_o[25]),
        .I2(Q[1]),
        .I3(reg5_o[25]),
        .I4(Q[0]),
        .I5(reg4_o[25]),
        .O(\axi_rdata[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_9 
       (.I0(reg3_o[25]),
        .I1(reg2_o[25]),
        .I2(Q[1]),
        .I3(reg1_o[25]),
        .I4(Q[0]),
        .I5(reg0_o[25]),
        .O(\axi_rdata[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_10 
       (.I0(reg7_o[26]),
        .I1(reg6_o[26]),
        .I2(Q[1]),
        .I3(reg5_o[26]),
        .I4(Q[0]),
        .I5(reg4_o[26]),
        .O(\axi_rdata[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_9 
       (.I0(reg3_o[26]),
        .I1(reg2_o[26]),
        .I2(Q[1]),
        .I3(reg1_o[26]),
        .I4(Q[0]),
        .I5(reg0_o[26]),
        .O(\axi_rdata[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_10 
       (.I0(reg7_o[27]),
        .I1(reg6_o[27]),
        .I2(Q[1]),
        .I3(reg5_o[27]),
        .I4(Q[0]),
        .I5(reg4_o[27]),
        .O(\axi_rdata[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_9 
       (.I0(reg3_o[27]),
        .I1(reg2_o[27]),
        .I2(Q[1]),
        .I3(reg1_o[27]),
        .I4(Q[0]),
        .I5(reg0_o[27]),
        .O(\axi_rdata[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_10 
       (.I0(reg7_o[28]),
        .I1(reg6_o[28]),
        .I2(Q[1]),
        .I3(reg5_o[28]),
        .I4(Q[0]),
        .I5(reg4_o[28]),
        .O(\axi_rdata[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_9 
       (.I0(reg3_o[28]),
        .I1(reg2_o[28]),
        .I2(Q[1]),
        .I3(reg1_o[28]),
        .I4(Q[0]),
        .I5(reg0_o[28]),
        .O(\axi_rdata[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_10 
       (.I0(reg7_o[29]),
        .I1(reg6_o[29]),
        .I2(Q[1]),
        .I3(reg5_o[29]),
        .I4(Q[0]),
        .I5(reg4_o[29]),
        .O(\axi_rdata[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_9 
       (.I0(reg3_o[29]),
        .I1(reg2_o[29]),
        .I2(Q[1]),
        .I3(reg1_o[29]),
        .I4(Q[0]),
        .I5(reg0_o[29]),
        .O(\axi_rdata[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_10 
       (.I0(reg7_o[2]),
        .I1(reg6_o[2]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[2]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[2]),
        .O(\axi_rdata[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_9 
       (.I0(reg3_o[2]),
        .I1(reg2_o[2]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[2]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[2]),
        .O(\axi_rdata[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_10 
       (.I0(reg7_o[30]),
        .I1(reg6_o[30]),
        .I2(Q[1]),
        .I3(reg5_o[30]),
        .I4(Q[0]),
        .I5(reg4_o[30]),
        .O(\axi_rdata[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_9 
       (.I0(reg3_o[30]),
        .I1(reg2_o[30]),
        .I2(Q[1]),
        .I3(reg1_o[30]),
        .I4(Q[0]),
        .I5(reg0_o[30]),
        .O(\axi_rdata[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_10 
       (.I0(reg3_o[31]),
        .I1(reg2_o[31]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[31]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[31]),
        .O(\axi_rdata[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_11 
       (.I0(reg7_o[31]),
        .I1(reg6_o[31]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[31]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[31]),
        .O(\axi_rdata[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_10 
       (.I0(reg7_o[3]),
        .I1(reg6_o[3]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[3]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[3]),
        .O(\axi_rdata[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_9 
       (.I0(reg3_o[3]),
        .I1(reg2_o[3]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[3]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[3]),
        .O(\axi_rdata[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_10 
       (.I0(reg7_o[4]),
        .I1(reg6_o[4]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[4]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[4]),
        .O(\axi_rdata[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_9 
       (.I0(reg3_o[4]),
        .I1(reg2_o[4]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[4]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[4]),
        .O(\axi_rdata[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_10 
       (.I0(reg7_o[5]),
        .I1(reg6_o[5]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[5]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[5]),
        .O(\axi_rdata[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_9 
       (.I0(reg3_o[5]),
        .I1(reg2_o[5]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[5]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[5]),
        .O(\axi_rdata[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_10 
       (.I0(reg7_o[6]),
        .I1(reg6_o[6]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[6]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[6]),
        .O(\axi_rdata[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_9 
       (.I0(reg3_o[6]),
        .I1(reg2_o[6]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[6]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[6]),
        .O(\axi_rdata[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_10 
       (.I0(reg7_o[7]),
        .I1(reg6_o[7]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[7]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[7]),
        .O(\axi_rdata[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_9 
       (.I0(reg3_o[7]),
        .I1(reg2_o[7]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[7]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[7]),
        .O(\axi_rdata[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_10 
       (.I0(reg7_o[8]),
        .I1(reg6_o[8]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg5_o[8]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg4_o[8]),
        .O(\axi_rdata[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_9 
       (.I0(reg3_o[8]),
        .I1(reg2_o[8]),
        .I2(\axi_rdata_reg[31]_i_5_0 ),
        .I3(reg1_o[8]),
        .I4(\axi_rdata_reg[31]_i_5_1 ),
        .I5(reg0_o[8]),
        .O(\axi_rdata[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_10 
       (.I0(reg7_o[9]),
        .I1(reg6_o[9]),
        .I2(Q[1]),
        .I3(reg5_o[9]),
        .I4(Q[0]),
        .I5(reg4_o[9]),
        .O(\axi_rdata[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_9 
       (.I0(reg3_o[9]),
        .I1(reg2_o[9]),
        .I2(Q[1]),
        .I3(reg1_o[9]),
        .I4(Q[0]),
        .I5(reg0_o[9]),
        .O(\axi_rdata[9]_i_9_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_4 
       (.I0(\axi_rdata[0]_i_9_n_0 ),
        .I1(\axi_rdata[0]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_30 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[10]_i_4 
       (.I0(\axi_rdata[10]_i_9_n_0 ),
        .I1(\axi_rdata[10]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_20 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[11]_i_4 
       (.I0(\axi_rdata[11]_i_9_n_0 ),
        .I1(\axi_rdata[11]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_19 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[12]_i_4 
       (.I0(\axi_rdata[12]_i_9_n_0 ),
        .I1(\axi_rdata[12]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_18 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[13]_i_4 
       (.I0(\axi_rdata[13]_i_9_n_0 ),
        .I1(\axi_rdata[13]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_17 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[14]_i_4 
       (.I0(\axi_rdata[14]_i_9_n_0 ),
        .I1(\axi_rdata[14]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_16 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[15]_i_4 
       (.I0(\axi_rdata[15]_i_9_n_0 ),
        .I1(\axi_rdata[15]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_15 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[16]_i_4 
       (.I0(\axi_rdata[16]_i_9_n_0 ),
        .I1(\axi_rdata[16]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_14 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[17]_i_4 
       (.I0(\axi_rdata[17]_i_9_n_0 ),
        .I1(\axi_rdata[17]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_13 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[18]_i_4 
       (.I0(\axi_rdata[18]_i_9_n_0 ),
        .I1(\axi_rdata[18]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_12 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[19]_i_4 
       (.I0(\axi_rdata[19]_i_9_n_0 ),
        .I1(\axi_rdata[19]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_11 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[1]_i_4 
       (.I0(\axi_rdata[1]_i_9_n_0 ),
        .I1(\axi_rdata[1]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_29 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[20]_i_4 
       (.I0(\axi_rdata[20]_i_9_n_0 ),
        .I1(\axi_rdata[20]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_10 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[21]_i_4 
       (.I0(\axi_rdata[21]_i_9_n_0 ),
        .I1(\axi_rdata[21]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_9 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[22]_i_4 
       (.I0(\axi_rdata[22]_i_9_n_0 ),
        .I1(\axi_rdata[22]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_8 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[23]_i_4 
       (.I0(\axi_rdata[23]_i_9_n_0 ),
        .I1(\axi_rdata[23]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_7 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[24]_i_4 
       (.I0(\axi_rdata[24]_i_9_n_0 ),
        .I1(\axi_rdata[24]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_6 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[25]_i_4 
       (.I0(\axi_rdata[25]_i_9_n_0 ),
        .I1(\axi_rdata[25]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_5 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[26]_i_4 
       (.I0(\axi_rdata[26]_i_9_n_0 ),
        .I1(\axi_rdata[26]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_4 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[27]_i_4 
       (.I0(\axi_rdata[27]_i_9_n_0 ),
        .I1(\axi_rdata[27]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_3 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[28]_i_4 
       (.I0(\axi_rdata[28]_i_9_n_0 ),
        .I1(\axi_rdata[28]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_2 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[29]_i_4 
       (.I0(\axi_rdata[29]_i_9_n_0 ),
        .I1(\axi_rdata[29]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_1 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[2]_i_4 
       (.I0(\axi_rdata[2]_i_9_n_0 ),
        .I1(\axi_rdata[2]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_28 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[30]_i_4 
       (.I0(\axi_rdata[30]_i_9_n_0 ),
        .I1(\axi_rdata[30]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_0 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[31]_i_5 
       (.I0(\axi_rdata[31]_i_10_n_0 ),
        .I1(\axi_rdata[31]_i_11_n_0 ),
        .O(\axi_araddr_reg[4] ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[3]_i_4 
       (.I0(\axi_rdata[3]_i_9_n_0 ),
        .I1(\axi_rdata[3]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_27 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[4]_i_4 
       (.I0(\axi_rdata[4]_i_9_n_0 ),
        .I1(\axi_rdata[4]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_26 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[5]_i_4 
       (.I0(\axi_rdata[5]_i_9_n_0 ),
        .I1(\axi_rdata[5]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_25 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[6]_i_4 
       (.I0(\axi_rdata[6]_i_9_n_0 ),
        .I1(\axi_rdata[6]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_24 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[7]_i_4 
       (.I0(\axi_rdata[7]_i_9_n_0 ),
        .I1(\axi_rdata[7]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_23 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[8]_i_4 
       (.I0(\axi_rdata[8]_i_9_n_0 ),
        .I1(\axi_rdata[8]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_22 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[9]_i_4 
       (.I0(\axi_rdata[9]_i_9_n_0 ),
        .I1(\axi_rdata[9]_i_10_n_0 ),
        .O(\axi_araddr_reg[4]_21 ),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][0] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[0]),
        .Q(reg0_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][10] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[10]),
        .Q(reg0_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][11] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[11]),
        .Q(reg0_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][12] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[12]),
        .Q(reg0_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][13] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[13]),
        .Q(reg0_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][14] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[14]),
        .Q(reg0_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][15] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[15]),
        .Q(reg0_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][16] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[16]),
        .Q(reg0_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][17] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[17]),
        .Q(reg0_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][18] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[18]),
        .Q(reg0_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][19] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[19]),
        .Q(reg0_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][1] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[1]),
        .Q(reg0_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][20] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[20]),
        .Q(reg0_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][21] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[21]),
        .Q(reg0_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][22] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[22]),
        .Q(reg0_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][23] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[23]),
        .Q(reg0_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][24] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[24]),
        .Q(reg0_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][25] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[25]),
        .Q(reg0_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][26] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[26]),
        .Q(reg0_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][27] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[27]),
        .Q(reg0_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][28] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[28]),
        .Q(reg0_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][29] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[29]),
        .Q(reg0_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][2] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[2]),
        .Q(reg0_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][30] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[30]),
        .Q(reg0_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][31] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[31]),
        .Q(reg0_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][3] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[3]),
        .Q(reg0_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][4] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[4]),
        .Q(reg0_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][5] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[5]),
        .Q(reg0_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][6] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[6]),
        .Q(reg0_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][7] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[7]),
        .Q(reg0_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][8] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[8]),
        .Q(reg0_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][9] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[9]),
        .Q(reg0_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg1_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg1_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg1_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg1_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg1_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg1_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg1_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg1_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg1_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg1_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg1_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg1_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg1_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg1_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg1_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg1_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg1_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg1_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg1_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg1_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg1_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg1_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg1_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg1_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg1_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg1_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg1_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg1_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg1_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg1_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg1_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg1_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg2_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg2_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg2_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg2_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg2_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg2_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg2_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg2_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg2_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg2_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg2_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg2_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg2_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg2_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg2_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg2_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg2_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg2_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg2_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg2_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg2_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg2_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg2_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg2_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg2_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg2_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg2_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg2_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg2_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg2_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg2_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg2_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg3_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg3_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg3_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg3_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg3_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg3_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg3_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg3_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg3_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg3_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg3_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg3_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg3_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg3_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg3_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg3_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg3_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg3_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg3_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg3_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg3_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg3_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg3_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg3_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg3_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg3_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg3_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg3_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg3_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg3_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg3_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg3_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg4_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg4_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg4_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg4_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg4_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg4_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg4_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg4_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg4_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg4_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg4_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg4_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg4_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg4_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg4_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg4_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg4_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg4_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg4_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg4_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg4_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg4_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg4_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg4_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg4_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg4_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg4_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg4_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg4_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg4_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg4_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg4_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg5_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg5_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg5_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg5_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg5_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg5_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg5_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg5_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg5_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg5_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg5_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg5_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg5_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg5_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg5_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg5_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg5_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg5_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg5_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg5_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg5_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg5_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg5_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg5_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg5_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg5_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg5_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg5_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg5_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg5_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg5_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg5_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg6_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg6_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg6_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg6_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg6_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg6_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg6_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg6_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg6_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg6_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg6_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg6_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg6_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg6_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg6_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg6_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg6_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg6_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg6_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg6_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg6_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg6_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg6_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg6_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg6_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg6_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg6_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg6_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg6_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg6_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg6_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg6_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg7_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg7_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg7_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg7_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg7_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg7_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg7_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg7_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg7_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg7_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg7_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg7_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg7_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg7_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg7_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg7_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg7_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg7_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg7_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg7_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg7_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg7_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg7_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg7_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg7_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg7_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg7_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg7_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg7_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg7_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg7_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg7_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg8_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg8_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg8_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg8_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg8_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg8_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg8_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg8_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg8_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg8_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg8_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg8_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg8_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg8_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg8_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg8_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg8_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg8_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg8_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg8_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg8_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg8_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg8_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg8_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg8_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg8_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg8_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg8_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg8_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg8_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg8_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[8][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[8][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg8_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[0]),
        .Q(reg9_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[10]),
        .Q(reg9_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[11]),
        .Q(reg9_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[12]),
        .Q(reg9_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[13]),
        .Q(reg9_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[14]),
        .Q(reg9_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[15]),
        .Q(reg9_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[16]),
        .Q(reg9_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[17]),
        .Q(reg9_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[18]),
        .Q(reg9_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[19]),
        .Q(reg9_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[1]),
        .Q(reg9_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[20]),
        .Q(reg9_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[21]),
        .Q(reg9_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[22]),
        .Q(reg9_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[23]),
        .Q(reg9_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[24]),
        .Q(reg9_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[25]),
        .Q(reg9_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[26]),
        .Q(reg9_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[27]),
        .Q(reg9_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[28]),
        .Q(reg9_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[29]),
        .Q(reg9_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[2]),
        .Q(reg9_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[30]),
        .Q(reg9_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[31]),
        .Q(reg9_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[3]),
        .Q(reg9_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[4]),
        .Q(reg9_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[5]),
        .Q(reg9_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[6]),
        .Q(reg9_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[7]),
        .Q(reg9_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[8]),
        .Q(reg9_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[9][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[9][31]_0 ),
        .D(axil_wdata[9]),
        .Q(reg9_o[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock
   (axil_awready,
    axil_wready,
    axil_arready,
    axil_rdata,
    axil_rvalid,
    reg0_o,
    reg1_o,
    reg2_o,
    reg3_o,
    reg4_o,
    reg5_o,
    reg6_o,
    reg7_o,
    reg8_o,
    reg9_o,
    axil_bvalid,
    axil_aclk,
    axil_awaddr,
    axil_araddr,
    axil_arvalid,
    axil_wdata,
    axil_awvalid,
    axil_wvalid,
    reg8_i,
    reg7_i,
    reg6_i,
    reg5_i,
    reg4_i,
    reg3_i,
    reg2_i,
    reg1_i,
    reg0_i,
    axil_aresetn,
    axil_bready,
    axil_rready);
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output [31:0]axil_rdata;
  output axil_rvalid;
  output [31:0]reg0_o;
  output [31:0]reg1_o;
  output [31:0]reg2_o;
  output [31:0]reg3_o;
  output [31:0]reg4_o;
  output [31:0]reg5_o;
  output [31:0]reg6_o;
  output [31:0]reg7_o;
  output [31:0]reg8_o;
  output [31:0]reg9_o;
  output axil_bvalid;
  input axil_aclk;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;
  input axil_arvalid;
  input [31:0]axil_wdata;
  input axil_awvalid;
  input axil_wvalid;
  input [31:0]reg8_i;
  input [31:0]reg7_i;
  input [31:0]reg6_i;
  input [31:0]reg5_i;
  input [31:0]reg4_i;
  input [31:0]reg3_i;
  input [31:0]reg2_i;
  input [31:0]reg1_i;
  input [31:0]reg0_i;
  input axil_aresetn;
  input axil_bready;
  input axil_rready;

  wire AXIL_inst_n_51;
  wire AXIL_inst_n_8;
  wire AXIL_inst_n_9;
  wire axil_aclk;
  wire [5:0]axil_araddr;
  wire axil_aresetn;
  wire axil_arready;
  wire axil_arvalid;
  wire [5:0]axil_awaddr;
  wire axil_awready;
  wire axil_awvalid;
  wire axil_bready;
  wire axil_bvalid;
  wire [31:0]axil_rdata;
  wire axil_rready;
  wire axil_rvalid;
  wire [31:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire comblock_i_n_0;
  wire comblock_i_n_257;
  wire comblock_i_n_258;
  wire comblock_i_n_259;
  wire comblock_i_n_260;
  wire comblock_i_n_261;
  wire comblock_i_n_262;
  wire comblock_i_n_263;
  wire comblock_i_n_264;
  wire comblock_i_n_265;
  wire comblock_i_n_266;
  wire comblock_i_n_267;
  wire comblock_i_n_268;
  wire comblock_i_n_269;
  wire comblock_i_n_270;
  wire comblock_i_n_271;
  wire comblock_i_n_272;
  wire comblock_i_n_273;
  wire comblock_i_n_274;
  wire comblock_i_n_275;
  wire comblock_i_n_276;
  wire comblock_i_n_277;
  wire comblock_i_n_278;
  wire comblock_i_n_279;
  wire comblock_i_n_280;
  wire comblock_i_n_281;
  wire comblock_i_n_282;
  wire comblock_i_n_283;
  wire comblock_i_n_284;
  wire comblock_i_n_285;
  wire comblock_i_n_286;
  wire comblock_i_n_287;
  wire [31:0]reg0_i;
  wire [31:0]reg0_o;
  wire [31:0]reg1_i;
  wire [31:0]reg1_o;
  wire [31:0]reg2_i;
  wire [31:0]reg2_o;
  wire [31:0]reg3_i;
  wire [31:0]reg3_o;
  wire [31:0]reg4_i;
  wire [31:0]reg4_o;
  wire [31:0]reg5_i;
  wire [31:0]reg5_o;
  wire [31:0]reg6_i;
  wire [31:0]reg6_o;
  wire [31:0]reg7_i;
  wire [31:0]reg7_o;
  wire [31:0]reg8_i;
  wire [31:0]reg8_o;
  wire [31:0]reg9_o;
  wire [4:2]reg_rd_adr;
  wire \regs_out[1]_5 ;
  wire \regs_out[2]_8 ;
  wire \regs_out[3]_4 ;
  wire \regs_out[4]_7 ;
  wire \regs_out[5]_3 ;
  wire \regs_out[6]_6 ;
  wire \regs_out[7]_2 ;
  wire \regs_out[8]_1 ;
  wire \regs_out[9]_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL AXIL_inst
       (.E(\regs_out[9]_0 ),
        .Q(reg_rd_adr),
        .\axi_araddr_reg[2]_rep_0 (AXIL_inst_n_9),
        .\axi_araddr_reg[3]_rep_0 (AXIL_inst_n_8),
        .\axi_awaddr_reg[2]_0 (\regs_out[1]_5 ),
        .\axi_awaddr_reg[2]_1 (AXIL_inst_n_51),
        .\axi_awaddr_reg[3]_0 (\regs_out[8]_1 ),
        .\axi_awaddr_reg[3]_1 (\regs_out[5]_3 ),
        .\axi_awaddr_reg[3]_2 (\regs_out[4]_7 ),
        .\axi_awaddr_reg[4]_0 (\regs_out[7]_2 ),
        .\axi_awaddr_reg[4]_1 (\regs_out[3]_4 ),
        .\axi_awaddr_reg[4]_2 (\regs_out[6]_6 ),
        .\axi_awaddr_reg[4]_3 (\regs_out[2]_8 ),
        .\axi_rdata_reg[0]_0 (comblock_i_n_287),
        .\axi_rdata_reg[10]_0 (comblock_i_n_277),
        .\axi_rdata_reg[11]_0 (comblock_i_n_276),
        .\axi_rdata_reg[12]_0 (comblock_i_n_275),
        .\axi_rdata_reg[13]_0 (comblock_i_n_274),
        .\axi_rdata_reg[14]_0 (comblock_i_n_273),
        .\axi_rdata_reg[15]_0 (comblock_i_n_272),
        .\axi_rdata_reg[16]_0 (comblock_i_n_271),
        .\axi_rdata_reg[17]_0 (comblock_i_n_270),
        .\axi_rdata_reg[18]_0 (comblock_i_n_269),
        .\axi_rdata_reg[19]_0 (comblock_i_n_268),
        .\axi_rdata_reg[1]_0 (comblock_i_n_286),
        .\axi_rdata_reg[20]_0 (comblock_i_n_267),
        .\axi_rdata_reg[21]_0 (comblock_i_n_266),
        .\axi_rdata_reg[22]_0 (comblock_i_n_265),
        .\axi_rdata_reg[23]_0 (comblock_i_n_264),
        .\axi_rdata_reg[24]_0 (comblock_i_n_263),
        .\axi_rdata_reg[25]_0 (comblock_i_n_262),
        .\axi_rdata_reg[26]_0 (comblock_i_n_261),
        .\axi_rdata_reg[27]_0 (comblock_i_n_260),
        .\axi_rdata_reg[28]_0 (comblock_i_n_259),
        .\axi_rdata_reg[29]_0 (comblock_i_n_258),
        .\axi_rdata_reg[2]_0 (comblock_i_n_285),
        .\axi_rdata_reg[30]_0 (comblock_i_n_257),
        .\axi_rdata_reg[31]_0 (comblock_i_n_0),
        .\axi_rdata_reg[3]_0 (comblock_i_n_284),
        .\axi_rdata_reg[4]_0 (comblock_i_n_283),
        .\axi_rdata_reg[5]_0 (comblock_i_n_282),
        .\axi_rdata_reg[6]_0 (comblock_i_n_281),
        .\axi_rdata_reg[7]_0 (comblock_i_n_280),
        .\axi_rdata_reg[8]_0 (comblock_i_n_279),
        .\axi_rdata_reg[9]_0 (comblock_i_n_278),
        .axil_aclk(axil_aclk),
        .axil_araddr(axil_araddr),
        .axil_aresetn(axil_aresetn),
        .axil_arready(axil_arready),
        .axil_arvalid(axil_arvalid),
        .axil_awaddr(axil_awaddr),
        .axil_awready(axil_awready),
        .axil_awvalid(axil_awvalid),
        .axil_bready(axil_bready),
        .axil_bvalid(axil_bvalid),
        .axil_rdata(axil_rdata),
        .axil_rready(axil_rready),
        .axil_rvalid(axil_rvalid),
        .axil_wready(axil_wready),
        .axil_wvalid(axil_wvalid),
        .reg0_i(reg0_i),
        .reg1_i(reg1_i),
        .reg2_i(reg2_i),
        .reg3_i(reg3_i),
        .reg4_i(reg4_i),
        .reg5_i(reg5_i),
        .reg6_i(reg6_i),
        .reg7_i(reg7_i),
        .reg8_i(reg8_i),
        .reg8_o(reg8_o),
        .reg9_o(reg9_o));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock comblock_i
       (.E(AXIL_inst_n_51),
        .Q(reg_rd_adr),
        .\axi_araddr_reg[4] (comblock_i_n_0),
        .\axi_araddr_reg[4]_0 (comblock_i_n_257),
        .\axi_araddr_reg[4]_1 (comblock_i_n_258),
        .\axi_araddr_reg[4]_10 (comblock_i_n_267),
        .\axi_araddr_reg[4]_11 (comblock_i_n_268),
        .\axi_araddr_reg[4]_12 (comblock_i_n_269),
        .\axi_araddr_reg[4]_13 (comblock_i_n_270),
        .\axi_araddr_reg[4]_14 (comblock_i_n_271),
        .\axi_araddr_reg[4]_15 (comblock_i_n_272),
        .\axi_araddr_reg[4]_16 (comblock_i_n_273),
        .\axi_araddr_reg[4]_17 (comblock_i_n_274),
        .\axi_araddr_reg[4]_18 (comblock_i_n_275),
        .\axi_araddr_reg[4]_19 (comblock_i_n_276),
        .\axi_araddr_reg[4]_2 (comblock_i_n_259),
        .\axi_araddr_reg[4]_20 (comblock_i_n_277),
        .\axi_araddr_reg[4]_21 (comblock_i_n_278),
        .\axi_araddr_reg[4]_22 (comblock_i_n_279),
        .\axi_araddr_reg[4]_23 (comblock_i_n_280),
        .\axi_araddr_reg[4]_24 (comblock_i_n_281),
        .\axi_araddr_reg[4]_25 (comblock_i_n_282),
        .\axi_araddr_reg[4]_26 (comblock_i_n_283),
        .\axi_araddr_reg[4]_27 (comblock_i_n_284),
        .\axi_araddr_reg[4]_28 (comblock_i_n_285),
        .\axi_araddr_reg[4]_29 (comblock_i_n_286),
        .\axi_araddr_reg[4]_3 (comblock_i_n_260),
        .\axi_araddr_reg[4]_30 (comblock_i_n_287),
        .\axi_araddr_reg[4]_4 (comblock_i_n_261),
        .\axi_araddr_reg[4]_5 (comblock_i_n_262),
        .\axi_araddr_reg[4]_6 (comblock_i_n_263),
        .\axi_araddr_reg[4]_7 (comblock_i_n_264),
        .\axi_araddr_reg[4]_8 (comblock_i_n_265),
        .\axi_araddr_reg[4]_9 (comblock_i_n_266),
        .\axi_rdata_reg[31]_i_5_0 (AXIL_inst_n_8),
        .\axi_rdata_reg[31]_i_5_1 (AXIL_inst_n_9),
        .axil_aclk(axil_aclk),
        .axil_wdata(axil_wdata),
        .reg0_o(reg0_o),
        .reg1_o(reg1_o),
        .reg2_o(reg2_o),
        .reg3_o(reg3_o),
        .reg4_o(reg4_o),
        .reg5_o(reg5_o),
        .reg6_o(reg6_o),
        .reg7_o(reg7_o),
        .reg8_o(reg8_o),
        .reg9_o(reg9_o),
        .\regs_out_reg[1][31]_0 (\regs_out[1]_5 ),
        .\regs_out_reg[2][31]_0 (\regs_out[2]_8 ),
        .\regs_out_reg[3][31]_0 (\regs_out[3]_4 ),
        .\regs_out_reg[4][31]_0 (\regs_out[4]_7 ),
        .\regs_out_reg[5][31]_0 (\regs_out[5]_3 ),
        .\regs_out_reg[6][31]_0 (\regs_out[6]_6 ),
        .\regs_out_reg[7][31]_0 (\regs_out[7]_2 ),
        .\regs_out_reg[8][31]_0 (\regs_out[8]_1 ),
        .\regs_out_reg[9][31]_0 (\regs_out[9]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_comblock_0_0,axi_comblock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_comblock,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (reg0_i,
    reg1_i,
    reg2_i,
    reg3_i,
    reg4_i,
    reg5_i,
    reg6_i,
    reg7_i,
    reg8_i,
    reg0_o,
    reg1_o,
    reg2_o,
    reg3_o,
    reg4_o,
    reg5_o,
    reg6_o,
    reg7_o,
    reg8_o,
    reg9_o,
    axil_aclk,
    axil_aresetn,
    axil_awaddr,
    axil_awprot,
    axil_awvalid,
    axil_awready,
    axil_wdata,
    axil_wstrb,
    axil_wvalid,
    axil_wready,
    axil_bresp,
    axil_bvalid,
    axil_bready,
    axil_araddr,
    axil_arprot,
    axil_arvalid,
    axil_arready,
    axil_rdata,
    axil_rresp,
    axil_rvalid,
    axil_rready);
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg0_i" *) input [31:0]reg0_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg1_i" *) input [31:0]reg1_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg2_i" *) input [31:0]reg2_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg3_i" *) input [31:0]reg3_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg4_i" *) input [31:0]reg4_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg5_i" *) input [31:0]reg5_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg6_i" *) input [31:0]reg6_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg7_i" *) input [31:0]reg7_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg8_i" *) input [31:0]reg8_i;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg0_o" *) output [31:0]reg0_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg1_o" *) output [31:0]reg1_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg2_o" *) output [31:0]reg2_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg3_o" *) output [31:0]reg3_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg4_o" *) output [31:0]reg4_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg5_o" *) output [31:0]reg5_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg6_o" *) output [31:0]reg6_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg7_o" *) output [31:0]reg7_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg8_o" *) output [31:0]reg8_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg9_o" *) output [31:0]reg9_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axil_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axil_aclk, ASSOCIATED_RESET axil_aresetn, ASSOCIATED_BUSIF AXIL, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axil_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axil_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axil_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axil_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]axil_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWPROT" *) input [2:0]axil_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWVALID" *) input axil_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWREADY" *) output axil_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WDATA" *) input [31:0]axil_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WSTRB" *) input [3:0]axil_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WVALID" *) input axil_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WREADY" *) output axil_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL BRESP" *) output [1:0]axil_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL BVALID" *) output axil_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL BREADY" *) input axil_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARADDR" *) input [7:0]axil_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARPROT" *) input [2:0]axil_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARVALID" *) input axil_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARREADY" *) output axil_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RDATA" *) output [31:0]axil_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RRESP" *) output [1:0]axil_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RVALID" *) output axil_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RREADY" *) input axil_rready;

  wire \<const0> ;
  wire axil_aclk;
  wire [7:0]axil_araddr;
  wire axil_aresetn;
  wire axil_arready;
  wire axil_arvalid;
  wire [7:0]axil_awaddr;
  wire axil_awready;
  wire axil_awvalid;
  wire axil_bready;
  wire axil_bvalid;
  wire [31:0]axil_rdata;
  wire axil_rready;
  wire axil_rvalid;
  wire [31:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire [31:0]reg0_i;
  wire [31:0]reg0_o;
  wire [31:0]reg1_i;
  wire [31:0]reg1_o;
  wire [31:0]reg2_i;
  wire [31:0]reg2_o;
  wire [31:0]reg3_i;
  wire [31:0]reg3_o;
  wire [31:0]reg4_i;
  wire [31:0]reg4_o;
  wire [31:0]reg5_i;
  wire [31:0]reg5_o;
  wire [31:0]reg6_i;
  wire [31:0]reg6_o;
  wire [31:0]reg7_i;
  wire [31:0]reg7_o;
  wire [31:0]reg8_i;
  wire [31:0]reg8_o;
  wire [31:0]reg9_o;

  assign axil_bresp[1] = \<const0> ;
  assign axil_bresp[0] = \<const0> ;
  assign axil_rresp[1] = \<const0> ;
  assign axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock U0
       (.axil_aclk(axil_aclk),
        .axil_araddr(axil_araddr[7:2]),
        .axil_aresetn(axil_aresetn),
        .axil_arready(axil_arready),
        .axil_arvalid(axil_arvalid),
        .axil_awaddr(axil_awaddr[7:2]),
        .axil_awready(axil_awready),
        .axil_awvalid(axil_awvalid),
        .axil_bready(axil_bready),
        .axil_bvalid(axil_bvalid),
        .axil_rdata(axil_rdata),
        .axil_rready(axil_rready),
        .axil_rvalid(axil_rvalid),
        .axil_wdata(axil_wdata),
        .axil_wready(axil_wready),
        .axil_wvalid(axil_wvalid),
        .reg0_i(reg0_i),
        .reg0_o(reg0_o),
        .reg1_i(reg1_i),
        .reg1_o(reg1_o),
        .reg2_i(reg2_i),
        .reg2_o(reg2_o),
        .reg3_i(reg3_i),
        .reg3_o(reg3_o),
        .reg4_i(reg4_i),
        .reg4_o(reg4_o),
        .reg5_i(reg5_i),
        .reg5_o(reg5_o),
        .reg6_i(reg6_i),
        .reg6_o(reg6_o),
        .reg7_i(reg7_i),
        .reg7_o(reg7_o),
        .reg8_i(reg8_i),
        .reg8_o(reg8_o),
        .reg9_o(reg9_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
