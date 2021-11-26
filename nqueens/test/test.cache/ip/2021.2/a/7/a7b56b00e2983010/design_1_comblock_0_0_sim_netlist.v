// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Nov 24 18:45:17 2021
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
    axil_wdata_0_sp_1,
    \axil_wdata[0]_0 ,
    \axil_wdata[0]_1 ,
    \axil_wdata[0]_2 ,
    \axil_wdata[0]_3 ,
    axil_rdata,
    axil_aclk,
    axil_arvalid,
    reg1_i,
    reg5_i,
    reg3_i,
    reg0_i,
    reg4_i,
    reg2_i,
    \axi_rdata_reg[0]_0 ,
    reg1_o,
    reg3_o,
    axil_aresetn,
    axil_bready,
    axil_wvalid,
    axil_awvalid,
    axil_rready,
    axil_wdata,
    reg0_o,
    reg2_o,
    reg4_o,
    axil_awaddr,
    axil_araddr);
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output axil_bvalid;
  output axil_rvalid;
  output [2:0]Q;
  output axil_wdata_0_sp_1;
  output \axil_wdata[0]_0 ;
  output \axil_wdata[0]_1 ;
  output \axil_wdata[0]_2 ;
  output \axil_wdata[0]_3 ;
  output [31:0]axil_rdata;
  input axil_aclk;
  input axil_arvalid;
  input [31:0]reg1_i;
  input [31:0]reg5_i;
  input [31:0]reg3_i;
  input [31:0]reg0_i;
  input [31:0]reg4_i;
  input [31:0]reg2_i;
  input \axi_rdata_reg[0]_0 ;
  input [0:0]reg1_o;
  input [0:0]reg3_o;
  input axil_aresetn;
  input axil_bready;
  input axil_wvalid;
  input axil_awvalid;
  input axil_rready;
  input [0:0]axil_wdata;
  input [0:0]reg0_o;
  input [0:0]reg2_o;
  input [0:0]reg4_o;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;

  wire [2:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
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
  wire [0:0]axil_wdata;
  wire \axil_wdata[0]_0 ;
  wire \axil_wdata[0]_1 ;
  wire \axil_wdata[0]_2 ;
  wire \axil_wdata[0]_3 ;
  wire axil_wdata_0_sn_1;
  wire axil_wready;
  wire axil_wvalid;
  wire p_0_in;
  wire [31:0]reg0_i;
  wire [0:0]reg0_o;
  wire [31:0]reg1_i;
  wire [0:0]reg1_o;
  wire [31:0]reg2_i;
  wire [0:0]reg2_o;
  wire [31:0]reg3_i;
  wire [0:0]reg3_o;
  wire [31:0]reg4_i;
  wire [0:0]reg4_o;
  wire [31:0]reg5_i;
  wire [7:2]reg_rd_adr;
  wire [31:0]reg_rd_dat;
  wire [7:2]reg_wr_adr;
  wire \regs_out[0][0]_i_2_n_0 ;
  wire \regs_out[0][0]_i_3_n_0 ;
  wire \regs_out[0][0]_i_4_n_0 ;
  wire \regs_out[1][0]_i_2_n_0 ;
  wire \regs_out[2][0]_i_2_n_0 ;
  wire \regs_out[3][0]_i_2_n_0 ;
  wire \regs_out[4][0]_i_2_n_0 ;

  assign axil_wdata_0_sp_1 = axil_wdata_0_sn_1;
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
  FDSE \axi_araddr_reg[2] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[0]),
        .Q(reg_rd_adr[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[1]),
        .Q(Q[0]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[2]),
        .Q(Q[1]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[5] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[3]),
        .Q(Q[2]),
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
    .INIT(64'h00000000EEE222E2)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(reg_rd_adr[6]),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(reg_rd_adr[2]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .I5(reg_rd_adr[7]),
        .O(reg_rd_dat[0]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \axi_rdata[0]_i_4 
       (.I0(Q[1]),
        .I1(reg1_o),
        .I2(Q[0]),
        .I3(reg3_o),
        .I4(Q[2]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[0]_i_5 
       (.I0(reg0_i[0]),
        .I1(Q[1]),
        .I2(reg4_i[0]),
        .I3(Q[0]),
        .I4(reg2_i[0]),
        .I5(Q[2]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[0]_i_6 
       (.I0(reg1_i[0]),
        .I1(Q[1]),
        .I2(reg5_i[0]),
        .I3(Q[0]),
        .I4(reg3_i[0]),
        .I5(Q[2]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[10]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[10]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[10]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[10]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[10]_i_2 
       (.I0(reg1_i[10]),
        .I1(Q[1]),
        .I2(reg5_i[10]),
        .I3(Q[0]),
        .I4(reg3_i[10]),
        .I5(Q[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[10]_i_3 
       (.I0(reg0_i[10]),
        .I1(Q[1]),
        .I2(reg4_i[10]),
        .I3(Q[0]),
        .I4(reg2_i[10]),
        .I5(Q[2]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[11]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[11]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[11]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[11]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[11]_i_2 
       (.I0(reg1_i[11]),
        .I1(Q[1]),
        .I2(reg5_i[11]),
        .I3(Q[0]),
        .I4(reg3_i[11]),
        .I5(Q[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[11]_i_3 
       (.I0(reg0_i[11]),
        .I1(Q[1]),
        .I2(reg4_i[11]),
        .I3(Q[0]),
        .I4(reg2_i[11]),
        .I5(Q[2]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[12]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[12]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[12]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[12]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[12]_i_2 
       (.I0(reg1_i[12]),
        .I1(Q[1]),
        .I2(reg5_i[12]),
        .I3(Q[0]),
        .I4(reg3_i[12]),
        .I5(Q[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[12]_i_3 
       (.I0(reg0_i[12]),
        .I1(Q[1]),
        .I2(reg4_i[12]),
        .I3(Q[0]),
        .I4(reg2_i[12]),
        .I5(Q[2]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[13]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[13]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[13]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[13]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[13]_i_2 
       (.I0(reg1_i[13]),
        .I1(Q[1]),
        .I2(reg5_i[13]),
        .I3(Q[0]),
        .I4(reg3_i[13]),
        .I5(Q[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[13]_i_3 
       (.I0(reg0_i[13]),
        .I1(Q[1]),
        .I2(reg4_i[13]),
        .I3(Q[0]),
        .I4(reg2_i[13]),
        .I5(Q[2]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[14]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[14]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[14]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[14]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[14]_i_2 
       (.I0(reg1_i[14]),
        .I1(Q[1]),
        .I2(reg5_i[14]),
        .I3(Q[0]),
        .I4(reg3_i[14]),
        .I5(Q[2]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[14]_i_3 
       (.I0(reg0_i[14]),
        .I1(Q[1]),
        .I2(reg4_i[14]),
        .I3(Q[0]),
        .I4(reg2_i[14]),
        .I5(Q[2]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[15]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[15]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[15]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[15]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[15]_i_2 
       (.I0(reg1_i[15]),
        .I1(Q[1]),
        .I2(reg5_i[15]),
        .I3(Q[0]),
        .I4(reg3_i[15]),
        .I5(Q[2]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[15]_i_3 
       (.I0(reg0_i[15]),
        .I1(Q[1]),
        .I2(reg4_i[15]),
        .I3(Q[0]),
        .I4(reg2_i[15]),
        .I5(Q[2]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[16]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[16]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[16]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[16]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[16]_i_2 
       (.I0(reg1_i[16]),
        .I1(Q[1]),
        .I2(reg5_i[16]),
        .I3(Q[0]),
        .I4(reg3_i[16]),
        .I5(Q[2]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[16]_i_3 
       (.I0(reg0_i[16]),
        .I1(Q[1]),
        .I2(reg4_i[16]),
        .I3(Q[0]),
        .I4(reg2_i[16]),
        .I5(Q[2]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[17]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[17]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[17]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[17]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[17]_i_2 
       (.I0(reg1_i[17]),
        .I1(Q[1]),
        .I2(reg5_i[17]),
        .I3(Q[0]),
        .I4(reg3_i[17]),
        .I5(Q[2]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[17]_i_3 
       (.I0(reg0_i[17]),
        .I1(Q[1]),
        .I2(reg4_i[17]),
        .I3(Q[0]),
        .I4(reg2_i[17]),
        .I5(Q[2]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[18]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[18]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[18]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[18]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[18]_i_2 
       (.I0(reg1_i[18]),
        .I1(Q[1]),
        .I2(reg5_i[18]),
        .I3(Q[0]),
        .I4(reg3_i[18]),
        .I5(Q[2]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[18]_i_3 
       (.I0(reg0_i[18]),
        .I1(Q[1]),
        .I2(reg4_i[18]),
        .I3(Q[0]),
        .I4(reg2_i[18]),
        .I5(Q[2]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[19]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[19]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[19]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[19]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[19]_i_2 
       (.I0(reg1_i[19]),
        .I1(Q[1]),
        .I2(reg5_i[19]),
        .I3(Q[0]),
        .I4(reg3_i[19]),
        .I5(Q[2]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[19]_i_3 
       (.I0(reg0_i[19]),
        .I1(Q[1]),
        .I2(reg4_i[19]),
        .I3(Q[0]),
        .I4(reg2_i[19]),
        .I5(Q[2]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[1]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[1]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[1]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[1]_i_2 
       (.I0(reg1_i[1]),
        .I1(Q[1]),
        .I2(reg5_i[1]),
        .I3(Q[0]),
        .I4(reg3_i[1]),
        .I5(Q[2]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[1]_i_3 
       (.I0(reg0_i[1]),
        .I1(Q[1]),
        .I2(reg4_i[1]),
        .I3(Q[0]),
        .I4(reg2_i[1]),
        .I5(Q[2]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[20]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[20]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[20]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[20]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[20]_i_2 
       (.I0(reg1_i[20]),
        .I1(Q[1]),
        .I2(reg5_i[20]),
        .I3(Q[0]),
        .I4(reg3_i[20]),
        .I5(Q[2]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[20]_i_3 
       (.I0(reg0_i[20]),
        .I1(Q[1]),
        .I2(reg4_i[20]),
        .I3(Q[0]),
        .I4(reg2_i[20]),
        .I5(Q[2]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[21]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[21]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[21]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[21]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[21]_i_2 
       (.I0(reg1_i[21]),
        .I1(Q[1]),
        .I2(reg5_i[21]),
        .I3(Q[0]),
        .I4(reg3_i[21]),
        .I5(Q[2]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[21]_i_3 
       (.I0(reg0_i[21]),
        .I1(Q[1]),
        .I2(reg4_i[21]),
        .I3(Q[0]),
        .I4(reg2_i[21]),
        .I5(Q[2]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[22]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[22]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[22]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[22]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[22]_i_2 
       (.I0(reg1_i[22]),
        .I1(Q[1]),
        .I2(reg5_i[22]),
        .I3(Q[0]),
        .I4(reg3_i[22]),
        .I5(Q[2]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[22]_i_3 
       (.I0(reg0_i[22]),
        .I1(Q[1]),
        .I2(reg4_i[22]),
        .I3(Q[0]),
        .I4(reg2_i[22]),
        .I5(Q[2]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[23]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[23]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[23]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[23]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[23]_i_2 
       (.I0(reg1_i[23]),
        .I1(Q[1]),
        .I2(reg5_i[23]),
        .I3(Q[0]),
        .I4(reg3_i[23]),
        .I5(Q[2]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[23]_i_3 
       (.I0(reg0_i[23]),
        .I1(Q[1]),
        .I2(reg4_i[23]),
        .I3(Q[0]),
        .I4(reg2_i[23]),
        .I5(Q[2]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[24]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[24]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[24]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[24]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[24]_i_2 
       (.I0(reg1_i[24]),
        .I1(Q[1]),
        .I2(reg5_i[24]),
        .I3(Q[0]),
        .I4(reg3_i[24]),
        .I5(Q[2]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[24]_i_3 
       (.I0(reg0_i[24]),
        .I1(Q[1]),
        .I2(reg4_i[24]),
        .I3(Q[0]),
        .I4(reg2_i[24]),
        .I5(Q[2]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[25]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[25]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[25]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[25]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[25]_i_2 
       (.I0(reg1_i[25]),
        .I1(Q[1]),
        .I2(reg5_i[25]),
        .I3(Q[0]),
        .I4(reg3_i[25]),
        .I5(Q[2]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[25]_i_3 
       (.I0(reg0_i[25]),
        .I1(Q[1]),
        .I2(reg4_i[25]),
        .I3(Q[0]),
        .I4(reg2_i[25]),
        .I5(Q[2]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[26]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[26]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[26]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[26]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[26]_i_2 
       (.I0(reg1_i[26]),
        .I1(Q[1]),
        .I2(reg5_i[26]),
        .I3(Q[0]),
        .I4(reg3_i[26]),
        .I5(Q[2]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[26]_i_3 
       (.I0(reg0_i[26]),
        .I1(Q[1]),
        .I2(reg4_i[26]),
        .I3(Q[0]),
        .I4(reg2_i[26]),
        .I5(Q[2]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[27]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[27]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[27]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[27]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[27]_i_2 
       (.I0(reg1_i[27]),
        .I1(Q[1]),
        .I2(reg5_i[27]),
        .I3(Q[0]),
        .I4(reg3_i[27]),
        .I5(Q[2]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[27]_i_3 
       (.I0(reg0_i[27]),
        .I1(Q[1]),
        .I2(reg4_i[27]),
        .I3(Q[0]),
        .I4(reg2_i[27]),
        .I5(Q[2]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[28]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[28]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[28]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[28]_i_2 
       (.I0(reg1_i[28]),
        .I1(Q[1]),
        .I2(reg5_i[28]),
        .I3(Q[0]),
        .I4(reg3_i[28]),
        .I5(Q[2]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[28]_i_3 
       (.I0(reg0_i[28]),
        .I1(Q[1]),
        .I2(reg4_i[28]),
        .I3(Q[0]),
        .I4(reg2_i[28]),
        .I5(Q[2]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[29]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[29]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[29]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[29]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[29]_i_2 
       (.I0(reg1_i[29]),
        .I1(Q[1]),
        .I2(reg5_i[29]),
        .I3(Q[0]),
        .I4(reg3_i[29]),
        .I5(Q[2]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[29]_i_3 
       (.I0(reg0_i[29]),
        .I1(Q[1]),
        .I2(reg4_i[29]),
        .I3(Q[0]),
        .I4(reg2_i[29]),
        .I5(Q[2]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[2]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[2]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[2]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[2]_i_2 
       (.I0(reg1_i[2]),
        .I1(Q[1]),
        .I2(reg5_i[2]),
        .I3(Q[0]),
        .I4(reg3_i[2]),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[2]_i_3 
       (.I0(reg0_i[2]),
        .I1(Q[1]),
        .I2(reg4_i[2]),
        .I3(Q[0]),
        .I4(reg2_i[2]),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[30]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[30]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[30]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[30]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[30]_i_2 
       (.I0(reg1_i[30]),
        .I1(Q[1]),
        .I2(reg5_i[30]),
        .I3(Q[0]),
        .I4(reg3_i[30]),
        .I5(Q[2]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[30]_i_3 
       (.I0(reg0_i[30]),
        .I1(Q[1]),
        .I2(reg4_i[30]),
        .I3(Q[0]),
        .I4(reg2_i[30]),
        .I5(Q[2]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \axi_rdata[31]_i_1 
       (.I0(axil_rvalid),
        .I1(axil_arvalid),
        .I2(axil_arready),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[31]_i_2 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[31]_i_3_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[31]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[31]_i_3 
       (.I0(reg1_i[31]),
        .I1(Q[1]),
        .I2(reg5_i[31]),
        .I3(Q[0]),
        .I4(reg3_i[31]),
        .I5(Q[2]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[31]_i_4 
       (.I0(reg0_i[31]),
        .I1(Q[1]),
        .I2(reg4_i[31]),
        .I3(Q[0]),
        .I4(reg2_i[31]),
        .I5(Q[2]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[3]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[3]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[3]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[3]_i_2 
       (.I0(reg1_i[3]),
        .I1(Q[1]),
        .I2(reg5_i[3]),
        .I3(Q[0]),
        .I4(reg3_i[3]),
        .I5(Q[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[3]_i_3 
       (.I0(reg0_i[3]),
        .I1(Q[1]),
        .I2(reg4_i[3]),
        .I3(Q[0]),
        .I4(reg2_i[3]),
        .I5(Q[2]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[4]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[4]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[4]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[4]_i_2 
       (.I0(reg1_i[4]),
        .I1(Q[1]),
        .I2(reg5_i[4]),
        .I3(Q[0]),
        .I4(reg3_i[4]),
        .I5(Q[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[4]_i_3 
       (.I0(reg0_i[4]),
        .I1(Q[1]),
        .I2(reg4_i[4]),
        .I3(Q[0]),
        .I4(reg2_i[4]),
        .I5(Q[2]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[5]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[5]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[5]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[5]_i_2 
       (.I0(reg1_i[5]),
        .I1(Q[1]),
        .I2(reg5_i[5]),
        .I3(Q[0]),
        .I4(reg3_i[5]),
        .I5(Q[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[5]_i_3 
       (.I0(reg0_i[5]),
        .I1(Q[1]),
        .I2(reg4_i[5]),
        .I3(Q[0]),
        .I4(reg2_i[5]),
        .I5(Q[2]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[6]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[6]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[6]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[6]_i_2 
       (.I0(reg1_i[6]),
        .I1(Q[1]),
        .I2(reg5_i[6]),
        .I3(Q[0]),
        .I4(reg3_i[6]),
        .I5(Q[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[6]_i_3 
       (.I0(reg0_i[6]),
        .I1(Q[1]),
        .I2(reg4_i[6]),
        .I3(Q[0]),
        .I4(reg2_i[6]),
        .I5(Q[2]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[7]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[7]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[7]_i_2 
       (.I0(reg1_i[7]),
        .I1(Q[1]),
        .I2(reg5_i[7]),
        .I3(Q[0]),
        .I4(reg3_i[7]),
        .I5(Q[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[7]_i_3 
       (.I0(reg0_i[7]),
        .I1(Q[1]),
        .I2(reg4_i[7]),
        .I3(Q[0]),
        .I4(reg2_i[7]),
        .I5(Q[2]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[8]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[8]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[8]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[8]_i_2 
       (.I0(reg1_i[8]),
        .I1(Q[1]),
        .I2(reg5_i[8]),
        .I3(Q[0]),
        .I4(reg3_i[8]),
        .I5(Q[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[8]_i_3 
       (.I0(reg0_i[8]),
        .I1(Q[1]),
        .I2(reg4_i[8]),
        .I3(Q[0]),
        .I4(reg2_i[8]),
        .I5(Q[2]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[9]_i_1 
       (.I0(reg_rd_adr[6]),
        .I1(\axi_rdata[9]_i_2_n_0 ),
        .I2(reg_rd_adr[2]),
        .I3(\axi_rdata[9]_i_3_n_0 ),
        .I4(reg_rd_adr[7]),
        .O(reg_rd_dat[9]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[9]_i_2 
       (.I0(reg1_i[9]),
        .I1(Q[1]),
        .I2(reg5_i[9]),
        .I3(Q[0]),
        .I4(reg3_i[9]),
        .I5(Q[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[9]_i_3 
       (.I0(reg0_i[9]),
        .I1(Q[1]),
        .I2(reg4_i[9]),
        .I3(Q[0]),
        .I4(reg2_i[9]),
        .I5(Q[2]),
        .O(\axi_rdata[9]_i_3_n_0 ));
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
        .S(reg_rd_adr[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[10]),
        .Q(axil_rdata[10]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[11]),
        .Q(axil_rdata[11]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[12]),
        .Q(axil_rdata[12]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[13]),
        .Q(axil_rdata[13]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[14]),
        .Q(axil_rdata[14]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[15]),
        .Q(axil_rdata[15]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[16]),
        .Q(axil_rdata[16]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[17]),
        .Q(axil_rdata[17]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[18]),
        .Q(axil_rdata[18]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[19]),
        .Q(axil_rdata[19]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[1]),
        .Q(axil_rdata[1]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[20]),
        .Q(axil_rdata[20]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[21]),
        .Q(axil_rdata[21]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[22]),
        .Q(axil_rdata[22]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[23]),
        .Q(axil_rdata[23]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[24]),
        .Q(axil_rdata[24]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[25]),
        .Q(axil_rdata[25]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[26]),
        .Q(axil_rdata[26]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[27]),
        .Q(axil_rdata[27]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[28]),
        .Q(axil_rdata[28]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[29]),
        .Q(axil_rdata[29]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[2]),
        .Q(axil_rdata[2]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[30]),
        .Q(axil_rdata[30]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[31]),
        .Q(axil_rdata[31]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[3]),
        .Q(axil_rdata[3]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[4]),
        .Q(axil_rdata[4]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[5]),
        .Q(axil_rdata[5]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[6]),
        .Q(axil_rdata[6]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[7]),
        .Q(axil_rdata[7]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[8]),
        .Q(axil_rdata[8]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[9]),
        .Q(axil_rdata[9]),
        .R(\axi_rdata[31]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \regs_out[0][0]_i_1 
       (.I0(axil_wdata),
        .I1(\regs_out[0][0]_i_2_n_0 ),
        .I2(reg_wr_adr[4]),
        .I3(\regs_out[0][0]_i_3_n_0 ),
        .I4(\regs_out[0][0]_i_4_n_0 ),
        .I5(reg0_o),
        .O(axil_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \regs_out[0][0]_i_2 
       (.I0(reg_wr_adr[2]),
        .I1(reg_wr_adr[3]),
        .O(\regs_out[0][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \regs_out[0][0]_i_3 
       (.I0(axil_awvalid),
        .I1(axil_wvalid),
        .I2(axil_awready),
        .I3(axil_wready),
        .I4(reg_wr_adr[7]),
        .O(\regs_out[0][0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \regs_out[0][0]_i_4 
       (.I0(reg_wr_adr[6]),
        .I1(reg_wr_adr[5]),
        .O(\regs_out[0][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \regs_out[1][0]_i_1 
       (.I0(axil_wdata),
        .I1(\regs_out[1][0]_i_2_n_0 ),
        .I2(reg_wr_adr[4]),
        .I3(\regs_out[0][0]_i_3_n_0 ),
        .I4(\regs_out[0][0]_i_4_n_0 ),
        .I5(reg1_o),
        .O(\axil_wdata[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \regs_out[1][0]_i_2 
       (.I0(reg_wr_adr[2]),
        .I1(reg_wr_adr[3]),
        .O(\regs_out[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \regs_out[2][0]_i_1 
       (.I0(axil_wdata),
        .I1(\regs_out[2][0]_i_2_n_0 ),
        .I2(reg_wr_adr[4]),
        .I3(\regs_out[0][0]_i_3_n_0 ),
        .I4(\regs_out[0][0]_i_4_n_0 ),
        .I5(reg2_o),
        .O(\axil_wdata[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \regs_out[2][0]_i_2 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[2]),
        .O(\regs_out[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \regs_out[3][0]_i_1 
       (.I0(axil_wdata),
        .I1(\regs_out[3][0]_i_2_n_0 ),
        .I2(reg_wr_adr[4]),
        .I3(\regs_out[0][0]_i_3_n_0 ),
        .I4(\regs_out[0][0]_i_4_n_0 ),
        .I5(reg3_o),
        .O(\axil_wdata[0]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    \regs_out[3][0]_i_2 
       (.I0(reg_wr_adr[2]),
        .I1(reg_wr_adr[3]),
        .O(\regs_out[3][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \regs_out[4][0]_i_1 
       (.I0(axil_wdata),
        .I1(\regs_out[4][0]_i_2_n_0 ),
        .I2(reg_wr_adr[6]),
        .I3(reg_wr_adr[5]),
        .I4(\regs_out[0][0]_i_3_n_0 ),
        .I5(reg4_o),
        .O(\axil_wdata[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \regs_out[4][0]_i_2 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[4]),
        .I2(reg_wr_adr[2]),
        .O(\regs_out[4][0]_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock
   (reg0_o,
    reg1_o,
    reg2_o,
    reg3_o,
    reg4_o,
    \regs_out_reg[0][0]_0 ,
    \regs_out_reg[0][0]_1 ,
    axil_aclk,
    \regs_out_reg[1][0]_0 ,
    \regs_out_reg[2][0]_0 ,
    \regs_out_reg[3][0]_0 ,
    \regs_out_reg[4][0]_0 ,
    Q);
  output [0:0]reg0_o;
  output [0:0]reg1_o;
  output [0:0]reg2_o;
  output [0:0]reg3_o;
  output [0:0]reg4_o;
  output \regs_out_reg[0][0]_0 ;
  input \regs_out_reg[0][0]_1 ;
  input axil_aclk;
  input \regs_out_reg[1][0]_0 ;
  input \regs_out_reg[2][0]_0 ;
  input \regs_out_reg[3][0]_0 ;
  input \regs_out_reg[4][0]_0 ;
  input [2:0]Q;

  wire [2:0]Q;
  wire axil_aclk;
  wire [0:0]reg0_o;
  wire [0:0]reg1_o;
  wire [0:0]reg2_o;
  wire [0:0]reg3_o;
  wire [0:0]reg4_o;
  wire \regs_out_reg[0][0]_0 ;
  wire \regs_out_reg[0][0]_1 ;
  wire \regs_out_reg[1][0]_0 ;
  wire \regs_out_reg[2][0]_0 ;
  wire \regs_out_reg[3][0]_0 ;
  wire \regs_out_reg[4][0]_0 ;

  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[0]_i_3 
       (.I0(reg0_o),
        .I1(Q[1]),
        .I2(reg4_o),
        .I3(Q[0]),
        .I4(reg2_o),
        .I5(Q[2]),
        .O(\regs_out_reg[0][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\regs_out_reg[0][0]_1 ),
        .Q(reg0_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\regs_out_reg[1][0]_0 ),
        .Q(reg1_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\regs_out_reg[2][0]_0 ),
        .Q(reg2_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\regs_out_reg[3][0]_0 ),
        .Q(reg3_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\regs_out_reg[4][0]_0 ),
        .Q(reg4_o),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock
   (axil_awready,
    axil_wready,
    axil_arready,
    axil_rdata,
    axil_rvalid,
    reg1_o,
    reg3_o,
    reg0_o,
    reg4_o,
    reg2_o,
    axil_bvalid,
    axil_aclk,
    axil_awaddr,
    axil_araddr,
    axil_arvalid,
    axil_awvalid,
    axil_wvalid,
    reg1_i,
    reg5_i,
    reg3_i,
    reg0_i,
    reg4_i,
    reg2_i,
    axil_aresetn,
    axil_bready,
    axil_rready,
    axil_wdata);
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output [31:0]axil_rdata;
  output axil_rvalid;
  output [0:0]reg1_o;
  output [0:0]reg3_o;
  output [0:0]reg0_o;
  output [0:0]reg4_o;
  output [0:0]reg2_o;
  output axil_bvalid;
  input axil_aclk;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;
  input axil_arvalid;
  input axil_awvalid;
  input axil_wvalid;
  input [31:0]reg1_i;
  input [31:0]reg5_i;
  input [31:0]reg3_i;
  input [31:0]reg0_i;
  input [31:0]reg4_i;
  input [31:0]reg2_i;
  input axil_aresetn;
  input axil_bready;
  input axil_rready;
  input [0:0]axil_wdata;

  wire AXIL_inst_n_10;
  wire AXIL_inst_n_11;
  wire AXIL_inst_n_12;
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
  wire [0:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire comblock_i_n_5;
  wire [31:0]reg0_i;
  wire [0:0]reg0_o;
  wire [31:0]reg1_i;
  wire [0:0]reg1_o;
  wire [31:0]reg2_i;
  wire [0:0]reg2_o;
  wire [31:0]reg3_i;
  wire [0:0]reg3_o;
  wire [31:0]reg4_i;
  wire [0:0]reg4_o;
  wire [31:0]reg5_i;
  wire [5:3]reg_rd_adr;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL AXIL_inst
       (.Q(reg_rd_adr),
        .\axi_rdata_reg[0]_0 (comblock_i_n_5),
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
        .axil_wdata(axil_wdata),
        .\axil_wdata[0]_0 (AXIL_inst_n_9),
        .\axil_wdata[0]_1 (AXIL_inst_n_10),
        .\axil_wdata[0]_2 (AXIL_inst_n_11),
        .\axil_wdata[0]_3 (AXIL_inst_n_12),
        .axil_wdata_0_sp_1(AXIL_inst_n_8),
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
        .reg5_i(reg5_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock comblock_i
       (.Q(reg_rd_adr),
        .axil_aclk(axil_aclk),
        .reg0_o(reg0_o),
        .reg1_o(reg1_o),
        .reg2_o(reg2_o),
        .reg3_o(reg3_o),
        .reg4_o(reg4_o),
        .\regs_out_reg[0][0]_0 (comblock_i_n_5),
        .\regs_out_reg[0][0]_1 (AXIL_inst_n_8),
        .\regs_out_reg[1][0]_0 (AXIL_inst_n_9),
        .\regs_out_reg[2][0]_0 (AXIL_inst_n_10),
        .\regs_out_reg[3][0]_0 (AXIL_inst_n_11),
        .\regs_out_reg[4][0]_0 (AXIL_inst_n_12));
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
    reg0_o,
    reg1_o,
    reg2_o,
    reg3_o,
    reg4_o,
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
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg0_o" *) output [0:0]reg0_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg1_o" *) output [0:0]reg1_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg2_o" *) output [0:0]reg2_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg3_o" *) output [0:0]reg3_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg4_o" *) output [0:0]reg4_o;
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
  wire [0:0]reg0_o;
  wire [31:0]reg1_i;
  wire [0:0]reg1_o;
  wire [31:0]reg2_i;
  wire [0:0]reg2_o;
  wire [31:0]reg3_i;
  wire [0:0]reg3_o;
  wire [31:0]reg4_i;
  wire [0:0]reg4_o;
  wire [31:0]reg5_i;

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
        .axil_wdata(axil_wdata[0]),
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
        .reg5_i(reg5_i));
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
