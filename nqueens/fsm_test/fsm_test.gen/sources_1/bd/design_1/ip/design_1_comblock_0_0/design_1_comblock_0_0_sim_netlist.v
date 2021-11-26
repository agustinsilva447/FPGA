// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Nov 26 18:56:06 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mlabadm/Desktop/Github/FPGA/nqueens/fsm_test/fsm_test.gen/sources_1/bd/design_1/ip/design_1_comblock_0_0/design_1_comblock_0_0_sim_netlist.v
// Design      : design_1_comblock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_comblock_0_0,axi_comblock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_comblock,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_comblock_0_0
   (reg0_i,
    reg1_i,
    reg0_o,
    reg1_o,
    reg2_o,
    reg3_o,
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
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg0_o" *) output [31:0]reg0_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg1_o" *) output [31:0]reg1_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg2_o" *) output [31:0]reg2_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg3_o" *) output [31:0]reg3_o;
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
  wire [31:0]reg2_o;
  wire [31:0]reg3_o;

  assign axil_bresp[1] = \<const0> ;
  assign axil_bresp[0] = \<const0> ;
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
        .reg2_o(reg2_o),
        .reg3_o(reg3_o));
endmodule

(* ORIG_REF_NAME = "AXIL" *) 
module design_1_comblock_0_0_AXIL
   (axil_awready,
    axil_wready,
    axil_arready,
    axil_bvalid,
    axil_rvalid,
    Q,
    axil_rdata,
    E,
    \axi_awaddr_reg[7]_0 ,
    \axi_awaddr_reg[7]_1 ,
    \axi_awaddr_reg[7]_2 ,
    axil_aclk,
    axil_arvalid,
    \axi_rdata_reg[0]_0 ,
    reg1_i,
    reg0_i,
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
    \axi_rdata_reg[31]_0 ,
    axil_aresetn,
    axil_bready,
    axil_awvalid,
    axil_wvalid,
    axil_rready,
    axil_awaddr,
    axil_araddr);
  output axil_awready;
  output axil_wready;
  output axil_arready;
  output axil_bvalid;
  output axil_rvalid;
  output [1:0]Q;
  output [31:0]axil_rdata;
  output [0:0]E;
  output [0:0]\axi_awaddr_reg[7]_0 ;
  output [0:0]\axi_awaddr_reg[7]_1 ;
  output [0:0]\axi_awaddr_reg[7]_2 ;
  input axil_aclk;
  input axil_arvalid;
  input \axi_rdata_reg[0]_0 ;
  input [31:0]reg1_i;
  input [31:0]reg0_i;
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
  input \axi_rdata_reg[31]_0 ;
  input axil_aresetn;
  input axil_bready;
  input axil_awvalid;
  input axil_wvalid;
  input axil_rready;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;

  wire [0:0]E;
  wire [1:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire [0:0]\axi_awaddr_reg[7]_0 ;
  wire [0:0]\axi_awaddr_reg[7]_1 ;
  wire [0:0]\axi_awaddr_reg[7]_2 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[12]_0 ;
  wire \axi_rdata_reg[13]_0 ;
  wire \axi_rdata_reg[14]_0 ;
  wire \axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[16]_0 ;
  wire \axi_rdata_reg[17]_0 ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[19]_0 ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[22]_0 ;
  wire \axi_rdata_reg[23]_0 ;
  wire \axi_rdata_reg[24]_0 ;
  wire \axi_rdata_reg[25]_0 ;
  wire \axi_rdata_reg[26]_0 ;
  wire \axi_rdata_reg[27]_0 ;
  wire \axi_rdata_reg[28]_0 ;
  wire \axi_rdata_reg[29]_0 ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[30]_0 ;
  wire \axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[9]_0 ;
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
  wire [7:4]reg_rd_adr;
  wire [31:0]reg_rd_dat;
  wire [7:2]reg_wr_adr;
  wire \regs_out[0][31]_i_2_n_0 ;

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
        .Q(Q[1]),
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
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[0]),
        .I4(Q[0]),
        .I5(reg0_i[0]),
        .O(reg_rd_dat[0]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[10]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[10]),
        .I4(Q[0]),
        .I5(reg0_i[10]),
        .O(reg_rd_dat[10]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[11]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[11]),
        .I4(Q[0]),
        .I5(reg0_i[11]),
        .O(reg_rd_dat[11]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[12]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[12]),
        .I4(Q[0]),
        .I5(reg0_i[12]),
        .O(reg_rd_dat[12]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[13]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[13]),
        .I4(Q[0]),
        .I5(reg0_i[13]),
        .O(reg_rd_dat[13]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[14]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[14]),
        .I4(Q[0]),
        .I5(reg0_i[14]),
        .O(reg_rd_dat[14]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[15]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[15]),
        .I4(Q[0]),
        .I5(reg0_i[15]),
        .O(reg_rd_dat[15]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[16]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[16]),
        .I4(Q[0]),
        .I5(reg0_i[16]),
        .O(reg_rd_dat[16]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[17]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[17]),
        .I4(Q[0]),
        .I5(reg0_i[17]),
        .O(reg_rd_dat[17]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[18]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[18]),
        .I4(Q[0]),
        .I5(reg0_i[18]),
        .O(reg_rd_dat[18]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[19]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[19]),
        .I4(Q[0]),
        .I5(reg0_i[19]),
        .O(reg_rd_dat[19]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[1]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[1]),
        .I4(Q[0]),
        .I5(reg0_i[1]),
        .O(reg_rd_dat[1]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[20]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[20]),
        .I4(Q[0]),
        .I5(reg0_i[20]),
        .O(reg_rd_dat[20]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[21]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[21]),
        .I4(Q[0]),
        .I5(reg0_i[21]),
        .O(reg_rd_dat[21]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[22]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[22]),
        .I4(Q[0]),
        .I5(reg0_i[22]),
        .O(reg_rd_dat[22]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[23]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[23]),
        .I4(Q[0]),
        .I5(reg0_i[23]),
        .O(reg_rd_dat[23]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[24]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[24]),
        .I4(Q[0]),
        .I5(reg0_i[24]),
        .O(reg_rd_dat[24]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[25]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[25]),
        .I4(Q[0]),
        .I5(reg0_i[25]),
        .O(reg_rd_dat[25]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[26]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[26]),
        .I4(Q[0]),
        .I5(reg0_i[26]),
        .O(reg_rd_dat[26]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[27]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[27]),
        .I4(Q[0]),
        .I5(reg0_i[27]),
        .O(reg_rd_dat[27]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[28]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[28]),
        .I4(Q[0]),
        .I5(reg0_i[28]),
        .O(reg_rd_dat[28]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[29]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[29]),
        .I4(Q[0]),
        .I5(reg0_i[29]),
        .O(reg_rd_dat[29]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[2]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[2]),
        .I4(Q[0]),
        .I5(reg0_i[2]),
        .O(reg_rd_dat[2]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[30]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[30]),
        .I4(Q[0]),
        .I5(reg0_i[30]),
        .O(reg_rd_dat[30]));
  LUT3 #(
    .INIT(8'hBF)) 
    \axi_rdata[31]_i_1 
       (.I0(axil_rvalid),
        .I1(axil_arvalid),
        .I2(axil_arready),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[31]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[31]),
        .I4(Q[0]),
        .I5(reg0_i[31]),
        .O(reg_rd_dat[31]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \axi_rdata[31]_i_3 
       (.I0(reg_rd_adr[4]),
        .I1(reg_rd_adr[5]),
        .I2(reg_rd_adr[6]),
        .I3(reg_rd_adr[7]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_rdata[31]_i_5 
       (.I0(reg_rd_adr[6]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[5]),
        .I3(reg_rd_adr[4]),
        .I4(Q[1]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[3]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[3]),
        .I4(Q[0]),
        .I5(reg0_i[3]),
        .O(reg_rd_dat[3]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[4]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[4]),
        .I4(Q[0]),
        .I5(reg0_i[4]),
        .O(reg_rd_dat[4]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[5]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[5]),
        .I4(Q[0]),
        .I5(reg0_i[5]),
        .O(reg_rd_dat[5]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[6]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[6]),
        .I4(Q[0]),
        .I5(reg0_i[6]),
        .O(reg_rd_dat[6]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[7]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[7]),
        .I4(Q[0]),
        .I5(reg0_i[7]),
        .O(reg_rd_dat[7]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[8]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[8]),
        .I4(Q[0]),
        .I5(reg0_i[8]),
        .O(reg_rd_dat[8]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[9]_0 ),
        .I2(\axi_rdata[31]_i_5_n_0 ),
        .I3(reg1_i[9]),
        .I4(Q[0]),
        .I5(reg0_i[9]),
        .O(reg_rd_dat[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[0]),
        .Q(axil_rdata[0]),
        .R(\axi_rdata[31]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \regs_out[0][31]_i_1 
       (.I0(reg_wr_adr[7]),
        .I1(reg_wr_adr[2]),
        .I2(\regs_out[0][31]_i_2_n_0 ),
        .I3(reg_wr_adr[6]),
        .I4(reg_wr_adr[3]),
        .O(\axi_awaddr_reg[7]_2 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \regs_out[0][31]_i_2 
       (.I0(reg_wr_adr[4]),
        .I1(axil_awready),
        .I2(axil_wvalid),
        .I3(axil_awvalid),
        .I4(axil_wready),
        .I5(reg_wr_adr[5]),
        .O(\regs_out[0][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \regs_out[1][31]_i_1 
       (.I0(reg_wr_adr[7]),
        .I1(reg_wr_adr[2]),
        .I2(\regs_out[0][31]_i_2_n_0 ),
        .I3(reg_wr_adr[6]),
        .I4(reg_wr_adr[3]),
        .O(\axi_awaddr_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \regs_out[2][31]_i_1 
       (.I0(reg_wr_adr[7]),
        .I1(reg_wr_adr[2]),
        .I2(\regs_out[0][31]_i_2_n_0 ),
        .I3(reg_wr_adr[6]),
        .I4(reg_wr_adr[3]),
        .O(\axi_awaddr_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \regs_out[3][31]_i_1 
       (.I0(reg_wr_adr[7]),
        .I1(reg_wr_adr[2]),
        .I2(\regs_out[0][31]_i_2_n_0 ),
        .I3(reg_wr_adr[6]),
        .I4(reg_wr_adr[3]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "ComBlock" *) 
module design_1_comblock_0_0_ComBlock
   (\regs_out_reg[3][31]_0 ,
    reg3_o,
    reg2_o,
    reg1_o,
    reg0_o,
    \regs_out_reg[3][30]_0 ,
    \regs_out_reg[3][29]_0 ,
    \regs_out_reg[3][28]_0 ,
    \regs_out_reg[3][27]_0 ,
    \regs_out_reg[3][26]_0 ,
    \regs_out_reg[3][25]_0 ,
    \regs_out_reg[3][24]_0 ,
    \regs_out_reg[3][23]_0 ,
    \regs_out_reg[3][22]_0 ,
    \regs_out_reg[3][21]_0 ,
    \regs_out_reg[3][20]_0 ,
    \regs_out_reg[3][19]_0 ,
    \regs_out_reg[3][18]_0 ,
    \regs_out_reg[3][17]_0 ,
    \regs_out_reg[3][16]_0 ,
    \regs_out_reg[3][15]_0 ,
    \regs_out_reg[3][14]_0 ,
    \regs_out_reg[3][13]_0 ,
    \regs_out_reg[3][12]_0 ,
    \regs_out_reg[3][11]_0 ,
    \regs_out_reg[3][10]_0 ,
    \regs_out_reg[3][9]_0 ,
    \regs_out_reg[3][8]_0 ,
    \regs_out_reg[3][7]_0 ,
    \regs_out_reg[3][6]_0 ,
    \regs_out_reg[3][5]_0 ,
    \regs_out_reg[3][4]_0 ,
    \regs_out_reg[3][3]_0 ,
    \regs_out_reg[3][2]_0 ,
    \regs_out_reg[3][1]_0 ,
    \regs_out_reg[3][0]_0 ,
    Q,
    E,
    axil_wdata,
    axil_aclk,
    \regs_out_reg[1][31]_0 ,
    \regs_out_reg[2][31]_0 ,
    \regs_out_reg[3][31]_1 );
  output \regs_out_reg[3][31]_0 ;
  output [31:0]reg3_o;
  output [31:0]reg2_o;
  output [31:0]reg1_o;
  output [31:0]reg0_o;
  output \regs_out_reg[3][30]_0 ;
  output \regs_out_reg[3][29]_0 ;
  output \regs_out_reg[3][28]_0 ;
  output \regs_out_reg[3][27]_0 ;
  output \regs_out_reg[3][26]_0 ;
  output \regs_out_reg[3][25]_0 ;
  output \regs_out_reg[3][24]_0 ;
  output \regs_out_reg[3][23]_0 ;
  output \regs_out_reg[3][22]_0 ;
  output \regs_out_reg[3][21]_0 ;
  output \regs_out_reg[3][20]_0 ;
  output \regs_out_reg[3][19]_0 ;
  output \regs_out_reg[3][18]_0 ;
  output \regs_out_reg[3][17]_0 ;
  output \regs_out_reg[3][16]_0 ;
  output \regs_out_reg[3][15]_0 ;
  output \regs_out_reg[3][14]_0 ;
  output \regs_out_reg[3][13]_0 ;
  output \regs_out_reg[3][12]_0 ;
  output \regs_out_reg[3][11]_0 ;
  output \regs_out_reg[3][10]_0 ;
  output \regs_out_reg[3][9]_0 ;
  output \regs_out_reg[3][8]_0 ;
  output \regs_out_reg[3][7]_0 ;
  output \regs_out_reg[3][6]_0 ;
  output \regs_out_reg[3][5]_0 ;
  output \regs_out_reg[3][4]_0 ;
  output \regs_out_reg[3][3]_0 ;
  output \regs_out_reg[3][2]_0 ;
  output \regs_out_reg[3][1]_0 ;
  output \regs_out_reg[3][0]_0 ;
  input [1:0]Q;
  input [0:0]E;
  input [31:0]axil_wdata;
  input axil_aclk;
  input [0:0]\regs_out_reg[1][31]_0 ;
  input [0:0]\regs_out_reg[2][31]_0 ;
  input [0:0]\regs_out_reg[3][31]_1 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire axil_aclk;
  wire [31:0]axil_wdata;
  wire [31:0]reg0_o;
  wire [31:0]reg1_o;
  wire [31:0]reg2_o;
  wire [31:0]reg3_o;
  wire [0:0]\regs_out_reg[1][31]_0 ;
  wire [0:0]\regs_out_reg[2][31]_0 ;
  wire \regs_out_reg[3][0]_0 ;
  wire \regs_out_reg[3][10]_0 ;
  wire \regs_out_reg[3][11]_0 ;
  wire \regs_out_reg[3][12]_0 ;
  wire \regs_out_reg[3][13]_0 ;
  wire \regs_out_reg[3][14]_0 ;
  wire \regs_out_reg[3][15]_0 ;
  wire \regs_out_reg[3][16]_0 ;
  wire \regs_out_reg[3][17]_0 ;
  wire \regs_out_reg[3][18]_0 ;
  wire \regs_out_reg[3][19]_0 ;
  wire \regs_out_reg[3][1]_0 ;
  wire \regs_out_reg[3][20]_0 ;
  wire \regs_out_reg[3][21]_0 ;
  wire \regs_out_reg[3][22]_0 ;
  wire \regs_out_reg[3][23]_0 ;
  wire \regs_out_reg[3][24]_0 ;
  wire \regs_out_reg[3][25]_0 ;
  wire \regs_out_reg[3][26]_0 ;
  wire \regs_out_reg[3][27]_0 ;
  wire \regs_out_reg[3][28]_0 ;
  wire \regs_out_reg[3][29]_0 ;
  wire \regs_out_reg[3][2]_0 ;
  wire \regs_out_reg[3][30]_0 ;
  wire \regs_out_reg[3][31]_0 ;
  wire [0:0]\regs_out_reg[3][31]_1 ;
  wire \regs_out_reg[3][3]_0 ;
  wire \regs_out_reg[3][4]_0 ;
  wire \regs_out_reg[3][5]_0 ;
  wire \regs_out_reg[3][6]_0 ;
  wire \regs_out_reg[3][7]_0 ;
  wire \regs_out_reg[3][8]_0 ;
  wire \regs_out_reg[3][9]_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(reg3_o[0]),
        .I1(reg2_o[0]),
        .I2(Q[1]),
        .I3(reg1_o[0]),
        .I4(Q[0]),
        .I5(reg0_o[0]),
        .O(\regs_out_reg[3][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(reg3_o[10]),
        .I1(reg2_o[10]),
        .I2(Q[1]),
        .I3(reg1_o[10]),
        .I4(Q[0]),
        .I5(reg0_o[10]),
        .O(\regs_out_reg[3][10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(reg3_o[11]),
        .I1(reg2_o[11]),
        .I2(Q[1]),
        .I3(reg1_o[11]),
        .I4(Q[0]),
        .I5(reg0_o[11]),
        .O(\regs_out_reg[3][11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(reg3_o[12]),
        .I1(reg2_o[12]),
        .I2(Q[1]),
        .I3(reg1_o[12]),
        .I4(Q[0]),
        .I5(reg0_o[12]),
        .O(\regs_out_reg[3][12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(reg3_o[13]),
        .I1(reg2_o[13]),
        .I2(Q[1]),
        .I3(reg1_o[13]),
        .I4(Q[0]),
        .I5(reg0_o[13]),
        .O(\regs_out_reg[3][13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(reg3_o[14]),
        .I1(reg2_o[14]),
        .I2(Q[1]),
        .I3(reg1_o[14]),
        .I4(Q[0]),
        .I5(reg0_o[14]),
        .O(\regs_out_reg[3][14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(reg3_o[15]),
        .I1(reg2_o[15]),
        .I2(Q[1]),
        .I3(reg1_o[15]),
        .I4(Q[0]),
        .I5(reg0_o[15]),
        .O(\regs_out_reg[3][15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(reg3_o[16]),
        .I1(reg2_o[16]),
        .I2(Q[1]),
        .I3(reg1_o[16]),
        .I4(Q[0]),
        .I5(reg0_o[16]),
        .O(\regs_out_reg[3][16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(reg3_o[17]),
        .I1(reg2_o[17]),
        .I2(Q[1]),
        .I3(reg1_o[17]),
        .I4(Q[0]),
        .I5(reg0_o[17]),
        .O(\regs_out_reg[3][17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(reg3_o[18]),
        .I1(reg2_o[18]),
        .I2(Q[1]),
        .I3(reg1_o[18]),
        .I4(Q[0]),
        .I5(reg0_o[18]),
        .O(\regs_out_reg[3][18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(reg3_o[19]),
        .I1(reg2_o[19]),
        .I2(Q[1]),
        .I3(reg1_o[19]),
        .I4(Q[0]),
        .I5(reg0_o[19]),
        .O(\regs_out_reg[3][19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(reg3_o[1]),
        .I1(reg2_o[1]),
        .I2(Q[1]),
        .I3(reg1_o[1]),
        .I4(Q[0]),
        .I5(reg0_o[1]),
        .O(\regs_out_reg[3][1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(reg3_o[20]),
        .I1(reg2_o[20]),
        .I2(Q[1]),
        .I3(reg1_o[20]),
        .I4(Q[0]),
        .I5(reg0_o[20]),
        .O(\regs_out_reg[3][20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(reg3_o[21]),
        .I1(reg2_o[21]),
        .I2(Q[1]),
        .I3(reg1_o[21]),
        .I4(Q[0]),
        .I5(reg0_o[21]),
        .O(\regs_out_reg[3][21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(reg3_o[22]),
        .I1(reg2_o[22]),
        .I2(Q[1]),
        .I3(reg1_o[22]),
        .I4(Q[0]),
        .I5(reg0_o[22]),
        .O(\regs_out_reg[3][22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(reg3_o[23]),
        .I1(reg2_o[23]),
        .I2(Q[1]),
        .I3(reg1_o[23]),
        .I4(Q[0]),
        .I5(reg0_o[23]),
        .O(\regs_out_reg[3][23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(reg3_o[24]),
        .I1(reg2_o[24]),
        .I2(Q[1]),
        .I3(reg1_o[24]),
        .I4(Q[0]),
        .I5(reg0_o[24]),
        .O(\regs_out_reg[3][24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(reg3_o[25]),
        .I1(reg2_o[25]),
        .I2(Q[1]),
        .I3(reg1_o[25]),
        .I4(Q[0]),
        .I5(reg0_o[25]),
        .O(\regs_out_reg[3][25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(reg3_o[26]),
        .I1(reg2_o[26]),
        .I2(Q[1]),
        .I3(reg1_o[26]),
        .I4(Q[0]),
        .I5(reg0_o[26]),
        .O(\regs_out_reg[3][26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(reg3_o[27]),
        .I1(reg2_o[27]),
        .I2(Q[1]),
        .I3(reg1_o[27]),
        .I4(Q[0]),
        .I5(reg0_o[27]),
        .O(\regs_out_reg[3][27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(reg3_o[28]),
        .I1(reg2_o[28]),
        .I2(Q[1]),
        .I3(reg1_o[28]),
        .I4(Q[0]),
        .I5(reg0_o[28]),
        .O(\regs_out_reg[3][28]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(reg3_o[29]),
        .I1(reg2_o[29]),
        .I2(Q[1]),
        .I3(reg1_o[29]),
        .I4(Q[0]),
        .I5(reg0_o[29]),
        .O(\regs_out_reg[3][29]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(reg3_o[2]),
        .I1(reg2_o[2]),
        .I2(Q[1]),
        .I3(reg1_o[2]),
        .I4(Q[0]),
        .I5(reg0_o[2]),
        .O(\regs_out_reg[3][2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(reg3_o[30]),
        .I1(reg2_o[30]),
        .I2(Q[1]),
        .I3(reg1_o[30]),
        .I4(Q[0]),
        .I5(reg0_o[30]),
        .O(\regs_out_reg[3][30]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(reg3_o[31]),
        .I1(reg2_o[31]),
        .I2(Q[1]),
        .I3(reg1_o[31]),
        .I4(Q[0]),
        .I5(reg0_o[31]),
        .O(\regs_out_reg[3][31]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(reg3_o[3]),
        .I1(reg2_o[3]),
        .I2(Q[1]),
        .I3(reg1_o[3]),
        .I4(Q[0]),
        .I5(reg0_o[3]),
        .O(\regs_out_reg[3][3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(reg3_o[4]),
        .I1(reg2_o[4]),
        .I2(Q[1]),
        .I3(reg1_o[4]),
        .I4(Q[0]),
        .I5(reg0_o[4]),
        .O(\regs_out_reg[3][4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(reg3_o[5]),
        .I1(reg2_o[5]),
        .I2(Q[1]),
        .I3(reg1_o[5]),
        .I4(Q[0]),
        .I5(reg0_o[5]),
        .O(\regs_out_reg[3][5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(reg3_o[6]),
        .I1(reg2_o[6]),
        .I2(Q[1]),
        .I3(reg1_o[6]),
        .I4(Q[0]),
        .I5(reg0_o[6]),
        .O(\regs_out_reg[3][6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(reg3_o[7]),
        .I1(reg2_o[7]),
        .I2(Q[1]),
        .I3(reg1_o[7]),
        .I4(Q[0]),
        .I5(reg0_o[7]),
        .O(\regs_out_reg[3][7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(reg3_o[8]),
        .I1(reg2_o[8]),
        .I2(Q[1]),
        .I3(reg1_o[8]),
        .I4(Q[0]),
        .I5(reg0_o[8]),
        .O(\regs_out_reg[3][8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(reg3_o[9]),
        .I1(reg2_o[9]),
        .I2(Q[1]),
        .I3(reg1_o[9]),
        .I4(Q[0]),
        .I5(reg0_o[9]),
        .O(\regs_out_reg[3][9]_0 ));
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
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[0]),
        .Q(reg3_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[10]),
        .Q(reg3_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[11]),
        .Q(reg3_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[12]),
        .Q(reg3_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[13]),
        .Q(reg3_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[14]),
        .Q(reg3_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[15]),
        .Q(reg3_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][16] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[16]),
        .Q(reg3_o[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][17] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[17]),
        .Q(reg3_o[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][18] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[18]),
        .Q(reg3_o[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][19] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[19]),
        .Q(reg3_o[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[1]),
        .Q(reg3_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][20] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[20]),
        .Q(reg3_o[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][21] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[21]),
        .Q(reg3_o[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][22] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[22]),
        .Q(reg3_o[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][23] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[23]),
        .Q(reg3_o[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][24] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[24]),
        .Q(reg3_o[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][25] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[25]),
        .Q(reg3_o[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][26] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[26]),
        .Q(reg3_o[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][27] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[27]),
        .Q(reg3_o[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][28] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[28]),
        .Q(reg3_o[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][29] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[29]),
        .Q(reg3_o[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[2]),
        .Q(reg3_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][30] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[30]),
        .Q(reg3_o[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][31] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[31]),
        .Q(reg3_o[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[3]),
        .Q(reg3_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[4]),
        .Q(reg3_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[5]),
        .Q(reg3_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[6]),
        .Q(reg3_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[7]),
        .Q(reg3_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[8]),
        .Q(reg3_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][31]_1 ),
        .D(axil_wdata[9]),
        .Q(reg3_o[9]),
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
    reg2_o,
    reg3_o,
    axil_bvalid,
    axil_aclk,
    axil_awaddr,
    axil_araddr,
    axil_arvalid,
    axil_wdata,
    axil_wvalid,
    axil_awvalid,
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
  output axil_bvalid;
  input axil_aclk;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;
  input axil_arvalid;
  input [31:0]axil_wdata;
  input axil_wvalid;
  input axil_awvalid;
  input [31:0]reg1_i;
  input [31:0]reg0_i;
  input axil_aresetn;
  input axil_bready;
  input axil_rready;

  wire AXIL_inst_n_42;
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
  wire comblock_i_n_129;
  wire comblock_i_n_130;
  wire comblock_i_n_131;
  wire comblock_i_n_132;
  wire comblock_i_n_133;
  wire comblock_i_n_134;
  wire comblock_i_n_135;
  wire comblock_i_n_136;
  wire comblock_i_n_137;
  wire comblock_i_n_138;
  wire comblock_i_n_139;
  wire comblock_i_n_140;
  wire comblock_i_n_141;
  wire comblock_i_n_142;
  wire comblock_i_n_143;
  wire comblock_i_n_144;
  wire comblock_i_n_145;
  wire comblock_i_n_146;
  wire comblock_i_n_147;
  wire comblock_i_n_148;
  wire comblock_i_n_149;
  wire comblock_i_n_150;
  wire comblock_i_n_151;
  wire comblock_i_n_152;
  wire comblock_i_n_153;
  wire comblock_i_n_154;
  wire comblock_i_n_155;
  wire comblock_i_n_156;
  wire comblock_i_n_157;
  wire comblock_i_n_158;
  wire comblock_i_n_159;
  wire [31:0]reg0_i;
  wire [31:0]reg0_o;
  wire [31:0]reg1_i;
  wire [31:0]reg1_o;
  wire [31:0]reg2_o;
  wire [31:0]reg3_o;
  wire [3:2]reg_rd_adr;
  wire \regs_out[1]_1 ;
  wire \regs_out[2]_2 ;
  wire \regs_out[3]_0 ;

  design_1_comblock_0_0_AXIL AXIL_inst
       (.E(\regs_out[3]_0 ),
        .Q(reg_rd_adr),
        .\axi_awaddr_reg[7]_0 (\regs_out[1]_1 ),
        .\axi_awaddr_reg[7]_1 (\regs_out[2]_2 ),
        .\axi_awaddr_reg[7]_2 (AXIL_inst_n_42),
        .\axi_rdata_reg[0]_0 (comblock_i_n_159),
        .\axi_rdata_reg[10]_0 (comblock_i_n_149),
        .\axi_rdata_reg[11]_0 (comblock_i_n_148),
        .\axi_rdata_reg[12]_0 (comblock_i_n_147),
        .\axi_rdata_reg[13]_0 (comblock_i_n_146),
        .\axi_rdata_reg[14]_0 (comblock_i_n_145),
        .\axi_rdata_reg[15]_0 (comblock_i_n_144),
        .\axi_rdata_reg[16]_0 (comblock_i_n_143),
        .\axi_rdata_reg[17]_0 (comblock_i_n_142),
        .\axi_rdata_reg[18]_0 (comblock_i_n_141),
        .\axi_rdata_reg[19]_0 (comblock_i_n_140),
        .\axi_rdata_reg[1]_0 (comblock_i_n_158),
        .\axi_rdata_reg[20]_0 (comblock_i_n_139),
        .\axi_rdata_reg[21]_0 (comblock_i_n_138),
        .\axi_rdata_reg[22]_0 (comblock_i_n_137),
        .\axi_rdata_reg[23]_0 (comblock_i_n_136),
        .\axi_rdata_reg[24]_0 (comblock_i_n_135),
        .\axi_rdata_reg[25]_0 (comblock_i_n_134),
        .\axi_rdata_reg[26]_0 (comblock_i_n_133),
        .\axi_rdata_reg[27]_0 (comblock_i_n_132),
        .\axi_rdata_reg[28]_0 (comblock_i_n_131),
        .\axi_rdata_reg[29]_0 (comblock_i_n_130),
        .\axi_rdata_reg[2]_0 (comblock_i_n_157),
        .\axi_rdata_reg[30]_0 (comblock_i_n_129),
        .\axi_rdata_reg[31]_0 (comblock_i_n_0),
        .\axi_rdata_reg[3]_0 (comblock_i_n_156),
        .\axi_rdata_reg[4]_0 (comblock_i_n_155),
        .\axi_rdata_reg[5]_0 (comblock_i_n_154),
        .\axi_rdata_reg[6]_0 (comblock_i_n_153),
        .\axi_rdata_reg[7]_0 (comblock_i_n_152),
        .\axi_rdata_reg[8]_0 (comblock_i_n_151),
        .\axi_rdata_reg[9]_0 (comblock_i_n_150),
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
        .reg1_i(reg1_i));
  design_1_comblock_0_0_ComBlock comblock_i
       (.E(AXIL_inst_n_42),
        .Q(reg_rd_adr),
        .axil_aclk(axil_aclk),
        .axil_wdata(axil_wdata),
        .reg0_o(reg0_o),
        .reg1_o(reg1_o),
        .reg2_o(reg2_o),
        .reg3_o(reg3_o),
        .\regs_out_reg[1][31]_0 (\regs_out[1]_1 ),
        .\regs_out_reg[2][31]_0 (\regs_out[2]_2 ),
        .\regs_out_reg[3][0]_0 (comblock_i_n_159),
        .\regs_out_reg[3][10]_0 (comblock_i_n_149),
        .\regs_out_reg[3][11]_0 (comblock_i_n_148),
        .\regs_out_reg[3][12]_0 (comblock_i_n_147),
        .\regs_out_reg[3][13]_0 (comblock_i_n_146),
        .\regs_out_reg[3][14]_0 (comblock_i_n_145),
        .\regs_out_reg[3][15]_0 (comblock_i_n_144),
        .\regs_out_reg[3][16]_0 (comblock_i_n_143),
        .\regs_out_reg[3][17]_0 (comblock_i_n_142),
        .\regs_out_reg[3][18]_0 (comblock_i_n_141),
        .\regs_out_reg[3][19]_0 (comblock_i_n_140),
        .\regs_out_reg[3][1]_0 (comblock_i_n_158),
        .\regs_out_reg[3][20]_0 (comblock_i_n_139),
        .\regs_out_reg[3][21]_0 (comblock_i_n_138),
        .\regs_out_reg[3][22]_0 (comblock_i_n_137),
        .\regs_out_reg[3][23]_0 (comblock_i_n_136),
        .\regs_out_reg[3][24]_0 (comblock_i_n_135),
        .\regs_out_reg[3][25]_0 (comblock_i_n_134),
        .\regs_out_reg[3][26]_0 (comblock_i_n_133),
        .\regs_out_reg[3][27]_0 (comblock_i_n_132),
        .\regs_out_reg[3][28]_0 (comblock_i_n_131),
        .\regs_out_reg[3][29]_0 (comblock_i_n_130),
        .\regs_out_reg[3][2]_0 (comblock_i_n_157),
        .\regs_out_reg[3][30]_0 (comblock_i_n_129),
        .\regs_out_reg[3][31]_0 (comblock_i_n_0),
        .\regs_out_reg[3][31]_1 (\regs_out[3]_0 ),
        .\regs_out_reg[3][3]_0 (comblock_i_n_156),
        .\regs_out_reg[3][4]_0 (comblock_i_n_155),
        .\regs_out_reg[3][5]_0 (comblock_i_n_154),
        .\regs_out_reg[3][6]_0 (comblock_i_n_153),
        .\regs_out_reg[3][7]_0 (comblock_i_n_152),
        .\regs_out_reg[3][8]_0 (comblock_i_n_151),
        .\regs_out_reg[3][9]_0 (comblock_i_n_150));
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
