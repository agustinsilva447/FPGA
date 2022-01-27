// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Jan 26 17:54:01 2022
// Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_4/pynq_nqueens_4.gen/sources_1/bd/design_1/ip/design_1_comblock_0_0/design_1_comblock_0_0_sim_netlist.v
// Design      : design_1_comblock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_comblock_0_0,axi_comblock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_comblock,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_comblock_0_0
   (reg0_i,
    reg1_i,
    reg2_i,
    reg0_o,
    reg1_o,
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
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg0_i" *) input [9:0]reg0_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg1_i" *) input [9:0]reg1_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg2_i" *) input [9:0]reg2_i;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg0_o" *) output [0:0]reg0_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg1_o" *) output [0:0]reg1_o;
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
  wire [9:0]\^axil_rdata ;
  wire axil_rready;
  wire axil_rvalid;
  wire [31:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire [9:0]reg0_i;
  wire [0:0]reg0_o;
  wire [9:0]reg1_i;
  wire [0:0]reg1_o;
  wire [9:0]reg2_i;

  assign axil_bresp[1] = \<const0> ;
  assign axil_bresp[0] = \<const0> ;
  assign axil_rdata[31] = \<const0> ;
  assign axil_rdata[30] = \<const0> ;
  assign axil_rdata[29] = \<const0> ;
  assign axil_rdata[28] = \<const0> ;
  assign axil_rdata[27] = \<const0> ;
  assign axil_rdata[26] = \<const0> ;
  assign axil_rdata[25] = \<const0> ;
  assign axil_rdata[24] = \<const0> ;
  assign axil_rdata[23] = \<const0> ;
  assign axil_rdata[22] = \<const0> ;
  assign axil_rdata[21] = \<const0> ;
  assign axil_rdata[20] = \<const0> ;
  assign axil_rdata[19] = \<const0> ;
  assign axil_rdata[18] = \<const0> ;
  assign axil_rdata[17] = \<const0> ;
  assign axil_rdata[16] = \<const0> ;
  assign axil_rdata[15] = \<const0> ;
  assign axil_rdata[14] = \<const0> ;
  assign axil_rdata[13] = \<const0> ;
  assign axil_rdata[12] = \<const0> ;
  assign axil_rdata[11] = \<const0> ;
  assign axil_rdata[10] = \<const0> ;
  assign axil_rdata[9:0] = \^axil_rdata [9:0];
  assign axil_rresp[1] = \<const0> ;
  assign axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_comblock_0_0_axi_comblock U0
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
        .axil_rdata(\^axil_rdata ),
        .axil_rready(axil_rready),
        .axil_rvalid(axil_rvalid),
        .axil_wdata(axil_wdata[0]),
        .axil_wready(axil_wready),
        .axil_wvalid(axil_wvalid),
        .reg0_i(reg0_i),
        .reg0_o(reg0_o),
        .reg1_i(reg1_i),
        .reg1_o(reg1_o),
        .reg2_i(reg2_i));
endmodule

(* ORIG_REF_NAME = "AXIL" *) 
module design_1_comblock_0_0_AXIL
   (axil_awready,
    axil_wready,
    axil_arready,
    axil_bvalid,
    axil_rvalid,
    Q,
    axil_wdata_0_sp_1,
    \axil_wdata[0]_0 ,
    axil_rdata,
    axil_aclk,
    axil_arvalid,
    \axi_rdata_reg[0]_0 ,
    reg2_i,
    reg0_i,
    reg1_i,
    axil_aresetn,
    axil_bready,
    axil_awvalid,
    axil_wvalid,
    axil_rready,
    axil_wdata,
    reg0_o,
    reg1_o,
    axil_awaddr,
    axil_araddr);
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output axil_bvalid;
  output axil_rvalid;
  output [1:0]Q;
  output axil_wdata_0_sp_1;
  output \axil_wdata[0]_0 ;
  output [9:0]axil_rdata;
  input axil_aclk;
  input axil_arvalid;
  input \axi_rdata_reg[0]_0 ;
  input [9:0]reg2_i;
  input [8:0]reg0_i;
  input [8:0]reg1_i;
  input axil_aresetn;
  input axil_bready;
  input axil_awvalid;
  input axil_wvalid;
  input axil_rready;
  input [0:0]axil_wdata;
  input [0:0]reg0_o;
  input [0:0]reg1_o;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;

  wire [1:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
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
  wire [9:0]axil_rdata;
  wire axil_rready;
  wire axil_rvalid;
  wire [0:0]axil_wdata;
  wire \axil_wdata[0]_0 ;
  wire axil_wdata_0_sn_1;
  wire axil_wready;
  wire axil_wvalid;
  wire p_0_in;
  wire [8:0]reg0_i;
  wire [0:0]reg0_o;
  wire [8:0]reg1_i;
  wire [0:0]reg1_o;
  wire [9:0]reg2_i;
  wire [7:3]reg_rd_adr;
  wire [9:0]reg_rd_dat;
  wire [7:2]reg_wr_adr;
  wire \regs_out[0][0]_i_2_n_0 ;
  wire \regs_out[0][0]_i_3_n_0 ;

  assign axil_wdata_0_sp_1 = axil_wdata_0_sn_1;
  LUT6 #(
    .INIT(64'hF8F8F8F808F8F8F8)) 
    aw_en_i_1
       (.I0(axil_bvalid),
        .I1(axil_bready),
        .I2(aw_en_reg_n_0),
        .I3(axil_wvalid),
        .I4(axil_awvalid),
        .I5(axil_awready),
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
        .Q(Q[0]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[1]),
        .Q(reg_rd_adr[3]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[2]),
        .Q(reg_rd_adr[4]),
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
        .Q(Q[1]),
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
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(axil_wvalid),
        .I2(axil_awvalid),
        .I3(axil_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axil_awready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(axil_bready),
        .I1(axil_wready),
        .I2(axil_awvalid),
        .I3(axil_wvalid),
        .I4(axil_awready),
        .I5(axil_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axil_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0022032200220022)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0]_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(reg_rd_adr[3]),
        .I4(Q[1]),
        .I5(reg2_i[0]),
        .O(reg_rd_dat[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[0]_i_3 
       (.I0(reg_rd_adr[4]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[5]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[1]_i_1 
       (.I0(reg0_i[0]),
        .I1(Q[0]),
        .I2(reg1_i[0]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[1]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[2]_i_1 
       (.I0(reg0_i[1]),
        .I1(Q[0]),
        .I2(reg1_i[1]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[2]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[3]_i_1 
       (.I0(reg0_i[2]),
        .I1(Q[0]),
        .I2(reg1_i[2]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[3]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[4]_i_1 
       (.I0(reg0_i[3]),
        .I1(Q[0]),
        .I2(reg1_i[3]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[4]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[5]_i_1 
       (.I0(reg0_i[4]),
        .I1(Q[0]),
        .I2(reg1_i[4]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[5]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[6]_i_1 
       (.I0(reg0_i[5]),
        .I1(Q[0]),
        .I2(reg1_i[5]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[6]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[7]_i_1 
       (.I0(reg0_i[6]),
        .I1(Q[0]),
        .I2(reg1_i[6]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[7]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[8]_i_1 
       (.I0(reg0_i[7]),
        .I1(Q[0]),
        .I2(reg1_i[7]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[8]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[8]));
  LUT3 #(
    .INIT(8'hBF)) 
    \axi_rdata[9]_i_1 
       (.I0(axil_rvalid),
        .I1(axil_arvalid),
        .I2(axil_arready),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \axi_rdata[9]_i_2 
       (.I0(reg0_i[8]),
        .I1(Q[0]),
        .I2(reg1_i[8]),
        .I3(reg_rd_adr[3]),
        .I4(reg2_i[9]),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \axi_rdata[9]_i_3 
       (.I0(reg_rd_adr[5]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[4]),
        .I3(reg_rd_adr[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[0]),
        .Q(axil_rdata[0]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[1]),
        .Q(axil_rdata[1]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[2]),
        .Q(axil_rdata[2]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[3]),
        .Q(axil_rdata[3]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[4]),
        .Q(axil_rdata[4]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[5]),
        .Q(axil_rdata[5]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[6]),
        .Q(axil_rdata[6]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[7]),
        .Q(axil_rdata[7]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[8]),
        .Q(axil_rdata[8]),
        .R(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[9]),
        .Q(axil_rdata[9]),
        .R(\axi_rdata[9]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(axil_wvalid),
        .I2(axil_awvalid),
        .I3(axil_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axil_wready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \regs_out[0][0]_i_1 
       (.I0(axil_wdata),
        .I1(reg_wr_adr[6]),
        .I2(\regs_out[0][0]_i_2_n_0 ),
        .I3(reg_wr_adr[2]),
        .I4(reg_wr_adr[7]),
        .I5(reg0_o),
        .O(axil_wdata_0_sn_1));
  LUT4 #(
    .INIT(16'h0004)) 
    \regs_out[0][0]_i_2 
       (.I0(reg_wr_adr[4]),
        .I1(\regs_out[0][0]_i_3_n_0 ),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[5]),
        .O(\regs_out[0][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \regs_out[0][0]_i_3 
       (.I0(axil_awready),
        .I1(axil_wvalid),
        .I2(axil_awvalid),
        .I3(axil_wready),
        .O(\regs_out[0][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \regs_out[1][0]_i_1 
       (.I0(axil_wdata),
        .I1(reg_wr_adr[6]),
        .I2(\regs_out[0][0]_i_2_n_0 ),
        .I3(reg_wr_adr[2]),
        .I4(reg_wr_adr[7]),
        .I5(reg1_o),
        .O(\axil_wdata[0]_0 ));
endmodule

(* ORIG_REF_NAME = "ComBlock" *) 
module design_1_comblock_0_0_ComBlock
   (reg0_o,
    reg1_o,
    \regs_out_reg[0][0]_0 ,
    \regs_out_reg[0][0]_1 ,
    axil_aclk,
    \regs_out_reg[1][0]_0 ,
    Q,
    reg0_i,
    reg1_i);
  output [0:0]reg0_o;
  output [0:0]reg1_o;
  output \regs_out_reg[0][0]_0 ;
  input \regs_out_reg[0][0]_1 ;
  input axil_aclk;
  input \regs_out_reg[1][0]_0 ;
  input [1:0]Q;
  input [0:0]reg0_i;
  input [0:0]reg1_i;

  wire [1:0]Q;
  wire axil_aclk;
  wire [0:0]reg0_i;
  wire [0:0]reg0_o;
  wire [0:0]reg1_i;
  wire [0:0]reg1_o;
  wire \regs_out_reg[0][0]_0 ;
  wire \regs_out_reg[0][0]_1 ;
  wire \regs_out_reg[1][0]_0 ;

  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_2 
       (.I0(reg0_o),
        .I1(reg1_o),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(reg0_i),
        .I5(reg1_i),
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
endmodule

(* ORIG_REF_NAME = "axi_comblock" *) 
module design_1_comblock_0_0_axi_comblock
   (axil_awready,
    axil_wready,
    axil_arready,
    axil_rdata,
    axil_rvalid,
    reg0_o,
    reg1_o,
    axil_bvalid,
    axil_aclk,
    axil_awaddr,
    axil_araddr,
    axil_arvalid,
    axil_wvalid,
    axil_awvalid,
    reg2_i,
    reg0_i,
    reg1_i,
    axil_aresetn,
    axil_bready,
    axil_rready,
    axil_wdata);
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output [9:0]axil_rdata;
  output axil_rvalid;
  output [0:0]reg0_o;
  output [0:0]reg1_o;
  output axil_bvalid;
  input axil_aclk;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;
  input axil_arvalid;
  input axil_wvalid;
  input axil_awvalid;
  input [9:0]reg2_i;
  input [9:0]reg0_i;
  input [9:0]reg1_i;
  input axil_aresetn;
  input axil_bready;
  input axil_rready;
  input [0:0]axil_wdata;

  wire AXIL_inst_n_7;
  wire AXIL_inst_n_8;
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
  wire [9:0]axil_rdata;
  wire axil_rready;
  wire axil_rvalid;
  wire [0:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire comblock_i_n_2;
  wire [9:0]reg0_i;
  wire [0:0]reg0_o;
  wire [9:0]reg1_i;
  wire [0:0]reg1_o;
  wire [9:0]reg2_i;
  wire [6:2]reg_rd_adr;

  design_1_comblock_0_0_AXIL AXIL_inst
       (.Q({reg_rd_adr[6],reg_rd_adr[2]}),
        .\axi_rdata_reg[0]_0 (comblock_i_n_2),
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
        .\axil_wdata[0]_0 (AXIL_inst_n_8),
        .axil_wdata_0_sp_1(AXIL_inst_n_7),
        .axil_wready(axil_wready),
        .axil_wvalid(axil_wvalid),
        .reg0_i(reg0_i[9:1]),
        .reg0_o(reg0_o),
        .reg1_i(reg1_i[9:1]),
        .reg1_o(reg1_o),
        .reg2_i(reg2_i));
  design_1_comblock_0_0_ComBlock comblock_i
       (.Q({reg_rd_adr[6],reg_rd_adr[2]}),
        .axil_aclk(axil_aclk),
        .reg0_i(reg0_i[0]),
        .reg0_o(reg0_o),
        .reg1_i(reg1_i[0]),
        .reg1_o(reg1_o),
        .\regs_out_reg[0][0]_0 (comblock_i_n_2),
        .\regs_out_reg[0][0]_1 (AXIL_inst_n_7),
        .\regs_out_reg[1][0]_0 (AXIL_inst_n_8));
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
