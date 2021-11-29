// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Nov 29 16:32:21 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mlabadm/Desktop/Github/FPGA/nqueens/fsm_test/fsm_test.gen/sources_1/bd/design_1/ip/design_1_sol_counter_0_0/design_1_sol_counter_0_0_sim_netlist.v
// Design      : design_1_sol_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sol_counter_0_0,sol_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sol_counter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_sol_counter_0_0
   (clk,
    reset,
    next_sol,
    count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output next_sol;
  output [31:0]count;

  wire \<const1> ;
  wire clk;
  wire [31:0]count;
  wire reset;

  assign next_sol = \<const1> ;
  design_1_sol_counter_0_0_sol_counter U0
       (.clk(clk),
        .count(count),
        .reset(reset));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "sol_counter" *) 
module design_1_sol_counter_0_0_sol_counter
   (count,
    clk,
    reset);
  output [31:0]count;
  input clk;
  input reset;

  wire clk;
  wire [31:0]count;
  wire \count_reg[3]_i_2_n_0 ;
  wire \count_reg_reg[11]_i_1_n_0 ;
  wire \count_reg_reg[11]_i_1_n_1 ;
  wire \count_reg_reg[11]_i_1_n_2 ;
  wire \count_reg_reg[11]_i_1_n_3 ;
  wire \count_reg_reg[11]_i_1_n_4 ;
  wire \count_reg_reg[11]_i_1_n_5 ;
  wire \count_reg_reg[11]_i_1_n_6 ;
  wire \count_reg_reg[11]_i_1_n_7 ;
  wire \count_reg_reg[15]_i_1_n_0 ;
  wire \count_reg_reg[15]_i_1_n_1 ;
  wire \count_reg_reg[15]_i_1_n_2 ;
  wire \count_reg_reg[15]_i_1_n_3 ;
  wire \count_reg_reg[15]_i_1_n_4 ;
  wire \count_reg_reg[15]_i_1_n_5 ;
  wire \count_reg_reg[15]_i_1_n_6 ;
  wire \count_reg_reg[15]_i_1_n_7 ;
  wire \count_reg_reg[19]_i_1_n_0 ;
  wire \count_reg_reg[19]_i_1_n_1 ;
  wire \count_reg_reg[19]_i_1_n_2 ;
  wire \count_reg_reg[19]_i_1_n_3 ;
  wire \count_reg_reg[19]_i_1_n_4 ;
  wire \count_reg_reg[19]_i_1_n_5 ;
  wire \count_reg_reg[19]_i_1_n_6 ;
  wire \count_reg_reg[19]_i_1_n_7 ;
  wire \count_reg_reg[23]_i_1_n_0 ;
  wire \count_reg_reg[23]_i_1_n_1 ;
  wire \count_reg_reg[23]_i_1_n_2 ;
  wire \count_reg_reg[23]_i_1_n_3 ;
  wire \count_reg_reg[23]_i_1_n_4 ;
  wire \count_reg_reg[23]_i_1_n_5 ;
  wire \count_reg_reg[23]_i_1_n_6 ;
  wire \count_reg_reg[23]_i_1_n_7 ;
  wire \count_reg_reg[27]_i_1_n_0 ;
  wire \count_reg_reg[27]_i_1_n_1 ;
  wire \count_reg_reg[27]_i_1_n_2 ;
  wire \count_reg_reg[27]_i_1_n_3 ;
  wire \count_reg_reg[27]_i_1_n_4 ;
  wire \count_reg_reg[27]_i_1_n_5 ;
  wire \count_reg_reg[27]_i_1_n_6 ;
  wire \count_reg_reg[27]_i_1_n_7 ;
  wire \count_reg_reg[31]_i_1_n_1 ;
  wire \count_reg_reg[31]_i_1_n_2 ;
  wire \count_reg_reg[31]_i_1_n_3 ;
  wire \count_reg_reg[31]_i_1_n_4 ;
  wire \count_reg_reg[31]_i_1_n_5 ;
  wire \count_reg_reg[31]_i_1_n_6 ;
  wire \count_reg_reg[31]_i_1_n_7 ;
  wire \count_reg_reg[3]_i_1_n_0 ;
  wire \count_reg_reg[3]_i_1_n_1 ;
  wire \count_reg_reg[3]_i_1_n_2 ;
  wire \count_reg_reg[3]_i_1_n_3 ;
  wire \count_reg_reg[3]_i_1_n_4 ;
  wire \count_reg_reg[3]_i_1_n_5 ;
  wire \count_reg_reg[3]_i_1_n_6 ;
  wire \count_reg_reg[3]_i_1_n_7 ;
  wire \count_reg_reg[7]_i_1_n_0 ;
  wire \count_reg_reg[7]_i_1_n_1 ;
  wire \count_reg_reg[7]_i_1_n_2 ;
  wire \count_reg_reg[7]_i_1_n_3 ;
  wire \count_reg_reg[7]_i_1_n_4 ;
  wire \count_reg_reg[7]_i_1_n_5 ;
  wire \count_reg_reg[7]_i_1_n_6 ;
  wire \count_reg_reg[7]_i_1_n_7 ;
  wire reset;
  wire [3:3]\NLW_count_reg_reg[31]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[3]_i_2 
       (.I0(count[0]),
        .O(\count_reg[3]_i_2_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[3]_i_1_n_7 ),
        .Q(count[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[11]_i_1_n_5 ),
        .Q(count[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[11]_i_1_n_4 ),
        .Q(count[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[11]_i_1 
       (.CI(\count_reg_reg[7]_i_1_n_0 ),
        .CO({\count_reg_reg[11]_i_1_n_0 ,\count_reg_reg[11]_i_1_n_1 ,\count_reg_reg[11]_i_1_n_2 ,\count_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[11]_i_1_n_4 ,\count_reg_reg[11]_i_1_n_5 ,\count_reg_reg[11]_i_1_n_6 ,\count_reg_reg[11]_i_1_n_7 }),
        .S(count[11:8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_7 ),
        .Q(count[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_6 ),
        .Q(count[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_5 ),
        .Q(count[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_4 ),
        .Q(count[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[15]_i_1 
       (.CI(\count_reg_reg[11]_i_1_n_0 ),
        .CO({\count_reg_reg[15]_i_1_n_0 ,\count_reg_reg[15]_i_1_n_1 ,\count_reg_reg[15]_i_1_n_2 ,\count_reg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[15]_i_1_n_4 ,\count_reg_reg[15]_i_1_n_5 ,\count_reg_reg[15]_i_1_n_6 ,\count_reg_reg[15]_i_1_n_7 }),
        .S(count[15:12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[19]_i_1_n_7 ),
        .Q(count[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[19]_i_1_n_6 ),
        .Q(count[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[19]_i_1_n_5 ),
        .Q(count[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[19]_i_1_n_4 ),
        .Q(count[19]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[19]_i_1 
       (.CI(\count_reg_reg[15]_i_1_n_0 ),
        .CO({\count_reg_reg[19]_i_1_n_0 ,\count_reg_reg[19]_i_1_n_1 ,\count_reg_reg[19]_i_1_n_2 ,\count_reg_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[19]_i_1_n_4 ,\count_reg_reg[19]_i_1_n_5 ,\count_reg_reg[19]_i_1_n_6 ,\count_reg_reg[19]_i_1_n_7 }),
        .S(count[19:16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[3]_i_1_n_6 ),
        .Q(count[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_7 ),
        .Q(count[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_6 ),
        .Q(count[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_5 ),
        .Q(count[22]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_4 ),
        .Q(count[23]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[23]_i_1 
       (.CI(\count_reg_reg[19]_i_1_n_0 ),
        .CO({\count_reg_reg[23]_i_1_n_0 ,\count_reg_reg[23]_i_1_n_1 ,\count_reg_reg[23]_i_1_n_2 ,\count_reg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[23]_i_1_n_4 ,\count_reg_reg[23]_i_1_n_5 ,\count_reg_reg[23]_i_1_n_6 ,\count_reg_reg[23]_i_1_n_7 }),
        .S(count[23:20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[27]_i_1_n_7 ),
        .Q(count[24]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[27]_i_1_n_6 ),
        .Q(count[25]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[27]_i_1_n_5 ),
        .Q(count[26]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[27]_i_1_n_4 ),
        .Q(count[27]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[27]_i_1 
       (.CI(\count_reg_reg[23]_i_1_n_0 ),
        .CO({\count_reg_reg[27]_i_1_n_0 ,\count_reg_reg[27]_i_1_n_1 ,\count_reg_reg[27]_i_1_n_2 ,\count_reg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[27]_i_1_n_4 ,\count_reg_reg[27]_i_1_n_5 ,\count_reg_reg[27]_i_1_n_6 ,\count_reg_reg[27]_i_1_n_7 }),
        .S(count[27:24]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_7 ),
        .Q(count[28]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_6 ),
        .Q(count[29]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[3]_i_1_n_5 ),
        .Q(count[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_5 ),
        .Q(count[30]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_4 ),
        .Q(count[31]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[31]_i_1 
       (.CI(\count_reg_reg[27]_i_1_n_0 ),
        .CO({\NLW_count_reg_reg[31]_i_1_CO_UNCONNECTED [3],\count_reg_reg[31]_i_1_n_1 ,\count_reg_reg[31]_i_1_n_2 ,\count_reg_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[31]_i_1_n_4 ,\count_reg_reg[31]_i_1_n_5 ,\count_reg_reg[31]_i_1_n_6 ,\count_reg_reg[31]_i_1_n_7 }),
        .S(count[31:28]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[3]_i_1_n_4 ),
        .Q(count[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_reg_reg[3]_i_1_n_0 ,\count_reg_reg[3]_i_1_n_1 ,\count_reg_reg[3]_i_1_n_2 ,\count_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg_reg[3]_i_1_n_4 ,\count_reg_reg[3]_i_1_n_5 ,\count_reg_reg[3]_i_1_n_6 ,\count_reg_reg[3]_i_1_n_7 }),
        .S({count[3:1],\count_reg[3]_i_2_n_0 }));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_7 ),
        .Q(count[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_6 ),
        .Q(count[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_5 ),
        .Q(count[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_4 ),
        .Q(count[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg_reg[7]_i_1 
       (.CI(\count_reg_reg[3]_i_1_n_0 ),
        .CO({\count_reg_reg[7]_i_1_n_0 ,\count_reg_reg[7]_i_1_n_1 ,\count_reg_reg[7]_i_1_n_2 ,\count_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[7]_i_1_n_4 ,\count_reg_reg[7]_i_1_n_5 ,\count_reg_reg[7]_i_1_n_6 ,\count_reg_reg[7]_i_1_n_7 }),
        .S(count[7:4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[11]_i_1_n_7 ),
        .Q(count[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[11]_i_1_n_6 ),
        .Q(count[9]));
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
