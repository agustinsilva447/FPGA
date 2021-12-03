// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Nov 24 16:00:01 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_nqueens_0_0_sim_netlist.v
// Design      : design_1_top_nqueens_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm
   (Q,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    done_aux_reg_0,
    done_aux_reg_1,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    acks_out_reg,
    \FSM_onehot_state_reg[1] );
  output [2:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input [4:0]acks_out_reg;
  input \FSM_onehot_state_reg[1] ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [2:0]Q;
  wire [4:0]acks_out_reg;
  wire clk;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire done;
  wire done_aux_i_1__3_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire j0;
  wire \j[0]_i_1_n_0 ;
  wire [4:3]j_reg;
  wire [4:1]p_0_in;
  wire [4:1]plusOp;
  wire valid;
  wire valid_aux_i_1_n_0;
  wire valid_aux_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(valid),
        .I1(acks_out_reg[0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(acks_out_reg[3]),
        .I4(acks_out_reg[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(acks_out_reg[2]),
        .I1(valid),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(acks_out_reg[2]),
        .I1(done),
        .I2(acks_out_reg[0]),
        .I3(acks_out_reg[3]),
        .I4(acks_out_reg[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__0
       (.I0(acks_out_reg[2]),
        .I1(valid),
        .I2(done),
        .I3(acks_out_reg[4]),
        .I4(acks_out_reg[0]),
        .I5(acks_out_reg[1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp[3]));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \count[4]_i_1 
       (.I0(j_reg[4]),
        .I1(\count_reg[0]_0 ),
        .I2(Q[2]),
        .I3(j_reg[3]),
        .I4(\count_reg[0]_1 ),
        .I5(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp[4]));
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
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(count_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF020F0200)) 
    done_aux_i_1__3
       (.I0(done_aux_reg_0),
        .I1(Q[2]),
        .I2(j_reg[4]),
        .I3(j_reg[3]),
        .I4(done_aux_reg_1),
        .I5(done),
        .O(done_aux_i_1__3_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__3_n_0),
        .Q(done));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(Q[0]),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j[3]_i_1 
       (.I0(j_reg[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0000000000015555)) 
    \j[4]_i_1 
       (.I0(j_reg[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(j_reg[3]),
        .I5(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \j[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(j_reg[3]),
        .O(p_0_in[4]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(j_reg[3]));
  FDCE \j_reg[4] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(j_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    valid_aux_i_1
       (.I0(j_reg[4]),
        .I1(count_reg[4]),
        .I2(valid_aux_i_2_n_0),
        .I3(count_reg[3]),
        .I4(j_reg[3]),
        .I5(valid),
        .O(valid_aux_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    valid_aux_i_2
       (.I0(count_reg[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(count_reg[0]),
        .I5(count_reg[2]),
        .O(valid_aux_i_2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0
   (Q,
    \j_reg[2]_0 ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[2]_1 ,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    \count_reg[0]_0 ,
    done_aux_reg_i_6_0,
    a_in_9,
    done_aux_reg_i_13_0,
    done_aux_i_22_0,
    \count[4]_i_29_0 ,
    \count_reg[4]_i_17_0 ,
    \count_reg[4]_i_17_1 ,
    \count_reg[4]_i_14_0 ,
    done_aux_reg_i_16_0,
    done_aux_reg_i_16_1,
    done_aux_reg_0,
    done_aux_reg_1,
    done_aux_i_2__0_0,
    done_aux_i_2__0_1,
    done_aux_i_2__0_2,
    done_aux_i_2__0_3,
    \count_reg_reg[0] ,
    \FSM_onehot_state_reg[1] ,
    next_out_9,
    \count_reg[0]_1 ,
    \count_reg[0]_2 );
  output [1:0]Q;
  output \j_reg[2]_0 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \j_reg[2]_1 ;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input [2:0]\count_reg[0]_0 ;
  input [4:0]done_aux_reg_i_6_0;
  input [33:0]a_in_9;
  input done_aux_reg_i_13_0;
  input [2:0]done_aux_i_22_0;
  input [4:0]\count[4]_i_29_0 ;
  input \count_reg[4]_i_17_0 ;
  input \count_reg[4]_i_17_1 ;
  input \count_reg[4]_i_14_0 ;
  input done_aux_reg_i_16_0;
  input done_aux_reg_i_16_1;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input done_aux_i_2__0_0;
  input done_aux_i_2__0_1;
  input done_aux_i_2__0_2;
  input done_aux_i_2__0_3;
  input [4:0]\count_reg_reg[0] ;
  input \FSM_onehot_state_reg[1] ;
  input next_out_9;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [33:0]a_in_9;
  wire clk;
  wire count;
  wire \count[4]_i_10_n_0 ;
  wire \count[4]_i_20_n_0 ;
  wire \count[4]_i_21_n_0 ;
  wire \count[4]_i_22_n_0 ;
  wire \count[4]_i_23_n_0 ;
  wire \count[4]_i_24_n_0 ;
  wire \count[4]_i_25_n_0 ;
  wire \count[4]_i_26_n_0 ;
  wire \count[4]_i_27_n_0 ;
  wire \count[4]_i_28_n_0 ;
  wire [4:0]\count[4]_i_29_0 ;
  wire \count[4]_i_29_n_0 ;
  wire \count[4]_i_30_n_0 ;
  wire \count[4]_i_31_n_0 ;
  wire \count[4]_i_32_n_0 ;
  wire \count[4]_i_33_n_0 ;
  wire \count[4]_i_34_n_0 ;
  wire \count[4]_i_35_n_0 ;
  wire \count[4]_i_36_n_0 ;
  wire \count[4]_i_37_n_0 ;
  wire \count[4]_i_38_n_0 ;
  wire \count[4]_i_39_n_0 ;
  wire \count[4]_i_41_n_0 ;
  wire \count[4]_i_42_n_0 ;
  wire \count[4]_i_43_n_0 ;
  wire \count[4]_i_44_n_0 ;
  wire \count[4]_i_45_n_0 ;
  wire \count[4]_i_46_n_0 ;
  wire \count[4]_i_47_n_0 ;
  wire \count[4]_i_48_n_0 ;
  wire \count[4]_i_51_n_0 ;
  wire \count[4]_i_52_n_0 ;
  wire \count[4]_i_53_n_0 ;
  wire \count[4]_i_54_n_0 ;
  wire \count[4]_i_55_n_0 ;
  wire \count[4]_i_56_n_0 ;
  wire \count[4]_i_57_n_0 ;
  wire [4:0]count_reg;
  wire [2:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg[4]_i_14_0 ;
  wire \count_reg[4]_i_14_n_0 ;
  wire \count_reg[4]_i_15_n_0 ;
  wire \count_reg[4]_i_16_n_0 ;
  wire \count_reg[4]_i_17_0 ;
  wire \count_reg[4]_i_17_1 ;
  wire \count_reg[4]_i_17_n_0 ;
  wire \count_reg[4]_i_18_n_0 ;
  wire \count_reg[4]_i_19_n_0 ;
  wire \count_reg[4]_i_7_n_0 ;
  wire \count_reg[4]_i_8_n_0 ;
  wire \count_reg[4]_i_9_n_0 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire done;
  wire done_aux_i_19_n_0;
  wire done_aux_i_1__4_n_0;
  wire done_aux_i_20_n_0;
  wire done_aux_i_21_n_0;
  wire [2:0]done_aux_i_22_0;
  wire done_aux_i_22_n_0;
  wire done_aux_i_23_n_0;
  wire done_aux_i_24_n_0;
  wire done_aux_i_25_n_0;
  wire done_aux_i_26_n_0;
  wire done_aux_i_27_n_0;
  wire done_aux_i_28_n_0;
  wire done_aux_i_29_n_0;
  wire done_aux_i_2__0_0;
  wire done_aux_i_2__0_1;
  wire done_aux_i_2__0_2;
  wire done_aux_i_2__0_3;
  wire done_aux_i_2__0_n_0;
  wire done_aux_i_30_n_0;
  wire done_aux_i_31_n_0;
  wire done_aux_i_32_n_0;
  wire done_aux_i_33_n_0;
  wire done_aux_i_34_n_0;
  wire done_aux_i_35_n_0;
  wire done_aux_i_36_n_0;
  wire done_aux_i_37_n_0;
  wire done_aux_i_38_n_0;
  wire done_aux_i_40__2_n_0;
  wire done_aux_i_41_n_0;
  wire done_aux_i_42_n_0;
  wire done_aux_i_43__1_n_0;
  wire done_aux_i_44_n_0;
  wire done_aux_i_45_n_0;
  wire done_aux_i_46_n_0;
  wire done_aux_i_47_n_0;
  wire done_aux_i_50_n_0;
  wire done_aux_i_51_n_0;
  wire done_aux_i_52_n_0;
  wire done_aux_i_53_n_0;
  wire done_aux_i_54_n_0;
  wire done_aux_i_55_n_0;
  wire done_aux_i_56_n_0;
  wire done_aux_i_9_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_aux_reg_i_13_0;
  wire done_aux_reg_i_13_n_0;
  wire done_aux_reg_i_14_n_0;
  wire done_aux_reg_i_15_n_0;
  wire done_aux_reg_i_16_0;
  wire done_aux_reg_i_16_1;
  wire done_aux_reg_i_16_n_0;
  wire done_aux_reg_i_17_n_0;
  wire done_aux_reg_i_18_n_0;
  wire done_aux_reg_i_3_n_0;
  wire done_aux_reg_i_4_n_0;
  wire [4:0]done_aux_reg_i_6_0;
  wire done_aux_reg_i_6_n_0;
  wire done_aux_reg_i_7_n_0;
  wire done_aux_reg_i_8_n_0;
  wire j0;
  wire \j[0]_i_1__0_n_0 ;
  wire [3:2]j_reg;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire next_out_9;
  wire [3:1]p_0_in__0;
  wire [4:0]plusOp__0;
  wire valid;
  wire valid_aux_i_1__1_n_0;
  wire valid_aux_i_2__0_n_0;

  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(valid),
        .I1(\count_reg_reg[0] [0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\count_reg_reg[0] [3]),
        .I4(\count_reg_reg[0] [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__0 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_9),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__2
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0] [4]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(plusOp__0[3]));
  LUT6 #(
    .INIT(64'hBBB8BB8B8B88B888)) 
    \count[4]_i_10 
       (.I0(\count[4]_i_20_n_0 ),
        .I1(\count_reg[0]_0 [0]),
        .I2(done_aux_reg_i_6_0[4]),
        .I3(\count[4]_i_21_n_0 ),
        .I4(a_in_9[33]),
        .I5(\count[4]_i_22_n_0 ),
        .O(\count[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_13 
       (.I0(\count[4]_i_29_0 [2]),
        .I1(done_aux_reg_i_6_0[2]),
        .I2(\count[4]_i_29_0 [1]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(\count[4]_i_29_0 [0]),
        .I5(done_aux_reg_i_6_0[1]),
        .O(\count_reg_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \count[4]_i_1__0 
       (.I0(\count_reg[0]_1 ),
        .I1(j_reg[2]),
        .I2(\count_reg[0]_2 ),
        .I3(j_reg[3]),
        .I4(done),
        .O(count));
  LUT5 #(
    .INIT(32'hFFFF4182)) 
    \count[4]_i_20 
       (.I0(done_aux_reg_i_6_0[4]),
        .I1(done_aux_reg_i_6_0[3]),
        .I2(a_in_9[27]),
        .I3(a_in_9[28]),
        .I4(\count[4]_i_35_n_0 ),
        .O(\count[4]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_21 
       (.I0(\count[4]_i_36_n_0 ),
        .I1(done_aux_reg_i_6_0[3]),
        .I2(\count[4]_i_37_n_0 ),
        .I3(a_in_9[32]),
        .I4(\count[4]_i_38_n_0 ),
        .O(\count[4]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_22 
       (.I0(\count[4]_i_37_n_0 ),
        .I1(done_aux_reg_i_6_0[3]),
        .I2(\count[4]_i_36_n_0 ),
        .I3(a_in_9[32]),
        .I4(\count[4]_i_39_n_0 ),
        .O(\count[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFDF8EF4FADA8EA4A)) 
    \count[4]_i_23 
       (.I0(a_in_9[6]),
        .I1(\count_reg[4]_i_14_0 ),
        .I2(a_in_9[5]),
        .I3(\count[4]_i_41_n_0 ),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(\count[4]_i_42_n_0 ),
        .O(\count[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBBF3BBC0FCBB30BB)) 
    \count[4]_i_24 
       (.I0(\count[4]_i_42_n_0 ),
        .I1(a_in_9[6]),
        .I2(\count[4]_i_41_n_0 ),
        .I3(a_in_9[5]),
        .I4(\count_reg[4]_i_14_0 ),
        .I5(done_aux_reg_i_6_0[3]),
        .O(\count[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFDF8EF4FADA8EA4A)) 
    \count[4]_i_25 
       (.I0(a_in_9[4]),
        .I1(\count[4]_i_43_n_0 ),
        .I2(a_in_9[3]),
        .I3(\count[4]_i_44_n_0 ),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(\count[4]_i_45_n_0 ),
        .O(\count[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBF3BBC0FCBB30BB)) 
    \count[4]_i_26 
       (.I0(\count[4]_i_45_n_0 ),
        .I1(a_in_9[4]),
        .I2(\count[4]_i_44_n_0 ),
        .I3(a_in_9[3]),
        .I4(\count[4]_i_43_n_0 ),
        .I5(done_aux_reg_i_6_0[3]),
        .O(\count[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFDF8EF4FADA8EA4A)) 
    \count[4]_i_27 
       (.I0(a_in_9[13]),
        .I1(\count[4]_i_46_n_0 ),
        .I2(a_in_9[12]),
        .I3(\count[4]_i_47_n_0 ),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(\count[4]_i_48_n_0 ),
        .O(\count[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBBF3BBC0FCBB30BB)) 
    \count[4]_i_28 
       (.I0(\count[4]_i_48_n_0 ),
        .I1(a_in_9[13]),
        .I2(\count[4]_i_47_n_0 ),
        .I3(a_in_9[12]),
        .I4(\count[4]_i_46_n_0 ),
        .I5(done_aux_reg_i_6_0[3]),
        .O(\count[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFDF8EF4FADA8EA4A)) 
    \count[4]_i_29 
       (.I0(a_in_9[8]),
        .I1(\count_reg[4]_i_17_0 ),
        .I2(a_in_9[7]),
        .I3(\count_reg[4]_i_17_1 ),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(\count[4]_i_51_n_0 ),
        .O(\count[4]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[3]),
        .I3(count_reg[1]),
        .I4(count_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'hBBF3BBC0FCBB30BB)) 
    \count[4]_i_30 
       (.I0(\count[4]_i_51_n_0 ),
        .I1(a_in_9[8]),
        .I2(\count_reg[4]_i_17_1 ),
        .I3(a_in_9[7]),
        .I4(\count_reg[4]_i_17_0 ),
        .I5(done_aux_reg_i_6_0[3]),
        .O(\count[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFDF8EF4FADA8EA4A)) 
    \count[4]_i_31 
       (.I0(a_in_9[23]),
        .I1(\count[4]_i_52_n_0 ),
        .I2(done_aux_reg_i_6_0[3]),
        .I3(\count[4]_i_53_n_0 ),
        .I4(a_in_9[22]),
        .I5(\count[4]_i_54_n_0 ),
        .O(\count[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBBF3BBC0FCBB30BB)) 
    \count[4]_i_32 
       (.I0(\count[4]_i_54_n_0 ),
        .I1(a_in_9[23]),
        .I2(\count[4]_i_53_n_0 ),
        .I3(done_aux_reg_i_6_0[3]),
        .I4(\count[4]_i_52_n_0 ),
        .I5(a_in_9[22]),
        .O(\count[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFDF8EF4FADA8EA4A)) 
    \count[4]_i_33 
       (.I0(a_in_9[18]),
        .I1(\count[4]_i_55_n_0 ),
        .I2(done_aux_reg_i_6_0[3]),
        .I3(\count[4]_i_56_n_0 ),
        .I4(a_in_9[17]),
        .I5(\count[4]_i_57_n_0 ),
        .O(\count[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hBBF3BBC0FCBB30BB)) 
    \count[4]_i_34 
       (.I0(\count[4]_i_57_n_0 ),
        .I1(a_in_9[18]),
        .I2(\count[4]_i_56_n_0 ),
        .I3(done_aux_reg_i_6_0[3]),
        .I4(\count[4]_i_55_n_0 ),
        .I5(a_in_9[17]),
        .O(\count[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFF7FDBFEFFBFE)) 
    \count[4]_i_35 
       (.I0(a_in_9[26]),
        .I1(a_in_9[25]),
        .I2(a_in_9[24]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(\count[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFF7BFFDEFDFF7BFF)) 
    \count[4]_i_36 
       (.I0(a_in_9[31]),
        .I1(a_in_9[30]),
        .I2(done_aux_reg_i_6_0[2]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(a_in_9[29]),
        .O(\count[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF7DFFDBFFBEFFEFF)) 
    \count[4]_i_37 
       (.I0(a_in_9[31]),
        .I1(a_in_9[30]),
        .I2(a_in_9[29]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(\count[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7EFFFFFFF)) 
    \count[4]_i_38 
       (.I0(a_in_9[31]),
        .I1(a_in_9[29]),
        .I2(done_aux_reg_i_6_0[1]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[30]),
        .O(\count[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFF7FDBFEFFBFE)) 
    \count[4]_i_39 
       (.I0(a_in_9[31]),
        .I1(a_in_9[30]),
        .I2(a_in_9[29]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(\count[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_4 
       (.I0(\count_reg[4]_i_7_n_0 ),
        .I1(\count_reg[4]_i_8_n_0 ),
        .I2(\count_reg[0]_0 [2]),
        .I3(\count_reg[4]_i_9_n_0 ),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count[4]_i_10_n_0 ),
        .O(\j_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFE7FFFDFFFFFFFF)) 
    \count[4]_i_41 
       (.I0(done_aux_i_22_0[0]),
        .I1(done_aux_reg_i_6_0[1]),
        .I2(done_aux_reg_i_6_0[0]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_i_22_0[1]),
        .I5(done_aux_i_22_0[2]),
        .O(\count[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h7DDBB76DB6EDDBBE)) 
    \count[4]_i_42 
       (.I0(done_aux_i_22_0[2]),
        .I1(done_aux_i_22_0[1]),
        .I2(done_aux_i_22_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(\count[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFEFFFFF)) 
    \count[4]_i_43 
       (.I0(a_in_9[1]),
        .I1(a_in_9[0]),
        .I2(done_aux_reg_i_6_0[1]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[2]),
        .O(\count[4]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FDFFFFFFFF)) 
    \count[4]_i_44 
       (.I0(a_in_9[1]),
        .I1(a_in_9[0]),
        .I2(done_aux_reg_i_6_0[1]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[2]),
        .O(\count[4]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h45FFA2FFFF45FFA2)) 
    \count[4]_i_45 
       (.I0(a_in_9[2]),
        .I1(done_aux_reg_i_6_0[1]),
        .I2(a_in_9[1]),
        .I3(a_in_9[0]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(done_aux_reg_i_6_0[0]),
        .O(\count[4]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFDFBBFEFFEFFFFFF)) 
    \count[4]_i_46 
       (.I0(a_in_9[11]),
        .I1(a_in_9[10]),
        .I2(a_in_9[9]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(\count[4]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7DFFBFFFFFD7F)) 
    \count[4]_i_47 
       (.I0(a_in_9[11]),
        .I1(a_in_9[9]),
        .I2(done_aux_reg_i_6_0[1]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[10]),
        .O(\count[4]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h7BBFE77BDEE7FDDE)) 
    \count[4]_i_48 
       (.I0(a_in_9[11]),
        .I1(a_in_9[10]),
        .I2(a_in_9[9]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[1]),
        .O(\count[4]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h7DBE)) 
    \count[4]_i_51 
       (.I0(\count[4]_i_29_0 [4]),
        .I1(\count[4]_i_29_0 [3]),
        .I2(done_aux_reg_i_6_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .O(\count[4]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFF7BFFDEFDFF7BFF)) 
    \count[4]_i_52 
       (.I0(a_in_9[21]),
        .I1(a_in_9[20]),
        .I2(done_aux_reg_i_6_0[2]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(a_in_9[19]),
        .O(\count[4]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hF7DFFDBFFBEFFEFF)) 
    \count[4]_i_53 
       (.I0(a_in_9[21]),
        .I1(a_in_9[20]),
        .I2(a_in_9[19]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(\count[4]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h7EBFF7FBDFEFFD7E)) 
    \count[4]_i_54 
       (.I0(a_in_9[21]),
        .I1(a_in_9[20]),
        .I2(a_in_9[19]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[1]),
        .O(\count[4]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFF6FFFF6DFFFFDFF)) 
    \count[4]_i_55 
       (.I0(a_in_9[16]),
        .I1(done_aux_reg_i_6_0[2]),
        .I2(done_aux_reg_i_6_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(a_in_9[14]),
        .I5(a_in_9[15]),
        .O(\count[4]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hDFBFFDFBEFFFFEFF)) 
    \count[4]_i_56 
       (.I0(a_in_9[16]),
        .I1(a_in_9[15]),
        .I2(a_in_9[14]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(\count[4]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h6FBFF6FBDF6FFDF6)) 
    \count[4]_i_57 
       (.I0(a_in_9[16]),
        .I1(a_in_9[15]),
        .I2(a_in_9[14]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[1]),
        .O(\count[4]_i_57_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__0[0]),
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
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(count_reg[4]));
  MUXF7 \count_reg[4]_i_14 
       (.I0(\count[4]_i_23_n_0 ),
        .I1(\count[4]_i_24_n_0 ),
        .O(\count_reg[4]_i_14_n_0 ),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 \count_reg[4]_i_15 
       (.I0(\count[4]_i_25_n_0 ),
        .I1(\count[4]_i_26_n_0 ),
        .O(\count_reg[4]_i_15_n_0 ),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 \count_reg[4]_i_16 
       (.I0(\count[4]_i_27_n_0 ),
        .I1(\count[4]_i_28_n_0 ),
        .O(\count_reg[4]_i_16_n_0 ),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 \count_reg[4]_i_17 
       (.I0(\count[4]_i_29_n_0 ),
        .I1(\count[4]_i_30_n_0 ),
        .O(\count_reg[4]_i_17_n_0 ),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 \count_reg[4]_i_18 
       (.I0(\count[4]_i_31_n_0 ),
        .I1(\count[4]_i_32_n_0 ),
        .O(\count_reg[4]_i_18_n_0 ),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 \count_reg[4]_i_19 
       (.I0(\count[4]_i_33_n_0 ),
        .I1(\count[4]_i_34_n_0 ),
        .O(\count_reg[4]_i_19_n_0 ),
        .S(done_aux_reg_i_6_0[4]));
  MUXF8 \count_reg[4]_i_7 
       (.I0(\count_reg[4]_i_14_n_0 ),
        .I1(\count_reg[4]_i_15_n_0 ),
        .O(\count_reg[4]_i_7_n_0 ),
        .S(\count_reg[0]_0 [0]));
  MUXF8 \count_reg[4]_i_8 
       (.I0(\count_reg[4]_i_16_n_0 ),
        .I1(\count_reg[4]_i_17_n_0 ),
        .O(\count_reg[4]_i_8_n_0 ),
        .S(\count_reg[0]_0 [0]));
  MUXF8 \count_reg[4]_i_9 
       (.I0(\count_reg[4]_i_18_n_0 ),
        .I1(\count_reg[4]_i_19_n_0 ),
        .O(\count_reg[4]_i_9_n_0 ),
        .S(\count_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_12
       (.I0(\count[4]_i_29_0 [2]),
        .I1(done_aux_reg_i_6_0[2]),
        .I2(\count[4]_i_29_0 [1]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(\count[4]_i_29_0 [0]),
        .I5(done_aux_reg_i_6_0[1]),
        .O(\count_reg_reg[2] ));
  LUT5 #(
    .INIT(32'hBE7D0000)) 
    done_aux_i_19
       (.I0(done_aux_reg_i_6_0[4]),
        .I1(done_aux_reg_i_6_0[3]),
        .I2(a_in_9[27]),
        .I3(a_in_9[28]),
        .I4(done_aux_i_34_n_0),
        .O(done_aux_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FF0100)) 
    done_aux_i_1__4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j_reg[2]),
        .I3(j_reg[3]),
        .I4(done_aux_i_2__0_n_0),
        .I5(done),
        .O(done_aux_i_1__4_n_0));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_20
       (.I0(done_aux_i_35_n_0),
        .I1(done_aux_reg_i_6_0[3]),
        .I2(done_aux_i_36_n_0),
        .I3(a_in_9[32]),
        .I4(done_aux_i_37_n_0),
        .O(done_aux_i_20_n_0));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_21
       (.I0(done_aux_i_36_n_0),
        .I1(done_aux_reg_i_6_0[3]),
        .I2(done_aux_i_35_n_0),
        .I3(a_in_9[32]),
        .I4(done_aux_i_38_n_0),
        .O(done_aux_i_21_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_22
       (.I0(a_in_9[6]),
        .I1(done_aux_reg_i_13_0),
        .I2(a_in_9[5]),
        .I3(done_aux_i_40__2_n_0),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(done_aux_i_41_n_0),
        .O(done_aux_i_22_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_23
       (.I0(done_aux_i_41_n_0),
        .I1(a_in_9[6]),
        .I2(done_aux_i_40__2_n_0),
        .I3(a_in_9[5]),
        .I4(done_aux_reg_i_13_0),
        .I5(done_aux_reg_i_6_0[3]),
        .O(done_aux_i_23_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_24
       (.I0(a_in_9[4]),
        .I1(done_aux_i_42_n_0),
        .I2(a_in_9[3]),
        .I3(done_aux_i_43__1_n_0),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(done_aux_i_44_n_0),
        .O(done_aux_i_24_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_25
       (.I0(done_aux_i_44_n_0),
        .I1(a_in_9[4]),
        .I2(done_aux_i_43__1_n_0),
        .I3(a_in_9[3]),
        .I4(done_aux_i_42_n_0),
        .I5(done_aux_reg_i_6_0[3]),
        .O(done_aux_i_25_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_26
       (.I0(a_in_9[13]),
        .I1(done_aux_i_45_n_0),
        .I2(a_in_9[12]),
        .I3(done_aux_i_46_n_0),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(done_aux_i_47_n_0),
        .O(done_aux_i_26_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_27
       (.I0(done_aux_i_47_n_0),
        .I1(a_in_9[13]),
        .I2(done_aux_i_46_n_0),
        .I3(a_in_9[12]),
        .I4(done_aux_i_45_n_0),
        .I5(done_aux_reg_i_6_0[3]),
        .O(done_aux_i_27_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_28
       (.I0(a_in_9[8]),
        .I1(done_aux_reg_i_16_0),
        .I2(a_in_9[7]),
        .I3(done_aux_reg_i_16_1),
        .I4(done_aux_reg_i_6_0[3]),
        .I5(done_aux_i_50_n_0),
        .O(done_aux_i_28_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_29
       (.I0(done_aux_i_50_n_0),
        .I1(a_in_9[8]),
        .I2(done_aux_reg_i_16_1),
        .I3(a_in_9[7]),
        .I4(done_aux_reg_i_16_0),
        .I5(done_aux_reg_i_6_0[3]),
        .O(done_aux_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    done_aux_i_2__0
       (.I0(done_aux_reg_i_3_n_0),
        .I1(done_aux_reg_i_4_n_0),
        .I2(j_reg[2]),
        .I3(done_aux_reg_0),
        .I4(Q[1]),
        .I5(done_aux_reg_1),
        .O(done_aux_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    done_aux_i_3
       (.I0(done_aux_reg_i_6_n_0),
        .I1(done_aux_reg_i_7_n_0),
        .I2(\count_reg[0]_0 [2]),
        .I3(done_aux_reg_i_8_n_0),
        .I4(\count_reg[0]_0 [1]),
        .I5(done_aux_i_9_n_0),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_30
       (.I0(a_in_9[23]),
        .I1(done_aux_i_51_n_0),
        .I2(done_aux_reg_i_6_0[3]),
        .I3(done_aux_i_52_n_0),
        .I4(a_in_9[22]),
        .I5(done_aux_i_53_n_0),
        .O(done_aux_i_30_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_31
       (.I0(done_aux_i_53_n_0),
        .I1(a_in_9[23]),
        .I2(done_aux_i_52_n_0),
        .I3(done_aux_reg_i_6_0[3]),
        .I4(done_aux_i_51_n_0),
        .I5(a_in_9[22]),
        .O(done_aux_i_31_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_32
       (.I0(a_in_9[18]),
        .I1(done_aux_i_54_n_0),
        .I2(done_aux_reg_i_6_0[3]),
        .I3(done_aux_i_55_n_0),
        .I4(a_in_9[17]),
        .I5(done_aux_i_56_n_0),
        .O(done_aux_i_32_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_33
       (.I0(done_aux_i_56_n_0),
        .I1(a_in_9[18]),
        .I2(done_aux_i_55_n_0),
        .I3(done_aux_reg_i_6_0[3]),
        .I4(done_aux_i_54_n_0),
        .I5(a_in_9[17]),
        .O(done_aux_i_33_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    done_aux_i_34
       (.I0(a_in_9[26]),
        .I1(a_in_9[25]),
        .I2(a_in_9[24]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000842102840000)) 
    done_aux_i_35
       (.I0(a_in_9[31]),
        .I1(a_in_9[30]),
        .I2(done_aux_reg_i_6_0[2]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(a_in_9[29]),
        .O(done_aux_i_35_n_0));
  LUT6 #(
    .INIT(64'h0802204004011000)) 
    done_aux_i_36
       (.I0(a_in_9[31]),
        .I1(a_in_9[30]),
        .I2(a_in_9[29]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_36_n_0));
  LUT6 #(
    .INIT(64'h0000000810000000)) 
    done_aux_i_37
       (.I0(a_in_9[31]),
        .I1(a_in_9[29]),
        .I2(done_aux_reg_i_6_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[30]),
        .O(done_aux_i_37_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    done_aux_i_38
       (.I0(a_in_9[31]),
        .I1(a_in_9[30]),
        .I2(a_in_9[29]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_38_n_0));
  LUT6 #(
    .INIT(64'h0024000200000000)) 
    done_aux_i_40__2
       (.I0(done_aux_i_22_0[0]),
        .I1(done_aux_reg_i_6_0[0]),
        .I2(done_aux_reg_i_6_0[1]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_i_22_0[1]),
        .I5(done_aux_i_22_0[2]),
        .O(done_aux_i_40__2_n_0));
  LUT6 #(
    .INIT(64'h8224489249122441)) 
    done_aux_i_41
       (.I0(done_aux_i_22_0[2]),
        .I1(done_aux_i_22_0[1]),
        .I2(done_aux_i_22_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_41_n_0));
  LUT6 #(
    .INIT(64'h0000000041000000)) 
    done_aux_i_42
       (.I0(a_in_9[1]),
        .I1(a_in_9[0]),
        .I2(done_aux_reg_i_6_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[2]),
        .O(done_aux_i_42_n_0));
  LUT6 #(
    .INIT(64'h0000008200000000)) 
    done_aux_i_43__1
       (.I0(a_in_9[1]),
        .I1(a_in_9[0]),
        .I2(done_aux_reg_i_6_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[2]),
        .O(done_aux_i_43__1_n_0));
  LUT6 #(
    .INIT(64'hBA0000BA5D00005D)) 
    done_aux_i_44
       (.I0(a_in_9[2]),
        .I1(done_aux_reg_i_6_0[1]),
        .I2(a_in_9[1]),
        .I3(a_in_9[0]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_44_n_0));
  LUT6 #(
    .INIT(64'h0240041001000000)) 
    done_aux_i_45
       (.I0(a_in_9[11]),
        .I1(a_in_9[10]),
        .I2(a_in_9[9]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_45_n_0));
  LUT6 #(
    .INIT(64'h0008200400000820)) 
    done_aux_i_46
       (.I0(a_in_9[11]),
        .I1(a_in_9[9]),
        .I2(done_aux_reg_i_6_0[0]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[2]),
        .I5(a_in_9[10]),
        .O(done_aux_i_46_n_0));
  LUT6 #(
    .INIT(64'h8440211818840221)) 
    done_aux_i_47
       (.I0(a_in_9[11]),
        .I1(a_in_9[10]),
        .I2(a_in_9[9]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[0]),
        .O(done_aux_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h8421)) 
    done_aux_i_50
       (.I0(\count[4]_i_29_0 [4]),
        .I1(\count[4]_i_29_0 [3]),
        .I2(done_aux_reg_i_6_0[1]),
        .I3(done_aux_reg_i_6_0[0]),
        .O(done_aux_i_50_n_0));
  LUT6 #(
    .INIT(64'h0000842102840000)) 
    done_aux_i_51
       (.I0(a_in_9[21]),
        .I1(a_in_9[20]),
        .I2(done_aux_reg_i_6_0[2]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(a_in_9[19]),
        .O(done_aux_i_51_n_0));
  LUT6 #(
    .INIT(64'h0802204004011000)) 
    done_aux_i_52
       (.I0(a_in_9[21]),
        .I1(a_in_9[20]),
        .I2(a_in_9[19]),
        .I3(done_aux_reg_i_6_0[1]),
        .I4(done_aux_reg_i_6_0[0]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_52_n_0));
  LUT6 #(
    .INIT(64'h8140201008040281)) 
    done_aux_i_53
       (.I0(a_in_9[21]),
        .I1(a_in_9[20]),
        .I2(a_in_9[19]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[0]),
        .O(done_aux_i_53_n_0));
  LUT6 #(
    .INIT(64'h0900000920000020)) 
    done_aux_i_54
       (.I0(a_in_9[16]),
        .I1(done_aux_reg_i_6_0[2]),
        .I2(done_aux_reg_i_6_0[1]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(a_in_9[14]),
        .I5(a_in_9[15]),
        .O(done_aux_i_54_n_0));
  LUT6 #(
    .INIT(64'h2002400410010000)) 
    done_aux_i_55
       (.I0(a_in_9[16]),
        .I1(a_in_9[15]),
        .I2(a_in_9[14]),
        .I3(done_aux_reg_i_6_0[0]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[2]),
        .O(done_aux_i_55_n_0));
  LUT6 #(
    .INIT(64'h9040209009040209)) 
    done_aux_i_56
       (.I0(a_in_9[16]),
        .I1(a_in_9[15]),
        .I2(a_in_9[14]),
        .I3(done_aux_reg_i_6_0[2]),
        .I4(done_aux_reg_i_6_0[1]),
        .I5(done_aux_reg_i_6_0[0]),
        .O(done_aux_i_56_n_0));
  LUT6 #(
    .INIT(64'hBBB8BB8B8B88B888)) 
    done_aux_i_9
       (.I0(done_aux_i_19_n_0),
        .I1(\count_reg[0]_0 [0]),
        .I2(done_aux_reg_i_6_0[4]),
        .I3(done_aux_i_20_n_0),
        .I4(a_in_9[33]),
        .I5(done_aux_i_21_n_0),
        .O(done_aux_i_9_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__4_n_0),
        .Q(done));
  MUXF7 done_aux_reg_i_13
       (.I0(done_aux_i_22_n_0),
        .I1(done_aux_i_23_n_0),
        .O(done_aux_reg_i_13_n_0),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 done_aux_reg_i_14
       (.I0(done_aux_i_24_n_0),
        .I1(done_aux_i_25_n_0),
        .O(done_aux_reg_i_14_n_0),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 done_aux_reg_i_15
       (.I0(done_aux_i_26_n_0),
        .I1(done_aux_i_27_n_0),
        .O(done_aux_reg_i_15_n_0),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 done_aux_reg_i_16
       (.I0(done_aux_i_28_n_0),
        .I1(done_aux_i_29_n_0),
        .O(done_aux_reg_i_16_n_0),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 done_aux_reg_i_17
       (.I0(done_aux_i_30_n_0),
        .I1(done_aux_i_31_n_0),
        .O(done_aux_reg_i_17_n_0),
        .S(done_aux_reg_i_6_0[4]));
  MUXF7 done_aux_reg_i_18
       (.I0(done_aux_i_32_n_0),
        .I1(done_aux_i_33_n_0),
        .O(done_aux_reg_i_18_n_0),
        .S(done_aux_reg_i_6_0[4]));
  MUXF8 done_aux_reg_i_3
       (.I0(done_aux_i_2__0_2),
        .I1(done_aux_i_2__0_3),
        .O(done_aux_reg_i_3_n_0),
        .S(Q[0]));
  MUXF8 done_aux_reg_i_4
       (.I0(done_aux_i_2__0_0),
        .I1(done_aux_i_2__0_1),
        .O(done_aux_reg_i_4_n_0),
        .S(Q[0]));
  MUXF8 done_aux_reg_i_6
       (.I0(done_aux_reg_i_13_n_0),
        .I1(done_aux_reg_i_14_n_0),
        .O(done_aux_reg_i_6_n_0),
        .S(\count_reg[0]_0 [0]));
  MUXF8 done_aux_reg_i_7
       (.I0(done_aux_reg_i_15_n_0),
        .I1(done_aux_reg_i_16_n_0),
        .O(done_aux_reg_i_7_n_0),
        .S(\count_reg[0]_0 [0]));
  MUXF8 done_aux_reg_i_8
       (.I0(done_aux_reg_i_17_n_0),
        .I1(done_aux_reg_i_18_n_0),
        .O(done_aux_reg_i_8_n_0),
        .S(\count_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__0 
       (.I0(Q[0]),
        .O(\j[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__0 
       (.I0(j_reg[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \j[3]_i_1__0 
       (.I0(j_reg[3]),
        .I1(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j_reg[2]),
        .O(p_0_in__0[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(j_reg[2]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(j_reg[3]));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    valid_aux_i_1__1
       (.I0(j_reg[3]),
        .I1(valid_aux_i_2__0_n_0),
        .I2(count_reg[4]),
        .I3(count_reg[1]),
        .I4(valid),
        .O(valid_aux_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    valid_aux_i_2__0
       (.I0(Q[1]),
        .I1(count_reg[3]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(Q[0]),
        .I5(j_reg[2]),
        .O(valid_aux_i_2__0_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__1_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1
   (\FSM_onehot_state_reg[3] ,
    \count_reg_reg[1] ,
    \count_reg_reg[0] ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[0]_0 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \j_reg[0]_1 ,
    \count_reg_reg[1]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \j_reg[0]_2 ,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    a_in_8,
    done_aux_reg_i_4,
    Q,
    done_aux_reg_i_10_0,
    \count_reg[0]_0 ,
    \count[4]_i_10__0_0 ,
    done_aux_reg_0,
    done_aux_reg_1,
    done_aux_reg_2,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    \count_reg[0]_3 ,
    \count_reg[0]_4 ,
    \count_reg[0]_5 ,
    \count_reg[0]_6 ,
    \count_reg[0]_7 ,
    done_aux_i_2__1_0,
    done_aux_i_2__1_1,
    \count_reg_reg[0]_1 ,
    \FSM_onehot_state_reg[1] ,
    next_out_8);
  output \FSM_onehot_state_reg[3] ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[4]_1 ;
  output \j_reg[0]_1 ;
  output \count_reg_reg[1]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output [0:0]\j_reg[0]_2 ;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input [34:0]a_in_8;
  input done_aux_reg_i_4;
  input [4:0]Q;
  input done_aux_reg_i_10_0;
  input [1:0]\count_reg[0]_0 ;
  input \count[4]_i_10__0_0 ;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input done_aux_reg_2;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input \count_reg[0]_3 ;
  input \count_reg[0]_4 ;
  input \count_reg[0]_5 ;
  input \count_reg[0]_6 ;
  input \count_reg[0]_7 ;
  input done_aux_i_2__1_0;
  input done_aux_i_2__1_1;
  input [4:0]\count_reg_reg[0]_1 ;
  input \FSM_onehot_state_reg[1] ;
  input next_out_8;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire [4:0]Q;
  wire [34:0]a_in_8;
  wire clk;
  wire count;
  wire \count[4]_i_10__0_0 ;
  wire \count[4]_i_12__0_n_0 ;
  wire \count[4]_i_13__0_n_0 ;
  wire \count[4]_i_14_n_0 ;
  wire \count[4]_i_15_n_0 ;
  wire \count[4]_i_16_n_0 ;
  wire \count[4]_i_17_n_0 ;
  wire \count[4]_i_18_n_0 ;
  wire \count[4]_i_21__0_n_0 ;
  wire \count[4]_i_22__0_n_0 ;
  wire \count[4]_i_23__0_n_0 ;
  wire \count[4]_i_24__0_n_0 ;
  wire \count[4]_i_27__0_n_0 ;
  wire \count[4]_i_28__0_n_0 ;
  wire \count[4]_i_29__0_n_0 ;
  wire \count[4]_i_30__0_n_0 ;
  wire \count[4]_i_31__0_n_0 ;
  wire \count[4]_i_32__0_n_0 ;
  wire \count[4]_i_33__0_n_0 ;
  wire \count[4]_i_34__0_n_0 ;
  wire \count[4]_i_35__0_n_0 ;
  wire \count[4]_i_36__0_n_0 ;
  wire \count[4]_i_3__1_n_0 ;
  wire \count[4]_i_40__0_n_0 ;
  wire \count[4]_i_41__0_n_0 ;
  wire \count[4]_i_42__0_n_0 ;
  wire \count[4]_i_43__0_n_0 ;
  wire \count[4]_i_45__0_n_0 ;
  wire \count[4]_i_4__1_n_0 ;
  wire \count[4]_i_5__0_n_0 ;
  wire \count[4]_i_6__0_n_0 ;
  wire \count[4]_i_7_n_0 ;
  wire [4:0]count_reg;
  wire [1:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg[0]_3 ;
  wire \count_reg[0]_4 ;
  wire \count_reg[0]_5 ;
  wire \count_reg[0]_6 ;
  wire \count_reg[0]_7 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire done;
  wire done_aux_i_13_n_0;
  wire done_aux_i_14_n_0;
  wire done_aux_i_15_n_0;
  wire done_aux_i_16_n_0;
  wire done_aux_i_17_n_0;
  wire done_aux_i_1_n_0;
  wire done_aux_i_23__0_n_0;
  wire done_aux_i_24__0_n_0;
  wire done_aux_i_25__0_n_0;
  wire done_aux_i_26__0_n_0;
  wire done_aux_i_27__0_n_0;
  wire done_aux_i_28__0_n_0;
  wire done_aux_i_29__0_n_0;
  wire done_aux_i_2__1_0;
  wire done_aux_i_2__1_1;
  wire done_aux_i_2__1_n_0;
  wire done_aux_i_30__0_n_0;
  wire done_aux_i_31__0_n_0;
  wire done_aux_i_32__0_n_0;
  wire done_aux_i_33__3_n_0;
  wire done_aux_i_34__0_n_0;
  wire done_aux_i_44__0_n_0;
  wire done_aux_i_45__0_n_0;
  wire done_aux_i_46__0_n_0;
  wire done_aux_i_47__0_n_0;
  wire done_aux_i_48__0_n_0;
  wire done_aux_i_49__0_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_aux_reg_2;
  wire done_aux_reg_i_10_0;
  wire done_aux_reg_i_11_n_0;
  wire done_aux_reg_i_12_n_0;
  wire done_aux_reg_i_4;
  wire done_aux_reg_i_5__0_n_0;
  wire j0;
  wire \j[0]_i_1__1_n_0 ;
  wire [3:1]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire [0:0]\j_reg[0]_2 ;
  wire next_out_8;
  wire [3:1]p_0_in__1;
  wire [4:0]plusOp__1;
  wire valid;
  wire valid_aux_i_1__3_n_0;
  wire valid_aux_i_2__1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(valid),
        .I1(\count_reg_reg[0]_1 [0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\count_reg_reg[0]_1 [3]),
        .I4(\count_reg_reg[0]_1 [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__1 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(done),
        .I2(\count_reg_reg[0]_1 [3]),
        .I3(next_out_8),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__4
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0]_1 [4]),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(count_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__3 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__1[3]));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_10__0 
       (.I0(a_in_8[12]),
        .I1(\count[4]_i_23__0_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_24__0_n_0 ),
        .O(\count_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_12__0 
       (.I0(\count[4]_i_27__0_n_0 ),
        .I1(a_in_8[18]),
        .I2(\count[4]_i_28__0_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_13__0 
       (.I0(\count[4]_i_28__0_n_0 ),
        .I1(a_in_8[18]),
        .I2(\count[4]_i_27__0_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_29__0_n_0 ),
        .O(\count[4]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_14 
       (.I0(\count[4]_i_30__0_n_0 ),
        .I1(a_in_8[23]),
        .I2(\count[4]_i_31__0_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_15 
       (.I0(\count[4]_i_31__0_n_0 ),
        .I1(a_in_8[23]),
        .I2(\count[4]_i_30__0_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_32__0_n_0 ),
        .O(\count[4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_16 
       (.I0(\count[4]_i_33__0_n_0 ),
        .I1(a_in_8[28]),
        .I2(\count[4]_i_34__0_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_17 
       (.I0(\count[4]_i_34__0_n_0 ),
        .I1(a_in_8[28]),
        .I2(\count[4]_i_33__0_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_35__0_n_0 ),
        .O(\count[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4182)) 
    \count[4]_i_18 
       (.I0(Q[4]),
        .I1(a_in_8[33]),
        .I2(Q[3]),
        .I3(a_in_8[34]),
        .I4(\count[4]_i_36__0_n_0 ),
        .O(\count[4]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \count[4]_i_1__2 
       (.I0(j_reg[3]),
        .I1(\count[4]_i_3__1_n_0 ),
        .I2(j_reg[2]),
        .I3(\count[4]_i_4__1_n_0 ),
        .I4(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_21__0 
       (.I0(\count[4]_i_40__0_n_0 ),
        .I1(a_in_8[6]),
        .I2(\count[4]_i_41__0_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_21__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_22__0 
       (.I0(\count[4]_i_41__0_n_0 ),
        .I1(a_in_8[6]),
        .I2(\count[4]_i_40__0_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_42__0_n_0 ),
        .O(\count[4]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_23__0 
       (.I0(\count[4]_i_43__0_n_0 ),
        .I1(a_in_8[11]),
        .I2(\count[4]_i_10__0_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_23__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_24__0 
       (.I0(\count[4]_i_10__0_0 ),
        .I1(a_in_8[11]),
        .I2(\count[4]_i_43__0_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_45__0_n_0 ),
        .O(\count[4]_i_24__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7DFFBFFFFFD7F)) 
    \count[4]_i_27__0 
       (.I0(a_in_8[17]),
        .I1(a_in_8[15]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_8[16]),
        .O(\count[4]_i_27__0_n_0 ));
  LUT6 #(
    .INIT(64'hFDFBBFEFFEFFFFFF)) 
    \count[4]_i_28__0 
       (.I0(a_in_8[17]),
        .I1(a_in_8[16]),
        .I2(a_in_8[15]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count[4]_i_28__0_n_0 ));
  LUT6 #(
    .INIT(64'h7BBFE77BDEE7FDDE)) 
    \count[4]_i_29__0 
       (.I0(a_in_8[17]),
        .I1(a_in_8[16]),
        .I2(a_in_8[15]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count[4]_i_29__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'hFF6FFFF6DFFFFDFF)) 
    \count[4]_i_30__0 
       (.I0(a_in_8[22]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_8[20]),
        .I5(a_in_8[21]),
        .O(\count[4]_i_30__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFBFFDFBEFFFFEFF)) 
    \count[4]_i_31__0 
       (.I0(a_in_8[22]),
        .I1(a_in_8[21]),
        .I2(a_in_8[20]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count[4]_i_31__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FBFF6FBDF6FFDF6)) 
    \count[4]_i_32__0 
       (.I0(a_in_8[22]),
        .I1(a_in_8[21]),
        .I2(a_in_8[20]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count[4]_i_32__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF7BFFDEFDFF7BFF)) 
    \count[4]_i_33__0 
       (.I0(a_in_8[27]),
        .I1(a_in_8[26]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(a_in_8[25]),
        .O(\count[4]_i_33__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7DFFDBFFBEFFEFF)) 
    \count[4]_i_34__0 
       (.I0(a_in_8[27]),
        .I1(a_in_8[26]),
        .I2(a_in_8[25]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_34__0_n_0 ));
  LUT6 #(
    .INIT(64'h7EBFF7FBDFEFFD7E)) 
    \count[4]_i_35__0 
       (.I0(a_in_8[27]),
        .I1(a_in_8[26]),
        .I2(a_in_8[25]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count[4]_i_35__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFF7FDBFEFFBFE)) 
    \count[4]_i_36__0 
       (.I0(a_in_8[32]),
        .I1(a_in_8[31]),
        .I2(a_in_8[30]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count[4]_i_36__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_39__0 
       (.I0(a_in_8[2]),
        .I1(Q[2]),
        .I2(a_in_8[1]),
        .I3(Q[0]),
        .I4(a_in_8[0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[4]_i_3__0 
       (.I0(\count[4]_i_5__0_n_0 ),
        .I1(\count_reg[0]_0 [0]),
        .I2(\count[4]_i_6__0_n_0 ),
        .I3(\count_reg[0]_0 [1]),
        .I4(\count[4]_i_7_n_0 ),
        .O(\j_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_3__1 
       (.I0(\count_reg[0]_4 ),
        .I1(\count_reg[0]_5 ),
        .I2(j_reg[1]),
        .I3(\count_reg[0]_6 ),
        .I4(\j_reg[0]_2 ),
        .I5(\count_reg[0]_7 ),
        .O(\count[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FDFFFFFFFF)) 
    \count[4]_i_40__0 
       (.I0(a_in_8[4]),
        .I1(a_in_8[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_8[5]),
        .O(\count[4]_i_40__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFEFFFFF)) 
    \count[4]_i_41__0 
       (.I0(a_in_8[4]),
        .I1(a_in_8[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_8[5]),
        .O(\count[4]_i_41__0_n_0 ));
  LUT6 #(
    .INIT(64'h45FFA2FFFF45FFA2)) 
    \count[4]_i_42__0 
       (.I0(a_in_8[5]),
        .I1(Q[1]),
        .I2(a_in_8[4]),
        .I3(a_in_8[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\count[4]_i_42__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFE7FFFDFFFFFFFF)) 
    \count[4]_i_43__0 
       (.I0(a_in_8[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(a_in_8[9]),
        .I5(a_in_8[10]),
        .O(\count[4]_i_43__0_n_0 ));
  LUT6 #(
    .INIT(64'h7DDBB76DB6EDDBBE)) 
    \count[4]_i_45__0 
       (.I0(a_in_8[10]),
        .I1(a_in_8[9]),
        .I2(a_in_8[8]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count[4]_i_45__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7DBE)) 
    \count[4]_i_48__0 
       (.I0(a_in_8[14]),
        .I1(a_in_8[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_4__1 
       (.I0(\count_reg[0]_1 ),
        .I1(j_reg[1]),
        .I2(\count_reg[0]_2 ),
        .I3(\j_reg[0]_2 ),
        .I4(\count_reg[0]_3 ),
        .O(\count[4]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_5__0 
       (.I0(a_in_8[19]),
        .I1(\count[4]_i_12__0_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_13__0_n_0 ),
        .O(\count[4]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_6__0 
       (.I0(a_in_8[24]),
        .I1(\count[4]_i_14_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_15_n_0 ),
        .O(\count[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[4]_i_7 
       (.I0(a_in_8[29]),
        .I1(\count[4]_i_16_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_17_n_0 ),
        .I4(\count_reg[0]_0 [0]),
        .I5(\count[4]_i_18_n_0 ),
        .O(\count[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_9 
       (.I0(a_in_8[7]),
        .I1(\count[4]_i_21__0_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_22__0_n_0 ),
        .O(\count_reg_reg[4]_0 ));
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
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__1[4]),
        .Q(count_reg[4]));
  LUT3 #(
    .INIT(8'hF4)) 
    done_aux_i_1
       (.I0(j_reg[3]),
        .I1(done_aux_i_2__1_n_0),
        .I2(done),
        .O(done_aux_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_13
       (.I0(done_aux_i_28__0_n_0),
        .I1(a_in_8[28]),
        .I2(done_aux_i_29__0_n_0),
        .I3(Q[3]),
        .O(done_aux_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_14
       (.I0(done_aux_i_29__0_n_0),
        .I1(a_in_8[28]),
        .I2(done_aux_i_28__0_n_0),
        .I3(Q[3]),
        .I4(done_aux_i_30__0_n_0),
        .O(done_aux_i_14_n_0));
  LUT5 #(
    .INIT(32'hBE7D0000)) 
    done_aux_i_15
       (.I0(Q[4]),
        .I1(a_in_8[33]),
        .I2(Q[3]),
        .I3(a_in_8[34]),
        .I4(done_aux_i_31__0_n_0),
        .O(done_aux_i_15_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_16
       (.I0(Q[4]),
        .I1(done_aux_i_32__0_n_0),
        .I2(a_in_8[6]),
        .I3(done_aux_i_33__3_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_34__0_n_0),
        .O(done_aux_i_16_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_17
       (.I0(done_aux_i_34__0_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_33__3_n_0),
        .I3(a_in_8[6]),
        .I4(done_aux_i_32__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_17_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_23__0
       (.I0(\count_reg_reg[1] ),
        .I1(Q[4]),
        .I2(\count_reg_reg[0] ),
        .I3(a_in_8[11]),
        .I4(done_aux_reg_i_10_0),
        .I5(Q[3]),
        .O(done_aux_i_23__0_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_24__0
       (.I0(Q[4]),
        .I1(done_aux_i_44__0_n_0),
        .I2(a_in_8[23]),
        .I3(done_aux_i_45__0_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_46__0_n_0),
        .O(done_aux_i_24__0_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_25__0
       (.I0(done_aux_i_46__0_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_45__0_n_0),
        .I3(a_in_8[23]),
        .I4(done_aux_i_44__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_25__0_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_26__0
       (.I0(Q[4]),
        .I1(done_aux_i_47__0_n_0),
        .I2(a_in_8[18]),
        .I3(done_aux_i_48__0_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_49__0_n_0),
        .O(done_aux_i_26__0_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_27__0
       (.I0(done_aux_i_49__0_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_48__0_n_0),
        .I3(a_in_8[18]),
        .I4(done_aux_i_47__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_27__0_n_0));
  LUT6 #(
    .INIT(64'h0000842102840000)) 
    done_aux_i_28__0
       (.I0(a_in_8[27]),
        .I1(a_in_8[26]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(a_in_8[25]),
        .O(done_aux_i_28__0_n_0));
  LUT6 #(
    .INIT(64'h0802204004011000)) 
    done_aux_i_29__0
       (.I0(a_in_8[27]),
        .I1(a_in_8[26]),
        .I2(a_in_8[25]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_29__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    done_aux_i_2__1
       (.I0(done_aux_reg_0),
        .I1(done_aux_reg_1),
        .I2(j_reg[2]),
        .I3(done_aux_reg_i_5__0_n_0),
        .I4(j_reg[1]),
        .I5(done_aux_reg_2),
        .O(done_aux_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h8140201008040281)) 
    done_aux_i_30__0
       (.I0(a_in_8[27]),
        .I1(a_in_8[26]),
        .I2(a_in_8[25]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_30__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    done_aux_i_31__0
       (.I0(a_in_8[32]),
        .I1(a_in_8[31]),
        .I2(a_in_8[30]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(done_aux_i_31__0_n_0));
  LUT6 #(
    .INIT(64'h0000000041000000)) 
    done_aux_i_32__0
       (.I0(a_in_8[4]),
        .I1(a_in_8[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_8[5]),
        .O(done_aux_i_32__0_n_0));
  LUT6 #(
    .INIT(64'h0000008200000000)) 
    done_aux_i_33__3
       (.I0(a_in_8[4]),
        .I1(a_in_8[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_8[5]),
        .O(done_aux_i_33__3_n_0));
  LUT6 #(
    .INIT(64'hBA0000BA5D00005D)) 
    done_aux_i_34__0
       (.I0(a_in_8[5]),
        .I1(Q[1]),
        .I2(a_in_8[4]),
        .I3(a_in_8[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_34__0_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_37__0
       (.I0(a_in_8[2]),
        .I1(Q[2]),
        .I2(a_in_8[1]),
        .I3(Q[0]),
        .I4(a_in_8[0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h8421)) 
    done_aux_i_40
       (.I0(a_in_8[14]),
        .I1(a_in_8[13]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0024000200000000)) 
    done_aux_i_42__1
       (.I0(a_in_8[8]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(a_in_8[9]),
        .I5(a_in_8[10]),
        .O(\count_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h8224489249122441)) 
    done_aux_i_43
       (.I0(a_in_8[10]),
        .I1(a_in_8[9]),
        .I2(a_in_8[8]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h2002400410010000)) 
    done_aux_i_44__0
       (.I0(a_in_8[22]),
        .I1(a_in_8[21]),
        .I2(a_in_8[20]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(done_aux_i_44__0_n_0));
  LUT6 #(
    .INIT(64'h0900000920000020)) 
    done_aux_i_45__0
       (.I0(a_in_8[22]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_8[20]),
        .I5(a_in_8[21]),
        .O(done_aux_i_45__0_n_0));
  LUT6 #(
    .INIT(64'h9040209009040209)) 
    done_aux_i_46__0
       (.I0(a_in_8[22]),
        .I1(a_in_8[21]),
        .I2(a_in_8[20]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_46__0_n_0));
  LUT6 #(
    .INIT(64'h0240041001000000)) 
    done_aux_i_47__0
       (.I0(a_in_8[17]),
        .I1(a_in_8[16]),
        .I2(a_in_8[15]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(done_aux_i_47__0_n_0));
  LUT6 #(
    .INIT(64'h0008200400000820)) 
    done_aux_i_48__0
       (.I0(a_in_8[17]),
        .I1(a_in_8[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_8[16]),
        .O(done_aux_i_48__0_n_0));
  LUT6 #(
    .INIT(64'h8440211818840221)) 
    done_aux_i_49__0
       (.I0(a_in_8[17]),
        .I1(a_in_8[16]),
        .I2(a_in_8[15]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_49__0_n_0));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    done_aux_i_6
       (.I0(a_in_8[29]),
        .I1(done_aux_i_13_n_0),
        .I2(Q[4]),
        .I3(done_aux_i_14_n_0),
        .I4(\count_reg[0]_0 [0]),
        .I5(done_aux_i_15_n_0),
        .O(\count_reg_reg[4]_1 ));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1_n_0),
        .Q(done));
  MUXF7 done_aux_reg_i_10
       (.I0(done_aux_reg_i_4),
        .I1(done_aux_i_23__0_n_0),
        .O(\FSM_onehot_state_reg[3] ),
        .S(a_in_8[12]));
  MUXF7 done_aux_reg_i_11
       (.I0(done_aux_i_24__0_n_0),
        .I1(done_aux_i_25__0_n_0),
        .O(done_aux_reg_i_11_n_0),
        .S(a_in_8[24]));
  MUXF7 done_aux_reg_i_12
       (.I0(done_aux_i_26__0_n_0),
        .I1(done_aux_i_27__0_n_0),
        .O(done_aux_reg_i_12_n_0),
        .S(a_in_8[19]));
  MUXF8 done_aux_reg_i_5
       (.I0(done_aux_reg_i_11_n_0),
        .I1(done_aux_reg_i_12_n_0),
        .O(\j_reg[0]_1 ),
        .S(\count_reg[0]_0 [0]));
  MUXF8 done_aux_reg_i_5__0
       (.I0(done_aux_i_2__1_0),
        .I1(done_aux_i_2__1_1),
        .O(done_aux_reg_i_5__0_n_0),
        .S(\j_reg[0]_2 ));
  MUXF7 done_aux_reg_i_7__0
       (.I0(done_aux_i_16_n_0),
        .I1(done_aux_i_17_n_0),
        .O(\FSM_onehot_state_reg[3]_0 ),
        .S(a_in_8[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__1 
       (.I0(\j_reg[0]_2 ),
        .O(\j[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__1 
       (.I0(j_reg[1]),
        .I1(\j_reg[0]_2 ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__1 
       (.I0(j_reg[2]),
        .I1(j_reg[1]),
        .I2(\j_reg[0]_2 ),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'h00001555)) 
    \j[3]_i_1__1 
       (.I0(j_reg[3]),
        .I1(j_reg[2]),
        .I2(j_reg[1]),
        .I3(\j_reg[0]_2 ),
        .I4(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__0 
       (.I0(j_reg[1]),
        .I1(\j_reg[0]_2 ),
        .I2(j_reg[2]),
        .O(p_0_in__1[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__1_n_0 ),
        .Q(\j_reg[0]_2 ));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(j_reg[1]));
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
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    valid_aux_i_1__3
       (.I0(j_reg[3]),
        .I1(j_reg[2]),
        .I2(valid_aux_i_2__1_n_0),
        .I3(j_reg[1]),
        .I4(valid),
        .O(valid_aux_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    valid_aux_i_2__1
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(\j_reg[0]_2 ),
        .O(valid_aux_i_2__1_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__3_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2
   (\count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[0]_0 ,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    \count_reg_reg[4] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[4]_3 ,
    \j_reg[0]_1 ,
    \FSM_onehot_state_reg[3] ,
    \count_reg_reg[0]_0 ,
    \j_reg[0]_2 ,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    a_in_7,
    Q,
    done_aux_i_2__1,
    done_aux_reg_i_4__0_0,
    done_aux_reg_i_9__0_0,
    \count[4]_i_11__1_0 ,
    done_aux_reg_0,
    done_aux_i_2__2_0,
    done_aux_i_2__2_1,
    done_aux_i_2__2_2,
    done_aux_i_2__2_3,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    \count_reg[0]_3 ,
    \count_reg[0]_4 ,
    \count_reg[0]_5 ,
    \count_reg_reg[0]_1 ,
    \FSM_onehot_state_reg[1] ,
    next_out_7);
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[4]_3 ;
  output \j_reg[0]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output \count_reg_reg[0]_0 ;
  output [0:0]\j_reg[0]_2 ;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input [29:0]a_in_7;
  input [4:0]Q;
  input [0:0]done_aux_i_2__1;
  input done_aux_reg_i_4__0_0;
  input done_aux_reg_i_9__0_0;
  input \count[4]_i_11__1_0 ;
  input done_aux_reg_0;
  input done_aux_i_2__2_0;
  input done_aux_i_2__2_1;
  input done_aux_i_2__2_2;
  input done_aux_i_2__2_3;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input \count_reg[0]_3 ;
  input \count_reg[0]_4 ;
  input \count_reg[0]_5 ;
  input [4:0]\count_reg_reg[0]_1 ;
  input \FSM_onehot_state_reg[1] ;
  input next_out_7;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire [4:0]Q;
  wire [29:0]a_in_7;
  wire clk;
  wire count;
  wire \count[4]_i_11__1_0 ;
  wire \count[4]_i_14__0_n_0 ;
  wire \count[4]_i_15__0_n_0 ;
  wire \count[4]_i_16__0_n_0 ;
  wire \count[4]_i_17__0_n_0 ;
  wire \count[4]_i_18__0_n_0 ;
  wire \count[4]_i_19__0_n_0 ;
  wire \count[4]_i_22__1_n_0 ;
  wire \count[4]_i_23__1_n_0 ;
  wire \count[4]_i_24__1_n_0 ;
  wire \count[4]_i_25__1_n_0 ;
  wire \count[4]_i_29__1_n_0 ;
  wire \count[4]_i_30__1_n_0 ;
  wire \count[4]_i_31__1_n_0 ;
  wire \count[4]_i_32__1_n_0 ;
  wire \count[4]_i_33__1_n_0 ;
  wire \count[4]_i_34__1_n_0 ;
  wire \count[4]_i_35__1_n_0 ;
  wire \count[4]_i_36__1_n_0 ;
  wire \count[4]_i_37__1_n_0 ;
  wire \count[4]_i_3__2_n_0 ;
  wire \count[4]_i_41__1_n_0 ;
  wire \count[4]_i_42__1_n_0 ;
  wire \count[4]_i_43__1_n_0 ;
  wire \count[4]_i_44__1_n_0 ;
  wire \count[4]_i_46__1_n_0 ;
  wire \count[4]_i_4__2_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg[0]_3 ;
  wire \count_reg[0]_4 ;
  wire \count_reg[0]_5 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire \count_reg_reg[4]_3 ;
  wire done;
  wire done_aux_i_19__1_n_0;
  wire done_aux_i_1__1_n_0;
  wire done_aux_i_20__1_n_0;
  wire done_aux_i_21__1_n_0;
  wire done_aux_i_22__1_n_0;
  wire done_aux_i_23__1_n_0;
  wire done_aux_i_26__1_n_0;
  wire done_aux_i_27__1_n_0;
  wire done_aux_i_28__1_n_0;
  wire done_aux_i_29__1_n_0;
  wire [0:0]done_aux_i_2__1;
  wire done_aux_i_2__2_0;
  wire done_aux_i_2__2_1;
  wire done_aux_i_2__2_2;
  wire done_aux_i_2__2_3;
  wire done_aux_i_2__2_n_0;
  wire done_aux_i_33__0_n_0;
  wire done_aux_i_34__1_n_0;
  wire done_aux_i_35__1_n_0;
  wire done_aux_i_36__0_n_0;
  wire done_aux_i_37__1_n_0;
  wire done_aux_i_38__1_n_0;
  wire done_aux_i_42__0_n_0;
  wire done_aux_i_43__0_n_0;
  wire done_aux_i_44__1_n_0;
  wire done_aux_i_45__1_n_0;
  wire done_aux_i_46__1_n_0;
  wire done_aux_i_47__1_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_i_10__0_n_0;
  wire done_aux_reg_i_13__0_n_0;
  wire done_aux_reg_i_14__0_n_0;
  wire done_aux_reg_i_3__0_n_0;
  wire done_aux_reg_i_4__0_0;
  wire done_aux_reg_i_4__1_n_0;
  wire done_aux_reg_i_9__0_0;
  wire done_aux_reg_i_9__0_n_0;
  wire j0;
  wire \j[0]_i_1__2_n_0 ;
  wire [3:1]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire [0:0]\j_reg[0]_2 ;
  wire next_out_7;
  wire [3:1]p_0_in__2;
  wire [4:0]plusOp__2;
  wire valid;
  wire valid_aux_i_1__5_n_0;
  wire valid_aux_i_2__2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(valid),
        .I1(\count_reg_reg[0]_1 [0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\count_reg_reg[0]_1 [3]),
        .I4(\count_reg_reg[0]_1 [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__2 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(done),
        .I2(\count_reg_reg[0]_1 [3]),
        .I3(next_out_7),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__5
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0]_1 [4]),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__2 
       (.I0(count_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__5 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__2 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__2[3]));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_10__1 
       (.I0(a_in_7[7]),
        .I1(\count[4]_i_22__1_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_23__1_n_0 ),
        .O(\count_reg_reg[4] ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_11__1 
       (.I0(a_in_7[12]),
        .I1(\count[4]_i_24__1_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_25__1_n_0 ),
        .O(\count_reg_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_14__0 
       (.I0(\count[4]_i_29__1_n_0 ),
        .I1(a_in_7[18]),
        .I2(\count[4]_i_30__1_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_15__0 
       (.I0(\count[4]_i_30__1_n_0 ),
        .I1(a_in_7[18]),
        .I2(\count[4]_i_29__1_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_31__1_n_0 ),
        .O(\count[4]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_16__0 
       (.I0(\count[4]_i_32__1_n_0 ),
        .I1(a_in_7[23]),
        .I2(\count[4]_i_33__1_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_17__0 
       (.I0(\count[4]_i_33__1_n_0 ),
        .I1(a_in_7[23]),
        .I2(\count[4]_i_32__1_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_34__1_n_0 ),
        .O(\count[4]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_18__0 
       (.I0(\count[4]_i_35__1_n_0 ),
        .I1(a_in_7[28]),
        .I2(\count[4]_i_36__1_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_19__0 
       (.I0(\count[4]_i_36__1_n_0 ),
        .I1(a_in_7[28]),
        .I2(\count[4]_i_35__1_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_37__1_n_0 ),
        .O(\count[4]_i_19__0_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \count[4]_i_1__4 
       (.I0(\count[4]_i_3__2_n_0 ),
        .I1(j_reg[1]),
        .I2(\count[4]_i_4__2_n_0 ),
        .I3(j_reg[3]),
        .I4(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_22__1 
       (.I0(\count[4]_i_41__1_n_0 ),
        .I1(a_in_7[6]),
        .I2(\count[4]_i_42__1_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_22__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_23__1 
       (.I0(\count[4]_i_42__1_n_0 ),
        .I1(a_in_7[6]),
        .I2(\count[4]_i_41__1_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_43__1_n_0 ),
        .O(\count[4]_i_23__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_24__1 
       (.I0(\count[4]_i_44__1_n_0 ),
        .I1(a_in_7[11]),
        .I2(\count[4]_i_11__1_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_24__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_25__1 
       (.I0(\count[4]_i_11__1_0 ),
        .I1(a_in_7[11]),
        .I2(\count[4]_i_44__1_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_46__1_n_0 ),
        .O(\count[4]_i_25__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h7BDE)) 
    \count[4]_i_28__1 
       (.I0(a_in_7[14]),
        .I1(a_in_7[13]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFF7DFFBFFFFF7DF)) 
    \count[4]_i_29__1 
       (.I0(a_in_7[17]),
        .I1(a_in_7[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_7[16]),
        .O(\count[4]_i_29__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__2 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp__2[4]));
  LUT6 #(
    .INIT(64'hFDBFFBEFFEFFFFFF)) 
    \count[4]_i_30__1 
       (.I0(a_in_7[17]),
        .I1(a_in_7[16]),
        .I2(a_in_7[15]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_30__1_n_0 ));
  LUT6 #(
    .INIT(64'h7BBFDEE7E77BFDDE)) 
    \count[4]_i_31__1 
       (.I0(a_in_7[17]),
        .I1(a_in_7[16]),
        .I2(a_in_7[15]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[4]_i_31__1_n_0 ));
  LUT6 #(
    .INIT(64'hF6FFFFF6DFFFFFDF)) 
    \count[4]_i_32__1 
       (.I0(a_in_7[22]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_7[20]),
        .I5(a_in_7[21]),
        .O(\count[4]_i_32__1_n_0 ));
  LUT6 #(
    .INIT(64'hDFBFFDFBEFFFFEFF)) 
    \count[4]_i_33__1 
       (.I0(a_in_7[22]),
        .I1(a_in_7[21]),
        .I2(a_in_7[20]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count[4]_i_33__1_n_0 ));
  LUT6 #(
    .INIT(64'h6FBFDF6FF6FBFDF6)) 
    \count[4]_i_34__1 
       (.I0(a_in_7[22]),
        .I1(a_in_7[21]),
        .I2(a_in_7[20]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[4]_i_34__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7BDEFD7BFFFF)) 
    \count[4]_i_35__1 
       (.I0(a_in_7[27]),
        .I1(a_in_7[26]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(a_in_7[25]),
        .O(\count[4]_i_35__1_n_0 ));
  LUT6 #(
    .INIT(64'hF7DFFDBFFBEFFEFF)) 
    \count[4]_i_36__1 
       (.I0(a_in_7[27]),
        .I1(a_in_7[26]),
        .I2(a_in_7[25]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_36__1_n_0 ));
  LUT6 #(
    .INIT(64'h7EBFDFEFF7FBFD7E)) 
    \count[4]_i_37__1 
       (.I0(a_in_7[27]),
        .I1(a_in_7[26]),
        .I2(a_in_7[25]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[4]_i_37__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_3__2 
       (.I0(\count_reg[0]_0 ),
        .I1(\count_reg[0]_1 ),
        .I2(j_reg[2]),
        .I3(\count_reg[0]_2 ),
        .I4(\j_reg[0]_2 ),
        .I5(\count_reg[0]_3 ),
        .O(\count[4]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_40__1 
       (.I0(a_in_7[2]),
        .I1(Q[2]),
        .I2(a_in_7[1]),
        .I3(Q[0]),
        .I4(a_in_7[0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7DFFFFFFFF)) 
    \count[4]_i_41__1 
       (.I0(a_in_7[4]),
        .I1(a_in_7[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_7[5]),
        .O(\count[4]_i_41__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFEFFFFF)) 
    \count[4]_i_42__1 
       (.I0(a_in_7[4]),
        .I1(a_in_7[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_7[5]),
        .O(\count[4]_i_42__1_n_0 ));
  LUT6 #(
    .INIT(64'h45FFA2FFFF45FFA2)) 
    \count[4]_i_43__1 
       (.I0(a_in_7[5]),
        .I1(Q[1]),
        .I2(a_in_7[4]),
        .I3(a_in_7[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\count[4]_i_43__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDBFFFDFFFFFFFF)) 
    \count[4]_i_44__1 
       (.I0(a_in_7[8]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(a_in_7[9]),
        .I5(a_in_7[10]),
        .O(\count[4]_i_44__1_n_0 ));
  LUT6 #(
    .INIT(64'h7DB7DB6DB6DBEDBE)) 
    \count[4]_i_46__1 
       (.I0(a_in_7[10]),
        .I1(a_in_7[9]),
        .I2(a_in_7[8]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_46__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \count[4]_i_4__2 
       (.I0(\count_reg[0]_4 ),
        .I1(\j_reg[0]_2 ),
        .I2(\count_reg[0]_5 ),
        .I3(j_reg[2]),
        .O(\count[4]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_6__1 
       (.I0(a_in_7[19]),
        .I1(\count[4]_i_14__0_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_15__0_n_0 ),
        .O(\count_reg_reg[4]_2 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_7__0 
       (.I0(a_in_7[24]),
        .I1(\count[4]_i_16__0_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_17__0_n_0 ),
        .O(\count_reg_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_8__0 
       (.I0(a_in_7[29]),
        .I1(\count[4]_i_18__0_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_19__0_n_0 ),
        .O(\count_reg_reg[4]_0 ));
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
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__2[4]),
        .Q(count_reg[4]));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_17__0
       (.I0(a_in_7[2]),
        .I1(Q[2]),
        .I2(a_in_7[1]),
        .I3(Q[0]),
        .I4(a_in_7[0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_19__1
       (.I0(\count_reg_reg[0] ),
        .I1(Q[4]),
        .I2(\count_reg_reg[1] ),
        .I3(a_in_7[11]),
        .I4(done_aux_reg_i_9__0_0),
        .I5(Q[3]),
        .O(done_aux_i_19__1_n_0));
  LUT3 #(
    .INIT(8'hF2)) 
    done_aux_i_1__1
       (.I0(done_aux_i_2__2_n_0),
        .I1(j_reg[3]),
        .I2(done),
        .O(done_aux_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_20__1
       (.I0(Q[4]),
        .I1(done_aux_i_33__0_n_0),
        .I2(a_in_7[6]),
        .I3(done_aux_i_34__1_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_35__1_n_0),
        .O(done_aux_i_20__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_21__1
       (.I0(done_aux_i_35__1_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_34__1_n_0),
        .I3(a_in_7[6]),
        .I4(done_aux_i_33__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_21__1_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_22__1
       (.I0(Q[4]),
        .I1(done_aux_i_36__0_n_0),
        .I2(a_in_7[18]),
        .I3(done_aux_i_37__1_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_38__1_n_0),
        .O(done_aux_i_22__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_23__1
       (.I0(done_aux_i_38__1_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_37__1_n_0),
        .I3(a_in_7[18]),
        .I4(done_aux_i_36__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_23__1_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_26__1
       (.I0(Q[4]),
        .I1(done_aux_i_42__0_n_0),
        .I2(a_in_7[28]),
        .I3(done_aux_i_43__0_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_44__1_n_0),
        .O(done_aux_i_26__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_27__1
       (.I0(done_aux_i_44__1_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_43__0_n_0),
        .I3(a_in_7[28]),
        .I4(done_aux_i_42__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_27__1_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_28__1
       (.I0(Q[4]),
        .I1(done_aux_i_45__1_n_0),
        .I2(a_in_7[23]),
        .I3(done_aux_i_46__1_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_47__1_n_0),
        .O(done_aux_i_28__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_29__1
       (.I0(done_aux_i_47__1_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_46__1_n_0),
        .I3(a_in_7[23]),
        .I4(done_aux_i_45__1_n_0),
        .I5(Q[3]),
        .O(done_aux_i_29__1_n_0));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    done_aux_i_2__2
       (.I0(\j_reg[0]_2 ),
        .I1(done_aux_reg_i_3__0_n_0),
        .I2(j_reg[1]),
        .I3(done_aux_reg_i_4__1_n_0),
        .I4(j_reg[2]),
        .I5(done_aux_reg_0),
        .O(done_aux_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0018000200000000)) 
    done_aux_i_31__1
       (.I0(a_in_7[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(a_in_7[9]),
        .I5(a_in_7[10]),
        .O(\count_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h8248249249241241)) 
    done_aux_i_32__1
       (.I0(a_in_7[10]),
        .I1(a_in_7[9]),
        .I2(a_in_7[8]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000041000000)) 
    done_aux_i_33__0
       (.I0(a_in_7[4]),
        .I1(a_in_7[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_7[5]),
        .O(done_aux_i_33__0_n_0));
  LUT6 #(
    .INIT(64'h0000080200000000)) 
    done_aux_i_34__1
       (.I0(a_in_7[4]),
        .I1(a_in_7[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_7[5]),
        .O(done_aux_i_34__1_n_0));
  LUT6 #(
    .INIT(64'hBA0000BA5D00005D)) 
    done_aux_i_35__1
       (.I0(a_in_7[5]),
        .I1(Q[1]),
        .I2(a_in_7[4]),
        .I3(a_in_7[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_35__1_n_0));
  LUT6 #(
    .INIT(64'h0204401001000000)) 
    done_aux_i_36__0
       (.I0(a_in_7[17]),
        .I1(a_in_7[16]),
        .I2(a_in_7[15]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_36__0_n_0));
  LUT6 #(
    .INIT(64'h0008200400000280)) 
    done_aux_i_37__1
       (.I0(a_in_7[17]),
        .I1(a_in_7[15]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_7[16]),
        .O(done_aux_i_37__1_n_0));
  LUT6 #(
    .INIT(64'h8440188421180221)) 
    done_aux_i_38__1
       (.I0(a_in_7[17]),
        .I1(a_in_7[16]),
        .I2(a_in_7[15]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(done_aux_i_38__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h8241)) 
    done_aux_i_41__1
       (.I0(a_in_7[14]),
        .I1(a_in_7[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0802204004011000)) 
    done_aux_i_42__0
       (.I0(a_in_7[27]),
        .I1(a_in_7[26]),
        .I2(a_in_7[25]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_42__0_n_0));
  LUT6 #(
    .INIT(64'h0084002102008400)) 
    done_aux_i_43__0
       (.I0(a_in_7[27]),
        .I1(a_in_7[26]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(a_in_7[25]),
        .O(done_aux_i_43__0_n_0));
  LUT6 #(
    .INIT(64'h8140080420100281)) 
    done_aux_i_44__1
       (.I0(a_in_7[27]),
        .I1(a_in_7[26]),
        .I2(a_in_7[25]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(done_aux_i_44__1_n_0));
  LUT6 #(
    .INIT(64'h2002400410010000)) 
    done_aux_i_45__1
       (.I0(a_in_7[22]),
        .I1(a_in_7[21]),
        .I2(a_in_7[20]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(done_aux_i_45__1_n_0));
  LUT6 #(
    .INIT(64'h0090000920000200)) 
    done_aux_i_46__1
       (.I0(a_in_7[22]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_7[20]),
        .I5(a_in_7[21]),
        .O(done_aux_i_46__1_n_0));
  LUT6 #(
    .INIT(64'h9040090420900209)) 
    done_aux_i_47__1
       (.I0(a_in_7[22]),
        .I1(a_in_7[21]),
        .I2(a_in_7[20]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(done_aux_i_47__1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__1_n_0),
        .Q(done));
  MUXF7 done_aux_reg_i_10__0
       (.I0(done_aux_i_20__1_n_0),
        .I1(done_aux_i_21__1_n_0),
        .O(done_aux_reg_i_10__0_n_0),
        .S(a_in_7[7]));
  MUXF7 done_aux_reg_i_11__0
       (.I0(done_aux_i_22__1_n_0),
        .I1(done_aux_i_23__1_n_0),
        .O(\FSM_onehot_state_reg[3] ),
        .S(a_in_7[19]));
  MUXF7 done_aux_reg_i_13__0
       (.I0(done_aux_i_26__1_n_0),
        .I1(done_aux_i_27__1_n_0),
        .O(done_aux_reg_i_13__0_n_0),
        .S(a_in_7[29]));
  MUXF7 done_aux_reg_i_14__0
       (.I0(done_aux_i_28__1_n_0),
        .I1(done_aux_i_29__1_n_0),
        .O(done_aux_reg_i_14__0_n_0),
        .S(a_in_7[24]));
  MUXF8 done_aux_reg_i_3__0
       (.I0(done_aux_i_2__2_0),
        .I1(done_aux_i_2__2_1),
        .O(done_aux_reg_i_3__0_n_0),
        .S(\j_reg[0]_2 ));
  MUXF8 done_aux_reg_i_4__0
       (.I0(done_aux_reg_i_9__0_n_0),
        .I1(done_aux_reg_i_10__0_n_0),
        .O(\j_reg[0]_0 ),
        .S(done_aux_i_2__1));
  MUXF8 done_aux_reg_i_4__1
       (.I0(done_aux_i_2__2_2),
        .I1(done_aux_i_2__2_3),
        .O(done_aux_reg_i_4__1_n_0),
        .S(\j_reg[0]_2 ));
  MUXF8 done_aux_reg_i_6__0
       (.I0(done_aux_reg_i_13__0_n_0),
        .I1(done_aux_reg_i_14__0_n_0),
        .O(\j_reg[0]_1 ),
        .S(done_aux_i_2__1));
  MUXF7 done_aux_reg_i_9__0
       (.I0(done_aux_reg_i_4__0_0),
        .I1(done_aux_i_19__1_n_0),
        .O(done_aux_reg_i_9__0_n_0),
        .S(a_in_7[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__2 
       (.I0(\j_reg[0]_2 ),
        .O(\j[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__3 
       (.I0(j_reg[1]),
        .I1(\j_reg[0]_2 ),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j[2]_i_1__2 
       (.I0(\j_reg[0]_2 ),
        .I1(j_reg[1]),
        .I2(j_reg[2]),
        .O(p_0_in__2[2]));
  LUT4 #(
    .INIT(16'h0007)) 
    \j[3]_i_1__2 
       (.I0(j_reg[1]),
        .I1(j_reg[2]),
        .I2(j_reg[3]),
        .I3(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__1 
       (.I0(j_reg[2]),
        .I1(\j_reg[0]_2 ),
        .I2(j_reg[1]),
        .O(p_0_in__2[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__2_n_0 ),
        .Q(\j_reg[0]_2 ));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[1]),
        .Q(j_reg[1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[2]),
        .Q(j_reg[2]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[3]),
        .Q(j_reg[3]));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    valid_aux_i_1__5
       (.I0(j_reg[1]),
        .I1(valid_aux_i_2__2_n_0),
        .I2(j_reg[2]),
        .I3(j_reg[3]),
        .I4(valid),
        .O(valid_aux_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    valid_aux_i_2__2
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .I5(\j_reg[0]_2 ),
        .O(valid_aux_i_2__2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__5_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3
   (\FSM_onehot_state_reg[3] ,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    \FSM_onehot_state_reg[3]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[4]_0 ,
    \j_reg[0]_0 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    D,
    \j_reg[1]_0 ,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    a_in_6,
    done_aux_reg_i_3__0,
    Q,
    done_aux_reg_i_7__1_0,
    \count[4]_i_10__2_0 ,
    done_aux_i_2__2,
    done_aux_reg_0,
    done_aux_reg_1,
    \count_reg_reg[0]_1 ,
    \FSM_onehot_state_reg[1] ,
    next_out_6,
    \count_reg[0]_0 ,
    \count_reg[0]_1 );
  output \FSM_onehot_state_reg[3] ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[4]_0 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output [1:0]D;
  output [1:0]\j_reg[1]_0 ;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input [24:0]a_in_6;
  input done_aux_reg_i_3__0;
  input [4:0]Q;
  input done_aux_reg_i_7__1_0;
  input \count[4]_i_10__2_0 ;
  input [0:0]done_aux_i_2__2;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input [4:0]\count_reg_reg[0]_1 ;
  input \FSM_onehot_state_reg[1] ;
  input next_out_6;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire [4:0]Q;
  wire [24:0]a_in_6;
  wire clk;
  wire count;
  wire \count[0]_i_1__3_n_0 ;
  wire \count[4]_i_10__2_0 ;
  wire \count[4]_i_13__2_n_0 ;
  wire \count[4]_i_14__1_n_0 ;
  wire \count[4]_i_15__1_n_0 ;
  wire \count[4]_i_16__1_n_0 ;
  wire \count[4]_i_17__1_n_0 ;
  wire \count[4]_i_18__1_n_0 ;
  wire \count[4]_i_21__2_n_0 ;
  wire \count[4]_i_22__2_n_0 ;
  wire \count[4]_i_26__2_n_0 ;
  wire \count[4]_i_27__2_n_0 ;
  wire \count[4]_i_28__2_n_0 ;
  wire \count[4]_i_29__2_n_0 ;
  wire \count[4]_i_30__2_n_0 ;
  wire \count[4]_i_31__2_n_0 ;
  wire \count[4]_i_32__2_n_0 ;
  wire \count[4]_i_33__2_n_0 ;
  wire \count[4]_i_34__2_n_0 ;
  wire \count[4]_i_38__2_n_0 ;
  wire \count[4]_i_40__2_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire done;
  wire done_aux_i_15__1_n_0;
  wire done_aux_i_16__0_n_0;
  wire done_aux_i_17__1_n_0;
  wire done_aux_i_1__2_n_0;
  wire done_aux_i_20__2_n_0;
  wire done_aux_i_21__2_n_0;
  wire done_aux_i_22__2_n_0;
  wire done_aux_i_23__2_n_0;
  wire [0:0]done_aux_i_2__2;
  wire done_aux_i_30__2_n_0;
  wire done_aux_i_31__3_n_0;
  wire done_aux_i_32__2_n_0;
  wire done_aux_i_36__1_n_0;
  wire done_aux_i_37__2_n_0;
  wire done_aux_i_38__2_n_0;
  wire done_aux_i_39__2_n_0;
  wire done_aux_i_40__1_n_0;
  wire done_aux_i_41__2_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_aux_reg_i_10__1_n_0;
  wire done_aux_reg_i_11__1_n_0;
  wire done_aux_reg_i_2_n_0;
  wire done_aux_reg_i_3__0;
  wire done_aux_reg_i_7__1_0;
  wire j0;
  wire \j[0]_i_1__3_n_0 ;
  wire [3:2]j_reg;
  wire \j_reg[0]_0 ;
  wire [1:0]\j_reg[1]_0 ;
  wire next_out_6;
  wire [3:1]p_0_in__3;
  wire [4:1]plusOp__3;
  wire valid;
  wire valid_aux_i_1__6_n_0;
  wire valid_aux_i_2__3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(valid),
        .I1(\count_reg_reg[0]_1 [0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\count_reg_reg[0]_1 [3]),
        .I4(\count_reg_reg[0]_1 [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__3 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(done),
        .I2(\count_reg_reg[0]_1 [3]),
        .I3(next_out_6),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__7
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0]_1 [4]),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__6 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__3 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(plusOp__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__3 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .O(plusOp__3[3]));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_10__2 
       (.I0(a_in_6[12]),
        .I1(\count[4]_i_21__2_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_22__2_n_0 ),
        .O(\count_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_13__2 
       (.I0(\count[4]_i_26__2_n_0 ),
        .I1(a_in_6[6]),
        .I2(\count[4]_i_27__2_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_13__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_14__1 
       (.I0(\count[4]_i_27__2_n_0 ),
        .I1(a_in_6[6]),
        .I2(\count[4]_i_26__2_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_28__2_n_0 ),
        .O(\count[4]_i_14__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_15__1 
       (.I0(\count[4]_i_29__2_n_0 ),
        .I1(a_in_6[18]),
        .I2(\count[4]_i_30__2_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_16__1 
       (.I0(\count[4]_i_30__2_n_0 ),
        .I1(a_in_6[18]),
        .I2(\count[4]_i_29__2_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_31__2_n_0 ),
        .O(\count[4]_i_16__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_17__1 
       (.I0(\count[4]_i_32__2_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_33__2_n_0 ),
        .I3(a_in_6[23]),
        .O(\count[4]_i_17__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_18__1 
       (.I0(\count[4]_i_33__2_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_32__2_n_0 ),
        .I3(a_in_6[23]),
        .I4(\count[4]_i_34__2_n_0 ),
        .O(\count[4]_i_18__1_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \count[4]_i_1__5 
       (.I0(\count_reg[0]_0 ),
        .I1(j_reg[2]),
        .I2(\count_reg[0]_1 ),
        .I3(j_reg[3]),
        .I4(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_21__2 
       (.I0(\count[4]_i_38__2_n_0 ),
        .I1(a_in_6[11]),
        .I2(\count[4]_i_10__2_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_21__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_22__2 
       (.I0(\count[4]_i_10__2_0 ),
        .I1(a_in_6[11]),
        .I2(\count[4]_i_38__2_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_40__2_n_0 ),
        .O(\count[4]_i_22__2_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_25__2 
       (.I0(a_in_6[2]),
        .I1(Q[2]),
        .I2(a_in_6[1]),
        .I3(Q[0]),
        .I4(a_in_6[0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7DFFFFFFFF)) 
    \count[4]_i_26__2 
       (.I0(a_in_6[4]),
        .I1(a_in_6[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_6[5]),
        .O(\count[4]_i_26__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFEFFFFF)) 
    \count[4]_i_27__2 
       (.I0(a_in_6[4]),
        .I1(a_in_6[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_6[5]),
        .O(\count[4]_i_27__2_n_0 ));
  LUT6 #(
    .INIT(64'h45FFA2FFFF45FFA2)) 
    \count[4]_i_28__2 
       (.I0(a_in_6[5]),
        .I1(Q[1]),
        .I2(a_in_6[4]),
        .I3(a_in_6[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\count[4]_i_28__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7DFFBFFFFF7DF)) 
    \count[4]_i_29__2 
       (.I0(a_in_6[17]),
        .I1(a_in_6[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_6[16]),
        .O(\count[4]_i_29__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2__3 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(plusOp__3[4]));
  LUT6 #(
    .INIT(64'hFDBFFBEFFEFFFFFF)) 
    \count[4]_i_30__2 
       (.I0(a_in_6[17]),
        .I1(a_in_6[16]),
        .I2(a_in_6[15]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_30__2_n_0 ));
  LUT6 #(
    .INIT(64'h7BBFDEE7E77BFDDE)) 
    \count[4]_i_31__2 
       (.I0(a_in_6[17]),
        .I1(a_in_6[16]),
        .I2(a_in_6[15]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[4]_i_31__2_n_0 ));
  LUT6 #(
    .INIT(64'hDBFFFFDBEFFFFFEF)) 
    \count[4]_i_32__2 
       (.I0(a_in_6[22]),
        .I1(a_in_6[21]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_6[20]),
        .I5(Q[2]),
        .O(\count[4]_i_32__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF6FFFF6DFFFFDFF)) 
    \count[4]_i_33__2 
       (.I0(a_in_6[22]),
        .I1(Q[2]),
        .I2(a_in_6[20]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(a_in_6[21]),
        .O(\count[4]_i_33__2_n_0 ));
  LUT6 #(
    .INIT(64'h6BFFD6FFFF6BFFD6)) 
    \count[4]_i_34__2 
       (.I0(a_in_6[22]),
        .I1(a_in_6[21]),
        .I2(Q[2]),
        .I3(a_in_6[20]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[4]_i_34__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h7BDE)) 
    \count[4]_i_37__2 
       (.I0(a_in_6[14]),
        .I1(a_in_6[13]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFDBFFFDFFFFFFFF)) 
    \count[4]_i_38__2 
       (.I0(a_in_6[8]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(a_in_6[9]),
        .I5(a_in_6[10]),
        .O(\count[4]_i_38__2_n_0 ));
  LUT6 #(
    .INIT(64'h7DB7DB6DB6DBEDBE)) 
    \count[4]_i_40__2 
       (.I0(a_in_6[10]),
        .I1(a_in_6[9]),
        .I2(a_in_6[8]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_40__2_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_6__2 
       (.I0(a_in_6[7]),
        .I1(\count[4]_i_13__2_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_14__1_n_0 ),
        .O(\count_reg_reg[4] ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_7__1 
       (.I0(a_in_6[19]),
        .I1(\count[4]_i_15__1_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_16__1_n_0 ),
        .O(\count_reg_reg[4]_2 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_8__1 
       (.I0(a_in_6[24]),
        .I1(\count[4]_i_17__1_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_18__1_n_0 ),
        .O(\count_reg_reg[4]_1 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(\count[0]_i_1__3_n_0 ),
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
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__3[4]),
        .Q(count_reg[4]));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_15__1
       (.I0(\count_reg_reg[0] ),
        .I1(Q[4]),
        .I2(\count_reg_reg[1] ),
        .I3(a_in_6[11]),
        .I4(done_aux_reg_i_7__1_0),
        .I5(Q[3]),
        .O(done_aux_i_15__1_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_16__0
       (.I0(Q[4]),
        .I1(done_aux_i_30__2_n_0),
        .I2(a_in_6[6]),
        .I3(done_aux_i_31__3_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_32__2_n_0),
        .O(done_aux_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_17__1
       (.I0(done_aux_i_32__2_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_31__3_n_0),
        .I3(a_in_6[6]),
        .I4(done_aux_i_30__2_n_0),
        .I5(Q[3]),
        .O(done_aux_i_17__1_n_0));
  LUT3 #(
    .INIT(8'hF2)) 
    done_aux_i_1__2
       (.I0(done_aux_reg_i_2_n_0),
        .I1(j_reg[3]),
        .I2(done),
        .O(done_aux_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_20__2
       (.I0(Q[4]),
        .I1(done_aux_i_36__1_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_37__2_n_0),
        .I4(a_in_6[23]),
        .I5(done_aux_i_38__2_n_0),
        .O(done_aux_i_20__2_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_21__2
       (.I0(done_aux_i_38__2_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_37__2_n_0),
        .I3(Q[3]),
        .I4(done_aux_i_36__1_n_0),
        .I5(a_in_6[23]),
        .O(done_aux_i_21__2_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_22__2
       (.I0(Q[4]),
        .I1(done_aux_i_39__2_n_0),
        .I2(a_in_6[18]),
        .I3(done_aux_i_40__1_n_0),
        .I4(Q[3]),
        .I5(done_aux_i_41__2_n_0),
        .O(done_aux_i_22__2_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_23__2
       (.I0(done_aux_i_41__2_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_40__1_n_0),
        .I3(a_in_6[18]),
        .I4(done_aux_i_39__2_n_0),
        .I5(Q[3]),
        .O(done_aux_i_23__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8241)) 
    done_aux_i_26__2
       (.I0(a_in_6[14]),
        .I1(a_in_6[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0018000200000000)) 
    done_aux_i_28__2
       (.I0(a_in_6[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(a_in_6[9]),
        .I5(a_in_6[10]),
        .O(\count_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h8248249249241241)) 
    done_aux_i_29__2
       (.I0(a_in_6[10]),
        .I1(a_in_6[9]),
        .I2(a_in_6[8]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000041000000)) 
    done_aux_i_30__2
       (.I0(a_in_6[4]),
        .I1(a_in_6[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_6[5]),
        .O(done_aux_i_30__2_n_0));
  LUT6 #(
    .INIT(64'h0000080200000000)) 
    done_aux_i_31__3
       (.I0(a_in_6[4]),
        .I1(a_in_6[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_6[5]),
        .O(done_aux_i_31__3_n_0));
  LUT6 #(
    .INIT(64'hBA0000BA5D00005D)) 
    done_aux_i_32__2
       (.I0(a_in_6[5]),
        .I1(Q[1]),
        .I2(a_in_6[4]),
        .I3(a_in_6[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_32__2_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_35__2
       (.I0(a_in_6[2]),
        .I1(Q[2]),
        .I2(a_in_6[1]),
        .I3(Q[0]),
        .I4(a_in_6[0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h0000900920020000)) 
    done_aux_i_36__1
       (.I0(a_in_6[22]),
        .I1(Q[2]),
        .I2(a_in_6[20]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(a_in_6[21]),
        .O(done_aux_i_36__1_n_0));
  LUT6 #(
    .INIT(64'h2040020410000100)) 
    done_aux_i_37__2
       (.I0(a_in_6[22]),
        .I1(a_in_6[21]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_6[20]),
        .I5(Q[2]),
        .O(done_aux_i_37__2_n_0));
  LUT6 #(
    .INIT(64'h9400009429000029)) 
    done_aux_i_38__2
       (.I0(a_in_6[22]),
        .I1(a_in_6[21]),
        .I2(Q[2]),
        .I3(a_in_6[20]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(done_aux_i_38__2_n_0));
  LUT6 #(
    .INIT(64'h0204401001000000)) 
    done_aux_i_39__2
       (.I0(a_in_6[17]),
        .I1(a_in_6[16]),
        .I2(a_in_6[15]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_39__2_n_0));
  LUT6 #(
    .INIT(64'h0008200400000280)) 
    done_aux_i_40__1
       (.I0(a_in_6[17]),
        .I1(a_in_6[15]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(a_in_6[16]),
        .O(done_aux_i_40__1_n_0));
  LUT6 #(
    .INIT(64'h8440188421180221)) 
    done_aux_i_41__2
       (.I0(a_in_6[17]),
        .I1(a_in_6[16]),
        .I2(a_in_6[15]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(done_aux_i_41__2_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__2_n_0),
        .Q(done));
  MUXF7 done_aux_reg_i_10__1
       (.I0(done_aux_i_20__2_n_0),
        .I1(done_aux_i_21__2_n_0),
        .O(done_aux_reg_i_10__1_n_0),
        .S(a_in_6[24]));
  MUXF7 done_aux_reg_i_11__1
       (.I0(done_aux_i_22__2_n_0),
        .I1(done_aux_i_23__2_n_0),
        .O(done_aux_reg_i_11__1_n_0),
        .S(a_in_6[19]));
  MUXF7 done_aux_reg_i_2
       (.I0(done_aux_reg_0),
        .I1(done_aux_reg_1),
        .O(done_aux_reg_i_2_n_0),
        .S(j_reg[2]));
  MUXF8 done_aux_reg_i_5__1
       (.I0(done_aux_reg_i_10__1_n_0),
        .I1(done_aux_reg_i_11__1_n_0),
        .O(\j_reg[0]_0 ),
        .S(done_aux_i_2__2));
  MUXF7 done_aux_reg_i_7__1
       (.I0(done_aux_reg_i_3__0),
        .I1(done_aux_i_15__1_n_0),
        .O(\FSM_onehot_state_reg[3] ),
        .S(a_in_6[12]));
  MUXF7 done_aux_reg_i_8__1
       (.I0(done_aux_i_16__0_n_0),
        .I1(done_aux_i_17__1_n_0),
        .O(\FSM_onehot_state_reg[3]_0 ),
        .S(a_in_6[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__3 
       (.I0(\j_reg[1]_0 [0]),
        .O(\j[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__4 
       (.I0(\j_reg[1]_0 [0]),
        .I1(\j_reg[1]_0 [1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__3 
       (.I0(j_reg[2]),
        .I1(\j_reg[1]_0 [0]),
        .I2(\j_reg[1]_0 [1]),
        .O(p_0_in__3[2]));
  LUT5 #(
    .INIT(32'h00000057)) 
    \j[3]_i_1__3 
       (.I0(j_reg[2]),
        .I1(\j_reg[1]_0 [1]),
        .I2(\j_reg[1]_0 [0]),
        .I3(j_reg[3]),
        .I4(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__2 
       (.I0(\j_reg[1]_0 [0]),
        .I1(\j_reg[1]_0 [1]),
        .I2(j_reg[2]),
        .O(p_0_in__3[3]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__3_n_0 ),
        .Q(\j_reg[1]_0 [0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[1]),
        .Q(\j_reg[1]_0 [1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[2]),
        .Q(j_reg[2]));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[3]),
        .Q(j_reg[3]));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    valid_aux_i_1__6
       (.I0(j_reg[2]),
        .I1(valid_aux_i_2__3_n_0),
        .I2(\j_reg[1]_0 [0]),
        .I3(j_reg[3]),
        .I4(valid),
        .O(valid_aux_i_1__6_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    valid_aux_i_2__3
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(\j_reg[1]_0 [1]),
        .O(valid_aux_i_2__3_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__6_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4
   (Q,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[0]_0 ,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    \j_reg[0]_1 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    clk,
    AR,
    done_aux_reg_0,
    a_in_5,
    done_aux_reg_i_7__2_0,
    done_aux_reg_i_2,
    \count_reg[0]_0 ,
    done_aux_i_3__1_0,
    done_aux_reg_i_7__2_1,
    \count_reg[0]_1 ,
    \count[4]_i_7__2_0 ,
    \count_reg_reg[0]_1 ,
    \FSM_onehot_state_reg[1] ,
    next_out_5,
    \count_reg[0]_2 );
  output [1:0]Q;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output \j_reg[0]_1 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[0]_0 ;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  input clk;
  input [0:0]AR;
  input done_aux_reg_0;
  input [19:0]a_in_5;
  input [4:0]done_aux_reg_i_7__2_0;
  input done_aux_reg_i_2;
  input [1:0]\count_reg[0]_0 ;
  input done_aux_i_3__1_0;
  input done_aux_reg_i_7__2_1;
  input \count_reg[0]_1 ;
  input \count[4]_i_7__2_0 ;
  input [4:0]\count_reg_reg[0]_1 ;
  input \FSM_onehot_state_reg[1] ;
  input next_out_5;
  input \count_reg[0]_2 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [19:0]a_in_5;
  wire clk;
  wire count;
  wire \count[4]_i_11__3_n_0 ;
  wire \count[4]_i_12__3_n_0 ;
  wire \count[4]_i_15__2_n_0 ;
  wire \count[4]_i_16__2_n_0 ;
  wire \count[4]_i_17__2_n_0 ;
  wire \count[4]_i_18__2_n_0 ;
  wire \count[4]_i_22__3_n_0 ;
  wire \count[4]_i_23__3_n_0 ;
  wire \count[4]_i_24__3_n_0 ;
  wire \count[4]_i_28__3_n_0 ;
  wire \count[4]_i_30__3_n_0 ;
  wire \count[4]_i_31__3_n_0 ;
  wire \count[4]_i_32__3_n_0 ;
  wire \count[4]_i_33__3_n_0 ;
  wire \count[4]_i_5__3_n_0 ;
  wire \count[4]_i_7__2_0 ;
  wire \count[4]_i_7__2_n_0 ;
  wire \count[4]_i_8__2_n_0 ;
  wire [4:0]count_reg;
  wire [1:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire done;
  wire done_aux_i_11__0_n_0;
  wire done_aux_i_12__1_n_0;
  wire done_aux_i_16__1_n_0;
  wire done_aux_i_17__2_n_0;
  wire done_aux_i_18__2_n_0;
  wire done_aux_i_1__7_n_0;
  wire done_aux_i_22__3_n_0;
  wire done_aux_i_23__4_n_0;
  wire done_aux_i_24__3_n_0;
  wire done_aux_i_31__2_n_0;
  wire done_aux_i_32__3_n_0;
  wire done_aux_i_33__2_n_0;
  wire done_aux_i_3__1_0;
  wire done_aux_reg_0;
  wire done_aux_reg_i_2;
  wire done_aux_reg_i_5__2_n_0;
  wire [4:0]done_aux_reg_i_7__2_0;
  wire done_aux_reg_i_7__2_1;
  wire done_aux_reg_i_7__2_n_0;
  wire done_aux_reg_i_8__2_n_0;
  wire j0;
  wire \j[0]_i_1__4_n_0 ;
  wire [2:2]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire next_out_5;
  wire [2:1]p_0_in__4;
  wire [4:0]plusOp__4;
  wire valid;
  wire valid_aux_i_1__7_n_0;
  wire valid_aux_i_2__4_n_0;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__4 
       (.I0(valid),
        .I1(\count_reg_reg[0]_1 [0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\count_reg_reg[0]_1 [3]),
        .I4(\count_reg_reg[0]_1 [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__4 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__4 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(done),
        .I2(\count_reg_reg[0]_1 [3]),
        .I3(next_out_5),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__6
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0]_1 [4]),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__4 
       (.I0(count_reg[0]),
        .O(plusOp__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__7 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__4 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(plusOp__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__4 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(plusOp__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_11__3 
       (.I0(\count[4]_i_22__3_n_0 ),
        .I1(a_in_5[6]),
        .I2(\count[4]_i_23__3_n_0 ),
        .I3(done_aux_reg_i_7__2_0[3]),
        .O(\count[4]_i_11__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_12__3 
       (.I0(\count[4]_i_23__3_n_0 ),
        .I1(a_in_5[6]),
        .I2(\count[4]_i_22__3_n_0 ),
        .I3(done_aux_reg_i_7__2_0[3]),
        .I4(\count[4]_i_24__3_n_0 ),
        .O(\count[4]_i_12__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_15__2 
       (.I0(\count[4]_i_28__3_n_0 ),
        .I1(a_in_5[11]),
        .I2(\count[4]_i_7__2_0 ),
        .I3(done_aux_reg_i_7__2_0[3]),
        .O(\count[4]_i_15__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_16__2 
       (.I0(\count[4]_i_7__2_0 ),
        .I1(a_in_5[11]),
        .I2(\count[4]_i_28__3_n_0 ),
        .I3(done_aux_reg_i_7__2_0[3]),
        .I4(\count[4]_i_30__3_n_0 ),
        .O(\count[4]_i_16__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_17__2 
       (.I0(\count[4]_i_31__3_n_0 ),
        .I1(done_aux_reg_i_7__2_0[3]),
        .I2(\count[4]_i_32__3_n_0 ),
        .I3(a_in_5[18]),
        .O(\count[4]_i_17__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_18__2 
       (.I0(\count[4]_i_32__3_n_0 ),
        .I1(done_aux_reg_i_7__2_0[3]),
        .I2(\count[4]_i_31__3_n_0 ),
        .I3(a_in_5[18]),
        .I4(\count[4]_i_33__3_n_0 ),
        .O(\count[4]_i_18__2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \count[4]_i_1__6 
       (.I0(j_reg),
        .I1(\count_reg[0]_2 ),
        .I2(done),
        .O(count));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_21__3 
       (.I0(a_in_5[2]),
        .I1(done_aux_reg_i_7__2_0[2]),
        .I2(a_in_5[1]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(a_in_5[0]),
        .I5(done_aux_reg_i_7__2_0[1]),
        .O(\count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7DFFFFFFFF)) 
    \count[4]_i_22__3 
       (.I0(a_in_5[4]),
        .I1(a_in_5[3]),
        .I2(done_aux_reg_i_7__2_0[0]),
        .I3(done_aux_reg_i_7__2_0[1]),
        .I4(done_aux_reg_i_7__2_0[2]),
        .I5(a_in_5[5]),
        .O(\count[4]_i_22__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFEFFFFF)) 
    \count[4]_i_23__3 
       (.I0(a_in_5[4]),
        .I1(a_in_5[3]),
        .I2(done_aux_reg_i_7__2_0[1]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(done_aux_reg_i_7__2_0[2]),
        .I5(a_in_5[5]),
        .O(\count[4]_i_23__3_n_0 ));
  LUT6 #(
    .INIT(64'h45FFA2FFFF45FFA2)) 
    \count[4]_i_24__3 
       (.I0(a_in_5[5]),
        .I1(done_aux_reg_i_7__2_0[1]),
        .I2(a_in_5[4]),
        .I3(a_in_5[3]),
        .I4(done_aux_reg_i_7__2_0[2]),
        .I5(done_aux_reg_i_7__2_0[0]),
        .O(\count[4]_i_24__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7BDE)) 
    \count[4]_i_27__3 
       (.I0(a_in_5[14]),
        .I1(a_in_5[13]),
        .I2(done_aux_reg_i_7__2_0[1]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFDBFFFDFFFFFFFF)) 
    \count[4]_i_28__3 
       (.I0(a_in_5[8]),
        .I1(done_aux_reg_i_7__2_0[0]),
        .I2(done_aux_reg_i_7__2_0[1]),
        .I3(done_aux_reg_i_7__2_0[2]),
        .I4(a_in_5[9]),
        .I5(a_in_5[10]),
        .O(\count[4]_i_28__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__4 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(plusOp__4[4]));
  LUT6 #(
    .INIT(64'h7DB7DB6DB6DBEDBE)) 
    \count[4]_i_30__3 
       (.I0(a_in_5[10]),
        .I1(a_in_5[9]),
        .I2(a_in_5[8]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(done_aux_reg_i_7__2_0[1]),
        .I5(done_aux_reg_i_7__2_0[2]),
        .O(\count[4]_i_30__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFEFDEFFBFFF)) 
    \count[4]_i_31__3 
       (.I0(a_in_5[17]),
        .I1(a_in_5[16]),
        .I2(done_aux_reg_i_7__2_0[2]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(done_aux_reg_i_7__2_0[1]),
        .I5(a_in_5[15]),
        .O(\count[4]_i_31__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6DFFFFDFFFFDF)) 
    \count[4]_i_32__3 
       (.I0(a_in_5[17]),
        .I1(done_aux_reg_i_7__2_0[2]),
        .I2(done_aux_reg_i_7__2_0[0]),
        .I3(done_aux_reg_i_7__2_0[1]),
        .I4(a_in_5[15]),
        .I5(a_in_5[16]),
        .O(\count[4]_i_32__3_n_0 ));
  LUT6 #(
    .INIT(64'h7BBFDEE7E77BFDDE)) 
    \count[4]_i_33__3 
       (.I0(a_in_5[17]),
        .I1(a_in_5[16]),
        .I2(done_aux_reg_i_7__2_0[2]),
        .I3(a_in_5[15]),
        .I4(done_aux_reg_i_7__2_0[1]),
        .I5(done_aux_reg_i_7__2_0[0]),
        .O(\count[4]_i_33__3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_3__3 
       (.I0(\count[4]_i_5__3_n_0 ),
        .I1(\count_reg[0]_1 ),
        .I2(\count_reg[0]_0 [0]),
        .I3(\count[4]_i_7__2_n_0 ),
        .I4(\count_reg[0]_0 [1]),
        .I5(\count[4]_i_8__2_n_0 ),
        .O(\j_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_5__3 
       (.I0(a_in_5[7]),
        .I1(\count[4]_i_11__3_n_0 ),
        .I2(done_aux_reg_i_7__2_0[4]),
        .I3(\count[4]_i_12__3_n_0 ),
        .O(\count[4]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_7__2 
       (.I0(a_in_5[12]),
        .I1(\count[4]_i_15__2_n_0 ),
        .I2(done_aux_reg_i_7__2_0[4]),
        .I3(\count[4]_i_16__2_n_0 ),
        .O(\count[4]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_8__2 
       (.I0(a_in_5[19]),
        .I1(\count[4]_i_17__2_n_0 ),
        .I2(done_aux_reg_i_7__2_0[4]),
        .I3(\count[4]_i_18__2_n_0 ),
        .O(\count[4]_i_8__2_n_0 ));
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
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__4[4]),
        .Q(count_reg[4]));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_11__0
       (.I0(done_aux_reg_i_7__2_0[4]),
        .I1(done_aux_i_22__3_n_0),
        .I2(a_in_5[6]),
        .I3(done_aux_i_23__4_n_0),
        .I4(done_aux_reg_i_7__2_0[3]),
        .I5(done_aux_i_24__3_n_0),
        .O(done_aux_i_11__0_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_12__1
       (.I0(done_aux_i_24__3_n_0),
        .I1(done_aux_reg_i_7__2_0[4]),
        .I2(done_aux_i_23__4_n_0),
        .I3(a_in_5[6]),
        .I4(done_aux_i_22__3_n_0),
        .I5(done_aux_reg_i_7__2_0[3]),
        .O(done_aux_i_12__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_16__1
       (.I0(\count_reg_reg[0] ),
        .I1(done_aux_reg_i_7__2_0[4]),
        .I2(\count_reg_reg[1] ),
        .I3(a_in_5[11]),
        .I4(done_aux_reg_i_7__2_1),
        .I5(done_aux_reg_i_7__2_0[3]),
        .O(done_aux_i_16__1_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_17__2
       (.I0(done_aux_reg_i_7__2_0[4]),
        .I1(done_aux_i_31__2_n_0),
        .I2(done_aux_reg_i_7__2_0[3]),
        .I3(done_aux_i_32__3_n_0),
        .I4(a_in_5[18]),
        .I5(done_aux_i_33__2_n_0),
        .O(done_aux_i_17__2_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_18__2
       (.I0(done_aux_i_33__2_n_0),
        .I1(done_aux_reg_i_7__2_0[4]),
        .I2(done_aux_i_32__3_n_0),
        .I3(done_aux_reg_i_7__2_0[3]),
        .I4(done_aux_i_31__2_n_0),
        .I5(a_in_5[18]),
        .O(done_aux_i_18__2_n_0));
  LUT5 #(
    .INIT(32'hFFFF11F0)) 
    done_aux_i_1__7
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(done_aux_reg_0),
        .I3(j_reg),
        .I4(done),
        .O(done_aux_i_1__7_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_21__3
       (.I0(a_in_5[2]),
        .I1(done_aux_reg_i_7__2_0[2]),
        .I2(a_in_5[1]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(a_in_5[0]),
        .I5(done_aux_reg_i_7__2_0[1]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000041000000)) 
    done_aux_i_22__3
       (.I0(a_in_5[4]),
        .I1(a_in_5[3]),
        .I2(done_aux_reg_i_7__2_0[0]),
        .I3(done_aux_reg_i_7__2_0[1]),
        .I4(done_aux_reg_i_7__2_0[2]),
        .I5(a_in_5[5]),
        .O(done_aux_i_22__3_n_0));
  LUT6 #(
    .INIT(64'h0000080200000000)) 
    done_aux_i_23__4
       (.I0(a_in_5[4]),
        .I1(a_in_5[3]),
        .I2(done_aux_reg_i_7__2_0[1]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(done_aux_reg_i_7__2_0[2]),
        .I5(a_in_5[5]),
        .O(done_aux_i_23__4_n_0));
  LUT6 #(
    .INIT(64'hBA0000BA5D00005D)) 
    done_aux_i_24__3
       (.I0(a_in_5[5]),
        .I1(done_aux_reg_i_7__2_0[1]),
        .I2(a_in_5[4]),
        .I3(a_in_5[3]),
        .I4(done_aux_reg_i_7__2_0[0]),
        .I5(done_aux_reg_i_7__2_0[2]),
        .O(done_aux_i_24__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8241)) 
    done_aux_i_27__3
       (.I0(a_in_5[14]),
        .I1(a_in_5[13]),
        .I2(done_aux_reg_i_7__2_0[0]),
        .I3(done_aux_reg_i_7__2_0[1]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0018000200000000)) 
    done_aux_i_29__3
       (.I0(a_in_5[8]),
        .I1(done_aux_reg_i_7__2_0[1]),
        .I2(done_aux_reg_i_7__2_0[0]),
        .I3(done_aux_reg_i_7__2_0[2]),
        .I4(a_in_5[9]),
        .I5(a_in_5[10]),
        .O(\count_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h8248249249241241)) 
    done_aux_i_30__3
       (.I0(a_in_5[10]),
        .I1(a_in_5[9]),
        .I2(a_in_5[8]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(done_aux_reg_i_7__2_0[1]),
        .I5(done_aux_reg_i_7__2_0[2]),
        .O(\count_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h0009200000200200)) 
    done_aux_i_31__2
       (.I0(a_in_5[17]),
        .I1(done_aux_reg_i_7__2_0[2]),
        .I2(done_aux_reg_i_7__2_0[1]),
        .I3(done_aux_reg_i_7__2_0[0]),
        .I4(a_in_5[15]),
        .I5(a_in_5[16]),
        .O(done_aux_i_31__2_n_0));
  LUT6 #(
    .INIT(64'h0000401021400000)) 
    done_aux_i_32__3
       (.I0(a_in_5[17]),
        .I1(a_in_5[16]),
        .I2(done_aux_reg_i_7__2_0[2]),
        .I3(done_aux_reg_i_7__2_0[1]),
        .I4(done_aux_reg_i_7__2_0[0]),
        .I5(a_in_5[15]),
        .O(done_aux_i_32__3_n_0));
  LUT6 #(
    .INIT(64'h8440188421180221)) 
    done_aux_i_33__2
       (.I0(a_in_5[17]),
        .I1(a_in_5[16]),
        .I2(done_aux_reg_i_7__2_0[2]),
        .I3(a_in_5[15]),
        .I4(done_aux_reg_i_7__2_0[0]),
        .I5(done_aux_reg_i_7__2_0[1]),
        .O(done_aux_i_33__2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    done_aux_i_3__1
       (.I0(done_aux_reg_i_5__2_n_0),
        .I1(done_aux_reg_i_2),
        .I2(\count_reg[0]_0 [0]),
        .I3(done_aux_reg_i_7__2_n_0),
        .I4(\count_reg[0]_0 [1]),
        .I5(done_aux_reg_i_8__2_n_0),
        .O(\j_reg[0]_0 ));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__7_n_0),
        .Q(done));
  MUXF7 done_aux_reg_i_5__2
       (.I0(done_aux_i_11__0_n_0),
        .I1(done_aux_i_12__1_n_0),
        .O(done_aux_reg_i_5__2_n_0),
        .S(a_in_5[7]));
  MUXF7 done_aux_reg_i_7__2
       (.I0(done_aux_i_3__1_0),
        .I1(done_aux_i_16__1_n_0),
        .O(done_aux_reg_i_7__2_n_0),
        .S(a_in_5[12]));
  MUXF7 done_aux_reg_i_8__2
       (.I0(done_aux_i_17__2_n_0),
        .I1(done_aux_i_18__2_n_0),
        .O(done_aux_reg_i_8__2_n_0),
        .S(a_in_5[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__4 
       (.I0(Q[0]),
        .O(\j[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__4[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \j[2]_i_1__5 
       (.I0(j_reg),
        .I1(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__4[2]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__4_n_0 ),
        .Q(Q[0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__4[1]),
        .Q(Q[1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__4[2]),
        .Q(j_reg));
  LUT4 #(
    .INIT(16'hFF08)) 
    valid_aux_i_1__7
       (.I0(j_reg),
        .I1(valid_aux_i_2__4_n_0),
        .I2(Q[0]),
        .I3(valid),
        .O(valid_aux_i_1__7_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    valid_aux_i_2__4
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(Q[1]),
        .I4(count_reg[2]),
        .I5(count_reg[4]),
        .O(valid_aux_i_2__4_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__7_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5
   (\count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[1] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[0] ,
    \count_reg_reg[0]_0 ,
    Q,
    \FSM_onehot_state_reg[2] ,
    E,
    D,
    clk,
    AR,
    a_in_4,
    done_aux_i_2__3,
    done_aux_i_2__3_0,
    done_aux_i_4__1_0,
    \count[4]_i_3__4 ,
    \count[4]_i_5__4_0 ,
    \count_reg_reg[0]_1 ,
    next_out_4,
    \FSM_onehot_state_reg[1] ,
    \count_reg[0]_0 ,
    done_aux_reg_0);
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[0]_0 ;
  output [1:0]Q;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output [1:0]D;
  input clk;
  input [0:0]AR;
  input [14:0]a_in_4;
  input [4:0]done_aux_i_2__3;
  input done_aux_i_2__3_0;
  input done_aux_i_4__1_0;
  input \count[4]_i_3__4 ;
  input \count[4]_i_5__4_0 ;
  input [4:0]\count_reg_reg[0]_1 ;
  input next_out_4;
  input \FSM_onehot_state_reg[1] ;
  input \count_reg[0]_0 ;
  input done_aux_reg_0;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [14:0]a_in_4;
  wire clk;
  wire count;
  wire \count[0]_i_1__5_n_0 ;
  wire \count[4]_i_11__4_n_0 ;
  wire \count[4]_i_12__4_n_0 ;
  wire \count[4]_i_13__4_n_0 ;
  wire \count[4]_i_21__4_n_0 ;
  wire \count[4]_i_22__4_n_0 ;
  wire \count[4]_i_23__4_n_0 ;
  wire \count[4]_i_24__4_n_0 ;
  wire \count[4]_i_3__4 ;
  wire \count[4]_i_5__4_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire done;
  wire done_aux_i_10__0_n_0;
  wire done_aux_i_11__1_n_0;
  wire done_aux_i_12__2_n_0;
  wire done_aux_i_1__0_n_0;
  wire done_aux_i_20__3_n_0;
  wire done_aux_i_21__4_n_0;
  wire done_aux_i_22__4_n_0;
  wire done_aux_i_23__3_n_0;
  wire [4:0]done_aux_i_2__3;
  wire done_aux_i_2__3_0;
  wire done_aux_i_4__1_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1__5_n_0 ;
  wire [2:2]j_reg;
  wire next_out_4;
  wire [2:1]p_0_in__5;
  wire [4:1]plusOp__5;
  wire valid;
  wire valid_aux_i_1__4_n_0;
  wire valid_aux_i_2__5_n_0;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__5 
       (.I0(valid),
        .I1(\count_reg_reg[0]_1 [0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\count_reg_reg[0]_1 [3]),
        .I4(\count_reg_reg[0]_1 [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__5 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__5 
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(done),
        .I2(\count_reg_reg[0]_1 [3]),
        .I3(next_out_4),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__3
       (.I0(\count_reg_reg[0]_1 [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0]_1 [4]),
        .I4(\count_reg_reg[0]_1 [0]),
        .I5(\count_reg_reg[0]_1 [1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__5 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__4 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__5 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__5 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__5[3]));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_11__4 
       (.I0(\count_reg_reg[0] ),
        .I1(done_aux_i_2__3[3]),
        .I2(\count[4]_i_5__4_0 ),
        .I3(a_in_4[11]),
        .I4(\count[4]_i_21__4_n_0 ),
        .O(\count[4]_i_11__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_12__4 
       (.I0(\count[4]_i_22__4_n_0 ),
        .I1(done_aux_i_2__3[3]),
        .I2(\count[4]_i_23__4_n_0 ),
        .I3(a_in_4[6]),
        .O(\count[4]_i_12__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_13__4 
       (.I0(\count[4]_i_23__4_n_0 ),
        .I1(done_aux_i_2__3[3]),
        .I2(\count[4]_i_22__4_n_0 ),
        .I3(a_in_4[6]),
        .I4(\count[4]_i_24__4_n_0 ),
        .O(\count[4]_i_13__4_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_18__3 
       (.I0(a_in_4[2]),
        .I1(done_aux_i_2__3[2]),
        .I2(a_in_4[1]),
        .I3(done_aux_i_2__3[0]),
        .I4(a_in_4[0]),
        .I5(done_aux_i_2__3[1]),
        .O(\count_reg_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \count[4]_i_1__3 
       (.I0(\count_reg[0]_0 ),
        .I1(j_reg),
        .I2(done),
        .O(count));
  LUT6 #(
    .INIT(64'hFFDBFFFDFFFFFFFF)) 
    \count[4]_i_20__4 
       (.I0(a_in_4[8]),
        .I1(done_aux_i_2__3[0]),
        .I2(done_aux_i_2__3[1]),
        .I3(done_aux_i_2__3[2]),
        .I4(a_in_4[9]),
        .I5(a_in_4[10]),
        .O(\count_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h7DB7DB6DB6DBEDBE)) 
    \count[4]_i_21__4 
       (.I0(a_in_4[10]),
        .I1(a_in_4[9]),
        .I2(a_in_4[8]),
        .I3(done_aux_i_2__3[0]),
        .I4(done_aux_i_2__3[1]),
        .I5(done_aux_i_2__3[2]),
        .O(\count[4]_i_21__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFEFFFFF)) 
    \count[4]_i_22__4 
       (.I0(a_in_4[4]),
        .I1(a_in_4[3]),
        .I2(done_aux_i_2__3[1]),
        .I3(done_aux_i_2__3[0]),
        .I4(done_aux_i_2__3[2]),
        .I5(a_in_4[5]),
        .O(\count[4]_i_22__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7DFFFFFFFF)) 
    \count[4]_i_23__4 
       (.I0(a_in_4[4]),
        .I1(a_in_4[3]),
        .I2(done_aux_i_2__3[0]),
        .I3(done_aux_i_2__3[1]),
        .I4(done_aux_i_2__3[2]),
        .I5(a_in_4[5]),
        .O(\count[4]_i_23__4_n_0 ));
  LUT6 #(
    .INIT(64'h45FFA2FFFF45FFA2)) 
    \count[4]_i_24__4 
       (.I0(a_in_4[5]),
        .I1(done_aux_i_2__3[1]),
        .I2(a_in_4[4]),
        .I3(a_in_4[3]),
        .I4(done_aux_i_2__3[2]),
        .I5(done_aux_i_2__3[0]),
        .O(\count[4]_i_24__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7BDE)) 
    \count[4]_i_27__4 
       (.I0(a_in_4[14]),
        .I1(a_in_4[13]),
        .I2(done_aux_i_2__3[1]),
        .I3(done_aux_i_2__3[0]),
        .O(\count_reg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2__5 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(plusOp__5[4]));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_5__4 
       (.I0(a_in_4[12]),
        .I1(\count[4]_i_3__4 ),
        .I2(done_aux_i_2__3[4]),
        .I3(\count[4]_i_11__4_n_0 ),
        .O(\count_reg_reg[4]_2 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_6__4 
       (.I0(a_in_4[7]),
        .I1(\count[4]_i_12__4_n_0 ),
        .I2(done_aux_i_2__3[4]),
        .I3(\count[4]_i_13__4_n_0 ),
        .O(\count_reg_reg[4]_1 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(\count[0]_i_1__5_n_0 ),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__5[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__5[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__5[3]),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__5[4]),
        .Q(count_reg[4]));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_10__0
       (.I0(\count_reg_reg[1] ),
        .I1(done_aux_i_2__3[3]),
        .I2(done_aux_i_4__1_0),
        .I3(a_in_4[11]),
        .I4(done_aux_i_20__3_n_0),
        .O(done_aux_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_11__1
       (.I0(done_aux_i_21__4_n_0),
        .I1(done_aux_i_2__3[3]),
        .I2(done_aux_i_22__4_n_0),
        .I3(a_in_4[6]),
        .O(done_aux_i_11__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_12__2
       (.I0(done_aux_i_22__4_n_0),
        .I1(done_aux_i_2__3[3]),
        .I2(done_aux_i_21__4_n_0),
        .I3(a_in_4[6]),
        .I4(done_aux_i_23__3_n_0),
        .O(done_aux_i_12__2_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_17__3
       (.I0(a_in_4[2]),
        .I1(done_aux_i_2__3[2]),
        .I2(a_in_4[1]),
        .I3(done_aux_i_2__3[0]),
        .I4(a_in_4[0]),
        .I5(done_aux_i_2__3[1]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h0018000200000000)) 
    done_aux_i_19__5
       (.I0(a_in_4[8]),
        .I1(done_aux_i_2__3[1]),
        .I2(done_aux_i_2__3[0]),
        .I3(done_aux_i_2__3[2]),
        .I4(a_in_4[9]),
        .I5(a_in_4[10]),
        .O(\count_reg_reg[1] ));
  LUT3 #(
    .INIT(8'hF2)) 
    done_aux_i_1__0
       (.I0(done_aux_reg_0),
        .I1(j_reg),
        .I2(done),
        .O(done_aux_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8248249249241241)) 
    done_aux_i_20__3
       (.I0(a_in_4[10]),
        .I1(a_in_4[9]),
        .I2(a_in_4[8]),
        .I3(done_aux_i_2__3[0]),
        .I4(done_aux_i_2__3[1]),
        .I5(done_aux_i_2__3[2]),
        .O(done_aux_i_20__3_n_0));
  LUT6 #(
    .INIT(64'h0000000041000000)) 
    done_aux_i_21__4
       (.I0(a_in_4[4]),
        .I1(a_in_4[3]),
        .I2(done_aux_i_2__3[0]),
        .I3(done_aux_i_2__3[1]),
        .I4(done_aux_i_2__3[2]),
        .I5(a_in_4[5]),
        .O(done_aux_i_21__4_n_0));
  LUT6 #(
    .INIT(64'h0000080200000000)) 
    done_aux_i_22__4
       (.I0(a_in_4[4]),
        .I1(a_in_4[3]),
        .I2(done_aux_i_2__3[1]),
        .I3(done_aux_i_2__3[0]),
        .I4(done_aux_i_2__3[2]),
        .I5(a_in_4[5]),
        .O(done_aux_i_22__4_n_0));
  LUT6 #(
    .INIT(64'hBA0000BA5D00005D)) 
    done_aux_i_23__3
       (.I0(a_in_4[5]),
        .I1(done_aux_i_2__3[1]),
        .I2(a_in_4[4]),
        .I3(a_in_4[3]),
        .I4(done_aux_i_2__3[0]),
        .I5(done_aux_i_2__3[2]),
        .O(done_aux_i_23__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8241)) 
    done_aux_i_26__4
       (.I0(a_in_4[14]),
        .I1(a_in_4[13]),
        .I2(done_aux_i_2__3[0]),
        .I3(done_aux_i_2__3[1]),
        .O(\count_reg_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_4__1
       (.I0(a_in_4[12]),
        .I1(done_aux_i_2__3_0),
        .I2(done_aux_i_2__3[4]),
        .I3(done_aux_i_10__0_n_0),
        .O(\count_reg_reg[4] ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_5__0
       (.I0(a_in_4[7]),
        .I1(done_aux_i_11__1_n_0),
        .I2(done_aux_i_2__3[4]),
        .I3(done_aux_i_12__2_n_0),
        .O(\count_reg_reg[4]_0 ));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__0_n_0),
        .Q(done));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__5 
       (.I0(Q[0]),
        .O(\j[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__5[1]));
  LUT4 #(
    .INIT(16'h0007)) 
    \j[2]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j_reg),
        .I3(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__5[2]));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__5_n_0 ),
        .Q(Q[0]));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__5[1]),
        .Q(Q[1]));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__5[2]),
        .Q(j_reg));
  LUT4 #(
    .INIT(16'hFF08)) 
    valid_aux_i_1__4
       (.I0(valid_aux_i_2__5_n_0),
        .I1(Q[1]),
        .I2(j_reg),
        .I3(valid),
        .O(valid_aux_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    valid_aux_i_2__5
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[4]),
        .I5(Q[0]),
        .O(valid_aux_i_2__5_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__4_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6
   (Q,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    \count_reg_reg[4]_0 ,
    \FSM_onehot_state_reg[2] ,
    E,
    D,
    clk,
    AR,
    done_aux_reg_0,
    done_aux_reg_1,
    a_in_3,
    done_aux_i_2__6,
    \count_reg_reg[0] ,
    next_out_3,
    \FSM_onehot_state_reg[1] ,
    \count_reg[0]_0 );
  output [0:0]Q;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output \count_reg_reg[4]_0 ;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output [1:0]D;
  input clk;
  input [0:0]AR;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input [10:0]a_in_3;
  input [4:0]done_aux_i_2__6;
  input [4:0]\count_reg_reg[0] ;
  input next_out_3;
  input \FSM_onehot_state_reg[1] ;
  input \count_reg[0]_0 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [0:0]Q;
  wire [10:0]a_in_3;
  wire clk;
  wire count;
  wire \count[4]_i_10__5_n_0 ;
  wire \count[4]_i_16__4_n_0 ;
  wire \count[4]_i_17__4_n_0 ;
  wire \count[4]_i_18__4_n_0 ;
  wire \count[4]_i_9__4_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire done;
  wire done_aux_i_15__4_n_0;
  wire done_aux_i_16__4_n_0;
  wire done_aux_i_17__4_n_0;
  wire done_aux_i_1__6_n_0;
  wire [4:0]done_aux_i_2__6;
  wire done_aux_i_8__1_n_0;
  wire done_aux_i_9__2_n_0;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire j0;
  wire \j[0]_i_1__6_n_0 ;
  wire [1:1]j_reg;
  wire next_out_3;
  wire [4:0]plusOp__6;
  wire valid;
  wire valid_aux_i_1__2_n_0;
  wire valid_aux_i_2__6_n_0;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__6 
       (.I0(valid),
        .I1(\count_reg_reg[0] [0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(\count_reg_reg[0] [3]),
        .I4(\count_reg_reg[0] [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__6 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__6 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_3),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2__1
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .I2(done),
        .I3(\count_reg_reg[0] [4]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__6 
       (.I0(count_reg[0]),
        .O(plusOp__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__2 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__6 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__6 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__6[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_10__5 
       (.I0(\count[4]_i_17__4_n_0 ),
        .I1(done_aux_i_2__6[3]),
        .I2(\count[4]_i_16__4_n_0 ),
        .I3(a_in_3[6]),
        .I4(\count[4]_i_18__4_n_0 ),
        .O(\count[4]_i_10__5_n_0 ));
  LUT6 #(
    .INIT(64'h7BD6DEBDBD7B6BDE)) 
    \count[4]_i_15__4 
       (.I0(a_in_3[10]),
        .I1(a_in_3[9]),
        .I2(done_aux_i_2__6[2]),
        .I3(a_in_3[8]),
        .I4(done_aux_i_2__6[1]),
        .I5(done_aux_i_2__6[0]),
        .O(\count_reg_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFBFFFF)) 
    \count[4]_i_16__4 
       (.I0(a_in_3[4]),
        .I1(done_aux_i_2__6[1]),
        .I2(done_aux_i_2__6[0]),
        .I3(a_in_3[3]),
        .I4(done_aux_i_2__6[2]),
        .I5(a_in_3[5]),
        .O(\count[4]_i_16__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FDFFFFFFFF)) 
    \count[4]_i_17__4 
       (.I0(a_in_3[4]),
        .I1(done_aux_i_2__6[0]),
        .I2(done_aux_i_2__6[1]),
        .I3(a_in_3[3]),
        .I4(done_aux_i_2__6[2]),
        .I5(a_in_3[5]),
        .O(\count[4]_i_17__4_n_0 ));
  LUT6 #(
    .INIT(64'h45FFFF45A2FFFFA2)) 
    \count[4]_i_18__4 
       (.I0(a_in_3[5]),
        .I1(done_aux_i_2__6[1]),
        .I2(a_in_3[4]),
        .I3(done_aux_i_2__6[0]),
        .I4(a_in_3[3]),
        .I5(done_aux_i_2__6[2]),
        .O(\count[4]_i_18__4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \count[4]_i_1__1 
       (.I0(\count_reg[0]_0 ),
        .I1(j_reg),
        .I2(done),
        .O(count));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_21__5 
       (.I0(a_in_3[2]),
        .I1(done_aux_i_2__6[2]),
        .I2(a_in_3[1]),
        .I3(done_aux_i_2__6[0]),
        .I4(a_in_3[0]),
        .I5(done_aux_i_2__6[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__6 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp__6[4]));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_5__5 
       (.I0(a_in_3[7]),
        .I1(\count[4]_i_9__4_n_0 ),
        .I2(done_aux_i_2__6[4]),
        .I3(\count[4]_i_10__5_n_0 ),
        .O(\count_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_9__4 
       (.I0(\count[4]_i_16__4_n_0 ),
        .I1(done_aux_i_2__6[3]),
        .I2(\count[4]_i_17__4_n_0 ),
        .I3(a_in_3[6]),
        .O(\count[4]_i_9__4_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__6[0]),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__6[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__6[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__6[3]),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__6[4]),
        .Q(count_reg[4]));
  LUT6 #(
    .INIT(64'h8429214242849421)) 
    done_aux_i_14__3
       (.I0(a_in_3[10]),
        .I1(a_in_3[9]),
        .I2(done_aux_i_2__6[2]),
        .I3(a_in_3[8]),
        .I4(done_aux_i_2__6[1]),
        .I5(done_aux_i_2__6[0]),
        .O(\count_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000040100000)) 
    done_aux_i_15__4
       (.I0(a_in_3[4]),
        .I1(done_aux_i_2__6[0]),
        .I2(done_aux_i_2__6[1]),
        .I3(a_in_3[3]),
        .I4(done_aux_i_2__6[2]),
        .I5(a_in_3[5]),
        .O(done_aux_i_15__4_n_0));
  LUT6 #(
    .INIT(64'h0000200200000000)) 
    done_aux_i_16__4
       (.I0(a_in_3[4]),
        .I1(done_aux_i_2__6[1]),
        .I2(done_aux_i_2__6[0]),
        .I3(a_in_3[3]),
        .I4(done_aux_i_2__6[2]),
        .I5(a_in_3[5]),
        .O(done_aux_i_16__4_n_0));
  LUT6 #(
    .INIT(64'hBA0000BA5D00005D)) 
    done_aux_i_17__4
       (.I0(a_in_3[5]),
        .I1(done_aux_i_2__6[1]),
        .I2(a_in_3[4]),
        .I3(done_aux_i_2__6[0]),
        .I4(a_in_3[3]),
        .I5(done_aux_i_2__6[2]),
        .O(done_aux_i_17__4_n_0));
  LUT5 #(
    .INIT(32'hFFFF4F4A)) 
    done_aux_i_1__6
       (.I0(j_reg),
        .I1(done_aux_reg_0),
        .I2(Q),
        .I3(done_aux_reg_1),
        .I4(done),
        .O(done_aux_i_1__6_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_20__4
       (.I0(a_in_3[2]),
        .I1(done_aux_i_2__6[2]),
        .I2(a_in_3[1]),
        .I3(done_aux_i_2__6[0]),
        .I4(a_in_3[0]),
        .I5(done_aux_i_2__6[1]),
        .O(\count_reg_reg[2] ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_4__2
       (.I0(a_in_3[7]),
        .I1(done_aux_i_8__1_n_0),
        .I2(done_aux_i_2__6[4]),
        .I3(done_aux_i_9__2_n_0),
        .O(\count_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_8__1
       (.I0(done_aux_i_15__4_n_0),
        .I1(done_aux_i_2__6[3]),
        .I2(done_aux_i_16__4_n_0),
        .I3(a_in_3[6]),
        .O(done_aux_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_9__2
       (.I0(done_aux_i_16__4_n_0),
        .I1(done_aux_i_2__6[3]),
        .I2(done_aux_i_15__4_n_0),
        .I3(a_in_3[6]),
        .I4(done_aux_i_17__4_n_0),
        .O(done_aux_i_9__2_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__6_n_0),
        .Q(done));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__6 
       (.I0(Q),
        .O(\j[0]_i_1__6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \j[1]_i_1__6 
       (.I0(j_reg),
        .I1(done),
        .O(j0));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__6_n_0 ),
        .Q(Q));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(Q),
        .Q(j_reg));
  LUT3 #(
    .INIT(8'hF8)) 
    valid_aux_i_1__2
       (.I0(valid_aux_i_2__6_n_0),
        .I1(j_reg),
        .I2(valid),
        .O(valid_aux_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    valid_aux_i_2__6
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .I5(Q),
        .O(valid_aux_i_2__6_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__2_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7
   (j_reg,
    done,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[1] ,
    \count_reg_reg[1]_0 ,
    \FSM_onehot_state_reg[2] ,
    E,
    D,
    clk,
    AR,
    done_aux_reg_0,
    a_in_2,
    done_aux_i_5__2,
    Q,
    next_out_2,
    \FSM_onehot_state_reg[1] ,
    \count_reg[4]_0 );
  output [0:0]j_reg;
  output done;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[1]_0 ;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output [1:0]D;
  input clk;
  input [0:0]AR;
  input done_aux_reg_0;
  input [5:0]a_in_2;
  input [2:0]done_aux_i_5__2;
  input [4:0]Q;
  input next_out_2;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]\count_reg[4]_0 ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [4:0]Q;
  wire [5:0]a_in_2;
  wire clk;
  wire \count[0]_i_1__7_n_0 ;
  wire [4:0]count_reg;
  wire [0:0]\count_reg[4]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire done;
  wire [2:0]done_aux_i_5__2;
  wire done_aux_reg_0;
  wire j0;
  wire [0:0]j_reg;
  wire next_out_2;
  wire [4:1]plusOp__7;
  wire valid;
  wire valid_aux_i_1__0_n_0;
  wire valid_aux_i_2__7_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFDDDFCCC)) 
    \FSM_onehot_state[1]_i_1__7 
       (.I0(valid),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__7 
       (.I0(Q[2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__7 
       (.I0(Q[2]),
        .I1(done),
        .I2(Q[3]),
        .I3(next_out_2),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2
       (.I0(Q[2]),
        .I1(valid),
        .I2(done),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__7 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__7 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__7 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__7[3]));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[4]_i_14__5 
       (.I0(a_in_2[5]),
        .I1(done_aux_i_5__2[1]),
        .I2(a_in_2[4]),
        .I3(done_aux_i_5__2[2]),
        .I4(a_in_2[3]),
        .I5(done_aux_i_5__2[0]),
        .O(\count_reg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__7 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp__7[4]));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_9__5 
       (.I0(a_in_2[2]),
        .I1(done_aux_i_5__2[2]),
        .I2(a_in_2[1]),
        .I3(done_aux_i_5__2[0]),
        .I4(a_in_2[0]),
        .I5(done_aux_i_5__2[1]),
        .O(\count_reg_reg[2]_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(\count_reg[4]_0 ),
        .CLR(AR),
        .D(\count[0]_i_1__7_n_0 ),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(\count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__7[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(\count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__7[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(\count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__7[3]),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(\count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__7[4]),
        .Q(count_reg[4]));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_10__2
       (.I0(a_in_2[2]),
        .I1(done_aux_i_5__2[2]),
        .I2(a_in_2[1]),
        .I3(done_aux_i_5__2[0]),
        .I4(a_in_2[0]),
        .I5(done_aux_i_5__2[1]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_13__3
       (.I0(a_in_2[5]),
        .I1(done_aux_i_5__2[1]),
        .I2(a_in_2[4]),
        .I3(done_aux_i_5__2[2]),
        .I4(a_in_2[3]),
        .I5(done_aux_i_5__2[0]),
        .O(\count_reg_reg[1] ));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_reg_0),
        .Q(done));
  LUT2 #(
    .INIT(4'h1)) 
    \j[0]_i_1__7 
       (.I0(j_reg),
        .I1(done),
        .O(j0));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(1'b1),
        .Q(j_reg));
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_i_1__0
       (.I0(valid_aux_i_2__7_n_0),
        .I1(valid),
        .O(valid_aux_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    valid_aux_i_2__7
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(j_reg),
        .O(valid_aux_i_2__7_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__0_n_0),
        .Q(valid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_nqueens_0_0,top_nqueens,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top_nqueens,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    nRst,
    flag,
    done,
    counter,
    a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input nRst;
  output flag;
  output done;
  output [11:0]counter;
  output [4:0]a;

  wire [4:0]a;
  wire clk;
  wire [11:0]counter;
  wire done;
  wire flag;
  wire nRst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens U0
       (.a(a),
        .clk(clk),
        .counter(counter),
        .done(done),
        .flag(flag),
        .nRst(nRst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm
   (next_out_9,
    Q,
    \j_reg[2] ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    \count_reg_reg[2]_3 ,
    \count_reg_reg[2]_4 ,
    D,
    E,
    clk,
    done_aux_reg,
    \count[4]_i_29 ,
    done_aux_i_2,
    \count_reg[0] ,
    \count[4]_i_3 ,
    plusOp_9,
    \counter[11] ,
    \counter[11]_0 ,
    SR,
    AR);
  output next_out_9;
  output [4:0]Q;
  output [2:0]\j_reg[2] ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output \count_reg_reg[2]_3 ;
  output \count_reg_reg[2]_4 ;
  output [11:0]D;
  output [0:0]E;
  input clk;
  input done_aux_reg;
  input [10:0]\count[4]_i_29 ;
  input done_aux_i_2;
  input \count_reg[0] ;
  input \count[4]_i_3 ;
  input [11:0]plusOp_9;
  input \counter[11] ;
  input \counter[11]_0 ;
  input [0:0]SR;
  input [0:0]AR;

  wire [0:0]AR;
  wire [11:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire ack_out_9;
  wire acks_out;
  wire \asout_array[9]_0 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__0_n_0;
  wire clk;
  wire [10:0]\count[4]_i_29 ;
  wire \count[4]_i_3 ;
  wire \count_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[2]_3 ;
  wire \count_reg_reg[2]_4 ;
  wire \counter[11] ;
  wire \counter[11]_0 ;
  wire done_aux_i_2;
  wire done_aux_reg;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_15;
  wire dut_n_5;
  wire dut_n_6;
  wire [2:0]\j_reg[2] ;
  wire logic_n_3;
  wire logic_n_4;
  wire logic_n_5;
  wire logic_n_6;
  wire next_out_9;
  wire nexts_out;
  wire [11:0]plusOp_9;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2_n_0;

  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_6),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_6),
        .D(logic_n_4),
        .Q(ce__0),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_6),
        .D(dut_n_14),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_6),
        .D(logic_n_3),
        .Q(\asout_array[9]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_6),
        .D(dut_n_13),
        .Q(nexts_out),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_5),
        .GE(1'b1),
        .Q(ack_out_9));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__0
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
        .G(ce_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__0
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[0]_i_1 
       (.I0(plusOp_9[0]),
        .I1(ack_out_9),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[10]_i_1 
       (.I0(plusOp_9[10]),
        .I1(ack_out_9),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[11]_i_1 
       (.I0(plusOp_9[11]),
        .I1(ack_out_9),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \counter_s_reg[11]_i_2 
       (.I0(\counter[11] ),
        .I1(\counter[11]_0 ),
        .I2(ack_out_9),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[1]_i_1 
       (.I0(plusOp_9[1]),
        .I1(ack_out_9),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[2]_i_1 
       (.I0(plusOp_9[2]),
        .I1(ack_out_9),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[3]_i_1 
       (.I0(plusOp_9[3]),
        .I1(ack_out_9),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[4]_i_1 
       (.I0(plusOp_9[4]),
        .I1(ack_out_9),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[5]_i_1 
       (.I0(plusOp_9[5]),
        .I1(ack_out_9),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[6]_i_1 
       (.I0(plusOp_9[6]),
        .I1(ack_out_9),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[7]_i_1 
       (.I0(plusOp_9[7]),
        .I1(ack_out_9),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[8]_i_1 
       (.I0(plusOp_9[8]),
        .I1(ack_out_9),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[9]_i_1 
       (.I0(plusOp_9[9]),
        .I1(ack_out_9),
        .O(D[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter dut
       (.AR(AR),
        .D({dut_n_13,dut_n_14}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[9]_0 ,ce__0}),
        .Q(Q),
        .clk(clk),
        .\count[4]_i_29 (\count[4]_i_29 ),
        .\count[4]_i_3_0 (\count[4]_i_3 ),
        .\count_reg[0] (\j_reg[2] [1:0]),
        .\count_reg_reg[2]_0 (\count_reg_reg[2] ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_0 ),
        .\count_reg_reg[2]_2 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[2]_3 (\count_reg_reg[2]_2 ),
        .\count_reg_reg[2]_4 (\count_reg_reg[2]_3 ),
        .\count_reg_reg[2]_5 (\count_reg_reg[2]_4 ),
        .\count_reg_reg[3]_0 (dut_n_15),
        .done_aux_i_2_0(done_aux_i_2),
        .\j_reg[0] (dut_n_5),
        .\j_reg[0]_0 (dut_n_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm logic
       (.AR(reset_control),
        .D({logic_n_3,logic_n_4}),
        .E(logic_n_6),
        .\FSM_onehot_state_reg[1] (dut_n_15),
        .\FSM_onehot_state_reg[2] (logic_n_5),
        .Q(\j_reg[2] ),
        .acks_out_reg({nexts_out,\asout_array[9]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .clk(clk),
        .\count_reg[0]_0 (dut_n_6),
        .\count_reg[0]_1 (\count_reg[0] ),
        .done_aux_reg_0(dut_n_5),
        .done_aux_reg_1(done_aux_reg));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_9));
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
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[9]_0 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2
       (.I0(ce__0),
        .I1(\asout_array[9]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0
   (AR,
    next_out_8,
    Q,
    \j_reg[1] ,
    \j_reg[2] ,
    \FSM_onehot_state_reg[3]_0 ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[2]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    SR,
    clk,
    \count_reg[0] ,
    done_aux_reg_i_6,
    done_aux_reg_i_13,
    \count_reg[4]_i_17 ,
    \count_reg[4]_i_17_0 ,
    \count_reg[4]_i_14 ,
    done_aux_reg_i_16,
    done_aux_reg_i_16_0,
    done_aux_reg,
    done_aux_reg_0,
    done_aux_i_2__0,
    a_in_8,
    done_aux_reg_i_10,
    done_aux_reg_i_10_0,
    done_aux_i_2__0_0,
    done_aux_reg_i_8__0,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count[4]_i_8 ,
    \count[4]_i_11__0 ,
    done_aux_reg_i_9,
    next_out_9,
    \count_reg[0]_2 ,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_8;
  output [4:0]Q;
  output [1:0]\j_reg[1] ;
  output \j_reg[2] ;
  output [10:0]\FSM_onehot_state_reg[3]_0 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \j_reg[2]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output [0:0]SR;
  input clk;
  input [2:0]\count_reg[0] ;
  input [4:0]done_aux_reg_i_6;
  input done_aux_reg_i_13;
  input \count_reg[4]_i_17 ;
  input \count_reg[4]_i_17_0 ;
  input \count_reg[4]_i_14 ;
  input done_aux_reg_i_16;
  input done_aux_reg_i_16_0;
  input done_aux_reg;
  input done_aux_reg_0;
  input done_aux_i_2__0;
  input [39:0]a_in_8;
  input done_aux_reg_i_10;
  input done_aux_reg_i_10_0;
  input done_aux_i_2__0_0;
  input done_aux_reg_i_8__0;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count[4]_i_8 ;
  input \count[4]_i_11__0 ;
  input done_aux_reg_i_9;
  input next_out_9;
  input \count_reg[0]_2 ;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire [10:0]\FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [39:0]a_in_8;
  wire [44:5]a_in_9;
  wire acks_out;
  wire \asout_array[8]_1 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__2_n_0;
  wire clk;
  wire \count[4]_i_11__0 ;
  wire \count[4]_i_8 ;
  wire [2:0]\count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg[4]_i_14 ;
  wire \count_reg[4]_i_17 ;
  wire \count_reg[4]_i_17_0 ;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[4] ;
  wire done_aux_i_2__0;
  wire done_aux_i_2__0_0;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_i_10;
  wire done_aux_reg_i_10_0;
  wire done_aux_reg_i_13;
  wire done_aux_reg_i_16;
  wire done_aux_reg_i_16_0;
  wire [4:0]done_aux_reg_i_6;
  wire done_aux_reg_i_8__0;
  wire done_aux_reg_i_9;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_7;
  wire dut_n_8;
  wire [1:0]\j_reg[1] ;
  wire \j_reg[2] ;
  wire \j_reg[2]_0 ;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_8;
  wire next_out_9;
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
        .D(dut_n_12),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_9),
        .D(logic_n_6),
        .Q(\asout_array[8]_1 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_9),
        .D(dut_n_11),
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
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__2
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_8[0]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_8[1]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_8[2]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_8[3]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_8[4]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_8[5]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_8[6]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_8[7]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_8[8]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_8[9]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_8[10]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_8[11]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_8[12]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_8[13]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_8[14]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_8[15]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_8[16]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_8[17]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_8[18]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_8[19]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_8[20]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_8[21]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_8[22]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_8[23]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_8[24]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][0] 
       (.CLR(1'b0),
        .D(a_in_8[25]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][1] 
       (.CLR(1'b0),
        .D(a_in_8[26]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][2] 
       (.CLR(1'b0),
        .D(a_in_8[27]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[32]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][3] 
       (.CLR(1'b0),
        .D(a_in_8[28]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[33]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][4] 
       (.CLR(1'b0),
        .D(a_in_8[29]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[34]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][0] 
       (.CLR(1'b0),
        .D(a_in_8[30]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[35]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][1] 
       (.CLR(1'b0),
        .D(a_in_8[31]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[36]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][2] 
       (.CLR(1'b0),
        .D(a_in_8[32]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[37]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][3] 
       (.CLR(1'b0),
        .D(a_in_8[33]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[38]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][4] 
       (.CLR(1'b0),
        .D(a_in_8[34]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[39]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][0] 
       (.CLR(1'b0),
        .D(a_in_8[35]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[40]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][1] 
       (.CLR(1'b0),
        .D(a_in_8[36]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[41]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][2] 
       (.CLR(1'b0),
        .D(a_in_8[37]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[42]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][3] 
       (.CLR(1'b0),
        .D(a_in_8[38]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[43]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][4] 
       (.CLR(1'b0),
        .D(a_in_8[39]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[44]));
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
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__2
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 dut
       (.D({dut_n_11,dut_n_12}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_10),
        .\FSM_onehot_state_reg[4] ({\asout_array[8]_1 ,ce__0}),
        .Q(Q),
        .a_in_8({a_in_8[19:15],a_in_8[13:10],a_in_8[4:0]}),
        .clk(clk),
        .\count[4]_i_11__0_0 (\count[4]_i_11__0 ),
        .\count[4]_i_8_0 (\count[4]_i_8 ),
        .\count_reg[0] (\count_reg[0]_0 ),
        .\count_reg[0]_0 (\j_reg[1] ),
        .\count_reg[0]_1 (\count_reg[0]_1 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_2 ),
        .\count_reg_reg[3]_0 (dut_n_13),
        .\count_reg_reg[4]_0 (\count_reg_reg[4] ),
        .\count_reg_reg[4]_1 (dut_n_7),
        .done_aux_reg_i_10(done_aux_reg_i_10),
        .done_aux_reg_i_10_0(done_aux_reg_i_10_0),
        .done_aux_reg_i_8__0_0(done_aux_reg_i_8__0),
        .done_aux_reg_i_9_0(done_aux_reg_i_9),
        .\j_reg[1] (dut_n_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0 logic
       (.AR(reset_control),
        .D({logic_n_6,logic_n_7}),
        .E(logic_n_9),
        .\FSM_onehot_state_reg[1] (dut_n_13),
        .\FSM_onehot_state_reg[2] (logic_n_8),
        .Q(\j_reg[1] ),
        .a_in_9({a_in_9[44:18],a_in_9[14:13],a_in_9[9:5]}),
        .clk(clk),
        .\count[4]_i_29_0 ({\FSM_onehot_state_reg[3]_0 [9:8],\FSM_onehot_state_reg[3]_0 [2:0]}),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_2 ),
        .\count_reg[0]_2 (dut_n_8),
        .\count_reg[4]_i_14_0 (\count_reg[4]_i_14 ),
        .\count_reg[4]_i_17_0 (\count_reg[4]_i_17 ),
        .\count_reg[4]_i_17_1 (\count_reg[4]_i_17_0 ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[8]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .done_aux_i_22_0(\FSM_onehot_state_reg[3]_0 [7:5]),
        .done_aux_i_2__0_0(dut_n_10),
        .done_aux_i_2__0_1(done_aux_i_2__0),
        .done_aux_i_2__0_2(done_aux_i_2__0_0),
        .done_aux_i_2__0_3(dut_n_7),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(done_aux_reg_0),
        .done_aux_reg_i_13_0(done_aux_reg_i_13),
        .done_aux_reg_i_16_0(done_aux_reg_i_16),
        .done_aux_reg_i_16_1(done_aux_reg_i_16_0),
        .done_aux_reg_i_6_0(done_aux_reg_i_6),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[2]_1 (\j_reg[2]_0 ),
        .next_out_9(next_out_9));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_8));
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
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[8]_1 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__0
       (.I0(ce__0),
        .I1(\asout_array[8]_1 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__0_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1
   (AR,
    next_out_7,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_8,
    \count_reg_reg[1] ,
    \count_reg_reg[0] ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[0] ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \j_reg[0]_0 ,
    \count_reg_reg[1]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \j_reg[0]_1 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[4]_3 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    SR,
    clk,
    done_aux_reg_i_4,
    Q,
    done_aux_reg_i_10,
    \count_reg[0] ,
    \count[4]_i_10__0 ,
    done_aux_reg,
    done_aux_reg_0,
    a_in_7,
    done_aux_i_3__0,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count[4]_i_9__0 ,
    done_aux_reg_i_9__0,
    done_aux_reg_i_9__0_0,
    \count_reg[0]_2 ,
    \count_reg[0]_3 ,
    \count_reg[0]_4 ,
    \count[4]_i_5__1 ,
    done_aux_i_2__1,
    done_aux_reg_i_12__0,
    next_out_8,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_1 );
  output [0:0]AR;
  output next_out_7;
  output \FSM_onehot_state_reg[3]_0 ;
  output [39:0]a_in_8;
  output \count_reg_reg[1] ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0] ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[4]_1 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[1]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output [0:0]\j_reg[0]_1 ;
  output [4:0]\count_reg_reg[4]_2 ;
  output \count_reg_reg[4]_3 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output [0:0]SR;
  input clk;
  input done_aux_reg_i_4;
  input [4:0]Q;
  input done_aux_reg_i_10;
  input [1:0]\count_reg[0] ;
  input \count[4]_i_10__0 ;
  input done_aux_reg;
  input done_aux_reg_0;
  input [34:0]a_in_7;
  input done_aux_i_3__0;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count[4]_i_9__0 ;
  input done_aux_reg_i_9__0;
  input done_aux_reg_i_9__0_0;
  input \count_reg[0]_2 ;
  input \count_reg[0]_3 ;
  input \count_reg[0]_4 ;
  input \count[4]_i_5__1 ;
  input done_aux_i_2__1;
  input done_aux_reg_i_12__0;
  input next_out_8;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [34:0]a_in_7;
  wire [39:0]a_in_8;
  wire acks_out;
  wire \asout_array[7]_2 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__4_n_0;
  wire clk;
  wire \count[4]_i_10__0 ;
  wire \count[4]_i_5__1 ;
  wire \count[4]_i_9__0 ;
  wire [1:0]\count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg[0]_3 ;
  wire \count_reg[0]_4 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire [4:0]\count_reg_reg[4]_2 ;
  wire \count_reg_reg[4]_3 ;
  wire done_aux_i_2__1;
  wire done_aux_i_3__0;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_i_10;
  wire done_aux_reg_i_12__0;
  wire done_aux_reg_i_4;
  wire done_aux_reg_i_9__0;
  wire done_aux_reg_i_9__0_0;
  wire dut_n_0;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_6;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire [0:0]\j_reg[0]_1 ;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire nRst;
  wire next_out_7;
  wire next_out_8;
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
        .CE(logic_n_17),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_17),
        .D(logic_n_15),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_17),
        .D(dut_n_13),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_17),
        .D(logic_n_14),
        .Q(\asout_array[7]_2 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_17),
        .D(dut_n_12),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_16),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__4
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_2 [0]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_2 [1]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_2 [2]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_2 [3]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_2 [4]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_7[0]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_7[1]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_7[2]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_7[3]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_7[4]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_7[5]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_7[6]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_7[7]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_7[8]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_7[9]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_7[10]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_7[11]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_7[12]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_7[13]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_7[14]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_7[15]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_7[16]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_7[17]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_7[18]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_7[19]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_7[20]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_7[21]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_7[22]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_7[23]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_7[24]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][0] 
       (.CLR(1'b0),
        .D(a_in_7[25]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][1] 
       (.CLR(1'b0),
        .D(a_in_7[26]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][2] 
       (.CLR(1'b0),
        .D(a_in_7[27]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[32]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][3] 
       (.CLR(1'b0),
        .D(a_in_7[28]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[33]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][4] 
       (.CLR(1'b0),
        .D(a_in_7[29]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[34]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][0] 
       (.CLR(1'b0),
        .D(a_in_7[30]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[35]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][1] 
       (.CLR(1'b0),
        .D(a_in_7[31]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[36]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][2] 
       (.CLR(1'b0),
        .D(a_in_7[32]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[37]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][3] 
       (.CLR(1'b0),
        .D(a_in_7[33]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[38]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][4] 
       (.CLR(1'b0),
        .D(a_in_7[34]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[39]));
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
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__4
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__4_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 dut
       (.D({dut_n_12,dut_n_13}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_11),
        .\FSM_onehot_state_reg[4] ({\asout_array[7]_2 ,ce__0}),
        .Q(\count_reg_reg[4]_2 ),
        .a_in_7({a_in_7[19:15],a_in_7[13:10],a_in_7[4:0]}),
        .clk(clk),
        .\count[4]_i_5__1_0 (\count[4]_i_5__1 ),
        .\count[4]_i_9__0_0 (\count[4]_i_9__0 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_2 ),
        .\count_reg_reg[3]_0 (dut_n_14),
        .\count_reg_reg[4]_0 (dut_n_0),
        .\count_reg_reg[4]_1 (dut_n_6),
        .\count_reg_reg[4]_2 (\count_reg_reg[4]_3 ),
        .\count_reg_reg[4]_3 (dut_n_9),
        .done_aux_i_2__1(\j_reg[0]_1 ),
        .done_aux_i_3__0_0(done_aux_i_3__0),
        .done_aux_reg_i_12__0_0(done_aux_reg_i_12__0),
        .done_aux_reg_i_9__0(done_aux_reg_i_9__0),
        .done_aux_reg_i_9__0_0(done_aux_reg_i_9__0_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1 logic
       (.AR(reset_control),
        .D({logic_n_14,logic_n_15}),
        .E(logic_n_17),
        .\FSM_onehot_state_reg[1] (dut_n_14),
        .\FSM_onehot_state_reg[2] (logic_n_16),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .Q(Q),
        .a_in_8({a_in_8[39:20],a_in_8[16:5],a_in_8[2:0]}),
        .clk(clk),
        .\count[4]_i_10__0_0 (\count[4]_i_10__0 ),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (dut_n_6),
        .\count_reg[0]_2 (\count_reg[0]_0 ),
        .\count_reg[0]_3 (\count_reg[0]_1 ),
        .\count_reg[0]_4 (dut_n_9),
        .\count_reg[0]_5 (\count_reg[0]_2 ),
        .\count_reg[0]_6 (\count_reg[0]_3 ),
        .\count_reg[0]_7 (\count_reg[0]_4 ),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_1 ({nexts_out,\asout_array[7]_2 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1]_0 ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_0 ),
        .\count_reg_reg[4]_1 (\count_reg_reg[4]_1 ),
        .done_aux_i_2__1_0(done_aux_i_2__1),
        .done_aux_i_2__1_1(dut_n_11),
        .done_aux_reg_0(dut_n_0),
        .done_aux_reg_1(done_aux_reg),
        .done_aux_reg_2(done_aux_reg_0),
        .done_aux_reg_i_10_0(done_aux_reg_i_10),
        .done_aux_reg_i_4(done_aux_reg_i_4),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .\j_reg[0]_2 (\j_reg[0]_1 ),
        .next_out_8(next_out_8));
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
        .G(reset_control_reg_i_2__1_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[7]_2 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__1
       (.I0(ce__0),
        .I1(\asout_array[7]_2 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__1_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2
   (AR,
    next_out_6,
    \count_reg_reg[2] ,
    a_in_7,
    \count_reg_reg[2]_0 ,
    \j_reg[0] ,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    \count_reg_reg[4] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[4]_3 ,
    \j_reg[0]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \count_reg_reg[0]_0 ,
    \j_reg[0]_1 ,
    \count_reg_reg[4]_4 ,
    \count_reg_reg[4]_5 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    SR,
    clk,
    Q,
    done_aux_i_2__1,
    done_aux_reg_i_4__0,
    done_aux_reg_i_9__0,
    \count[4]_i_11__1 ,
    done_aux_reg,
    done_aux_i_2__2,
    a_in_6,
    done_aux_reg_i_7__1,
    done_aux_reg_i_7__1_0,
    done_aux_i_2__2_0,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    done_aux_reg_i_6__1,
    \count[4]_i_9__1 ,
    done_aux_reg_i_9__1,
    \count[4]_i_5__2 ,
    next_out_7,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_1 );
  output [0:0]AR;
  output next_out_6;
  output \count_reg_reg[2] ;
  output [34:0]a_in_7;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0] ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[4]_3 ;
  output \j_reg[0]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \count_reg_reg[0]_0 ;
  output [0:0]\j_reg[0]_1 ;
  output \count_reg_reg[4]_4 ;
  output [4:0]\count_reg_reg[4]_5 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output [0:0]SR;
  input clk;
  input [4:0]Q;
  input [0:0]done_aux_i_2__1;
  input done_aux_reg_i_4__0;
  input done_aux_reg_i_9__0;
  input \count[4]_i_11__1 ;
  input done_aux_reg;
  input done_aux_i_2__2;
  input [29:0]a_in_6;
  input done_aux_reg_i_7__1;
  input done_aux_reg_i_7__1_0;
  input done_aux_i_2__2_0;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input done_aux_reg_i_6__1;
  input \count[4]_i_9__1 ;
  input done_aux_reg_i_9__1;
  input \count[4]_i_5__2 ;
  input next_out_7;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [29:0]a_in_6;
  wire [34:0]a_in_7;
  wire acks_out;
  wire \asout_array[6]_3 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__5_n_0;
  wire clk;
  wire \count[4]_i_11__1 ;
  wire \count[4]_i_5__2 ;
  wire \count[4]_i_9__1 ;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire \count_reg_reg[4]_3 ;
  wire \count_reg_reg[4]_4 ;
  wire [4:0]\count_reg_reg[4]_5 ;
  wire [0:0]done_aux_i_2__1;
  wire done_aux_i_2__2;
  wire done_aux_i_2__2_0;
  wire done_aux_reg;
  wire done_aux_reg_i_4__0;
  wire done_aux_reg_i_6__1;
  wire done_aux_reg_i_7__1;
  wire done_aux_reg_i_7__1_0;
  wire done_aux_reg_i_9__0;
  wire done_aux_reg_i_9__1;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire [0:0]\j_reg[0]_1 ;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire nRst;
  wire next_out_6;
  wire next_out_7;
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
        .CE(logic_n_18),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_18),
        .D(logic_n_16),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_18),
        .D(dut_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_18),
        .D(logic_n_15),
        .Q(\asout_array[6]_3 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_18),
        .D(dut_n_8),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_17),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__5
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_5 [0]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_5 [1]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_5 [2]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_5 [3]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_5 [4]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_6[0]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_6[1]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_6[2]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_6[3]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_6[4]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_6[5]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_6[6]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_6[7]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_6[8]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_6[9]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_6[10]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_6[11]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_6[12]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_6[13]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_6[14]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_6[15]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_6[16]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_6[17]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_6[18]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_6[19]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_6[20]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_6[21]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_6[22]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_6[23]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_6[24]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][0] 
       (.CLR(1'b0),
        .D(a_in_6[25]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][1] 
       (.CLR(1'b0),
        .D(a_in_6[26]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][2] 
       (.CLR(1'b0),
        .D(a_in_6[27]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[32]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][3] 
       (.CLR(1'b0),
        .D(a_in_6[28]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[33]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][4] 
       (.CLR(1'b0),
        .D(a_in_6[29]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[34]));
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
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__5
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__5_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 dut
       (.D({dut_n_8,dut_n_9}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (dut_n_7),
        .\FSM_onehot_state_reg[4] ({\asout_array[6]_3 ,ce__0}),
        .Q(\count_reg_reg[4]_5 ),
        .a_in_6({a_in_6[19:15],a_in_6[13:10],a_in_6[4:0]}),
        .clk(clk),
        .\count[4]_i_5__2_0 (\count[4]_i_5__2 ),
        .\count[4]_i_9__1_0 (\count[4]_i_9__1 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_2 ),
        .\count_reg_reg[3]_0 (dut_n_11),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_4 ),
        .\count_reg_reg[4]_1 (dut_n_10),
        .\count_reg_reg[4]_2 (dut_n_13),
        .\count_reg_reg[4]_3 (dut_n_14),
        .done_aux_reg_i_6__1_0(done_aux_reg_i_6__1),
        .done_aux_reg_i_7__1(done_aux_reg_i_7__1),
        .done_aux_reg_i_7__1_0(done_aux_reg_i_7__1_0),
        .done_aux_reg_i_9__1_0(done_aux_reg_i_9__1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2 logic
       (.AR(reset_control),
        .D({logic_n_15,logic_n_16}),
        .E(logic_n_18),
        .\FSM_onehot_state_reg[1] (dut_n_11),
        .\FSM_onehot_state_reg[2] (logic_n_17),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .Q(Q),
        .a_in_7({a_in_7[34:20],a_in_7[16:5],a_in_7[2:0]}),
        .clk(clk),
        .\count[4]_i_11__1_0 (\count[4]_i_11__1 ),
        .\count_reg[0]_0 (dut_n_14),
        .\count_reg[0]_1 (\count_reg[0] ),
        .\count_reg[0]_2 (\count_reg[0]_0 ),
        .\count_reg[0]_3 (\count_reg[0]_1 ),
        .\count_reg[0]_4 (dut_n_10),
        .\count_reg[0]_5 (\count_reg[0]_2 ),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_1 ({nexts_out,\asout_array[6]_3 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1]_0 ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_0 ),
        .\count_reg_reg[4]_1 (\count_reg_reg[4]_1 ),
        .\count_reg_reg[4]_2 (\count_reg_reg[4]_2 ),
        .\count_reg_reg[4]_3 (\count_reg_reg[4]_3 ),
        .done_aux_i_2__1(done_aux_i_2__1),
        .done_aux_i_2__2_0(dut_n_7),
        .done_aux_i_2__2_1(done_aux_i_2__2),
        .done_aux_i_2__2_2(done_aux_i_2__2_0),
        .done_aux_i_2__2_3(dut_n_13),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_i_4__0_0(done_aux_reg_i_4__0),
        .done_aux_reg_i_9__0_0(done_aux_reg_i_9__0),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .\j_reg[0]_2 (\j_reg[0]_1 ),
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
        .G(reset_control_reg_i_2__2_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[6]_3 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__2
       (.I0(ce__0),
        .I1(\asout_array[6]_3 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__2_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3
   (AR,
    next_out_5,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_6,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    \FSM_onehot_state_reg[3]_1 ,
    \count_reg_reg[4] ,
    \count_reg_reg[4]_0 ,
    \j_reg[0] ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \j_reg[1] ,
    \count_reg_reg[4]_3 ,
    \count_reg_reg[4]_4 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[4]_5 ,
    \count_reg_reg[2]_2 ,
    \FSM_onehot_state_reg[3]_2 ,
    SR,
    clk,
    done_aux_reg_i_3__0,
    Q,
    done_aux_reg_i_7__1,
    \count[4]_i_10__2 ,
    done_aux_i_2__2,
    done_aux_reg,
    a_in_5,
    done_aux_i_4__0,
    \count[4]_i_4__3 ,
    done_aux_reg_i_7__2,
    done_aux_reg_i_7__2_0,
    \count[4]_i_6__3 ,
    done_aux_reg_i_6__2,
    next_out_6,
    \count_reg[0] ,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_1 );
  output [0:0]AR;
  output next_out_5;
  output \FSM_onehot_state_reg[3]_0 ;
  output [29:0]a_in_6;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[4]_0 ;
  output \j_reg[0] ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[2]_0 ;
  output [1:0]\j_reg[1] ;
  output [4:0]\count_reg_reg[4]_3 ;
  output \count_reg_reg[4]_4 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[4]_5 ;
  output \count_reg_reg[2]_2 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output [0:0]SR;
  input clk;
  input done_aux_reg_i_3__0;
  input [4:0]Q;
  input done_aux_reg_i_7__1;
  input \count[4]_i_10__2 ;
  input [0:0]done_aux_i_2__2;
  input done_aux_reg;
  input [24:0]a_in_5;
  input done_aux_i_4__0;
  input \count[4]_i_4__3 ;
  input done_aux_reg_i_7__2;
  input done_aux_reg_i_7__2_0;
  input \count[4]_i_6__3 ;
  input done_aux_reg_i_6__2;
  input next_out_6;
  input \count_reg[0] ;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [24:0]a_in_5;
  wire [29:0]a_in_6;
  wire acks_out;
  wire \asout_array[5]_4 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__7_n_0;
  wire clk;
  wire \count[4]_i_10__2 ;
  wire \count[4]_i_4__3 ;
  wire \count[4]_i_6__3 ;
  wire \count_reg[0] ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire [4:0]\count_reg_reg[4]_3 ;
  wire \count_reg_reg[4]_4 ;
  wire \count_reg_reg[4]_5 ;
  wire [0:0]done_aux_i_2__2;
  wire done_aux_i_4__0;
  wire done_aux_reg;
  wire done_aux_reg_i_3__0;
  wire done_aux_reg_i_6__2;
  wire done_aux_reg_i_7__1;
  wire done_aux_reg_i_7__2;
  wire done_aux_reg_i_7__2_0;
  wire dut_n_0;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_6;
  wire \j_reg[0] ;
  wire [1:0]\j_reg[1] ;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_17;
  wire logic_n_18;
  wire nRst;
  wire next_out_5;
  wire next_out_6;
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
        .CE(logic_n_18),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_18),
        .D(logic_n_14),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_18),
        .D(dut_n_13),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_18),
        .D(logic_n_13),
        .Q(\asout_array[5]_4 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_18),
        .D(dut_n_12),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_17),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__7
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_3 [0]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_3 [1]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_3 [2]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_3 [3]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(\count_reg_reg[4]_3 [4]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_5[0]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_5[1]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_5[2]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_5[3]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_5[4]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_5[5]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_5[6]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_5[7]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_5[8]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_5[9]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_5[10]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_5[11]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_5[12]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_5[13]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_5[14]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_5[15]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_5[16]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_5[17]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_5[18]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_5[19]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_5[20]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_5[21]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_5[22]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_5[23]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_5[24]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__7_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__7
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__7_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 dut
       (.D({dut_n_12,dut_n_13}),
        .E(ce),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[4] ({\asout_array[5]_4 ,ce__0}),
        .Q(\j_reg[1] ),
        .a_in_5({a_in_5[19:15],a_in_5[13:10],a_in_5[4:0]}),
        .clk(clk),
        .\count[4]_i_4__3_0 (\count[4]_i_4__3 ),
        .\count[4]_i_6__3_0 (\count[4]_i_6__3 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_2 ),
        .\count_reg_reg[3]_0 (dut_n_14),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_3 ),
        .\count_reg_reg[4]_1 (\count_reg_reg[4]_4 ),
        .\count_reg_reg[4]_2 (\count_reg_reg[4]_5 ),
        .done_aux_i_4__0_0(done_aux_i_4__0),
        .done_aux_reg_i_6__2_0(done_aux_reg_i_6__2),
        .done_aux_reg_i_7__2(done_aux_reg_i_7__2),
        .done_aux_reg_i_7__2_0(done_aux_reg_i_7__2_0),
        .\j_reg[0] (dut_n_0),
        .\j_reg[1] (dut_n_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3 logic
       (.AR(reset_control),
        .D({logic_n_13,logic_n_14}),
        .E(logic_n_18),
        .\FSM_onehot_state_reg[1] (dut_n_14),
        .\FSM_onehot_state_reg[2] (logic_n_17),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .Q(Q),
        .a_in_6({a_in_6[29:20],a_in_6[16:5],a_in_6[2:0]}),
        .clk(clk),
        .\count[4]_i_10__2_0 (\count[4]_i_10__2 ),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (dut_n_6),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_1 ({nexts_out,\asout_array[5]_4 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1]_0 ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_0 ),
        .\count_reg_reg[4]_1 (\count_reg_reg[4]_1 ),
        .\count_reg_reg[4]_2 (\count_reg_reg[4]_2 ),
        .done_aux_i_2__2(done_aux_i_2__2),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(dut_n_0),
        .done_aux_reg_i_3__0(done_aux_reg_i_3__0),
        .done_aux_reg_i_7__1_0(done_aux_reg_i_7__1),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[1]_0 (\j_reg[1] ),
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
        .G(reset_control_reg_i_2__3_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[5]_4 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__3
       (.I0(ce__0),
        .I1(\asout_array[5]_4 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__3_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4
   (AR,
    next_out_4,
    Q,
    \count_reg_reg[2] ,
    a_in_5,
    \count_reg_reg[2]_0 ,
    \j_reg[0] ,
    \count_reg_reg[0] ,
    \count_reg_reg[1] ,
    \j_reg[0]_0 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[3] ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[2]_2 ,
    SR,
    clk,
    done_aux_reg_i_7__2,
    done_aux_reg_i_2,
    \count_reg[0] ,
    done_aux_i_3__1,
    done_aux_reg_i_7__2_0,
    \count_reg[0]_0 ,
    \count[4]_i_7__2 ,
    done_aux_reg,
    done_aux_reg_0,
    a_in_4,
    done_aux_i_3__2,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    \count[4]_i_4__4 ,
    \count[4]_i_7__3 ,
    \count[4]_i_5__4 ,
    done_aux_i_6__0,
    done_aux_i_4__1,
    next_out_5,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_1 );
  output [0:0]AR;
  output next_out_4;
  output [4:0]Q;
  output \count_reg_reg[2] ;
  output [24:0]a_in_5;
  output \count_reg_reg[2]_0 ;
  output \j_reg[0] ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[1] ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[2]_2 ;
  output [0:0]SR;
  input clk;
  input [4:0]done_aux_reg_i_7__2;
  input done_aux_reg_i_2;
  input [1:0]\count_reg[0] ;
  input done_aux_i_3__1;
  input done_aux_reg_i_7__2_0;
  input \count_reg[0]_0 ;
  input \count[4]_i_7__2 ;
  input done_aux_reg;
  input done_aux_reg_0;
  input [19:0]a_in_4;
  input done_aux_i_3__2;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input \count[4]_i_4__4 ;
  input \count[4]_i_7__3 ;
  input \count[4]_i_5__4 ;
  input done_aux_i_6__0;
  input done_aux_i_4__1;
  input next_out_5;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [19:0]a_in_4;
  wire [24:0]a_in_5;
  wire acks_out_reg_i_1__6_n_0;
  wire \asout_array[4]_5 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__6_n_0;
  wire clk;
  wire \count[4]_i_4__4 ;
  wire \count[4]_i_5__4 ;
  wire \count[4]_i_7__2 ;
  wire \count[4]_i_7__3 ;
  wire [1:0]\count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[3]_0 ;
  wire done_aux_i_3__1;
  wire done_aux_i_3__2;
  wire done_aux_i_4__1;
  wire done_aux_i_6__0;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_i_2;
  wire [4:0]done_aux_reg_i_7__2;
  wire done_aux_reg_i_7__2_0;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_5;
  wire dut_n_6;
  wire [1:0]j_reg;
  wire \j_reg[0]_0 ;
  wire j_reg_0_sn_1;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire nRst;
  wire next_out_4;
  wire next_out_5;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__4_n_0;

  assign \j_reg[0]  = j_reg_0_sn_1;
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
        .CE(logic_n_13),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_13),
        .D(logic_n_11),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_13),
        .D(dut_n_12),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_13),
        .D(logic_n_10),
        .Q(\asout_array[4]_5 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_13),
        .D(dut_n_11),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__6_n_0),
        .G(logic_n_12),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__6
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1__6_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_4[0]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_4[1]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_4[2]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_4[3]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_4[4]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_4[5]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_4[6]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_4[7]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_4[8]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_4[9]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_4[10]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_4[11]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_4[12]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_4[13]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_4[14]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_4[15]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_4[16]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_4[17]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_4[18]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_4[19]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__6
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__6_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 dut
       (.D({dut_n_11,dut_n_12}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[4]_5 ,ce__0}),
        .Q(Q),
        .a_in_4({a_in_4[19:15],a_in_4[13:10],a_in_4[4:0]}),
        .clk(clk),
        .\count[4]_i_4__4_0 (\count[4]_i_4__4 ),
        .\count[4]_i_5__4 (\count[4]_i_5__4 ),
        .\count[4]_i_7__3_0 (\count[4]_i_7__3 ),
        .\count_reg[0] (\count_reg[0]_1 ),
        .\count_reg[0]_0 (\count_reg[0]_2 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_2 ),
        .\count_reg_reg[3]_0 (\count_reg_reg[3] ),
        .\count_reg_reg[3]_1 (\count_reg_reg[3]_0 ),
        .\count_reg_reg[3]_2 (dut_n_13),
        .done_aux_i_3__2_0(done_aux_i_3__2),
        .done_aux_i_4__1(done_aux_i_4__1),
        .done_aux_i_6__0_0(done_aux_i_6__0),
        .done_aux_reg(done_aux_reg),
        .done_aux_reg_0(j_reg),
        .done_aux_reg_1(done_aux_reg_0),
        .\j_reg[0] (dut_n_5),
        .\j_reg[0]_0 (dut_n_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4 logic
       (.AR(reset_control),
        .D({logic_n_10,logic_n_11}),
        .E(logic_n_13),
        .\FSM_onehot_state_reg[1] (dut_n_13),
        .\FSM_onehot_state_reg[2] (logic_n_12),
        .Q(j_reg),
        .a_in_5({a_in_5[24:20],a_in_5[16:5],a_in_5[2:0]}),
        .clk(clk),
        .\count[4]_i_7__2_0 (\count[4]_i_7__2 ),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .\count_reg[0]_2 (dut_n_6),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_1 ({nexts_out,\asout_array[4]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1]_0 ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .done_aux_i_3__1_0(done_aux_i_3__1),
        .done_aux_reg_0(dut_n_5),
        .done_aux_reg_i_2(done_aux_reg_i_2),
        .done_aux_reg_i_7__2_0(done_aux_reg_i_7__2),
        .done_aux_reg_i_7__2_1(done_aux_reg_i_7__2_0),
        .\j_reg[0]_0 (j_reg_0_sn_1),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .next_out_5(next_out_5));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(next_out_4));
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
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[4]_5 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__4
       (.I0(ce__0),
        .I1(\asout_array[4]_5 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__4_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5
   (AR,
    next_out_3,
    Q,
    \count_reg_reg[2] ,
    a_in_4,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[1] ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[0] ,
    \count_reg_reg[0]_0 ,
    SR,
    clk,
    done_aux_i_2__3,
    done_aux_i_2__3_0,
    done_aux_i_4__1,
    \count[4]_i_3__4 ,
    \count[4]_i_5__4 ,
    a_in_3,
    done_aux_i_5__1,
    \count[4]_i_6__5 ,
    done_aux_i_3__3,
    \count[4]_i_4__5 ,
    next_out_4,
    done_aux_reg,
    \count_reg[0] ,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_1 );
  output [0:0]AR;
  output next_out_3;
  output [4:0]Q;
  output \count_reg_reg[2] ;
  output [19:0]a_in_4;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[0] ;
  output \count_reg_reg[0]_0 ;
  output [0:0]SR;
  input clk;
  input [4:0]done_aux_i_2__3;
  input done_aux_i_2__3_0;
  input done_aux_i_4__1;
  input \count[4]_i_3__4 ;
  input \count[4]_i_5__4 ;
  input [14:0]a_in_3;
  input done_aux_i_5__1;
  input \count[4]_i_6__5 ;
  input done_aux_i_3__3;
  input \count[4]_i_4__5 ;
  input next_out_4;
  input done_aux_reg;
  input \count_reg[0] ;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [14:0]a_in_3;
  wire [19:0]a_in_4;
  wire acks_out_reg_i_1__3_n_0;
  wire \asout_array[3]_6 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__3_n_0;
  wire clk;
  wire \count[4]_i_3__4 ;
  wire \count[4]_i_4__5 ;
  wire \count[4]_i_5__4 ;
  wire \count[4]_i_6__5 ;
  wire \count_reg[0] ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire [4:0]done_aux_i_2__3;
  wire done_aux_i_2__3_0;
  wire done_aux_i_3__3;
  wire done_aux_i_4__1;
  wire done_aux_i_5__1;
  wire done_aux_reg;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [1:0]j_reg;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire nRst;
  wire next_out_3;
  wire next_out_4;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__5_n_0;

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
        .CE(logic_n_13),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_13),
        .D(logic_n_15),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_13),
        .D(dut_n_6),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_13),
        .D(logic_n_14),
        .Q(\asout_array[3]_6 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_13),
        .D(dut_n_5),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__3_n_0),
        .G(logic_n_12),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__3
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1__3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_3[0]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_3[1]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_3[2]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_3[3]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_3[4]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_3[5]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_3[6]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_3[7]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_3[8]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_3[9]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_3[10]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_3[11]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_3[12]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_3[13]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_3[14]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[19]));
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__3
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__3_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 dut
       (.D({dut_n_5,dut_n_6}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[3]_6 ,ce__0}),
        .Q(Q),
        .a_in_3({a_in_3[14:10],a_in_3[4:0]}),
        .clk(clk),
        .\count[4]_i_4__5_0 (\count[4]_i_4__5 ),
        .\count[4]_i_6__5_0 (\count[4]_i_6__5 ),
        .\count_reg[0] (\count_reg[0] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[3]_0 (dut_n_7),
        .done_aux_i_3__3_0(done_aux_i_3__3),
        .done_aux_i_5__1_0(done_aux_i_5__1),
        .done_aux_reg(j_reg),
        .done_aux_reg_0(done_aux_reg),
        .\j_reg[0] (dut_n_8),
        .\j_reg[0]_0 (dut_n_9));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5 logic
       (.AR(reset_control),
        .D({logic_n_14,logic_n_15}),
        .E(logic_n_13),
        .\FSM_onehot_state_reg[1] (dut_n_7),
        .\FSM_onehot_state_reg[2] (logic_n_12),
        .Q(j_reg),
        .a_in_4({a_in_4[16:5],a_in_4[2:0]}),
        .clk(clk),
        .\count[4]_i_3__4 (\count[4]_i_3__4 ),
        .\count[4]_i_5__4_0 (\count[4]_i_5__4 ),
        .\count_reg[0]_0 (dut_n_9),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_1 ({nexts_out,\asout_array[3]_6 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1]_0 ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_0 ),
        .\count_reg_reg[4]_1 (\count_reg_reg[4]_1 ),
        .\count_reg_reg[4]_2 (\count_reg_reg[4]_2 ),
        .done_aux_i_2__3(done_aux_i_2__3),
        .done_aux_i_2__3_0(done_aux_i_2__3_0),
        .done_aux_i_4__1_0(done_aux_i_4__1),
        .done_aux_reg_0(dut_n_8),
        .next_out_4(next_out_4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(next_out_3));
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__5
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[3]_6 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__5
       (.I0(ce__0),
        .I1(\asout_array[3]_6 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__5_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6
   (AR,
    next_out_2,
    Q,
    \count_reg_reg[2] ,
    a_in_3,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    \count_reg_reg[4]_0 ,
    SR,
    clk,
    done_aux_i_2__6,
    a_in_2,
    done_aux_i_2__4,
    \count[4]_i_3__5 ,
    done_aux_i_3__4,
    \count[4]_i_6__6 ,
    next_out_3,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_2;
  output [2:0]Q;
  output \count_reg_reg[2] ;
  output [14:0]a_in_3;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output \count_reg_reg[4]_0 ;
  output [0:0]SR;
  input clk;
  input [4:0]done_aux_i_2__6;
  input [9:0]a_in_2;
  input done_aux_i_2__4;
  input \count[4]_i_3__5 ;
  input done_aux_i_3__4;
  input \count[4]_i_6__6 ;
  input next_out_3;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [9:0]a_in_2;
  wire [14:0]a_in_3;
  wire acks_out_reg_i_1__1_n_0;
  wire \asout_array[2]_7 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__1_n_0;
  wire clk;
  wire \count[4]_i_3__5 ;
  wire \count[4]_i_6__6 ;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[4] ;
  wire \count_reg_reg[4]_0 ;
  wire done_aux_i_2__4;
  wire [4:0]done_aux_i_2__6;
  wire done_aux_i_3__4;
  wire dut_n_10;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [0:0]j_reg;
  wire logic_n_10;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_2;
  wire next_out_3;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__6_n_0;
  wire [4:3]u_i;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__5 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_8),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_8),
        .D(logic_n_10),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_8),
        .D(dut_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_8),
        .D(logic_n_9),
        .Q(\asout_array[2]_7 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_8),
        .D(dut_n_8),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__1_n_0),
        .G(logic_n_7),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1__1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_2[0]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_2[1]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_2[2]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_2[3]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_2[4]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_2[5]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_2[6]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_2[7]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_2[8]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_2[9]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[14]));
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__1
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1__1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 dut
       (.D({dut_n_8,dut_n_9}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[2]_7 ,ce__0}),
        .Q({u_i,Q}),
        .a_in_2(a_in_2),
        .clk(clk),
        .\count[4]_i_3__5_0 (\count[4]_i_3__5 ),
        .\count[4]_i_6__6_0 (\count[4]_i_6__6 ),
        .\count_reg[0] (j_reg),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ),
        .\count_reg_reg[3]_0 (dut_n_10),
        .\count_reg_reg[4]_0 (dut_n_5),
        .\count_reg_reg[4]_1 (dut_n_6),
        .\count_reg_reg[4]_2 (dut_n_7),
        .done_aux_i_2__4_0(done_aux_i_2__4),
        .done_aux_i_3__4_0(done_aux_i_3__4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6 logic
       (.AR(reset_control),
        .D({logic_n_9,logic_n_10}),
        .E(logic_n_8),
        .\FSM_onehot_state_reg[1] (dut_n_10),
        .\FSM_onehot_state_reg[2] (logic_n_7),
        .Q(j_reg),
        .a_in_3({a_in_3[12:5],a_in_3[2:0]}),
        .clk(clk),
        .\count_reg[0]_0 (dut_n_6),
        .\count_reg_reg[0] ({nexts_out,\asout_array[2]_7 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[2]_2 (\count_reg_reg[2]_2 ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\count_reg_reg[4]_0 (\count_reg_reg[4]_0 ),
        .done_aux_i_2__6(done_aux_i_2__6),
        .done_aux_reg_0(dut_n_5),
        .done_aux_reg_1(dut_n_7),
        .next_out_3(next_out_3));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(next_out_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__6_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[2]_7 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__6
       (.I0(ce__0),
        .I1(\asout_array[2]_7 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__6_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7
   (AR,
    next_out_1,
    \FSM_onehot_state_reg[4]_0 ,
    \count_reg_reg[2] ,
    a_in_2,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[1] ,
    \count_reg_reg[1]_0 ,
    SR,
    done_s,
    ack_in_1__0,
    clk,
    ack_in_1,
    \count_reg_reg[0] ,
    Q,
    done_aux_i_5__2,
    next_out_2,
    nRst);
  output [0:0]AR;
  output next_out_1;
  output \FSM_onehot_state_reg[4]_0 ;
  output \count_reg_reg[2] ;
  output [9:0]a_in_2;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[1]_0 ;
  output [0:0]SR;
  output done_s;
  output ack_in_1__0;
  input clk;
  input ack_in_1;
  input \count_reg_reg[0] ;
  input [4:0]Q;
  input [2:0]done_aux_i_5__2;
  input next_out_2;
  input nRst;

  wire [0:0]AR;
  wire \FSM_onehot_state[4]_i_1__7_n_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [9:0]a_in_2;
  wire ack_in_1;
  wire ack_in_1__0;
  wire acks_out_reg_i_1_n_0;
  wire \asout_array[1]_8 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1_n_0;
  wire clk;
  wire count;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire done;
  wire [2:0]done_aux_i_5__2;
  wire done_s;
  wire dut_n_0;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [0:0]j_reg;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_1;
  wire next_out_2;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__7_n_0;
  wire [4:0]u_i;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__6 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__7 
       (.I0(ack_in_1),
        .I1(nRst),
        .O(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_7),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_7),
        .D(logic_n_9),
        .Q(ce__0),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_7),
        .D(dut_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_7),
        .D(logic_n_8),
        .Q(\asout_array[1]_8 ),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_7),
        .D(dut_n_7),
        .Q(nexts_out),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ack_in_1_reg_i_1
       (.I0(next_out_1),
        .I1(ack_in_1),
        .O(ack_in_1__0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    ack_in_1_reg_i_2
       (.I0(next_out_1),
        .I1(ack_in_1),
        .I2(\count_reg_reg[0] ),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1_n_0),
        .G(logic_n_6),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[9]));
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    done_s_reg_i_1
       (.I0(\count_reg_reg[0] ),
        .I1(next_out_1),
        .O(done_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 dut
       (.D({dut_n_7,dut_n_8}),
        .E(count),
        .\FSM_onehot_state_reg[4] ({\asout_array[1]_8 ,ce__0}),
        .Q(Q),
        .ack_in_1(ack_in_1),
        .clk(clk),
        .\count_reg_reg[3]_0 (dut_n_9),
        .\count_reg_reg[4]_0 (u_i),
        .\count_reg_reg[4]_1 (ce),
        .done(done),
        .j_reg(j_reg),
        .j_reg_0_sp_1(dut_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7 logic
       (.AR(reset_control),
        .D({logic_n_8,logic_n_9}),
        .E(logic_n_7),
        .\FSM_onehot_state_reg[1] (dut_n_9),
        .\FSM_onehot_state_reg[2] (logic_n_6),
        .Q({nexts_out,\asout_array[1]_8 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .a_in_2({a_in_2[7:5],a_in_2[2:0]}),
        .clk(clk),
        .\count_reg[4]_0 (count),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[1]_0 (\count_reg_reg[1]_0 ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2]_0 ),
        .done(done),
        .done_aux_i_5__2(done_aux_i_5__2),
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
        .G(acks_out_reg_i_1_n_0),
        .GE(1'b1),
        .Q(next_out_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__7_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[1]_8 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__7
       (.I0(ce__0),
        .I1(\asout_array[1]_8 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2__7_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens
   (flag,
    a,
    done,
    counter,
    clk,
    nRst);
  output flag;
  output [4:0]a;
  output done;
  output [11:0]counter;
  input clk;
  input nRst;

  wire [4:0]a;
  wire \a_in_1_reg[0]_i_1_n_0 ;
  wire \a_in_1_reg[1]_i_1_n_0 ;
  wire \a_in_1_reg[2]_i_1_n_0 ;
  wire \a_in_1_reg[3]_i_1_n_0 ;
  wire \a_in_1_reg[4]_i_1_n_0 ;
  wire \a_in_1_reg[4]_i_2_n_0 ;
  wire [9:0]a_in_2;
  wire [14:0]a_in_3;
  wire [19:0]a_in_4;
  wire [24:0]a_in_5;
  wire [29:0]a_in_6;
  wire [34:0]a_in_7;
  wire [39:0]a_in_8;
  wire [17:0]a_in_9;
  wire ack_in_1;
  wire ack_in_1__0;
  wire ack_in_2;
  wire ack_in_3;
  wire ack_in_4;
  wire ack_in_5;
  wire ack_in_6;
  wire ack_in_7;
  wire ack_in_8;
  wire ack_in_9;
  wire clk;
  wire [11:0]counter;
  wire \counter_s_reg[11]_i_3_n_0 ;
  wire \counter_s_reg[11]_i_4_n_0 ;
  wire done;
  wire done_s;
  wire flag;
  wire flag_s_reg_i_1_n_0;
  wire fsm_1_n_14;
  wire fsm_1_n_15;
  wire fsm_1_n_16;
  wire fsm_1_n_17;
  wire fsm_1_n_2;
  wire fsm_1_n_3;
  wire fsm_2_n_21;
  wire fsm_2_n_22;
  wire fsm_2_n_23;
  wire fsm_2_n_24;
  wire fsm_2_n_25;
  wire fsm_2_n_26;
  wire fsm_2_n_5;
  wire fsm_3_n_28;
  wire fsm_3_n_29;
  wire fsm_3_n_30;
  wire fsm_3_n_31;
  wire fsm_3_n_32;
  wire fsm_3_n_33;
  wire fsm_3_n_34;
  wire fsm_3_n_35;
  wire fsm_3_n_36;
  wire fsm_3_n_37;
  wire fsm_3_n_7;
  wire fsm_4_n_33;
  wire fsm_4_n_34;
  wire fsm_4_n_35;
  wire fsm_4_n_36;
  wire fsm_4_n_37;
  wire fsm_4_n_38;
  wire fsm_4_n_39;
  wire fsm_4_n_40;
  wire fsm_4_n_41;
  wire fsm_4_n_42;
  wire fsm_4_n_43;
  wire fsm_4_n_44;
  wire fsm_4_n_7;
  wire fsm_5_n_2;
  wire fsm_5_n_33;
  wire fsm_5_n_34;
  wire fsm_5_n_35;
  wire fsm_5_n_36;
  wire fsm_5_n_37;
  wire fsm_5_n_38;
  wire fsm_5_n_39;
  wire fsm_5_n_40;
  wire fsm_5_n_41;
  wire fsm_5_n_42;
  wire fsm_5_n_43;
  wire fsm_5_n_44;
  wire fsm_5_n_52;
  wire fsm_5_n_53;
  wire fsm_5_n_54;
  wire fsm_5_n_55;
  wire fsm_5_n_56;
  wire fsm_5_n_57;
  wire fsm_6_n_2;
  wire fsm_6_n_38;
  wire fsm_6_n_39;
  wire fsm_6_n_40;
  wire fsm_6_n_41;
  wire fsm_6_n_42;
  wire fsm_6_n_43;
  wire fsm_6_n_44;
  wire fsm_6_n_45;
  wire fsm_6_n_46;
  wire fsm_6_n_47;
  wire fsm_6_n_48;
  wire fsm_6_n_49;
  wire fsm_6_n_50;
  wire fsm_6_n_52;
  wire fsm_6_n_58;
  wire fsm_6_n_59;
  wire fsm_6_n_60;
  wire fsm_7_n_2;
  wire fsm_7_n_43;
  wire fsm_7_n_44;
  wire fsm_7_n_45;
  wire fsm_7_n_46;
  wire fsm_7_n_47;
  wire fsm_7_n_48;
  wire fsm_7_n_49;
  wire fsm_7_n_50;
  wire fsm_7_n_51;
  wire fsm_7_n_52;
  wire fsm_7_n_53;
  wire fsm_7_n_54;
  wire fsm_7_n_61;
  wire fsm_7_n_62;
  wire fsm_7_n_63;
  wire fsm_7_n_64;
  wire fsm_8_n_21;
  wire fsm_8_n_22;
  wire fsm_8_n_23;
  wire fsm_8_n_24;
  wire fsm_8_n_25;
  wire fsm_8_n_26;
  wire fsm_8_n_27;
  wire fsm_8_n_9;
  wire fsm_9_n_10;
  wire fsm_9_n_11;
  wire fsm_9_n_12;
  wire fsm_9_n_13;
  wire fsm_9_n_14;
  wire fsm_9_n_15;
  wire fsm_9_n_16;
  wire fsm_9_n_17;
  wire fsm_9_n_18;
  wire fsm_9_n_19;
  wire fsm_9_n_20;
  wire fsm_9_n_21;
  wire fsm_9_n_22;
  wire fsm_9_n_23;
  wire fsm_9_n_24;
  wire fsm_9_n_25;
  wire fsm_9_n_26;
  wire fsm_9_n_27;
  wire fsm_9_n_9;
  wire [1:0]\logic/j_reg ;
  wire [0:0]\logic/j_reg_4 ;
  wire [0:0]\logic/j_reg_6 ;
  wire [1:0]\logic/j_reg_7 ;
  wire [2:0]\logic/j_reg_9 ;
  wire nRst;
  wire next_out_1;
  wire next_out_2;
  wire next_out_3;
  wire next_out_4;
  wire next_out_5;
  wire next_out_6;
  wire next_out_7;
  wire next_out_8;
  wire next_out_9;
  wire [11:0]plusOp_9;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [2:0]u_i;
  wire [4:0]u_i_0;
  wire [4:0]u_i_1;
  wire [4:0]u_i_10;
  wire [4:0]u_i_2;
  wire [4:0]u_i_3;
  wire [4:0]u_i_5;
  wire [4:0]u_i_8;
  wire [3:3]NLW_plusOp_carry__1_CO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[0] 
       (.CLR(nRst),
        .D(\a_in_1_reg[0]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[0]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \a_in_1_reg[0]_i_1 
       (.I0(a[0]),
        .O(\a_in_1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[1] 
       (.CLR(nRst),
        .D(\a_in_1_reg[1]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[1]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_in_1_reg[1]_i_1 
       (.I0(a[1]),
        .I1(a[0]),
        .O(\a_in_1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[2] 
       (.CLR(nRst),
        .D(\a_in_1_reg[2]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \a_in_1_reg[2]_i_1 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .O(\a_in_1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[3] 
       (.CLR(nRst),
        .D(\a_in_1_reg[3]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \a_in_1_reg[3]_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .O(\a_in_1_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[4] 
       (.CLR(nRst),
        .D(\a_in_1_reg[4]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \a_in_1_reg[4]_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\a_in_1_reg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_in_1_reg[4]_i_2 
       (.I0(ack_in_1),
        .I1(flag),
        .O(\a_in_1_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    ack_in_1_reg
       (.D(ack_in_1__0),
        .G(fsm_1_n_2),
        .GE(1'b1),
        .PRE(nRst),
        .Q(ack_in_1));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[0] 
       (.CLR(nRst),
        .D(fsm_9_n_26),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[10] 
       (.CLR(nRst),
        .D(fsm_9_n_16),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[11] 
       (.CLR(nRst),
        .D(fsm_9_n_15),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[11]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_s_reg[11]_i_3 
       (.I0(counter[8]),
        .I1(counter[9]),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(counter[11]),
        .I5(counter[10]),
        .O(\counter_s_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_s_reg[11]_i_4 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(\counter_s_reg[11]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[1] 
       (.CLR(nRst),
        .D(fsm_9_n_25),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[2] 
       (.CLR(nRst),
        .D(fsm_9_n_24),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[3] 
       (.CLR(nRst),
        .D(fsm_9_n_23),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[4] 
       (.CLR(nRst),
        .D(fsm_9_n_22),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[5] 
       (.CLR(nRst),
        .D(fsm_9_n_21),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[6] 
       (.CLR(nRst),
        .D(fsm_9_n_20),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[7] 
       (.CLR(nRst),
        .D(fsm_9_n_19),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[8] 
       (.CLR(nRst),
        .D(fsm_9_n_18),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[9] 
       (.CLR(nRst),
        .D(fsm_9_n_17),
        .G(fsm_9_n_27),
        .GE(1'b1),
        .Q(counter[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_s_reg
       (.CLR(nRst),
        .D(next_out_1),
        .G(done_s),
        .GE(1'b1),
        .Q(done));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    flag_s_reg
       (.CLR(nRst),
        .D(1'b1),
        .G(flag_s_reg_i_1_n_0),
        .GE(1'b1),
        .Q(flag));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    flag_s_reg_i_1
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[4]),
        .O(flag_s_reg_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7 fsm_1
       (.AR(ack_in_2),
        .\FSM_onehot_state_reg[4]_0 (fsm_1_n_2),
        .Q(a),
        .SR(fsm_1_n_17),
        .a_in_2(a_in_2),
        .ack_in_1(ack_in_1),
        .ack_in_1__0(ack_in_1__0),
        .clk(clk),
        .\count_reg_reg[0] (flag),
        .\count_reg_reg[1] (fsm_1_n_15),
        .\count_reg_reg[1]_0 (fsm_1_n_16),
        .\count_reg_reg[2] (fsm_1_n_3),
        .\count_reg_reg[2]_0 (fsm_1_n_14),
        .done_aux_i_5__2(u_i),
        .done_s(done_s),
        .nRst(nRst),
        .next_out_1(next_out_1),
        .next_out_2(next_out_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6 fsm_2
       (.AR(ack_in_3),
        .\FSM_onehot_state_reg[0]_0 (fsm_1_n_17),
        .Q(u_i),
        .SR(fsm_2_n_26),
        .a_in_2(a_in_2),
        .a_in_3(a_in_3),
        .clk(clk),
        .\count[4]_i_3__5 (fsm_1_n_14),
        .\count[4]_i_6__6 (fsm_1_n_16),
        .\count_reg_reg[0] (ack_in_2),
        .\count_reg_reg[2] (fsm_2_n_5),
        .\count_reg_reg[2]_0 (fsm_2_n_21),
        .\count_reg_reg[2]_1 (fsm_2_n_23),
        .\count_reg_reg[2]_2 (fsm_2_n_24),
        .\count_reg_reg[4] (fsm_2_n_22),
        .\count_reg_reg[4]_0 (fsm_2_n_25),
        .done_aux_i_2__4(fsm_1_n_3),
        .done_aux_i_2__6(u_i_0),
        .done_aux_i_3__4(fsm_1_n_15),
        .nRst(nRst),
        .next_out_2(next_out_2),
        .next_out_3(next_out_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5 fsm_3
       (.AR(ack_in_4),
        .\FSM_onehot_state_reg[0]_0 (fsm_2_n_26),
        .Q(u_i_0),
        .SR(fsm_3_n_37),
        .a_in_3(a_in_3),
        .a_in_4(a_in_4),
        .clk(clk),
        .\count[4]_i_3__4 (fsm_4_n_40),
        .\count[4]_i_4__5 (fsm_2_n_24),
        .\count[4]_i_5__4 (fsm_4_n_41),
        .\count[4]_i_6__5 (fsm_2_n_21),
        .\count_reg[0] (fsm_2_n_25),
        .\count_reg_reg[0] (fsm_3_n_35),
        .\count_reg_reg[0]_0 (fsm_3_n_36),
        .\count_reg_reg[0]_1 (ack_in_3),
        .\count_reg_reg[1] (fsm_3_n_30),
        .\count_reg_reg[1]_0 (fsm_3_n_33),
        .\count_reg_reg[2] (fsm_3_n_7),
        .\count_reg_reg[2]_0 (fsm_3_n_28),
        .\count_reg_reg[4] (fsm_3_n_29),
        .\count_reg_reg[4]_0 (fsm_3_n_31),
        .\count_reg_reg[4]_1 (fsm_3_n_32),
        .\count_reg_reg[4]_2 (fsm_3_n_34),
        .done_aux_i_2__3(u_i_1),
        .done_aux_i_2__3_0(fsm_4_n_42),
        .done_aux_i_3__3(fsm_2_n_23),
        .done_aux_i_4__1(fsm_4_n_43),
        .done_aux_i_5__1(fsm_2_n_5),
        .done_aux_reg(fsm_2_n_22),
        .nRst(nRst),
        .next_out_3(next_out_3),
        .next_out_4(next_out_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4 fsm_4
       (.AR(ack_in_5),
        .\FSM_onehot_state_reg[0]_0 (fsm_3_n_37),
        .Q(u_i_1),
        .SR(fsm_4_n_44),
        .a_in_4(a_in_4),
        .a_in_5(a_in_5),
        .clk(clk),
        .\count[4]_i_4__4 (fsm_3_n_28),
        .\count[4]_i_5__4 (fsm_3_n_35),
        .\count[4]_i_7__2 (fsm_5_n_55),
        .\count[4]_i_7__3 (fsm_3_n_33),
        .\count_reg[0] (\logic/j_reg ),
        .\count_reg[0]_0 (fsm_5_n_54),
        .\count_reg[0]_1 (fsm_3_n_34),
        .\count_reg[0]_2 (fsm_3_n_32),
        .\count_reg_reg[0] (fsm_4_n_35),
        .\count_reg_reg[0]_0 (fsm_4_n_39),
        .\count_reg_reg[0]_1 (ack_in_4),
        .\count_reg_reg[1] (fsm_4_n_36),
        .\count_reg_reg[1]_0 (fsm_4_n_38),
        .\count_reg_reg[2] (fsm_4_n_7),
        .\count_reg_reg[2]_0 (fsm_4_n_33),
        .\count_reg_reg[2]_1 (fsm_4_n_41),
        .\count_reg_reg[2]_2 (fsm_4_n_43),
        .\count_reg_reg[3] (fsm_4_n_40),
        .\count_reg_reg[3]_0 (fsm_4_n_42),
        .done_aux_i_3__1(fsm_5_n_52),
        .done_aux_i_3__2(fsm_3_n_7),
        .done_aux_i_4__1(fsm_3_n_30),
        .done_aux_i_6__0(fsm_3_n_36),
        .done_aux_reg(fsm_3_n_29),
        .done_aux_reg_0(fsm_3_n_31),
        .done_aux_reg_i_2(fsm_5_n_56),
        .done_aux_reg_i_7__2(u_i_2),
        .done_aux_reg_i_7__2_0(fsm_5_n_53),
        .\j_reg[0] (fsm_4_n_34),
        .\j_reg[0]_0 (fsm_4_n_37),
        .nRst(nRst),
        .next_out_4(next_out_4),
        .next_out_5(next_out_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3 fsm_5
       (.AR(ack_in_6),
        .\FSM_onehot_state_reg[0]_0 (fsm_4_n_44),
        .\FSM_onehot_state_reg[3]_0 (fsm_5_n_2),
        .\FSM_onehot_state_reg[3]_1 (fsm_5_n_35),
        .\FSM_onehot_state_reg[3]_2 (fsm_5_n_56),
        .Q(u_i_3),
        .SR(fsm_5_n_57),
        .a_in_5(a_in_5),
        .a_in_6(a_in_6),
        .clk(clk),
        .\count[4]_i_10__2 (fsm_6_n_59),
        .\count[4]_i_4__3 (fsm_4_n_33),
        .\count[4]_i_6__3 (fsm_4_n_38),
        .\count_reg[0] (fsm_4_n_37),
        .\count_reg_reg[0] (fsm_5_n_33),
        .\count_reg_reg[0]_0 (fsm_5_n_39),
        .\count_reg_reg[0]_1 (ack_in_5),
        .\count_reg_reg[1] (fsm_5_n_34),
        .\count_reg_reg[1]_0 (fsm_5_n_42),
        .\count_reg_reg[2] (fsm_5_n_43),
        .\count_reg_reg[2]_0 (fsm_5_n_44),
        .\count_reg_reg[2]_1 (fsm_5_n_53),
        .\count_reg_reg[2]_2 (fsm_5_n_55),
        .\count_reg_reg[4] (fsm_5_n_36),
        .\count_reg_reg[4]_0 (fsm_5_n_37),
        .\count_reg_reg[4]_1 (fsm_5_n_40),
        .\count_reg_reg[4]_2 (fsm_5_n_41),
        .\count_reg_reg[4]_3 (u_i_2),
        .\count_reg_reg[4]_4 (fsm_5_n_52),
        .\count_reg_reg[4]_5 (fsm_5_n_54),
        .done_aux_i_2__2(\logic/j_reg_4 ),
        .done_aux_i_4__0(fsm_4_n_7),
        .done_aux_reg(fsm_4_n_34),
        .done_aux_reg_i_3__0(fsm_6_n_52),
        .done_aux_reg_i_6__2(fsm_4_n_39),
        .done_aux_reg_i_7__1(fsm_6_n_58),
        .done_aux_reg_i_7__2(fsm_4_n_36),
        .done_aux_reg_i_7__2_0(fsm_4_n_35),
        .\j_reg[0] (fsm_5_n_38),
        .\j_reg[1] (\logic/j_reg ),
        .nRst(nRst),
        .next_out_5(next_out_5),
        .next_out_6(next_out_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2 fsm_6
       (.AR(ack_in_7),
        .\FSM_onehot_state_reg[0]_0 (fsm_5_n_57),
        .\FSM_onehot_state_reg[3]_0 (fsm_6_n_49),
        .Q(u_i_5),
        .SR(fsm_6_n_60),
        .a_in_6(a_in_6),
        .a_in_7(a_in_7),
        .clk(clk),
        .\count[4]_i_11__1 (fsm_7_n_63),
        .\count[4]_i_5__2 (fsm_5_n_44),
        .\count[4]_i_9__1 (fsm_5_n_42),
        .\count_reg[0] (fsm_5_n_36),
        .\count_reg[0]_0 (fsm_5_n_41),
        .\count_reg[0]_1 (fsm_5_n_40),
        .\count_reg[0]_2 (fsm_5_n_37),
        .\count_reg_reg[0] (fsm_6_n_40),
        .\count_reg_reg[0]_0 (fsm_6_n_50),
        .\count_reg_reg[0]_1 (ack_in_6),
        .\count_reg_reg[1] (fsm_6_n_41),
        .\count_reg_reg[1]_0 (fsm_6_n_46),
        .\count_reg_reg[2] (fsm_6_n_2),
        .\count_reg_reg[2]_0 (fsm_6_n_38),
        .\count_reg_reg[2]_1 (fsm_6_n_58),
        .\count_reg_reg[2]_2 (fsm_6_n_59),
        .\count_reg_reg[4] (fsm_6_n_42),
        .\count_reg_reg[4]_0 (fsm_6_n_43),
        .\count_reg_reg[4]_1 (fsm_6_n_44),
        .\count_reg_reg[4]_2 (fsm_6_n_45),
        .\count_reg_reg[4]_3 (fsm_6_n_47),
        .\count_reg_reg[4]_4 (fsm_6_n_52),
        .\count_reg_reg[4]_5 (u_i_3),
        .done_aux_i_2__1(\logic/j_reg_6 ),
        .done_aux_i_2__2(fsm_5_n_2),
        .done_aux_i_2__2_0(fsm_5_n_35),
        .done_aux_reg(fsm_5_n_38),
        .done_aux_reg_i_4__0(fsm_7_n_61),
        .done_aux_reg_i_6__1(fsm_5_n_39),
        .done_aux_reg_i_7__1(fsm_5_n_34),
        .done_aux_reg_i_7__1_0(fsm_5_n_33),
        .done_aux_reg_i_9__0(fsm_7_n_62),
        .done_aux_reg_i_9__1(fsm_5_n_43),
        .\j_reg[0] (fsm_6_n_39),
        .\j_reg[0]_0 (fsm_6_n_48),
        .\j_reg[0]_1 (\logic/j_reg_4 ),
        .nRst(nRst),
        .next_out_6(next_out_6),
        .next_out_7(next_out_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1 fsm_7
       (.AR(ack_in_8),
        .\FSM_onehot_state_reg[0]_0 (fsm_6_n_60),
        .\FSM_onehot_state_reg[3]_0 (fsm_7_n_2),
        .\FSM_onehot_state_reg[3]_1 (fsm_7_n_54),
        .Q(u_i_8),
        .SR(fsm_7_n_64),
        .a_in_7(a_in_7),
        .a_in_8(a_in_8),
        .clk(clk),
        .\count[4]_i_10__0 (fsm_8_n_26),
        .\count[4]_i_5__1 (fsm_6_n_46),
        .\count[4]_i_9__0 (fsm_6_n_38),
        .\count_reg[0] (\logic/j_reg_7 ),
        .\count_reg[0]_0 (fsm_6_n_42),
        .\count_reg[0]_1 (fsm_6_n_47),
        .\count_reg[0]_2 (fsm_6_n_45),
        .\count_reg[0]_3 (fsm_6_n_44),
        .\count_reg[0]_4 (fsm_6_n_43),
        .\count_reg_reg[0] (fsm_7_n_44),
        .\count_reg_reg[0]_0 (fsm_7_n_48),
        .\count_reg_reg[0]_1 (ack_in_7),
        .\count_reg_reg[1] (fsm_7_n_43),
        .\count_reg_reg[1]_0 (fsm_7_n_53),
        .\count_reg_reg[2] (fsm_7_n_45),
        .\count_reg_reg[2]_0 (fsm_7_n_46),
        .\count_reg_reg[2]_1 (fsm_7_n_62),
        .\count_reg_reg[2]_2 (fsm_7_n_63),
        .\count_reg_reg[4] (fsm_7_n_49),
        .\count_reg_reg[4]_0 (fsm_7_n_50),
        .\count_reg_reg[4]_1 (fsm_7_n_51),
        .\count_reg_reg[4]_2 (u_i_5),
        .\count_reg_reg[4]_3 (fsm_7_n_61),
        .done_aux_i_2__1(fsm_6_n_49),
        .done_aux_i_3__0(fsm_6_n_2),
        .done_aux_reg(fsm_6_n_39),
        .done_aux_reg_0(fsm_6_n_48),
        .done_aux_reg_i_10(fsm_8_n_25),
        .done_aux_reg_i_12__0(fsm_6_n_50),
        .done_aux_reg_i_4(fsm_8_n_24),
        .done_aux_reg_i_9__0(fsm_6_n_41),
        .done_aux_reg_i_9__0_0(fsm_6_n_40),
        .\j_reg[0] (fsm_7_n_47),
        .\j_reg[0]_0 (fsm_7_n_52),
        .\j_reg[0]_1 (\logic/j_reg_6 ),
        .nRst(nRst),
        .next_out_7(next_out_7),
        .next_out_8(next_out_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0 fsm_8
       (.AR(ack_in_9),
        .\FSM_onehot_state_reg[0]_0 (fsm_7_n_64),
        .\FSM_onehot_state_reg[3]_0 ({a_in_9[17:15],a_in_9[12:10],a_in_9[4:0]}),
        .Q(u_i_8),
        .SR(fsm_8_n_27),
        .a_in_8(a_in_8),
        .clk(clk),
        .\count[4]_i_11__0 (fsm_7_n_48),
        .\count[4]_i_8 (fsm_7_n_46),
        .\count_reg[0] (\logic/j_reg_9 ),
        .\count_reg[0]_0 (fsm_7_n_50),
        .\count_reg[0]_1 (fsm_7_n_49),
        .\count_reg[0]_2 (fsm_7_n_47),
        .\count_reg[4]_i_14 (fsm_9_n_11),
        .\count_reg[4]_i_17 (fsm_9_n_10),
        .\count_reg[4]_i_17_0 (fsm_9_n_9),
        .\count_reg_reg[0] (ack_in_8),
        .\count_reg_reg[2] (fsm_8_n_21),
        .\count_reg_reg[2]_0 (fsm_8_n_22),
        .\count_reg_reg[2]_1 (fsm_8_n_25),
        .\count_reg_reg[2]_2 (fsm_8_n_26),
        .\count_reg_reg[4] (fsm_8_n_24),
        .done_aux_i_2__0(fsm_7_n_2),
        .done_aux_i_2__0_0(fsm_7_n_54),
        .done_aux_reg(fsm_7_n_52),
        .done_aux_reg_0(fsm_7_n_51),
        .done_aux_reg_i_10(fsm_7_n_44),
        .done_aux_reg_i_10_0(fsm_7_n_43),
        .done_aux_reg_i_13(fsm_9_n_14),
        .done_aux_reg_i_16(fsm_9_n_13),
        .done_aux_reg_i_16_0(fsm_9_n_12),
        .done_aux_reg_i_6(u_i_10),
        .done_aux_reg_i_8__0(fsm_7_n_45),
        .done_aux_reg_i_9(fsm_7_n_53),
        .\j_reg[1] (\logic/j_reg_7 ),
        .\j_reg[2] (fsm_8_n_9),
        .\j_reg[2]_0 (fsm_8_n_23),
        .nRst(nRst),
        .next_out_8(next_out_8),
        .next_out_9(next_out_9));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm fsm_9
       (.AR(ack_in_9),
        .D({fsm_9_n_15,fsm_9_n_16,fsm_9_n_17,fsm_9_n_18,fsm_9_n_19,fsm_9_n_20,fsm_9_n_21,fsm_9_n_22,fsm_9_n_23,fsm_9_n_24,fsm_9_n_25,fsm_9_n_26}),
        .E(fsm_9_n_27),
        .Q(u_i_10),
        .SR(fsm_8_n_27),
        .clk(clk),
        .\count[4]_i_29 ({a_in_9[17:15],a_in_9[12:10],a_in_9[4:0]}),
        .\count[4]_i_3 (fsm_8_n_22),
        .\count_reg[0] (fsm_8_n_23),
        .\count_reg_reg[2] (fsm_9_n_9),
        .\count_reg_reg[2]_0 (fsm_9_n_10),
        .\count_reg_reg[2]_1 (fsm_9_n_11),
        .\count_reg_reg[2]_2 (fsm_9_n_12),
        .\count_reg_reg[2]_3 (fsm_9_n_13),
        .\count_reg_reg[2]_4 (fsm_9_n_14),
        .\counter[11] (\counter_s_reg[11]_i_3_n_0 ),
        .\counter[11]_0 (\counter_s_reg[11]_i_4_n_0 ),
        .done_aux_i_2(fsm_8_n_21),
        .done_aux_reg(fsm_8_n_9),
        .\j_reg[2] (\logic/j_reg_9 ),
        .next_out_9(next_out_9),
        .plusOp_9(plusOp_9));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[1],1'b0}),
        .O(plusOp_9[3:0]),
        .S({counter[3:2],plusOp_carry_i_1_n_0,counter[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_9[7:4]),
        .S(counter[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3],plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_9[11:8]),
        .S(counter[11:8]));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(counter[1]),
        .O(plusOp_carry_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter
   (Q,
    \j_reg[0] ,
    \j_reg[0]_0 ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    \count_reg_reg[2]_3 ,
    \count_reg_reg[2]_4 ,
    \count_reg_reg[2]_5 ,
    D,
    \count_reg_reg[3]_0 ,
    \count_reg[0] ,
    \count[4]_i_29 ,
    done_aux_i_2_0,
    \count[4]_i_3_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    AR);
  output [4:0]Q;
  output \j_reg[0] ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output \count_reg_reg[2]_3 ;
  output \count_reg_reg[2]_4 ;
  output \count_reg_reg[2]_5 ;
  output [1:0]D;
  output \count_reg_reg[3]_0 ;
  input [1:0]\count_reg[0] ;
  input [10:0]\count[4]_i_29 ;
  input done_aux_i_2_0;
  input \count[4]_i_3_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__3_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire \count[4]_i_11_n_0 ;
  wire \count[4]_i_12_n_0 ;
  wire [10:0]\count[4]_i_29 ;
  wire \count[4]_i_3_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[4]_i_6_n_0 ;
  wire [4:0]count_next;
  wire [1:0]\count_reg[0] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[2]_3 ;
  wire \count_reg_reg[2]_4 ;
  wire \count_reg_reg[2]_5 ;
  wire \count_reg_reg[3]_0 ;
  wire done_aux_i_10__3_n_0;
  wire done_aux_i_11_n_0;
  wire done_aux_i_2_0;
  wire done_aux_i_4_n_0;
  wire done_aux_i_5_n_0;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0003000000020000)) 
    \FSM_onehot_state[4]_i_3__2 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[4]_i_4__3_n_0 ),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[4]_i_4__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_state[4]_i_4__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_11 
       (.I0(Q[2]),
        .I1(\count[4]_i_29 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\count[4]_i_29 [1]),
        .I5(\count[4]_i_29 [2]),
        .O(\count[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_12 
       (.I0(Q[2]),
        .I1(\count[4]_i_29 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\count[4]_i_29 [1]),
        .I5(\count[4]_i_29 [2]),
        .O(\count[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054511040)) 
    \count[4]_i_3 
       (.I0(\count_reg[0] [0]),
        .I1(\count[4]_i_29 [4]),
        .I2(\count[4]_i_5_n_0 ),
        .I3(Q[4]),
        .I4(\count[4]_i_6_n_0 ),
        .I5(\count_reg[0] [1]),
        .O(\j_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FF7DF)) 
    \count[4]_i_40 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count[4]_i_29 [5]),
        .I4(\count[4]_i_29 [6]),
        .I5(\count[4]_i_29 [7]),
        .O(\count_reg_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FDFF7FD)) 
    \count[4]_i_49 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count[4]_i_29 [8]),
        .I4(\count[4]_i_29 [9]),
        .I5(\count[4]_i_29 [10]),
        .O(\count_reg_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_5 
       (.I0(\count[4]_i_11_n_0 ),
        .I1(\count[4]_i_29 [3]),
        .I2(\count[4]_i_12_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFEFFBFEFFFFFFFF)) 
    \count[4]_i_50 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count[4]_i_29 [8]),
        .I4(\count[4]_i_29 [9]),
        .I5(\count[4]_i_29 [10]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_6 
       (.I0(\count[4]_i_12_n_0 ),
        .I1(\count[4]_i_29 [3]),
        .I2(\count[4]_i_11_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_3_0 ),
        .O(\count[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00EFFF00)) 
    \count_reg[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h3CCCC8CC)) 
    \count_reg[3]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[4]),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_10__3
       (.I0(Q[2]),
        .I1(\count[4]_i_29 [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\count[4]_i_29 [1]),
        .I5(\count[4]_i_29 [2]),
        .O(done_aux_i_10__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_11
       (.I0(Q[2]),
        .I1(\count[4]_i_29 [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\count[4]_i_29 [1]),
        .I5(\count[4]_i_29 [2]),
        .O(done_aux_i_11_n_0));
  LUT6 #(
    .INIT(64'h00000000FEFBBAEA)) 
    done_aux_i_2
       (.I0(\count_reg[0] [0]),
        .I1(\count[4]_i_29 [4]),
        .I2(done_aux_i_4_n_0),
        .I3(Q[4]),
        .I4(done_aux_i_5_n_0),
        .I5(\count_reg[0] [1]),
        .O(\j_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000802008)) 
    done_aux_i_39
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count[4]_i_29 [5]),
        .I4(\count[4]_i_29 [6]),
        .I5(\count[4]_i_29 [7]),
        .O(\count_reg_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_4
       (.I0(done_aux_i_10__3_n_0),
        .I1(\count[4]_i_29 [3]),
        .I2(done_aux_i_11_n_0),
        .I3(Q[3]),
        .O(done_aux_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000080082002)) 
    done_aux_i_48
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count[4]_i_29 [8]),
        .I4(\count[4]_i_29 [9]),
        .I5(\count[4]_i_29 [10]),
        .O(\count_reg_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h4004100100000000)) 
    done_aux_i_49
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count[4]_i_29 [8]),
        .I4(\count[4]_i_29 [9]),
        .I5(\count[4]_i_29 [10]),
        .O(\count_reg_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_5
       (.I0(done_aux_i_11_n_0),
        .I1(\count[4]_i_29 [3]),
        .I2(done_aux_i_10__3_n_0),
        .I3(Q[3]),
        .I4(done_aux_i_2_0),
        .O(done_aux_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0
   (Q,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[4]_1 ,
    \j_reg[1] ,
    \count_reg_reg[2]_1 ,
    \FSM_onehot_state_reg[3] ,
    D,
    \count_reg_reg[3]_0 ,
    a_in_8,
    done_aux_reg_i_10,
    done_aux_reg_i_10_0,
    done_aux_reg_i_8__0_0,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count[4]_i_8_0 ,
    \count[4]_i_11__0_0 ,
    done_aux_reg_i_9_0,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [4:0]Q;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[4]_1 ;
  output \j_reg[1] ;
  output \count_reg_reg[2]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output [1:0]D;
  output \count_reg_reg[3]_0 ;
  input [13:0]a_in_8;
  input done_aux_reg_i_10;
  input done_aux_reg_i_10_0;
  input done_aux_reg_i_8__0_0;
  input \count_reg[0] ;
  input [1:0]\count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count[4]_i_8_0 ;
  input \count[4]_i_11__0_0 ;
  input done_aux_reg_i_9_0;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__4_n_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [13:0]a_in_8;
  wire clk;
  wire \count[4]_i_11__0_0 ;
  wire \count[4]_i_11__0_n_0 ;
  wire \count[4]_i_19_n_0 ;
  wire \count[4]_i_20__0_n_0 ;
  wire \count[4]_i_25__0_n_0 ;
  wire \count[4]_i_26__0_n_0 ;
  wire \count[4]_i_37__0_n_0 ;
  wire \count[4]_i_38__0_n_0 ;
  wire \count[4]_i_46__0_n_0 ;
  wire \count[4]_i_47__0_n_0 ;
  wire \count[4]_i_8_0 ;
  wire \count[4]_i_8_n_0 ;
  wire [4:0]count_next;
  wire \count_reg[0] ;
  wire [1:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire done_aux_i_18_n_0;
  wire done_aux_i_19__0_n_0;
  wire done_aux_i_20__0_n_0;
  wire done_aux_i_21__0_n_0;
  wire done_aux_i_35__0_n_0;
  wire done_aux_i_36__2_n_0;
  wire done_aux_i_38__0_n_0;
  wire done_aux_i_39__0_n_0;
  wire done_aux_reg_i_10;
  wire done_aux_reg_i_10_0;
  wire done_aux_reg_i_8__0_0;
  wire done_aux_reg_i_9_0;
  wire \j_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0003000000020000)) 
    \FSM_onehot_state[4]_i_3__3 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[4]_i_4__4_n_0 ),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[4]_i_4__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_state[4]_i_4__4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_11__0 
       (.I0(a_in_8[13]),
        .I1(\count[4]_i_25__0_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_26__0_n_0 ),
        .O(\count[4]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_19 
       (.I0(\count[4]_i_37__0_n_0 ),
        .I1(a_in_8[3]),
        .I2(\count[4]_i_38__0_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_20__0 
       (.I0(\count[4]_i_38__0_n_0 ),
        .I1(a_in_8[3]),
        .I2(\count[4]_i_37__0_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_8_0 ),
        .O(\count[4]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_25__0 
       (.I0(\count[4]_i_46__0_n_0 ),
        .I1(a_in_8[12]),
        .I2(\count[4]_i_47__0_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_25__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_26__0 
       (.I0(\count[4]_i_47__0_n_0 ),
        .I1(a_in_8[12]),
        .I2(\count[4]_i_46__0_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_11__0_0 ),
        .O(\count[4]_i_26__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_37__0 
       (.I0(Q[2]),
        .I1(a_in_8[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_8[1]),
        .I5(a_in_8[2]),
        .O(\count[4]_i_37__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_38__0 
       (.I0(Q[2]),
        .I1(a_in_8[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_8[1]),
        .I5(a_in_8[2]),
        .O(\count[4]_i_38__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FF7DF)) 
    \count[4]_i_44__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_8[5]),
        .I4(a_in_8[6]),
        .I5(a_in_8[7]),
        .O(\count_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hBFEFFBFEFFFFFFFF)) 
    \count[4]_i_46__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_8[9]),
        .I4(a_in_8[10]),
        .I5(a_in_8[11]),
        .O(\count[4]_i_46__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FDFF7FD)) 
    \count[4]_i_47__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_8[9]),
        .I4(a_in_8[10]),
        .I5(a_in_8[11]),
        .O(\count[4]_i_47__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_4__0 
       (.I0(\count[4]_i_8_n_0 ),
        .I1(\count_reg[0] ),
        .I2(\count_reg[0]_0 [1]),
        .I3(\count_reg[0]_1 ),
        .I4(\count_reg[0]_0 [0]),
        .I5(\count[4]_i_11__0_n_0 ),
        .O(\j_reg[1] ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_8 
       (.I0(a_in_8[4]),
        .I1(\count[4]_i_19_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_20__0_n_0 ),
        .O(\count[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00EFFF00)) 
    \count_reg[1]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h3CCCC8CC)) 
    \count_reg[3]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[4]),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_18
       (.I0(Q[4]),
        .I1(done_aux_i_35__0_n_0),
        .I2(a_in_8[3]),
        .I3(done_aux_i_36__2_n_0),
        .I4(Q[3]),
        .I5(done_aux_reg_i_8__0_0),
        .O(done_aux_i_18_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_19__0
       (.I0(done_aux_reg_i_8__0_0),
        .I1(Q[4]),
        .I2(done_aux_i_36__2_n_0),
        .I3(a_in_8[3]),
        .I4(done_aux_i_35__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_19__0_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_20__0
       (.I0(Q[4]),
        .I1(done_aux_i_38__0_n_0),
        .I2(a_in_8[12]),
        .I3(done_aux_i_39__0_n_0),
        .I4(Q[3]),
        .I5(done_aux_reg_i_9_0),
        .O(done_aux_i_20__0_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_21__0
       (.I0(done_aux_reg_i_9_0),
        .I1(Q[4]),
        .I2(done_aux_i_39__0_n_0),
        .I3(a_in_8[12]),
        .I4(done_aux_i_38__0_n_0),
        .I5(Q[3]),
        .O(done_aux_i_21__0_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_22__0
       (.I0(Q[4]),
        .I1(\count_reg_reg[2]_0 ),
        .I2(a_in_8[8]),
        .I3(done_aux_reg_i_10),
        .I4(Q[3]),
        .I5(done_aux_reg_i_10_0),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_35__0
       (.I0(Q[2]),
        .I1(a_in_8[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_8[1]),
        .I5(a_in_8[2]),
        .O(done_aux_i_35__0_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_36__2
       (.I0(Q[2]),
        .I1(a_in_8[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_8[1]),
        .I5(a_in_8[2]),
        .O(done_aux_i_36__2_n_0));
  LUT6 #(
    .INIT(64'h0000000080082002)) 
    done_aux_i_38__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_8[9]),
        .I4(a_in_8[10]),
        .I5(a_in_8[11]),
        .O(done_aux_i_38__0_n_0));
  LUT6 #(
    .INIT(64'h4004100100000000)) 
    done_aux_i_39__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_8[9]),
        .I4(a_in_8[10]),
        .I5(a_in_8[11]),
        .O(done_aux_i_39__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000802008)) 
    done_aux_i_41__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_8[5]),
        .I4(a_in_8[6]),
        .I5(a_in_8[7]),
        .O(\count_reg_reg[2]_0 ));
  MUXF7 done_aux_reg_i_8__0
       (.I0(done_aux_i_18_n_0),
        .I1(done_aux_i_19__0_n_0),
        .O(\count_reg_reg[4]_1 ),
        .S(a_in_8[4]));
  MUXF7 done_aux_reg_i_9
       (.I0(done_aux_i_20__0_n_0),
        .I1(done_aux_i_21__0_n_0),
        .O(\FSM_onehot_state_reg[3] ),
        .S(a_in_8[13]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1
   (\count_reg_reg[4]_0 ,
    Q,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[4]_3 ,
    \count_reg_reg[2]_1 ,
    \FSM_onehot_state_reg[3] ,
    D,
    \count_reg_reg[3]_0 ,
    a_in_7,
    done_aux_i_2__1,
    done_aux_i_3__0_0,
    \count[4]_i_9__0_0 ,
    done_aux_reg_i_9__0,
    done_aux_reg_i_9__0_0,
    \count[4]_i_5__1_0 ,
    done_aux_reg_i_12__0_0,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output \count_reg_reg[4]_0 ;
  output [4:0]Q;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[4]_3 ;
  output \count_reg_reg[2]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output [1:0]D;
  output \count_reg_reg[3]_0 ;
  input [13:0]a_in_7;
  input [0:0]done_aux_i_2__1;
  input done_aux_i_3__0_0;
  input \count[4]_i_9__0_0 ;
  input done_aux_reg_i_9__0;
  input done_aux_reg_i_9__0_0;
  input \count[4]_i_5__1_0 ;
  input done_aux_reg_i_12__0_0;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [13:0]a_in_7;
  wire clk;
  wire \count[4]_i_12__1_n_0 ;
  wire \count[4]_i_13__1_n_0 ;
  wire \count[4]_i_20__1_n_0 ;
  wire \count[4]_i_21__1_n_0 ;
  wire \count[4]_i_26__1_n_0 ;
  wire \count[4]_i_27__1_n_0 ;
  wire \count[4]_i_38__1_n_0 ;
  wire \count[4]_i_39__1_n_0 ;
  wire \count[4]_i_5__1_0 ;
  wire \count[4]_i_9__0_0 ;
  wire [4:0]count_next;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire \count_reg_reg[4]_3 ;
  wire done_aux_i_15__0_n_0;
  wire done_aux_i_16__2_n_0;
  wire done_aux_i_24__1_n_0;
  wire done_aux_i_25__1_n_0;
  wire [0:0]done_aux_i_2__1;
  wire done_aux_i_39__1_n_0;
  wire done_aux_i_3__0_0;
  wire done_aux_i_40__0_n_0;
  wire done_aux_i_7_n_0;
  wire done_aux_i_8_n_0;
  wire done_aux_reg_i_12__0_0;
  wire done_aux_reg_i_9__0;
  wire done_aux_reg_i_9__0_0;

  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0003000000020000)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[4]_i_4_n_0 ),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_12__1 
       (.I0(\count[4]_i_26__1_n_0 ),
        .I1(a_in_7[12]),
        .I2(\count[4]_i_27__1_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_13__1 
       (.I0(\count[4]_i_27__1_n_0 ),
        .I1(a_in_7[12]),
        .I2(\count[4]_i_26__1_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_5__1_0 ),
        .O(\count[4]_i_13__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_20__1 
       (.I0(\count[4]_i_38__1_n_0 ),
        .I1(a_in_7[3]),
        .I2(\count[4]_i_39__1_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_9__0_0 ),
        .O(\count[4]_i_20__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_21__1 
       (.I0(\count[4]_i_39__1_n_0 ),
        .I1(a_in_7[3]),
        .I2(\count[4]_i_38__1_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_21__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFBEFFEFFFFFFFF)) 
    \count[4]_i_26__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_7[9]),
        .I4(a_in_7[10]),
        .I5(a_in_7[11]),
        .O(\count[4]_i_26__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FF7DFFD)) 
    \count[4]_i_27__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_7[9]),
        .I4(a_in_7[10]),
        .I5(a_in_7[11]),
        .O(\count[4]_i_27__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_38__1 
       (.I0(Q[2]),
        .I1(a_in_7[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_7[1]),
        .I5(a_in_7[2]),
        .O(\count[4]_i_38__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_39__1 
       (.I0(Q[2]),
        .I1(a_in_7[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_7[1]),
        .I5(a_in_7[2]),
        .O(\count[4]_i_39__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FF7DF)) 
    \count[4]_i_45__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_7[5]),
        .I4(a_in_7[6]),
        .I5(a_in_7[7]),
        .O(\count_reg_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_5__1 
       (.I0(a_in_7[13]),
        .I1(\count[4]_i_12__1_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_13__1_n_0 ),
        .O(\count_reg_reg[4]_3 ));
  LUT5 #(
    .INIT(32'h0000B8E2)) 
    \count[4]_i_9__0 
       (.I0(\count[4]_i_20__1_n_0 ),
        .I1(Q[4]),
        .I2(\count[4]_i_21__1_n_0 ),
        .I3(a_in_7[4]),
        .I4(done_aux_i_2__1),
        .O(\count_reg_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \count_reg[1]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[4]),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_15__0
       (.I0(Q[2]),
        .I1(a_in_7[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_7[1]),
        .I5(a_in_7[2]),
        .O(done_aux_i_15__0_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_16__2
       (.I0(Q[2]),
        .I1(a_in_7[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_7[1]),
        .I5(a_in_7[2]),
        .O(done_aux_i_16__2_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_18__0
       (.I0(Q[4]),
        .I1(\count_reg_reg[2]_0 ),
        .I2(a_in_7[8]),
        .I3(done_aux_reg_i_9__0),
        .I4(Q[3]),
        .I5(done_aux_reg_i_9__0_0),
        .O(\count_reg_reg[4]_2 ));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_24__1
       (.I0(Q[4]),
        .I1(done_aux_i_39__1_n_0),
        .I2(a_in_7[12]),
        .I3(done_aux_i_40__0_n_0),
        .I4(Q[3]),
        .I5(done_aux_reg_i_12__0_0),
        .O(done_aux_i_24__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_25__1
       (.I0(done_aux_reg_i_12__0_0),
        .I1(Q[4]),
        .I2(done_aux_i_40__0_n_0),
        .I3(a_in_7[12]),
        .I4(done_aux_i_39__1_n_0),
        .I5(Q[3]),
        .O(done_aux_i_25__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000802008)) 
    done_aux_i_30__1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_7[5]),
        .I4(a_in_7[6]),
        .I5(a_in_7[7]),
        .O(\count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000080200802)) 
    done_aux_i_39__1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_7[9]),
        .I4(a_in_7[10]),
        .I5(a_in_7[11]),
        .O(done_aux_i_39__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFB8E2)) 
    done_aux_i_3__0
       (.I0(done_aux_i_7_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_8_n_0),
        .I3(a_in_7[4]),
        .I4(done_aux_i_2__1),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h4010040100000000)) 
    done_aux_i_40__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_7[9]),
        .I4(a_in_7[10]),
        .I5(a_in_7[11]),
        .O(done_aux_i_40__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_7
       (.I0(done_aux_i_15__0_n_0),
        .I1(a_in_7[3]),
        .I2(done_aux_i_16__2_n_0),
        .I3(Q[3]),
        .I4(done_aux_i_3__0_0),
        .O(done_aux_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_8
       (.I0(done_aux_i_16__2_n_0),
        .I1(a_in_7[3]),
        .I2(done_aux_i_15__0_n_0),
        .I3(Q[3]),
        .O(done_aux_i_8_n_0));
  MUXF7 done_aux_reg_i_12__0
       (.I0(done_aux_i_24__1_n_0),
        .I1(done_aux_i_25__1_n_0),
        .O(\FSM_onehot_state_reg[3] ),
        .S(a_in_7[13]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2
   (\count_reg_reg[4]_0 ,
    Q,
    \count_reg_reg[2]_0 ,
    \FSM_onehot_state_reg[3] ,
    D,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[4]_3 ,
    a_in_6,
    done_aux_reg_i_7__1,
    done_aux_reg_i_7__1_0,
    done_aux_reg_i_6__1_0,
    \FSM_onehot_state_reg[4] ,
    \count[4]_i_9__1_0 ,
    done_aux_reg_i_9__1_0,
    \count[4]_i_5__2_0 ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output \count_reg_reg[4]_0 ;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \FSM_onehot_state_reg[3] ;
  output [1:0]D;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[4]_3 ;
  input [13:0]a_in_6;
  input done_aux_reg_i_7__1;
  input done_aux_reg_i_7__1_0;
  input done_aux_reg_i_6__1_0;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input \count[4]_i_9__1_0 ;
  input done_aux_reg_i_9__1_0;
  input \count[4]_i_5__2_0 ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__0_n_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [13:0]a_in_6;
  wire clk;
  wire \count[4]_i_11__2_n_0 ;
  wire \count[4]_i_12__2_n_0 ;
  wire \count[4]_i_19__1_n_0 ;
  wire \count[4]_i_20__2_n_0 ;
  wire \count[4]_i_23__2_n_0 ;
  wire \count[4]_i_24__2_n_0 ;
  wire \count[4]_i_35__2_n_0 ;
  wire \count[4]_i_36__2_n_0 ;
  wire \count[4]_i_5__2_0 ;
  wire \count[4]_i_9__1_0 ;
  wire [4:0]count_next;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire \count_reg_reg[4]_3 ;
  wire done_aux_i_12__0_n_0;
  wire done_aux_i_13__0_n_0;
  wire done_aux_i_18__1_n_0;
  wire done_aux_i_19__2_n_0;
  wire done_aux_i_24__2_n_0;
  wire done_aux_i_25__2_n_0;
  wire done_aux_i_33__1_n_0;
  wire done_aux_i_34__2_n_0;
  wire done_aux_reg_i_6__1_0;
  wire done_aux_reg_i_7__1;
  wire done_aux_reg_i_7__1_0;
  wire done_aux_reg_i_9__1_0;

  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0003000000020000)) 
    \FSM_onehot_state[4]_i_3__0 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[4]_i_4__0_n_0 ),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[4]_i_4__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_state[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_11__2 
       (.I0(\count[4]_i_23__2_n_0 ),
        .I1(a_in_6[3]),
        .I2(\count[4]_i_24__2_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_11__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_12__2 
       (.I0(\count[4]_i_24__2_n_0 ),
        .I1(a_in_6[3]),
        .I2(\count[4]_i_23__2_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_5__2_0 ),
        .O(\count[4]_i_12__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_19__1 
       (.I0(\count[4]_i_35__2_n_0 ),
        .I1(a_in_6[12]),
        .I2(\count[4]_i_36__2_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_19__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_20__2 
       (.I0(\count[4]_i_36__2_n_0 ),
        .I1(a_in_6[12]),
        .I2(\count[4]_i_35__2_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_9__1_0 ),
        .O(\count[4]_i_20__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_23__2 
       (.I0(Q[2]),
        .I1(a_in_6[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_6[1]),
        .I5(a_in_6[2]),
        .O(\count[4]_i_23__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_24__2 
       (.I0(Q[2]),
        .I1(a_in_6[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_6[1]),
        .I5(a_in_6[2]),
        .O(\count[4]_i_24__2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFBEFFEFFFFFFFF)) 
    \count[4]_i_35__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_6[9]),
        .I4(a_in_6[10]),
        .I5(a_in_6[11]),
        .O(\count[4]_i_35__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FF7DFFD)) 
    \count[4]_i_36__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_6[9]),
        .I4(a_in_6[10]),
        .I5(a_in_6[11]),
        .O(\count[4]_i_36__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FF7DF)) 
    \count[4]_i_39__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_6[5]),
        .I4(a_in_6[6]),
        .I5(a_in_6[7]),
        .O(\count_reg_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_5__2 
       (.I0(a_in_6[4]),
        .I1(\count[4]_i_11__2_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_12__2_n_0 ),
        .O(\count_reg_reg[4]_3 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_9__1 
       (.I0(a_in_6[13]),
        .I1(\count[4]_i_19__1_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_20__2_n_0 ),
        .O(\count_reg_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \count_reg[1]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[4]),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_12__0
       (.I0(Q[4]),
        .I1(done_aux_i_24__2_n_0),
        .I2(a_in_6[12]),
        .I3(done_aux_i_25__2_n_0),
        .I4(Q[3]),
        .I5(done_aux_reg_i_6__1_0),
        .O(done_aux_i_12__0_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_13__0
       (.I0(done_aux_reg_i_6__1_0),
        .I1(Q[4]),
        .I2(done_aux_i_25__2_n_0),
        .I3(a_in_6[12]),
        .I4(done_aux_i_24__2_n_0),
        .I5(Q[3]),
        .O(done_aux_i_13__0_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_14__0
       (.I0(Q[4]),
        .I1(\count_reg_reg[2]_0 ),
        .I2(a_in_6[8]),
        .I3(done_aux_reg_i_7__1),
        .I4(Q[3]),
        .I5(done_aux_reg_i_7__1_0),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_18__1
       (.I0(Q[4]),
        .I1(done_aux_i_33__1_n_0),
        .I2(a_in_6[3]),
        .I3(done_aux_i_34__2_n_0),
        .I4(Q[3]),
        .I5(done_aux_reg_i_9__1_0),
        .O(done_aux_i_18__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_19__2
       (.I0(done_aux_reg_i_9__1_0),
        .I1(Q[4]),
        .I2(done_aux_i_34__2_n_0),
        .I3(a_in_6[3]),
        .I4(done_aux_i_33__1_n_0),
        .I5(Q[3]),
        .O(done_aux_i_19__2_n_0));
  LUT6 #(
    .INIT(64'h0000000080200802)) 
    done_aux_i_24__2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_6[9]),
        .I4(a_in_6[10]),
        .I5(a_in_6[11]),
        .O(done_aux_i_24__2_n_0));
  LUT6 #(
    .INIT(64'h4010040100000000)) 
    done_aux_i_25__2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_6[9]),
        .I4(a_in_6[10]),
        .I5(a_in_6[11]),
        .O(done_aux_i_25__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000802008)) 
    done_aux_i_27__2
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_6[5]),
        .I4(a_in_6[6]),
        .I5(a_in_6[7]),
        .O(\count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_33__1
       (.I0(Q[2]),
        .I1(a_in_6[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_6[1]),
        .I5(a_in_6[2]),
        .O(done_aux_i_33__1_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_34__2
       (.I0(Q[2]),
        .I1(a_in_6[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_6[1]),
        .I5(a_in_6[2]),
        .O(done_aux_i_34__2_n_0));
  MUXF7 done_aux_reg_i_6__1
       (.I0(done_aux_i_12__0_n_0),
        .I1(done_aux_i_13__0_n_0),
        .O(\FSM_onehot_state_reg[3] ),
        .S(a_in_6[13]));
  MUXF7 done_aux_reg_i_9__1
       (.I0(done_aux_i_18__1_n_0),
        .I1(done_aux_i_19__2_n_0),
        .O(\count_reg_reg[4]_2 ),
        .S(a_in_6[4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3
   (\j_reg[0] ,
    \count_reg_reg[4]_0 ,
    \j_reg[1] ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[4]_2 ,
    \count_reg_reg[2]_1 ,
    \FSM_onehot_state_reg[3] ,
    D,
    \count_reg_reg[3]_0 ,
    Q,
    a_in_5,
    done_aux_i_4__0_0,
    \count[4]_i_4__3_0 ,
    done_aux_reg_i_7__2,
    done_aux_reg_i_7__2_0,
    \count[4]_i_6__3_0 ,
    done_aux_reg_i_6__2_0,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output \j_reg[0] ;
  output [4:0]\count_reg_reg[4]_0 ;
  output \j_reg[1] ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[4]_2 ;
  output \count_reg_reg[2]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output [1:0]D;
  output \count_reg_reg[3]_0 ;
  input [1:0]Q;
  input [13:0]a_in_5;
  input done_aux_i_4__0_0;
  input \count[4]_i_4__3_0 ;
  input done_aux_reg_i_7__2;
  input done_aux_reg_i_7__2_0;
  input \count[4]_i_6__3_0 ;
  input done_aux_reg_i_6__2_0;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__1_n_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [1:0]Q;
  wire [13:0]a_in_5;
  wire clk;
  wire \count[4]_i_10__3_n_0 ;
  wire \count[4]_i_13__3_n_0 ;
  wire \count[4]_i_14__2_n_0 ;
  wire \count[4]_i_19__2_n_0 ;
  wire \count[4]_i_20__3_n_0 ;
  wire \count[4]_i_25__3_n_0 ;
  wire \count[4]_i_26__3_n_0 ;
  wire \count[4]_i_4__3_0 ;
  wire \count[4]_i_6__3_0 ;
  wire \count[4]_i_9__2_n_0 ;
  wire [4:0]count_next;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire [4:0]\count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire done_aux_i_10_n_0;
  wire done_aux_i_13__1_n_0;
  wire done_aux_i_14__1_n_0;
  wire done_aux_i_19__3_n_0;
  wire done_aux_i_20__5_n_0;
  wire done_aux_i_25__3_n_0;
  wire done_aux_i_26__3_n_0;
  wire done_aux_i_4__0_0;
  wire done_aux_i_9__0_n_0;
  wire done_aux_reg_i_6__2_0;
  wire done_aux_reg_i_7__2;
  wire done_aux_reg_i_7__2_0;
  wire \j_reg[0] ;
  wire \j_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__3 
       (.I0(\count_reg_reg[4]_0 [3]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__3 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0003000000020000)) 
    \FSM_onehot_state[4]_i_3__1 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(\count_reg_reg[4]_0 [4]),
        .I2(\count_reg_reg[4]_0 [2]),
        .I3(\FSM_onehot_state[4]_i_4__1_n_0 ),
        .I4(\count_reg_reg[4]_0 [3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[4]_i_4__1 
       (.I0(\count_reg_reg[4]_0 [0]),
        .I1(\count_reg_reg[4]_0 [1]),
        .O(\FSM_onehot_state[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_10__3 
       (.I0(\count[4]_i_20__3_n_0 ),
        .I1(a_in_5[3]),
        .I2(\count[4]_i_19__2_n_0 ),
        .I3(\count_reg_reg[4]_0 [3]),
        .I4(\count[4]_i_4__3_0 ),
        .O(\count[4]_i_10__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_13__3 
       (.I0(\count[4]_i_25__3_n_0 ),
        .I1(a_in_5[12]),
        .I2(\count[4]_i_26__3_n_0 ),
        .I3(\count_reg_reg[4]_0 [3]),
        .O(\count[4]_i_13__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_14__2 
       (.I0(\count[4]_i_26__3_n_0 ),
        .I1(a_in_5[12]),
        .I2(\count[4]_i_25__3_n_0 ),
        .I3(\count_reg_reg[4]_0 [3]),
        .I4(\count[4]_i_6__3_0 ),
        .O(\count[4]_i_14__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_19__2 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(a_in_5[0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(a_in_5[1]),
        .I5(a_in_5[2]),
        .O(\count[4]_i_19__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_20__3 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(a_in_5[0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(a_in_5[1]),
        .I5(a_in_5[2]),
        .O(\count[4]_i_20__3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFBEFFEFFFFFFFF)) 
    \count[4]_i_25__3 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(a_in_5[9]),
        .I4(a_in_5[10]),
        .I5(a_in_5[11]),
        .O(\count[4]_i_25__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FF7DFFD)) 
    \count[4]_i_26__3 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(a_in_5[9]),
        .I4(a_in_5[10]),
        .I5(a_in_5[11]),
        .O(\count[4]_i_26__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FF7DF)) 
    \count[4]_i_29__3 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(a_in_5[5]),
        .I4(a_in_5[6]),
        .I5(a_in_5[7]),
        .O(\count_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000054511040)) 
    \count[4]_i_4__3 
       (.I0(Q[1]),
        .I1(a_in_5[4]),
        .I2(\count[4]_i_9__2_n_0 ),
        .I3(\count_reg_reg[4]_0 [4]),
        .I4(\count[4]_i_10__3_n_0 ),
        .I5(Q[0]),
        .O(\j_reg[1] ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_6__3 
       (.I0(a_in_5[13]),
        .I1(\count[4]_i_13__3_n_0 ),
        .I2(\count_reg_reg[4]_0 [4]),
        .I3(\count[4]_i_14__2_n_0 ),
        .O(\count_reg_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_9__2 
       (.I0(\count[4]_i_19__2_n_0 ),
        .I1(a_in_5[3]),
        .I2(\count[4]_i_20__3_n_0 ),
        .I3(\count_reg_reg[4]_0 [3]),
        .O(\count[4]_i_9__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__3 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [3]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \count_reg[1]_i_1__3 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [3]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__3 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__3 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(\count_reg_reg[4]_0 [2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__3 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[0]),
        .Q(\count_reg_reg[4]_0 [0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[1]),
        .Q(\count_reg_reg[4]_0 [1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[2]),
        .Q(\count_reg_reg[4]_0 [2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[3]),
        .Q(\count_reg_reg[4]_0 [3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[4]),
        .Q(\count_reg_reg[4]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_10
       (.I0(done_aux_i_20__5_n_0),
        .I1(a_in_5[3]),
        .I2(done_aux_i_19__3_n_0),
        .I3(\count_reg_reg[4]_0 [3]),
        .O(done_aux_i_10_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_13__1
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(done_aux_i_25__3_n_0),
        .I2(a_in_5[12]),
        .I3(done_aux_i_26__3_n_0),
        .I4(\count_reg_reg[4]_0 [3]),
        .I5(done_aux_reg_i_6__2_0),
        .O(done_aux_i_13__1_n_0));
  LUT6 #(
    .INIT(64'h88F388C0FC883088)) 
    done_aux_i_14__1
       (.I0(done_aux_reg_i_6__2_0),
        .I1(\count_reg_reg[4]_0 [4]),
        .I2(done_aux_i_26__3_n_0),
        .I3(a_in_5[12]),
        .I4(done_aux_i_25__3_n_0),
        .I5(\count_reg_reg[4]_0 [3]),
        .O(done_aux_i_14__1_n_0));
  LUT6 #(
    .INIT(64'h5D58E5450D08E040)) 
    done_aux_i_15__2
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[2]_0 ),
        .I2(a_in_5[8]),
        .I3(done_aux_reg_i_7__2),
        .I4(\count_reg_reg[4]_0 [3]),
        .I5(done_aux_reg_i_7__2_0),
        .O(\count_reg_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_19__3
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(a_in_5[0]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(a_in_5[1]),
        .I5(a_in_5[2]),
        .O(done_aux_i_19__3_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_20__5
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(a_in_5[0]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(a_in_5[1]),
        .I5(a_in_5[2]),
        .O(done_aux_i_20__5_n_0));
  LUT6 #(
    .INIT(64'h0000000080200802)) 
    done_aux_i_25__3
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(a_in_5[9]),
        .I4(a_in_5[10]),
        .I5(a_in_5[11]),
        .O(done_aux_i_25__3_n_0));
  LUT6 #(
    .INIT(64'h4010040100000000)) 
    done_aux_i_26__3
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(a_in_5[9]),
        .I4(a_in_5[10]),
        .I5(a_in_5[11]),
        .O(done_aux_i_26__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000802008)) 
    done_aux_i_28__3
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(a_in_5[5]),
        .I4(a_in_5[6]),
        .I5(a_in_5[7]),
        .O(\count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000EFEAFEAE)) 
    done_aux_i_4__0
       (.I0(Q[0]),
        .I1(done_aux_i_9__0_n_0),
        .I2(\count_reg_reg[4]_0 [4]),
        .I3(done_aux_i_10_n_0),
        .I4(a_in_5[4]),
        .I5(Q[1]),
        .O(\j_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_9__0
       (.I0(done_aux_i_19__3_n_0),
        .I1(a_in_5[3]),
        .I2(done_aux_i_20__5_n_0),
        .I3(\count_reg_reg[4]_0 [3]),
        .I4(done_aux_i_4__0_0),
        .O(done_aux_i_9__0_n_0));
  MUXF7 done_aux_reg_i_6__2
       (.I0(done_aux_i_13__1_n_0),
        .I1(done_aux_i_14__1_n_0),
        .O(\FSM_onehot_state_reg[3] ),
        .S(a_in_5[13]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4
   (Q,
    \j_reg[0] ,
    \j_reg[0]_0 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[3]_1 ,
    \count_reg_reg[2]_1 ,
    D,
    \count_reg_reg[3]_2 ,
    done_aux_reg,
    done_aux_reg_0,
    done_aux_reg_1,
    a_in_4,
    done_aux_i_3__2_0,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    \count[4]_i_4__4_0 ,
    \count[4]_i_7__3_0 ,
    \count[4]_i_5__4 ,
    done_aux_i_6__0_0,
    done_aux_i_4__1,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [4:0]Q;
  output \j_reg[0] ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[3]_1 ;
  output \count_reg_reg[2]_1 ;
  output [1:0]D;
  output \count_reg_reg[3]_2 ;
  input done_aux_reg;
  input [1:0]done_aux_reg_0;
  input done_aux_reg_1;
  input [13:0]a_in_4;
  input done_aux_i_3__2_0;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input \count[4]_i_4__4_0 ;
  input \count[4]_i_7__3_0 ;
  input \count[4]_i_5__4 ;
  input done_aux_i_6__0_0;
  input done_aux_i_4__1;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__5_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [13:0]a_in_4;
  wire clk;
  wire \count[4]_i_14__3_n_0 ;
  wire \count[4]_i_15__3_n_0 ;
  wire \count[4]_i_16__3_n_0 ;
  wire \count[4]_i_17__3_n_0 ;
  wire \count[4]_i_25__4_n_0 ;
  wire \count[4]_i_26__4_n_0 ;
  wire \count[4]_i_4__4_0 ;
  wire \count[4]_i_4__4_n_0 ;
  wire \count[4]_i_5__4 ;
  wire \count[4]_i_7__3_0 ;
  wire \count[4]_i_7__3_n_0 ;
  wire \count[4]_i_8__3_n_0 ;
  wire \count[4]_i_9__3_n_0 ;
  wire [4:0]count_next;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[3]_1 ;
  wire \count_reg_reg[3]_2 ;
  wire done_aux_i_13__2_n_0;
  wire done_aux_i_14__2_n_0;
  wire done_aux_i_15__3_n_0;
  wire done_aux_i_16__3_n_0;
  wire done_aux_i_24__4_n_0;
  wire done_aux_i_25__4_n_0;
  wire done_aux_i_3__2_0;
  wire done_aux_i_3__2_n_0;
  wire done_aux_i_4__1;
  wire done_aux_i_6__0_0;
  wire done_aux_i_6__0_n_0;
  wire done_aux_i_7__0_n_0;
  wire done_aux_i_8__0_n_0;
  wire done_aux_reg;
  wire [1:0]done_aux_reg_0;
  wire done_aux_reg_1;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0300000002000000)) 
    \FSM_onehot_state[4]_i_3__4 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[4]_i_4__5_n_0 ),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_4__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_onehot_state[4]_i_4__5_n_0 ));
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_10__4 
       (.I0(\count_reg_reg[2]_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_5__4 ),
        .I3(a_in_4[8]),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_14__3 
       (.I0(\count[4]_i_25__4_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_26__4_n_0 ),
        .I3(a_in_4[12]),
        .O(\count[4]_i_14__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_15__3 
       (.I0(\count[4]_i_26__4_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_25__4_n_0 ),
        .I3(a_in_4[12]),
        .I4(\count[4]_i_7__3_0 ),
        .O(\count[4]_i_15__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_16__3 
       (.I0(Q[2]),
        .I1(a_in_4[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_4[1]),
        .I5(a_in_4[2]),
        .O(\count[4]_i_16__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_17__3 
       (.I0(Q[2]),
        .I1(a_in_4[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_4[1]),
        .I5(a_in_4[2]),
        .O(\count[4]_i_17__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FF7DF)) 
    \count[4]_i_19__3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_4[5]),
        .I4(a_in_4[6]),
        .I5(a_in_4[7]),
        .O(\count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FDFF7FD)) 
    \count[4]_i_25__4 
       (.I0(Q[2]),
        .I1(a_in_4[9]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_4[10]),
        .I5(a_in_4[11]),
        .O(\count[4]_i_25__4_n_0 ));
  LUT6 #(
    .INIT(64'hBFEFFBFEFFFFFFFF)) 
    \count[4]_i_26__4 
       (.I0(Q[2]),
        .I1(a_in_4[9]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_4[10]),
        .I5(a_in_4[11]),
        .O(\count[4]_i_26__4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_3__4 
       (.I0(\count[4]_i_4__4_n_0 ),
        .I1(\count_reg[0] ),
        .I2(done_aux_reg_0[0]),
        .I3(\count_reg[0]_0 ),
        .I4(done_aux_reg_0[1]),
        .I5(\count[4]_i_7__3_n_0 ),
        .O(\j_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_4__4 
       (.I0(a_in_4[4]),
        .I1(\count[4]_i_8__3_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_9__3_n_0 ),
        .O(\count[4]_i_4__4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_7__3 
       (.I0(a_in_4[13]),
        .I1(\count[4]_i_14__3_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_15__3_n_0 ),
        .O(\count[4]_i_7__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_8__3 
       (.I0(\count[4]_i_16__3_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_17__3_n_0 ),
        .I3(a_in_4[3]),
        .O(\count[4]_i_8__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_9__3 
       (.I0(\count[4]_i_17__3_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_16__3_n_0 ),
        .I3(a_in_4[3]),
        .I4(\count[4]_i_4__4_0 ),
        .O(\count[4]_i_9__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \count_reg[1]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[4]),
        .Q(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_13__2
       (.I0(done_aux_i_24__4_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_25__4_n_0),
        .I3(a_in_4[12]),
        .O(done_aux_i_13__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_14__2
       (.I0(done_aux_i_25__4_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_24__4_n_0),
        .I3(a_in_4[12]),
        .I4(done_aux_i_6__0_0),
        .O(done_aux_i_14__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_15__3
       (.I0(Q[2]),
        .I1(a_in_4[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_4[1]),
        .I5(a_in_4[2]),
        .O(done_aux_i_15__3_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_16__3
       (.I0(Q[2]),
        .I1(a_in_4[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_4[1]),
        .I5(a_in_4[2]),
        .O(done_aux_i_16__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000802008)) 
    done_aux_i_18__3
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_4[5]),
        .I4(a_in_4[6]),
        .I5(a_in_4[7]),
        .O(\count_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    done_aux_i_24__4
       (.I0(Q[2]),
        .I1(a_in_4[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_4[10]),
        .I5(a_in_4[11]),
        .O(done_aux_i_24__4_n_0));
  LUT6 #(
    .INIT(64'h4100004100000000)) 
    done_aux_i_25__4
       (.I0(Q[2]),
        .I1(a_in_4[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_4[10]),
        .I5(a_in_4[11]),
        .O(done_aux_i_25__4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    done_aux_i_2__3
       (.I0(done_aux_i_3__2_n_0),
        .I1(done_aux_reg),
        .I2(done_aux_reg_0[0]),
        .I3(done_aux_reg_1),
        .I4(done_aux_reg_0[1]),
        .I5(done_aux_i_6__0_n_0),
        .O(\j_reg[0] ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_3__2
       (.I0(a_in_4[4]),
        .I1(done_aux_i_7__0_n_0),
        .I2(Q[4]),
        .I3(done_aux_i_8__0_n_0),
        .O(done_aux_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_6__0
       (.I0(a_in_4[13]),
        .I1(done_aux_i_13__2_n_0),
        .I2(Q[4]),
        .I3(done_aux_i_14__2_n_0),
        .O(done_aux_i_6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_7__0
       (.I0(done_aux_i_15__3_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_16__3_n_0),
        .I3(a_in_4[3]),
        .O(done_aux_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_8__0
       (.I0(done_aux_i_16__3_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_15__3_n_0),
        .I3(a_in_4[3]),
        .I4(done_aux_i_3__2_0),
        .O(done_aux_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_9__1
       (.I0(\count_reg_reg[2]_1 ),
        .I1(Q[3]),
        .I2(done_aux_i_4__1),
        .I3(a_in_4[8]),
        .O(\count_reg_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5
   (Q,
    D,
    \count_reg_reg[3]_0 ,
    \j_reg[0] ,
    \j_reg[0]_0 ,
    a_in_3,
    done_aux_reg,
    done_aux_i_5__1_0,
    \count[4]_i_6__5_0 ,
    done_aux_i_3__3_0,
    \count[4]_i_4__5_0 ,
    \FSM_onehot_state_reg[4] ,
    done_aux_reg_0,
    \count_reg[0] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [4:0]Q;
  output [1:0]D;
  output \count_reg_reg[3]_0 ;
  output \j_reg[0] ;
  output \j_reg[0]_0 ;
  input [9:0]a_in_3;
  input [1:0]done_aux_reg;
  input done_aux_i_5__1_0;
  input \count[4]_i_6__5_0 ;
  input done_aux_i_3__3_0;
  input \count[4]_i_4__5_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input done_aux_reg_0;
  input \count_reg[0] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__6_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [9:0]a_in_3;
  wire clk;
  wire \count[4]_i_11__5_n_0 ;
  wire \count[4]_i_12__5_n_0 ;
  wire \count[4]_i_13__5_n_0 ;
  wire \count[4]_i_14__4_n_0 ;
  wire \count[4]_i_19__4_n_0 ;
  wire \count[4]_i_20__5_n_0 ;
  wire \count[4]_i_4__5_0 ;
  wire \count[4]_i_4__5_n_0 ;
  wire \count[4]_i_6__5_0 ;
  wire \count[4]_i_6__5_n_0 ;
  wire \count[4]_i_7__4_n_0 ;
  wire \count[4]_i_8__4_n_0 ;
  wire [4:0]count_next;
  wire \count_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire done_aux_i_10__1_n_0;
  wire done_aux_i_11__2_n_0;
  wire done_aux_i_12__3_n_0;
  wire done_aux_i_13__4_n_0;
  wire done_aux_i_18__4_n_0;
  wire done_aux_i_19__4_n_0;
  wire done_aux_i_3__3_0;
  wire done_aux_i_3__3_n_0;
  wire done_aux_i_5__1_0;
  wire done_aux_i_5__1_n_0;
  wire done_aux_i_6__1_n_0;
  wire done_aux_i_7__1_n_0;
  wire [1:0]done_aux_reg;
  wire done_aux_reg_0;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__5 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0300000002000000)) 
    \FSM_onehot_state[4]_i_3__5 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[4]_i_4__6_n_0 ),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_4__6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_onehot_state[4]_i_4__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_11__5 
       (.I0(\count[4]_i_19__4_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_20__5_n_0 ),
        .I3(a_in_3[3]),
        .I4(\count[4]_i_6__5_0 ),
        .O(\count[4]_i_11__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_12__5 
       (.I0(\count[4]_i_20__5_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_19__4_n_0 ),
        .I3(a_in_3[3]),
        .O(\count[4]_i_12__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFD7F)) 
    \count[4]_i_13__5 
       (.I0(Q[2]),
        .I1(a_in_3[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_3[6]),
        .I5(a_in_3[7]),
        .O(\count[4]_i_13__5_n_0 ));
  LUT6 #(
    .INIT(64'hEFFBFEFFFFFFFFFF)) 
    \count[4]_i_14__4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_3[5]),
        .I4(a_in_3[6]),
        .I5(a_in_3[7]),
        .O(\count[4]_i_14__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_19__4 
       (.I0(Q[2]),
        .I1(a_in_3[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_3[1]),
        .I5(a_in_3[2]),
        .O(\count[4]_i_19__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_20__5 
       (.I0(Q[2]),
        .I1(a_in_3[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_3[1]),
        .I5(a_in_3[2]),
        .O(\count[4]_i_20__5_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \count[4]_i_3__7 
       (.I0(\count[4]_i_4__5_n_0 ),
        .I1(done_aux_reg[0]),
        .I2(\count_reg[0] ),
        .I3(done_aux_reg[1]),
        .I4(\count[4]_i_6__5_n_0 ),
        .O(\j_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_4__5 
       (.I0(a_in_3[9]),
        .I1(\count[4]_i_7__4_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_8__4_n_0 ),
        .O(\count[4]_i_4__5_n_0 ));
  LUT5 #(
    .INIT(32'h0000B8E2)) 
    \count[4]_i_6__5 
       (.I0(\count[4]_i_11__5_n_0 ),
        .I1(Q[4]),
        .I2(\count[4]_i_12__5_n_0 ),
        .I3(a_in_3[4]),
        .I4(done_aux_reg[0]),
        .O(\count[4]_i_6__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_7__4 
       (.I0(\count[4]_i_13__5_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_14__4_n_0 ),
        .I3(a_in_3[8]),
        .O(\count[4]_i_7__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_8__4 
       (.I0(\count[4]_i_14__4_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_13__5_n_0 ),
        .I3(a_in_3[8]),
        .I4(\count[4]_i_4__5_0 ),
        .O(\count[4]_i_8__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \count_reg[1]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[4]),
        .Q(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_10__1
       (.I0(done_aux_i_18__4_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_19__4_n_0),
        .I3(a_in_3[3]),
        .I4(done_aux_i_5__1_0),
        .O(done_aux_i_10__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_11__2
       (.I0(done_aux_i_19__4_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_18__4_n_0),
        .I3(a_in_3[3]),
        .O(done_aux_i_11__2_n_0));
  LUT6 #(
    .INIT(64'h0000000020000820)) 
    done_aux_i_12__3
       (.I0(Q[2]),
        .I1(a_in_3[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_3[6]),
        .I5(a_in_3[7]),
        .O(done_aux_i_12__3_n_0));
  LUT6 #(
    .INIT(64'h0410010000000000)) 
    done_aux_i_13__4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_3[5]),
        .I4(a_in_3[6]),
        .I5(a_in_3[7]),
        .O(done_aux_i_13__4_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_18__4
       (.I0(Q[2]),
        .I1(a_in_3[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_3[1]),
        .I5(a_in_3[2]),
        .O(done_aux_i_18__4_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_19__4
       (.I0(Q[2]),
        .I1(a_in_3[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_3[1]),
        .I5(a_in_3[2]),
        .O(done_aux_i_19__4_n_0));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    done_aux_i_2__6
       (.I0(done_aux_i_3__3_n_0),
        .I1(done_aux_reg[0]),
        .I2(done_aux_reg_0),
        .I3(done_aux_reg[1]),
        .I4(done_aux_i_5__1_n_0),
        .O(\j_reg[0] ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_3__3
       (.I0(a_in_3[9]),
        .I1(done_aux_i_6__1_n_0),
        .I2(Q[4]),
        .I3(done_aux_i_7__1_n_0),
        .O(done_aux_i_3__3_n_0));
  LUT5 #(
    .INIT(32'hFFFFB8E2)) 
    done_aux_i_5__1
       (.I0(done_aux_i_10__1_n_0),
        .I1(Q[4]),
        .I2(done_aux_i_11__2_n_0),
        .I3(a_in_3[4]),
        .I4(done_aux_reg[0]),
        .O(done_aux_i_5__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_6__1
       (.I0(done_aux_i_12__3_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_13__4_n_0),
        .I3(a_in_3[8]),
        .O(done_aux_i_6__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_7__1
       (.I0(done_aux_i_13__4_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_12__3_n_0),
        .I3(a_in_3[8]),
        .I4(done_aux_i_3__3_0),
        .O(done_aux_i_7__1_n_0));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6
   (Q,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[4]_2 ,
    D,
    \count_reg_reg[3]_0 ,
    a_in_2,
    done_aux_i_2__4_0,
    \count_reg[0] ,
    \count[4]_i_3__5_0 ,
    done_aux_i_3__4_0,
    \count[4]_i_6__6_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output [4:0]Q;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[4]_2 ;
  output [1:0]D;
  output \count_reg_reg[3]_0 ;
  input [9:0]a_in_2;
  input done_aux_i_2__4_0;
  input [0:0]\count_reg[0] ;
  input \count[4]_i_3__5_0 ;
  input done_aux_i_3__4_0;
  input \count[4]_i_6__6_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__7_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [9:0]a_in_2;
  wire clk;
  wire \count[4]_i_10__6_n_0 ;
  wire \count[4]_i_11__6_n_0 ;
  wire \count[4]_i_12__6_n_0 ;
  wire \count[4]_i_13__6_n_0 ;
  wire \count[4]_i_3__5_0 ;
  wire \count[4]_i_4__6_n_0 ;
  wire \count[4]_i_5__6_n_0 ;
  wire \count[4]_i_6__6_0 ;
  wire \count[4]_i_6__6_n_0 ;
  wire \count[4]_i_7__5_n_0 ;
  wire \count[4]_i_8__5_n_0 ;
  wire [4:0]count_next;
  wire [0:0]\count_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire \count_reg_reg[4]_2 ;
  wire done_aux_i_11__3_n_0;
  wire done_aux_i_12__4_n_0;
  wire done_aux_i_2__4_0;
  wire done_aux_i_3__4_0;
  wire done_aux_i_4__3_n_0;
  wire done_aux_i_5__2_n_0;
  wire done_aux_i_6__2_n_0;
  wire done_aux_i_7__2_n_0;
  wire done_aux_i_8__2_n_0;
  wire done_aux_i_9__3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__6 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0300000002000000)) 
    \FSM_onehot_state[4]_i_3__6 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state[4]_i_4__7_n_0 ),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_4__7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_onehot_state[4]_i_4__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_10__6 
       (.I0(\count[4]_i_12__6_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_13__6_n_0 ),
        .I3(a_in_2[8]),
        .O(\count[4]_i_10__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_11__6 
       (.I0(\count[4]_i_13__6_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_12__6_n_0 ),
        .I3(a_in_2[8]),
        .I4(\count[4]_i_6__6_0 ),
        .O(\count[4]_i_11__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FF7)) 
    \count[4]_i_12__6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_2[5]),
        .I4(a_in_2[6]),
        .I5(a_in_2[7]),
        .O(\count[4]_i_12__6_n_0 ));
  LUT6 #(
    .INIT(64'hFBFEFFFFFFFFFFFF)) 
    \count[4]_i_13__6 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_2[5]),
        .I4(a_in_2[6]),
        .I5(a_in_2[7]),
        .O(\count[4]_i_13__6_n_0 ));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[4]_i_3__5 
       (.I0(a_in_2[4]),
        .I1(\count[4]_i_4__6_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_5__6_n_0 ),
        .I4(\count_reg[0] ),
        .I5(\count[4]_i_6__6_n_0 ),
        .O(\count_reg_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_4__6 
       (.I0(\count[4]_i_7__5_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_8__5_n_0 ),
        .I3(a_in_2[3]),
        .O(\count[4]_i_4__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_5__6 
       (.I0(\count[4]_i_8__5_n_0 ),
        .I1(Q[3]),
        .I2(\count[4]_i_7__5_n_0 ),
        .I3(a_in_2[3]),
        .I4(\count[4]_i_3__5_0 ),
        .O(\count[4]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[4]_i_6__6 
       (.I0(a_in_2[9]),
        .I1(\count[4]_i_10__6_n_0 ),
        .I2(Q[4]),
        .I3(\count[4]_i_11__6_n_0 ),
        .O(\count[4]_i_6__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_7__5 
       (.I0(Q[2]),
        .I1(a_in_2[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_2[1]),
        .I5(a_in_2[2]),
        .O(\count[4]_i_7__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_8__5 
       (.I0(Q[2]),
        .I1(a_in_2[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_2[1]),
        .I5(a_in_2[2]),
        .O(\count[4]_i_8__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \count_reg[1]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_0 ),
        .D(count_next[4]),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h0000000000008020)) 
    done_aux_i_11__3
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_2[5]),
        .I4(a_in_2[6]),
        .I5(a_in_2[7]),
        .O(done_aux_i_11__3_n_0));
  LUT6 #(
    .INIT(64'h1001000000000000)) 
    done_aux_i_12__4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in_2[5]),
        .I4(a_in_2[6]),
        .I5(a_in_2[7]),
        .O(done_aux_i_12__4_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_2__4
       (.I0(a_in_2[4]),
        .I1(done_aux_i_4__3_n_0),
        .I2(Q[4]),
        .I3(done_aux_i_5__2_n_0),
        .O(\count_reg_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_3__4
       (.I0(a_in_2[9]),
        .I1(done_aux_i_6__2_n_0),
        .I2(Q[4]),
        .I3(done_aux_i_7__2_n_0),
        .O(\count_reg_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_4__3
       (.I0(done_aux_i_8__2_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_9__3_n_0),
        .I3(a_in_2[3]),
        .O(done_aux_i_4__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_5__2
       (.I0(done_aux_i_9__3_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_8__2_n_0),
        .I3(a_in_2[3]),
        .I4(done_aux_i_2__4_0),
        .O(done_aux_i_5__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_6__2
       (.I0(done_aux_i_11__3_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_12__4_n_0),
        .I3(a_in_2[8]),
        .O(done_aux_i_6__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_7__2
       (.I0(done_aux_i_12__4_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_11__3_n_0),
        .I3(a_in_2[8]),
        .I4(done_aux_i_3__4_0),
        .O(done_aux_i_7__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_8__2
       (.I0(Q[2]),
        .I1(a_in_2[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_2[1]),
        .I5(a_in_2[2]),
        .O(done_aux_i_8__2_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_9__3
       (.I0(Q[2]),
        .I1(a_in_2[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_2[1]),
        .I5(a_in_2[2]),
        .O(done_aux_i_9__3_n_0));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7
   (j_reg_0_sp_1,
    \count_reg_reg[4]_0 ,
    E,
    D,
    \count_reg_reg[3]_0 ,
    j_reg,
    Q,
    done,
    \FSM_onehot_state_reg[4] ,
    \count_reg_reg[4]_1 ,
    clk,
    ack_in_1);
  output j_reg_0_sp_1;
  output [4:0]\count_reg_reg[4]_0 ;
  output [0:0]E;
  output [1:0]D;
  output \count_reg_reg[3]_0 ;
  input [0:0]j_reg;
  input [4:0]Q;
  input done;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]\count_reg_reg[4]_1 ;
  input clk;
  input ack_in_1;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__2_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire ack_in_1;
  wire clk;
  wire \count[4]_i_3__6_n_0 ;
  wire \count[4]_i_4__7_n_0 ;
  wire \count[4]_i_5__7_n_0 ;
  wire \count[4]_i_6__7_n_0 ;
  wire \count[4]_i_7__6_n_0 ;
  wire [4:0]count_next;
  wire \count_reg_reg[3]_0 ;
  wire [4:0]\count_reg_reg[4]_0 ;
  wire [0:0]\count_reg_reg[4]_1 ;
  wire done;
  wire done_aux_i_2__5_n_0;
  wire done_aux_i_3__5_n_0;
  wire done_aux_i_4__4_n_0;
  wire done_aux_i_5__3_n_0;
  wire done_aux_i_6__3_n_0;
  wire [0:0]j_reg;
  wire j_reg_0_sn_1;

  assign j_reg_0_sp_1 = j_reg_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \FSM_onehot_state[1]_i_2__7 
       (.I0(\count_reg_reg[4]_0 [3]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \FSM_onehot_state[2]_i_1__7 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__7 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(\FSM_onehot_state[4]_i_4__2_n_0 ),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_4__2 
       (.I0(\count_reg_reg[4]_0 [3]),
        .I1(\count_reg_reg[4]_0 [0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [4]),
        .O(\FSM_onehot_state[4]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054511040)) 
    \count[4]_i_1__7 
       (.I0(j_reg),
        .I1(Q[4]),
        .I2(\count[4]_i_3__6_n_0 ),
        .I3(\count_reg_reg[4]_0 [4]),
        .I4(\count[4]_i_4__7_n_0 ),
        .I5(done),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFCBB)) 
    \count[4]_i_3__6 
       (.I0(\count[4]_i_5__7_n_0 ),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count[4]_i_6__7_n_0 ),
        .I3(Q[3]),
        .O(\count[4]_i_3__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \count[4]_i_4__7 
       (.I0(\count[4]_i_6__7_n_0 ),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count[4]_i_5__7_n_0 ),
        .I3(Q[3]),
        .I4(\count[4]_i_7__6_n_0 ),
        .O(\count[4]_i_4__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[4]_i_5__7 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(Q[0]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_5__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count[4]_i_6__7 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(Q[0]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[4]_i_6__7_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[4]_i_7__6 
       (.I0(Q[2]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(Q[1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(Q[0]),
        .I5(\count_reg_reg[4]_0 [1]),
        .O(\count[4]_i_7__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \count_reg[0]_i_1__7 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [3]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \count_reg[1]_i_1__7 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [3]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__7 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h3CCCC8CC)) 
    \count_reg[3]_i_1__7 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [0]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [2]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__7 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(\count_reg_reg[4]_0 [3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(\count_reg_reg[4]_1 ),
        .CLR(ack_in_1),
        .D(count_next[0]),
        .Q(\count_reg_reg[4]_0 [0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(\count_reg_reg[4]_1 ),
        .CLR(ack_in_1),
        .D(count_next[1]),
        .Q(\count_reg_reg[4]_0 [1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(\count_reg_reg[4]_1 ),
        .CLR(ack_in_1),
        .D(count_next[2]),
        .Q(\count_reg_reg[4]_0 [2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(\count_reg_reg[4]_1 ),
        .CLR(ack_in_1),
        .D(count_next[3]),
        .Q(\count_reg_reg[4]_0 [3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(\count_reg_reg[4]_1 ),
        .CLR(ack_in_1),
        .D(count_next[4]),
        .Q(\count_reg_reg[4]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFBBAEA)) 
    done_aux_i_1__5
       (.I0(j_reg),
        .I1(Q[4]),
        .I2(done_aux_i_2__5_n_0),
        .I3(\count_reg_reg[4]_0 [4]),
        .I4(done_aux_i_3__5_n_0),
        .I5(done),
        .O(j_reg_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    done_aux_i_2__5
       (.I0(done_aux_i_4__4_n_0),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(done_aux_i_5__3_n_0),
        .I3(Q[3]),
        .O(done_aux_i_2__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    done_aux_i_3__5
       (.I0(done_aux_i_5__3_n_0),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(done_aux_i_4__4_n_0),
        .I3(Q[3]),
        .I4(done_aux_i_6__3_n_0),
        .O(done_aux_i_3__5_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_aux_i_4__4
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(Q[0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(done_aux_i_4__4_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    done_aux_i_5__3
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(Q[0]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(done_aux_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_6__3
       (.I0(Q[2]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(Q[1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(Q[0]),
        .I5(\count_reg_reg[4]_0 [1]),
        .O(done_aux_i_6__3_n_0));
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
