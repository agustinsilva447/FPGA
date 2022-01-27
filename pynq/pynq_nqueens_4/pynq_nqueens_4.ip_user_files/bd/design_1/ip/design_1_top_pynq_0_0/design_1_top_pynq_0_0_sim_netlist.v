// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Jan 26 14:38:15 2022
// Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_4/pynq_nqueens_4.gen/sources_1/bd/design_1/ip/design_1_top_pynq_0_0/design_1_top_pynq_0_0_sim_netlist.v
// Design      : design_1_top_pynq_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_pynq_0_0,top_pynq,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top_pynq,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_top_pynq_0_0
   (clk,
    nRst,
    count,
    done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input nRst;
  output [9:0]count;
  output done;

  wire clk;
  wire [9:0]count;
  wire done;
  wire nRst;

  design_1_top_pynq_0_0_top_pynq U0
       (.clk(clk),
        .count(count),
        .done(done),
        .nRst(nRst));
endmodule

(* ORIG_REF_NAME = "cond_ini" *) 
module design_1_top_pynq_0_0_cond_ini
   (AR,
    Q,
    SR,
    done,
    nRst,
    s_next_out,
    clk);
  output [0:0]AR;
  output [3:0]Q;
  output [0:0]SR;
  output done;
  input nRst;
  input s_next_out;
  input clk;

  wire [0:0]AR;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[0] ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk;
  wire done;
  wire nRst;
  wire \s_a_reg[0]_i_1_n_0 ;
  wire \s_a_reg[1]_i_1_n_0 ;
  wire \s_a_reg[2]_i_1_n_0 ;
  wire \s_a_reg[3]_i_1_n_0 ;
  wire s_next_out;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_state[4]_i_1__5 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_n_0_[0] ),
        .I2(nRst),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AD)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(s_next_out),
        .I2(\FSM_sequential_state_reg_n_0_[0] ),
        .I3(nRst),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000EAFA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[0] ),
        .I1(Q[3]),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(s_next_out),
        .I4(nRst),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00,st2_process:10,st1_new_number:01,st3_done:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st0_reset:00,st2_process:10,st1_new_number:01,st3_done:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count_reg[3]_i_2 
       (.I0(\FSM_sequential_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    done_INST_0
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_n_0_[0] ),
        .O(done));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_a_reg[0] 
       (.CLR(1'b0),
        .D(\s_a_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_a_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(\s_a_reg[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_a_reg[1] 
       (.CLR(1'b0),
        .D(\s_a_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \s_a_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_sequential_state_reg_n_0_[0] ),
        .O(\s_a_reg[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_a_reg[2] 
       (.CLR(1'b0),
        .D(\s_a_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \s_a_reg[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_sequential_state_reg_n_0_[0] ),
        .O(\s_a_reg[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \s_a_reg[3] 
       (.CLR(1'b0),
        .D(\s_a_reg[3]_i_1_n_0 ),
        .G(\FSM_sequential_state_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \s_a_reg[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\FSM_sequential_state_reg_n_0_[0] ),
        .O(\s_a_reg[3]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_top_pynq_0_0_ctrl_logic
   (Q,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \FSM_onehot_state_reg[1] ,
    acks_out_reg,
    done_aux_reg_0,
    done_aux_reg_1);
  output [1:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \FSM_onehot_state_reg[1] ;
  input [4:0]acks_out_reg;
  input done_aux_reg_0;
  input done_aux_reg_1;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [4:0]acks_out_reg;
  wire clk;
  wire count;
  wire [3:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire done;
  wire done_aux_i_1_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire j0;
  wire \j[0]_i_1_n_0 ;
  wire [3:0]j_reg;
  wire [3:1]p_0_in;
  wire [3:0]plusOp;
  wire valid;
  wire valid_aux_i_1_n_0;
  wire valid_aux_i_2_n_0;

  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(acks_out_reg[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(acks_out_reg[2]),
        .I1(valid),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \FSM_onehot_state[4]_i_2__2 
       (.I0(acks_out_reg[2]),
        .I1(done),
        .I2(acks_out_reg[0]),
        .I3(acks_out_reg[3]),
        .I4(acks_out_reg[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2
       (.I0(acks_out_reg[2]),
        .I1(valid),
        .I2(done),
        .I3(acks_out_reg[4]),
        .I4(acks_out_reg[0]),
        .I5(acks_out_reg[1]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__2 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp[2]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \count[3]_i_1 
       (.I0(j_reg[3]),
        .I1(\count_reg[0]_0 ),
        .I2(j_reg[0]),
        .I3(\count_reg[0]_1 ),
        .I4(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp[3]));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(count_reg[3]));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    done_aux_i_1
       (.I0(j_reg[3]),
        .I1(done_aux_reg_0),
        .I2(j_reg[0]),
        .I3(done_aux_reg_1),
        .I4(done),
        .O(done_aux_i_1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(j_reg[0]),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1 
       (.I0(j_reg[0]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j[2]_i_1 
       (.I0(Q[0]),
        .I1(j_reg[0]),
        .I2(Q[1]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h00001555)) 
    \j[3]_i_1 
       (.I0(j_reg[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(j_reg[0]),
        .I4(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(j_reg[0]),
        .O(p_0_in[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1_n_0 ),
        .Q(j_reg[0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(Q[0]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(Q[1]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(j_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    valid_aux_i_1
       (.I0(j_reg[3]),
        .I1(valid_aux_i_2_n_0),
        .I2(count_reg[3]),
        .I3(valid),
        .O(valid_aux_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    valid_aux_i_2
       (.I0(Q[0]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(Q[1]),
        .I5(j_reg[0]),
        .O(valid_aux_i_2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_top_pynq_0_0_ctrl_logic__parameterized0
   (\j_reg[1]_0 ,
    \j_reg[1]_1 ,
    \j_reg[1]_2 ,
    \j_reg[1]_3 ,
    \j_reg[2]_0 ,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    Q,
    a_in_7,
    done_aux_reg_i_7_0,
    done_aux_reg_0,
    done_aux_reg_1,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \FSM_onehot_state_reg[1] ,
    \count_reg_reg[0] ,
    next_out_7,
    done_aux_reg_2);
  output \j_reg[1]_0 ;
  output \j_reg[1]_1 ;
  output \j_reg[1]_2 ;
  output \j_reg[1]_3 ;
  output [1:0]\j_reg[2]_0 ;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input [1:0]Q;
  input [27:0]a_in_7;
  input [3:0]done_aux_reg_i_7_0;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \FSM_onehot_state_reg[1] ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_7;
  input done_aux_reg_2;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [27:0]a_in_7;
  wire clk;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[3]_i_10_n_0 ;
  wire \count[3]_i_11_n_0 ;
  wire \count[3]_i_12_n_0 ;
  wire \count[3]_i_13_n_0 ;
  wire \count[3]_i_14_n_0 ;
  wire \count[3]_i_15_n_0 ;
  wire \count[3]_i_16_n_0 ;
  wire \count[3]_i_17_n_0 ;
  wire \count[3]_i_18_n_0 ;
  wire \count[3]_i_19_n_0 ;
  wire \count[3]_i_20_n_0 ;
  wire \count[3]_i_21_n_0 ;
  wire \count[3]_i_22_n_0 ;
  wire \count[3]_i_23_n_0 ;
  wire \count[3]_i_24_n_0 ;
  wire \count[3]_i_25_n_0 ;
  wire \count[3]_i_26_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[3]_i_6_n_0 ;
  wire \count[3]_i_7_n_0 ;
  wire [3:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[3]_i_8_n_0 ;
  wire \count_reg[3]_i_9_n_0 ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux_i_10_n_0;
  wire done_aux_i_11_n_0;
  wire done_aux_i_12_n_0;
  wire done_aux_i_13_n_0;
  wire done_aux_i_14_n_0;
  wire done_aux_i_15_n_0;
  wire done_aux_i_16_n_0;
  wire done_aux_i_17_n_0;
  wire done_aux_i_18_n_0;
  wire done_aux_i_19_n_0;
  wire done_aux_i_1__0_n_0;
  wire done_aux_i_20_n_0;
  wire done_aux_i_21_n_0;
  wire done_aux_i_22_n_0;
  wire done_aux_i_23_n_0;
  wire done_aux_i_24_n_0;
  wire done_aux_i_25_n_0;
  wire done_aux_i_2__0_n_0;
  wire done_aux_i_4_n_0;
  wire done_aux_i_5_n_0;
  wire done_aux_i_6_n_0;
  wire done_aux_i_9_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_aux_reg_2;
  wire [3:0]done_aux_reg_i_7_0;
  wire done_aux_reg_i_7_n_0;
  wire done_aux_reg_i_8_n_0;
  wire j0;
  wire \j[0]_i_1__0_n_0 ;
  wire [3:1]j_reg;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[1]_2 ;
  wire \j_reg[1]_3 ;
  wire [1:0]\j_reg[2]_0 ;
  wire next_out_7;
  wire [3:1]p_0_in__0;
  wire [3:1]plusOp__0;
  wire valid;
  wire valid_aux_i_1__0_n_0;
  wire valid_aux_i_2__0_n_0;

  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\count_reg_reg[0] [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__3 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_7),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__1
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0] [0]),
        .I4(\count_reg_reg[0] [4]),
        .I5(\count_reg_reg[0] [1]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7BDE)) 
    \count[3]_i_10 
       (.I0(a_in_7[13]),
        .I1(a_in_7[12]),
        .I2(done_aux_reg_i_7_0[1]),
        .I3(done_aux_reg_i_7_0[0]),
        .O(\count[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFF7FF7)) 
    \count[3]_i_11 
       (.I0(a_in_7[6]),
        .I1(a_in_7[5]),
        .I2(a_in_7[4]),
        .I3(done_aux_reg_i_7_0[0]),
        .I4(done_aux_reg_i_7_0[1]),
        .I5(done_aux_reg_i_7_0[2]),
        .O(\count[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[3]_i_12 
       (.I0(a_in_7[6]),
        .I1(done_aux_reg_i_7_0[1]),
        .I2(a_in_7[5]),
        .I3(done_aux_reg_i_7_0[2]),
        .I4(a_in_7[4]),
        .I5(done_aux_reg_i_7_0[0]),
        .O(\count[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFFFF42FFFFF2F)) 
    \count[3]_i_13 
       (.I0(a_in_7[22]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[21]),
        .I3(a_in_7[20]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(\count[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6BFFD6FFFF6BFFD6)) 
    \count[3]_i_14 
       (.I0(a_in_7[22]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[21]),
        .I3(a_in_7[20]),
        .I4(done_aux_reg_i_7_0[1]),
        .I5(done_aux_reg_i_7_0[0]),
        .O(\count[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_15 
       (.I0(done_aux_reg_i_7_0[3]),
        .I1(\count[3]_i_19_n_0 ),
        .I2(a_in_7[27]),
        .I3(\count[3]_i_20_n_0 ),
        .O(\count[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_16 
       (.I0(a_in_7[11]),
        .I1(\count[3]_i_21_n_0 ),
        .I2(done_aux_reg_i_7_0[3]),
        .I3(\count[3]_i_22_n_0 ),
        .O(\count[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_17 
       (.I0(done_aux_reg_i_7_0[3]),
        .I1(\count[3]_i_23_n_0 ),
        .I2(a_in_7[19]),
        .I3(\count[3]_i_24_n_0 ),
        .O(\count[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_18 
       (.I0(a_in_7[3]),
        .I1(\count[3]_i_25_n_0 ),
        .I2(done_aux_reg_i_7_0[3]),
        .I3(\count[3]_i_26_n_0 ),
        .O(\count[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF6DFF6666FFB6FF)) 
    \count[3]_i_19 
       (.I0(a_in_7[26]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[25]),
        .I3(a_in_7[24]),
        .I4(done_aux_reg_i_7_0[1]),
        .I5(done_aux_reg_i_7_0[0]),
        .O(\count[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \count[3]_i_1__0 
       (.I0(j_reg[3]),
        .I1(\count_reg[0]_0 ),
        .I2(\j_reg[2]_0 [1]),
        .I3(j_reg[1]),
        .I4(\count_reg[0]_1 ),
        .I5(done),
        .O(count));
  LUT6 #(
    .INIT(64'h6FFBF6FFFF6FDFF6)) 
    \count[3]_i_20 
       (.I0(a_in_7[26]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[25]),
        .I3(a_in_7[24]),
        .I4(done_aux_reg_i_7_0[1]),
        .I5(done_aux_reg_i_7_0[0]),
        .O(\count[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFEFFBDFF7FDFF)) 
    \count[3]_i_21 
       (.I0(a_in_7[10]),
        .I1(done_aux_reg_i_7_0[0]),
        .I2(done_aux_reg_i_7_0[1]),
        .I3(a_in_7[8]),
        .I4(a_in_7[9]),
        .I5(done_aux_reg_i_7_0[2]),
        .O(\count[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6FD6BD6FF6BD6BF6)) 
    \count[3]_i_22 
       (.I0(a_in_7[10]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[9]),
        .I3(a_in_7[8]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(\count[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBD6BD6BDFFFF)) 
    \count[3]_i_23 
       (.I0(a_in_7[18]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[17]),
        .I3(done_aux_reg_i_7_0[1]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(a_in_7[16]),
        .O(\count[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6FBFF6DBDB6FFDF6)) 
    \count[3]_i_24 
       (.I0(a_in_7[18]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[17]),
        .I3(a_in_7[16]),
        .I4(done_aux_reg_i_7_0[1]),
        .I5(done_aux_reg_i_7_0[0]),
        .O(\count[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFF7FFFF)) 
    \count[3]_i_25 
       (.I0(a_in_7[2]),
        .I1(a_in_7[1]),
        .I2(done_aux_reg_i_7_0[1]),
        .I3(done_aux_reg_i_7_0[0]),
        .I4(a_in_7[0]),
        .I5(done_aux_reg_i_7_0[2]),
        .O(\count[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[3]_i_26 
       (.I0(a_in_7[2]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[1]),
        .I3(done_aux_reg_i_7_0[0]),
        .I4(a_in_7[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(\count[3]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2__2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__0[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[3]_i_3 
       (.I0(\count[3]_i_5_n_0 ),
        .I1(Q[0]),
        .I2(\count[3]_i_6_n_0 ),
        .I3(Q[1]),
        .I4(\count[3]_i_7_n_0 ),
        .O(\j_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h00000000BAABEAAE)) 
    \count[3]_i_5 
       (.I0(\count[3]_i_10_n_0 ),
        .I1(done_aux_reg_i_7_0[3]),
        .I2(done_aux_reg_i_7_0[2]),
        .I3(a_in_7[14]),
        .I4(a_in_7[15]),
        .I5(Q[1]),
        .O(\count[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_6 
       (.I0(a_in_7[7]),
        .I1(\count[3]_i_11_n_0 ),
        .I2(done_aux_reg_i_7_0[3]),
        .I3(\count[3]_i_12_n_0 ),
        .O(\count[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_7 
       (.I0(done_aux_reg_i_7_0[3]),
        .I1(\count[3]_i_13_n_0 ),
        .I2(a_in_7[23]),
        .I3(\count[3]_i_14_n_0 ),
        .O(\count[3]_i_7_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(count_reg[3]));
  MUXF8 \count_reg[3]_i_4 
       (.I0(\count_reg[3]_i_8_n_0 ),
        .I1(\count_reg[3]_i_9_n_0 ),
        .O(\j_reg[1]_1 ),
        .S(Q[0]));
  MUXF7 \count_reg[3]_i_8 
       (.I0(\count[3]_i_15_n_0 ),
        .I1(\count[3]_i_16_n_0 ),
        .O(\count_reg[3]_i_8_n_0 ),
        .S(Q[1]));
  MUXF7 \count_reg[3]_i_9 
       (.I0(\count[3]_i_17_n_0 ),
        .I1(\count[3]_i_18_n_0 ),
        .O(\count_reg[3]_i_9_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'h1000010000800008)) 
    done_aux_i_10
       (.I0(a_in_7[6]),
        .I1(a_in_7[5]),
        .I2(a_in_7[4]),
        .I3(done_aux_reg_i_7_0[1]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[2]),
        .O(done_aux_i_10_n_0));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_11
       (.I0(a_in_7[6]),
        .I1(done_aux_reg_i_7_0[1]),
        .I2(a_in_7[5]),
        .I3(done_aux_reg_i_7_0[2]),
        .I4(a_in_7[4]),
        .I5(done_aux_reg_i_7_0[0]),
        .O(done_aux_i_11_n_0));
  LUT6 #(
    .INIT(64'h0B00D000000B00D0)) 
    done_aux_i_12
       (.I0(a_in_7[22]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[21]),
        .I3(a_in_7[20]),
        .I4(done_aux_reg_i_7_0[1]),
        .I5(done_aux_reg_i_7_0[0]),
        .O(done_aux_i_12_n_0));
  LUT6 #(
    .INIT(64'h9400009429000029)) 
    done_aux_i_13
       (.I0(a_in_7[22]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[21]),
        .I3(a_in_7[20]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(done_aux_i_13_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_14
       (.I0(done_aux_reg_i_7_0[3]),
        .I1(done_aux_i_18_n_0),
        .I2(a_in_7[27]),
        .I3(done_aux_i_19_n_0),
        .O(done_aux_i_14_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_15
       (.I0(a_in_7[11]),
        .I1(done_aux_i_20_n_0),
        .I2(done_aux_reg_i_7_0[3]),
        .I3(done_aux_i_21_n_0),
        .O(done_aux_i_15_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_16
       (.I0(done_aux_reg_i_7_0[3]),
        .I1(done_aux_i_22_n_0),
        .I2(a_in_7[19]),
        .I3(done_aux_i_23_n_0),
        .O(done_aux_i_16_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_17
       (.I0(a_in_7[3]),
        .I1(done_aux_i_24_n_0),
        .I2(done_aux_reg_i_7_0[3]),
        .I3(done_aux_i_25_n_0),
        .O(done_aux_i_17_n_0));
  LUT6 #(
    .INIT(64'h0092990000994900)) 
    done_aux_i_18
       (.I0(a_in_7[26]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[25]),
        .I3(a_in_7[24]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(done_aux_i_18_n_0));
  LUT6 #(
    .INIT(64'h9004009009002009)) 
    done_aux_i_19
       (.I0(a_in_7[26]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[25]),
        .I3(a_in_7[24]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(done_aux_i_19_n_0));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    done_aux_i_1__0
       (.I0(j_reg[3]),
        .I1(done_aux_i_2__0_n_0),
        .I2(j_reg[1]),
        .I3(done_aux_reg_2),
        .I4(done),
        .O(done_aux_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    done_aux_i_2
       (.I0(done_aux_i_4_n_0),
        .I1(Q[0]),
        .I2(done_aux_i_5_n_0),
        .I3(Q[1]),
        .I4(done_aux_i_6_n_0),
        .O(\j_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h0040041008200200)) 
    done_aux_i_20
       (.I0(a_in_7[10]),
        .I1(done_aux_reg_i_7_0[1]),
        .I2(done_aux_reg_i_7_0[0]),
        .I3(a_in_7[8]),
        .I4(a_in_7[9]),
        .I5(done_aux_reg_i_7_0[2]),
        .O(done_aux_i_20_n_0));
  LUT6 #(
    .INIT(64'h9029429009429409)) 
    done_aux_i_21
       (.I0(a_in_7[10]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[9]),
        .I3(a_in_7[8]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(done_aux_i_21_n_0));
  LUT6 #(
    .INIT(64'h0042009429004200)) 
    done_aux_i_22
       (.I0(a_in_7[18]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[17]),
        .I3(done_aux_reg_i_7_0[0]),
        .I4(done_aux_reg_i_7_0[1]),
        .I5(a_in_7[16]),
        .O(done_aux_i_22_n_0));
  LUT6 #(
    .INIT(64'h9040249009240209)) 
    done_aux_i_23
       (.I0(a_in_7[18]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[17]),
        .I3(a_in_7[16]),
        .I4(done_aux_reg_i_7_0[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(done_aux_i_23_n_0));
  LUT6 #(
    .INIT(64'h0000100000080000)) 
    done_aux_i_24
       (.I0(a_in_7[2]),
        .I1(a_in_7[1]),
        .I2(done_aux_reg_i_7_0[0]),
        .I3(done_aux_reg_i_7_0[1]),
        .I4(a_in_7[0]),
        .I5(done_aux_reg_i_7_0[2]),
        .O(done_aux_i_24_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_25
       (.I0(a_in_7[2]),
        .I1(done_aux_reg_i_7_0[2]),
        .I2(a_in_7[1]),
        .I3(done_aux_reg_i_7_0[0]),
        .I4(a_in_7[0]),
        .I5(done_aux_reg_i_7_0[1]),
        .O(done_aux_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h4F4A)) 
    done_aux_i_2__0
       (.I0(\j_reg[2]_0 [1]),
        .I1(done_aux_reg_0),
        .I2(\j_reg[2]_0 [0]),
        .I3(done_aux_reg_1),
        .O(done_aux_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF8AA82AA2)) 
    done_aux_i_4
       (.I0(done_aux_i_9_n_0),
        .I1(done_aux_reg_i_7_0[3]),
        .I2(done_aux_reg_i_7_0[2]),
        .I3(a_in_7[14]),
        .I4(a_in_7[15]),
        .I5(Q[1]),
        .O(done_aux_i_4_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_5
       (.I0(a_in_7[7]),
        .I1(done_aux_i_10_n_0),
        .I2(done_aux_reg_i_7_0[3]),
        .I3(done_aux_i_11_n_0),
        .O(done_aux_i_5_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_6
       (.I0(done_aux_reg_i_7_0[3]),
        .I1(done_aux_i_12_n_0),
        .I2(a_in_7[23]),
        .I3(done_aux_i_13_n_0),
        .O(done_aux_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8241)) 
    done_aux_i_9
       (.I0(a_in_7[13]),
        .I1(a_in_7[12]),
        .I2(done_aux_reg_i_7_0[0]),
        .I3(done_aux_reg_i_7_0[1]),
        .O(done_aux_i_9_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__0_n_0),
        .Q(done));
  MUXF8 done_aux_reg_i_3
       (.I0(done_aux_reg_i_7_n_0),
        .I1(done_aux_reg_i_8_n_0),
        .O(\j_reg[1]_0 ),
        .S(Q[0]));
  MUXF7 done_aux_reg_i_7
       (.I0(done_aux_i_14_n_0),
        .I1(done_aux_i_15_n_0),
        .O(done_aux_reg_i_7_n_0),
        .S(Q[1]));
  MUXF7 done_aux_reg_i_8
       (.I0(done_aux_i_16_n_0),
        .I1(done_aux_i_17_n_0),
        .O(done_aux_reg_i_8_n_0),
        .S(Q[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__0 
       (.I0(\j_reg[2]_0 [0]),
        .O(\j[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__0 
       (.I0(j_reg[1]),
        .I1(\j_reg[2]_0 [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j[2]_i_1__0 
       (.I0(\j_reg[2]_0 [0]),
        .I1(j_reg[1]),
        .I2(\j_reg[2]_0 [1]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h0015)) 
    \j[3]_i_1__0 
       (.I0(j_reg[3]),
        .I1(\j_reg[2]_0 [1]),
        .I2(j_reg[1]),
        .I3(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__0 
       (.I0(\j_reg[2]_0 [1]),
        .I1(\j_reg[2]_0 [0]),
        .I2(j_reg[1]),
        .O(p_0_in__0[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__0_n_0 ),
        .Q(\j_reg[2]_0 [0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(j_reg[1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(\j_reg[2]_0 [1]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(j_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    valid_aux_i_1__0
       (.I0(j_reg[3]),
        .I1(valid_aux_i_2__0_n_0),
        .I2(j_reg[1]),
        .I3(valid),
        .O(valid_aux_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    valid_aux_i_2__0
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(\j_reg[2]_0 [0]),
        .I4(\j_reg[2]_0 [1]),
        .I5(count_reg[3]),
        .O(valid_aux_i_2__0_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__0_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_top_pynq_0_0_ctrl_logic__parameterized1
   (\count_reg_reg[3] ,
    \j_reg[2]_0 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[2] ,
    \j_reg[2]_1 ,
    \j_reg[1]_0 ,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[2]_0 ,
    E,
    clk,
    AR,
    a_in_6,
    Q,
    \count_reg[0]_0 ,
    done_aux_reg_0,
    D,
    done_aux_reg_1,
    a_in_5,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    \count_reg[0]_3 ,
    \FSM_onehot_state_reg[1] ,
    \count_reg_reg[0] ,
    next_out_6,
    done_aux_reg_2);
  output \count_reg_reg[3] ;
  output \j_reg[2]_0 ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[2] ;
  output \j_reg[2]_1 ;
  output [1:0]\j_reg[1]_0 ;
  output [1:0]\FSM_onehot_state_reg[2] ;
  output \FSM_onehot_state_reg[2]_0 ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input [23:0]a_in_6;
  input [3:0]Q;
  input [1:0]\count_reg[0]_0 ;
  input done_aux_reg_0;
  input [0:0]D;
  input done_aux_reg_1;
  input [0:0]a_in_5;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input \count_reg[0]_3 ;
  input \FSM_onehot_state_reg[1] ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_6;
  input done_aux_reg_2;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [3:0]Q;
  wire [0:0]a_in_5;
  wire [23:0]a_in_6;
  wire clk;
  wire count;
  wire \count[3]_i_10__0_n_0 ;
  wire \count[3]_i_11__0_n_0 ;
  wire \count[3]_i_12__0_n_0 ;
  wire \count[3]_i_13__0_n_0 ;
  wire \count[3]_i_14__0_n_0 ;
  wire \count[3]_i_15__0_n_0 ;
  wire \count[3]_i_16__0_n_0 ;
  wire \count[3]_i_17__0_n_0 ;
  wire \count[3]_i_18__0_n_0 ;
  wire \count[3]_i_19__0_n_0 ;
  wire \count[3]_i_20__0_n_0 ;
  wire \count[3]_i_21__0_n_0 ;
  wire \count[3]_i_22__0_n_0 ;
  wire \count[3]_i_3__1_n_0 ;
  wire \count[3]_i_5__0_n_0 ;
  wire \count[3]_i_6__0_n_0 ;
  wire \count[3]_i_7__0_n_0 ;
  wire [3:0]count_reg;
  wire [1:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg[0]_3 ;
  wire \count_reg[3]_i_8__0_n_0 ;
  wire \count_reg[3]_i_9__0_n_0 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire done;
  wire done_aux_i_10__0_n_0;
  wire done_aux_i_11__0_n_0;
  wire done_aux_i_12__0_n_0;
  wire done_aux_i_13__0_n_0;
  wire done_aux_i_14__0_n_0;
  wire done_aux_i_15__0_n_0;
  wire done_aux_i_16__0_n_0;
  wire done_aux_i_17__0_n_0;
  wire done_aux_i_18__0_n_0;
  wire done_aux_i_19__0_n_0;
  wire done_aux_i_1__2_n_0;
  wire done_aux_i_20__0_n_0;
  wire done_aux_i_21__0_n_0;
  wire done_aux_i_22__0_n_0;
  wire done_aux_i_2__1_n_0;
  wire done_aux_i_8_n_0;
  wire done_aux_i_9__0_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_aux_reg_2;
  wire done_aux_reg_i_6_n_0;
  wire done_aux_reg_i_7__0_n_0;
  wire j0;
  wire \j[0]_i_1__1_n_0 ;
  wire [3:2]j_reg;
  wire [1:0]\j_reg[1]_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire next_out_6;
  wire [3:1]p_0_in__1;
  wire [3:0]plusOp__1;
  wire valid;
  wire valid_aux_i_1__1_n_0;
  wire valid_aux_i_2__1_n_0;

  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\count_reg_reg[0] [2]),
        .O(\FSM_onehot_state_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__4 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_6),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__3
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0] [0]),
        .I4(\count_reg_reg[0] [4]),
        .I5(\count_reg_reg[0] [1]),
        .O(\FSM_onehot_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__3 
       (.I0(count_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__3 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__2 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7DBE)) 
    \count[3]_i_10__0 
       (.I0(a_in_6[13]),
        .I1(a_in_6[12]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count[3]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_11__0 
       (.I0(a_in_6[23]),
        .I1(\count[3]_i_15__0_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_16__0_n_0 ),
        .O(\count[3]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_12__0 
       (.I0(a_in_6[19]),
        .I1(\count[3]_i_17__0_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_18__0_n_0 ),
        .O(\count[3]_i_12__0_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_13__0 
       (.I0(a_in_6[7]),
        .I1(\count[3]_i_19__0_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_20__0_n_0 ),
        .O(\count[3]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_14__0 
       (.I0(a_in_6[3]),
        .I1(\count[3]_i_21__0_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_22__0_n_0 ),
        .O(\count[3]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFFFF42FFFFF2F)) 
    \count[3]_i_15__0 
       (.I0(a_in_6[22]),
        .I1(Q[2]),
        .I2(a_in_6[21]),
        .I3(a_in_6[20]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count[3]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h6BFFFF6BD6FFFFD6)) 
    \count[3]_i_16__0 
       (.I0(a_in_6[22]),
        .I1(Q[2]),
        .I2(a_in_6[21]),
        .I3(a_in_6[20]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count[3]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFBDFF6BD6FFBDFF)) 
    \count[3]_i_17__0 
       (.I0(a_in_6[18]),
        .I1(Q[2]),
        .I2(a_in_6[17]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(a_in_6[16]),
        .O(\count[3]_i_17__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FBFDB6FF6DBFDF6)) 
    \count[3]_i_18__0 
       (.I0(a_in_6[18]),
        .I1(Q[2]),
        .I2(a_in_6[17]),
        .I3(a_in_6[16]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count[3]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFF7FF7)) 
    \count[3]_i_19__0 
       (.I0(a_in_6[6]),
        .I1(a_in_6[5]),
        .I2(a_in_6[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[3]_i_19__0_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \count[3]_i_1__1 
       (.I0(j_reg[3]),
        .I1(\count[3]_i_3__1_n_0 ),
        .I2(j_reg[2]),
        .I3(\count_reg[0]_1 ),
        .I4(done),
        .O(count));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[3]_i_20__0 
       (.I0(a_in_6[6]),
        .I1(Q[1]),
        .I2(a_in_6[5]),
        .I3(Q[2]),
        .I4(a_in_6[4]),
        .I5(Q[0]),
        .O(\count[3]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFF7FFFF)) 
    \count[3]_i_21__0 
       (.I0(a_in_6[2]),
        .I1(a_in_6[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_6[0]),
        .I5(Q[2]),
        .O(\count[3]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[3]_i_22__0 
       (.I0(a_in_6[2]),
        .I1(Q[2]),
        .I2(a_in_6[1]),
        .I3(Q[0]),
        .I4(a_in_6[0]),
        .I5(Q[1]),
        .O(\count[3]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2__0 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .O(plusOp__1[3]));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[3]_i_3__0 
       (.I0(a_in_6[11]),
        .I1(\count[3]_i_5__0_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_6__0_n_0 ),
        .I4(\count_reg[0]_0 [0]),
        .I5(\count[3]_i_7__0_n_0 ),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000054511040)) 
    \count[3]_i_3__1 
       (.I0(\j_reg[1]_0 [1]),
        .I1(a_in_5),
        .I2(\count_reg[0]_2 ),
        .I3(D),
        .I4(\count_reg[0]_3 ),
        .I5(\j_reg[1]_0 [0]),
        .O(\count[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFEFFBDFF7FDFF)) 
    \count[3]_i_5__0 
       (.I0(a_in_6[10]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_6[8]),
        .I4(a_in_6[9]),
        .I5(Q[2]),
        .O(\count[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FD6F6BDBD6F6BF6)) 
    \count[3]_i_6__0 
       (.I0(a_in_6[10]),
        .I1(Q[2]),
        .I2(a_in_6[9]),
        .I3(a_in_6[8]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[3]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4182)) 
    \count[3]_i_7__0 
       (.I0(a_in_6[15]),
        .I1(a_in_6[14]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\count[3]_i_10__0_n_0 ),
        .O(\count[3]_i_7__0_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__1[0]),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__1[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__1[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__1[3]),
        .Q(count_reg[3]));
  MUXF8 \count_reg[3]_i_4__0 
       (.I0(\count_reg[3]_i_8__0_n_0 ),
        .I1(\count_reg[3]_i_9__0_n_0 ),
        .O(\j_reg[2]_1 ),
        .S(\count_reg[0]_0 [1]));
  MUXF7 \count_reg[3]_i_8__0 
       (.I0(\count[3]_i_11__0_n_0 ),
        .I1(\count[3]_i_12__0_n_0 ),
        .O(\count_reg[3]_i_8__0_n_0 ),
        .S(\count_reg[0]_0 [0]));
  MUXF7 \count_reg[3]_i_9__0 
       (.I0(\count[3]_i_13__0_n_0 ),
        .I1(\count[3]_i_14__0_n_0 ),
        .O(\count_reg[3]_i_9__0_n_0 ),
        .S(\count_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h8421)) 
    done_aux_i_10__0
       (.I0(a_in_6[13]),
        .I1(a_in_6[12]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(done_aux_i_10__0_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_11__0
       (.I0(a_in_6[23]),
        .I1(done_aux_i_15__0_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_16__0_n_0),
        .O(done_aux_i_11__0_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_12__0
       (.I0(a_in_6[19]),
        .I1(done_aux_i_17__0_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_18__0_n_0),
        .O(done_aux_i_12__0_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_13__0
       (.I0(a_in_6[7]),
        .I1(done_aux_i_19__0_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_20__0_n_0),
        .O(done_aux_i_13__0_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_14__0
       (.I0(a_in_6[3]),
        .I1(done_aux_i_21__0_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_22__0_n_0),
        .O(done_aux_i_14__0_n_0));
  LUT6 #(
    .INIT(64'h0B00D000000B00D0)) 
    done_aux_i_15__0
       (.I0(a_in_6[22]),
        .I1(Q[2]),
        .I2(a_in_6[21]),
        .I3(a_in_6[20]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_15__0_n_0));
  LUT6 #(
    .INIT(64'h9400290000940029)) 
    done_aux_i_16__0
       (.I0(a_in_6[22]),
        .I1(Q[2]),
        .I2(a_in_6[21]),
        .I3(a_in_6[20]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h0000429429420000)) 
    done_aux_i_17__0
       (.I0(a_in_6[18]),
        .I1(Q[2]),
        .I2(a_in_6[17]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(a_in_6[16]),
        .O(done_aux_i_17__0_n_0));
  LUT6 #(
    .INIT(64'h9040092424900209)) 
    done_aux_i_18__0
       (.I0(a_in_6[18]),
        .I1(Q[2]),
        .I2(a_in_6[17]),
        .I3(a_in_6[16]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_18__0_n_0));
  LUT6 #(
    .INIT(64'h1000010000800008)) 
    done_aux_i_19__0
       (.I0(a_in_6[6]),
        .I1(a_in_6[5]),
        .I2(a_in_6[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_19__0_n_0));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    done_aux_i_1__2
       (.I0(j_reg[3]),
        .I1(done_aux_i_2__1_n_0),
        .I2(j_reg[2]),
        .I3(done_aux_reg_2),
        .I4(done),
        .O(done_aux_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_20__0
       (.I0(a_in_6[6]),
        .I1(Q[1]),
        .I2(a_in_6[5]),
        .I3(Q[2]),
        .I4(a_in_6[4]),
        .I5(Q[0]),
        .O(done_aux_i_20__0_n_0));
  LUT6 #(
    .INIT(64'h0000100000080000)) 
    done_aux_i_21__0
       (.I0(a_in_6[2]),
        .I1(a_in_6[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_6[0]),
        .I5(Q[2]),
        .O(done_aux_i_21__0_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_22__0
       (.I0(a_in_6[2]),
        .I1(Q[2]),
        .I2(a_in_6[1]),
        .I3(Q[0]),
        .I4(a_in_6[0]),
        .I5(Q[1]),
        .O(done_aux_i_22__0_n_0));
  LUT6 #(
    .INIT(64'h00000000EFEAFEAE)) 
    done_aux_i_2__1
       (.I0(\j_reg[1]_0 [0]),
        .I1(done_aux_reg_0),
        .I2(D),
        .I3(done_aux_reg_1),
        .I4(a_in_5),
        .I5(\j_reg[1]_0 [1]),
        .O(done_aux_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_4__0
       (.I0(a_in_6[11]),
        .I1(done_aux_i_8_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_9__0_n_0),
        .O(\count_reg_reg[3] ));
  LUT5 #(
    .INIT(32'hBE7D0000)) 
    done_aux_i_5__0
       (.I0(a_in_6[15]),
        .I1(a_in_6[14]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(done_aux_i_10__0_n_0),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h0040041008200200)) 
    done_aux_i_8
       (.I0(a_in_6[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_6[8]),
        .I4(a_in_6[9]),
        .I5(Q[2]),
        .O(done_aux_i_8_n_0));
  LUT6 #(
    .INIT(64'h9029094242909409)) 
    done_aux_i_9__0
       (.I0(a_in_6[10]),
        .I1(Q[2]),
        .I2(a_in_6[9]),
        .I3(a_in_6[8]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_9__0_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__2_n_0),
        .Q(done));
  MUXF8 done_aux_reg_i_3__0
       (.I0(done_aux_reg_i_6_n_0),
        .I1(done_aux_reg_i_7__0_n_0),
        .O(\j_reg[2]_0 ),
        .S(\count_reg[0]_0 [1]));
  MUXF7 done_aux_reg_i_6
       (.I0(done_aux_i_11__0_n_0),
        .I1(done_aux_i_12__0_n_0),
        .O(done_aux_reg_i_6_n_0),
        .S(\count_reg[0]_0 [0]));
  MUXF7 done_aux_reg_i_7__0
       (.I0(done_aux_i_13__0_n_0),
        .I1(done_aux_i_14__0_n_0),
        .O(done_aux_reg_i_7__0_n_0),
        .S(\count_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__1 
       (.I0(\j_reg[1]_0 [0]),
        .O(\j[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__1 
       (.I0(\j_reg[1]_0 [0]),
        .I1(\j_reg[1]_0 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__1 
       (.I0(j_reg[2]),
        .I1(\j_reg[1]_0 [0]),
        .I2(\j_reg[1]_0 [1]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'h00000155)) 
    \j[3]_i_1__1 
       (.I0(j_reg[3]),
        .I1(\j_reg[1]_0 [0]),
        .I2(\j_reg[1]_0 [1]),
        .I3(j_reg[2]),
        .I4(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__1 
       (.I0(\j_reg[1]_0 [0]),
        .I1(\j_reg[1]_0 [1]),
        .I2(j_reg[2]),
        .O(p_0_in__1[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__1_n_0 ),
        .Q(\j_reg[1]_0 [0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(\j_reg[1]_0 [1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(j_reg[2]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(j_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    valid_aux_i_1__1
       (.I0(j_reg[3]),
        .I1(valid_aux_i_2__1_n_0),
        .I2(j_reg[2]),
        .I3(valid),
        .O(valid_aux_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    valid_aux_i_2__1
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(\j_reg[1]_0 [1]),
        .I5(\j_reg[1]_0 [0]),
        .O(valid_aux_i_2__1_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__1_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_top_pynq_0_0_ctrl_logic__parameterized2
   (\count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[0]_0 ,
    \j_reg[0]_1 ,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    D,
    \j_reg[1]_0 ,
    E,
    \FSM_onehot_state_reg[2] ,
    clk,
    AR,
    Q,
    done_aux_reg_i_7__1_0,
    done_aux_reg_i_3__1_0,
    a_in_5,
    \FSM_onehot_state_reg[1] ,
    \count_reg_reg[0]_0 ,
    next_out_5,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    done_aux_reg_0);
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0]_0 ;
  output \j_reg[0]_1 ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output [1:0]D;
  output [1:0]\j_reg[1]_0 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[2] ;
  input clk;
  input [0:0]AR;
  input [2:0]Q;
  input [3:0]done_aux_reg_i_7__1_0;
  input [1:0]done_aux_reg_i_3__1_0;
  input [15:0]a_in_5;
  input \FSM_onehot_state_reg[1] ;
  input [4:0]\count_reg_reg[0]_0 ;
  input next_out_5;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input done_aux_reg_0;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [2:0]Q;
  wire [15:0]a_in_5;
  wire clk;
  wire count;
  wire \count[3]_i_10__1_n_0 ;
  wire \count[3]_i_11__1_n_0 ;
  wire \count[3]_i_12__1_n_0 ;
  wire \count[3]_i_13__1_n_0 ;
  wire \count[3]_i_14__1_n_0 ;
  wire \count[3]_i_15__1_n_0 ;
  wire \count[3]_i_16__1_n_0 ;
  wire \count[3]_i_17__1_n_0 ;
  wire \count[3]_i_18__1_n_0 ;
  wire \count[3]_i_19__1_n_0 ;
  wire \count[3]_i_9_n_0 ;
  wire [3:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[3]_i_7_n_0 ;
  wire \count_reg[3]_i_8__1_n_0 ;
  wire \count_reg_reg[0] ;
  wire [4:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire done;
  wire done_aux_i_10__1_n_0;
  wire done_aux_i_11__1_n_0;
  wire done_aux_i_12__1_n_0;
  wire done_aux_i_13__1_n_0;
  wire done_aux_i_14__1_n_0;
  wire done_aux_i_15__1_n_0;
  wire done_aux_i_16__1_n_0;
  wire done_aux_i_17__1_n_0;
  wire done_aux_i_18__1_n_0;
  wire done_aux_i_1__3_n_0;
  wire done_aux_i_8__0_n_0;
  wire done_aux_i_9__1_n_0;
  wire done_aux_reg_0;
  wire [1:0]done_aux_reg_i_3__1_0;
  wire done_aux_reg_i_6__0_n_0;
  wire [3:0]done_aux_reg_i_7__1_0;
  wire done_aux_reg_i_7__1_n_0;
  wire j0;
  wire \j[0]_i_1__2_n_0 ;
  wire [2:2]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire [1:0]\j_reg[1]_0 ;
  wire next_out_5;
  wire [2:1]p_0_in__2;
  wire [3:0]plusOp__2;
  wire valid;
  wire valid_aux_i_1__2_n_0;
  wire valid_aux_i_2__4_n_0;

  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\count_reg_reg[0]_0 [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__1 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(done),
        .I2(\count_reg_reg[0]_0 [3]),
        .I3(next_out_5),
        .I4(\count_reg_reg[0]_0 [0]),
        .I5(\count_reg_reg[0]_0 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__5
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0]_0 [1]),
        .I4(\count_reg_reg[0]_0 [0]),
        .I5(\count_reg_reg[0]_0 [4]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__4 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__3 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(plusOp__2[2]));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_10__1 
       (.I0(a_in_5[7]),
        .I1(\count[3]_i_15__1_n_0 ),
        .I2(done_aux_reg_i_7__1_0[3]),
        .I3(\count[3]_i_16__1_n_0 ),
        .O(\count[3]_i_10__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4182)) 
    \count[3]_i_11__1 
       (.I0(a_in_5[11]),
        .I1(a_in_5[10]),
        .I2(done_aux_reg_i_7__1_0[2]),
        .I3(done_aux_reg_i_7__1_0[3]),
        .I4(\count[3]_i_17__1_n_0 ),
        .O(\count[3]_i_11__1_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_12__1 
       (.I0(a_in_5[3]),
        .I1(\count[3]_i_18__1_n_0 ),
        .I2(done_aux_reg_i_7__1_0[3]),
        .I3(\count[3]_i_19__1_n_0 ),
        .O(\count[3]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBDFF6BD6FFBDFF)) 
    \count[3]_i_13__1 
       (.I0(a_in_5[14]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(a_in_5[13]),
        .I3(done_aux_reg_i_7__1_0[0]),
        .I4(done_aux_reg_i_7__1_0[1]),
        .I5(a_in_5[12]),
        .O(\count[3]_i_13__1_n_0 ));
  LUT6 #(
    .INIT(64'h6FBFDB6FF6DBFDF6)) 
    \count[3]_i_14__1 
       (.I0(a_in_5[14]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(a_in_5[13]),
        .I3(a_in_5[12]),
        .I4(done_aux_reg_i_7__1_0[0]),
        .I5(done_aux_reg_i_7__1_0[1]),
        .O(\count[3]_i_14__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFEFFBDFF7FDFF)) 
    \count[3]_i_15__1 
       (.I0(a_in_5[6]),
        .I1(done_aux_reg_i_7__1_0[0]),
        .I2(done_aux_reg_i_7__1_0[1]),
        .I3(a_in_5[4]),
        .I4(a_in_5[5]),
        .I5(done_aux_reg_i_7__1_0[2]),
        .O(\count[3]_i_15__1_n_0 ));
  LUT6 #(
    .INIT(64'h6FD6F6BDBD6F6BF6)) 
    \count[3]_i_16__1 
       (.I0(a_in_5[6]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(a_in_5[5]),
        .I3(a_in_5[4]),
        .I4(done_aux_reg_i_7__1_0[1]),
        .I5(done_aux_reg_i_7__1_0[0]),
        .O(\count[3]_i_16__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7DBE)) 
    \count[3]_i_17__1 
       (.I0(a_in_5[9]),
        .I1(a_in_5[8]),
        .I2(done_aux_reg_i_7__1_0[0]),
        .I3(done_aux_reg_i_7__1_0[1]),
        .O(\count[3]_i_17__1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFF7FF7)) 
    \count[3]_i_18__1 
       (.I0(a_in_5[2]),
        .I1(a_in_5[1]),
        .I2(a_in_5[0]),
        .I3(done_aux_reg_i_7__1_0[0]),
        .I4(done_aux_reg_i_7__1_0[1]),
        .I5(done_aux_reg_i_7__1_0[2]),
        .O(\count[3]_i_18__1_n_0 ));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[3]_i_19__1 
       (.I0(a_in_5[2]),
        .I1(done_aux_reg_i_7__1_0[1]),
        .I2(a_in_5[1]),
        .I3(done_aux_reg_i_7__1_0[2]),
        .I4(a_in_5[0]),
        .I5(done_aux_reg_i_7__1_0[0]),
        .O(\count[3]_i_19__1_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \count[3]_i_1__3 
       (.I0(j_reg),
        .I1(\count_reg[0]_0 ),
        .I2(\j_reg[1]_0 [1]),
        .I3(\count_reg[0]_1 ),
        .I4(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_2__3 
       (.I0(count_reg[0]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(plusOp__2[3]));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFF7FFFF)) 
    \count[3]_i_5__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(done_aux_reg_i_7__1_0[0]),
        .I3(done_aux_reg_i_7__1_0[1]),
        .I4(Q[0]),
        .I5(done_aux_reg_i_7__1_0[2]),
        .O(\count_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[3]_i_6__1 
       (.I0(Q[2]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(Q[1]),
        .I3(done_aux_reg_i_7__1_0[0]),
        .I4(Q[0]),
        .I5(done_aux_reg_i_7__1_0[1]),
        .O(\count_reg_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_9 
       (.I0(a_in_5[15]),
        .I1(\count[3]_i_13__1_n_0 ),
        .I2(done_aux_reg_i_7__1_0[3]),
        .I3(\count[3]_i_14__1_n_0 ),
        .O(\count[3]_i_9_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__2[0]),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__2[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__2[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__2[3]),
        .Q(count_reg[3]));
  MUXF8 \count_reg[3]_i_4__1 
       (.I0(\count_reg[3]_i_7_n_0 ),
        .I1(\count_reg[3]_i_8__1_n_0 ),
        .O(\j_reg[0]_1 ),
        .S(done_aux_reg_i_3__1_0[0]));
  MUXF7 \count_reg[3]_i_7 
       (.I0(\count[3]_i_9_n_0 ),
        .I1(\count[3]_i_10__1_n_0 ),
        .O(\count_reg[3]_i_7_n_0 ),
        .S(done_aux_reg_i_3__1_0[1]));
  MUXF7 \count_reg[3]_i_8__1 
       (.I0(\count[3]_i_11__1_n_0 ),
        .I1(\count[3]_i_12__1_n_0 ),
        .O(\count_reg[3]_i_8__1_n_0 ),
        .S(done_aux_reg_i_3__1_0[1]));
  LUT5 #(
    .INIT(32'hBE7D0000)) 
    done_aux_i_10__1
       (.I0(a_in_5[11]),
        .I1(a_in_5[10]),
        .I2(done_aux_reg_i_7__1_0[2]),
        .I3(done_aux_reg_i_7__1_0[3]),
        .I4(done_aux_i_16__1_n_0),
        .O(done_aux_i_10__1_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_11__1
       (.I0(a_in_5[3]),
        .I1(done_aux_i_17__1_n_0),
        .I2(done_aux_reg_i_7__1_0[3]),
        .I3(done_aux_i_18__1_n_0),
        .O(done_aux_i_11__1_n_0));
  LUT6 #(
    .INIT(64'h0000429429420000)) 
    done_aux_i_12__1
       (.I0(a_in_5[14]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(a_in_5[13]),
        .I3(done_aux_reg_i_7__1_0[1]),
        .I4(done_aux_reg_i_7__1_0[0]),
        .I5(a_in_5[12]),
        .O(done_aux_i_12__1_n_0));
  LUT6 #(
    .INIT(64'h9040092424900209)) 
    done_aux_i_13__1
       (.I0(a_in_5[14]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(a_in_5[13]),
        .I3(a_in_5[12]),
        .I4(done_aux_reg_i_7__1_0[1]),
        .I5(done_aux_reg_i_7__1_0[0]),
        .O(done_aux_i_13__1_n_0));
  LUT6 #(
    .INIT(64'h0040041008200200)) 
    done_aux_i_14__1
       (.I0(a_in_5[6]),
        .I1(done_aux_reg_i_7__1_0[1]),
        .I2(done_aux_reg_i_7__1_0[0]),
        .I3(a_in_5[4]),
        .I4(a_in_5[5]),
        .I5(done_aux_reg_i_7__1_0[2]),
        .O(done_aux_i_14__1_n_0));
  LUT6 #(
    .INIT(64'h9029094242909409)) 
    done_aux_i_15__1
       (.I0(a_in_5[6]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(a_in_5[5]),
        .I3(a_in_5[4]),
        .I4(done_aux_reg_i_7__1_0[1]),
        .I5(done_aux_reg_i_7__1_0[0]),
        .O(done_aux_i_15__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8421)) 
    done_aux_i_16__1
       (.I0(a_in_5[9]),
        .I1(a_in_5[8]),
        .I2(done_aux_reg_i_7__1_0[1]),
        .I3(done_aux_reg_i_7__1_0[0]),
        .O(done_aux_i_16__1_n_0));
  LUT6 #(
    .INIT(64'h1000010000800008)) 
    done_aux_i_17__1
       (.I0(a_in_5[2]),
        .I1(a_in_5[1]),
        .I2(a_in_5[0]),
        .I3(done_aux_reg_i_7__1_0[1]),
        .I4(done_aux_reg_i_7__1_0[0]),
        .I5(done_aux_reg_i_7__1_0[2]),
        .O(done_aux_i_17__1_n_0));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_18__1
       (.I0(a_in_5[2]),
        .I1(done_aux_reg_i_7__1_0[1]),
        .I2(a_in_5[1]),
        .I3(done_aux_reg_i_7__1_0[2]),
        .I4(a_in_5[0]),
        .I5(done_aux_reg_i_7__1_0[0]),
        .O(done_aux_i_18__1_n_0));
  LUT5 #(
    .INIT(32'hFFFF222E)) 
    done_aux_i_1__3
       (.I0(done_aux_reg_0),
        .I1(j_reg),
        .I2(\j_reg[1]_0 [0]),
        .I3(\j_reg[1]_0 [1]),
        .I4(done),
        .O(done_aux_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_4__1
       (.I0(Q[2]),
        .I1(done_aux_reg_i_7__1_0[2]),
        .I2(Q[1]),
        .I3(done_aux_reg_i_7__1_0[0]),
        .I4(Q[0]),
        .I5(done_aux_reg_i_7__1_0[1]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h0000100000080000)) 
    done_aux_i_5__1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(done_aux_reg_i_7__1_0[1]),
        .I3(done_aux_reg_i_7__1_0[0]),
        .I4(Q[0]),
        .I5(done_aux_reg_i_7__1_0[2]),
        .O(\count_reg_reg[1] ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_8__0
       (.I0(a_in_5[15]),
        .I1(done_aux_i_12__1_n_0),
        .I2(done_aux_reg_i_7__1_0[3]),
        .I3(done_aux_i_13__1_n_0),
        .O(done_aux_i_8__0_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_9__1
       (.I0(a_in_5[7]),
        .I1(done_aux_i_14__1_n_0),
        .I2(done_aux_reg_i_7__1_0[3]),
        .I3(done_aux_i_15__1_n_0),
        .O(done_aux_i_9__1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__3_n_0),
        .Q(done));
  MUXF8 done_aux_reg_i_3__1
       (.I0(done_aux_reg_i_6__0_n_0),
        .I1(done_aux_reg_i_7__1_n_0),
        .O(\j_reg[0]_0 ),
        .S(done_aux_reg_i_3__1_0[0]));
  MUXF7 done_aux_reg_i_6__0
       (.I0(done_aux_i_8__0_n_0),
        .I1(done_aux_i_9__1_n_0),
        .O(done_aux_reg_i_6__0_n_0),
        .S(done_aux_reg_i_3__1_0[1]));
  MUXF7 done_aux_reg_i_7__1
       (.I0(done_aux_i_10__1_n_0),
        .I1(done_aux_i_11__1_n_0),
        .O(done_aux_reg_i_7__1_n_0),
        .S(done_aux_reg_i_3__1_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__2 
       (.I0(\j_reg[1]_0 [0]),
        .O(\j[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__2 
       (.I0(\j_reg[1]_0 [1]),
        .I1(\j_reg[1]_0 [0]),
        .O(p_0_in__2[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \j[2]_i_1__2 
       (.I0(j_reg),
        .I1(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_2 
       (.I0(\j_reg[1]_0 [1]),
        .I1(\j_reg[1]_0 [0]),
        .O(p_0_in__2[2]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__2_n_0 ),
        .Q(\j_reg[1]_0 [0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[1]),
        .Q(\j_reg[1]_0 [1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[2]),
        .Q(j_reg));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    valid_aux_i_1__2
       (.I0(j_reg),
        .I1(valid_aux_i_2__4_n_0),
        .I2(count_reg[1]),
        .I3(valid),
        .O(valid_aux_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    valid_aux_i_2__4
       (.I0(\j_reg[1]_0 [1]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .I4(\j_reg[1]_0 [0]),
        .O(valid_aux_i_2__4_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__2_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_top_pynq_0_0_ctrl_logic__parameterized3
   (\j_reg[1]_0 ,
    \count_reg_reg[3] ,
    \count_reg_reg[3]_0 ,
    \j_reg[1]_1 ,
    E,
    \FSM_onehot_state_reg[2] ,
    D,
    clk,
    AR,
    Q,
    a_in_4,
    \count_reg[0]_0 ,
    \count_reg_reg[0] ,
    next_out_4,
    \FSM_onehot_state_reg[1] ,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    done_aux_reg_0);
  output \j_reg[1]_0 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[3]_0 ;
  output [1:0]\j_reg[1]_1 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[2] ;
  output [1:0]D;
  input clk;
  input [0:0]AR;
  input [1:0]Q;
  input [15:0]a_in_4;
  input [3:0]\count_reg[0]_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_4;
  input \FSM_onehot_state_reg[1] ;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input done_aux_reg_0;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [15:0]a_in_4;
  wire clk;
  wire count;
  wire \count[3]_i_10__2_n_0 ;
  wire \count[3]_i_11__2_n_0 ;
  wire \count[3]_i_12__2_n_0 ;
  wire \count[3]_i_13__2_n_0 ;
  wire \count[3]_i_5__2_n_0 ;
  wire \count[3]_i_6__2_n_0 ;
  wire \count[3]_i_7__1_n_0 ;
  wire \count[3]_i_8_n_0 ;
  wire \count[3]_i_9__0_n_0 ;
  wire [3:0]count_reg;
  wire [3:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire done;
  wire done_aux_i_10__2_n_0;
  wire done_aux_i_11__2_n_0;
  wire done_aux_i_12__2_n_0;
  wire done_aux_i_13__2_n_0;
  wire done_aux_i_14__2_n_0;
  wire done_aux_i_15__2_n_0;
  wire done_aux_i_1__4_n_0;
  wire done_aux_i_5__2_n_0;
  wire done_aux_i_6__0_n_0;
  wire done_aux_i_7_n_0;
  wire done_aux_i_8__1_n_0;
  wire done_aux_i_9__2_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_i_3__2_n_0;
  wire done_aux_reg_i_4_n_0;
  wire j0;
  wire \j[0]_i_1__3_n_0 ;
  wire [2:2]j_reg;
  wire \j_reg[1]_0 ;
  wire [1:0]\j_reg[1]_1 ;
  wire next_out_4;
  wire [2:1]p_0_in__3;
  wire [3:0]plusOp__3;
  wire valid;
  wire valid_aux_i_1__4_n_0;
  wire valid_aux_i_2__2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\count_reg_reg[0] [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__0 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_4),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__4
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0] [1]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [4]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__4 
       (.I0(count_reg[0]),
        .O(plusOp__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__5 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__3[2]));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_10__2 
       (.I0(a_in_4[7]),
        .I1(\count[3]_i_12__2_n_0 ),
        .I2(\count_reg[0]_0 [3]),
        .I3(\count[3]_i_13__2_n_0 ),
        .O(\count[3]_i_10__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7DBE)) 
    \count[3]_i_11__2 
       (.I0(a_in_4[13]),
        .I1(a_in_4[12]),
        .I2(\count_reg[0]_0 [0]),
        .I3(\count_reg[0]_0 [1]),
        .O(\count[3]_i_11__2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFF7FF7)) 
    \count[3]_i_12__2 
       (.I0(a_in_4[6]),
        .I1(a_in_4[5]),
        .I2(a_in_4[4]),
        .I3(\count_reg[0]_0 [0]),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [2]),
        .O(\count[3]_i_12__2_n_0 ));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[3]_i_13__2 
       (.I0(a_in_4[6]),
        .I1(\count_reg[0]_0 [1]),
        .I2(a_in_4[5]),
        .I3(\count_reg[0]_0 [2]),
        .I4(a_in_4[4]),
        .I5(\count_reg[0]_0 [0]),
        .O(\count[3]_i_13__2_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \count[3]_i_1__4 
       (.I0(j_reg),
        .I1(\count_reg[0]_1 ),
        .I2(\j_reg[1]_1 [0]),
        .I3(\count_reg[0]_2 ),
        .I4(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2__1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__3[3]));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[3]_i_3__2 
       (.I0(a_in_4[11]),
        .I1(\count[3]_i_5__2_n_0 ),
        .I2(\count_reg[0]_0 [3]),
        .I3(\count[3]_i_6__2_n_0 ),
        .I4(Q[0]),
        .I5(\count[3]_i_7__1_n_0 ),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[3]_i_4 
       (.I0(a_in_4[3]),
        .I1(\count[3]_i_8_n_0 ),
        .I2(\count_reg[0]_0 [3]),
        .I3(\count[3]_i_9__0_n_0 ),
        .I4(Q[0]),
        .I5(\count[3]_i_10__2_n_0 ),
        .O(\count_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hFFBFEFFBDFF7FDFF)) 
    \count[3]_i_5__2 
       (.I0(a_in_4[10]),
        .I1(\count_reg[0]_0 [0]),
        .I2(\count_reg[0]_0 [1]),
        .I3(a_in_4[8]),
        .I4(a_in_4[9]),
        .I5(\count_reg[0]_0 [2]),
        .O(\count[3]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'h6FD6F6BDBD6F6BF6)) 
    \count[3]_i_6__2 
       (.I0(a_in_4[10]),
        .I1(\count_reg[0]_0 [2]),
        .I2(a_in_4[9]),
        .I3(a_in_4[8]),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [0]),
        .O(\count[3]_i_6__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4182)) 
    \count[3]_i_7__1 
       (.I0(a_in_4[15]),
        .I1(a_in_4[14]),
        .I2(\count_reg[0]_0 [2]),
        .I3(\count_reg[0]_0 [3]),
        .I4(\count[3]_i_11__2_n_0 ),
        .O(\count[3]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFF7FFFF)) 
    \count[3]_i_8 
       (.I0(a_in_4[2]),
        .I1(a_in_4[1]),
        .I2(\count_reg[0]_0 [0]),
        .I3(\count_reg[0]_0 [1]),
        .I4(a_in_4[0]),
        .I5(\count_reg[0]_0 [2]),
        .O(\count[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[3]_i_9__0 
       (.I0(a_in_4[2]),
        .I1(\count_reg[0]_0 [2]),
        .I2(a_in_4[1]),
        .I3(\count_reg[0]_0 [0]),
        .I4(a_in_4[0]),
        .I5(\count_reg[0]_0 [1]),
        .O(\count[3]_i_9__0_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__3[0]),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__3[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__3[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__3[3]),
        .Q(count_reg[3]));
  LUT6 #(
    .INIT(64'h0040041008200200)) 
    done_aux_i_10__2
       (.I0(a_in_4[10]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\count_reg[0]_0 [0]),
        .I3(a_in_4[8]),
        .I4(a_in_4[9]),
        .I5(\count_reg[0]_0 [2]),
        .O(done_aux_i_10__2_n_0));
  LUT6 #(
    .INIT(64'h9029094242909409)) 
    done_aux_i_11__2
       (.I0(a_in_4[10]),
        .I1(\count_reg[0]_0 [2]),
        .I2(a_in_4[9]),
        .I3(a_in_4[8]),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count_reg[0]_0 [0]),
        .O(done_aux_i_11__2_n_0));
  LUT6 #(
    .INIT(64'h1000010000800008)) 
    done_aux_i_12__2
       (.I0(a_in_4[6]),
        .I1(a_in_4[5]),
        .I2(a_in_4[4]),
        .I3(\count_reg[0]_0 [1]),
        .I4(\count_reg[0]_0 [0]),
        .I5(\count_reg[0]_0 [2]),
        .O(done_aux_i_12__2_n_0));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_13__2
       (.I0(a_in_4[6]),
        .I1(\count_reg[0]_0 [1]),
        .I2(a_in_4[5]),
        .I3(\count_reg[0]_0 [2]),
        .I4(a_in_4[4]),
        .I5(\count_reg[0]_0 [0]),
        .O(done_aux_i_13__2_n_0));
  LUT6 #(
    .INIT(64'h0000100000080000)) 
    done_aux_i_14__2
       (.I0(a_in_4[2]),
        .I1(a_in_4[1]),
        .I2(\count_reg[0]_0 [1]),
        .I3(\count_reg[0]_0 [0]),
        .I4(a_in_4[0]),
        .I5(\count_reg[0]_0 [2]),
        .O(done_aux_i_14__2_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_15__2
       (.I0(a_in_4[2]),
        .I1(\count_reg[0]_0 [2]),
        .I2(a_in_4[1]),
        .I3(\count_reg[0]_0 [0]),
        .I4(a_in_4[0]),
        .I5(\count_reg[0]_0 [1]),
        .O(done_aux_i_15__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    done_aux_i_1__4
       (.I0(j_reg),
        .I1(done_aux_reg_0),
        .I2(done),
        .O(done_aux_i_1__4_n_0));
  LUT5 #(
    .INIT(32'hBE7D0000)) 
    done_aux_i_5__2
       (.I0(a_in_4[15]),
        .I1(a_in_4[14]),
        .I2(\count_reg[0]_0 [2]),
        .I3(\count_reg[0]_0 [3]),
        .I4(done_aux_i_9__2_n_0),
        .O(done_aux_i_5__2_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_6__0
       (.I0(a_in_4[11]),
        .I1(done_aux_i_10__2_n_0),
        .I2(\count_reg[0]_0 [3]),
        .I3(done_aux_i_11__2_n_0),
        .O(done_aux_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_7
       (.I0(a_in_4[7]),
        .I1(done_aux_i_12__2_n_0),
        .I2(\count_reg[0]_0 [3]),
        .I3(done_aux_i_13__2_n_0),
        .O(done_aux_i_7_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_8__1
       (.I0(a_in_4[3]),
        .I1(done_aux_i_14__2_n_0),
        .I2(\count_reg[0]_0 [3]),
        .I3(done_aux_i_15__2_n_0),
        .O(done_aux_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8421)) 
    done_aux_i_9__2
       (.I0(a_in_4[13]),
        .I1(a_in_4[12]),
        .I2(\count_reg[0]_0 [1]),
        .I3(\count_reg[0]_0 [0]),
        .O(done_aux_i_9__2_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__4_n_0),
        .Q(done));
  MUXF8 done_aux_reg_i_2
       (.I0(done_aux_reg_i_3__2_n_0),
        .I1(done_aux_reg_i_4_n_0),
        .O(\j_reg[1]_0 ),
        .S(Q[1]));
  MUXF7 done_aux_reg_i_3__2
       (.I0(done_aux_i_5__2_n_0),
        .I1(done_aux_i_6__0_n_0),
        .O(done_aux_reg_i_3__2_n_0),
        .S(Q[0]));
  MUXF7 done_aux_reg_i_4
       (.I0(done_aux_i_7_n_0),
        .I1(done_aux_i_8__1_n_0),
        .O(done_aux_reg_i_4_n_0),
        .S(Q[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__3 
       (.I0(\j_reg[1]_1 [0]),
        .O(\j[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__3 
       (.I0(\j_reg[1]_1 [0]),
        .I1(\j_reg[1]_1 [1]),
        .O(p_0_in__3[1]));
  LUT4 #(
    .INIT(16'h0015)) 
    \j[2]_i_1__3 
       (.I0(j_reg),
        .I1(\j_reg[1]_1 [1]),
        .I2(\j_reg[1]_1 [0]),
        .I3(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_2__0 
       (.I0(\j_reg[1]_1 [0]),
        .I1(\j_reg[1]_1 [1]),
        .O(p_0_in__3[2]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__3_n_0 ),
        .Q(\j_reg[1]_1 [0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[1]),
        .Q(\j_reg[1]_1 [1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[2]),
        .Q(j_reg));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    valid_aux_i_1__4
       (.I0(j_reg),
        .I1(valid_aux_i_2__2_n_0),
        .I2(valid),
        .O(valid_aux_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    valid_aux_i_2__2
       (.I0(\j_reg[1]_1 [1]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(\j_reg[1]_1 [0]),
        .O(valid_aux_i_2__2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__4_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_top_pynq_0_0_ctrl_logic__parameterized4
   (\count_reg_reg[3] ,
    \count_reg_reg[3]_0 ,
    \j_reg[0]_0 ,
    E,
    \FSM_onehot_state_reg[2] ,
    D,
    \j_reg[1]_0 ,
    clk,
    AR,
    Q,
    a_in_3,
    done_aux_reg_0,
    \count_reg_reg[0] ,
    next_out_3,
    \FSM_onehot_state_reg[1] ,
    \count_reg[0]_0 ,
    done_aux_reg_1);
  output \count_reg_reg[3] ;
  output \count_reg_reg[3]_0 ;
  output [0:0]\j_reg[0]_0 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[2] ;
  output [1:0]D;
  output \j_reg[1]_0 ;
  input clk;
  input [0:0]AR;
  input [3:0]Q;
  input [11:0]a_in_3;
  input [1:0]done_aux_reg_0;
  input [4:0]\count_reg_reg[0] ;
  input next_out_3;
  input \FSM_onehot_state_reg[1] ;
  input \count_reg[0]_0 ;
  input done_aux_reg_1;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [3:0]Q;
  wire [11:0]a_in_3;
  wire clk;
  wire count;
  wire \count[3]_i_10__3_n_0 ;
  wire \count[3]_i_11__3_n_0 ;
  wire \count[3]_i_5__3_n_0 ;
  wire \count[3]_i_6__3_n_0 ;
  wire \count[3]_i_7__2_n_0 ;
  wire \count[3]_i_8__0_n_0 ;
  wire \count[3]_i_9__1_n_0 ;
  wire [3:0]count_reg;
  wire \count_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire done;
  wire done_aux_i_10__3_n_0;
  wire done_aux_i_11__3_n_0;
  wire done_aux_i_1__1_n_0;
  wire done_aux_i_3_n_0;
  wire done_aux_i_4__2_n_0;
  wire done_aux_i_5__3_n_0;
  wire done_aux_i_6__1_n_0;
  wire done_aux_i_7__0_n_0;
  wire done_aux_i_8__2_n_0;
  wire done_aux_i_9__3_n_0;
  wire [1:0]done_aux_reg_0;
  wire done_aux_reg_1;
  wire j0;
  wire \j[0]_i_1__4_n_0 ;
  wire [1:1]j_reg;
  wire [0:0]\j_reg[0]_0 ;
  wire \j_reg[1]_0 ;
  wire next_out_3;
  wire [3:0]plusOp__4;
  wire valid;
  wire valid_aux_i_1__3_n_0;
  wire valid_aux_i_2__3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1__4 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\count_reg_reg[0] [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__4 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_3),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__2
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0] [1]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [4]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(count_reg[0]),
        .O(plusOp__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__2 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__4 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__4[2]));
  LUT6 #(
    .INIT(64'hFFBFEFFBDFF7FDFF)) 
    \count[3]_i_10__3 
       (.I0(a_in_3[10]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_3[8]),
        .I4(a_in_3[9]),
        .I5(Q[2]),
        .O(\count[3]_i_10__3_n_0 ));
  LUT6 #(
    .INIT(64'h6FD6F6BDBD6F6BF6)) 
    \count[3]_i_11__3 
       (.I0(a_in_3[10]),
        .I1(Q[2]),
        .I2(a_in_3[9]),
        .I3(a_in_3[8]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[3]_i_11__3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \count[3]_i_1__2 
       (.I0(\count_reg[0]_0 ),
        .I1(j_reg),
        .I2(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2__4 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__4[3]));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[3]_i_3__3 
       (.I0(a_in_3[3]),
        .I1(\count[3]_i_5__3_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_6__3_n_0 ),
        .I4(done_aux_reg_0[1]),
        .I5(\count[3]_i_7__2_n_0 ),
        .O(\count_reg_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0000B8E2)) 
    \count[3]_i_4__0 
       (.I0(\count[3]_i_8__0_n_0 ),
        .I1(Q[3]),
        .I2(\count[3]_i_9__1_n_0 ),
        .I3(a_in_3[7]),
        .I4(done_aux_reg_0[1]),
        .O(\count_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFF7FFFF)) 
    \count[3]_i_5__3 
       (.I0(a_in_3[2]),
        .I1(a_in_3[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_3[0]),
        .I5(Q[2]),
        .O(\count[3]_i_5__3_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[3]_i_6__3 
       (.I0(a_in_3[2]),
        .I1(Q[2]),
        .I2(a_in_3[1]),
        .I3(Q[0]),
        .I4(a_in_3[0]),
        .I5(Q[1]),
        .O(\count[3]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_7__2 
       (.I0(a_in_3[11]),
        .I1(\count[3]_i_10__3_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_11__3_n_0 ),
        .O(\count[3]_i_7__2_n_0 ));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[3]_i_8__0 
       (.I0(a_in_3[6]),
        .I1(Q[1]),
        .I2(a_in_3[5]),
        .I3(Q[2]),
        .I4(a_in_3[4]),
        .I5(Q[0]),
        .O(\count[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFF7FF7)) 
    \count[3]_i_9__1 
       (.I0(a_in_3[6]),
        .I1(a_in_3[5]),
        .I2(a_in_3[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[3]_i_9__1_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__4[0]),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__4[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__4[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__4[3]),
        .Q(count_reg[3]));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_10__3
       (.I0(a_in_3[6]),
        .I1(Q[1]),
        .I2(a_in_3[5]),
        .I3(Q[2]),
        .I4(a_in_3[4]),
        .I5(Q[0]),
        .O(done_aux_i_10__3_n_0));
  LUT6 #(
    .INIT(64'h1000010000800008)) 
    done_aux_i_11__3
       (.I0(a_in_3[6]),
        .I1(a_in_3[5]),
        .I2(a_in_3[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_11__3_n_0));
  LUT4 #(
    .INIT(16'hFF74)) 
    done_aux_i_1__1
       (.I0(\j_reg[0]_0 ),
        .I1(j_reg),
        .I2(done_aux_reg_1),
        .I3(done),
        .O(done_aux_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    done_aux_i_2__4
       (.I0(done_aux_i_3_n_0),
        .I1(done_aux_reg_0[1]),
        .I2(done_aux_i_4__2_n_0),
        .I3(done_aux_reg_0[0]),
        .I4(done_aux_i_5__3_n_0),
        .O(\j_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_3
       (.I0(a_in_3[11]),
        .I1(done_aux_i_6__1_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_7__0_n_0),
        .O(done_aux_i_3_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_4__2
       (.I0(a_in_3[3]),
        .I1(done_aux_i_8__2_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_9__3_n_0),
        .O(done_aux_i_4__2_n_0));
  LUT5 #(
    .INIT(32'hFFFFB8E2)) 
    done_aux_i_5__3
       (.I0(done_aux_i_10__3_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_11__3_n_0),
        .I3(a_in_3[7]),
        .I4(done_aux_reg_0[1]),
        .O(done_aux_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h0040041008200200)) 
    done_aux_i_6__1
       (.I0(a_in_3[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_3[8]),
        .I4(a_in_3[9]),
        .I5(Q[2]),
        .O(done_aux_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h9029094242909409)) 
    done_aux_i_7__0
       (.I0(a_in_3[10]),
        .I1(Q[2]),
        .I2(a_in_3[9]),
        .I3(a_in_3[8]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h0000100000080000)) 
    done_aux_i_8__2
       (.I0(a_in_3[2]),
        .I1(a_in_3[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_3[0]),
        .I5(Q[2]),
        .O(done_aux_i_8__2_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_9__3
       (.I0(a_in_3[2]),
        .I1(Q[2]),
        .I2(a_in_3[1]),
        .I3(Q[0]),
        .I4(a_in_3[0]),
        .I5(Q[1]),
        .O(done_aux_i_9__3_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__1_n_0),
        .Q(done));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__4 
       (.I0(\j_reg[0]_0 ),
        .O(\j[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \j[1]_i_1__4 
       (.I0(j_reg),
        .I1(done),
        .O(j0));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__4_n_0 ),
        .Q(\j_reg[0]_0 ));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j_reg[0]_0 ),
        .Q(j_reg));
  LUT3 #(
    .INIT(8'hF8)) 
    valid_aux_i_1__3
       (.I0(valid_aux_i_2__3_n_0),
        .I1(j_reg),
        .I2(valid),
        .O(valid_aux_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    valid_aux_i_2__3
       (.I0(\j_reg[0]_0 ),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(valid_aux_i_2__3_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__3_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_top_pynq_0_0_ctrl_logic__parameterized5
   (j_reg,
    done,
    \count_reg_reg[3] ,
    \count_reg_reg[3]_0 ,
    \FSM_onehot_state_reg[2] ,
    E,
    D,
    clk,
    AR,
    done_aux_reg_0,
    a_in_2,
    Q,
    \count_reg[0]_0 ,
    \count_reg_reg[0] ,
    next_out_2,
    \FSM_onehot_state_reg[1] ,
    \count_reg[3]_0 );
  output [0:0]j_reg;
  output done;
  output \count_reg_reg[3] ;
  output \count_reg_reg[3]_0 ;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output [1:0]D;
  input clk;
  input [0:0]AR;
  input done_aux_reg_0;
  input [7:0]a_in_2;
  input [3:0]Q;
  input [0:0]\count_reg[0]_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_2;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]\count_reg[3]_0 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [3:0]Q;
  wire [7:0]a_in_2;
  wire clk;
  wire \count[0]_i_1__5_n_0 ;
  wire \count[3]_i_4__1_n_0 ;
  wire \count[3]_i_5__4_n_0 ;
  wire \count[3]_i_6__4_n_0 ;
  wire \count[3]_i_7__3_n_0 ;
  wire \count[3]_i_8__1_n_0 ;
  wire [3:0]count_reg;
  wire [0:0]\count_reg[0]_0 ;
  wire [0:0]\count_reg[3]_0 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire done;
  wire done_aux_i_3__0_n_0;
  wire done_aux_i_4__3_n_0;
  wire done_aux_i_5__4_n_0;
  wire done_aux_i_6__2_n_0;
  wire done_aux_i_7__1_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire [0:0]j_reg;
  wire next_out_2;
  wire [3:1]plusOp__5;
  wire valid;
  wire valid_aux_i_1__5_n_0;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1__5 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(\count_reg_reg[0] [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__5 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__5 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_2),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__0
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0] [4]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__5 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__5 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(plusOp__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_2__5 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(plusOp__5[3]));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[3]_i_3__4 
       (.I0(a_in_2[3]),
        .I1(\count[3]_i_4__1_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_5__4_n_0 ),
        .I4(\count_reg[0]_0 ),
        .I5(\count[3]_i_6__4_n_0 ),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFF7FFFF)) 
    \count[3]_i_4__1 
       (.I0(a_in_2[2]),
        .I1(a_in_2[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_2[0]),
        .I5(Q[2]),
        .O(\count[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[3]_i_5__4 
       (.I0(a_in_2[2]),
        .I1(Q[2]),
        .I2(a_in_2[1]),
        .I3(Q[0]),
        .I4(a_in_2[0]),
        .I5(Q[1]),
        .O(\count[3]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_6__4 
       (.I0(a_in_2[7]),
        .I1(\count[3]_i_7__3_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_8__1_n_0 ),
        .O(\count[3]_i_6__4_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFF7FF7)) 
    \count[3]_i_7__3 
       (.I0(a_in_2[6]),
        .I1(a_in_2[5]),
        .I2(a_in_2[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[3]_i_7__3_n_0 ));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[3]_i_8__1 
       (.I0(a_in_2[6]),
        .I1(Q[1]),
        .I2(a_in_2[5]),
        .I3(Q[2]),
        .I4(a_in_2[4]),
        .I5(Q[0]),
        .O(\count[3]_i_8__1_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(\count_reg[3]_0 ),
        .CLR(AR),
        .D(\count[0]_i_1__5_n_0 ),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(\count_reg[3]_0 ),
        .CLR(AR),
        .D(plusOp__5[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(\count_reg[3]_0 ),
        .CLR(AR),
        .D(plusOp__5[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(\count_reg[3]_0 ),
        .CLR(AR),
        .D(plusOp__5[3]),
        .Q(count_reg[3]));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    done_aux_i_2__2
       (.I0(a_in_2[3]),
        .I1(done_aux_i_3__0_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_4__3_n_0),
        .I4(\count_reg[0]_0 ),
        .I5(done_aux_i_5__4_n_0),
        .O(\count_reg_reg[3] ));
  LUT6 #(
    .INIT(64'h0000100000080000)) 
    done_aux_i_3__0
       (.I0(a_in_2[2]),
        .I1(a_in_2[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_2[0]),
        .I5(Q[2]),
        .O(done_aux_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_4__3
       (.I0(a_in_2[2]),
        .I1(Q[2]),
        .I2(a_in_2[1]),
        .I3(Q[0]),
        .I4(a_in_2[0]),
        .I5(Q[1]),
        .O(done_aux_i_4__3_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_5__4
       (.I0(a_in_2[7]),
        .I1(done_aux_i_6__2_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_7__1_n_0),
        .O(done_aux_i_5__4_n_0));
  LUT6 #(
    .INIT(64'h1000010000800008)) 
    done_aux_i_6__2
       (.I0(a_in_2[6]),
        .I1(a_in_2[5]),
        .I2(a_in_2[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_6__2_n_0));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_7__1
       (.I0(a_in_2[6]),
        .I1(Q[1]),
        .I2(a_in_2[5]),
        .I3(Q[2]),
        .I4(a_in_2[4]),
        .I5(Q[0]),
        .O(done_aux_i_7__1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_reg_0),
        .Q(done));
  LUT2 #(
    .INIT(4'h1)) 
    \j[0]_i_1__5 
       (.I0(j_reg),
        .I1(done),
        .O(j0));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(1'b1),
        .Q(j_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000400)) 
    valid_aux_i_1__5
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(j_reg),
        .I4(count_reg[1]),
        .I5(valid),
        .O(valid_aux_i_1__5_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__5_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_top_pynq_0_0_fsm_block
   (next_out_7,
    Q,
    \count_reg_reg[3] ,
    E,
    clk,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    done_aux_reg,
    done_aux_reg_0,
    SR,
    AR);
  output next_out_7;
  output [1:0]Q;
  output [3:0]\count_reg_reg[3] ;
  output [0:0]E;
  input clk;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input done_aux_reg;
  input done_aux_reg_0;
  input [0:0]SR;
  input [0:0]AR;

  wire [0:0]AR;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ack_out_7;
  wire acks_out;
  wire \asout_array[7]_0 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1_n_0;
  wire clk;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire [3:0]\count_reg_reg[3] ;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire dut_n_0;
  wire dut_n_1;
  wire dut_n_6;
  wire logic_n_2;
  wire logic_n_3;
  wire logic_n_4;
  wire logic_n_5;
  wire next_out_7;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2_n_0;

  assign E[0] = ack_out_7;
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_5),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_5),
        .D(logic_n_3),
        .Q(ce__0),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_5),
        .D(dut_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_5),
        .D(logic_n_2),
        .Q(\asout_array[7]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_5),
        .D(dut_n_0),
        .Q(nexts_out),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_4),
        .GE(1'b1),
        .Q(ack_out_7));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1_n_0));
  design_1_top_pynq_0_0_up_counter dut
       (.AR(AR),
        .D({dut_n_0,dut_n_1}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_6),
        .Q({\asout_array[7]_0 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .clk(clk),
        .\count_reg_reg[3]_0 (\count_reg_reg[3] ));
  design_1_top_pynq_0_0_ctrl_logic logic
       (.AR(reset_control),
        .D({logic_n_2,logic_n_3}),
        .E(logic_n_5),
        .\FSM_onehot_state_reg[1] (dut_n_6),
        .\FSM_onehot_state_reg[2] (logic_n_4),
        .Q(Q),
        .acks_out_reg({nexts_out,\asout_array[7]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .clk(clk),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(done_aux_reg_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_7));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[7]_0 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2
       (.I0(ce__0),
        .I1(\asout_array[7]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_top_pynq_0_0_fsm_block__parameterized0
   (AR,
    next_out_6,
    \j_reg[1] ,
    \j_reg[1]_0 ,
    \j_reg[1]_1 ,
    \j_reg[1]_2 ,
    SR,
    \j_reg[2] ,
    \count_reg_reg[3] ,
    clk,
    Q,
    done_aux_reg_i_7,
    nRst,
    done_aux_reg,
    done_aux_reg_0,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    next_out_7,
    done_aux_reg_1,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_6,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_6;
  output \j_reg[1] ;
  output \j_reg[1]_0 ;
  output \j_reg[1]_1 ;
  output \j_reg[1]_2 ;
  output [0:0]SR;
  output [1:0]\j_reg[2] ;
  output [3:0]\count_reg_reg[3] ;
  input clk;
  input [1:0]Q;
  input [3:0]done_aux_reg_i_7;
  input nRst;
  input done_aux_reg;
  input done_aux_reg_0;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input next_out_7;
  input done_aux_reg_1;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [23:0]a_in_6;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [23:0]a_in_6;
  wire [27:0]a_in_7;
  wire acks_out;
  wire \asout_array[6]_1 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__1_n_0;
  wire clk;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0] ;
  wire [3:0]\count_reg_reg[3] ;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire [3:0]done_aux_reg_i_7;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire \j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[1]_2 ;
  wire [1:0]\j_reg[2] ;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_6;
  wire next_out_7;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__0_n_0;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_9),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_9),
        .D(logic_n_7),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_9),
        .D(dut_n_5),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_9),
        .D(logic_n_6),
        .Q(\asout_array[6]_1 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_9),
        .D(dut_n_4),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_8),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(nexts_out),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [0]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [1]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [2]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [3]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_6[0]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_6[1]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_6[2]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_6[3]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_6[4]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_6[5]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_6[6]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_6[7]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_6[8]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_6[9]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_6[10]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_6[11]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_6[12]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_6[13]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_6[14]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_6[15]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_6[16]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_6[17]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_6[18]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_6[19]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][0] 
       (.CLR(1'b0),
        .D(a_in_6[20]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][1] 
       (.CLR(1'b0),
        .D(a_in_6[21]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][2] 
       (.CLR(1'b0),
        .D(a_in_6[22]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][3] 
       (.CLR(1'b0),
        .D(a_in_6[23]),
        .G(\asout_array[6]_1 ),
        .GE(1'b1),
        .Q(a_in_7[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__1
       (.I0(ce__0),
        .I1(nexts_out),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__1_n_0));
  design_1_top_pynq_0_0_up_counter_0 dut
       (.D({dut_n_4,dut_n_5}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_6),
        .\FSM_onehot_state_reg[4] ({\asout_array[6]_1 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(\count_reg_reg[3] ),
        .clk(clk),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ));
  design_1_top_pynq_0_0_ctrl_logic__parameterized0 logic
       (.AR(reset_control),
        .D({logic_n_6,logic_n_7}),
        .E(logic_n_9),
        .\FSM_onehot_state_reg[1] (dut_n_6),
        .\FSM_onehot_state_reg[2] (logic_n_8),
        .Q(Q),
        .a_in_7(a_in_7),
        .clk(clk),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[6]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(done_aux_reg_0),
        .done_aux_reg_2(done_aux_reg_1),
        .done_aux_reg_i_7_0(done_aux_reg_i_7),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[1]_1 (\j_reg[1]_0 ),
        .\j_reg[1]_2 (\j_reg[1]_1 ),
        .\j_reg[1]_3 (\j_reg[1]_2 ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .next_out_7(next_out_7));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_6));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__0_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[6]_1 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__0
       (.I0(ce__0),
        .I1(\asout_array[6]_1 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__0_n_0));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_top_pynq_0_0_fsm_block__parameterized1
   (AR,
    next_out_5,
    \count_reg_reg[3] ,
    a_in_6,
    \j_reg[2] ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[2] ,
    \j_reg[2]_0 ,
    SR,
    \j_reg[1] ,
    \count_reg_reg[3]_1 ,
    clk,
    Q,
    \count_reg[0] ,
    nRst,
    done_aux_reg,
    done_aux_reg_0,
    a_in_5,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    next_out_6,
    done_aux_reg_1,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_5;
  output \count_reg_reg[3] ;
  output [23:0]a_in_6;
  output \j_reg[2] ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[2] ;
  output \j_reg[2]_0 ;
  output [0:0]SR;
  output [1:0]\j_reg[1] ;
  output [3:0]\count_reg_reg[3]_1 ;
  input clk;
  input [3:0]Q;
  input [1:0]\count_reg[0] ;
  input nRst;
  input done_aux_reg;
  input done_aux_reg_0;
  input [19:0]a_in_5;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input next_out_6;
  input done_aux_reg_1;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [19:0]a_in_5;
  wire [23:0]a_in_6;
  wire acks_out;
  wire \asout_array[5]_2 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__3_n_0;
  wire clk;
  wire [1:0]\count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire [3:0]\count_reg_reg[3]_1 ;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire [1:0]\j_reg[1] ;
  wire \j_reg[2] ;
  wire \j_reg[2]_0 ;
  wire logic_n_10;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_5;
  wire next_out_6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__1_n_0;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__0 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_10),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_10),
        .D(logic_n_8),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_10),
        .D(dut_n_5),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_10),
        .D(logic_n_7),
        .Q(\asout_array[5]_2 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_10),
        .D(dut_n_4),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_9),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(nexts_out),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [0]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [1]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [2]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [3]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_5[0]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_5[1]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_5[2]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_5[3]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_5[4]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_5[5]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_5[6]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_5[7]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_5[8]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_5[9]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_5[10]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_5[11]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_5[12]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_5[13]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_5[14]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_5[15]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_5[16]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_5[17]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_5[18]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_5[19]),
        .G(\asout_array[5]_2 ),
        .GE(1'b1),
        .Q(a_in_6[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__3
       (.I0(ce__0),
        .I1(nexts_out),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__3_n_0));
  design_1_top_pynq_0_0_up_counter_1 dut
       (.D({dut_n_4,dut_n_5}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_6),
        .\FSM_onehot_state_reg[4] ({\asout_array[5]_2 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(\count_reg_reg[3]_1 ),
        .clk(clk),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ));
  design_1_top_pynq_0_0_ctrl_logic__parameterized1 logic
       (.AR(reset_control),
        .D(\count_reg_reg[3]_1 [3]),
        .E(logic_n_10),
        .\FSM_onehot_state_reg[1] (dut_n_6),
        .\FSM_onehot_state_reg[2] ({logic_n_7,logic_n_8}),
        .\FSM_onehot_state_reg[2]_0 (logic_n_9),
        .Q(Q),
        .a_in_5(a_in_5[3]),
        .a_in_6(a_in_6),
        .clk(clk),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .\count_reg[0]_2 (\count_reg[0]_1 ),
        .\count_reg[0]_3 (\count_reg[0]_2 ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[5]_2 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\count_reg_reg[3]_0 (\count_reg_reg[3]_0 ),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(done_aux_reg_0),
        .done_aux_reg_2(done_aux_reg_1),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[2]_1 (\j_reg[2]_0 ),
        .next_out_6(next_out_6));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_5));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__1_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[5]_2 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__1
       (.I0(ce__0),
        .I1(\asout_array[5]_2 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__1_n_0));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_top_pynq_0_0_fsm_block__parameterized2
   (AR,
    next_out_4,
    \count_reg_reg[2] ,
    a_in_5,
    \count_reg_reg[2]_0 ,
    \j_reg[0] ,
    \j_reg[0]_0 ,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    SR,
    \count_reg_reg[3] ,
    \j_reg[1] ,
    clk,
    Q,
    done_aux_reg_i_3__1,
    nRst,
    next_out_5,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    done_aux_reg,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_4,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_4;
  output \count_reg_reg[2] ;
  output [19:0]a_in_5;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0] ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output [0:0]SR;
  output [3:0]\count_reg_reg[3] ;
  output [1:0]\j_reg[1] ;
  input clk;
  input [3:0]Q;
  input [1:0]done_aux_reg_i_3__1;
  input nRst;
  input next_out_5;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input done_aux_reg;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [15:0]a_in_4;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [15:0]a_in_4;
  wire [19:0]a_in_5;
  wire acks_out;
  wire \asout_array[4]_3 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__5_n_0;
  wire clk;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire [3:0]\count_reg_reg[3] ;
  wire done_aux_reg;
  wire [1:0]done_aux_reg_i_3__1;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire [1:0]\j_reg[1] ;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_6;
  wire logic_n_7;
  wire nRst;
  wire next_out_4;
  wire next_out_5;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__2_n_0;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__1 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_10),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_10),
        .D(logic_n_7),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_10),
        .D(dut_n_5),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_10),
        .D(logic_n_6),
        .Q(\asout_array[4]_3 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_10),
        .D(dut_n_4),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_11),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__5
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [0]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [1]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [2]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3] [3]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_4[0]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_4[1]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_4[2]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_4[3]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_4[4]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_4[5]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_4[6]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_4[7]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_4[8]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_4[9]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_4[10]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_4[11]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_4[12]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_4[13]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_4[14]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_4[15]),
        .G(\asout_array[4]_3 ),
        .GE(1'b1),
        .Q(a_in_5[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__5
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__5_n_0));
  design_1_top_pynq_0_0_up_counter_2 dut
       (.D({dut_n_4,dut_n_5}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_6),
        .\FSM_onehot_state_reg[4] ({\asout_array[4]_3 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(\count_reg_reg[3] ),
        .clk(clk),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_0 ));
  design_1_top_pynq_0_0_ctrl_logic__parameterized2 logic
       (.AR(reset_control),
        .D({logic_n_6,logic_n_7}),
        .E(logic_n_10),
        .\FSM_onehot_state_reg[1] (dut_n_6),
        .\FSM_onehot_state_reg[2] (logic_n_11),
        .Q(a_in_5[2:0]),
        .a_in_5(a_in_5[19:4]),
        .clk(clk),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[4]_3 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_i_3__1_0(done_aux_reg_i_3__1),
        .done_aux_reg_i_7__1_0(Q),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .next_out_5(next_out_5));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__2_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[4]_3 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__2
       (.I0(ce__0),
        .I1(\asout_array[4]_3 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__2_n_0));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_top_pynq_0_0_fsm_block__parameterized3
   (AR,
    next_out_3,
    \j_reg[1] ,
    a_in_4,
    \count_reg_reg[3] ,
    \count_reg_reg[3]_0 ,
    SR,
    \count_reg_reg[3]_1 ,
    \j_reg[1]_0 ,
    clk,
    Q,
    \count_reg[0] ,
    nRst,
    next_out_4,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    done_aux_reg,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_3,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_3;
  output \j_reg[1] ;
  output [15:0]a_in_4;
  output \count_reg_reg[3] ;
  output \count_reg_reg[3]_0 ;
  output [0:0]SR;
  output [3:0]\count_reg_reg[3]_1 ;
  output [1:0]\j_reg[1]_0 ;
  input clk;
  input [1:0]Q;
  input [3:0]\count_reg[0] ;
  input nRst;
  input next_out_4;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input done_aux_reg;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [11:0]a_in_3;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [11:0]a_in_3;
  wire [15:0]a_in_4;
  wire acks_out_reg_i_1__4_n_0;
  wire \asout_array[3]_4 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__4_n_0;
  wire clk;
  wire [3:0]\count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire [3:0]\count_reg_reg[3]_1 ;
  wire done_aux_reg;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire \j_reg[1] ;
  wire [1:0]\j_reg[1]_0 ;
  wire logic_n_5;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire nRst;
  wire next_out_3;
  wire next_out_4;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__3_n_0;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__2 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_5),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_5),
        .D(logic_n_8),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_5),
        .D(dut_n_5),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_5),
        .D(logic_n_7),
        .Q(\asout_array[3]_4 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_5),
        .D(dut_n_4),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__4_n_0),
        .G(logic_n_6),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__4
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .O(acks_out_reg_i_1__4_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [0]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [1]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [2]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [3]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_3[0]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_3[1]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_3[2]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_3[3]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_3[4]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_3[5]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_3[6]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_3[7]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_3[8]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_3[9]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_3[10]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_3[11]),
        .G(\asout_array[3]_4 ),
        .GE(1'b1),
        .Q(a_in_4[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__4
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__4_n_0));
  design_1_top_pynq_0_0_up_counter_3 dut
       (.D({dut_n_4,dut_n_5}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_6),
        .\FSM_onehot_state_reg[4] ({\asout_array[3]_4 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(\count_reg_reg[3]_1 ),
        .clk(clk),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ));
  design_1_top_pynq_0_0_ctrl_logic__parameterized3 logic
       (.AR(reset_control),
        .D({logic_n_7,logic_n_8}),
        .E(logic_n_5),
        .\FSM_onehot_state_reg[1] (dut_n_6),
        .\FSM_onehot_state_reg[2] (logic_n_6),
        .Q(Q),
        .a_in_4(a_in_4),
        .clk(clk),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .\count_reg[0]_2 (\count_reg[0]_1 ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[3]_4 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\count_reg_reg[3]_0 (\count_reg_reg[3]_0 ),
        .done_aux_reg_0(done_aux_reg),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[1]_1 (\j_reg[1]_0 ),
        .next_out_4(next_out_4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(next_out_3));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__3_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[3]_4 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__3
       (.I0(ce__0),
        .I1(\asout_array[3]_4 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__3_n_0));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_top_pynq_0_0_fsm_block__parameterized4
   (AR,
    next_out_2,
    a_in_3,
    \count_reg_reg[3] ,
    \count_reg_reg[3]_0 ,
    SR,
    \count_reg_reg[3]_1 ,
    \j_reg[0] ,
    \j_reg[1] ,
    clk,
    Q,
    done_aux_reg,
    nRst,
    next_out_3,
    \count_reg[0] ,
    done_aux_reg_0,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_2,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_2;
  output [11:0]a_in_3;
  output \count_reg_reg[3] ;
  output \count_reg_reg[3]_0 ;
  output [0:0]SR;
  output [3:0]\count_reg_reg[3]_1 ;
  output [0:0]\j_reg[0] ;
  output \j_reg[1] ;
  input clk;
  input [3:0]Q;
  input [1:0]done_aux_reg;
  input nRst;
  input next_out_3;
  input \count_reg[0] ;
  input done_aux_reg_0;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [7:0]a_in_2;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [7:0]a_in_2;
  wire [11:0]a_in_3;
  wire acks_out_reg_i_1__2_n_0;
  wire \asout_array[2]_5 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__2_n_0;
  wire clk;
  wire \count_reg[0] ;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire [3:0]\count_reg_reg[3]_1 ;
  wire [1:0]done_aux_reg;
  wire done_aux_reg_0;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire [0:0]\j_reg[0] ;
  wire \j_reg[1] ;
  wire logic_n_3;
  wire logic_n_4;
  wire logic_n_5;
  wire logic_n_6;
  wire nRst;
  wire next_out_2;
  wire next_out_3;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__4_n_0;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__3 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_3),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_3),
        .D(logic_n_6),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_3),
        .D(dut_n_5),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_3),
        .D(logic_n_5),
        .Q(\asout_array[2]_5 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_3),
        .D(dut_n_4),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__2_n_0),
        .G(logic_n_4),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__2
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .O(acks_out_reg_i_1__2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [0]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [1]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [2]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[3]_1 [3]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_2[0]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_2[1]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_2[2]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_2[3]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_2[4]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_2[5]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_2[6]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_2[7]),
        .G(\asout_array[2]_5 ),
        .GE(1'b1),
        .Q(a_in_3[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__2
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__2_n_0));
  design_1_top_pynq_0_0_up_counter_4 dut
       (.D({dut_n_4,dut_n_5}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_6),
        .\FSM_onehot_state_reg[4] ({\asout_array[2]_5 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(\count_reg_reg[3]_1 ),
        .clk(clk),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ));
  design_1_top_pynq_0_0_ctrl_logic__parameterized4 logic
       (.AR(reset_control),
        .D({logic_n_5,logic_n_6}),
        .E(logic_n_3),
        .\FSM_onehot_state_reg[1] (dut_n_6),
        .\FSM_onehot_state_reg[2] (logic_n_4),
        .Q(Q),
        .a_in_3(a_in_3),
        .clk(clk),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[2]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\count_reg_reg[3]_0 (\count_reg_reg[3]_0 ),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(done_aux_reg_0),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .next_out_3(next_out_3));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(next_out_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__4_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[2]_5 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__4
       (.I0(ce__0),
        .I1(\asout_array[2]_5 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__4_n_0));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_top_pynq_0_0_fsm_block__parameterized5
   (AR,
    s_next_out,
    \count_reg_reg[3] ,
    a_in_2,
    \count_reg_reg[3]_0 ,
    SR,
    clk,
    D,
    Q,
    \count_reg[0] ,
    nRst,
    next_out_2,
    \FSM_onehot_state_reg[1]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output s_next_out;
  output \count_reg_reg[3] ;
  output [7:0]a_in_2;
  output \count_reg_reg[3]_0 ;
  output [0:0]SR;
  input clk;
  input [3:0]D;
  input [3:0]Q;
  input [0:0]\count_reg[0] ;
  input nRst;
  input next_out_2;
  input [0:0]\FSM_onehot_state_reg[1]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [7:0]a_in_2;
  wire acks_out_reg_i_1__0_n_0;
  wire \asout_array[1]_6 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__0_n_0;
  wire clk;
  wire count;
  wire [0:0]\count_reg[0] ;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire done;
  wire dut_n_0;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire [0:0]j_reg;
  wire logic_n_4;
  wire logic_n_5;
  wire logic_n_6;
  wire logic_n_7;
  wire nRst;
  wire next_out_2;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__5_n_0;
  wire s_next_out;
  wire [3:0]u_i;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__4 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_5),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_5),
        .D(logic_n_7),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_5),
        .D(dut_n_7),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_5),
        .D(logic_n_6),
        .Q(\asout_array[1]_6 ),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_5),
        .D(dut_n_6),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__0_n_0),
        .G(logic_n_4),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__0
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1__0_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(\asout_array[1]_6 ),
        .GE(1'b1),
        .Q(a_in_2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__0
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__0_n_0));
  design_1_top_pynq_0_0_up_counter_5 dut
       (.D(D),
        .E(count),
        .\FSM_onehot_state_reg[1] ({dut_n_6,dut_n_7}),
        .\FSM_onehot_state_reg[3] (dut_n_8),
        .\FSM_onehot_state_reg[4] ({\asout_array[1]_6 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ),
        .\count_reg_reg[3]_0 (ce),
        .done(done),
        .j_reg(j_reg),
        .j_reg_0_sp_1(dut_n_0));
  design_1_top_pynq_0_0_ctrl_logic__parameterized5 logic
       (.AR(reset_control),
        .D({logic_n_6,logic_n_7}),
        .E(logic_n_5),
        .\FSM_onehot_state_reg[1] (dut_n_8),
        .\FSM_onehot_state_reg[2] (logic_n_4),
        .Q(Q),
        .a_in_2(a_in_2),
        .clk(clk),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[3]_0 (count),
        .\count_reg_reg[0] ({nexts_out,\asout_array[1]_6 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\count_reg_reg[3]_0 (\count_reg_reg[3]_0 ),
        .done(done),
        .done_aux_reg_0(dut_n_0),
        .j_reg(j_reg),
        .next_out_2(next_out_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(s_next_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__5_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__5
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[1]_6 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__5
       (.I0(ce__0),
        .I1(\asout_array[1]_6 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__5_n_0));
endmodule

(* ORIG_REF_NAME = "sol_counter" *) 
module design_1_top_pynq_0_0_sol_counter
   (count,
    E,
    nRst);
  output [9:0]count;
  input [0:0]E;
  input nRst;

  wire [0:0]E;
  wire [9:0]count;
  wire \count_reg_reg[9]_i_3_n_0 ;
  wire nRst;
  wire [9:0]plusOp;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[0] 
       (.CLR(nRst),
        .D(plusOp[0]),
        .G(E),
        .GE(1'b1),
        .Q(count[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \count_reg_reg[0]_i_1 
       (.I0(count[0]),
        .O(plusOp[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[1] 
       (.CLR(nRst),
        .D(plusOp[1]),
        .G(E),
        .GE(1'b1),
        .Q(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg_reg[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(plusOp[1]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[2] 
       (.CLR(nRst),
        .D(plusOp[2]),
        .G(E),
        .GE(1'b1),
        .Q(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg_reg[2]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .O(plusOp[2]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[3] 
       (.CLR(nRst),
        .D(plusOp[3]),
        .G(E),
        .GE(1'b1),
        .Q(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_reg_reg[3]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(count[3]),
        .O(plusOp[3]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[4] 
       (.CLR(nRst),
        .D(plusOp[4]),
        .G(E),
        .GE(1'b1),
        .Q(count[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg_reg[4]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .I4(count[4]),
        .O(plusOp[4]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[5] 
       (.CLR(nRst),
        .D(plusOp[5]),
        .G(E),
        .GE(1'b1),
        .Q(count[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_reg_reg[5]_i_1 
       (.I0(count[3]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(count[4]),
        .I5(count[5]),
        .O(plusOp[5]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[6] 
       (.CLR(nRst),
        .D(plusOp[6]),
        .G(E),
        .GE(1'b1),
        .Q(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg_reg[6]_i_1 
       (.I0(\count_reg_reg[9]_i_3_n_0 ),
        .I1(count[6]),
        .O(plusOp[6]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[7] 
       (.CLR(nRst),
        .D(plusOp[7]),
        .G(E),
        .GE(1'b1),
        .Q(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg_reg[7]_i_1 
       (.I0(\count_reg_reg[9]_i_3_n_0 ),
        .I1(count[6]),
        .I2(count[7]),
        .O(plusOp[7]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[8] 
       (.CLR(nRst),
        .D(plusOp[8]),
        .G(E),
        .GE(1'b1),
        .Q(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_reg_reg[8]_i_1 
       (.I0(count[6]),
        .I1(\count_reg_reg[9]_i_3_n_0 ),
        .I2(count[7]),
        .I3(count[8]),
        .O(plusOp[8]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \count_reg_reg[9] 
       (.CLR(nRst),
        .D(plusOp[9]),
        .G(E),
        .GE(1'b1),
        .Q(count[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg_reg[9]_i_1 
       (.I0(count[7]),
        .I1(\count_reg_reg[9]_i_3_n_0 ),
        .I2(count[6]),
        .I3(count[8]),
        .I4(count[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_reg_reg[9]_i_3 
       (.I0(count[5]),
        .I1(count[3]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[2]),
        .I5(count[4]),
        .O(\count_reg_reg[9]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "top_pynq" *) 
module design_1_top_pynq_0_0_top_pynq
   (count,
    done,
    nRst,
    clk);
  output [9:0]count;
  output done;
  input nRst;
  input clk;

  wire clk;
  wire cond_ini_n_0;
  wire cond_ini_n_5;
  wire [9:0]count;
  wire done;
  wire nRst;
  wire [3:0]s_a_in;
  wire s_next_out;

  design_1_top_pynq_0_0_cond_ini cond_ini
       (.AR(cond_ini_n_0),
        .Q(s_a_in),
        .SR(cond_ini_n_5),
        .clk(clk),
        .done(done),
        .nRst(nRst),
        .s_next_out(s_next_out));
  design_1_top_pynq_0_0_top_queens top_queens
       (.AR(cond_ini_n_0),
        .D(s_a_in),
        .SR(cond_ini_n_5),
        .clk(clk),
        .count(count),
        .nRst(nRst),
        .s_next_out(s_next_out));
endmodule

(* ORIG_REF_NAME = "top_queens" *) 
module design_1_top_pynq_0_0_top_queens
   (s_next_out,
    count,
    clk,
    D,
    nRst,
    SR,
    AR);
  output s_next_out;
  output [9:0]count;
  input clk;
  input [3:0]D;
  input nRst;
  input [0:0]SR;
  input [0:0]AR;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]SR;
  wire [7:0]a_in_2;
  wire [11:0]a_in_3;
  wire [15:0]a_in_4;
  wire [19:0]a_in_5;
  wire [23:0]a_in_6;
  wire ack_in_2;
  wire ack_in_3;
  wire ack_in_4;
  wire ack_in_5;
  wire ack_in_6;
  wire ack_in_7;
  wire clk;
  wire [9:0]count;
  wire fsm_1_n_11;
  wire fsm_1_n_12;
  wire fsm_1_n_2;
  wire fsm_2_n_14;
  wire fsm_2_n_15;
  wire fsm_2_n_16;
  wire fsm_2_n_22;
  wire fsm_3_n_19;
  wire fsm_3_n_2;
  wire fsm_3_n_20;
  wire fsm_3_n_21;
  wire fsm_4_n_2;
  wire fsm_4_n_23;
  wire fsm_4_n_24;
  wire fsm_4_n_25;
  wire fsm_4_n_26;
  wire fsm_4_n_27;
  wire fsm_4_n_28;
  wire fsm_5_n_2;
  wire fsm_5_n_27;
  wire fsm_5_n_28;
  wire fsm_5_n_29;
  wire fsm_5_n_30;
  wire fsm_5_n_31;
  wire fsm_6_n_2;
  wire fsm_6_n_3;
  wire fsm_6_n_4;
  wire fsm_6_n_5;
  wire fsm_6_n_6;
  wire fsm_7_n_7;
  wire [0:0]\logic/j_reg ;
  wire [1:0]\logic/j_reg_0 ;
  wire [1:0]\logic/j_reg_2 ;
  wire [1:0]\logic/j_reg_5 ;
  wire [2:0]\logic/j_reg_7 ;
  wire [2:1]\logic/j_reg_9 ;
  wire nRst;
  wire next_out_2;
  wire next_out_3;
  wire next_out_4;
  wire next_out_5;
  wire next_out_6;
  wire next_out_7;
  wire s_next_out;
  wire [3:0]u_i;
  wire [3:0]u_i_1;
  wire [3:0]u_i_3;
  wire [3:0]u_i_4;
  wire [3:0]u_i_6;
  wire [3:0]u_i_8;

  design_1_top_pynq_0_0_sol_counter counter_sol
       (.E(fsm_7_n_7),
        .count(count),
        .nRst(nRst));
  design_1_top_pynq_0_0_fsm_block__parameterized5 fsm_1
       (.AR(ack_in_2),
        .D(D),
        .\FSM_onehot_state_reg[1]_0 (SR),
        .Q(u_i),
        .SR(fsm_1_n_12),
        .a_in_2(a_in_2),
        .clk(clk),
        .\count_reg[0] (\logic/j_reg ),
        .\count_reg_reg[0] (AR),
        .\count_reg_reg[3] (fsm_1_n_2),
        .\count_reg_reg[3]_0 (fsm_1_n_11),
        .nRst(nRst),
        .next_out_2(next_out_2),
        .s_next_out(s_next_out));
  design_1_top_pynq_0_0_fsm_block__parameterized4 fsm_2
       (.AR(ack_in_3),
        .\FSM_onehot_state_reg[0]_0 (fsm_1_n_12),
        .Q(u_i_1),
        .SR(fsm_2_n_16),
        .a_in_2(a_in_2),
        .a_in_3(a_in_3),
        .clk(clk),
        .\count_reg[0] (fsm_1_n_11),
        .\count_reg_reg[0] (ack_in_2),
        .\count_reg_reg[3] (fsm_2_n_14),
        .\count_reg_reg[3]_0 (fsm_2_n_15),
        .\count_reg_reg[3]_1 (u_i),
        .done_aux_reg(\logic/j_reg_0 ),
        .done_aux_reg_0(fsm_1_n_2),
        .\j_reg[0] (\logic/j_reg ),
        .\j_reg[1] (fsm_2_n_22),
        .nRst(nRst),
        .next_out_2(next_out_2),
        .next_out_3(next_out_3));
  design_1_top_pynq_0_0_fsm_block__parameterized3 fsm_3
       (.AR(ack_in_4),
        .\FSM_onehot_state_reg[0]_0 (fsm_2_n_16),
        .Q(\logic/j_reg_2 ),
        .SR(fsm_3_n_21),
        .a_in_3(a_in_3),
        .a_in_4(a_in_4),
        .clk(clk),
        .\count_reg[0] (u_i_3),
        .\count_reg[0]_0 (fsm_2_n_15),
        .\count_reg[0]_1 (fsm_2_n_14),
        .\count_reg_reg[0] (ack_in_3),
        .\count_reg_reg[3] (fsm_3_n_19),
        .\count_reg_reg[3]_0 (fsm_3_n_20),
        .\count_reg_reg[3]_1 (u_i_1),
        .done_aux_reg(fsm_2_n_22),
        .\j_reg[1] (fsm_3_n_2),
        .\j_reg[1]_0 (\logic/j_reg_0 ),
        .nRst(nRst),
        .next_out_3(next_out_3),
        .next_out_4(next_out_4));
  design_1_top_pynq_0_0_fsm_block__parameterized2 fsm_4
       (.AR(ack_in_5),
        .\FSM_onehot_state_reg[0]_0 (fsm_3_n_21),
        .Q(u_i_4),
        .SR(fsm_4_n_28),
        .a_in_4(a_in_4),
        .a_in_5(a_in_5),
        .clk(clk),
        .\count_reg[0] (fsm_3_n_20),
        .\count_reg[0]_0 (fsm_3_n_19),
        .\count_reg_reg[0] (fsm_4_n_26),
        .\count_reg_reg[0]_0 (ack_in_4),
        .\count_reg_reg[1] (fsm_4_n_27),
        .\count_reg_reg[2] (fsm_4_n_2),
        .\count_reg_reg[2]_0 (fsm_4_n_23),
        .\count_reg_reg[3] (u_i_3),
        .done_aux_reg(fsm_3_n_2),
        .done_aux_reg_i_3__1(\logic/j_reg_5 ),
        .\j_reg[0] (fsm_4_n_24),
        .\j_reg[0]_0 (fsm_4_n_25),
        .\j_reg[1] (\logic/j_reg_2 ),
        .nRst(nRst),
        .next_out_4(next_out_4),
        .next_out_5(next_out_5));
  design_1_top_pynq_0_0_fsm_block__parameterized1 fsm_5
       (.AR(ack_in_6),
        .\FSM_onehot_state_reg[0]_0 (fsm_4_n_28),
        .Q(u_i_6),
        .SR(fsm_5_n_31),
        .a_in_5(a_in_5),
        .a_in_6(a_in_6),
        .clk(clk),
        .\count_reg[0] ({\logic/j_reg_7 [2],\logic/j_reg_7 [0]}),
        .\count_reg[0]_0 (fsm_4_n_25),
        .\count_reg[0]_1 (fsm_4_n_26),
        .\count_reg[0]_2 (fsm_4_n_23),
        .\count_reg_reg[0] (ack_in_5),
        .\count_reg_reg[2] (fsm_5_n_29),
        .\count_reg_reg[3] (fsm_5_n_2),
        .\count_reg_reg[3]_0 (fsm_5_n_28),
        .\count_reg_reg[3]_1 (u_i_4),
        .done_aux_reg(fsm_4_n_2),
        .done_aux_reg_0(fsm_4_n_27),
        .done_aux_reg_1(fsm_4_n_24),
        .\j_reg[1] (\logic/j_reg_5 ),
        .\j_reg[2] (fsm_5_n_27),
        .\j_reg[2]_0 (fsm_5_n_30),
        .nRst(nRst),
        .next_out_5(next_out_5),
        .next_out_6(next_out_6));
  design_1_top_pynq_0_0_fsm_block__parameterized0 fsm_6
       (.AR(ack_in_7),
        .\FSM_onehot_state_reg[0]_0 (fsm_5_n_31),
        .Q(\logic/j_reg_9 ),
        .SR(fsm_6_n_6),
        .a_in_6(a_in_6),
        .clk(clk),
        .\count_reg[0] (fsm_5_n_28),
        .\count_reg[0]_0 (fsm_5_n_30),
        .\count_reg_reg[0] (ack_in_6),
        .\count_reg_reg[3] (u_i_6),
        .done_aux_reg(fsm_5_n_2),
        .done_aux_reg_0(fsm_5_n_29),
        .done_aux_reg_1(fsm_5_n_27),
        .done_aux_reg_i_7(u_i_8),
        .\j_reg[1] (fsm_6_n_2),
        .\j_reg[1]_0 (fsm_6_n_3),
        .\j_reg[1]_1 (fsm_6_n_4),
        .\j_reg[1]_2 (fsm_6_n_5),
        .\j_reg[2] ({\logic/j_reg_7 [2],\logic/j_reg_7 [0]}),
        .nRst(nRst),
        .next_out_6(next_out_6),
        .next_out_7(next_out_7));
  design_1_top_pynq_0_0_fsm_block fsm_7
       (.AR(ack_in_7),
        .E(fsm_7_n_7),
        .Q(\logic/j_reg_9 ),
        .SR(fsm_6_n_6),
        .clk(clk),
        .\count_reg[0] (fsm_6_n_4),
        .\count_reg[0]_0 (fsm_6_n_3),
        .\count_reg_reg[3] (u_i_8),
        .done_aux_reg(fsm_6_n_5),
        .done_aux_reg_0(fsm_6_n_2),
        .next_out_7(next_out_7));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_pynq_0_0_up_counter
   (D,
    \count_reg_reg[3]_0 ,
    \FSM_onehot_state_reg[3] ,
    Q,
    E,
    clk,
    AR);
  output [1:0]D;
  output [3:0]\count_reg_reg[3]_0 ;
  output \FSM_onehot_state_reg[3] ;
  input [2:0]Q;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]Q;
  wire clk;
  wire [3:0]count_next;
  wire [3:0]\count_reg_reg[3]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(Q[2]),
        .I1(\count_reg_reg[3]_0 [2]),
        .I2(\count_reg_reg[3]_0 [1]),
        .I3(\count_reg_reg[3]_0 [0]),
        .I4(\count_reg_reg[3]_0 [3]),
        .I5(Q[0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\count_reg_reg[3]_0 [3]),
        .I1(\count_reg_reg[3]_0 [0]),
        .I2(\count_reg_reg[3]_0 [1]),
        .I3(\count_reg_reg[3]_0 [2]),
        .I4(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(Q[1]),
        .I1(\count_reg_reg[3]_0 [3]),
        .I2(\count_reg_reg[3]_0 [1]),
        .I3(\count_reg_reg[3]_0 [0]),
        .I4(\count_reg_reg[3]_0 [2]),
        .I5(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg[0]_i_1 
       (.I0(\count_reg_reg[3]_0 [2]),
        .I1(\count_reg_reg[3]_0 [1]),
        .I2(\count_reg_reg[3]_0 [3]),
        .I3(\count_reg_reg[3]_0 [0]),
        .O(count_next[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1 
       (.I0(\count_reg_reg[3]_0 [0]),
        .I1(\count_reg_reg[3]_0 [1]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1 
       (.I0(\count_reg_reg[3]_0 [2]),
        .I1(\count_reg_reg[3]_0 [0]),
        .I2(\count_reg_reg[3]_0 [1]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg[3]_i_1 
       (.I0(\count_reg_reg[3]_0 [3]),
        .I1(\count_reg_reg[3]_0 [0]),
        .I2(\count_reg_reg[3]_0 [1]),
        .I3(\count_reg_reg[3]_0 [2]),
        .O(count_next[3]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[0]),
        .Q(\count_reg_reg[3]_0 [0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[1]),
        .Q(\count_reg_reg[3]_0 [1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[2]),
        .Q(\count_reg_reg[3]_0 [2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[3]),
        .Q(\count_reg_reg[3]_0 [3]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_pynq_0_0_up_counter_0
   (Q,
    D,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [3:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[3] ;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire clk;
  wire \count_reg[0]_i_1__0_n_0 ;
  wire \count_reg[1]_i_1__1_n_0 ;
  wire \count_reg[2]_i_1__0_n_0 ;
  wire \count_reg[3]_i_1__0_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3__0 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg[4] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg[0]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\count_reg[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_reg[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\count_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_reg[3]_i_1__0_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[3]_i_1__0_n_0 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_pynq_0_0_up_counter_1
   (Q,
    D,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [3:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[3] ;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire clk;
  wire \count_reg[0]_i_1__1_n_0 ;
  wire \count_reg[1]_i_1__2_n_0 ;
  wire \count_reg[2]_i_1__1_n_0 ;
  wire \count_reg[3]_i_1__1_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2__1 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3__1 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg[4] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg[0]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\count_reg[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_reg[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\count_reg[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg[3]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_reg[3]_i_1__1_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[1]_i_1__2_n_0 ),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[3]_i_1__1_n_0 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_pynq_0_0_up_counter_2
   (Q,
    D,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [3:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[3] ;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire clk;
  wire \count_reg[0]_i_1__2_n_0 ;
  wire \count_reg[1]_i_1__4_n_0 ;
  wire \count_reg[2]_i_1__2_n_0 ;
  wire \count_reg[3]_i_1__2_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2__2 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3__2 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg[4] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg[0]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\count_reg[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_reg[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\count_reg[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg[3]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_reg[3]_i_1__2_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[0]_i_1__2_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[1]_i_1__4_n_0 ),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[2]_i_1__2_n_0 ),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[3]_i_1__2_n_0 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_pynq_0_0_up_counter_3
   (Q,
    D,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [3:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[3] ;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire clk;
  wire \count_reg[0]_i_1__3_n_0 ;
  wire \count_reg[1]_i_1__5_n_0 ;
  wire \count_reg[2]_i_1__3_n_0 ;
  wire \count_reg[3]_i_1__3_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2__3 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3__3 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg[4] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg[0]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\count_reg[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_reg[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\count_reg[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg[3]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_reg[3]_i_1__3_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[0]_i_1__3_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[1]_i_1__5_n_0 ),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[2]_i_1__3_n_0 ),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[3]_i_1__3_n_0 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_pynq_0_0_up_counter_4
   (Q,
    D,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [3:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[3] ;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire clk;
  wire \count_reg[0]_i_1__4_n_0 ;
  wire \count_reg[1]_i_1__3_n_0 ;
  wire \count_reg[2]_i_1__4_n_0 ;
  wire \count_reg[3]_i_1__4_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2__4 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3__4 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg[4] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg[0]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\count_reg[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_reg[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\count_reg[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg[3]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_reg[3]_i_1__4_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[0]_i_1__4_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[1]_i_1__3_n_0 ),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[2]_i_1__4_n_0 ),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[3]_i_1__4_n_0 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_pynq_0_0_up_counter_5
   (j_reg_0_sp_1,
    Q,
    E,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[3] ,
    j_reg,
    D,
    done,
    \FSM_onehot_state_reg[4] ,
    \count_reg_reg[3]_0 ,
    clk,
    \count_reg_reg[0]_0 );
  output j_reg_0_sp_1;
  output [3:0]Q;
  output [0:0]E;
  output [1:0]\FSM_onehot_state_reg[1] ;
  output \FSM_onehot_state_reg[3] ;
  input [0:0]j_reg;
  input [3:0]D;
  input done;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input [0:0]\count_reg_reg[3]_0 ;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire clk;
  wire \count[3]_i_3__5_n_0 ;
  wire \count[3]_i_4__2_n_0 ;
  wire \count_reg[0]_i_1__5_n_0 ;
  wire \count_reg[1]_i_1__0_n_0 ;
  wire \count_reg[2]_i_1__5_n_0 ;
  wire \count_reg[3]_i_1__5_n_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[3]_0 ;
  wire done;
  wire done_aux_i_2__3_n_0;
  wire done_aux_i_3__1_n_0;
  wire [0:0]j_reg;
  wire j_reg_0_sn_1;

  assign j_reg_0_sp_1 = j_reg_0_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2__5 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1__5 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .O(\FSM_onehot_state_reg[1] [0]));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3__5 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg[4] [2]),
        .O(\FSM_onehot_state_reg[1] [1]));
  LUT6 #(
    .INIT(64'h0000000054511040)) 
    \count[3]_i_1__5 
       (.I0(j_reg),
        .I1(D[3]),
        .I2(\count[3]_i_3__5_n_0 ),
        .I3(Q[3]),
        .I4(\count[3]_i_4__2_n_0 ),
        .I5(done),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFDFFF)) 
    \count[3]_i_3__5 
       (.I0(Q[2]),
        .I1(D[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(D[0]),
        .I5(D[2]),
        .O(\count[3]_i_3__5_n_0 ));
  LUT6 #(
    .INIT(64'h6F666B6FF6D666F6)) 
    \count[3]_i_4__2 
       (.I0(Q[2]),
        .I1(D[2]),
        .I2(D[1]),
        .I3(Q[0]),
        .I4(D[0]),
        .I5(Q[1]),
        .O(\count[3]_i_4__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg[0]_i_1__5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\count_reg[0]_i_1__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count_reg[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg[3]_i_1__5 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\count_reg[3]_i_1__5_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(\count_reg_reg[3]_0 ),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[0]_i_1__5_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(\count_reg_reg[3]_0 ),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(\count_reg_reg[3]_0 ),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[2]_i_1__5_n_0 ),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(\count_reg_reg[3]_0 ),
        .CLR(\count_reg_reg[0]_0 ),
        .D(\count_reg[3]_i_1__5_n_0 ),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFBBAEA)) 
    done_aux_i_1__5
       (.I0(j_reg),
        .I1(D[3]),
        .I2(done_aux_i_2__3_n_0),
        .I3(Q[3]),
        .I4(done_aux_i_3__1_n_0),
        .I5(done),
        .O(j_reg_0_sn_1));
  LUT6 #(
    .INIT(64'h0004000000002000)) 
    done_aux_i_2__3
       (.I0(Q[2]),
        .I1(D[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(D[0]),
        .I5(D[2]),
        .O(done_aux_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9099949009299909)) 
    done_aux_i_3__1
       (.I0(Q[2]),
        .I1(D[2]),
        .I2(D[1]),
        .I3(Q[0]),
        .I4(D[0]),
        .I5(Q[1]),
        .O(done_aux_i_3__1_n_0));
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
