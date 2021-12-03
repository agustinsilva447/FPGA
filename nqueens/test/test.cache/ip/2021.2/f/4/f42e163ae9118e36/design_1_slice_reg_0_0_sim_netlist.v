// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Nov 25 18:25:29 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_slice_reg_0_0_sim_netlist.v
// Design      : design_1_slice_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_slice_reg_0_0,slice_reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "slice_reg,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    a,
    u);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [0:27]a;
  output [3:0]u;

  wire [0:27]a;
  wire clk;
  wire reset;
  wire [3:0]u;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slice_reg U0
       (.a(a),
        .clk(clk),
        .reset(reset),
        .u(u));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slice_reg
   (u,
    clk,
    reset,
    a);
  output [3:0]u;
  input clk;
  input reset;
  input [0:27]a;

  wire [0:27]a;
  wire clk;
  wire \j[0]_i_1_n_0 ;
  wire \j[1]_i_1_n_0 ;
  wire \j[2]_i_1_n_0 ;
  wire \j_reg_n_0_[0] ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[2] ;
  wire reset;
  wire [3:0]u;
  wire \u[0]_INST_0_i_1_n_0 ;
  wire \u[0]_INST_0_i_2_n_0 ;
  wire \u[1]_INST_0_i_1_n_0 ;
  wire \u[1]_INST_0_i_2_n_0 ;
  wire \u[2]_INST_0_i_1_n_0 ;
  wire \u[2]_INST_0_i_2_n_0 ;
  wire \u[3]_INST_0_i_1_n_0 ;
  wire \u[3]_INST_0_i_2_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(\j_reg_n_0_[0] ),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1 
       (.I0(\j_reg_n_0_[0] ),
        .I1(\j_reg_n_0_[1] ),
        .O(\j[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j[2]_i_1 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[2] ),
        .O(\j[2]_i_1_n_0 ));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\j[0]_i_1_n_0 ),
        .Q(\j_reg_n_0_[0] ));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\j[1]_i_1_n_0 ),
        .Q(\j_reg_n_0_[1] ));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\j[2]_i_1_n_0 ),
        .Q(\j_reg_n_0_[2] ));
  MUXF7 \u[0]_INST_0 
       (.I0(\u[0]_INST_0_i_1_n_0 ),
        .I1(\u[0]_INST_0_i_2_n_0 ),
        .O(u[0]),
        .S(\j_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[0]_INST_0_i_1 
       (.I0(a[27]),
        .I1(a[11]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[19]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[3]),
        .O(\u[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[0]_INST_0_i_2 
       (.I0(a[3]),
        .I1(a[15]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[23]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[7]),
        .O(\u[0]_INST_0_i_2_n_0 ));
  MUXF7 \u[1]_INST_0 
       (.I0(\u[1]_INST_0_i_1_n_0 ),
        .I1(\u[1]_INST_0_i_2_n_0 ),
        .O(u[1]),
        .S(\j_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[1]_INST_0_i_1 
       (.I0(a[26]),
        .I1(a[10]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[18]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[2]),
        .O(\u[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[1]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[14]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[22]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[6]),
        .O(\u[1]_INST_0_i_2_n_0 ));
  MUXF7 \u[2]_INST_0 
       (.I0(\u[2]_INST_0_i_1_n_0 ),
        .I1(\u[2]_INST_0_i_2_n_0 ),
        .O(u[2]),
        .S(\j_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[2]_INST_0_i_1 
       (.I0(a[25]),
        .I1(a[9]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[17]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[1]),
        .O(\u[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[2]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[13]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[21]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[5]),
        .O(\u[2]_INST_0_i_2_n_0 ));
  MUXF7 \u[3]_INST_0 
       (.I0(\u[3]_INST_0_i_1_n_0 ),
        .I1(\u[3]_INST_0_i_2_n_0 ),
        .O(u[3]),
        .S(\j_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[3]_INST_0_i_1 
       (.I0(a[24]),
        .I1(a[8]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[16]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[0]),
        .O(\u[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \u[3]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[12]),
        .I2(\j_reg_n_0_[1] ),
        .I3(a[20]),
        .I4(\j_reg_n_0_[2] ),
        .I5(a[4]),
        .O(\u[3]_INST_0_i_2_n_0 ));
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
