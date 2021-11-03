// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov  3 17:56:45 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ comblock_comblock_0_0_sim_netlist.v
// Design      : comblock_comblock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIF
   (axi_rvalid_reg_0,
    axi_arready_reg_0,
    axi_wready_reg_0,
    axi_awready_reg_0,
    axif_bvalid,
    axif_rlast,
    axif_rdata,
    ADDRARDADDR,
    addr2_i,
    WEA,
    axi_wready_reg_1,
    axi_wready_reg_2,
    axi_wready_reg_3,
    axi_wready_reg_4,
    axi_wready_reg_5,
    axi_wready_reg_6,
    axi_wready_reg_7,
    axif_aclk,
    axif_arvalid,
    axif_aresetn,
    axif_awvalid,
    data2_o,
    axif_wvalid,
    axif_wlast,
    axif_bready,
    axif_rready,
    axif_arlen,
    axif_awburst,
    axif_awlen,
    axif_arburst,
    axif_araddr,
    axif_awaddr);
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axif_bvalid;
  output axif_rlast;
  output [15:0]axif_rdata;
  output [15:0]ADDRARDADDR;
  output [15:0]addr2_i;
  output [1:0]WEA;
  output [1:0]axi_wready_reg_1;
  output [1:0]axi_wready_reg_2;
  output [0:0]axi_wready_reg_3;
  output [1:0]axi_wready_reg_4;
  output [1:0]axi_wready_reg_5;
  output [1:0]axi_wready_reg_6;
  output [0:0]axi_wready_reg_7;
  input axif_aclk;
  input axif_arvalid;
  input axif_aresetn;
  input axif_awvalid;
  input [15:0]data2_o;
  input axif_wvalid;
  input axif_wlast;
  input axif_bready;
  input axif_rready;
  input [7:0]axif_arlen;
  input [1:0]axif_awburst;
  input [7:0]axif_awlen;
  input [1:0]axif_arburst;
  input [15:0]axif_araddr;
  input [15:0]axif_awaddr;

  wire [15:0]ADDRARDADDR;
  wire [17:2]L;
  wire [1:0]WEA;
  wire [15:0]addr2_i;
  wire axi_araddr1;
  wire axi_araddr3;
  wire axi_araddr3_carry_i_1_n_0;
  wire axi_araddr3_carry_i_2_n_0;
  wire axi_araddr3_carry_i_3_n_0;
  wire axi_araddr3_carry_i_4_n_0;
  wire axi_araddr3_carry_i_5_n_0;
  wire axi_araddr3_carry_i_6_n_0;
  wire axi_araddr3_carry_i_7_n_0;
  wire axi_araddr3_carry_i_8_n_0;
  wire axi_araddr3_carry_n_1;
  wire axi_araddr3_carry_n_2;
  wire axi_araddr3_carry_n_3;
  wire \axi_araddr[10]_i_1_n_0 ;
  wire \axi_araddr[11]_i_1_n_0 ;
  wire \axi_araddr[12]_i_1_n_0 ;
  wire \axi_araddr[13]_i_1_n_0 ;
  wire \axi_araddr[14]_i_1_n_0 ;
  wire \axi_araddr[15]_i_1_n_0 ;
  wire \axi_araddr[16]_i_1_n_0 ;
  wire \axi_araddr[17]_i_1_n_0 ;
  wire \axi_araddr[17]_i_2_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[8]_i_1_n_0 ;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire \axi_araddr_reg_n_0_[10] ;
  wire \axi_araddr_reg_n_0_[11] ;
  wire \axi_araddr_reg_n_0_[12] ;
  wire \axi_araddr_reg_n_0_[13] ;
  wire \axi_araddr_reg_n_0_[14] ;
  wire \axi_araddr_reg_n_0_[15] ;
  wire \axi_araddr_reg_n_0_[16] ;
  wire \axi_araddr_reg_n_0_[17] ;
  wire \axi_araddr_reg_n_0_[2] ;
  wire \axi_araddr_reg_n_0_[3] ;
  wire \axi_araddr_reg_n_0_[4] ;
  wire \axi_araddr_reg_n_0_[5] ;
  wire \axi_araddr_reg_n_0_[6] ;
  wire \axi_araddr_reg_n_0_[7] ;
  wire \axi_araddr_reg_n_0_[8] ;
  wire \axi_araddr_reg_n_0_[9] ;
  wire [1:0]axi_arburst;
  wire [7:0]axi_arlen;
  wire \axi_arlen[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire axi_arready1__0;
  wire axi_arready2__14;
  wire axi_arready_i_1__0_n_0;
  wire axi_arready_i_4_n_0;
  wire axi_arready_i_5_n_0;
  wire axi_arready_reg_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1_n_0;
  wire axi_awaddr1;
  wire axi_awaddr3;
  wire axi_awaddr3_carry_i_1_n_0;
  wire axi_awaddr3_carry_i_2_n_0;
  wire axi_awaddr3_carry_i_3_n_0;
  wire axi_awaddr3_carry_i_4_n_0;
  wire axi_awaddr3_carry_i_5_n_0;
  wire axi_awaddr3_carry_i_6_n_0;
  wire axi_awaddr3_carry_i_7_n_0;
  wire axi_awaddr3_carry_i_8_n_0;
  wire axi_awaddr3_carry_n_1;
  wire axi_awaddr3_carry_n_2;
  wire axi_awaddr3_carry_n_3;
  wire \axi_awaddr[17]_i_1_n_0 ;
  wire [1:0]axi_awburst;
  wire [7:0]axi_awlen;
  wire \axi_awlen_cntr[0]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_awlen_cntr_reg;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2__0_n_0;
  wire axi_awready_reg_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1__0_n_0;
  wire axi_rlast0;
  wire axi_rlast_i_1_n_0;
  wire axi_rvalid_i_1__0_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1__0_n_0;
  wire axi_wready_reg_0;
  wire [1:0]axi_wready_reg_1;
  wire [1:0]axi_wready_reg_2;
  wire [0:0]axi_wready_reg_3;
  wire [1:0]axi_wready_reg_4;
  wire [1:0]axi_wready_reg_5;
  wire [1:0]axi_wready_reg_6;
  wire [0:0]axi_wready_reg_7;
  wire axif_aclk;
  wire [15:0]axif_araddr;
  wire [1:0]axif_arburst;
  wire axif_aresetn;
  wire [7:0]axif_arlen;
  wire axif_arvalid;
  wire [15:0]axif_awaddr;
  wire [1:0]axif_awburst;
  wire [7:0]axif_awlen;
  wire axif_awvalid;
  wire axif_bready;
  wire axif_bvalid;
  wire [15:0]axif_rdata;
  wire axif_rlast;
  wire axif_rready;
  wire axif_wlast;
  wire axif_wvalid;
  wire [15:0]data2_o;
  wire [17:2]p_2_in;
  wire p_9_in;
  wire [15:1]plusOp;
  wire [7:0]plusOp__0;
  wire [7:1]plusOp__1;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__0_n_4 ;
  wire \plusOp_inferred__1/i__carry__0_n_5 ;
  wire \plusOp_inferred__1/i__carry__0_n_6 ;
  wire \plusOp_inferred__1/i__carry__0_n_7 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_4 ;
  wire \plusOp_inferred__1/i__carry__1_n_5 ;
  wire \plusOp_inferred__1/i__carry__1_n_6 ;
  wire \plusOp_inferred__1/i__carry__1_n_7 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_5 ;
  wire \plusOp_inferred__1/i__carry__2_n_6 ;
  wire \plusOp_inferred__1/i__carry__2_n_7 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_4 ;
  wire \plusOp_inferred__1/i__carry_n_5 ;
  wire \plusOp_inferred__1/i__carry_n_6 ;
  wire \plusOp_inferred__1/i__carry_n_7 ;
  wire \plusOp_inferred__2/i__carry__0_n_0 ;
  wire \plusOp_inferred__2/i__carry__0_n_1 ;
  wire \plusOp_inferred__2/i__carry__0_n_2 ;
  wire \plusOp_inferred__2/i__carry__0_n_3 ;
  wire \plusOp_inferred__2/i__carry__1_n_0 ;
  wire \plusOp_inferred__2/i__carry__1_n_1 ;
  wire \plusOp_inferred__2/i__carry__1_n_2 ;
  wire \plusOp_inferred__2/i__carry__1_n_3 ;
  wire \plusOp_inferred__2/i__carry__2_n_2 ;
  wire \plusOp_inferred__2/i__carry__2_n_3 ;
  wire \plusOp_inferred__2/i__carry_n_0 ;
  wire \plusOp_inferred__2/i__carry_n_1 ;
  wire \plusOp_inferred__2/i__carry_n_2 ;
  wire \plusOp_inferred__2/i__carry_n_3 ;
  wire [3:0]NLW_axi_araddr3_carry_O_UNCONNECTED;
  wire [3:0]NLW_axi_awaddr3_carry_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__2/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__2/i__carry__2_O_UNCONNECTED ;

  CARRY4 axi_araddr3_carry
       (.CI(1'b0),
        .CO({axi_araddr3,axi_araddr3_carry_n_1,axi_araddr3_carry_n_2,axi_araddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_araddr3_carry_i_1_n_0,axi_araddr3_carry_i_2_n_0,axi_araddr3_carry_i_3_n_0,axi_araddr3_carry_i_4_n_0}),
        .O(NLW_axi_araddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_araddr3_carry_i_5_n_0,axi_araddr3_carry_i_6_n_0,axi_araddr3_carry_i_7_n_0,axi_araddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_1
       (.I0(axi_arlen[6]),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen_cntr_reg[7]),
        .I3(axi_arlen[7]),
        .O(axi_araddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_2
       (.I0(axi_arlen[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen_cntr_reg[5]),
        .I3(axi_arlen[5]),
        .O(axi_araddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_3
       (.I0(axi_arlen[2]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen_cntr_reg[3]),
        .I3(axi_arlen[3]),
        .O(axi_araddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_4
       (.I0(axi_arlen[0]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen[1]),
        .O(axi_araddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_5
       (.I0(axi_arlen[6]),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen[7]),
        .I3(axi_arlen_cntr_reg[7]),
        .O(axi_araddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_6
       (.I0(axi_arlen[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen[5]),
        .I3(axi_arlen_cntr_reg[5]),
        .O(axi_araddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_7
       (.I0(axi_arlen[2]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen[3]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(axi_araddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_8
       (.I0(axi_arlen[0]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen[1]),
        .I3(axi_arlen_cntr_reg[1]),
        .O(axi_araddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[10]_i_1 
       (.I0(axif_araddr[8]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_4 ),
        .O(\axi_araddr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[11]_i_1 
       (.I0(axif_araddr[9]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_7 ),
        .O(\axi_araddr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[12]_i_1 
       (.I0(axif_araddr[10]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_6 ),
        .O(\axi_araddr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[13]_i_1 
       (.I0(axif_araddr[11]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_5 ),
        .O(\axi_araddr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[14]_i_1 
       (.I0(axif_araddr[12]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_4 ),
        .O(\axi_araddr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[15]_i_1 
       (.I0(axif_araddr[13]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__2_n_7 ),
        .O(\axi_araddr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[16]_i_1 
       (.I0(axif_araddr[14]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__2_n_6 ),
        .O(\axi_araddr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \axi_araddr[17]_i_1 
       (.I0(\axi_arlen[7]_i_1_n_0 ),
        .I1(axi_arburst[0]),
        .I2(axi_arburst[1]),
        .I3(axif_rready),
        .I4(axi_rvalid_reg_0),
        .I5(axi_araddr3),
        .O(\axi_araddr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[17]_i_2 
       (.I0(axif_araddr[15]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__2_n_5 ),
        .O(\axi_araddr[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0020FFEF)) 
    \axi_araddr[2]_i_1 
       (.I0(axif_araddr[0]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\axi_araddr_reg_n_0_[2] ),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[3]_i_1 
       (.I0(axif_araddr[1]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_7 ),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[4]_i_1 
       (.I0(axif_araddr[2]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_6 ),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[5]_i_1 
       (.I0(axif_araddr[3]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_5 ),
        .O(\axi_araddr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[6]_i_1 
       (.I0(axif_araddr[4]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_4 ),
        .O(\axi_araddr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[7]_i_1 
       (.I0(axif_araddr[5]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_7 ),
        .O(\axi_araddr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[8]_i_1 
       (.I0(axif_araddr[6]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_6 ),
        .O(\axi_araddr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[9]_i_1 
       (.I0(axif_araddr[7]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_5 ),
        .O(\axi_araddr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[10] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[10]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[11] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[11]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[12] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[12]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[13] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[13]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[14] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[14]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[15] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[15]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[16] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[16]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[17] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[17]_i_2_n_0 ),
        .Q(\axi_araddr_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[3] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[4] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[5] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[6] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[7] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[7]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[8] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[8]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[9] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[9]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arburst_reg[0] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arburst[0]),
        .Q(axi_arburst[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arburst_reg[1] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arburst[1]),
        .Q(axi_arburst[1]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_arlen[7]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(axif_arvalid),
        .I2(axi_arv_arr_flag),
        .O(\axi_arlen[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[2]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[3]),
        .I4(axi_arlen_cntr_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(axi_arlen_cntr_reg[4]),
        .I5(axi_arlen_cntr_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I1(axi_arlen_cntr_reg[6]),
        .O(plusOp__0[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(axi_arv_arr_flag),
        .I1(axif_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axif_aresetn),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(axif_rready),
        .I1(axi_rvalid_reg_0),
        .I2(axi_araddr3),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen_cntr_reg[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_arlen_cntr[7]_i_4 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(\axi_arlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_arlen_cntr_reg[0] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[0]),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[1] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[2] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[3] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[4] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[5] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[6] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[7] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_reg[0] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[0]),
        .Q(axi_arlen[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[1] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[1]),
        .Q(axi_arlen[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[2] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[2]),
        .Q(axi_arlen[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[3] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[3]),
        .Q(axi_arlen[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[4] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[4]),
        .Q(axi_arlen[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[5] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[5]),
        .Q(axi_arlen[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[6] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[6]),
        .Q(axi_arlen[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[7] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[7]),
        .Q(axi_arlen[7]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCDC0010)) 
    axi_arready_i_1__0
       (.I0(axi_awv_awr_flag),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(axi_arready1__0),
        .O(axi_arready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axi_arready_i_2
       (.I0(axif_rready),
        .I1(axi_rvalid_reg_0),
        .I2(axi_arready2__14),
        .O(axi_arready1__0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    axi_arready_i_3
       (.I0(axi_arlen[7]),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(axi_arlen[6]),
        .I3(axi_arlen_cntr_reg[6]),
        .I4(axi_arready_i_4_n_0),
        .I5(axi_arready_i_5_n_0),
        .O(axi_arready2__14));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arready_i_4
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen[3]),
        .I2(axi_arlen[5]),
        .I3(axi_arlen_cntr_reg[5]),
        .I4(axi_arlen[4]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(axi_arready_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arready_i_5
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen[0]),
        .I2(axi_arlen[2]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(axi_arlen[1]),
        .I5(axi_arlen_cntr_reg[1]),
        .O(axi_arready_i_5_n_0));
  FDRE axi_arready_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1__0_n_0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0010FF10)) 
    axi_arv_arr_flag_i_1
       (.I0(axi_awv_awr_flag),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(axi_arready1__0),
        .O(axi_arv_arr_flag_i_1_n_0));
  FDRE axi_arv_arr_flag_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(axi_arv_arr_flag),
        .R(axi_awready_i_1_n_0));
  CARRY4 axi_awaddr3_carry
       (.CI(1'b0),
        .CO({axi_awaddr3,axi_awaddr3_carry_n_1,axi_awaddr3_carry_n_2,axi_awaddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_awaddr3_carry_i_1_n_0,axi_awaddr3_carry_i_2_n_0,axi_awaddr3_carry_i_3_n_0,axi_awaddr3_carry_i_4_n_0}),
        .O(NLW_axi_awaddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_awaddr3_carry_i_5_n_0,axi_awaddr3_carry_i_6_n_0,axi_awaddr3_carry_i_7_n_0,axi_awaddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_1
       (.I0(axi_awlen[6]),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen_cntr_reg[7]),
        .I3(axi_awlen[7]),
        .O(axi_awaddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_2
       (.I0(axi_awlen[4]),
        .I1(axi_awlen_cntr_reg[4]),
        .I2(axi_awlen_cntr_reg[5]),
        .I3(axi_awlen[5]),
        .O(axi_awaddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_3
       (.I0(axi_awlen[2]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen_cntr_reg[3]),
        .I3(axi_awlen[3]),
        .O(axi_awaddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_4
       (.I0(axi_awlen[0]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen[1]),
        .O(axi_awaddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_5
       (.I0(axi_awlen[6]),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen[7]),
        .I3(axi_awlen_cntr_reg[7]),
        .O(axi_awaddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_6
       (.I0(axi_awlen[4]),
        .I1(axi_awlen_cntr_reg[4]),
        .I2(axi_awlen[5]),
        .I3(axi_awlen_cntr_reg[5]),
        .O(axi_awaddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_7
       (.I0(axi_awlen[2]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen[3]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(axi_awaddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_8
       (.I0(axi_awlen[0]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen[1]),
        .I3(axi_awlen_cntr_reg[1]),
        .O(axi_awaddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[10]_i_1 
       (.I0(axif_awaddr[8]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[8]),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[11]_i_1 
       (.I0(axif_awaddr[9]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[9]),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[12]_i_1 
       (.I0(axif_awaddr[10]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[10]),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[13]_i_1 
       (.I0(axif_awaddr[11]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[11]),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[14]_i_1 
       (.I0(axif_awaddr[12]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[12]),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[15]_i_1 
       (.I0(axif_awaddr[13]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[13]),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[16]_i_1 
       (.I0(axif_awaddr[14]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[14]),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'hF8F8F8F0F0F0F0F0)) 
    \axi_awaddr[17]_i_1 
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(p_9_in),
        .I3(axi_awburst[0]),
        .I4(axi_awburst[1]),
        .I5(axi_awaddr3),
        .O(\axi_awaddr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[17]_i_2 
       (.I0(axif_awaddr[15]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[15]),
        .O(p_2_in[17]));
  LUT5 #(
    .INIT(32'h0008FFFB)) 
    \axi_awaddr[2]_i_1 
       (.I0(axif_awaddr[0]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(L[2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[3]_i_1 
       (.I0(axif_awaddr[1]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[1]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[4]_i_1 
       (.I0(axif_awaddr[2]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[2]),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[5]_i_1 
       (.I0(axif_awaddr[3]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[3]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[6]_i_1 
       (.I0(axif_awaddr[4]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[4]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[7]_i_1 
       (.I0(axif_awaddr[5]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[5]),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[8]_i_1 
       (.I0(axif_awaddr[6]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[6]),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[9]_i_1 
       (.I0(axif_awaddr[7]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[7]),
        .O(p_2_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[10] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(L[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[11] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(L[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[12] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(L[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[13] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(L[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[14] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(L[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[15] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(L[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[16] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(L[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[17] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(L[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(L[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(L[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[4] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(L[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[5] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(L[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[6] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(L[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[7] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(L[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[8] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(L[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[9] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(L[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    \axi_awburst[1]_i_1 
       (.I0(axif_awvalid),
        .I1(axi_awv_awr_flag),
        .I2(axi_awready_reg_0),
        .O(p_9_in));
  FDRE \axi_awburst_reg[0] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awburst[0]),
        .Q(axi_awburst[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awburst_reg[1] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awburst[1]),
        .Q(axi_awburst[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .O(\axi_awlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[2]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg[2]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[3]),
        .I4(axi_awlen_cntr_reg[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[2]),
        .I4(axi_awlen_cntr_reg[4]),
        .I5(axi_awlen_cntr_reg[5]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[6]_i_1 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg[6]),
        .O(plusOp__1[6]));
  LUT4 #(
    .INIT(16'h10FF)) 
    \axi_awlen_cntr[7]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(axi_awv_awr_flag),
        .I2(axif_awvalid),
        .I3(axif_aresetn),
        .O(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_awlen_cntr[7]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(axi_awaddr3),
        .O(axi_awaddr1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[7]_i_3 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen_cntr_reg[7]),
        .O(plusOp__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[2]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(\axi_awlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_awlen_cntr_reg[0] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(\axi_awlen_cntr[0]_i_1_n_0 ),
        .Q(axi_awlen_cntr_reg[0]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[1] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[1]),
        .Q(axi_awlen_cntr_reg[1]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[2] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[2]),
        .Q(axi_awlen_cntr_reg[2]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[3] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[3]),
        .Q(axi_awlen_cntr_reg[3]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[4] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[4]),
        .Q(axi_awlen_cntr_reg[4]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[5] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[5]),
        .Q(axi_awlen_cntr_reg[5]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[6] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[6]),
        .Q(axi_awlen_cntr_reg[6]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[7] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[7]),
        .Q(axi_awlen_cntr_reg[7]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_reg[0] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[0]),
        .Q(axi_awlen[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[1] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[1]),
        .Q(axi_awlen[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[2] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[2]),
        .Q(axi_awlen[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[3] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[3]),
        .Q(axi_awlen[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[4] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[4]),
        .Q(axi_awlen[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[5] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[5]),
        .Q(axi_awlen[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[6] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[6]),
        .Q(axi_awlen[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[7] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[7]),
        .Q(axi_awlen[7]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(axif_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF04000400040004)) 
    axi_awready_i_2__0
       (.I0(axi_arv_arr_flag),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(axif_wlast),
        .I5(axi_wready_reg_0),
        .O(axi_awready_i_2__0_n_0));
  FDRE axi_awready_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2__0_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0004F0F4F0F4F0F4)) 
    axi_awv_awr_flag_i_1
       (.I0(axi_arv_arr_flag),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(axif_wlast),
        .I5(axi_wready_reg_0),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE axi_awv_awr_flag_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1__0
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(axi_awv_awr_flag),
        .I3(axif_wlast),
        .I4(axif_bready),
        .I5(axif_bvalid),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE axi_bvalid_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(axif_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000F200)) 
    axi_rlast_i_1
       (.I0(axif_rlast),
        .I1(axif_rready),
        .I2(axi_rlast0),
        .I3(axif_aresetn),
        .I4(\axi_arlen[7]_i_1_n_0 ),
        .I5(axi_araddr1),
        .O(axi_rlast_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_rlast_i_2
       (.I0(axi_arv_arr_flag),
        .I1(axi_arready2__14),
        .I2(axif_rlast),
        .O(axi_rlast0));
  FDRE axi_rlast_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_rlast_i_1_n_0),
        .Q(axif_rlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1__0
       (.I0(axi_arv_arr_flag),
        .I1(axif_rready),
        .I2(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1__0_n_0));
  FDRE axi_rvalid_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1__0_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_wready_i_1__0
       (.I0(axif_wvalid),
        .I1(axi_awv_awr_flag),
        .I2(axif_wlast),
        .I3(axi_wready_reg_0),
        .O(axi_wready_i_1__0_n_0));
  FDRE axi_wready_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1__0_n_0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[0]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[0]),
        .O(axif_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[10]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[10]),
        .O(axif_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[11]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[11]),
        .O(axif_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[12]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[12]),
        .O(axif_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[13]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[13]),
        .O(axif_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[14]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[14]),
        .O(axif_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[15]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[15]),
        .O(axif_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[1]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[1]),
        .O(axif_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[2]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[2]),
        .O(axif_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[3]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[3]),
        .O(axif_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[4]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[4]),
        .O(axif_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[5]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[5]),
        .O(axif_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[6]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[6]),
        .O(axif_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[7]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[7]),
        .O(axif_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[8]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[8]),
        .O(axif_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[9]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[9]),
        .O(axif_rdata[9]));
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(\axi_araddr_reg_n_0_[2] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry_n_4 ,\plusOp_inferred__1/i__carry_n_5 ,\plusOp_inferred__1/i__carry_n_6 ,\plusOp_inferred__1/i__carry_n_7 }),
        .S({\axi_araddr_reg_n_0_[6] ,\axi_araddr_reg_n_0_[5] ,\axi_araddr_reg_n_0_[4] ,\axi_araddr_reg_n_0_[3] }));
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__0_n_4 ,\plusOp_inferred__1/i__carry__0_n_5 ,\plusOp_inferred__1/i__carry__0_n_6 ,\plusOp_inferred__1/i__carry__0_n_7 }),
        .S({\axi_araddr_reg_n_0_[10] ,\axi_araddr_reg_n_0_[9] ,\axi_araddr_reg_n_0_[8] ,\axi_araddr_reg_n_0_[7] }));
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__1_n_4 ,\plusOp_inferred__1/i__carry__1_n_5 ,\plusOp_inferred__1/i__carry__1_n_6 ,\plusOp_inferred__1/i__carry__1_n_7 }),
        .S({\axi_araddr_reg_n_0_[14] ,\axi_araddr_reg_n_0_[13] ,\axi_araddr_reg_n_0_[12] ,\axi_araddr_reg_n_0_[11] }));
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED [3:2],\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED [3],\plusOp_inferred__1/i__carry__2_n_5 ,\plusOp_inferred__1/i__carry__2_n_6 ,\plusOp_inferred__1/i__carry__2_n_7 }),
        .S({1'b0,\axi_araddr_reg_n_0_[17] ,\axi_araddr_reg_n_0_[16] ,\axi_araddr_reg_n_0_[15] }));
  CARRY4 \plusOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__2/i__carry_n_0 ,\plusOp_inferred__2/i__carry_n_1 ,\plusOp_inferred__2/i__carry_n_2 ,\plusOp_inferred__2/i__carry_n_3 }),
        .CYINIT(L[2]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(L[6:3]));
  CARRY4 \plusOp_inferred__2/i__carry__0 
       (.CI(\plusOp_inferred__2/i__carry_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__0_n_0 ,\plusOp_inferred__2/i__carry__0_n_1 ,\plusOp_inferred__2/i__carry__0_n_2 ,\plusOp_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(L[10:7]));
  CARRY4 \plusOp_inferred__2/i__carry__1 
       (.CI(\plusOp_inferred__2/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__1_n_0 ,\plusOp_inferred__2/i__carry__1_n_1 ,\plusOp_inferred__2/i__carry__1_n_2 ,\plusOp_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(L[14:11]));
  CARRY4 \plusOp_inferred__2/i__carry__2 
       (.CI(\plusOp_inferred__2/i__carry__1_n_0 ),
        .CO({\NLW_plusOp_inferred__2/i__carry__2_CO_UNCONNECTED [3:2],\plusOp_inferred__2/i__carry__2_n_2 ,\plusOp_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__2/i__carry__2_O_UNCONNECTED [3],plusOp[15:13]}),
        .S({1'b0,L[17:15]}));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_8_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_3));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_0_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_4[0]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[17]),
        .I3(\axi_araddr_reg_n_0_[17] ),
        .O(ADDRARDADDR[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_10
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[8]),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(ADDRARDADDR[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_11
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[7]),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .O(ADDRARDADDR[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_12
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[6]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .O(ADDRARDADDR[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_13
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[5]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .O(ADDRARDADDR[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_14
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[4]),
        .I3(\axi_araddr_reg_n_0_[4] ),
        .O(ADDRARDADDR[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_15
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[3]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .O(ADDRARDADDR[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_16
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[2]),
        .I3(\axi_araddr_reg_n_0_[2] ),
        .O(ADDRARDADDR[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_10_i_17
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_2[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_2
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[16]),
        .I3(\axi_araddr_reg_n_0_[16] ),
        .O(ADDRARDADDR[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_3
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[15]),
        .I3(\axi_araddr_reg_n_0_[15] ),
        .O(ADDRARDADDR[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_4
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[14]),
        .I3(\axi_araddr_reg_n_0_[14] ),
        .O(ADDRARDADDR[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_5
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[13]),
        .I3(\axi_araddr_reg_n_0_[13] ),
        .O(ADDRARDADDR[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_6
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[12]),
        .I3(\axi_araddr_reg_n_0_[12] ),
        .O(ADDRARDADDR[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_7
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[11]),
        .I3(\axi_araddr_reg_n_0_[11] ),
        .O(ADDRARDADDR[9]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_8
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[10]),
        .I3(\axi_araddr_reg_n_0_[10] ),
        .O(ADDRARDADDR[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_9
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[9]),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .O(ADDRARDADDR[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_11_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_12_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_14_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(WEA[0]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[17]),
        .I3(\axi_araddr_reg_n_0_[17] ),
        .O(addr2_i[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_10
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[8]),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(addr2_i[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_11
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[7]),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .O(addr2_i[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_12
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[6]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .O(addr2_i[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_13
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[5]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .O(addr2_i[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_14
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[4]),
        .I3(\axi_araddr_reg_n_0_[4] ),
        .O(addr2_i[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_15
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[3]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .O(addr2_i[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_16
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[2]),
        .I3(\axi_araddr_reg_n_0_[2] ),
        .O(addr2_i[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_15_i_17
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(WEA[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_2
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[16]),
        .I3(\axi_araddr_reg_n_0_[16] ),
        .O(addr2_i[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_3
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[15]),
        .I3(\axi_araddr_reg_n_0_[15] ),
        .O(addr2_i[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_4
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[14]),
        .I3(\axi_araddr_reg_n_0_[14] ),
        .O(addr2_i[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_5
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[13]),
        .I3(\axi_araddr_reg_n_0_[13] ),
        .O(addr2_i[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_6
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[12]),
        .I3(\axi_araddr_reg_n_0_[12] ),
        .O(addr2_i[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_7
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[11]),
        .I3(\axi_araddr_reg_n_0_[11] ),
        .O(addr2_i[9]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_8
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[10]),
        .I3(\axi_araddr_reg_n_0_[10] ),
        .O(addr2_i[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_9
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[9]),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .O(addr2_i[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_1_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_4[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_3_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_5[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_4_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_5[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_5_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_6[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_6_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_6[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_7_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_7));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_9_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_2[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    axil_bvalid,
    axi_rvalid_reg_0,
    fifo_in_under_r_reg,
    rd_val_o_reg_0,
    DI,
    rd_val_o_reg_1,
    rd_val_o_reg_2,
    rd_val_o_reg_3,
    S,
    axil_rdata,
    \axi_awaddr_reg[6]_0 ,
    E,
    \axi_awaddr_reg[6]_1 ,
    axil_aclk,
    reg1_i,
    reg0_i,
    O,
    DOBDO,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[1]_1 ,
    \axi_rdata_reg[1]_2 ,
    fifo_in_under_r,
    reg0_o,
    reg1_o,
    \axi_rdata_reg[23]_0 ,
    \axi_rdata_reg[26]_0 ,
    empty_r,
    \rd_ptr_r_reg[3] ,
    \_inferred__6/i__carry ,
    \_inferred__6/i__carry__0 ,
    \_inferred__6/i__carry__1 ,
    Q,
    axil_aresetn,
    axil_bready,
    axil_awvalid,
    axil_wvalid,
    axil_arvalid,
    axil_rready,
    axil_awaddr,
    axil_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output axil_bvalid;
  output axi_rvalid_reg_0;
  output fifo_in_under_r_reg;
  output rd_val_o_reg_0;
  output [0:0]DI;
  output rd_val_o_reg_1;
  output [3:0]rd_val_o_reg_2;
  output [0:0]rd_val_o_reg_3;
  output [0:0]S;
  output [26:0]axil_rdata;
  output \axi_awaddr_reg[6]_0 ;
  output [0:0]E;
  output [0:0]\axi_awaddr_reg[6]_1 ;
  input axil_aclk;
  input [7:0]reg1_i;
  input [7:0]reg0_i;
  input [3:0]O;
  input [15:0]DOBDO;
  input \axi_rdata_reg[1]_0 ;
  input \axi_rdata_reg[1]_1 ;
  input \axi_rdata_reg[1]_2 ;
  input fifo_in_under_r;
  input [7:0]reg0_o;
  input [7:0]reg1_o;
  input [3:0]\axi_rdata_reg[23]_0 ;
  input [2:0]\axi_rdata_reg[26]_0 ;
  input empty_r;
  input \rd_ptr_r_reg[3] ;
  input [0:0]\_inferred__6/i__carry ;
  input [3:0]\_inferred__6/i__carry__0 ;
  input [0:0]\_inferred__6/i__carry__1 ;
  input [0:0]Q;
  input axil_aresetn;
  input axil_bready;
  input axil_awvalid;
  input axil_wvalid;
  input axil_arvalid;
  input axil_rready;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;

  wire [0:0]DI;
  wire [15:0]DOBDO;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]\_inferred__6/i__carry ;
  wire [3:0]\_inferred__6/i__carry__0 ;
  wire [0:0]\_inferred__6/i__carry__1 ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr_reg[6]_0 ;
  wire [0:0]\axi_awaddr_reg[6]_1 ;
  wire axi_awready0;
  wire axi_awready_i_1__0_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[1]_1 ;
  wire \axi_rdata_reg[1]_2 ;
  wire [3:0]\axi_rdata_reg[23]_0 ;
  wire [2:0]\axi_rdata_reg[26]_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire axil_aclk;
  wire [5:0]axil_araddr;
  wire axil_aresetn;
  wire axil_arvalid;
  wire [5:0]axil_awaddr;
  wire axil_awvalid;
  wire axil_bready;
  wire axil_bvalid;
  wire [26:0]axil_rdata;
  wire axil_rready;
  wire axil_wvalid;
  wire empty_r;
  wire fifo_in_under_r;
  wire fifo_in_under_r_i_2_n_0;
  wire fifo_in_under_r_reg;
  wire i__carry_i_6_n_0;
  wire \rd_ptr_r_reg[3] ;
  wire rd_val_o_reg_0;
  wire rd_val_o_reg_1;
  wire [3:0]rd_val_o_reg_2;
  wire [0:0]rd_val_o_reg_3;
  wire [7:0]reg0_i;
  wire [7:0]reg0_o;
  wire [7:0]reg1_i;
  wire [7:0]reg1_o;
  wire [7:2]reg_rd_adr;
  wire [26:0]reg_rd_dat;
  wire reg_rd_ena;
  wire [7:2]reg_wr_adr;
  wire \regs_out[0][7]_i_2_n_0 ;
  wire \regs_out[0][7]_i_3_n_0 ;
  wire \regs_out[1][7]_i_2_n_0 ;
  wire slv_reg_rden;

  LUT6 #(
    .INIT(64'hF8F8F8F808F8F8F8)) 
    aw_en_i_1
       (.I0(axil_bvalid),
        .I1(axil_bready),
        .I2(aw_en_reg_n_0),
        .I3(axil_wvalid),
        .I4(axil_awvalid),
        .I5(axi_awready_reg_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1__0_n_0));
  FDSE \axi_araddr_reg[2] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[0]),
        .Q(reg_rd_adr[2]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[1]),
        .Q(reg_rd_adr[3]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[2]),
        .Q(reg_rd_adr[4]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \axi_araddr_reg[5] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[3]),
        .Q(reg_rd_adr[5]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \axi_araddr_reg[6] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[4]),
        .Q(reg_rd_adr[6]),
        .S(axi_awready_i_1__0_n_0));
  FDSE \axi_araddr_reg[7] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[5]),
        .Q(reg_rd_adr[7]),
        .S(axi_awready_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axil_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[0]),
        .Q(reg_wr_adr[2]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[1]),
        .Q(reg_wr_adr[3]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[2]),
        .Q(reg_wr_adr[4]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[3]),
        .Q(reg_wr_adr[5]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[6] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[4]),
        .Q(reg_wr_adr[6]),
        .R(axi_awready_i_1__0_n_0));
  FDRE \axi_awaddr_reg[7] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[5]),
        .Q(reg_wr_adr[7]),
        .R(axi_awready_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1__0
       (.I0(axil_aresetn),
        .O(axi_awready_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(axil_wvalid),
        .I2(axil_awvalid),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(axil_bready),
        .I1(axi_wready_reg_0),
        .I2(axil_awvalid),
        .I3(axil_wvalid),
        .I4(axi_awready_reg_0),
        .I5(axil_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axil_bvalid),
        .R(axi_awready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(reg1_i[0]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_i[0]),
        .I4(\axi_rdata[0]_i_2_n_0 ),
        .I5(\axi_rdata[1]_i_4_n_0 ),
        .O(reg_rd_dat[0]));
  LUT5 #(
    .INIT(32'hBABA3033)) 
    \axi_rdata[0]_i_2 
       (.I0(O[0]),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(\axi_rdata[1]_i_2_n_0 ),
        .I3(DOBDO[0]),
        .I4(reg_rd_adr[3]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[0]_i_3 
       (.I0(reg0_o[0]),
        .I1(reg_rd_adr[2]),
        .I2(reg1_o[0]),
        .I3(reg_rd_adr[5]),
        .I4(reg_rd_adr[4]),
        .I5(reg_rd_adr[7]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[10]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[10]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[11]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[11]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[12]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[12]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[13]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[13]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[14]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[14]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[15]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[15]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(reg_rd_adr[3]),
        .I2(O[0]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[2]),
        .O(reg_rd_dat[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \axi_rdata[16]_i_2 
       (.I0(reg_rd_adr[5]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[6]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(O[1]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[17]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(O[2]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[18]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(O[3]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0E0000)) 
    \axi_rdata[1]_i_1 
       (.I0(reg_rd_adr[3]),
        .I1(DOBDO[1]),
        .I2(\axi_rdata[1]_i_2_n_0 ),
        .I3(\axi_rdata[1]_i_3_n_0 ),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .I5(\axi_rdata[1]_i_5_n_0 ),
        .O(reg_rd_dat[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \axi_rdata[1]_i_2 
       (.I0(reg_rd_adr[2]),
        .I1(reg_rd_adr[4]),
        .I2(reg_rd_adr[6]),
        .I3(reg_rd_adr[7]),
        .I4(reg_rd_adr[5]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[1]_i_3 
       (.I0(reg0_o[1]),
        .I1(reg_rd_adr[2]),
        .I2(reg1_o[1]),
        .I3(reg_rd_adr[5]),
        .I4(reg_rd_adr[4]),
        .I5(reg_rd_adr[7]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000200AAAAAAAA)) 
    \axi_rdata[1]_i_4 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_0 ),
        .I2(\axi_rdata_reg[1]_1 ),
        .I3(\axi_rdata_reg[1]_2 ),
        .I4(\axi_rdata[1]_i_2_n_0 ),
        .I5(reg_rd_adr[3]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[1]_i_5 
       (.I0(reg0_i[1]),
        .I1(reg_rd_adr[2]),
        .I2(reg1_i[1]),
        .I3(\axi_rdata[6]_i_2_n_0 ),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[23]_0 [0]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[20]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[23]_0 [1]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[21]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[23]_0 [2]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[22]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[23]_0 [3]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[23]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[26]_0 [0]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[24]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[26]_0 [1]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[25]));
  LUT3 #(
    .INIT(8'hBF)) 
    \axi_rdata[26]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(axil_arvalid),
        .I2(axi_arready_reg_0),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[26]_i_2 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[26]_0 [2]),
        .I2(reg_rd_adr[2]),
        .I3(reg_rd_adr[4]),
        .I4(reg_rd_adr[3]),
        .O(reg_rd_dat[26]));
  LUT6 #(
    .INIT(64'h0004040404040404)) 
    \axi_rdata[26]_i_3 
       (.I0(reg_rd_adr[6]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[5]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[3]),
        .I5(reg_rd_adr[4]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(reg1_i[2]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_i[2]),
        .I4(\axi_rdata[2]_i_2_n_0 ),
        .O(reg_rd_dat[2]));
  LUT6 #(
    .INIT(64'h00A0F0E000A000E0)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata[2]_i_3_n_0 ),
        .I1(DOBDO[2]),
        .I2(\axi_rdata[6]_i_2_n_0 ),
        .I3(reg_rd_adr[3]),
        .I4(\axi_rdata[1]_i_2_n_0 ),
        .I5(fifo_in_under_r),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \axi_rdata[2]_i_3 
       (.I0(reg0_o[2]),
        .I1(reg_rd_adr[2]),
        .I2(reg1_o[2]),
        .I3(reg_rd_adr[5]),
        .I4(reg_rd_adr[4]),
        .I5(reg_rd_adr[7]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(reg1_i[3]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_i[3]),
        .I4(\axi_rdata_reg[3]_i_2_n_0 ),
        .O(reg_rd_dat[3]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[3]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \axi_rdata[3]_i_4 
       (.I0(reg_rd_adr[3]),
        .I1(reg1_o[3]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_o[3]),
        .I4(reg_rd_adr[4]),
        .I5(reg_rd_adr[5]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(reg1_i[4]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_i[4]),
        .I4(\axi_rdata_reg[4]_i_2_n_0 ),
        .O(reg_rd_dat[4]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[4]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \axi_rdata[4]_i_4 
       (.I0(reg_rd_adr[3]),
        .I1(reg1_o[4]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_o[4]),
        .I4(reg_rd_adr[4]),
        .I5(reg_rd_adr[5]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(reg1_i[5]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_i[5]),
        .I4(\axi_rdata_reg[5]_i_2_n_0 ),
        .O(reg_rd_dat[5]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[5]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \axi_rdata[5]_i_4 
       (.I0(reg_rd_adr[3]),
        .I1(reg1_o[5]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_o[5]),
        .I4(reg_rd_adr[4]),
        .I5(reg_rd_adr[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(reg1_i[6]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_i[6]),
        .I4(\axi_rdata_reg[6]_i_3_n_0 ),
        .O(reg_rd_dat[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_rdata[6]_i_2 
       (.I0(reg_rd_adr[6]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[4]),
        .I3(reg_rd_adr[5]),
        .I4(reg_rd_adr[3]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[6]_i_4 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[6]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \axi_rdata[6]_i_5 
       (.I0(reg_rd_adr[3]),
        .I1(reg1_o[6]),
        .I2(reg_rd_adr[2]),
        .I3(reg0_o[6]),
        .I4(reg_rd_adr[4]),
        .I5(reg_rd_adr[5]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .I2(\axi_rdata[7]_i_4_n_0 ),
        .I3(reg0_o[7]),
        .I4(reg_rd_adr[2]),
        .I5(reg1_o[7]),
        .O(reg_rd_dat[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_2 
       (.I0(reg0_i[7]),
        .I1(reg_rd_adr[2]),
        .I2(reg1_i[7]),
        .I3(\axi_rdata[6]_i_2_n_0 ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[7]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \axi_rdata[7]_i_4 
       (.I0(reg_rd_adr[6]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[4]),
        .I3(reg_rd_adr[5]),
        .I4(reg_rd_adr[3]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[8]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(DOBDO[9]),
        .I2(reg_rd_adr[3]),
        .I3(reg_rd_adr[2]),
        .I4(reg_rd_adr[4]),
        .O(reg_rd_dat[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[0]),
        .Q(axil_rdata[0]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[10]),
        .Q(axil_rdata[10]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[11]),
        .Q(axil_rdata[11]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[12]),
        .Q(axil_rdata[12]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[13]),
        .Q(axil_rdata[13]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[14]),
        .Q(axil_rdata[14]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[15]),
        .Q(axil_rdata[15]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[16]),
        .Q(axil_rdata[16]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[17]),
        .Q(axil_rdata[17]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[18]),
        .Q(axil_rdata[18]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[19]),
        .Q(axil_rdata[19]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[1]),
        .Q(axil_rdata[1]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[20]),
        .Q(axil_rdata[20]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[21]),
        .Q(axil_rdata[21]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[22]),
        .Q(axil_rdata[22]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[23]),
        .Q(axil_rdata[23]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[24]),
        .Q(axil_rdata[24]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[25]),
        .Q(axil_rdata[25]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[26]),
        .Q(axil_rdata[26]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[2]),
        .Q(axil_rdata[2]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[3]),
        .Q(axil_rdata[3]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_3_n_0 ),
        .I1(\axi_rdata[3]_i_4_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(\axi_rdata[7]_i_4_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[4]),
        .Q(axil_rdata[4]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_3_n_0 ),
        .I1(\axi_rdata[4]_i_4_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(\axi_rdata[7]_i_4_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[5]),
        .Q(axil_rdata[5]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_3_n_0 ),
        .I1(\axi_rdata[5]_i_4_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(\axi_rdata[7]_i_4_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[6]),
        .Q(axil_rdata[6]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(\axi_rdata[7]_i_4_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[7]),
        .Q(axil_rdata[7]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[8]),
        .Q(axil_rdata[8]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[9]),
        .Q(axil_rdata[9]),
        .R(\axi_rdata[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axil_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .I3(axil_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(axil_wvalid),
        .I2(axil_awvalid),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    fifo_in_clear_i_1
       (.I0(reg_wr_adr[6]),
        .I1(\regs_out[1][7]_i_2_n_0 ),
        .I2(reg_wr_adr[7]),
        .O(\axi_awaddr_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAE00AAAAAAAAAAAA)) 
    fifo_in_under_r_i_1
       (.I0(fifo_in_under_r),
        .I1(empty_r),
        .I2(i__carry_i_6_n_0),
        .I3(fifo_in_under_r_i_2_n_0),
        .I4(reg_rd_ena),
        .I5(\axi_rdata[16]_i_2_n_0 ),
        .O(fifo_in_under_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    fifo_in_under_r_i_2
       (.I0(reg_rd_adr[2]),
        .I1(reg_rd_adr[4]),
        .I2(reg_rd_adr[3]),
        .O(fifo_in_under_r_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_1
       (.I0(rd_val_o_reg_1),
        .I1(\_inferred__6/i__carry__0 [3]),
        .O(rd_val_o_reg_2[3]));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2
       (.I0(rd_val_o_reg_1),
        .I1(\_inferred__6/i__carry__0 [2]),
        .O(rd_val_o_reg_2[2]));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_3
       (.I0(rd_val_o_reg_1),
        .I1(\_inferred__6/i__carry__0 [1]),
        .O(rd_val_o_reg_2[1]));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_4
       (.I0(rd_val_o_reg_1),
        .I1(\_inferred__6/i__carry__0 [0]),
        .O(rd_val_o_reg_2[0]));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_2
       (.I0(rd_val_o_reg_1),
        .I1(\_inferred__6/i__carry__1 ),
        .O(rd_val_o_reg_3));
  LUT5 #(
    .INIT(32'h00400000)) 
    i__carry_i_1
       (.I0(i__carry_i_6_n_0),
        .I1(\axi_rdata[16]_i_2_n_0 ),
        .I2(reg_rd_ena),
        .I3(empty_r),
        .I4(\rd_ptr_r_reg[3] ),
        .O(rd_val_o_reg_0));
  LUT5 #(
    .INIT(32'hAAAA9AAA)) 
    i__carry_i_11
       (.I0(Q),
        .I1(i__carry_i_6_n_0),
        .I2(\axi_rdata[16]_i_2_n_0 ),
        .I3(reg_rd_ena),
        .I4(empty_r),
        .O(S));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_4
       (.I0(rd_val_o_reg_1),
        .I1(\_inferred__6/i__carry ),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry_i_6
       (.I0(reg_rd_adr[3]),
        .I1(reg_rd_adr[2]),
        .I2(reg_rd_adr[4]),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h00000040)) 
    i__carry_i_8
       (.I0(i__carry_i_6_n_0),
        .I1(\axi_rdata[16]_i_2_n_0 ),
        .I2(reg_rd_ena),
        .I3(empty_r),
        .I4(\rd_ptr_r_reg[3] ),
        .O(rd_val_o_reg_1));
  LUT3 #(
    .INIT(8'h08)) 
    rd_val_o_i_1
       (.I0(axi_arready_reg_0),
        .I1(axil_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(slv_reg_rden));
  FDRE rd_val_o_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(slv_reg_rden),
        .Q(reg_rd_ena),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \regs_out[0][7]_i_1 
       (.I0(reg_wr_adr[6]),
        .I1(\regs_out[0][7]_i_2_n_0 ),
        .I2(reg_wr_adr[2]),
        .I3(reg_wr_adr[7]),
        .O(\axi_awaddr_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \regs_out[0][7]_i_2 
       (.I0(reg_wr_adr[4]),
        .I1(\regs_out[0][7]_i_3_n_0 ),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[5]),
        .O(\regs_out[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \regs_out[0][7]_i_3 
       (.I0(axi_awready_reg_0),
        .I1(axil_wvalid),
        .I2(axil_awvalid),
        .I3(axi_wready_reg_0),
        .O(\regs_out[0][7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \regs_out[1][7]_i_1 
       (.I0(reg_wr_adr[6]),
        .I1(\regs_out[1][7]_i_2_n_0 ),
        .I2(reg_wr_adr[7]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \regs_out[1][7]_i_2 
       (.I0(reg_wr_adr[5]),
        .I1(reg_wr_adr[3]),
        .I2(\regs_out[0][7]_i_3_n_0 ),
        .I3(reg_wr_adr[4]),
        .I4(reg_wr_adr[2]),
        .O(\regs_out[1][7]_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock
   (DOBDO,
    Q,
    fifo_full_o,
    empty_r,
    O,
    \data_r_reg[1][8] ,
    \data_r_reg[1][10] ,
    fifo_in_under_r,
    \rd_ptr_r_reg[7] ,
    \rd_ptr_r_reg[10] ,
    \_inferred__6/i__carry__0 ,
    \_inferred__6/i__carry__1 ,
    fifo_overflow_o,
    \rd_ptr_r_reg[1] ,
    fifo_afull_o,
    \_inferred__6/i__carry ,
    \rd_ptr_r_reg[0] ,
    data2_o,
    ram_data_o,
    reg0_o,
    reg1_o,
    fifo_clk_i,
    axil_aclk,
    fifo_data_i,
    \rd_ptr_r_reg[3] ,
    DI,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[26] ,
    fifo_in_under_r_reg_0,
    fifo_in_clear_reg_0,
    fifo_we_i,
    \rd_ptr_r_reg[10]_0 ,
    fifo_clear_i,
    S,
    axif_aclk,
    ram_clk_i,
    ADDRARDADDR,
    ram_addr_i,
    axif_wdata,
    ram_data_i,
    ram_reg_0_2,
    ram_we_i,
    ram_reg_1_4,
    ram_reg_0_7,
    ram_reg_1_7,
    ram_reg_0_8,
    ram_reg_1_9,
    addr2_i,
    ram_reg_0_12,
    WEA,
    E,
    axil_wdata,
    \regs_out_reg[1][7]_0 );
  output [15:0]DOBDO;
  output [0:0]Q;
  output fifo_full_o;
  output empty_r;
  output [3:0]O;
  output [3:0]\data_r_reg[1][8] ;
  output [2:0]\data_r_reg[1][10] ;
  output fifo_in_under_r;
  output [3:0]\rd_ptr_r_reg[7] ;
  output [0:0]\rd_ptr_r_reg[10] ;
  output \_inferred__6/i__carry__0 ;
  output \_inferred__6/i__carry__1 ;
  output fifo_overflow_o;
  output \rd_ptr_r_reg[1] ;
  output fifo_afull_o;
  output \_inferred__6/i__carry ;
  output [0:0]\rd_ptr_r_reg[0] ;
  output [15:0]data2_o;
  output [15:0]ram_data_o;
  output [7:0]reg0_o;
  output [7:0]reg1_o;
  input fifo_clk_i;
  input axil_aclk;
  input [15:0]fifo_data_i;
  input \rd_ptr_r_reg[3] ;
  input [0:0]DI;
  input [3:0]\axi_rdata_reg[23] ;
  input [0:0]\axi_rdata_reg[26] ;
  input fifo_in_under_r_reg_0;
  input fifo_in_clear_reg_0;
  input fifo_we_i;
  input \rd_ptr_r_reg[10]_0 ;
  input fifo_clear_i;
  input [0:0]S;
  input axif_aclk;
  input ram_clk_i;
  input [15:0]ADDRARDADDR;
  input [15:0]ram_addr_i;
  input [15:0]axif_wdata;
  input [15:0]ram_data_i;
  input [1:0]ram_reg_0_2;
  input ram_we_i;
  input [1:0]ram_reg_1_4;
  input [1:0]ram_reg_0_7;
  input [0:0]ram_reg_1_7;
  input [0:0]ram_reg_0_8;
  input [1:0]ram_reg_1_9;
  input [15:0]addr2_i;
  input [1:0]ram_reg_0_12;
  input [1:0]WEA;
  input [0:0]E;
  input [7:0]axil_wdata;
  input [0:0]\regs_out_reg[1][7]_0 ;

  wire [15:0]ADDRARDADDR;
  wire [0:0]DI;
  wire [15:0]DOBDO;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire [1:0]WEA;
  wire \_inferred__6/i__carry ;
  wire \_inferred__6/i__carry__0 ;
  wire \_inferred__6/i__carry__1 ;
  wire [15:0]addr2_i;
  wire [3:0]\axi_rdata_reg[23] ;
  wire [0:0]\axi_rdata_reg[26] ;
  wire axif_aclk;
  wire [15:0]axif_wdata;
  wire axil_aclk;
  wire [7:0]axil_wdata;
  wire [15:0]data2_o;
  wire [2:0]\data_r_reg[1][10] ;
  wire [3:0]\data_r_reg[1][8] ;
  wire empty_r;
  wire fifo_afull_o;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire fifo_full_o;
  wire fifo_in_clear_reg_0;
  wire fifo_in_clear_reg_n_0;
  wire fifo_in_under_r;
  wire fifo_in_under_r_reg_0;
  wire fifo_overflow_o;
  wire fifo_we_i;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire [1:0]ram_reg_0_12;
  wire [1:0]ram_reg_0_2;
  wire [1:0]ram_reg_0_7;
  wire [0:0]ram_reg_0_8;
  wire [1:0]ram_reg_1_4;
  wire [0:0]ram_reg_1_7;
  wire [1:0]ram_reg_1_9;
  wire ram_we_i;
  wire [0:0]\rd_ptr_r_reg[0] ;
  wire [0:0]\rd_ptr_r_reg[10] ;
  wire \rd_ptr_r_reg[10]_0 ;
  wire \rd_ptr_r_reg[1] ;
  wire \rd_ptr_r_reg[3] ;
  wire [3:0]\rd_ptr_r_reg[7] ;
  wire [7:0]reg0_o;
  wire [7:0]reg1_o;
  wire [0:0]\regs_out_reg[1][7]_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tdpram \dram_g.dram_i 
       (.ADDRARDADDR(ADDRARDADDR),
        .WEA(WEA),
        .addr2_i(addr2_i),
        .axif_aclk(axif_aclk),
        .axif_wdata(axif_wdata),
        .data2_o(data2_o),
        .ram_addr_i(ram_addr_i),
        .ram_clk_i(ram_clk_i),
        .ram_data_i(ram_data_i),
        .ram_data_o(ram_data_o),
        .ram_reg_0_12_0(ram_reg_0_12),
        .ram_reg_0_2_0(ram_reg_0_2),
        .ram_reg_0_7_0(ram_reg_0_7),
        .ram_reg_0_8_0(ram_reg_0_8),
        .ram_reg_1_4_0(ram_reg_1_4),
        .ram_reg_1_7_0(ram_reg_1_7),
        .ram_reg_1_9_0(ram_reg_1_9),
        .ram_we_i(ram_we_i));
  FDRE fifo_in_clear_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_in_clear_reg_0),
        .Q(fifo_in_clear_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFO \fifo_in_g.fifo_in_i 
       (.DI(DI),
        .DOBDO(DOBDO),
        .O(O),
        .Q(Q),
        .S(S),
        .\_inferred__6/i__carry_0 (\_inferred__6/i__carry ),
        .\_inferred__6/i__carry__0_0 (\_inferred__6/i__carry__0 ),
        .\_inferred__6/i__carry__1_0 (\_inferred__6/i__carry__1 ),
        .\axi_rdata_reg[23] (\axi_rdata_reg[23] ),
        .\axi_rdata_reg[26] (\axi_rdata_reg[26] ),
        .axil_aclk(axil_aclk),
        .\data_r_reg[1][10] (\data_r_reg[1][10] ),
        .\data_r_reg[1][8] (\data_r_reg[1][8] ),
        .empty_r(empty_r),
        .fifo_afull_o(fifo_afull_o),
        .fifo_clear_i(fifo_clear_i),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_full_o(fifo_full_o),
        .fifo_overflow_o(fifo_overflow_o),
        .fifo_we_i(fifo_we_i),
        .\rd_ptr_r_reg[0]_0 (\rd_ptr_r_reg[0] ),
        .\rd_ptr_r_reg[10]_0 (\rd_ptr_r_reg[10] ),
        .\rd_ptr_r_reg[10]_1 (\rd_ptr_r_reg[10]_0 ),
        .\rd_ptr_r_reg[1]_0 (\rd_ptr_r_reg[1] ),
        .\rd_ptr_r_reg[3]_0 (\rd_ptr_r_reg[3] ),
        .\rd_ptr_r_reg[7]_0 (\rd_ptr_r_reg[7] ),
        .\wr_ptr_r_reg[0]_0 (fifo_in_clear_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_in_under_r_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_in_under_r_reg_0),
        .Q(fifo_in_under_r),
        .R(1'b0));
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
    \regs_out_reg[0][1] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[1]),
        .Q(reg0_o[1]),
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
    \regs_out_reg[1][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[0]),
        .Q(reg1_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[1]),
        .Q(reg1_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[2]),
        .Q(reg1_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[3]),
        .Q(reg1_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[4]),
        .Q(reg1_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[5]),
        .Q(reg1_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[6]),
        .Q(reg1_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][7]_0 ),
        .D(axil_wdata[7]),
        .Q(reg1_o[7]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFO
   (DOBDO,
    Q,
    fifo_full_o,
    empty_r,
    O,
    \data_r_reg[1][8] ,
    \data_r_reg[1][10] ,
    \rd_ptr_r_reg[7]_0 ,
    \rd_ptr_r_reg[10]_0 ,
    \_inferred__6/i__carry__0_0 ,
    \_inferred__6/i__carry__1_0 ,
    fifo_overflow_o,
    \rd_ptr_r_reg[1]_0 ,
    fifo_afull_o,
    \_inferred__6/i__carry_0 ,
    \rd_ptr_r_reg[0]_0 ,
    fifo_clk_i,
    axil_aclk,
    fifo_data_i,
    \rd_ptr_r_reg[3]_0 ,
    DI,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[26] ,
    fifo_we_i,
    \rd_ptr_r_reg[10]_1 ,
    \wr_ptr_r_reg[0]_0 ,
    fifo_clear_i,
    S);
  output [15:0]DOBDO;
  output [0:0]Q;
  output fifo_full_o;
  output empty_r;
  output [3:0]O;
  output [3:0]\data_r_reg[1][8] ;
  output [2:0]\data_r_reg[1][10] ;
  output [3:0]\rd_ptr_r_reg[7]_0 ;
  output [0:0]\rd_ptr_r_reg[10]_0 ;
  output \_inferred__6/i__carry__0_0 ;
  output \_inferred__6/i__carry__1_0 ;
  output fifo_overflow_o;
  output \rd_ptr_r_reg[1]_0 ;
  output fifo_afull_o;
  output \_inferred__6/i__carry_0 ;
  output [0:0]\rd_ptr_r_reg[0]_0 ;
  input fifo_clk_i;
  input axil_aclk;
  input [15:0]fifo_data_i;
  input \rd_ptr_r_reg[3]_0 ;
  input [0:0]DI;
  input [3:0]\axi_rdata_reg[23] ;
  input [0:0]\axi_rdata_reg[26] ;
  input fifo_we_i;
  input \rd_ptr_r_reg[10]_1 ;
  input \wr_ptr_r_reg[0]_0 ;
  input fifo_clear_i;
  input [0:0]S;

  wire [0:0]DI;
  wire [15:0]DOBDO;
  wire [3:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire \_inferred__1/i__carry__0_n_0 ;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__1_n_2 ;
  wire \_inferred__1/i__carry__1_n_3 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire \_inferred__6/i__carry_0 ;
  wire \_inferred__6/i__carry__0_0 ;
  wire \_inferred__6/i__carry__0_n_0 ;
  wire \_inferred__6/i__carry__0_n_1 ;
  wire \_inferred__6/i__carry__0_n_2 ;
  wire \_inferred__6/i__carry__0_n_3 ;
  wire \_inferred__6/i__carry__1_0 ;
  wire \_inferred__6/i__carry__1_n_2 ;
  wire \_inferred__6/i__carry__1_n_3 ;
  wire \_inferred__6/i__carry_n_0 ;
  wire \_inferred__6/i__carry_n_1 ;
  wire \_inferred__6/i__carry_n_2 ;
  wire \_inferred__6/i__carry_n_3 ;
  wire [3:0]\axi_rdata_reg[23] ;
  wire [0:0]\axi_rdata_reg[26] ;
  wire axil_aclk;
  wire [2:0]\data_r_reg[1][10] ;
  wire [3:0]\data_r_reg[1][8] ;
  wire empty;
  wire empty_r;
  wire fifo_afull_o;
  wire fifo_afull_o_INST_0_i_1_n_0;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire fifo_full_o;
  wire fifo_full_o_INST_0_i_1_n_0;
  wire fifo_full_o_INST_0_i_2_n_0;
  wire fifo_overflow_o;
  wire fifo_we_i;
  wire full_r;
  wire \g_async.i_sync_rd2wr_n_0 ;
  wire \g_async.i_sync_rd2wr_n_1 ;
  wire \g_async.i_sync_rd2wr_n_17 ;
  wire \g_async.i_sync_rd2wr_n_18 ;
  wire \g_async.i_sync_rd2wr_n_19 ;
  wire \g_async.i_sync_rd2wr_n_2 ;
  wire \g_async.i_sync_rd2wr_n_20 ;
  wire \g_async.i_sync_rd2wr_n_3 ;
  wire \g_async.i_sync_rd2wr_n_4 ;
  wire \g_async.i_sync_rd2wr_n_5 ;
  wire \g_async.i_sync_rd2wr_n_6 ;
  wire \g_async.i_sync_rd2wr_n_7 ;
  wire \g_async.i_sync_rd2wr_n_9 ;
  wire \g_async.i_sync_wr2rd_n_0 ;
  wire \g_async.i_sync_wr2rd_n_1 ;
  wire \g_async.i_sync_wr2rd_n_10 ;
  wire \g_async.i_sync_wr2rd_n_11 ;
  wire \g_async.i_sync_wr2rd_n_12 ;
  wire \g_async.i_sync_wr2rd_n_13 ;
  wire \g_async.i_sync_wr2rd_n_14 ;
  wire \g_async.i_sync_wr2rd_n_2 ;
  wire \g_async.i_sync_wr2rd_n_3 ;
  wire \g_async.i_sync_wr2rd_n_4 ;
  wire \g_async.i_sync_wr2rd_n_5 ;
  wire \g_async.i_sync_wr2rd_n_6 ;
  wire \g_async.i_sync_wr2rd_n_7 ;
  wire \g_async.i_sync_wr2rd_n_8 ;
  wire \g_async.i_sync_wr2rd_n_9 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_9__0_n_0;
  wire i__carry__0_i_9__0_n_1;
  wire i__carry__0_i_9__0_n_2;
  wire i__carry__0_i_9__0_n_3;
  wire i__carry__0_i_9_n_0;
  wire i__carry__0_i_9_n_1;
  wire i__carry__0_i_9_n_2;
  wire i__carry__0_i_9_n_3;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_6__0_n_2;
  wire i__carry__1_i_6__0_n_3;
  wire i__carry__1_i_6__0_n_5;
  wire i__carry__1_i_6__0_n_6;
  wire i__carry__1_i_6_n_2;
  wire i__carry__1_i_6_n_3;
  wire i__carry_i_10__0_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_10_n_1;
  wire i__carry_i_10_n_2;
  wire i__carry_i_10_n_3;
  wire i__carry_i_10_n_4;
  wire i__carry_i_10_n_5;
  wire i__carry_i_10_n_6;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_9__1_n_0;
  wire i__carry_i_9__1_n_1;
  wire i__carry_i_9__1_n_2;
  wire i__carry_i_9__1_n_3;
  wire i__carry_i_9_n_0;
  wire [9:0]p_1_in;
  wire [10:1]rd_ptr_r;
  wire [0:0]\rd_ptr_r_reg[0]_0 ;
  wire [0:0]\rd_ptr_r_reg[10]_0 ;
  wire \rd_ptr_r_reg[10]_1 ;
  wire \rd_ptr_r_reg[1]_0 ;
  wire \rd_ptr_r_reg[3]_0 ;
  wire [3:0]\rd_ptr_r_reg[7]_0 ;
  wire [10:0]ret;
  wire ret_carry__0_i_1_n_0;
  wire ret_carry__0_i_2_n_0;
  wire ret_carry__0_i_3_n_0;
  wire ret_carry__0_i_4_n_0;
  wire ret_carry__0_n_0;
  wire ret_carry__0_n_1;
  wire ret_carry__0_n_2;
  wire ret_carry__0_n_3;
  wire ret_carry__0_n_4;
  wire ret_carry__0_n_5;
  wire ret_carry__0_n_6;
  wire ret_carry__0_n_7;
  wire ret_carry__1_i_1_n_0;
  wire ret_carry__1_i_2_n_0;
  wire ret_carry__1_i_3_n_0;
  wire ret_carry__1_n_2;
  wire ret_carry__1_n_3;
  wire ret_carry__1_n_5;
  wire ret_carry__1_n_6;
  wire ret_carry__1_n_7;
  wire ret_carry_i_1_n_0;
  wire ret_carry_i_2_n_0;
  wire ret_carry_i_3_n_0;
  wire ret_carry_i_4_n_0;
  wire ret_carry_i_5_n_0;
  wire ret_carry_i_6_n_0;
  wire ret_carry_i_7_n_0;
  wire ret_carry_i_8_n_0;
  wire ret_carry_n_0;
  wire ret_carry_n_1;
  wire ret_carry_n_2;
  wire ret_carry_n_3;
  wire ret_carry_n_4;
  wire ret_carry_n_5;
  wire ret_carry_n_6;
  wire ret_carry_n_7;
  wire \ret_inferred__1/i__carry__0_n_0 ;
  wire \ret_inferred__1/i__carry__0_n_1 ;
  wire \ret_inferred__1/i__carry__0_n_2 ;
  wire \ret_inferred__1/i__carry__0_n_3 ;
  wire \ret_inferred__1/i__carry__0_n_4 ;
  wire \ret_inferred__1/i__carry__0_n_5 ;
  wire \ret_inferred__1/i__carry__0_n_6 ;
  wire \ret_inferred__1/i__carry__0_n_7 ;
  wire \ret_inferred__1/i__carry__1_n_2 ;
  wire \ret_inferred__1/i__carry__1_n_3 ;
  wire \ret_inferred__1/i__carry__1_n_5 ;
  wire \ret_inferred__1/i__carry__1_n_6 ;
  wire \ret_inferred__1/i__carry__1_n_7 ;
  wire \ret_inferred__1/i__carry_n_0 ;
  wire \ret_inferred__1/i__carry_n_1 ;
  wire \ret_inferred__1/i__carry_n_2 ;
  wire \ret_inferred__1/i__carry_n_3 ;
  wire \ret_inferred__1/i__carry_n_4 ;
  wire \ret_inferred__1/i__carry_n_5 ;
  wire \ret_inferred__1/i__carry_n_6 ;
  wire \ret_inferred__1/i__carry_n_7 ;
  wire rst;
  wire [10:0]sel0;
  wire [10:0]wr_ptr_r;
  wire \wr_ptr_r_reg[0]_0 ;
  wire [3:2]\NLW__inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:2]\NLW__inferred__6/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__6/i__carry__1_O_UNCONNECTED ;
  wire [3:2]NLW_i__carry__1_i_6_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__1_i_6_O_UNCONNECTED;
  wire [3:2]NLW_i__carry__1_i_6__0_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__1_i_6__0_O_UNCONNECTED;
  wire [3:2]NLW_ret_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_ret_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_ret_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ret_inferred__1/i__carry__1_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(sel0[3:0]),
        .S({\g_async.i_sync_rd2wr_n_17 ,\g_async.i_sync_rd2wr_n_18 ,\g_async.i_sync_rd2wr_n_19 ,\g_async.i_sync_rd2wr_n_20 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({p_1_in[7:6],\g_async.i_sync_rd2wr_n_7 ,p_1_in[4]}),
        .O(sel0[7:4]),
        .S({\g_async.i_sync_rd2wr_n_0 ,\g_async.i_sync_rd2wr_n_1 ,\g_async.i_sync_rd2wr_n_2 ,\g_async.i_sync_rd2wr_n_3 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW__inferred__1/i__carry__1_CO_UNCONNECTED [3:2],\_inferred__1/i__carry__1_n_2 ,\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_in[9],\g_async.i_sync_rd2wr_n_9 }),
        .O({\NLW__inferred__1/i__carry__1_O_UNCONNECTED [3],sel0[10:8]}),
        .S({1'b0,\g_async.i_sync_rd2wr_n_4 ,\g_async.i_sync_rd2wr_n_5 ,\g_async.i_sync_rd2wr_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__6/i__carry_n_0 ,\_inferred__6/i__carry_n_1 ,\_inferred__6/i__carry_n_2 ,\_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\g_async.i_sync_wr2rd_n_7 ,\g_async.i_sync_wr2rd_n_8 ,\g_async.i_sync_wr2rd_n_9 ,DI}),
        .O(O),
        .S({\g_async.i_sync_wr2rd_n_10 ,\g_async.i_sync_wr2rd_n_11 ,\g_async.i_sync_wr2rd_n_12 ,\g_async.i_sync_wr2rd_n_13 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__0 
       (.CI(\_inferred__6/i__carry_n_0 ),
        .CO({\_inferred__6/i__carry__0_n_0 ,\_inferred__6/i__carry__0_n_1 ,\_inferred__6/i__carry__0_n_2 ,\_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[23] ),
        .O(\data_r_reg[1][8] ),
        .S({\g_async.i_sync_wr2rd_n_0 ,\g_async.i_sync_wr2rd_n_1 ,\g_async.i_sync_wr2rd_n_2 ,\g_async.i_sync_wr2rd_n_3 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__1 
       (.CI(\_inferred__6/i__carry__0_n_0 ),
        .CO({\NLW__inferred__6/i__carry__1_CO_UNCONNECTED [3:2],\_inferred__6/i__carry__1_n_2 ,\_inferred__6/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\g_async.i_sync_wr2rd_n_14 ,\axi_rdata_reg[26] }),
        .O({\NLW__inferred__6/i__carry__1_O_UNCONNECTED [3],\data_r_reg[1][10] }),
        .S({1'b0,\g_async.i_sync_wr2rd_n_4 ,\g_async.i_sync_wr2rd_n_5 ,\g_async.i_sync_wr2rd_n_6 }));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \axi_rdata[1]_i_6 
       (.I0(O[2]),
        .I1(O[1]),
        .O(\_inferred__6/i__carry_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    empty_r_i_1
       (.I0(O[1]),
        .I1(O[2]),
        .I2(\_inferred__6/i__carry__0_0 ),
        .I3(\_inferred__6/i__carry__1_0 ),
        .I4(O[0]),
        .O(empty));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_r_i_2
       (.I0(O[3]),
        .I1(\data_r_reg[1][8] [0]),
        .I2(\data_r_reg[1][8] [2]),
        .I3(\data_r_reg[1][8] [1]),
        .O(\_inferred__6/i__carry__0_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_r_i_3
       (.I0(\data_r_reg[1][8] [3]),
        .I1(\data_r_reg[1][10] [0]),
        .I2(\data_r_reg[1][10] [2]),
        .I3(\data_r_reg[1][10] [1]),
        .O(\_inferred__6/i__carry__1_0 ));
  FDSE empty_r_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(empty),
        .Q(empty_r),
        .S(rst));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    fifo_afull_o_INST_0
       (.I0(sel0[10]),
        .I1(fifo_afull_o_INST_0_i_1_n_0),
        .I2(sel0[9]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .I5(sel0[1]),
        .O(fifo_afull_o));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    fifo_afull_o_INST_0_i_1
       (.I0(sel0[8]),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[5]),
        .I5(sel0[0]),
        .O(fifo_afull_o_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    fifo_full_o_INST_0
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[7]),
        .I3(fifo_full_o_INST_0_i_1_n_0),
        .I4(fifo_full_o_INST_0_i_2_n_0),
        .O(fifo_full_o));
  LUT4 #(
    .INIT(16'hFFFD)) 
    fifo_full_o_INST_0_i_1
       (.I0(sel0[10]),
        .I1(sel0[2]),
        .I2(sel0[4]),
        .I3(sel0[1]),
        .O(fifo_full_o_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_full_o_INST_0_i_2
       (.I0(sel0[9]),
        .I1(sel0[6]),
        .I2(sel0[8]),
        .I3(sel0[5]),
        .O(fifo_full_o_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_overflow_o_INST_0
       (.I0(full_r),
        .I1(fifo_we_i),
        .O(fifo_overflow_o));
  LUT2 #(
    .INIT(4'hE)) 
    full_r_i_1
       (.I0(\wr_ptr_r_reg[0]_0 ),
        .I1(fifo_clear_i),
        .O(rst));
  FDRE full_r_reg
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(fifo_full_o),
        .Q(full_r),
        .R(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GraySync \g_async.i_sync_rd2wr 
       (.DI({p_1_in[9],\g_async.i_sync_rd2wr_n_9 }),
        .Q(wr_ptr_r[10]),
        .S({\g_async.i_sync_rd2wr_n_0 ,\g_async.i_sync_rd2wr_n_1 ,\g_async.i_sync_rd2wr_n_2 ,\g_async.i_sync_rd2wr_n_3 }),
        .\_inferred__1/i__carry__1 (ret_carry_i_6_n_0),
        .\data_r_reg[0][10]_0 ({rd_ptr_r,Q}),
        .\data_r_reg[1][10]_0 ({\g_async.i_sync_rd2wr_n_4 ,\g_async.i_sync_rd2wr_n_5 ,\g_async.i_sync_rd2wr_n_6 }),
        .\data_r_reg[1][4]_0 ({\g_async.i_sync_rd2wr_n_17 ,\g_async.i_sync_rd2wr_n_18 ,\g_async.i_sync_rd2wr_n_19 ,\g_async.i_sync_rd2wr_n_20 }),
        .\data_r_reg[1][5]_0 (\g_async.i_sync_rd2wr_n_7 ),
        .fifo_clk_i(fifo_clk_i),
        .p_1_in({p_1_in[7:6],p_1_in[4:0]}),
        .ret(ret));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GraySync_0 \g_async.i_sync_wr2rd 
       (.DI({\g_async.i_sync_wr2rd_n_7 ,\g_async.i_sync_wr2rd_n_8 ,\g_async.i_sync_wr2rd_n_9 }),
        .O({i__carry__1_i_6__0_n_5,i__carry__1_i_6__0_n_6,\rd_ptr_r_reg[10]_0 }),
        .Q(rd_ptr_r[10]),
        .S({\g_async.i_sync_wr2rd_n_0 ,\g_async.i_sync_wr2rd_n_1 ,\g_async.i_sync_wr2rd_n_2 ,\g_async.i_sync_wr2rd_n_3 }),
        .\_inferred__6/i__carry (\rd_ptr_r_reg[10]_1 ),
        .\_inferred__6/i__carry_0 ({i__carry_i_10_n_4,i__carry_i_10_n_5,i__carry_i_10_n_6}),
        .\_inferred__6/i__carry_1 (DI),
        .\_inferred__6/i__carry__0 (\rd_ptr_r_reg[7]_0 ),
        .axil_aclk(axil_aclk),
        .\data_r_reg[0][10]_0 (wr_ptr_r),
        .\data_r_reg[1][10]_0 ({\g_async.i_sync_wr2rd_n_4 ,\g_async.i_sync_wr2rd_n_5 ,\g_async.i_sync_wr2rd_n_6 }),
        .\data_r_reg[1][10]_1 (\g_async.i_sync_wr2rd_n_14 ),
        .\data_r_reg[1][3]_0 ({\g_async.i_sync_wr2rd_n_10 ,\g_async.i_sync_wr2rd_n_11 ,\g_async.i_sync_wr2rd_n_12 ,\g_async.i_sync_wr2rd_n_13 }));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__0
       (.I0(rd_ptr_r[7]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2__0
       (.I0(rd_ptr_r[6]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3__0
       (.I0(rd_ptr_r[5]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4__0
       (.I0(rd_ptr_r[4]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry__0_i_4__0_n_0));
  CARRY4 i__carry__0_i_9
       (.CI(i__carry_i_9__1_n_0),
        .CO({i__carry__0_i_9_n_0,i__carry__0_i_9_n_1,i__carry__0_i_9_n_2,i__carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ret[7:4]),
        .S(wr_ptr_r[7:4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 i__carry__0_i_9__0
       (.CI(i__carry_i_10_n_0),
        .CO({i__carry__0_i_9__0_n_0,i__carry__0_i_9__0_n_1,i__carry__0_i_9__0_n_2,i__carry__0_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rd_ptr_r_reg[7]_0 ),
        .S(rd_ptr_r[7:4]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(rd_ptr_r[10]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_2__0
       (.I0(rd_ptr_r[9]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_3__1
       (.I0(rd_ptr_r[8]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry__1_i_3__1_n_0));
  CARRY4 i__carry__1_i_6
       (.CI(i__carry__0_i_9_n_0),
        .CO({NLW_i__carry__1_i_6_CO_UNCONNECTED[3:2],i__carry__1_i_6_n_2,i__carry__1_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__1_i_6_O_UNCONNECTED[3],ret[10:8]}),
        .S({1'b0,wr_ptr_r[10:8]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 i__carry__1_i_6__0
       (.CI(i__carry__0_i_9__0_n_0),
        .CO({NLW_i__carry__1_i_6__0_CO_UNCONNECTED[3:2],i__carry__1_i_6__0_n_2,i__carry__1_i_6__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__1_i_6__0_O_UNCONNECTED[3],i__carry__1_i_6__0_n_5,i__carry__1_i_6__0_n_6,\rd_ptr_r_reg[10]_0 }),
        .S({1'b0,rd_ptr_r[10:8]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 i__carry_i_10
       (.CI(1'b0),
        .CO({i__carry_i_10_n_0,i__carry_i_10_n_1,i__carry_i_10_n_2,i__carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q}),
        .O({i__carry_i_10_n_4,i__carry_i_10_n_5,i__carry_i_10_n_6,\rd_ptr_r_reg[0]_0 }),
        .S({rd_ptr_r[3:1],S}));
  LUT3 #(
    .INIT(8'hA6)) 
    i__carry_i_10__0
       (.I0(wr_ptr_r[0]),
        .I1(fifo_we_i),
        .I2(full_r),
        .O(i__carry_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2
       (.I0(rd_ptr_r[3]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_3
       (.I0(rd_ptr_r[2]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__0
       (.I0(rd_ptr_r[1]),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(Q),
        .I1(\rd_ptr_r_reg[10]_1 ),
        .O(i__carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    i__carry_i_7
       (.I0(rd_ptr_r[1]),
        .I1(Q),
        .I2(rd_ptr_r[7]),
        .I3(rd_ptr_r[6]),
        .I4(i__carry_i_9_n_0),
        .O(\rd_ptr_r_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    i__carry_i_9
       (.I0(rd_ptr_r[2]),
        .I1(rd_ptr_r[3]),
        .I2(rd_ptr_r[9]),
        .I3(rd_ptr_r[8]),
        .I4(rd_ptr_r[5]),
        .I5(rd_ptr_r[4]),
        .O(i__carry_i_9_n_0));
  CARRY4 i__carry_i_9__1
       (.CI(1'b0),
        .CO({i__carry_i_9__1_n_0,i__carry_i_9__1_n_1,i__carry_i_9__1_n_2,i__carry_i_9__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,wr_ptr_r[0]}),
        .O(ret[3:0]),
        .S({wr_ptr_r[3:1],i__carry_i_10__0_n_0}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tdpram__parameterized0 i_memory
       (.DOBDO(DOBDO),
        .Q(wr_ptr_r[9:0]),
        .axil_aclk(axil_aclk),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_we_i(fifo_we_i),
        .full_r(full_r),
        .ram_reg_0({rd_ptr_r[9:1],Q}));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry_n_7 ),
        .Q(Q),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry__1_n_5 ),
        .Q(rd_ptr_r[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry_n_6 ),
        .Q(rd_ptr_r[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry_n_5 ),
        .Q(rd_ptr_r[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry_n_4 ),
        .Q(rd_ptr_r[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry__0_n_7 ),
        .Q(rd_ptr_r[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry__0_n_6 ),
        .Q(rd_ptr_r[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry__0_n_5 ),
        .Q(rd_ptr_r[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry__0_n_4 ),
        .Q(rd_ptr_r[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry__1_n_7 ),
        .Q(rd_ptr_r[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\ret_inferred__1/i__carry__1_n_6 ),
        .Q(rd_ptr_r[9]),
        .R(rst));
  CARRY4 ret_carry
       (.CI(1'b0),
        .CO({ret_carry_n_0,ret_carry_n_1,ret_carry_n_2,ret_carry_n_3}),
        .CYINIT(ret_carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({ret_carry_n_4,ret_carry_n_5,ret_carry_n_6,ret_carry_n_7}),
        .S({ret_carry_i_2_n_0,ret_carry_i_3_n_0,ret_carry_i_4_n_0,ret_carry_i_5_n_0}));
  CARRY4 ret_carry__0
       (.CI(ret_carry_n_0),
        .CO({ret_carry__0_n_0,ret_carry__0_n_1,ret_carry__0_n_2,ret_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({ret_carry__0_n_4,ret_carry__0_n_5,ret_carry__0_n_6,ret_carry__0_n_7}),
        .S({ret_carry__0_i_1_n_0,ret_carry__0_i_2_n_0,ret_carry__0_i_3_n_0,ret_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry__0_i_1
       (.I0(wr_ptr_r[7]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry__0_i_2
       (.I0(wr_ptr_r[6]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry__0_i_3
       (.I0(wr_ptr_r[5]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry__0_i_4
       (.I0(wr_ptr_r[4]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry__0_i_4_n_0));
  CARRY4 ret_carry__1
       (.CI(ret_carry__0_n_0),
        .CO({NLW_ret_carry__1_CO_UNCONNECTED[3:2],ret_carry__1_n_2,ret_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ret_carry__1_O_UNCONNECTED[3],ret_carry__1_n_5,ret_carry__1_n_6,ret_carry__1_n_7}),
        .S({1'b0,ret_carry__1_i_1_n_0,ret_carry__1_i_2_n_0,ret_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    ret_carry__1_i_1
       (.I0(wr_ptr_r[10]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry__1_i_2
       (.I0(wr_ptr_r[9]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry__1_i_3
       (.I0(wr_ptr_r[8]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    ret_carry_i_1
       (.I0(fifo_we_i),
        .I1(full_r),
        .I2(ret_carry_i_6_n_0),
        .O(ret_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry_i_2
       (.I0(wr_ptr_r[3]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry_i_3
       (.I0(wr_ptr_r[2]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry_i_4
       (.I0(wr_ptr_r[1]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ret_carry_i_5
       (.I0(wr_ptr_r[0]),
        .I1(ret_carry_i_6_n_0),
        .O(ret_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    ret_carry_i_6
       (.I0(wr_ptr_r[9]),
        .I1(wr_ptr_r[8]),
        .I2(wr_ptr_r[1]),
        .I3(wr_ptr_r[0]),
        .I4(ret_carry_i_7_n_0),
        .I5(ret_carry_i_8_n_0),
        .O(ret_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    ret_carry_i_7
       (.I0(fifo_we_i),
        .I1(full_r),
        .I2(wr_ptr_r[2]),
        .I3(wr_ptr_r[3]),
        .O(ret_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    ret_carry_i_8
       (.I0(wr_ptr_r[6]),
        .I1(wr_ptr_r[7]),
        .I2(wr_ptr_r[4]),
        .I3(wr_ptr_r[5]),
        .O(ret_carry_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ret_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\ret_inferred__1/i__carry_n_0 ,\ret_inferred__1/i__carry_n_1 ,\ret_inferred__1/i__carry_n_2 ,\ret_inferred__1/i__carry_n_3 }),
        .CYINIT(\rd_ptr_r_reg[3]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ret_inferred__1/i__carry_n_4 ,\ret_inferred__1/i__carry_n_5 ,\ret_inferred__1/i__carry_n_6 ,\ret_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4__0_n_0,i__carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ret_inferred__1/i__carry__0 
       (.CI(\ret_inferred__1/i__carry_n_0 ),
        .CO({\ret_inferred__1/i__carry__0_n_0 ,\ret_inferred__1/i__carry__0_n_1 ,\ret_inferred__1/i__carry__0_n_2 ,\ret_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ret_inferred__1/i__carry__0_n_4 ,\ret_inferred__1/i__carry__0_n_5 ,\ret_inferred__1/i__carry__0_n_6 ,\ret_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ret_inferred__1/i__carry__1 
       (.CI(\ret_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_ret_inferred__1/i__carry__1_CO_UNCONNECTED [3:2],\ret_inferred__1/i__carry__1_n_2 ,\ret_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ret_inferred__1/i__carry__1_O_UNCONNECTED [3],\ret_inferred__1/i__carry__1_n_5 ,\ret_inferred__1/i__carry__1_n_6 ,\ret_inferred__1/i__carry__1_n_7 }),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__1_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry_n_7),
        .Q(wr_ptr_r[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry__1_n_5),
        .Q(wr_ptr_r[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry_n_6),
        .Q(wr_ptr_r[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry_n_5),
        .Q(wr_ptr_r[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry_n_4),
        .Q(wr_ptr_r[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry__0_n_7),
        .Q(wr_ptr_r[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry__0_n_6),
        .Q(wr_ptr_r[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry__0_n_5),
        .Q(wr_ptr_r[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry__0_n_4),
        .Q(wr_ptr_r[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry__1_n_7),
        .Q(wr_ptr_r[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(ret_carry__1_n_6),
        .Q(wr_ptr_r[9]),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GraySync
   (S,
    \data_r_reg[1][10]_0 ,
    \data_r_reg[1][5]_0 ,
    DI,
    p_1_in,
    \data_r_reg[1][4]_0 ,
    \_inferred__1/i__carry__1 ,
    ret,
    Q,
    \data_r_reg[0][10]_0 ,
    fifo_clk_i);
  output [3:0]S;
  output [2:0]\data_r_reg[1][10]_0 ;
  output \data_r_reg[1][5]_0 ;
  output [1:0]DI;
  output [6:0]p_1_in;
  output [3:0]\data_r_reg[1][4]_0 ;
  input \_inferred__1/i__carry__1 ;
  input [10:0]ret;
  input [0:0]Q;
  input [10:0]\data_r_reg[0][10]_0 ;
  input fifo_clk_i;

  wire [1:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire \_inferred__1/i__carry__1 ;
  wire [9:0]bin2gray;
  wire [10:0]\data_r_reg[0] ;
  wire [10:0]\data_r_reg[0][10]_0 ;
  wire [2:0]\data_r_reg[1][10]_0 ;
  wire [3:0]\data_r_reg[1][4]_0 ;
  wire \data_r_reg[1][5]_0 ;
  wire \data_r_reg_n_0_[1][0] ;
  wire \data_r_reg_n_0_[1][9] ;
  wire fifo_clk_i;
  wire i__carry__0_i_10__0_n_0;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire [6:0]p_1_in;
  wire p_1_in_0;
  wire [10:0]ret;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][0]_i_1 
       (.I0(\data_r_reg[0][10]_0 [1]),
        .I1(\data_r_reg[0][10]_0 [0]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][1]_i_1 
       (.I0(\data_r_reg[0][10]_0 [2]),
        .I1(\data_r_reg[0][10]_0 [1]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][2]_i_1 
       (.I0(\data_r_reg[0][10]_0 [3]),
        .I1(\data_r_reg[0][10]_0 [2]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][3]_i_1 
       (.I0(\data_r_reg[0][10]_0 [4]),
        .I1(\data_r_reg[0][10]_0 [3]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][4]_i_1 
       (.I0(\data_r_reg[0][10]_0 [5]),
        .I1(\data_r_reg[0][10]_0 [4]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][5]_i_1 
       (.I0(\data_r_reg[0][10]_0 [6]),
        .I1(\data_r_reg[0][10]_0 [5]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][6]_i_1 
       (.I0(\data_r_reg[0][10]_0 [7]),
        .I1(\data_r_reg[0][10]_0 [6]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][7]_i_1 
       (.I0(\data_r_reg[0][10]_0 [8]),
        .I1(\data_r_reg[0][10]_0 [7]),
        .O(bin2gray[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][8]_i_1 
       (.I0(\data_r_reg[0][10]_0 [9]),
        .I1(\data_r_reg[0][10]_0 [8]),
        .O(bin2gray[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][9]_i_1 
       (.I0(\data_r_reg[0][10]_0 [10]),
        .I1(\data_r_reg[0][10]_0 [9]),
        .O(bin2gray[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[0]),
        .Q(\data_r_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0][10]_0 [10]),
        .Q(\data_r_reg[0] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[1]),
        .Q(\data_r_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[2]),
        .Q(\data_r_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[3]),
        .Q(\data_r_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[4]),
        .Q(\data_r_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[5]),
        .Q(\data_r_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[6]),
        .Q(\data_r_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[7]),
        .Q(\data_r_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[8]),
        .Q(\data_r_reg[0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[9]),
        .Q(\data_r_reg[0] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [0]),
        .Q(\data_r_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [10]),
        .Q(p_1_in_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [2]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [3]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [4]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [5]),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [6]),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [7]),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [8]),
        .Q(p_0_in20_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0] [9]),
        .Q(\data_r_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    i__carry__0_i_10__0
       (.I0(p_0_in14_in),
        .I1(p_0_in20_in),
        .I2(\data_r_reg_n_0_[1][9] ),
        .I3(p_1_in_0),
        .I4(p_0_in17_in),
        .O(i__carry__0_i_10__0_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i__carry__0_i_1__1
       (.I0(p_0_in17_in),
        .I1(p_1_in_0),
        .I2(\data_r_reg_n_0_[1][9] ),
        .I3(p_0_in20_in),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h69969669)) 
    i__carry__0_i_2__1
       (.I0(p_0_in17_in),
        .I1(p_1_in_0),
        .I2(\data_r_reg_n_0_[1][9] ),
        .I3(p_0_in20_in),
        .I4(p_0_in14_in),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    i__carry__0_i_3__1
       (.I0(p_0_in11_in),
        .I1(p_0_in17_in),
        .I2(p_1_in_0),
        .I3(\data_r_reg_n_0_[1][9] ),
        .I4(p_0_in20_in),
        .I5(p_0_in14_in),
        .O(\data_r_reg[1][5]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__1
       (.I0(p_0_in8_in),
        .I1(\data_r_reg[1][5]_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h9669699696699669)) 
    i__carry__0_i_5
       (.I0(p_0_in20_in),
        .I1(\data_r_reg_n_0_[1][9] ),
        .I2(p_1_in_0),
        .I3(p_0_in17_in),
        .I4(\_inferred__1/i__carry__1 ),
        .I5(ret[7]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_10__0_n_0),
        .I1(\_inferred__1/i__carry__1 ),
        .I2(ret[6]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h9A)) 
    i__carry__0_i_7
       (.I0(\data_r_reg[1][5]_0 ),
        .I1(\_inferred__1/i__carry__1 ),
        .I2(ret[5]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6966)) 
    i__carry__0_i_8
       (.I0(\data_r_reg[1][5]_0 ),
        .I1(p_0_in8_in),
        .I2(\_inferred__1/i__carry__1 ),
        .I3(ret[4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(\data_r_reg_n_0_[1][9] ),
        .I1(p_1_in_0),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_2__1
       (.I0(p_0_in20_in),
        .I1(\data_r_reg_n_0_[1][9] ),
        .I2(p_1_in_0),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h59A9)) 
    i__carry__1_i_3
       (.I0(p_1_in_0),
        .I1(ret[10]),
        .I2(\_inferred__1/i__carry__1 ),
        .I3(Q),
        .O(\data_r_reg[1][10]_0 [2]));
  LUT4 #(
    .INIT(16'h9699)) 
    i__carry__1_i_4__0
       (.I0(\data_r_reg_n_0_[1][9] ),
        .I1(p_1_in_0),
        .I2(\_inferred__1/i__carry__1 ),
        .I3(ret[9]),
        .O(\data_r_reg[1][10]_0 [1]));
  LUT5 #(
    .INIT(32'h69966969)) 
    i__carry__1_i_5
       (.I0(p_1_in_0),
        .I1(\data_r_reg_n_0_[1][9] ),
        .I2(p_0_in20_in),
        .I3(\_inferred__1/i__carry__1 ),
        .I4(ret[8]),
        .O(\data_r_reg[1][10]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1__0
       (.I0(p_0_in5_in),
        .I1(\data_r_reg[1][5]_0 ),
        .I2(p_0_in8_in),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    i__carry_i_2__0
       (.I0(p_0_in2_in),
        .I1(p_0_in8_in),
        .I2(\data_r_reg[1][5]_0 ),
        .I3(p_0_in5_in),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    i__carry_i_3__0
       (.I0(p_0_in),
        .I1(p_0_in5_in),
        .I2(\data_r_reg[1][5]_0 ),
        .I3(p_0_in8_in),
        .I4(p_0_in2_in),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    i__carry_i_4__1
       (.I0(\data_r_reg_n_0_[1][0] ),
        .I1(p_0_in2_in),
        .I2(p_0_in8_in),
        .I3(\data_r_reg[1][5]_0 ),
        .I4(p_0_in5_in),
        .I5(p_0_in),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h96699696)) 
    i__carry_i_5__0
       (.I0(p_0_in8_in),
        .I1(\data_r_reg[1][5]_0 ),
        .I2(p_0_in5_in),
        .I3(\_inferred__1/i__carry__1 ),
        .I4(ret[3]),
        .O(\data_r_reg[1][4]_0 [3]));
  LUT6 #(
    .INIT(64'h6996966969966996)) 
    i__carry_i_6__0
       (.I0(p_0_in5_in),
        .I1(\data_r_reg[1][5]_0 ),
        .I2(p_0_in8_in),
        .I3(p_0_in2_in),
        .I4(\_inferred__1/i__carry__1 ),
        .I5(ret[2]),
        .O(\data_r_reg[1][4]_0 [2]));
  LUT3 #(
    .INIT(8'h9A)) 
    i__carry_i_7__0
       (.I0(p_1_in[1]),
        .I1(\_inferred__1/i__carry__1 ),
        .I2(ret[1]),
        .O(\data_r_reg[1][4]_0 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    i__carry_i_8__0
       (.I0(p_1_in[1]),
        .I1(\data_r_reg_n_0_[1][0] ),
        .I2(\_inferred__1/i__carry__1 ),
        .I3(ret[0]),
        .O(\data_r_reg[1][4]_0 [0]));
endmodule

(* ORIG_REF_NAME = "GraySync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GraySync_0
   (S,
    \data_r_reg[1][10]_0 ,
    DI,
    \data_r_reg[1][3]_0 ,
    \data_r_reg[1][10]_1 ,
    \_inferred__6/i__carry__0 ,
    \_inferred__6/i__carry ,
    O,
    \_inferred__6/i__carry_0 ,
    Q,
    \data_r_reg[0][10]_0 ,
    \_inferred__6/i__carry_1 ,
    axil_aclk);
  output [3:0]S;
  output [2:0]\data_r_reg[1][10]_0 ;
  output [2:0]DI;
  output [3:0]\data_r_reg[1][3]_0 ;
  output [0:0]\data_r_reg[1][10]_1 ;
  input [3:0]\_inferred__6/i__carry__0 ;
  input \_inferred__6/i__carry ;
  input [2:0]O;
  input [2:0]\_inferred__6/i__carry_0 ;
  input [0:0]Q;
  input [10:0]\data_r_reg[0][10]_0 ;
  input [0:0]\_inferred__6/i__carry_1 ;
  input axil_aclk;

  wire [2:0]DI;
  wire [2:0]O;
  wire [0:0]Q;
  wire [3:0]S;
  wire \_inferred__6/i__carry ;
  wire [2:0]\_inferred__6/i__carry_0 ;
  wire [0:0]\_inferred__6/i__carry_1 ;
  wire [3:0]\_inferred__6/i__carry__0 ;
  wire axil_aclk;
  wire [9:0]bin2gray;
  wire [10:0]\data_r_reg[0][10]_0 ;
  wire [2:0]\data_r_reg[1][10]_0 ;
  wire [0:0]\data_r_reg[1][10]_1 ;
  wire [3:0]\data_r_reg[1][3]_0 ;
  wire \data_r_reg_n_0_[0][0] ;
  wire \data_r_reg_n_0_[0][10] ;
  wire \data_r_reg_n_0_[0][1] ;
  wire \data_r_reg_n_0_[0][2] ;
  wire \data_r_reg_n_0_[0][3] ;
  wire \data_r_reg_n_0_[0][4] ;
  wire \data_r_reg_n_0_[0][5] ;
  wire \data_r_reg_n_0_[0][6] ;
  wire \data_r_reg_n_0_[0][7] ;
  wire \data_r_reg_n_0_[0][8] ;
  wire \data_r_reg_n_0_[0][9] ;
  wire \data_r_reg_n_0_[1][0] ;
  wire \data_r_reg_n_0_[1][9] ;
  wire i__carry__0_i_10_n_0;
  wire i__carry_i_9__0_n_0;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][0]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [1]),
        .I1(\data_r_reg[0][10]_0 [0]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][1]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [2]),
        .I1(\data_r_reg[0][10]_0 [1]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][2]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [3]),
        .I1(\data_r_reg[0][10]_0 [2]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][3]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [4]),
        .I1(\data_r_reg[0][10]_0 [3]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][4]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [5]),
        .I1(\data_r_reg[0][10]_0 [4]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][5]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [6]),
        .I1(\data_r_reg[0][10]_0 [5]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][6]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [7]),
        .I1(\data_r_reg[0][10]_0 [6]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][7]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [8]),
        .I1(\data_r_reg[0][10]_0 [7]),
        .O(bin2gray[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][8]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [9]),
        .I1(\data_r_reg[0][10]_0 [8]),
        .O(bin2gray[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][9]_i_1__0 
       (.I0(\data_r_reg[0][10]_0 [10]),
        .I1(\data_r_reg[0][10]_0 [9]),
        .O(bin2gray[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[0]),
        .Q(\data_r_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0][10]_0 [10]),
        .Q(\data_r_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[1]),
        .Q(\data_r_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[2]),
        .Q(\data_r_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[3]),
        .Q(\data_r_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[4]),
        .Q(\data_r_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[5]),
        .Q(\data_r_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[6]),
        .Q(\data_r_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[7]),
        .Q(\data_r_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[8]),
        .Q(\data_r_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[9]),
        .Q(\data_r_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][0] ),
        .Q(\data_r_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][10] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][1] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][2] ),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][3] ),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][4] ),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][5] ),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][6] ),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][7] ),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][8] ),
        .Q(p_0_in20_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][9] ),
        .Q(\data_r_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_10
       (.I0(p_1_in),
        .I1(\data_r_reg_n_0_[1][9] ),
        .O(i__carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hD22D2DD22DD2D22D)) 
    i__carry__0_i_5__0
       (.I0(\_inferred__6/i__carry__0 [3]),
        .I1(\_inferred__6/i__carry ),
        .I2(p_0_in20_in),
        .I3(\data_r_reg_n_0_[1][9] ),
        .I4(p_1_in),
        .I5(p_0_in17_in),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hD22D2DD22DD2D22D)) 
    i__carry__0_i_6__0
       (.I0(\_inferred__6/i__carry__0 [2]),
        .I1(\_inferred__6/i__carry ),
        .I2(p_0_in17_in),
        .I3(i__carry__0_i_10_n_0),
        .I4(p_0_in20_in),
        .I5(p_0_in14_in),
        .O(S[2]));
  LUT3 #(
    .INIT(8'hD2)) 
    i__carry__0_i_7__0
       (.I0(\_inferred__6/i__carry__0 [1]),
        .I1(\_inferred__6/i__carry ),
        .I2(i__carry_i_9__0_n_0),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i__carry__0_i_8__0
       (.I0(\_inferred__6/i__carry__0 [0]),
        .I1(\_inferred__6/i__carry ),
        .I2(i__carry_i_9__0_n_0),
        .I3(p_0_in8_in),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__1
       (.I0(p_1_in),
        .I1(\data_r_reg_n_0_[1][9] ),
        .O(\data_r_reg[1][10]_1 ));
  LUT4 #(
    .INIT(16'h59A9)) 
    i__carry__1_i_3__0
       (.I0(p_1_in),
        .I1(O[2]),
        .I2(\_inferred__6/i__carry ),
        .I3(Q),
        .O(\data_r_reg[1][10]_0 [2]));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_4
       (.I0(O[1]),
        .I1(\_inferred__6/i__carry ),
        .I2(\data_r_reg_n_0_[1][9] ),
        .I3(p_1_in),
        .O(\data_r_reg[1][10]_0 [1]));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    i__carry__1_i_5__0
       (.I0(O[0]),
        .I1(\_inferred__6/i__carry ),
        .I2(p_1_in),
        .I3(\data_r_reg_n_0_[1][9] ),
        .I4(p_0_in20_in),
        .O(\data_r_reg[1][10]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_1__1
       (.I0(p_0_in5_in),
        .I1(i__carry_i_9__0_n_0),
        .I2(p_0_in8_in),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h9669)) 
    i__carry_i_2__1
       (.I0(p_0_in2_in),
        .I1(p_0_in8_in),
        .I2(i__carry_i_9__0_n_0),
        .I3(p_0_in5_in),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    i__carry_i_3__1
       (.I0(p_0_in),
        .I1(p_0_in5_in),
        .I2(i__carry_i_9__0_n_0),
        .I3(p_0_in8_in),
        .I4(p_0_in2_in),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h96966996)) 
    i__carry_i_5__1
       (.I0(p_0_in5_in),
        .I1(i__carry_i_9__0_n_0),
        .I2(p_0_in8_in),
        .I3(\_inferred__6/i__carry_0 [2]),
        .I4(\_inferred__6/i__carry ),
        .O(\data_r_reg[1][3]_0 [3]));
  LUT6 #(
    .INIT(64'h6996699696696996)) 
    i__carry_i_6__1
       (.I0(p_0_in2_in),
        .I1(p_0_in8_in),
        .I2(i__carry_i_9__0_n_0),
        .I3(p_0_in5_in),
        .I4(\_inferred__6/i__carry_0 [1]),
        .I5(\_inferred__6/i__carry ),
        .O(\data_r_reg[1][3]_0 [2]));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry_i_7__1
       (.I0(\_inferred__6/i__carry_0 [0]),
        .I1(\_inferred__6/i__carry ),
        .I2(DI[0]),
        .O(\data_r_reg[1][3]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_8__1
       (.I0(\_inferred__6/i__carry_1 ),
        .I1(DI[0]),
        .I2(\data_r_reg_n_0_[1][0] ),
        .O(\data_r_reg[1][3]_0 [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    i__carry_i_9__0
       (.I0(p_0_in11_in),
        .I1(p_0_in17_in),
        .I2(p_1_in),
        .I3(\data_r_reg_n_0_[1][9] ),
        .I4(p_0_in20_in),
        .I5(p_0_in14_in),
        .O(i__carry_i_9__0_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock
   (axi_arready_reg,
    axi_awready_reg,
    axif_rdata,
    axi_rvalid_reg,
    axi_wready_reg,
    axif_bvalid,
    ram_data_o,
    axil_awready,
    axil_wready,
    axil_arready,
    axil_rdata,
    axi_rvalid_reg_0,
    fifo_full_o,
    reg0_o,
    reg1_o,
    axif_rlast,
    fifo_overflow_o,
    fifo_afull_o,
    axil_bvalid,
    axif_arvalid,
    axif_aresetn,
    axif_awvalid,
    fifo_we_i,
    axif_wvalid,
    axif_wlast,
    axif_bready,
    axif_aclk,
    ram_clk_i,
    ram_addr_i,
    axif_wdata,
    ram_data_i,
    ram_we_i,
    fifo_clk_i,
    axil_aclk,
    fifo_data_i,
    axil_awaddr,
    axil_araddr,
    axil_arvalid,
    axif_arlen,
    axif_awburst,
    axif_awlen,
    axif_arburst,
    axil_wdata,
    axil_wvalid,
    axil_awvalid,
    axif_rready,
    axif_araddr,
    axif_awaddr,
    fifo_clear_i,
    reg1_i,
    reg0_i,
    axil_aresetn,
    axil_bready,
    axil_rready);
  output axi_arready_reg;
  output axi_awready_reg;
  output [15:0]axif_rdata;
  output axi_rvalid_reg;
  output axi_wready_reg;
  output axif_bvalid;
  output [15:0]ram_data_o;
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output [26:0]axil_rdata;
  output axi_rvalid_reg_0;
  output fifo_full_o;
  output [7:0]reg0_o;
  output [7:0]reg1_o;
  output axif_rlast;
  output fifo_overflow_o;
  output fifo_afull_o;
  output axil_bvalid;
  input axif_arvalid;
  input axif_aresetn;
  input axif_awvalid;
  input fifo_we_i;
  input axif_wvalid;
  input axif_wlast;
  input axif_bready;
  input axif_aclk;
  input ram_clk_i;
  input [15:0]ram_addr_i;
  input [15:0]axif_wdata;
  input [15:0]ram_data_i;
  input ram_we_i;
  input fifo_clk_i;
  input axil_aclk;
  input [15:0]fifo_data_i;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;
  input axil_arvalid;
  input [7:0]axif_arlen;
  input [1:0]axif_awburst;
  input [7:0]axif_awlen;
  input [1:0]axif_arburst;
  input [7:0]axil_wdata;
  input axil_wvalid;
  input axil_awvalid;
  input axif_rready;
  input [15:0]axif_araddr;
  input [15:0]axif_awaddr;
  input fifo_clear_i;
  input [7:0]reg1_i;
  input [7:0]reg0_i;
  input axil_aresetn;
  input axil_bready;
  input axil_rready;

  wire AXIF_inst_n_38;
  wire AXIF_inst_n_39;
  wire AXIF_inst_n_40;
  wire AXIF_inst_n_41;
  wire AXIF_inst_n_42;
  wire AXIF_inst_n_43;
  wire AXIF_inst_n_44;
  wire AXIF_inst_n_45;
  wire AXIF_inst_n_46;
  wire AXIF_inst_n_47;
  wire AXIF_inst_n_48;
  wire AXIF_inst_n_49;
  wire AXIF_inst_n_50;
  wire AXIF_inst_n_51;
  wire AXIF_inst_n_52;
  wire AXIF_inst_n_53;
  wire AXIF_inst_n_54;
  wire AXIF_inst_n_55;
  wire AXIF_inst_n_56;
  wire AXIF_inst_n_57;
  wire AXIF_inst_n_58;
  wire AXIF_inst_n_59;
  wire AXIF_inst_n_60;
  wire AXIF_inst_n_61;
  wire AXIF_inst_n_62;
  wire AXIF_inst_n_63;
  wire AXIF_inst_n_64;
  wire AXIF_inst_n_65;
  wire AXIF_inst_n_66;
  wire AXIF_inst_n_67;
  wire AXIL_inst_n_10;
  wire AXIL_inst_n_11;
  wire AXIL_inst_n_12;
  wire AXIL_inst_n_13;
  wire AXIL_inst_n_14;
  wire AXIL_inst_n_42;
  wire AXIL_inst_n_44;
  wire AXIL_inst_n_5;
  wire AXIL_inst_n_6;
  wire AXIL_inst_n_7;
  wire AXIL_inst_n_8;
  wire AXIL_inst_n_9;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire axi_rvalid_reg_0;
  wire axi_wready_reg;
  wire axif_aclk;
  wire [15:0]axif_araddr;
  wire [1:0]axif_arburst;
  wire axif_aresetn;
  wire [7:0]axif_arlen;
  wire axif_arvalid;
  wire [15:0]axif_awaddr;
  wire [1:0]axif_awburst;
  wire [7:0]axif_awlen;
  wire axif_awvalid;
  wire axif_bready;
  wire axif_bvalid;
  wire [15:0]axif_rdata;
  wire axif_rlast;
  wire axif_rready;
  wire [15:0]axif_wdata;
  wire axif_wlast;
  wire axif_wvalid;
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
  wire [26:0]axil_rdata;
  wire axil_rready;
  wire [7:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire comblock_i_n_19;
  wire comblock_i_n_20;
  wire comblock_i_n_21;
  wire comblock_i_n_22;
  wire comblock_i_n_23;
  wire comblock_i_n_24;
  wire comblock_i_n_25;
  wire comblock_i_n_26;
  wire comblock_i_n_27;
  wire comblock_i_n_28;
  wire comblock_i_n_29;
  wire comblock_i_n_31;
  wire comblock_i_n_32;
  wire comblock_i_n_33;
  wire comblock_i_n_34;
  wire comblock_i_n_35;
  wire comblock_i_n_36;
  wire comblock_i_n_37;
  wire comblock_i_n_39;
  wire comblock_i_n_41;
  wire comblock_i_n_42;
  wire fifo_afull_o;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire fifo_full_o;
  wire [15:0]fifo_in_data;
  wire \fifo_in_g.fifo_in_i/empty_r ;
  wire [0:0]\fifo_in_g.fifo_in_i/rd_ptr_r ;
  wire fifo_in_under_r;
  wire fifo_overflow_o;
  wire fifo_we_i;
  wire [17:2]mem_adr;
  wire [15:0]mem_rd_dat;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire ram_we_i;
  wire [7:0]reg0_i;
  wire [7:0]reg0_o;
  wire [7:0]reg1_i;
  wire [7:0]reg1_o;
  wire \regs_out[1]_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIF AXIF_inst
       (.ADDRARDADDR(mem_adr),
        .WEA({AXIF_inst_n_54,AXIF_inst_n_55}),
        .addr2_i({AXIF_inst_n_38,AXIF_inst_n_39,AXIF_inst_n_40,AXIF_inst_n_41,AXIF_inst_n_42,AXIF_inst_n_43,AXIF_inst_n_44,AXIF_inst_n_45,AXIF_inst_n_46,AXIF_inst_n_47,AXIF_inst_n_48,AXIF_inst_n_49,AXIF_inst_n_50,AXIF_inst_n_51,AXIF_inst_n_52,AXIF_inst_n_53}),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .axi_wready_reg_1({AXIF_inst_n_56,AXIF_inst_n_57}),
        .axi_wready_reg_2({AXIF_inst_n_58,AXIF_inst_n_59}),
        .axi_wready_reg_3(AXIF_inst_n_60),
        .axi_wready_reg_4({AXIF_inst_n_61,AXIF_inst_n_62}),
        .axi_wready_reg_5({AXIF_inst_n_63,AXIF_inst_n_64}),
        .axi_wready_reg_6({AXIF_inst_n_65,AXIF_inst_n_66}),
        .axi_wready_reg_7(AXIF_inst_n_67),
        .axif_aclk(axif_aclk),
        .axif_araddr(axif_araddr),
        .axif_arburst(axif_arburst),
        .axif_aresetn(axif_aresetn),
        .axif_arlen(axif_arlen),
        .axif_arvalid(axif_arvalid),
        .axif_awaddr(axif_awaddr),
        .axif_awburst(axif_awburst),
        .axif_awlen(axif_awlen),
        .axif_awvalid(axif_awvalid),
        .axif_bready(axif_bready),
        .axif_bvalid(axif_bvalid),
        .axif_rdata(axif_rdata),
        .axif_rlast(axif_rlast),
        .axif_rready(axif_rready),
        .axif_wlast(axif_wlast),
        .axif_wvalid(axif_wvalid),
        .data2_o(mem_rd_dat));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL AXIL_inst
       (.DI(AXIL_inst_n_7),
        .DOBDO(fifo_in_data),
        .E(\regs_out[1]_0 ),
        .O({comblock_i_n_19,comblock_i_n_20,comblock_i_n_21,comblock_i_n_22}),
        .Q(\fifo_in_g.fifo_in_i/rd_ptr_r ),
        .S(AXIL_inst_n_14),
        .\_inferred__6/i__carry (comblock_i_n_42),
        .\_inferred__6/i__carry__0 ({comblock_i_n_31,comblock_i_n_32,comblock_i_n_33,comblock_i_n_34}),
        .\_inferred__6/i__carry__1 (comblock_i_n_35),
        .axi_arready_reg_0(axil_arready),
        .\axi_awaddr_reg[6]_0 (AXIL_inst_n_42),
        .\axi_awaddr_reg[6]_1 (AXIL_inst_n_44),
        .axi_awready_reg_0(axil_awready),
        .\axi_rdata_reg[1]_0 (comblock_i_n_37),
        .\axi_rdata_reg[1]_1 (comblock_i_n_36),
        .\axi_rdata_reg[1]_2 (comblock_i_n_41),
        .\axi_rdata_reg[23]_0 ({comblock_i_n_23,comblock_i_n_24,comblock_i_n_25,comblock_i_n_26}),
        .\axi_rdata_reg[26]_0 ({comblock_i_n_27,comblock_i_n_28,comblock_i_n_29}),
        .axi_rvalid_reg_0(axi_rvalid_reg_0),
        .axi_wready_reg_0(axil_wready),
        .axil_aclk(axil_aclk),
        .axil_araddr(axil_araddr),
        .axil_aresetn(axil_aresetn),
        .axil_arvalid(axil_arvalid),
        .axil_awaddr(axil_awaddr),
        .axil_awvalid(axil_awvalid),
        .axil_bready(axil_bready),
        .axil_bvalid(axil_bvalid),
        .axil_rdata(axil_rdata),
        .axil_rready(axil_rready),
        .axil_wvalid(axil_wvalid),
        .empty_r(\fifo_in_g.fifo_in_i/empty_r ),
        .fifo_in_under_r(fifo_in_under_r),
        .fifo_in_under_r_reg(AXIL_inst_n_5),
        .\rd_ptr_r_reg[3] (comblock_i_n_39),
        .rd_val_o_reg_0(AXIL_inst_n_6),
        .rd_val_o_reg_1(AXIL_inst_n_8),
        .rd_val_o_reg_2({AXIL_inst_n_9,AXIL_inst_n_10,AXIL_inst_n_11,AXIL_inst_n_12}),
        .rd_val_o_reg_3(AXIL_inst_n_13),
        .reg0_i(reg0_i),
        .reg0_o(reg0_o),
        .reg1_i(reg1_i),
        .reg1_o(reg1_o));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock comblock_i
       (.ADDRARDADDR(mem_adr),
        .DI(AXIL_inst_n_7),
        .DOBDO(fifo_in_data),
        .E(AXIL_inst_n_44),
        .O({comblock_i_n_19,comblock_i_n_20,comblock_i_n_21,comblock_i_n_22}),
        .Q(\fifo_in_g.fifo_in_i/rd_ptr_r ),
        .S(AXIL_inst_n_14),
        .WEA({AXIF_inst_n_54,AXIF_inst_n_55}),
        .\_inferred__6/i__carry (comblock_i_n_41),
        .\_inferred__6/i__carry__0 (comblock_i_n_36),
        .\_inferred__6/i__carry__1 (comblock_i_n_37),
        .addr2_i({AXIF_inst_n_38,AXIF_inst_n_39,AXIF_inst_n_40,AXIF_inst_n_41,AXIF_inst_n_42,AXIF_inst_n_43,AXIF_inst_n_44,AXIF_inst_n_45,AXIF_inst_n_46,AXIF_inst_n_47,AXIF_inst_n_48,AXIF_inst_n_49,AXIF_inst_n_50,AXIF_inst_n_51,AXIF_inst_n_52,AXIF_inst_n_53}),
        .\axi_rdata_reg[23] ({AXIL_inst_n_9,AXIL_inst_n_10,AXIL_inst_n_11,AXIL_inst_n_12}),
        .\axi_rdata_reg[26] (AXIL_inst_n_13),
        .axif_aclk(axif_aclk),
        .axif_wdata(axif_wdata),
        .axil_aclk(axil_aclk),
        .axil_wdata(axil_wdata),
        .data2_o(mem_rd_dat),
        .\data_r_reg[1][10] ({comblock_i_n_27,comblock_i_n_28,comblock_i_n_29}),
        .\data_r_reg[1][8] ({comblock_i_n_23,comblock_i_n_24,comblock_i_n_25,comblock_i_n_26}),
        .empty_r(\fifo_in_g.fifo_in_i/empty_r ),
        .fifo_afull_o(fifo_afull_o),
        .fifo_clear_i(fifo_clear_i),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_full_o(fifo_full_o),
        .fifo_in_clear_reg_0(AXIL_inst_n_42),
        .fifo_in_under_r(fifo_in_under_r),
        .fifo_in_under_r_reg_0(AXIL_inst_n_5),
        .fifo_overflow_o(fifo_overflow_o),
        .fifo_we_i(fifo_we_i),
        .ram_addr_i(ram_addr_i),
        .ram_clk_i(ram_clk_i),
        .ram_data_i(ram_data_i),
        .ram_data_o(ram_data_o),
        .ram_reg_0_12({AXIF_inst_n_56,AXIF_inst_n_57}),
        .ram_reg_0_2({AXIF_inst_n_61,AXIF_inst_n_62}),
        .ram_reg_0_7({AXIF_inst_n_65,AXIF_inst_n_66}),
        .ram_reg_0_8(AXIF_inst_n_60),
        .ram_reg_1_4({AXIF_inst_n_63,AXIF_inst_n_64}),
        .ram_reg_1_7(AXIF_inst_n_67),
        .ram_reg_1_9({AXIF_inst_n_58,AXIF_inst_n_59}),
        .ram_we_i(ram_we_i),
        .\rd_ptr_r_reg[0] (comblock_i_n_42),
        .\rd_ptr_r_reg[10] (comblock_i_n_35),
        .\rd_ptr_r_reg[10]_0 (AXIL_inst_n_8),
        .\rd_ptr_r_reg[1] (comblock_i_n_39),
        .\rd_ptr_r_reg[3] (AXIL_inst_n_6),
        .\rd_ptr_r_reg[7] ({comblock_i_n_31,comblock_i_n_32,comblock_i_n_33,comblock_i_n_34}),
        .reg0_o(reg0_o),
        .reg1_o(reg1_o),
        .\regs_out_reg[1][7]_0 (\regs_out[1]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "comblock_comblock_0_0,axi_comblock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_comblock,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (reg0_i,
    reg1_i,
    reg0_o,
    reg1_o,
    ram_clk_i,
    ram_we_i,
    ram_addr_i,
    ram_data_i,
    ram_data_o,
    fifo_clk_i,
    fifo_clear_i,
    fifo_we_i,
    fifo_data_i,
    fifo_full_o,
    fifo_afull_o,
    fifo_overflow_o,
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
    axil_rready,
    axif_aclk,
    axif_aresetn,
    axif_awaddr,
    axif_awlen,
    axif_awsize,
    axif_awburst,
    axif_awlock,
    axif_awcache,
    axif_awprot,
    axif_awqos,
    axif_awregion,
    axif_awuser,
    axif_awvalid,
    axif_awready,
    axif_wdata,
    axif_wstrb,
    axif_wlast,
    axif_wuser,
    axif_wvalid,
    axif_wready,
    axif_bresp,
    axif_buser,
    axif_bvalid,
    axif_bready,
    axif_araddr,
    axif_arlen,
    axif_arsize,
    axif_arburst,
    axif_arlock,
    axif_arcache,
    axif_arprot,
    axif_arqos,
    axif_arregion,
    axif_aruser,
    axif_arvalid,
    axif_arready,
    axif_rdata,
    axif_rresp,
    axif_rlast,
    axif_ruser,
    axif_rvalid,
    axif_rready);
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg0_i" *) input [7:0]reg0_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg1_i" *) input [7:0]reg1_i;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg0_o" *) output [7:0]reg0_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg1_o" *) output [7:0]reg1_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ram_clk_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ram_clk_i, ASSOCIATED_BUSIF IO_DRAM, ASSOCIATED_RESET fifo_clear_i, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN comblock_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ram_clk_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_we_i" *) input ram_we_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_addr_i" *) input [15:0]ram_addr_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_data_i" *) input [15:0]ram_data_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_data_o" *) output [15:0]ram_data_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 fifo_clk_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_clk_i, ASSOCIATED_BUSIF IN_FIFO:OUT_FIFO, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN comblock_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input fifo_clk_i;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_clear_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_clear_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input fifo_clear_i;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_we_i" *) input fifo_we_i;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_data_i" *) input [15:0]fifo_data_i;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_full_o" *) output fifo_full_o;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_afull_o" *) output fifo_afull_o;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_overflow_o" *) output fifo_overflow_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axil_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axil_aclk, ASSOCIATED_RESET axil_aresetn, ASSOCIATED_BUSIF AXIL, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN comblock_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axil_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axil_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axil_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axil_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN comblock_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]axil_awaddr;
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axif_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axif_aclk, ASSOCIATED_RESET axif_aresetn, ASSOCIATED_BUSIF AXIF, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN comblock_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axif_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axif_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axif_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axif_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIF, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN comblock_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [17:0]axif_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWLEN" *) input [7:0]axif_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWSIZE" *) input [2:0]axif_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWBURST" *) input [1:0]axif_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWLOCK" *) input axif_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWCACHE" *) input [3:0]axif_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWPROT" *) input [2:0]axif_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWQOS" *) input [3:0]axif_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWREGION" *) input [3:0]axif_awregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWUSER" *) input [0:0]axif_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWVALID" *) input axif_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWREADY" *) output axif_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WDATA" *) input [31:0]axif_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WSTRB" *) input [3:0]axif_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WLAST" *) input axif_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WUSER" *) input [0:0]axif_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WVALID" *) input axif_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WREADY" *) output axif_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BRESP" *) output [1:0]axif_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BUSER" *) output [0:0]axif_buser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BVALID" *) output axif_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BREADY" *) input axif_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARADDR" *) input [17:0]axif_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARLEN" *) input [7:0]axif_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARSIZE" *) input [2:0]axif_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARBURST" *) input [1:0]axif_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARLOCK" *) input axif_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARCACHE" *) input [3:0]axif_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARPROT" *) input [2:0]axif_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARQOS" *) input [3:0]axif_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARREGION" *) input [3:0]axif_arregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARUSER" *) input [0:0]axif_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARVALID" *) input axif_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARREADY" *) output axif_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RDATA" *) output [31:0]axif_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RRESP" *) output [1:0]axif_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RLAST" *) output axif_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RUSER" *) output [0:0]axif_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RVALID" *) output axif_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RREADY" *) input axif_rready;

  wire \<const0> ;
  wire axif_aclk;
  wire [17:0]axif_araddr;
  wire [1:0]axif_arburst;
  wire axif_aresetn;
  wire [7:0]axif_arlen;
  wire axif_arready;
  wire axif_arvalid;
  wire [17:0]axif_awaddr;
  wire [1:0]axif_awburst;
  wire [7:0]axif_awlen;
  wire axif_awready;
  wire axif_awvalid;
  wire axif_bready;
  wire axif_bvalid;
  wire [15:0]\^axif_rdata ;
  wire axif_rlast;
  wire axif_rready;
  wire axif_rvalid;
  wire [31:0]axif_wdata;
  wire axif_wlast;
  wire axif_wready;
  wire axif_wvalid;
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
  wire [26:0]\^axil_rdata ;
  wire axil_rready;
  wire axil_rvalid;
  wire [31:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire fifo_afull_o;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire fifo_full_o;
  wire fifo_overflow_o;
  wire fifo_we_i;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire ram_we_i;
  wire [7:0]reg0_i;
  wire [7:0]reg0_o;
  wire [7:0]reg1_i;
  wire [7:0]reg1_o;

  assign axif_bresp[1] = \<const0> ;
  assign axif_bresp[0] = \<const0> ;
  assign axif_rdata[31] = \<const0> ;
  assign axif_rdata[30] = \<const0> ;
  assign axif_rdata[29] = \<const0> ;
  assign axif_rdata[28] = \<const0> ;
  assign axif_rdata[27] = \<const0> ;
  assign axif_rdata[26] = \<const0> ;
  assign axif_rdata[25] = \<const0> ;
  assign axif_rdata[24] = \<const0> ;
  assign axif_rdata[23] = \<const0> ;
  assign axif_rdata[22] = \<const0> ;
  assign axif_rdata[21] = \<const0> ;
  assign axif_rdata[20] = \<const0> ;
  assign axif_rdata[19] = \<const0> ;
  assign axif_rdata[18] = \<const0> ;
  assign axif_rdata[17] = \<const0> ;
  assign axif_rdata[16] = \<const0> ;
  assign axif_rdata[15:0] = \^axif_rdata [15:0];
  assign axif_rresp[1] = \<const0> ;
  assign axif_rresp[0] = \<const0> ;
  assign axil_bresp[1] = \<const0> ;
  assign axil_bresp[0] = \<const0> ;
  assign axil_rdata[31] = \<const0> ;
  assign axil_rdata[30] = \<const0> ;
  assign axil_rdata[29] = \<const0> ;
  assign axil_rdata[28] = \<const0> ;
  assign axil_rdata[27] = \<const0> ;
  assign axil_rdata[26:0] = \^axil_rdata [26:0];
  assign axil_rresp[1] = \<const0> ;
  assign axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock U0
       (.axi_arready_reg(axif_arready),
        .axi_awready_reg(axif_awready),
        .axi_rvalid_reg(axif_rvalid),
        .axi_rvalid_reg_0(axil_rvalid),
        .axi_wready_reg(axif_wready),
        .axif_aclk(axif_aclk),
        .axif_araddr(axif_araddr[17:2]),
        .axif_arburst(axif_arburst),
        .axif_aresetn(axif_aresetn),
        .axif_arlen(axif_arlen),
        .axif_arvalid(axif_arvalid),
        .axif_awaddr(axif_awaddr[17:2]),
        .axif_awburst(axif_awburst),
        .axif_awlen(axif_awlen),
        .axif_awvalid(axif_awvalid),
        .axif_bready(axif_bready),
        .axif_bvalid(axif_bvalid),
        .axif_rdata(\^axif_rdata ),
        .axif_rlast(axif_rlast),
        .axif_rready(axif_rready),
        .axif_wdata(axif_wdata[15:0]),
        .axif_wlast(axif_wlast),
        .axif_wvalid(axif_wvalid),
        .axil_aclk(axil_aclk),
        .axil_araddr(axil_araddr[7:2]),
        .axil_aresetn(axil_aresetn),
        .axil_arready(axil_arready),
        .axil_arvalid(axil_arvalid),
        .axil_awaddr(axil_awaddr[7:2]),
        .axil_awready(axil_awready),
        .axil_awvalid(axil_awvalid),
        .axil_bready(axil_bready),
        .axil_bvalid(axil_bvalid),
        .axil_rdata(\^axil_rdata ),
        .axil_rready(axil_rready),
        .axil_wdata(axil_wdata[7:0]),
        .axil_wready(axil_wready),
        .axil_wvalid(axil_wvalid),
        .fifo_afull_o(fifo_afull_o),
        .fifo_clear_i(fifo_clear_i),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_full_o(fifo_full_o),
        .fifo_overflow_o(fifo_overflow_o),
        .fifo_we_i(fifo_we_i),
        .ram_addr_i(ram_addr_i),
        .ram_clk_i(ram_clk_i),
        .ram_data_i(ram_data_i),
        .ram_data_o(ram_data_o),
        .ram_we_i(ram_we_i),
        .reg0_i(reg0_i),
        .reg0_o(reg0_o),
        .reg1_i(reg1_i),
        .reg1_o(reg1_o));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tdpram
   (data2_o,
    ram_data_o,
    axif_aclk,
    ram_clk_i,
    ADDRARDADDR,
    ram_addr_i,
    axif_wdata,
    ram_data_i,
    ram_reg_0_2_0,
    ram_we_i,
    ram_reg_1_4_0,
    ram_reg_0_7_0,
    ram_reg_1_7_0,
    ram_reg_0_8_0,
    ram_reg_1_9_0,
    addr2_i,
    ram_reg_0_12_0,
    WEA);
  output [15:0]data2_o;
  output [15:0]ram_data_o;
  input axif_aclk;
  input ram_clk_i;
  input [15:0]ADDRARDADDR;
  input [15:0]ram_addr_i;
  input [15:0]axif_wdata;
  input [15:0]ram_data_i;
  input [1:0]ram_reg_0_2_0;
  input ram_we_i;
  input [1:0]ram_reg_1_4_0;
  input [1:0]ram_reg_0_7_0;
  input [0:0]ram_reg_1_7_0;
  input [0:0]ram_reg_0_8_0;
  input [1:0]ram_reg_1_9_0;
  input [15:0]addr2_i;
  input [1:0]ram_reg_0_12_0;
  input [1:0]WEA;

  wire [15:0]ADDRARDADDR;
  wire [1:0]WEA;
  wire [15:0]addr2_i;
  wire axif_aclk;
  wire [15:0]axif_wdata;
  wire [15:0]data2_o;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire ram_reg_0_0_n_0;
  wire ram_reg_0_0_n_1;
  wire ram_reg_0_10_n_0;
  wire ram_reg_0_10_n_1;
  wire ram_reg_0_11_n_0;
  wire ram_reg_0_11_n_1;
  wire [1:0]ram_reg_0_12_0;
  wire ram_reg_0_12_n_0;
  wire ram_reg_0_12_n_1;
  wire ram_reg_0_13_n_0;
  wire ram_reg_0_13_n_1;
  wire ram_reg_0_14_n_0;
  wire ram_reg_0_14_n_1;
  wire ram_reg_0_15_n_0;
  wire ram_reg_0_15_n_1;
  wire ram_reg_0_1_n_0;
  wire ram_reg_0_1_n_1;
  wire [1:0]ram_reg_0_2_0;
  wire ram_reg_0_2_n_0;
  wire ram_reg_0_2_n_1;
  wire ram_reg_0_3_n_0;
  wire ram_reg_0_3_n_1;
  wire ram_reg_0_4_n_0;
  wire ram_reg_0_4_n_1;
  wire ram_reg_0_5_n_0;
  wire ram_reg_0_5_n_1;
  wire ram_reg_0_6_n_0;
  wire ram_reg_0_6_n_1;
  wire [1:0]ram_reg_0_7_0;
  wire ram_reg_0_7_n_0;
  wire ram_reg_0_7_n_1;
  wire [0:0]ram_reg_0_8_0;
  wire ram_reg_0_8_n_0;
  wire ram_reg_0_8_n_1;
  wire ram_reg_0_9_n_0;
  wire ram_reg_0_9_n_1;
  wire [1:0]ram_reg_1_4_0;
  wire [0:0]ram_reg_1_7_0;
  wire [1:0]ram_reg_1_9_0;
  wire ram_we_i;
  wire NLW_ram_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_10_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_10_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_10_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_10_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_10_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_10_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_11_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_11_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_11_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_12_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_12_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_12_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_12_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_12_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_12_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_13_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_13_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_13_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_13_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_13_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_13_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_14_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_14_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_14_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_14_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_15_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_15_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_15_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_15_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_15_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_15_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_8_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_8_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_8_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_8_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_8_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_8_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_9_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_9_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_9_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_0_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_1_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_10_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_10_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_10_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_10_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_10_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_10_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_10_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_10_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_11_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_11_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_11_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_12_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_12_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_12_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_12_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_12_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_12_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_12_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_12_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_13_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_13_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_13_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_13_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_13_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_13_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_13_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_13_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_14_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_14_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_14_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_14_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_15_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_15_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_15_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_15_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_15_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_15_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_15_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_15_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_2_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_3_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_4_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_5_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_6_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_7_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_7_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_8_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_8_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_8_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_8_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_8_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_8_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_8_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_8_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_9_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_9_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_9_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_0
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_0_n_0),
        .CASCADEOUTB(ram_reg_0_0_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[0]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_0[0],ram_reg_0_2_0[0],ram_reg_0_2_0[0],ram_reg_0_2_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_1
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_1_n_0),
        .CASCADEOUTB(ram_reg_0_1_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[1]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_0[1],ram_reg_0_2_0,ram_reg_0_2_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "10" *) 
  (* bram_slice_end = "10" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_10
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_10_n_0),
        .CASCADEOUTB(ram_reg_0_10_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[10]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_10_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_10_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_10_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_10_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_10_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_9_0[1],ram_reg_1_9_0[1],ram_reg_1_9_0[1],ram_reg_1_9_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "11" *) 
  (* bram_slice_end = "11" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_11
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_11_n_0),
        .CASCADEOUTB(ram_reg_0_11_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[11]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_11_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_11_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_12_0[0],ram_reg_0_12_0[0],ram_reg_0_12_0[0],ram_reg_0_12_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "12" *) 
  (* bram_slice_end = "12" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_12
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_12_n_0),
        .CASCADEOUTB(ram_reg_0_12_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[12]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_12_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_12_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_12_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_12_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_12_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_12_0[1],ram_reg_0_12_0,ram_reg_0_12_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "13" *) 
  (* bram_slice_end = "13" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_13
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_13_n_0),
        .CASCADEOUTB(ram_reg_0_13_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[13]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_13_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_13_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_13_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_13_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_13_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_12_0[1],ram_reg_0_12_0[1],ram_reg_0_12_0[1],ram_reg_0_12_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "14" *) 
  (* bram_slice_end = "14" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_14
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_14_n_0),
        .CASCADEOUTB(ram_reg_0_14_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[14]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_14_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_14_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],WEA[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "15" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_15
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_15_n_0),
        .CASCADEOUTB(ram_reg_0_15_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[15]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_15_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_15_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_15_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_15_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_15_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],WEA[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_2
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_2_n_0),
        .CASCADEOUTB(ram_reg_0_2_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[2]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_0[1],ram_reg_0_2_0[1],ram_reg_0_2_0[1],ram_reg_0_2_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_3
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_3_n_0),
        .CASCADEOUTB(ram_reg_0_3_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[3]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_4_0[0],ram_reg_1_4_0[0],ram_reg_1_4_0[0],ram_reg_1_4_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_4
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_4_n_0),
        .CASCADEOUTB(ram_reg_0_4_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[4]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_4_0[1],ram_reg_1_4_0[1],ram_reg_1_4_0[1],ram_reg_1_4_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_5
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_5_n_0),
        .CASCADEOUTB(ram_reg_0_5_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[5]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_7_0[0],ram_reg_0_7_0[0],ram_reg_0_7_0[0],ram_reg_0_7_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_6
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_6_n_0),
        .CASCADEOUTB(ram_reg_0_6_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[6]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_7_0[1],ram_reg_0_7_0,ram_reg_0_7_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_7
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_7_n_0),
        .CASCADEOUTB(ram_reg_0_7_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[7]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_7_0[1],ram_reg_0_7_0[1],ram_reg_0_7_0[1],ram_reg_0_7_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "8" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_8
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_8_n_0),
        .CASCADEOUTB(ram_reg_0_8_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[8]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_8_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_8_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_8_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_8_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_8_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_8_0,ram_reg_0_8_0,ram_reg_0_8_0,ram_reg_0_8_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "32767" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "9" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_9
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_9_n_0),
        .CASCADEOUTB(ram_reg_0_9_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[9]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_9_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_9_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_9_0[0],ram_reg_1_9_0[0],ram_reg_1_9_0[0],ram_reg_1_9_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "0" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_0
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_0_n_0),
        .CASCADEINB(ram_reg_0_0_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[0]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_0_DOADO_UNCONNECTED[31:1],data2_o[0]}),
        .DOBDO({NLW_ram_reg_1_0_DOBDO_UNCONNECTED[31:1],ram_data_o[0]}),
        .DOPADOP(NLW_ram_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_0[0],ram_reg_0_2_0[0],ram_reg_0_2_0[0],ram_reg_0_2_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "1" *) 
  (* bram_slice_end = "1" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_1
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_1_n_0),
        .CASCADEINB(ram_reg_0_1_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[1]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_1_DOADO_UNCONNECTED[31:1],data2_o[1]}),
        .DOBDO({NLW_ram_reg_1_1_DOBDO_UNCONNECTED[31:1],ram_data_o[1]}),
        .DOPADOP(NLW_ram_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_0[1],ram_reg_0_2_0[1],ram_reg_0_2_0[1],ram_reg_0_2_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "10" *) 
  (* bram_slice_end = "10" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_10
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_10_n_0),
        .CASCADEINB(ram_reg_0_10_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_10_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_10_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[10]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_10_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_10_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_10_DOADO_UNCONNECTED[31:1],data2_o[10]}),
        .DOBDO({NLW_ram_reg_1_10_DOBDO_UNCONNECTED[31:1],ram_data_o[10]}),
        .DOPADOP(NLW_ram_reg_1_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_10_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_9_0[1],ram_reg_1_9_0[1],ram_reg_1_9_0[1],ram_reg_1_9_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "11" *) 
  (* bram_slice_end = "11" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_11
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_11_n_0),
        .CASCADEINB(ram_reg_0_11_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[11]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_11_DOADO_UNCONNECTED[31:1],data2_o[11]}),
        .DOBDO({NLW_ram_reg_1_11_DOBDO_UNCONNECTED[31:1],ram_data_o[11]}),
        .DOPADOP(NLW_ram_reg_1_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_11_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_12_0[0],ram_reg_0_12_0[0],ram_reg_0_12_0[0],ram_reg_0_12_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "12" *) 
  (* bram_slice_end = "12" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_12
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_12_n_0),
        .CASCADEINB(ram_reg_0_12_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_12_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_12_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[12]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_12_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_12_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_12_DOADO_UNCONNECTED[31:1],data2_o[12]}),
        .DOBDO({NLW_ram_reg_1_12_DOBDO_UNCONNECTED[31:1],ram_data_o[12]}),
        .DOPADOP(NLW_ram_reg_1_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_12_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_12_0[1],ram_reg_0_12_0[1],ram_reg_0_12_0[1],ram_reg_0_12_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "13" *) 
  (* bram_slice_end = "13" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_13
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_13_n_0),
        .CASCADEINB(ram_reg_0_13_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_13_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_13_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[13]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_13_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_13_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_13_DOADO_UNCONNECTED[31:1],data2_o[13]}),
        .DOBDO({NLW_ram_reg_1_13_DOBDO_UNCONNECTED[31:1],ram_data_o[13]}),
        .DOPADOP(NLW_ram_reg_1_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_13_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],WEA[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "14" *) 
  (* bram_slice_end = "14" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_14
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_14_n_0),
        .CASCADEINB(ram_reg_0_14_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[14]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_14_DOADO_UNCONNECTED[31:1],data2_o[14]}),
        .DOBDO({NLW_ram_reg_1_14_DOBDO_UNCONNECTED[31:1],ram_data_o[14]}),
        .DOPADOP(NLW_ram_reg_1_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_14_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA,WEA[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "15" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_15
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_15_n_0),
        .CASCADEINB(ram_reg_0_15_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_15_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_15_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[15]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_15_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_15_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_15_DOADO_UNCONNECTED[31:1],data2_o[15]}),
        .DOBDO({NLW_ram_reg_1_15_DOBDO_UNCONNECTED[31:1],ram_data_o[15]}),
        .DOPADOP(NLW_ram_reg_1_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_15_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],WEA[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "2" *) 
  (* bram_slice_end = "2" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_2
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_2_n_0),
        .CASCADEINB(ram_reg_0_2_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[2]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_2_DOADO_UNCONNECTED[31:1],data2_o[2]}),
        .DOBDO({NLW_ram_reg_1_2_DOBDO_UNCONNECTED[31:1],ram_data_o[2]}),
        .DOPADOP(NLW_ram_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_4_0[0],ram_reg_1_4_0[0],ram_reg_1_4_0[0],ram_reg_1_4_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "3" *) 
  (* bram_slice_end = "3" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_3
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_3_n_0),
        .CASCADEINB(ram_reg_0_3_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[3]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_3_DOADO_UNCONNECTED[31:1],data2_o[3]}),
        .DOBDO({NLW_ram_reg_1_3_DOBDO_UNCONNECTED[31:1],ram_data_o[3]}),
        .DOPADOP(NLW_ram_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_4_0[1],ram_reg_1_4_0,ram_reg_1_4_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "4" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_4
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_4_n_0),
        .CASCADEINB(ram_reg_0_4_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[4]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_4_DOADO_UNCONNECTED[31:1],data2_o[4]}),
        .DOBDO({NLW_ram_reg_1_4_DOBDO_UNCONNECTED[31:1],ram_data_o[4]}),
        .DOPADOP(NLW_ram_reg_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_4_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_4_0[1],ram_reg_1_4_0[1],ram_reg_1_4_0[1],ram_reg_1_4_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "5" *) 
  (* bram_slice_end = "5" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_5
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_5_n_0),
        .CASCADEINB(ram_reg_0_5_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[5]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_5_DOADO_UNCONNECTED[31:1],data2_o[5]}),
        .DOBDO({NLW_ram_reg_1_5_DOBDO_UNCONNECTED[31:1],ram_data_o[5]}),
        .DOPADOP(NLW_ram_reg_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_5_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_7_0[0],ram_reg_0_7_0[0],ram_reg_0_7_0[0],ram_reg_0_7_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "6" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_6
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_6_n_0),
        .CASCADEINB(ram_reg_0_6_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[6]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_6_DOADO_UNCONNECTED[31:1],data2_o[6]}),
        .DOBDO({NLW_ram_reg_1_6_DOBDO_UNCONNECTED[31:1],ram_data_o[6]}),
        .DOPADOP(NLW_ram_reg_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_6_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_7_0[1],ram_reg_0_7_0[1],ram_reg_0_7_0[1],ram_reg_0_7_0[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "7" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_7
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_7_n_0),
        .CASCADEINB(ram_reg_0_7_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[7]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_7_DOADO_UNCONNECTED[31:1],data2_o[7]}),
        .DOBDO({NLW_ram_reg_1_7_DOBDO_UNCONNECTED[31:1],ram_data_o[7]}),
        .DOPADOP(NLW_ram_reg_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_7_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_7_0,ram_reg_1_7_0,ram_reg_1_7_0,ram_reg_1_7_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "8" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_8
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_8_n_0),
        .CASCADEINB(ram_reg_0_8_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_8_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_8_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[8]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_8_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_8_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_8_DOADO_UNCONNECTED[31:1],data2_o[8]}),
        .DOBDO({NLW_ram_reg_1_8_DOBDO_UNCONNECTED[31:1],ram_data_o[8]}),
        .DOPADOP(NLW_ram_reg_1_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_8_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_9_0[0],ram_reg_1_9_0[0],ram_reg_1_9_0[0],ram_reg_1_9_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram" *) 
  (* bram_addr_begin = "32768" *) 
  (* bram_addr_end = "65535" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "9" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_9
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_9_n_0),
        .CASCADEINB(ram_reg_0_9_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[9]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_9_DOADO_UNCONNECTED[31:1],data2_o[9]}),
        .DOBDO({NLW_ram_reg_1_9_DOBDO_UNCONNECTED[31:1],ram_data_o[9]}),
        .DOPADOP(NLW_ram_reg_1_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_9_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_9_0[1],ram_reg_1_9_0,ram_reg_1_9_0[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
endmodule

(* ORIG_REF_NAME = "tdpram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tdpram__parameterized0
   (DOBDO,
    fifo_clk_i,
    axil_aclk,
    Q,
    ram_reg_0,
    fifo_data_i,
    fifo_we_i,
    full_r);
  output [15:0]DOBDO;
  input fifo_clk_i;
  input axil_aclk;
  input [9:0]Q;
  input [9:0]ram_reg_0;
  input [15:0]fifo_data_i;
  input fifo_we_i;
  input full_r;

  wire [15:0]DOBDO;
  wire [9:0]Q;
  wire axil_aclk;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire fifo_we_i;
  wire full_r;
  wire p_4_in;
  wire [9:0]ram_reg_0;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_in_g.fifo_in_i/i_memory/ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ram_reg_0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(fifo_clk_i),
        .CLKBWRCLK(axil_aclk),
        .DIADI(fifo_data_i),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(DOBDO),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_4_in),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_1
       (.I0(fifo_we_i),
        .I1(full_r),
        .O(p_4_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
