// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Nov 26 16:05:26 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_ctrl_logic_fsm_0_1 -prefix
//               design_1_ctrl_logic_fsm_0_1_ design_1_ctrl_logic_fsm_0_0_sim_netlist.v
// Design      : design_1_ctrl_logic_fsm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_ctrl_logic_fsm_0_1_ctrl_logic_fsm
   (done_aux_reg_0,
    valid,
    a,
    u,
    clk,
    reset);
  output done_aux_reg_0;
  output valid;
  input [0:27]a;
  input [3:0]u;
  input clk;
  input reset;

  wire [0:27]a;
  wire clk;
  wire count;
  wire \count[3]_i_10_n_0 ;
  wire \count[3]_i_11_n_0 ;
  wire \count[3]_i_12_n_0 ;
  wire \count[3]_i_13_n_0 ;
  wire \count[3]_i_14_n_0 ;
  wire \count[3]_i_15_n_0 ;
  wire \count[3]_i_16_n_0 ;
  wire \count[3]_i_17_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[3]_i_4_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[3]_i_6_n_0 ;
  wire \count[3]_i_7_n_0 ;
  wire \count[3]_i_8_n_0 ;
  wire \count[3]_i_9_n_0 ;
  wire [3:0]count_reg;
  wire done_aux_i_10_n_0;
  wire done_aux_i_11_n_0;
  wire done_aux_i_1_n_0;
  wire done_aux_i_2_n_0;
  wire done_aux_i_3_n_0;
  wire done_aux_i_4_n_0;
  wire done_aux_i_5_n_0;
  wire done_aux_i_6_n_0;
  wire done_aux_i_7_n_0;
  wire done_aux_i_8_n_0;
  wire done_aux_i_9_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1_n_0 ;
  wire \j[2]_i_1_n_0 ;
  wire [3:0]j_reg;
  wire [3:1]p_0_in;
  wire [3:0]plusOp;
  wire reset;
  wire [3:0]u;
  wire valid;
  wire valid_aux_i_1_n_0;
  wire valid_aux_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp[2]));
  LUT6 #(
    .INIT(64'h4440000044404440)) 
    \count[3]_i_1 
       (.I0(done_aux_reg_0),
        .I1(\count[3]_i_3_n_0 ),
        .I2(\count[3]_i_4_n_0 ),
        .I3(\count[3]_i_5_n_0 ),
        .I4(done_aux_i_4_n_0),
        .I5(done_aux_i_5_n_0),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \count[3]_i_10 
       (.I0(\count[3]_i_16_n_0 ),
        .I1(j_reg[0]),
        .I2(\count[3]_i_17_n_0 ),
        .I3(\count[3]_i_3_n_0 ),
        .I4(a[2]),
        .O(\count[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[3]_i_11 
       (.I0(j_reg[1]),
        .I1(j_reg[0]),
        .O(\count[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \count[3]_i_12 
       (.I0(a[5]),
        .I1(j_reg[2]),
        .I2(a[21]),
        .I3(j_reg[1]),
        .I4(a[13]),
        .I5(j_reg[0]),
        .O(\count[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[3]_i_13 
       (.I0(a[17]),
        .I1(a[1]),
        .I2(\count[3]_i_11_n_0 ),
        .I3(a[25]),
        .I4(\j[2]_i_1_n_0 ),
        .I5(a[9]),
        .O(\count[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[3]_i_14 
       (.I0(a[19]),
        .I1(a[3]),
        .I2(\count[3]_i_11_n_0 ),
        .I3(a[27]),
        .I4(\j[2]_i_1_n_0 ),
        .I5(a[11]),
        .O(\count[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8C808C8C8C808080)) 
    \count[3]_i_15 
       (.I0(a[15]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .I3(a[23]),
        .I4(j_reg[2]),
        .I5(a[7]),
        .O(\count[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8C8C8C8080808C80)) 
    \count[3]_i_16 
       (.I0(a[14]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .I3(a[6]),
        .I4(j_reg[2]),
        .I5(a[22]),
        .O(\count[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[3]_i_17 
       (.I0(a[18]),
        .I1(a[2]),
        .I2(\count[3]_i_11_n_0 ),
        .I3(a[26]),
        .I4(\j[2]_i_1_n_0 ),
        .I5(a[10]),
        .O(\count[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \count[3]_i_3 
       (.I0(j_reg[3]),
        .I1(j_reg[1]),
        .I2(j_reg[0]),
        .I3(j_reg[2]),
        .O(\count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h56565656A6A6A656)) 
    \count[3]_i_4 
       (.I0(u[3]),
        .I1(a[0]),
        .I2(\count[3]_i_3_n_0 ),
        .I3(j_reg[0]),
        .I4(\count[3]_i_6_n_0 ),
        .I5(\count[3]_i_7_n_0 ),
        .O(\count[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \count[3]_i_5 
       (.I0(u[2]),
        .I1(\count[3]_i_8_n_0 ),
        .I2(\count[3]_i_9_n_0 ),
        .I3(u[0]),
        .I4(u[1]),
        .I5(\count[3]_i_10_n_0 ),
        .O(\count[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[3]_i_6 
       (.I0(a[16]),
        .I1(a[0]),
        .I2(\count[3]_i_11_n_0 ),
        .I3(a[24]),
        .I4(\j[2]_i_1_n_0 ),
        .I5(a[8]),
        .O(\count[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \count[3]_i_7 
       (.I0(a[4]),
        .I1(j_reg[2]),
        .I2(a[20]),
        .I3(j_reg[1]),
        .I4(a[12]),
        .I5(j_reg[0]),
        .O(\count[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \count[3]_i_8 
       (.I0(\count[3]_i_12_n_0 ),
        .I1(\count[3]_i_13_n_0 ),
        .I2(j_reg[0]),
        .I3(\count[3]_i_3_n_0 ),
        .I4(a[1]),
        .O(\count[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \count[3]_i_9 
       (.I0(j_reg[0]),
        .I1(\count[3]_i_14_n_0 ),
        .I2(\count[3]_i_15_n_0 ),
        .I3(\count[3]_i_3_n_0 ),
        .I4(a[3]),
        .O(\count[3]_i_9_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(plusOp[0]),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(plusOp[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(plusOp[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(reset),
        .D(plusOp[3]),
        .Q(count_reg[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF54555454)) 
    done_aux_i_1
       (.I0(j_reg[3]),
        .I1(done_aux_i_2_n_0),
        .I2(done_aux_i_3_n_0),
        .I3(done_aux_i_4_n_0),
        .I4(done_aux_i_5_n_0),
        .I5(done_aux_reg_0),
        .O(done_aux_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    done_aux_i_10
       (.I0(\count[3]_i_9_n_0 ),
        .I1(u[0]),
        .I2(\count[3]_i_10_n_0 ),
        .I3(u[1]),
        .O(done_aux_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000E2E2E2EE)) 
    done_aux_i_11
       (.I0(a[3]),
        .I1(\count[3]_i_3_n_0 ),
        .I2(\count[3]_i_15_n_0 ),
        .I3(\count[3]_i_14_n_0 ),
        .I4(j_reg[0]),
        .I5(u[0]),
        .O(done_aux_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    done_aux_i_2
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .O(done_aux_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_i_3
       (.I0(\count[3]_i_4_n_0 ),
        .I1(\count[3]_i_5_n_0 ),
        .O(done_aux_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFB9DFB9DFB)) 
    done_aux_i_4
       (.I0(j_reg[0]),
        .I1(done_aux_i_6_n_0),
        .I2(done_aux_i_7_n_0),
        .I3(done_aux_i_8_n_0),
        .I4(\count[3]_i_5_n_0 ),
        .I5(j_reg[3]),
        .O(done_aux_i_4_n_0));
  LUT5 #(
    .INIT(32'hC33CC383)) 
    done_aux_i_5
       (.I0(j_reg[3]),
        .I1(j_reg[2]),
        .I2(done_aux_i_9_n_0),
        .I3(done_aux_i_7_n_0),
        .I4(done_aux_i_10_n_0),
        .O(done_aux_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    done_aux_i_6
       (.I0(u[0]),
        .I1(\count[3]_i_9_n_0 ),
        .O(done_aux_i_6_n_0));
  LUT6 #(
    .INIT(64'h9A599A9A59599A59)) 
    done_aux_i_7
       (.I0(\count[3]_i_4_n_0 ),
        .I1(\count[3]_i_8_n_0 ),
        .I2(u[2]),
        .I3(\count[3]_i_10_n_0 ),
        .I4(u[1]),
        .I5(done_aux_i_11_n_0),
        .O(done_aux_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    done_aux_i_8
       (.I0(\count[3]_i_10_n_0 ),
        .I1(u[1]),
        .I2(done_aux_i_11_n_0),
        .I3(j_reg[1]),
        .O(done_aux_i_8_n_0));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    done_aux_i_9
       (.I0(\count[3]_i_10_n_0 ),
        .I1(u[1]),
        .I2(done_aux_i_11_n_0),
        .I3(\count[3]_i_8_n_0 ),
        .I4(u[2]),
        .O(done_aux_i_9_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(done_aux_i_1_n_0),
        .Q(done_aux_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(j_reg[0]),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1 
       (.I0(j_reg[0]),
        .I1(j_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1 
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .O(\j[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000007F)) 
    \j[3]_i_1 
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .I3(j_reg[3]),
        .I4(done_aux_reg_0),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2 
       (.I0(j_reg[1]),
        .I1(j_reg[0]),
        .I2(j_reg[2]),
        .O(p_0_in[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(reset),
        .D(\j[0]_i_1_n_0 ),
        .Q(j_reg[0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(j_reg[1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(reset),
        .D(\j[2]_i_1_n_0 ),
        .Q(j_reg[2]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(j_reg[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    valid_aux_i_1
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(valid_aux_i_2_n_0),
        .I5(valid),
        .O(valid_aux_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    valid_aux_i_2
       (.I0(j_reg[1]),
        .I1(j_reg[0]),
        .I2(j_reg[2]),
        .I3(j_reg[3]),
        .O(valid_aux_i_2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(valid_aux_i_1_n_0),
        .Q(valid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ctrl_logic_fsm_0_0,ctrl_logic_fsm,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ctrl_logic_fsm,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_ctrl_logic_fsm_0_1
   (clk,
    reset,
    a,
    u,
    valid,
    done,
    output_state);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [0:27]a;
  input [3:0]u;
  output valid;
  output done;
  output [2:0]output_state;

  wire \<const0> ;
  wire [0:27]a;
  wire clk;
  wire done;
  wire reset;
  wire [3:0]u;
  wire valid;

  assign output_state[2] = \<const0> ;
  assign output_state[1] = \<const0> ;
  assign output_state[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_ctrl_logic_fsm_0_1_ctrl_logic_fsm U0
       (.a(a),
        .clk(clk),
        .done_aux_reg_0(done),
        .reset(reset),
        .u(u),
        .valid(valid));
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
