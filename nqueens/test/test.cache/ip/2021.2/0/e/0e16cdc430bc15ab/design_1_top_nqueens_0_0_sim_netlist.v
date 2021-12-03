// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Nov 24 18:42:43 2021
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
   (valid,
    \j_reg[2]_0 ,
    Q,
    \j_reg[2]_1 ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[4]_0 ,
    E,
    D,
    \j_reg[4]_0 ,
    \j_reg[3]_0 ,
    \FSM_onehot_state[4]_i_5_0 ,
    \FSM_onehot_state_reg[4]_1 ,
    acks_out_reg,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    SR,
    clk,
    \FSM_onehot_state[4]_i_2__0 );
  output valid;
  output \j_reg[2]_0 ;
  output [1:0]Q;
  output \j_reg[2]_1 ;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]E;
  output [0:0]D;
  output \j_reg[4]_0 ;
  output \j_reg[3]_0 ;
  input [4:0]\FSM_onehot_state[4]_i_5_0 ;
  input \FSM_onehot_state_reg[4]_1 ;
  input [4:0]acks_out_reg;
  input [0:0]\FSM_onehot_state_reg[3]_0 ;
  input \FSM_onehot_state_reg[3]_1 ;
  input \FSM_onehot_state_reg[3]_2 ;
  input [0:0]SR;
  input clk;
  input [4:0]\FSM_onehot_state[4]_i_2__0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_15_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_2__0 ;
  wire \FSM_onehot_state[4]_i_3__0_n_0 ;
  wire \FSM_onehot_state[4]_i_4__16_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5_0 ;
  wire \FSM_onehot_state[4]_i_5_n_0 ;
  wire \FSM_onehot_state[4]_i_6_n_0 ;
  wire \FSM_onehot_state[4]_i_8__6_n_0 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire a_j;
  wire [4:0]acks_out_reg;
  wire clk;
  wire count;
  wire \count_reg[0]_i_1__15_n_0 ;
  wire \count_reg[1]_i_1_n_0 ;
  wire \count_reg[2]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire done;
  wire done_aux;
  wire [4:2]j;
  wire j__0;
  wire \j_reg[0]_i_1__6_n_0 ;
  wire \j_reg[1]_i_1_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire \j_reg[2]_i_1_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1_n_0 ;
  wire [4:1]next_state6;
  wire valid;
  wire valid_aux;
  wire valid_aux_reg_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA2AAAAAAAA)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_5_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4__16_n_0 ),
        .I3(\FSM_onehot_state[4]_i_3__0_n_0 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(acks_out_reg[2]),
        .I1(valid),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFF55570000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg[4]_1 ),
        .I1(\FSM_onehot_state[4]_i_3__0_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4__16_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state[4]_i_6_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \FSM_onehot_state[4]_i_11 
       (.I0(\FSM_onehot_state[4]_i_15_n_0 ),
        .I1(\FSM_onehot_state[4]_i_5_0 [3]),
        .I2(\FSM_onehot_state_reg[1]_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5_0 [4]),
        .O(next_state6[4]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \FSM_onehot_state[4]_i_12 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5_0 [0]),
        .I2(\FSM_onehot_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_state[4]_i_5_0 [1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \FSM_onehot_state[4]_i_15 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state[4]_i_5_0 [2]),
        .I2(\FSM_onehot_state[4]_i_5_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5_0 [1]),
        .I5(\FSM_onehot_state_reg[1]_0 [1]),
        .O(\FSM_onehot_state[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(acks_out_reg[0]),
        .I1(acks_out_reg[1]),
        .I2(acks_out_reg[3]),
        .I3(acks_out_reg[2]),
        .I4(done),
        .O(E));
  LUT6 #(
    .INIT(64'hFB7DBEFBFBBEFBBE)) 
    \FSM_onehot_state[4]_i_3__0 
       (.I0(j[4]),
        .I1(\FSM_onehot_state[4]_i_8__6_n_0 ),
        .I2(j[3]),
        .I3(next_state6[3]),
        .I4(\FSM_onehot_state_reg[3]_2 ),
        .I5(next_state6[4]),
        .O(\FSM_onehot_state[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_4__16 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[1]_0 [0]),
        .I2(\FSM_onehot_state[4]_i_5_0 [0]),
        .O(\FSM_onehot_state[4]_i_4__16_n_0 ));
  LUT6 #(
    .INIT(64'h6FF5BDAFF65FDBFA)) 
    \FSM_onehot_state[4]_i_5 
       (.I0(next_state6[1]),
        .I1(\FSM_onehot_state_reg[3]_1 ),
        .I2(\FSM_onehot_state_reg[3]_0 ),
        .I3(next_state6[4]),
        .I4(Q[1]),
        .I5(j[2]),
        .O(\FSM_onehot_state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \FSM_onehot_state[4]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\FSM_onehot_state[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[4]_i_8__6 
       (.I0(j[2]),
        .I1(Q[1]),
        .O(\FSM_onehot_state[4]_i_8__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_9 
       (.I0(\FSM_onehot_state[4]_i_15_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5_0 [3]),
        .O(next_state6[3]));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__0 [0]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__0 [1]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__0 [2]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__0 [3]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__0 [4]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h699A)) 
    \a_j_reg[4]_i_10__3 
       (.I0(j[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(j[2]),
        .O(\j_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'h7E0781F8)) 
    \a_j_reg[4]_i_24 
       (.I0(Q[0]),
        .I1(j[3]),
        .I2(Q[1]),
        .I3(j[2]),
        .I4(j[4]),
        .O(\j_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'hF8011FFA)) 
    \a_j_reg[4]_i_25 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j[4]),
        .I3(j[2]),
        .I4(j[3]),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \a_j_reg[4]_i_8__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j[2]),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    acks_out_reg_i_2
       (.I0(acks_out_reg[4]),
        .I1(acks_out_reg[0]),
        .I2(acks_out_reg[2]),
        .I3(valid),
        .I4(done),
        .I5(acks_out_reg[1]),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__15_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__15 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \count_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \count_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \count_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\count_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \count_reg[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[4]_1 ),
        .I2(\FSM_onehot_state[4]_i_3__0_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__16_n_0 ),
        .I4(\FSM_onehot_state[4]_i_5_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__6_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \j_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[2]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \j_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\j_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[3]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \j_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(j[3]),
        .I2(j[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\j_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \j_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(j[4]),
        .I2(j[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(j[2]),
        .O(\j_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(j__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(valid_aux_reg_i_2_n_0),
        .O(valid_aux));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    valid_aux_reg_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[4] ),
        .O(valid_aux_reg_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0
   (valid,
    Q,
    D,
    \FSM_onehot_state_reg[4]_0 ,
    E,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \j_reg[3]_0 ,
    \j_reg[4]_0 ,
    \j_reg[3]_1 ,
    \j_reg[0]_0 ,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1_0 ,
    \a_j_reg[0]_i_1_1 ,
    a_in_9,
    \a_j_reg[0]_i_2_0 ,
    \a_j_reg[0]_i_2_1 ,
    \FSM_onehot_state_reg[4]_1 ,
    \count_reg_reg[0] ,
    next_out_9,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state[4]_i_5__0_0 ,
    SR,
    clk,
    \FSM_onehot_state[4]_i_2__2 );
  output valid;
  output [1:0]Q;
  output [4:0]D;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]E;
  output [0:0]\FSM_onehot_state_reg[2]_0 ;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output \j_reg[3]_0 ;
  output \j_reg[4]_0 ;
  output \j_reg[3]_1 ;
  output \j_reg[0]_0 ;
  input [1:0]\a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1_0 ;
  input \a_j_reg[0]_i_1_1 ;
  input [44:0]a_in_9;
  input \a_j_reg[0]_i_2_0 ;
  input \a_j_reg[0]_i_2_1 ;
  input \FSM_onehot_state_reg[4]_1 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_9;
  input [0:0]\FSM_onehot_state_reg[3]_0 ;
  input \FSM_onehot_state_reg[3]_1 ;
  input \FSM_onehot_state_reg[3]_2 ;
  input [4:0]\FSM_onehot_state[4]_i_5__0_0 ;
  input [0:0]SR;
  input clk;
  input [4:0]\FSM_onehot_state[4]_i_2__2 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__2_n_0 ;
  wire \FSM_onehot_state[1]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_1__1_n_0 ;
  wire \FSM_onehot_state[4]_i_12__7_n_0 ;
  wire \FSM_onehot_state[4]_i_16__2_n_0 ;
  wire \FSM_onehot_state[4]_i_17_n_0 ;
  wire \FSM_onehot_state[4]_i_1__9_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_2__2 ;
  wire \FSM_onehot_state[4]_i_3__2_n_0 ;
  wire \FSM_onehot_state[4]_i_4__1_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5__0_0 ;
  wire \FSM_onehot_state[4]_i_5__0_n_0 ;
  wire \FSM_onehot_state[4]_i_6__0_n_0 ;
  wire \FSM_onehot_state[4]_i_8__7_n_0 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_0 ;
  wire [0:0]\FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [44:0]a_in_9;
  wire a_j;
  wire [1:0]\a_j_reg[0]_0 ;
  wire \a_j_reg[0]_i_1_0 ;
  wire \a_j_reg[0]_i_1_1 ;
  wire \a_j_reg[0]_i_2_0 ;
  wire \a_j_reg[0]_i_2_1 ;
  wire \a_j_reg[0]_i_2_n_0 ;
  wire \a_j_reg[0]_i_3_n_0 ;
  wire \a_j_reg[1]_i_2_n_0 ;
  wire \a_j_reg[1]_i_3_n_0 ;
  wire \a_j_reg[2]_i_2_n_0 ;
  wire \a_j_reg[2]_i_3_n_0 ;
  wire \a_j_reg[3]_i_2_n_0 ;
  wire \a_j_reg[3]_i_3_n_0 ;
  wire \a_j_reg[4]_i_11_n_0 ;
  wire \a_j_reg[4]_i_12_n_0 ;
  wire \a_j_reg[4]_i_13_n_0 ;
  wire \a_j_reg[4]_i_14_n_0 ;
  wire \a_j_reg[4]_i_15_n_0 ;
  wire \a_j_reg[4]_i_16_n_0 ;
  wire \a_j_reg[4]_i_17_n_0 ;
  wire \a_j_reg[4]_i_18_n_0 ;
  wire \a_j_reg[4]_i_19_n_0 ;
  wire \a_j_reg[4]_i_20_n_0 ;
  wire \a_j_reg[4]_i_21_n_0 ;
  wire \a_j_reg[4]_i_22_n_0 ;
  wire \a_j_reg[4]_i_23_n_0 ;
  wire \a_j_reg[4]_i_2_n_0 ;
  wire \a_j_reg[4]_i_3_n_0 ;
  wire \a_j_reg[4]_i_4_n_0 ;
  wire \a_j_reg[4]_i_5_n_0 ;
  wire \a_j_reg[4]_i_6_n_0 ;
  wire \a_j_reg[4]_i_7_n_0 ;
  wire \a_j_reg[4]_i_9_n_0 ;
  wire clk;
  wire count;
  wire \count_reg[0]_i_1__16_n_0 ;
  wire \count_reg[1]_i_1__1_n_0 ;
  wire \count_reg[2]_i_1__1_n_0 ;
  wire \count_reg[3]_i_1__1_n_0 ;
  wire \count_reg[4]_i_1__1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux;
  wire [4:2]j;
  wire j__0;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_i_1__7_n_0 ;
  wire \j_reg[1]_i_1__0_n_0 ;
  wire \j_reg[2]_i_1__0_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_i_1__0_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__0_n_0 ;
  wire next_out_9;
  wire [4:1]next_state6;
  wire valid;
  wire valid_aux;

  LUT6 #(
    .INIT(64'hFFFBFFFFAAAAAAAA)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[4] ),
        .O(\FSM_onehot_state[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_5__0_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4__1_n_0 ),
        .I3(\FSM_onehot_state[4]_i_3__2_n_0 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .O(\FSM_onehot_state[3]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \FSM_onehot_state[4]_i_11__0 
       (.I0(\FSM_onehot_state[4]_i_17_n_0 ),
        .I1(\FSM_onehot_state[4]_i_5__0_0 [3]),
        .I2(\FSM_onehot_state_reg[1]_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__0_0 [4]),
        .O(next_state6[4]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[4]_i_12__7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_state[4]_i_12__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \FSM_onehot_state[4]_i_13 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5__0_0 [0]),
        .I2(\FSM_onehot_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_state[4]_i_5__0_0 [1]),
        .O(next_state6[1]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \FSM_onehot_state[4]_i_16__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(j[2]),
        .O(\FSM_onehot_state[4]_i_16__2_n_0 ));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \FSM_onehot_state[4]_i_17 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state[4]_i_5__0_0 [2]),
        .I2(\FSM_onehot_state[4]_i_5__0_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__0_0 [1]),
        .I5(\FSM_onehot_state_reg[1]_0 [1]),
        .O(\FSM_onehot_state[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55570000)) 
    \FSM_onehot_state[4]_i_1__9 
       (.I0(\FSM_onehot_state_reg[4]_1 ),
        .I1(\FSM_onehot_state[4]_i_3__2_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4__1_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5__0_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state[4]_i_6__0_n_0 ),
        .O(\FSM_onehot_state[4]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__1 
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_9),
        .I4(\count_reg_reg[0] [2]),
        .I5(done),
        .O(E));
  LUT6 #(
    .INIT(64'hFB7DBEFBFBBEFBBE)) 
    \FSM_onehot_state[4]_i_3__2 
       (.I0(j[4]),
        .I1(\FSM_onehot_state[4]_i_8__7_n_0 ),
        .I2(j[3]),
        .I3(next_state6[3]),
        .I4(\FSM_onehot_state_reg[3]_2 ),
        .I5(next_state6[4]),
        .O(\FSM_onehot_state[4]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_onehot_state[4]_i_4__1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[1]_0 [0]),
        .I2(\FSM_onehot_state[4]_i_5__0_0 [0]),
        .O(\FSM_onehot_state[4]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hEF7966FF79EFFF66)) 
    \FSM_onehot_state[4]_i_5__0 
       (.I0(\FSM_onehot_state[4]_i_12__7_n_0 ),
        .I1(next_state6[1]),
        .I2(\FSM_onehot_state_reg[3]_1 ),
        .I3(\FSM_onehot_state_reg[3]_0 ),
        .I4(next_state6[4]),
        .I5(\FSM_onehot_state[4]_i_16__2_n_0 ),
        .O(\FSM_onehot_state[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_onehot_state[4]_i_6__0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[4]_i_8__7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(j[2]),
        .O(\FSM_onehot_state[4]_i_8__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_9__0 
       (.I0(\FSM_onehot_state[4]_i_17_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__0_0 [3]),
        .O(next_state6[3]));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__2_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__9_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__2 [0]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[0]_i_1 
       (.I0(\a_j_reg[3]_i_2_n_0 ),
        .I1(\a_j_reg[1]_i_2_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[2]_i_2_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[0]_i_2 
       (.I0(\a_j_reg[4]_i_22_n_0 ),
        .I1(\a_j_reg[4]_i_23_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[0]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_20_n_0 ),
        .O(\a_j_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[0]_i_3 
       (.I0(a_in_9[16]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[0]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[32]),
        .O(\a_j_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__2 [1]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[1]_i_1 
       (.I0(\a_j_reg[4]_i_5_n_0 ),
        .I1(\a_j_reg[2]_i_2_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[3]_i_2_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2 
       (.I0(\a_j_reg[4]_i_14_n_0 ),
        .I1(\a_j_reg[4]_i_15_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[1]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_12_n_0 ),
        .O(\a_j_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[1]_i_3 
       (.I0(a_in_9[17]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[1]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[33]),
        .O(\a_j_reg[1]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__2 [2]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[2]_i_1 
       (.I0(\a_j_reg[4]_i_3_n_0 ),
        .I1(\a_j_reg[3]_i_2_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_5_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2 
       (.I0(\a_j_reg[4]_i_18_n_0 ),
        .I1(\a_j_reg[4]_i_19_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[2]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_16_n_0 ),
        .O(\a_j_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[2]_i_3 
       (.I0(a_in_9[18]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[2]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[34]),
        .O(\a_j_reg[2]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__2 [3]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[3]_i_1 
       (.I0(\a_j_reg[4]_i_4_n_0 ),
        .I1(\a_j_reg[4]_i_5_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_3_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2 
       (.I0(\a_j_reg[4]_i_9_n_0 ),
        .I1(\a_j_reg[4]_i_11_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[3]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_6_n_0 ),
        .O(\a_j_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[3]_i_3 
       (.I0(a_in_9[19]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[3]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[35]),
        .O(\a_j_reg[3]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__2 [4]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[4]_i_1 
       (.I0(\a_j_reg[4]_i_2_n_0 ),
        .I1(\a_j_reg[4]_i_3_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_4_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[4]_i_5_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hE11E)) 
    \a_j_reg[4]_i_10 
       (.I0(j[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(j[3]),
        .O(\j_reg[3]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_11 
       (.I0(a_in_9[31]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[15]),
        .O(\a_j_reg[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_12 
       (.I0(a_in_9[25]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[9]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[41]),
        .O(\a_j_reg[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_13 
       (.I0(a_in_9[33]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[1]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[17]),
        .O(\a_j_reg[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_14 
       (.I0(a_in_9[21]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[5]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[37]),
        .O(\a_j_reg[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_15 
       (.I0(a_in_9[29]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[13]),
        .O(\a_j_reg[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_16 
       (.I0(a_in_9[26]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[10]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[42]),
        .O(\a_j_reg[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_17 
       (.I0(a_in_9[34]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[2]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[18]),
        .O(\a_j_reg[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_18 
       (.I0(a_in_9[22]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[6]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[38]),
        .O(\a_j_reg[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_19 
       (.I0(a_in_9[30]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[14]),
        .O(\a_j_reg[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_2 
       (.I0(\a_j_reg[4]_i_6_n_0 ),
        .I1(\a_j_reg[4]_i_7_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_9_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_11_n_0 ),
        .O(\a_j_reg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_20 
       (.I0(a_in_9[24]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[8]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[40]),
        .O(\a_j_reg[4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_21 
       (.I0(a_in_9[32]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[0]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[16]),
        .O(\a_j_reg[4]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_22 
       (.I0(a_in_9[20]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[4]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[36]),
        .O(\a_j_reg[4]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_23 
       (.I0(a_in_9[28]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[12]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[44]),
        .O(\a_j_reg[4]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hFA800FFE)) 
    \a_j_reg[4]_i_24__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j[4]),
        .I3(j[2]),
        .I4(j[3]),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h3F81C07E)) 
    \a_j_reg[4]_i_25__0 
       (.I0(Q[0]),
        .I1(j[3]),
        .I2(Q[1]),
        .I3(j[2]),
        .I4(j[4]),
        .O(\j_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_3 
       (.I0(\a_j_reg[4]_i_12_n_0 ),
        .I1(\a_j_reg[4]_i_13_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_14_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_15_n_0 ),
        .O(\a_j_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_4 
       (.I0(\a_j_reg[4]_i_16_n_0 ),
        .I1(\a_j_reg[4]_i_17_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_18_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_19_n_0 ),
        .O(\a_j_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_5 
       (.I0(\a_j_reg[4]_i_20_n_0 ),
        .I1(\a_j_reg[4]_i_21_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_22_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_23_n_0 ),
        .O(\a_j_reg[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_6 
       (.I0(a_in_9[27]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[11]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[43]),
        .O(\a_j_reg[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_7 
       (.I0(a_in_9[35]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[3]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[19]),
        .O(\a_j_reg[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \a_j_reg[4]_i_8 
       (.I0(j[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_9 
       (.I0(a_in_9[23]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[7]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[39]),
        .O(\a_j_reg[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    acks_out_reg_i_2__0
       (.I0(\count_reg_reg[0] [4]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [2]),
        .I3(valid),
        .I4(done),
        .I5(\count_reg_reg[0] [1]),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__16_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__16 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__16_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count_reg[1]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \count_reg[2]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count_reg[2]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \count_reg[3]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count_reg[3]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \count_reg[4]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\count_reg[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \count_reg[4]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[4]_1 ),
        .I2(\FSM_onehot_state[4]_i_3__2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__1_n_0 ),
        .I4(\FSM_onehot_state[4]_i_5__0_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__7_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__0_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \j_reg[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[1]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__0_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[2]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \j_reg[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\j_reg[2]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__0_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[3]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \j_reg[3]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(j[3]),
        .I2(j[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\j_reg[3]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__0_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \j_reg[4]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(j[4]),
        .I2(j[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(j[2]),
        .O(\j_reg[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(j__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAAAAAAA)) 
    valid_aux_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1
   (D,
    \FSM_onehot_state_reg[4]_0 ,
    E,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \a_j_reg[3]_i_3__1 ,
    \j_reg[1]_0 ,
    \j_reg[3]_0 ,
    \j_reg[4]_0 ,
    \j_reg[3]_1 ,
    \FSM_onehot_state_reg[2]_0 ,
    Q,
    \a_j_reg[0]_i_1__0_0 ,
    \a_j_reg[0]_i_1__0_1 ,
    a_in_8,
    \a_j_reg[0]_i_2__0_0 ,
    \a_j_reg[0]_i_2__0_1 ,
    \count_reg_reg[0] ,
    next_out_8,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[4]_1 ,
    \FSM_onehot_state_reg[4]_2 ,
    \FSM_onehot_state[4]_i_5__1_0 ,
    \FSM_onehot_state[4]_i_4__2_0 ,
    \a_j_reg[2]_0 ,
    \a_j_reg[2]_1 ,
    \a_j_reg[2]_2 ,
    \a_j_reg[4]_0 ,
    \a_j_reg[4]_i_1__1_0 ,
    \a_j_reg[4]_i_1__1_1 ,
    \a_j_reg[0]_i_1__1 ,
    complete_tick,
    SR,
    clk,
    \FSM_onehot_state[4]_i_7__1 );
  output [4:0]D;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]E;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output [1:0]\FSM_onehot_state_reg[3]_0 ;
  output \a_j_reg[3]_i_3__1 ;
  output \j_reg[1]_0 ;
  output \j_reg[3]_0 ;
  output \j_reg[4]_0 ;
  output \j_reg[3]_1 ;
  output [1:0]\FSM_onehot_state_reg[2]_0 ;
  input [1:0]Q;
  input \a_j_reg[0]_i_1__0_0 ;
  input \a_j_reg[0]_i_1__0_1 ;
  input [39:0]a_in_8;
  input \a_j_reg[0]_i_2__0_0 ;
  input \a_j_reg[0]_i_2__0_1 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_8;
  input \FSM_onehot_state_reg[3]_1 ;
  input [0:0]\FSM_onehot_state_reg[4]_1 ;
  input \FSM_onehot_state_reg[4]_2 ;
  input [4:0]\FSM_onehot_state[4]_i_5__1_0 ;
  input \FSM_onehot_state[4]_i_4__2_0 ;
  input \a_j_reg[2]_0 ;
  input \a_j_reg[2]_1 ;
  input \a_j_reg[2]_2 ;
  input \a_j_reg[4]_0 ;
  input \a_j_reg[4]_i_1__1_0 ;
  input \a_j_reg[4]_i_1__1_1 ;
  input \a_j_reg[0]_i_1__1 ;
  input complete_tick;
  input [0:0]SR;
  input clk;
  input [2:0]\FSM_onehot_state[4]_i_7__1 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__3_n_0 ;
  wire \FSM_onehot_state[1]_i_2__1_n_0 ;
  wire \FSM_onehot_state[3]_i_1__3_n_0 ;
  wire \FSM_onehot_state[4]_i_14__0_n_0 ;
  wire \FSM_onehot_state[4]_i_1__10_n_0 ;
  wire \FSM_onehot_state[4]_i_2__4_n_0 ;
  wire \FSM_onehot_state[4]_i_4__2_0 ;
  wire \FSM_onehot_state[4]_i_4__2_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5__1_0 ;
  wire \FSM_onehot_state[4]_i_5__1_n_0 ;
  wire \FSM_onehot_state[4]_i_6__1_n_0 ;
  wire [2:0]\FSM_onehot_state[4]_i_7__1 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [1:0]\FSM_onehot_state_reg[2]_0 ;
  wire [1:0]\FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire [0:0]\FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg[4]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [39:0]a_in_8;
  wire a_j;
  wire \a_j_reg[0]_i_1__0_0 ;
  wire \a_j_reg[0]_i_1__0_1 ;
  wire \a_j_reg[0]_i_1__1 ;
  wire \a_j_reg[0]_i_2__0_0 ;
  wire \a_j_reg[0]_i_2__0_1 ;
  wire \a_j_reg[0]_i_2__0_n_0 ;
  wire \a_j_reg[0]_i_3__0_n_0 ;
  wire \a_j_reg[1]_i_2__0_n_0 ;
  wire \a_j_reg[1]_i_3__0_n_0 ;
  wire \a_j_reg[2]_0 ;
  wire \a_j_reg[2]_1 ;
  wire \a_j_reg[2]_2 ;
  wire \a_j_reg[2]_i_1__1_n_0 ;
  wire \a_j_reg[2]_i_2__0_n_0 ;
  wire \a_j_reg[2]_i_3__0_n_0 ;
  wire \a_j_reg[3]_i_2__0_n_0 ;
  wire \a_j_reg[3]_i_3__0_n_0 ;
  wire \a_j_reg[3]_i_3__1 ;
  wire \a_j_reg[4]_0 ;
  wire \a_j_reg[4]_i_11__0_n_0 ;
  wire \a_j_reg[4]_i_12__0_n_0 ;
  wire \a_j_reg[4]_i_13__0_n_0 ;
  wire \a_j_reg[4]_i_14__0_n_0 ;
  wire \a_j_reg[4]_i_15__0_n_0 ;
  wire \a_j_reg[4]_i_16__0_n_0 ;
  wire \a_j_reg[4]_i_17__0_n_0 ;
  wire \a_j_reg[4]_i_18__0_n_0 ;
  wire \a_j_reg[4]_i_19__0_n_0 ;
  wire \a_j_reg[4]_i_1__1_0 ;
  wire \a_j_reg[4]_i_1__1_1 ;
  wire \a_j_reg[4]_i_1__1_n_0 ;
  wire \a_j_reg[4]_i_20__0_n_0 ;
  wire \a_j_reg[4]_i_21__0_n_0 ;
  wire \a_j_reg[4]_i_22__0_n_0 ;
  wire \a_j_reg[4]_i_23__0_n_0 ;
  wire \a_j_reg[4]_i_2__0_n_0 ;
  wire \a_j_reg[4]_i_2__1_n_0 ;
  wire \a_j_reg[4]_i_3__0_n_0 ;
  wire \a_j_reg[4]_i_4__0_n_0 ;
  wire \a_j_reg[4]_i_5__0_n_0 ;
  wire \a_j_reg[4]_i_6__0_n_0 ;
  wire \a_j_reg[4]_i_7__0_n_0 ;
  wire \a_j_reg[4]_i_9__0_n_0 ;
  wire clk;
  wire complete_tick;
  wire count;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[1]_i_1__3_n_0 ;
  wire \count_reg[2]_i_1__3_n_0 ;
  wire \count_reg[3]_i_1__3_n_0 ;
  wire \count_reg[4]_i_1__3_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux;
  wire [4:2]j;
  wire j__0;
  wire \j_reg[0]_i_1_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__1_n_0 ;
  wire \j_reg[2]_i_1__1_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_i_1__1_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__1_n_0 ;
  wire next_out_8;
  wire [4:4]next_state30_in;
  wire [3:1]next_state6;
  wire [4:4]p_0_in;
  wire valid;
  wire valid_aux;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFEF0000)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\FSM_onehot_state[1]_i_2__1_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__4 
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [2]),
        .I2(valid),
        .I3(complete_tick),
        .I4(\count_reg_reg[0] [3]),
        .O(\FSM_onehot_state_reg[2]_0 [0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[1]_i_2__1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_6__1_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__1_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__2_n_0 ),
        .I4(\FSM_onehot_state_reg[3]_1 ),
        .O(\FSM_onehot_state[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__4 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \FSM_onehot_state[4]_i_10 
       (.I0(\FSM_onehot_state[4]_i_5__1_0 [3]),
        .I1(\FSM_onehot_state[4]_i_14__0_n_0 ),
        .I2(\FSM_onehot_state_reg[1]_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__1_0 [4]),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \FSM_onehot_state[4]_i_13__0 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5__1_0 [0]),
        .I2(\FSM_onehot_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_state[4]_i_5__1_0 [1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'hF7FF757751551011)) 
    \FSM_onehot_state[4]_i_14__0 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(\FSM_onehot_state[4]_i_5__1_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__1_0 [1]),
        .I5(\FSM_onehot_state[4]_i_5__1_0 [2]),
        .O(\FSM_onehot_state[4]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFAAAAAAAA)) 
    \FSM_onehot_state[4]_i_1__10 
       (.I0(\FSM_onehot_state[4]_i_2__4_n_0 ),
        .I1(\FSM_onehot_state_reg[3]_1 ),
        .I2(\FSM_onehot_state[4]_i_4__2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5__1_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6__1_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1__10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__3 
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [2]),
        .I3(done),
        .I4(next_out_8),
        .I5(\count_reg_reg[0] [3]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \FSM_onehot_state[4]_i_2__4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'hD6)) 
    \FSM_onehot_state[4]_i_4__2 
       (.I0(next_state30_in),
        .I1(j[3]),
        .I2(j[4]),
        .O(\FSM_onehot_state[4]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hF6F9F69F6F6F6FF9)) 
    \FSM_onehot_state[4]_i_5__1 
       (.I0(next_state6[3]),
        .I1(j[3]),
        .I2(j[2]),
        .I3(p_0_in),
        .I4(\FSM_onehot_state_reg[4]_2 ),
        .I5(\FSM_onehot_state_reg[4]_1 ),
        .O(\FSM_onehot_state[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hA5FFFF96FF96A5FF)) 
    \FSM_onehot_state[4]_i_6__1 
       (.I0(\FSM_onehot_state_reg[3]_0 [1]),
        .I1(p_0_in),
        .I2(next_state6[1]),
        .I3(\FSM_onehot_state_reg[3]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__1_0 [0]),
        .I5(\FSM_onehot_state_reg[1]_0 [0]),
        .O(\FSM_onehot_state[4]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h0492920400000000)) 
    \FSM_onehot_state[4]_i_8 
       (.I0(\FSM_onehot_state[4]_i_14__0_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__1_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__1_0 [4]),
        .I5(\FSM_onehot_state[4]_i_4__2_0 ),
        .O(next_state30_in));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_9__1 
       (.I0(\FSM_onehot_state[4]_i_14__0_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__1_0 [3]),
        .O(next_state6[3]));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__3_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__10_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__1 [0]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[0]_i_1__0 
       (.I0(\a_j_reg[0]_i_2__0_n_0 ),
        .I1(\a_j_reg[2]_i_2__0_n_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[1]_i_2__0_n_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[3]_i_2__0_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[0]_i_2__0 
       (.I0(\a_j_reg[4]_i_9__0_n_0 ),
        .I1(\a_j_reg[4]_i_11__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_7__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[0]_i_3__0_n_0 ),
        .O(\a_j_reg[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[0]_i_3__0 
       (.I0(a_in_8[16]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[0]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[32]),
        .O(\a_j_reg[0]_i_3__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__1 [1]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_1__0 
       (.I0(\a_j_reg[1]_i_2__0_n_0 ),
        .I1(\a_j_reg[3]_i_2__0_n_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[2]_i_2__0_n_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_2__0_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2__0 
       (.I0(\a_j_reg[4]_i_18__0_n_0 ),
        .I1(\a_j_reg[4]_i_19__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_17__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[1]_i_3__0_n_0 ),
        .O(\a_j_reg[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[1]_i_3__0 
       (.I0(a_in_8[17]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[1]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[33]),
        .O(\a_j_reg[1]_i_3__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\a_j_reg[2]_i_1__1_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_1__0 
       (.I0(\a_j_reg[2]_i_2__0_n_0 ),
        .I1(\a_j_reg[4]_i_2__0_n_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[3]_i_2__0_n_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_4__0_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[2]_i_1__1 
       (.I0(\a_j_reg[3]_i_3__1 ),
        .I1(\a_j_reg[2]_0 ),
        .I2(\FSM_onehot_state_reg[3]_0 [0]),
        .I3(\a_j_reg[2]_1 ),
        .I4(\FSM_onehot_state_reg[3]_0 [1]),
        .I5(\a_j_reg[2]_2 ),
        .O(\a_j_reg[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2__0 
       (.I0(\a_j_reg[4]_i_14__0_n_0 ),
        .I1(\a_j_reg[4]_i_15__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_13__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[2]_i_3__0_n_0 ),
        .O(\a_j_reg[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[2]_i_3__0 
       (.I0(a_in_8[18]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[2]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[34]),
        .O(\a_j_reg[2]_i_3__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__1 [2]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_1__0 
       (.I0(\a_j_reg[3]_i_2__0_n_0 ),
        .I1(\a_j_reg[4]_i_4__0_n_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[4]_i_2__0_n_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_3__0_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2__0 
       (.I0(\a_j_reg[4]_i_22__0_n_0 ),
        .I1(\a_j_reg[4]_i_23__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_21__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[3]_i_3__0_n_0 ),
        .O(\a_j_reg[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hEEBE2282)) 
    \a_j_reg[3]_i_2__1 
       (.I0(\a_j_reg[4]_i_1__1_1 ),
        .I1(j[2]),
        .I2(\FSM_onehot_state_reg[3]_0 [0]),
        .I3(\FSM_onehot_state_reg[3]_0 [1]),
        .I4(\a_j_reg[0]_i_1__1 ),
        .O(\a_j_reg[3]_i_3__1 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[3]_i_3__0 
       (.I0(a_in_8[19]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[3]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[35]),
        .O(\a_j_reg[3]_i_3__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\a_j_reg[4]_i_1__1_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_11__0 
       (.I0(a_in_8[20]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[4]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[36]),
        .O(\a_j_reg[4]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h38C7)) 
    \a_j_reg[4]_i_11__1 
       (.I0(j[2]),
        .I1(\FSM_onehot_state_reg[3]_0 [0]),
        .I2(\FSM_onehot_state_reg[3]_0 [1]),
        .I3(j[3]),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_12__0 
       (.I0(a_in_8[34]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[2]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[18]),
        .O(\a_j_reg[4]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \a_j_reg[4]_i_12__1 
       (.I0(j[2]),
        .I1(\FSM_onehot_state_reg[3]_0 [0]),
        .I2(\FSM_onehot_state_reg[3]_0 [1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_13__0 
       (.I0(a_in_8[26]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[10]),
        .O(\a_j_reg[4]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_14__0 
       (.I0(a_in_8[30]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[14]),
        .O(\a_j_reg[4]_i_14__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_15__0 
       (.I0(a_in_8[22]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[6]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[38]),
        .O(\a_j_reg[4]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_16__0 
       (.I0(a_in_8[33]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[1]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[17]),
        .O(\a_j_reg[4]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_17__0 
       (.I0(a_in_8[25]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[9]),
        .O(\a_j_reg[4]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_18__0 
       (.I0(a_in_8[29]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[13]),
        .O(\a_j_reg[4]_i_18__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_19__0 
       (.I0(a_in_8[21]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[5]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[37]),
        .O(\a_j_reg[4]_i_19__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h17C8E837)) 
    \a_j_reg[4]_i_19__1 
       (.I0(j[3]),
        .I1(\FSM_onehot_state_reg[3]_0 [1]),
        .I2(\FSM_onehot_state_reg[3]_0 [0]),
        .I3(j[2]),
        .I4(j[4]),
        .O(\j_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_1__0 
       (.I0(\a_j_reg[4]_i_2__0_n_0 ),
        .I1(\a_j_reg[4]_i_3__0_n_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[4]_i_4__0_n_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_5__0_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0E0E0)) 
    \a_j_reg[4]_i_1__1 
       (.I0(\a_j_reg[4]_i_2__1_n_0 ),
        .I1(\a_j_reg[2]_0 ),
        .I2(\FSM_onehot_state_reg[3]_0 [0]),
        .I3(\a_j_reg[2]_2 ),
        .I4(\FSM_onehot_state_reg[3]_0 [1]),
        .I5(\a_j_reg[4]_0 ),
        .O(\a_j_reg[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_20__0 
       (.I0(a_in_8[35]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[3]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[19]),
        .O(\a_j_reg[4]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h1137E888)) 
    \a_j_reg[4]_i_20__1 
       (.I0(j[4]),
        .I1(j[2]),
        .I2(\FSM_onehot_state_reg[3]_0 [0]),
        .I3(\FSM_onehot_state_reg[3]_0 [1]),
        .I4(j[3]),
        .O(\j_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_21__0 
       (.I0(a_in_8[27]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[11]),
        .O(\a_j_reg[4]_i_21__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_22__0 
       (.I0(a_in_8[31]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[15]),
        .O(\a_j_reg[4]_i_22__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_23__0 
       (.I0(a_in_8[23]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[7]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[39]),
        .O(\a_j_reg[4]_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_2__0 
       (.I0(\a_j_reg[4]_i_6__0_n_0 ),
        .I1(\a_j_reg[4]_i_7__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_9__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_11__0_n_0 ),
        .O(\a_j_reg[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hCA0000CA)) 
    \a_j_reg[4]_i_2__1 
       (.I0(\a_j_reg[4]_i_1__1_0 ),
        .I1(\a_j_reg[4]_i_1__1_1 ),
        .I2(j[2]),
        .I3(\FSM_onehot_state_reg[3]_0 [0]),
        .I4(\FSM_onehot_state_reg[3]_0 [1]),
        .O(\a_j_reg[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_3__0 
       (.I0(\a_j_reg[4]_i_12__0_n_0 ),
        .I1(\a_j_reg[4]_i_13__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_14__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_15__0_n_0 ),
        .O(\a_j_reg[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_4__0 
       (.I0(\a_j_reg[4]_i_16__0_n_0 ),
        .I1(\a_j_reg[4]_i_17__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_18__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_19__0_n_0 ),
        .O(\a_j_reg[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_5__0 
       (.I0(\a_j_reg[4]_i_20__0_n_0 ),
        .I1(\a_j_reg[4]_i_21__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_22__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_23__0_n_0 ),
        .O(\a_j_reg[4]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_6__0 
       (.I0(a_in_8[32]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[0]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[16]),
        .O(\a_j_reg[4]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_7__0 
       (.I0(a_in_8[24]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[8]),
        .O(\a_j_reg[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_9__0 
       (.I0(a_in_8[28]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[12]),
        .O(\a_j_reg[4]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__1
       (.I0(\count_reg_reg[0] [4]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [0]),
        .I3(\count_reg_reg[0] [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__3_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \count_reg[1]_i_1__3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count_reg[1]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__3_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__3 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__3_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__3_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__3 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \count_reg[4]_i_2__1 
       (.I0(\FSM_onehot_state_reg[3]_1 ),
        .I1(\FSM_onehot_state[4]_i_4__2_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__1_n_0 ),
        .I3(\FSM_onehot_state[4]_i_6__1_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_0 [0]),
        .O(\j_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__1 
       (.I0(\FSM_onehot_state_reg[3]_0 [0]),
        .I1(\FSM_onehot_state_reg[3]_0 [1]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[2]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__1 
       (.I0(\FSM_onehot_state_reg[3]_0 [1]),
        .I1(\FSM_onehot_state_reg[3]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(j[2]),
        .O(\j_reg[2]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[3]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__1 
       (.I0(j[2]),
        .I1(\FSM_onehot_state_reg[3]_0 [0]),
        .I2(\FSM_onehot_state_reg[3]_0 [1]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(j[3]),
        .O(\j_reg[3]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__1_n_0 ),
        .G(j__0),
        .GE(1'b1),
        .Q(j[4]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__1 
       (.I0(j[3]),
        .I1(\FSM_onehot_state_reg[3]_0 [1]),
        .I2(\FSM_onehot_state_reg[3]_0 [0]),
        .I3(j[2]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(j[4]),
        .O(\j_reg[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(j__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    valid_aux_reg_i_1__1
       (.I0(\count_reg_n_0_[3] ),
        .I1(\FSM_onehot_state[1]_i_2__1_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2
   (D,
    \a_j_reg[4]_i_16__1_0 ,
    \a_j_reg[4]_i_12__1 ,
    \a_j_reg[4]_i_12__1_0 ,
    \a_j_reg[4]_i_12__1_1 ,
    \count_reg_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[4]_0 ,
    E,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[1]_0 ,
    \j_reg[1]_0 ,
    \j_reg[3]_0 ,
    \j_reg[4]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    Q,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1__1_0 ,
    \a_j_reg[0]_i_1__1_1 ,
    a_in_7,
    \a_j_reg[3]_i_2__1 ,
    \a_j_reg[0]_i_2__1_0 ,
    \count_reg_reg[0] ,
    next_out_7,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[4]_1 ,
    \FSM_onehot_state_reg[4]_2 ,
    \FSM_onehot_state[4]_i_5__2_0 ,
    \FSM_onehot_state[4]_i_4__4_0 ,
    \a_j_reg[0]_1 ,
    \a_j_reg[0]_i_1__2_0 ,
    \a_j_reg[0]_i_1__2_1 ,
    \a_j_reg[0]_i_1__2_2 ,
    \a_j_reg[0]_i_1__2_3 ,
    complete_tick,
    SR,
    clk,
    \FSM_onehot_state[4]_i_7__2 );
  output [2:0]D;
  output \a_j_reg[4]_i_16__1_0 ;
  output \a_j_reg[4]_i_12__1 ;
  output \a_j_reg[4]_i_12__1_0 ;
  output \a_j_reg[4]_i_12__1_1 ;
  output \count_reg_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]E;
  output [2:0]\FSM_onehot_state_reg[3]_2 ;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output \j_reg[1]_0 ;
  output \j_reg[3]_0 ;
  output \j_reg[4]_0 ;
  output [1:0]\FSM_onehot_state_reg[2]_0 ;
  input [1:0]Q;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1__1_0 ;
  input \a_j_reg[0]_i_1__1_1 ;
  input [34:0]a_in_7;
  input \a_j_reg[3]_i_2__1 ;
  input \a_j_reg[0]_i_2__1_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_7;
  input \FSM_onehot_state_reg[3]_3 ;
  input [0:0]\FSM_onehot_state_reg[4]_1 ;
  input \FSM_onehot_state_reg[4]_2 ;
  input [4:0]\FSM_onehot_state[4]_i_5__2_0 ;
  input \FSM_onehot_state[4]_i_4__4_0 ;
  input \a_j_reg[0]_1 ;
  input \a_j_reg[0]_i_1__2_0 ;
  input \a_j_reg[0]_i_1__2_1 ;
  input \a_j_reg[0]_i_1__2_2 ;
  input \a_j_reg[0]_i_1__2_3 ;
  input complete_tick;
  input [0:0]SR;
  input clk;
  input [3:0]\FSM_onehot_state[4]_i_7__2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__5_n_0 ;
  wire \FSM_onehot_state[1]_i_2__2_n_0 ;
  wire \FSM_onehot_state[3]_i_1__5_n_0 ;
  wire \FSM_onehot_state[4]_i_16_n_0 ;
  wire \FSM_onehot_state[4]_i_1__11_n_0 ;
  wire \FSM_onehot_state[4]_i_2__6_n_0 ;
  wire \FSM_onehot_state[4]_i_4__4_0 ;
  wire \FSM_onehot_state[4]_i_4__4_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5__2_0 ;
  wire \FSM_onehot_state[4]_i_5__2_n_0 ;
  wire \FSM_onehot_state[4]_i_6__2_n_0 ;
  wire [3:0]\FSM_onehot_state[4]_i_7__2 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [1:0]\FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire [2:0]\FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire [0:0]\FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg[4]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [34:0]a_in_7;
  wire a_j;
  wire \a_j_reg[0]_0 ;
  wire \a_j_reg[0]_1 ;
  wire \a_j_reg[0]_i_1__1_0 ;
  wire \a_j_reg[0]_i_1__1_1 ;
  wire \a_j_reg[0]_i_1__2_0 ;
  wire \a_j_reg[0]_i_1__2_1 ;
  wire \a_j_reg[0]_i_1__2_2 ;
  wire \a_j_reg[0]_i_1__2_3 ;
  wire \a_j_reg[0]_i_1__2_n_0 ;
  wire \a_j_reg[0]_i_2__1_0 ;
  wire \a_j_reg[0]_i_2__1_n_0 ;
  wire \a_j_reg[0]_i_2__2_n_0 ;
  wire \a_j_reg[0]_i_3__1_n_0 ;
  wire \a_j_reg[0]_i_3__2_n_0 ;
  wire \a_j_reg[1]_i_2__1_n_0 ;
  wire \a_j_reg[1]_i_3__1_n_0 ;
  wire \a_j_reg[2]_i_3__1_n_0 ;
  wire \a_j_reg[3]_i_2__1 ;
  wire \a_j_reg[4]_i_10__0_n_0 ;
  wire \a_j_reg[4]_i_12__1 ;
  wire \a_j_reg[4]_i_12__1_0 ;
  wire \a_j_reg[4]_i_12__1_1 ;
  wire \a_j_reg[4]_i_13__1_n_0 ;
  wire \a_j_reg[4]_i_14__1_n_0 ;
  wire \a_j_reg[4]_i_15__1_n_0 ;
  wire \a_j_reg[4]_i_16__1_0 ;
  wire \a_j_reg[4]_i_16__1_n_0 ;
  wire \a_j_reg[4]_i_17__1_n_0 ;
  wire \a_j_reg[4]_i_18__1_n_0 ;
  wire \a_j_reg[4]_i_8__0_n_0 ;
  wire \a_j_reg[4]_i_9__1_n_0 ;
  wire clk;
  wire complete_tick;
  wire count;
  wire \count_reg[0]_i_1__1_n_0 ;
  wire \count_reg[1]_i_1__5_n_0 ;
  wire \count_reg[2]_i_1__5_n_0 ;
  wire \count_reg[3]_i_1__5_n_0 ;
  wire \count_reg[4]_i_1__5_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire done;
  wire done_aux;
  wire j;
  wire \j_reg[0]_i_1__0_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__2_n_0 ;
  wire \j_reg[2]_i_1__2_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1__2_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__2_n_0 ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_7;
  wire [3:2]next_state3;
  wire [4:4]next_state30_in;
  wire [3:1]next_state6;
  wire [4:4]p_0_in;
  wire valid;
  wire valid_aux;

  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[1]_i_1__5 
       (.I0(\FSM_onehot_state[1]_i_2__2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__6 
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [2]),
        .I2(valid),
        .I3(complete_tick),
        .I4(\count_reg_reg[0] [3]),
        .O(\FSM_onehot_state_reg[2]_0 [0]));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \FSM_onehot_state[1]_i_2__2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .O(\FSM_onehot_state[1]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \FSM_onehot_state[3]_i_1__5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_6__2_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__4_n_0 ),
        .I4(\FSM_onehot_state_reg[3]_3 ),
        .O(\FSM_onehot_state[3]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__6 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \FSM_onehot_state[4]_i_10__0 
       (.I0(\FSM_onehot_state_reg[3]_2 [2]),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\j_reg_n_0_[3] ),
        .O(next_state3[3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \FSM_onehot_state[4]_i_11__2 
       (.I0(\FSM_onehot_state[4]_i_5__2_0 [3]),
        .I1(\FSM_onehot_state[4]_i_16_n_0 ),
        .I2(\FSM_onehot_state_reg[1]_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__2_0 [4]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \FSM_onehot_state[4]_i_14__1 
       (.I0(\FSM_onehot_state_reg[3]_2 [0]),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg[3]_2 [2]),
        .O(next_state3[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \FSM_onehot_state[4]_i_15__2 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5__2_0 [0]),
        .I2(\FSM_onehot_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_state[4]_i_5__2_0 [1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'hF7FF757751551011)) 
    \FSM_onehot_state[4]_i_16 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(\FSM_onehot_state[4]_i_5__2_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__2_0 [1]),
        .I5(\FSM_onehot_state[4]_i_5__2_0 [2]),
        .O(\FSM_onehot_state[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFAAAAAAAA)) 
    \FSM_onehot_state[4]_i_1__11 
       (.I0(\FSM_onehot_state[4]_i_2__6_n_0 ),
        .I1(\FSM_onehot_state_reg[3]_3 ),
        .I2(\FSM_onehot_state[4]_i_4__4_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5__2_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6__2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1__11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__5 
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [2]),
        .I3(done),
        .I4(next_out_7),
        .I5(\count_reg_reg[0] [3]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \FSM_onehot_state[4]_i_2__6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDDDDD56666666)) 
    \FSM_onehot_state[4]_i_4__4 
       (.I0(next_state30_in),
        .I1(\j_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\FSM_onehot_state_reg[3]_2 [1]),
        .I4(\FSM_onehot_state_reg[3]_2 [2]),
        .I5(\j_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_4__4_n_0 ));
  LUT6 #(
    .INIT(64'h696FFFF9FFF9666F)) 
    \FSM_onehot_state[4]_i_5__2 
       (.I0(next_state6[3]),
        .I1(next_state3[3]),
        .I2(p_0_in),
        .I3(\FSM_onehot_state_reg[4]_2 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .I5(next_state3[2]),
        .O(\FSM_onehot_state[4]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF6969FFA5FFFFA5)) 
    \FSM_onehot_state[4]_i_6__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [1]),
        .I1(p_0_in),
        .I2(next_state6[1]),
        .I3(\FSM_onehot_state[4]_i_5__2_0 [0]),
        .I4(\FSM_onehot_state_reg[1]_0 [0]),
        .I5(\FSM_onehot_state_reg[3]_2 [0]),
        .O(\FSM_onehot_state[4]_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'h0492920400000000)) 
    \FSM_onehot_state[4]_i_8__0 
       (.I0(\FSM_onehot_state[4]_i_16_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__2_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__2_0 [4]),
        .I5(\FSM_onehot_state[4]_i_4__4_0 ),
        .O(next_state30_in));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_9__2 
       (.I0(\FSM_onehot_state[4]_i_16_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__2_0 [3]),
        .O(next_state6[3]));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__5_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__5_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__11_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__2_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hFCFCFA0A0C0CFA0A)) 
    \a_j_reg[0]_i_1__1 
       (.I0(\a_j_reg[4]_i_16__1_0 ),
        .I1(\a_j_reg[0]_i_2__1_n_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[1]_i_2__1_n_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \a_j_reg[0]_i_1__2 
       (.I0(\a_j_reg[0]_i_2__2_n_0 ),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\a_j_reg[0]_i_3__2_n_0 ),
        .I3(\FSM_onehot_state_reg[3]_2 [0]),
        .I4(\a_j_reg[0]_1 ),
        .O(\a_j_reg[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[0]_i_2__1 
       (.I0(\a_j_reg[0]_i_1__1_0 ),
        .I1(\a_j_reg[0]_i_3__1_n_0 ),
        .I2(\a_j_reg[4]_i_14__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_1 ),
        .I4(\a_j_reg[4]_i_13__1_n_0 ),
        .O(\a_j_reg[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00CA00AC)) 
    \a_j_reg[0]_i_2__2 
       (.I0(\a_j_reg[0]_i_1__2_0 ),
        .I1(\a_j_reg[0]_i_1__2_1 ),
        .I2(\FSM_onehot_state_reg[3]_2 [2]),
        .I3(\FSM_onehot_state_reg[3]_2 [1]),
        .I4(\FSM_onehot_state_reg[3]_2 [0]),
        .O(\a_j_reg[0]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \a_j_reg[0]_i_3__1 
       (.I0(a_in_7[0]),
        .I1(\a_j_reg[0]_i_2__1_0 ),
        .I2(a_in_7[32]),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[16]),
        .O(\a_j_reg[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hBEEB8228)) 
    \a_j_reg[0]_i_3__2 
       (.I0(\a_j_reg[0]_i_1__2_2 ),
        .I1(\FSM_onehot_state_reg[3]_2 [2]),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\FSM_onehot_state_reg[3]_2 [1]),
        .I4(\a_j_reg[0]_i_1__2_3 ),
        .O(\a_j_reg[0]_i_3__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__2 [0]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[1]_i_1__1 
       (.I0(\a_j_reg[4]_i_16__1_0 ),
        .I1(\a_j_reg[4]_i_12__1 ),
        .I2(Q[0]),
        .I3(\a_j_reg[1]_i_2__1_n_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[0]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[1]_i_2__1 
       (.I0(\a_j_reg[0]_i_1__1_0 ),
        .I1(\a_j_reg[1]_i_3__1_n_0 ),
        .I2(\a_j_reg[4]_i_9__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_1 ),
        .I4(\a_j_reg[4]_i_8__0_n_0 ),
        .O(\a_j_reg[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \a_j_reg[1]_i_3__1 
       (.I0(a_in_7[1]),
        .I1(\a_j_reg[0]_i_2__1_0 ),
        .I2(a_in_7[33]),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[17]),
        .O(\a_j_reg[1]_i_3__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__2 [1]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[2]_i_2__1 
       (.I0(\a_j_reg[0]_i_1__1_0 ),
        .I1(\a_j_reg[2]_i_3__1_n_0 ),
        .I2(\a_j_reg[4]_i_17__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_1 ),
        .I4(\a_j_reg[4]_i_16__1_n_0 ),
        .O(\a_j_reg[4]_i_16__1_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \a_j_reg[2]_i_3__1 
       (.I0(a_in_7[2]),
        .I1(\a_j_reg[0]_i_2__1_0 ),
        .I2(a_in_7[34]),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[18]),
        .O(\a_j_reg[2]_i_3__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__2 [2]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[3]_i_1__1 
       (.I0(\a_j_reg[4]_i_12__1 ),
        .I1(\a_j_reg[4]_i_12__1_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[0]_0 ),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_12__1_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[3]_i_3__1 
       (.I0(a_in_7[3]),
        .I1(a_in_7[19]),
        .I2(\a_j_reg[0]_i_1__1_0 ),
        .I3(a_in_7[27]),
        .I4(\a_j_reg[3]_i_2__1 ),
        .I5(a_in_7[11]),
        .O(\count_reg_reg[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__2 [3]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFCAA0CAA)) 
    \a_j_reg[4]_i_10__0 
       (.I0(a_in_7[17]),
        .I1(a_in_7[33]),
        .I2(\a_j_reg[0]_i_2__1_0 ),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[1]),
        .O(\a_j_reg[4]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_13__1 
       (.I0(a_in_7[20]),
        .I1(a_in_7[28]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[4]),
        .I5(a_in_7[12]),
        .O(\a_j_reg[4]_i_13__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h8E71)) 
    \a_j_reg[4]_i_13__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [2]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg[3]_2 [1]),
        .I3(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_14__1 
       (.I0(a_in_7[24]),
        .I1(\a_j_reg[3]_i_2__1 ),
        .I2(a_in_7[8]),
        .O(\a_j_reg[4]_i_14__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h91EC6E13)) 
    \a_j_reg[4]_i_14__2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\FSM_onehot_state_reg[3]_2 [2]),
        .I4(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFCAA0CAA)) 
    \a_j_reg[4]_i_15__1 
       (.I0(a_in_7[16]),
        .I1(a_in_7[32]),
        .I2(\a_j_reg[0]_i_2__1_0 ),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[0]),
        .O(\a_j_reg[4]_i_15__1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_16__1 
       (.I0(a_in_7[22]),
        .I1(a_in_7[30]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[6]),
        .I5(a_in_7[14]),
        .O(\a_j_reg[4]_i_16__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_17__1 
       (.I0(a_in_7[26]),
        .I1(\a_j_reg[3]_i_2__1 ),
        .I2(a_in_7[10]),
        .O(\a_j_reg[4]_i_17__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFCAA0CAA)) 
    \a_j_reg[4]_i_18__1 
       (.I0(a_in_7[18]),
        .I1(a_in_7[34]),
        .I2(\a_j_reg[0]_i_2__1_0 ),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[2]),
        .O(\a_j_reg[4]_i_18__1_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \a_j_reg[4]_i_3__1 
       (.I0(\a_j_reg[4]_i_8__0_n_0 ),
        .I1(\a_j_reg[4]_i_9__1_n_0 ),
        .I2(\a_j_reg[4]_i_10__0_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(\a_j_reg[0]_i_1__1_1 ),
        .O(\a_j_reg[4]_i_12__1_1 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \a_j_reg[4]_i_4__1 
       (.I0(\a_j_reg[4]_i_13__1_n_0 ),
        .I1(\a_j_reg[4]_i_14__1_n_0 ),
        .I2(\a_j_reg[4]_i_15__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(\a_j_reg[0]_i_1__1_1 ),
        .O(\a_j_reg[4]_i_12__1 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \a_j_reg[4]_i_5__1 
       (.I0(\a_j_reg[4]_i_16__1_n_0 ),
        .I1(\a_j_reg[4]_i_17__1_n_0 ),
        .I2(\a_j_reg[4]_i_18__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(\a_j_reg[0]_i_1__1_1 ),
        .O(\a_j_reg[4]_i_12__1_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_6__1 
       (.I0(a_in_7[11]),
        .I1(a_in_7[27]),
        .I2(a_in_7[19]),
        .I3(a_in_7[3]),
        .I4(\a_j_reg[0]_i_1__1_0 ),
        .I5(\a_j_reg[3]_i_2__1 ),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_7__1 
       (.I0(a_in_7[23]),
        .I1(a_in_7[31]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[7]),
        .I5(a_in_7[15]),
        .O(\FSM_onehot_state_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_8__0 
       (.I0(a_in_7[21]),
        .I1(a_in_7[29]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[5]),
        .I5(a_in_7[13]),
        .O(\a_j_reg[4]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_9__1 
       (.I0(a_in_7[25]),
        .I1(\a_j_reg[3]_i_2__1 ),
        .I2(a_in_7[9]),
        .O(\a_j_reg[4]_i_9__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \a_j_reg[4]_i_9__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [2]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg[3]_2 [1]),
        .O(\j_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__2
       (.I0(\count_reg_reg[0] [4]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [0]),
        .I3(\count_reg_reg[0] [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__1_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__5_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1__5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count_reg[1]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__5_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__5 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__5_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__5 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__5_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__5 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \count_reg[4]_i_2__2 
       (.I0(\FSM_onehot_state_reg[3]_3 ),
        .I1(\FSM_onehot_state[4]_i_4__4_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__2_n_0 ),
        .I3(\FSM_onehot_state[4]_i_6__2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__0_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .O(\j_reg[0]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__2_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [0]),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__2_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [1]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg[3]_2 [2]),
        .O(\j_reg[2]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__2_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [2]),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__2_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg[3]_2 [1]),
        .I3(\FSM_onehot_state_reg[3]_2 [2]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(j));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_reg_i_1__2
       (.I0(\FSM_onehot_state[4]_i_2__6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3
   (\FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \count_reg_reg[2] ,
    \a_j_reg[3]_i_3__2_0 ,
    D,
    \count_reg_reg[0] ,
    \FSM_onehot_state_reg[4]_0 ,
    E,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[1]_0 ,
    \j_reg[1]_0 ,
    \j_reg[4]_0 ,
    \j_reg[3]_0 ,
    \j_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    Q,
    \a_j_reg[3]_i_1__2_0 ,
    a_in_6,
    \a_j_reg[0]_i_2__2 ,
    \a_j_reg[0]_i_2__2_0 ,
    \count_reg_reg[0]_0 ,
    next_out_6,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[4]_1 ,
    \FSM_onehot_state_reg[4]_2 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state[4]_i_5__3_0 ,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1__3_0 ,
    \a_j_reg[0]_i_1__3_1 ,
    \a_j_reg[0]_i_1__3_2 ,
    \a_j_reg[0]_i_1__3_3 ,
    \FSM_onehot_state_reg[1]_1 ,
    SR,
    clk,
    \FSM_onehot_state[4]_i_7__3 );
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \count_reg_reg[2] ;
  output \a_j_reg[3]_i_3__2_0 ;
  output [3:0]D;
  output \count_reg_reg[0] ;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]E;
  output [2:0]\FSM_onehot_state_reg[3]_2 ;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output \j_reg[1]_0 ;
  output \j_reg[4]_0 ;
  output \j_reg[3]_0 ;
  output \j_reg[2]_0 ;
  output [1:0]\FSM_onehot_state_reg[2]_0 ;
  input [2:0]Q;
  input \a_j_reg[3]_i_1__2_0 ;
  input [29:0]a_in_6;
  input \a_j_reg[0]_i_2__2 ;
  input \a_j_reg[0]_i_2__2_0 ;
  input [4:0]\count_reg_reg[0]_0 ;
  input next_out_6;
  input \FSM_onehot_state_reg[3]_3 ;
  input [0:0]\FSM_onehot_state_reg[4]_1 ;
  input \FSM_onehot_state_reg[4]_2 ;
  input \FSM_onehot_state_reg[3]_4 ;
  input [4:0]\FSM_onehot_state[4]_i_5__3_0 ;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1__3_0 ;
  input \a_j_reg[0]_i_1__3_1 ;
  input \a_j_reg[0]_i_1__3_2 ;
  input \a_j_reg[0]_i_1__3_3 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input [0:0]SR;
  input clk;
  input [3:0]\FSM_onehot_state[4]_i_7__3 ;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__7_n_0 ;
  wire \FSM_onehot_state[1]_i_2__3_n_0 ;
  wire \FSM_onehot_state[3]_i_1__7_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_16__0_n_0 ;
  wire \FSM_onehot_state[4]_i_1__12_n_0 ;
  wire \FSM_onehot_state[4]_i_2__8_n_0 ;
  wire \FSM_onehot_state[4]_i_4__6_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5__3_0 ;
  wire \FSM_onehot_state[4]_i_5__3_n_0 ;
  wire \FSM_onehot_state[4]_i_6__3_n_0 ;
  wire [3:0]\FSM_onehot_state[4]_i_7__3 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire [1:0]\FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire [2:0]\FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire [0:0]\FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg[4]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [29:0]a_in_6;
  wire a_j;
  wire \a_j_reg[0]_0 ;
  wire \a_j_reg[0]_i_1__3_0 ;
  wire \a_j_reg[0]_i_1__3_1 ;
  wire \a_j_reg[0]_i_1__3_2 ;
  wire \a_j_reg[0]_i_1__3_3 ;
  wire \a_j_reg[0]_i_1__3_n_0 ;
  wire \a_j_reg[0]_i_2__2 ;
  wire \a_j_reg[0]_i_2__2_0 ;
  wire \a_j_reg[0]_i_2__3_n_0 ;
  wire \a_j_reg[0]_i_3__3_n_0 ;
  wire \a_j_reg[1]_i_3__2_n_0 ;
  wire \a_j_reg[2]_i_2__7_n_0 ;
  wire \a_j_reg[3]_i_1__2_0 ;
  wire \a_j_reg[3]_i_2__6_n_0 ;
  wire \a_j_reg[3]_i_3__2_0 ;
  wire \a_j_reg[3]_i_3__2_n_0 ;
  wire \a_j_reg[4]_i_10__1_n_0 ;
  wire \a_j_reg[4]_i_11__2_n_0 ;
  wire \a_j_reg[4]_i_12__2_n_0 ;
  wire \a_j_reg[4]_i_2__7_n_0 ;
  wire \a_j_reg[4]_i_3__2_n_0 ;
  wire \a_j_reg[4]_i_4__2_n_0 ;
  wire \a_j_reg[4]_i_6__2_n_0 ;
  wire \a_j_reg[4]_i_8__1_n_0 ;
  wire clk;
  wire count;
  wire \count_reg[0]_i_1__3_n_0 ;
  wire \count_reg[1]_i_1__7_n_0 ;
  wire \count_reg[2]_i_1__7_n_0 ;
  wire \count_reg[3]_i_1__7_n_0 ;
  wire \count_reg[4]_i_1__7_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_reg[0] ;
  wire [4:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2] ;
  wire done;
  wire done_aux;
  wire j;
  wire \j_reg[0]_i_1__1_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__3_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_i_1__3_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1__3_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__3_n_0 ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_6;
  wire [3:2]next_state3;
  wire [4:4]next_state30_in;
  wire [3:1]next_state6;
  wire [4:4]p_0_in;
  wire valid;
  wire valid_aux;

  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[1]_i_1__7 
       (.I0(\FSM_onehot_state[1]_i_2__3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__8 
       (.I0(\count_reg_reg[0]_0 [0]),
        .I1(\count_reg_reg[0]_0 [2]),
        .I2(valid),
        .I3(\FSM_onehot_state_reg[1]_1 ),
        .I4(\count_reg_reg[0]_0 [3]),
        .O(\FSM_onehot_state_reg[2]_0 [0]));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \FSM_onehot_state[1]_i_2__3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .O(\FSM_onehot_state[1]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \FSM_onehot_state[3]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_6__3_n_0 ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_state[4]_i_4__6_n_0 ),
        .I5(\FSM_onehot_state_reg[3]_3 ),
        .O(\FSM_onehot_state[3]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__8 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h956A956A956A6A95)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_2 [2]),
        .I2(\FSM_onehot_state_reg[3]_2 [1]),
        .I3(next_state6[3]),
        .I4(\FSM_onehot_state_reg[3]_4 ),
        .I5(p_0_in),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h69696996)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\FSM_onehot_state_reg[3]_2 [1]),
        .I1(\FSM_onehot_state_reg[3]_2 [2]),
        .I2(\FSM_onehot_state_reg[4]_1 ),
        .I3(\FSM_onehot_state_reg[4]_2 ),
        .I4(p_0_in),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_onehot_state[4]_i_10__1 
       (.I0(\FSM_onehot_state_reg[3]_2 [1]),
        .I1(\FSM_onehot_state_reg[3]_2 [2]),
        .I2(\j_reg_n_0_[3] ),
        .O(next_state3[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \FSM_onehot_state[4]_i_11__3 
       (.I0(\FSM_onehot_state[4]_i_5__3_0 [3]),
        .I1(\FSM_onehot_state[4]_i_16__0_n_0 ),
        .I2(\FSM_onehot_state_reg[1]_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__3_0 [4]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_state[4]_i_14__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [2]),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .O(next_state3[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \FSM_onehot_state[4]_i_15__3 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5__3_0 [0]),
        .I2(\FSM_onehot_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_state[4]_i_5__3_0 [1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'hF7FF757751551011)) 
    \FSM_onehot_state[4]_i_16__0 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(\FSM_onehot_state[4]_i_5__3_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__3_0 [1]),
        .I5(\FSM_onehot_state[4]_i_5__3_0 [2]),
        .O(\FSM_onehot_state[4]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFAAAAAAAA)) 
    \FSM_onehot_state[4]_i_1__12 
       (.I0(\FSM_onehot_state[4]_i_2__8_n_0 ),
        .I1(\FSM_onehot_state_reg[3]_3 ),
        .I2(\FSM_onehot_state[4]_i_4__6_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5__3_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6__3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1__12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__7 
       (.I0(\count_reg_reg[0]_0 [1]),
        .I1(\count_reg_reg[0]_0 [0]),
        .I2(\count_reg_reg[0]_0 [2]),
        .I3(done),
        .I4(next_out_6),
        .I5(\count_reg_reg[0]_0 [3]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \FSM_onehot_state[4]_i_2__8 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_2__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFDDD5666)) 
    \FSM_onehot_state[4]_i_4__6 
       (.I0(next_state30_in),
        .I1(\j_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg[3]_2 [2]),
        .I3(\FSM_onehot_state_reg[3]_2 [1]),
        .I4(\j_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_4__6_n_0 ));
  LUT6 #(
    .INIT(64'h696FFFF9FFF9666F)) 
    \FSM_onehot_state[4]_i_5__3 
       (.I0(next_state6[3]),
        .I1(next_state3[3]),
        .I2(p_0_in),
        .I3(\FSM_onehot_state_reg[4]_2 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .I5(next_state3[2]),
        .O(\FSM_onehot_state[4]_i_5__3_n_0 ));
  LUT6 #(
    .INIT(64'h3CFFFF69FF693CFF)) 
    \FSM_onehot_state[4]_i_6__3 
       (.I0(p_0_in),
        .I1(next_state6[1]),
        .I2(\FSM_onehot_state_reg[3]_2 [1]),
        .I3(\FSM_onehot_state_reg[3]_2 [0]),
        .I4(\FSM_onehot_state[4]_i_5__3_0 [0]),
        .I5(\FSM_onehot_state_reg[1]_0 [0]),
        .O(\FSM_onehot_state[4]_i_6__3_n_0 ));
  LUT6 #(
    .INIT(64'h0492920400000000)) 
    \FSM_onehot_state[4]_i_8__1 
       (.I0(\FSM_onehot_state[4]_i_16__0_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__3_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__3_0 [4]),
        .I5(\FSM_onehot_state_reg[3]_4 ),
        .O(next_state30_in));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_9__3 
       (.I0(\FSM_onehot_state[4]_i_16__0_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__3_0 [3]),
        .O(next_state6[3]));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__7_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__7_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__12_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__3_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \a_j_reg[0]_i_1__3 
       (.I0(\a_j_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\a_j_reg[0]_i_2__3_n_0 ),
        .I3(\FSM_onehot_state_reg[3]_2 [1]),
        .I4(\a_j_reg[0]_i_3__3_n_0 ),
        .O(\a_j_reg[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hAC0000AC)) 
    \a_j_reg[0]_i_2__3 
       (.I0(\a_j_reg[0]_i_1__3_0 ),
        .I1(\a_j_reg[0]_i_1__3_1 ),
        .I2(\FSM_onehot_state_reg[3]_2 [2]),
        .I3(\FSM_onehot_state_reg[3]_2 [0]),
        .I4(\FSM_onehot_state_reg[3]_2 [1]),
        .O(\a_j_reg[0]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'hAEFBA208)) 
    \a_j_reg[0]_i_3__3 
       (.I0(\a_j_reg[0]_i_1__3_2 ),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\FSM_onehot_state_reg[3]_2 [2]),
        .I4(\a_j_reg[0]_i_1__3_3 ),
        .O(\a_j_reg[0]_i_3__3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[0]_i_4 
       (.I0(a_in_6[0]),
        .I1(a_in_6[16]),
        .I2(\a_j_reg[0]_i_2__2 ),
        .I3(a_in_6[24]),
        .I4(\a_j_reg[0]_i_2__2_0 ),
        .I5(a_in_6[8]),
        .O(\count_reg_reg[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__3 [0]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[1]_i_1__2 
       (.I0(\a_j_reg[3]_i_3__2_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[2]_i_2__7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFA50EEEEFA504444)) 
    \a_j_reg[1]_i_2__6 
       (.I0(Q[1]),
        .I1(\a_j_reg[1]_i_3__2_n_0 ),
        .I2(\a_j_reg[4]_i_12__2_n_0 ),
        .I3(\a_j_reg[4]_i_10__1_n_0 ),
        .I4(\a_j_reg[3]_i_1__2_0 ),
        .I5(\a_j_reg[3]_i_3__2_n_0 ),
        .O(\a_j_reg[3]_i_3__2_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[1]_i_3__2 
       (.I0(a_in_6[1]),
        .I1(a_in_6[17]),
        .I2(\a_j_reg[0]_i_2__2 ),
        .I3(a_in_6[25]),
        .I4(\a_j_reg[0]_i_2__2_0 ),
        .I5(a_in_6[9]),
        .O(\a_j_reg[1]_i_3__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__3 [1]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[2]_i_1__2 
       (.I0(\a_j_reg[2]_i_2__7_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[3]_i_2__6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \a_j_reg[2]_i_2__7 
       (.I0(Q[1]),
        .I1(\a_j_reg[4]_i_6__2_n_0 ),
        .I2(\FSM_onehot_state_reg[3]_0 ),
        .I3(\FSM_onehot_state_reg[3]_1 ),
        .I4(\a_j_reg[3]_i_1__2_0 ),
        .I5(\count_reg_reg[2] ),
        .O(\a_j_reg[2]_i_2__7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[2]_i_3__2 
       (.I0(a_in_6[2]),
        .I1(a_in_6[18]),
        .I2(\a_j_reg[0]_i_2__2 ),
        .I3(a_in_6[26]),
        .I4(\a_j_reg[0]_i_2__2_0 ),
        .I5(a_in_6[10]),
        .O(\count_reg_reg[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__3 [2]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__2 
       (.I0(\a_j_reg[3]_i_2__6_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_2__7_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \a_j_reg[3]_i_2__6 
       (.I0(Q[1]),
        .I1(\a_j_reg[4]_i_11__2_n_0 ),
        .I2(\a_j_reg[4]_i_12__2_n_0 ),
        .I3(\a_j_reg[4]_i_10__1_n_0 ),
        .I4(\a_j_reg[3]_i_1__2_0 ),
        .I5(\a_j_reg[3]_i_3__2_n_0 ),
        .O(\a_j_reg[3]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[3]_i_3__2 
       (.I0(a_in_6[3]),
        .I1(a_in_6[19]),
        .I2(\a_j_reg[0]_i_2__2 ),
        .I3(a_in_6[27]),
        .I4(\a_j_reg[0]_i_2__2_0 ),
        .I5(a_in_6[11]),
        .O(\a_j_reg[3]_i_3__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__3 [3]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_10__1 
       (.I0(\a_j_reg[0]_i_2__2_0 ),
        .I1(a_in_6[7]),
        .I2(a_in_6[23]),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[15]),
        .O(\a_j_reg[4]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_11__2 
       (.I0(a_in_6[9]),
        .I1(a_in_6[25]),
        .I2(a_in_6[17]),
        .I3(a_in_6[1]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_11__2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_12__2 
       (.I0(a_in_6[21]),
        .I1(a_in_6[29]),
        .I2(\a_j_reg[0]_i_2__2_0 ),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[5]),
        .I5(a_in_6[13]),
        .O(\a_j_reg[4]_i_12__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_j_reg[4]_i_14__3 
       (.I0(\FSM_onehot_state_reg[3]_2 [0]),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \a_j_reg[4]_i_15__2 
       (.I0(\FSM_onehot_state_reg[3]_2 [1]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg[3]_2 [2]),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \a_j_reg[4]_i_1__2 
       (.I0(\a_j_reg[4]_i_2__7_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_3__2_n_0 ),
        .I3(\a_j_reg[4]_i_4__2_n_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFAFA5050EE44EE44)) 
    \a_j_reg[4]_i_2__7 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state_reg[3]_0 ),
        .I2(\a_j_reg[4]_i_6__2_n_0 ),
        .I3(\FSM_onehot_state_reg[3]_1 ),
        .I4(\a_j_reg[4]_i_8__1_n_0 ),
        .I5(\a_j_reg[3]_i_1__2_0 ),
        .O(\a_j_reg[4]_i_2__7_n_0 ));
  LUT6 #(
    .INIT(64'h2F2C8F8323208C80)) 
    \a_j_reg[4]_i_3__2 
       (.I0(\a_j_reg[4]_i_10__1_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\a_j_reg[4]_i_11__2_n_0 ),
        .I4(Q[2]),
        .I5(\a_j_reg[4]_i_12__2_n_0 ),
        .O(\a_j_reg[4]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_4__2 
       (.I0(a_in_6[11]),
        .I1(a_in_6[27]),
        .I2(a_in_6[19]),
        .I3(a_in_6[3]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_5__2 
       (.I0(a_in_6[20]),
        .I1(a_in_6[28]),
        .I2(\a_j_reg[0]_i_2__2_0 ),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[4]),
        .I5(a_in_6[12]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_6__2 
       (.I0(a_in_6[8]),
        .I1(a_in_6[24]),
        .I2(a_in_6[16]),
        .I3(a_in_6[0]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_6__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_7__2 
       (.I0(\a_j_reg[0]_i_2__2_0 ),
        .I1(a_in_6[6]),
        .I2(a_in_6[22]),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[14]),
        .O(\FSM_onehot_state_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_8__1 
       (.I0(a_in_6[10]),
        .I1(a_in_6[26]),
        .I2(a_in_6[18]),
        .I3(a_in_6[2]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h897E7681)) 
    \a_j_reg[4]_i_8__2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\FSM_onehot_state_reg[3]_2 [2]),
        .I4(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hE31C)) 
    \a_j_reg[4]_i_9__3 
       (.I0(\FSM_onehot_state_reg[3]_2 [2]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg[3]_2 [1]),
        .I3(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__3
       (.I0(\count_reg_reg[0]_0 [4]),
        .I1(\count_reg_reg[0]_0 [1]),
        .I2(\count_reg_reg[0]_0 [0]),
        .I3(\count_reg_reg[0]_0 [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__3_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__7_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__7 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[1]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__7_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__7 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__7_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__7 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__7_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__7 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \count_reg[4]_i_2__3 
       (.I0(\FSM_onehot_state_reg[3]_3 ),
        .I1(\FSM_onehot_state[4]_i_4__6_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__3_n_0 ),
        .I3(\FSM_onehot_state[4]_i_6__3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__1_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .O(\j_reg[0]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__3_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__3 
       (.I0(\FSM_onehot_state_reg[3]_2 [1]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__3_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__3 
       (.I0(\FSM_onehot_state_reg[3]_2 [1]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg[3]_2 [2]),
        .O(\j_reg[2]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__3_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__3 
       (.I0(\FSM_onehot_state_reg[3]_2 [2]),
        .I1(\FSM_onehot_state_reg[3]_2 [0]),
        .I2(\FSM_onehot_state_reg[3]_2 [1]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__3_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__3 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_2 [1]),
        .I2(\FSM_onehot_state_reg[3]_2 [0]),
        .I3(\FSM_onehot_state_reg[3]_2 [2]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(j));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_reg_i_1__3
       (.I0(\FSM_onehot_state[4]_i_2__8_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4
   (valid,
    Q,
    \j_reg[1]_0 ,
    D,
    \a_j_reg[4]_i_3__3_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[2] ,
    \FSM_onehot_state_reg[3]_0 ,
    \count_reg_reg[0] ,
    E,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \j_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    \a_j_reg[4]_0 ,
    \a_j_reg[0]_i_1__3 ,
    \a_j_reg[0]_i_1__3_0 ,
    a_in_5,
    \a_j_reg[4]_i_2__2_0 ,
    \a_j_reg[4]_i_2__2_1 ,
    \count_reg_reg[0]_0 ,
    next_out_5,
    \FSM_onehot_state_reg[4]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state[4]_i_5__4_0 ,
    \FSM_onehot_state_reg[3]_3 ,
    \a_j_reg[4]_1 ,
    \a_j_reg[4]_2 ,
    \a_j_reg[3]_i_1__4_0 ,
    \a_j_reg[3]_i_1__4_1 ,
    \a_j_reg[4]_i_1__4_0 ,
    \a_j_reg[4]_i_1__4_1 ,
    \a_j_reg[2]_i_1__4_0 ,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_1 ,
    \a_j_reg[1]_i_1__4_0 ,
    a_in_4,
    SR,
    clk);
  output valid;
  output [1:0]Q;
  output \j_reg[1]_0 ;
  output [3:0]D;
  output \a_j_reg[4]_i_3__3_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[2] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \count_reg_reg[0] ;
  output [0:0]E;
  output \FSM_onehot_state_reg[0]_0 ;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output \j_reg[2]_0 ;
  output [0:0]\FSM_onehot_state_reg[2]_0 ;
  input [2:0]\a_j_reg[4]_0 ;
  input \a_j_reg[0]_i_1__3 ;
  input \a_j_reg[0]_i_1__3_0 ;
  input [24:0]a_in_5;
  input \a_j_reg[4]_i_2__2_0 ;
  input \a_j_reg[4]_i_2__2_1 ;
  input [4:0]\count_reg_reg[0]_0 ;
  input next_out_5;
  input \FSM_onehot_state_reg[4]_0 ;
  input \FSM_onehot_state_reg[3]_1 ;
  input \FSM_onehot_state_reg[3]_2 ;
  input [4:0]\FSM_onehot_state[4]_i_5__4_0 ;
  input \FSM_onehot_state_reg[3]_3 ;
  input \a_j_reg[4]_1 ;
  input \a_j_reg[4]_2 ;
  input \a_j_reg[3]_i_1__4_0 ;
  input \a_j_reg[3]_i_1__4_1 ;
  input \a_j_reg[4]_i_1__4_0 ;
  input \a_j_reg[4]_i_1__4_1 ;
  input \a_j_reg[2]_i_1__4_0 ;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_1 ;
  input \a_j_reg[1]_i_1__4_0 ;
  input [7:0]a_in_4;
  input [0:0]SR;
  input clk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__9_n_0 ;
  wire \FSM_onehot_state[1]_i_2__4_n_0 ;
  wire \FSM_onehot_state[3]_i_1__9_n_0 ;
  wire \FSM_onehot_state[4]_i_10__2_n_0 ;
  wire \FSM_onehot_state[4]_i_11__4_n_0 ;
  wire \FSM_onehot_state[4]_i_13__3_n_0 ;
  wire \FSM_onehot_state[4]_i_14__3_n_0 ;
  wire \FSM_onehot_state[4]_i_15__4_n_0 ;
  wire \FSM_onehot_state[4]_i_1__13_n_0 ;
  wire \FSM_onehot_state[4]_i_3__9_n_0 ;
  wire \FSM_onehot_state[4]_i_4__8_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5__4_0 ;
  wire \FSM_onehot_state[4]_i_5__4_n_0 ;
  wire \FSM_onehot_state[4]_i_6__6_n_0 ;
  wire \FSM_onehot_state[4]_i_8__2_n_0 ;
  wire \FSM_onehot_state[4]_i_9__4_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [7:0]a_in_4;
  wire [24:0]a_in_5;
  wire a_j;
  wire \a_j_reg[0]_0 ;
  wire \a_j_reg[0]_1 ;
  wire \a_j_reg[0]_i_1__3 ;
  wire \a_j_reg[0]_i_1__3_0 ;
  wire \a_j_reg[0]_i_1__4_n_0 ;
  wire \a_j_reg[1]_i_1__4_0 ;
  wire \a_j_reg[1]_i_1__4_n_0 ;
  wire \a_j_reg[1]_i_2__3_n_0 ;
  wire \a_j_reg[1]_i_3__3_n_0 ;
  wire \a_j_reg[2]_i_1__4_0 ;
  wire \a_j_reg[2]_i_1__4_n_0 ;
  wire \a_j_reg[2]_i_2__2_n_0 ;
  wire \a_j_reg[2]_i_2__3_n_0 ;
  wire \a_j_reg[3]_i_1__4_0 ;
  wire \a_j_reg[3]_i_1__4_1 ;
  wire \a_j_reg[3]_i_1__4_n_0 ;
  wire \a_j_reg[3]_i_2__2_n_0 ;
  wire \a_j_reg[3]_i_2__3_n_0 ;
  wire \a_j_reg[3]_i_3__3_n_0 ;
  wire \a_j_reg[3]_i_4_n_0 ;
  wire \a_j_reg[3]_i_5_n_0 ;
  wire [2:0]\a_j_reg[4]_0 ;
  wire \a_j_reg[4]_1 ;
  wire \a_j_reg[4]_2 ;
  wire \a_j_reg[4]_i_10__2_n_0 ;
  wire \a_j_reg[4]_i_12__3_n_0 ;
  wire \a_j_reg[4]_i_1__4_0 ;
  wire \a_j_reg[4]_i_1__4_1 ;
  wire \a_j_reg[4]_i_1__4_n_0 ;
  wire \a_j_reg[4]_i_2__2_0 ;
  wire \a_j_reg[4]_i_2__2_1 ;
  wire \a_j_reg[4]_i_2__2_n_0 ;
  wire \a_j_reg[4]_i_2__3_n_0 ;
  wire \a_j_reg[4]_i_3__3_0 ;
  wire \a_j_reg[4]_i_3__3_n_0 ;
  wire \a_j_reg[4]_i_4__3_n_0 ;
  wire \a_j_reg[4]_i_5__3_n_0 ;
  wire \a_j_reg[4]_i_5__4_n_0 ;
  wire \a_j_reg[4]_i_6__3_n_0 ;
  wire \a_j_reg[4]_i_7__3_n_0 ;
  wire \a_j_reg[4]_i_7__4_n_0 ;
  wire \a_j_reg[4]_i_8__3_n_0 ;
  wire clk;
  wire count;
  wire \count_reg[0]_i_1__5_n_0 ;
  wire \count_reg[1]_i_1__15_n_0 ;
  wire \count_reg[2]_i_1__9_n_0 ;
  wire \count_reg[3]_i_1__15_n_0 ;
  wire \count_reg[4]_i_1__9_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_reg[0] ;
  wire [4:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[4] ;
  wire done;
  wire done_aux;
  wire j;
  wire \j_reg[0]_i_1__2_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__6_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_i_1__4_n_0 ;
  wire \j_reg[3]_i_1__4_n_0 ;
  wire \j_reg[4]_i_1__4_n_0 ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_5;
  wire valid;
  wire valid_aux;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[1]_i_1__9 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[1]_i_2__4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1__9_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_state[1]_i_2__4 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__10 
       (.I0(valid),
        .I1(\count_reg_reg[0]_0 [2]),
        .O(\FSM_onehot_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h000000008AA8AAAA)) 
    \FSM_onehot_state[3]_i_1__9 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_5__4_n_0 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_state_reg[3]_1 ),
        .I4(\FSM_onehot_state[4]_i_3__9_n_0 ),
        .I5(\FSM_onehot_state_reg[4]_0 ),
        .O(\FSM_onehot_state[3]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_10__2 
       (.I0(Q[1]),
        .I1(\j_reg_n_0_[1] ),
        .I2(Q[0]),
        .O(\FSM_onehot_state[4]_i_10__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h56A9)) 
    \FSM_onehot_state[4]_i_11__4 
       (.I0(\FSM_onehot_state[4]_i_15__4_n_0 ),
        .I1(Q[0]),
        .I2(\j_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(\FSM_onehot_state[4]_i_11__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[4]_i_13__3 
       (.I0(Q[0]),
        .I1(\j_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_13__3_n_0 ));
  LUT6 #(
    .INIT(64'h2F020000FFFF2F02)) 
    \FSM_onehot_state[4]_i_14__3 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5__4_0 [0]),
        .I2(\FSM_onehot_state[4]_i_5__4_0 [1]),
        .I3(\FSM_onehot_state_reg[1]_0 [1]),
        .I4(\FSM_onehot_state_reg[1]_0 [2]),
        .I5(\FSM_onehot_state[4]_i_5__4_0 [2]),
        .O(\FSM_onehot_state[4]_i_14__3_n_0 ));
  LUT6 #(
    .INIT(64'h2B22D4DDD4DD2B22)) 
    \FSM_onehot_state[4]_i_15__4 
       (.I0(\FSM_onehot_state_reg[1]_0 [1]),
        .I1(\FSM_onehot_state[4]_i_5__4_0 [1]),
        .I2(\FSM_onehot_state[4]_i_5__4_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state_reg[1]_0 [2]),
        .I5(\FSM_onehot_state[4]_i_5__4_0 [2]),
        .O(\FSM_onehot_state[4]_i_15__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF888888A8)) 
    \FSM_onehot_state[4]_i_1__13 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg[4]_0 ),
        .I2(\FSM_onehot_state[4]_i_3__9_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__8_n_0 ),
        .I4(\FSM_onehot_state[4]_i_5__4_n_0 ),
        .I5(\FSM_onehot_state[4]_i_6__6_n_0 ),
        .O(\FSM_onehot_state[4]_i_1__13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__9 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(done),
        .I2(next_out_5),
        .I3(\count_reg_reg[0]_0 [3]),
        .I4(\count_reg_reg[0]_0 [0]),
        .I5(\count_reg_reg[0]_0 [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h00000008080000C1)) 
    \FSM_onehot_state[4]_i_3__9 
       (.I0(\FSM_onehot_state_reg[3]_3 ),
        .I1(\FSM_onehot_state[4]_i_8__2_n_0 ),
        .I2(\FSM_onehot_state[4]_i_9__4_n_0 ),
        .I3(\j_reg_n_0_[3] ),
        .I4(\FSM_onehot_state[4]_i_10__2_n_0 ),
        .I5(\j_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_3__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_onehot_state[4]_i_4__8 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[1]_0 [0]),
        .I2(\FSM_onehot_state[4]_i_5__4_0 [0]),
        .O(\FSM_onehot_state[4]_i_4__8_n_0 ));
  LUT6 #(
    .INIT(64'h9FBDDB9FFADBBDFA)) 
    \FSM_onehot_state[4]_i_5__4 
       (.I0(\FSM_onehot_state[4]_i_11__4_n_0 ),
        .I1(\FSM_onehot_state[4]_i_9__4_n_0 ),
        .I2(\FSM_onehot_state_reg[3]_2 ),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__4_0 [0]),
        .I5(\FSM_onehot_state[4]_i_13__3_n_0 ),
        .O(\FSM_onehot_state[4]_i_5__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \FSM_onehot_state[4]_i_6__6 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_6__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_8__2 
       (.I0(\FSM_onehot_state[4]_i_14__3_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__4_0 [3]),
        .O(\FSM_onehot_state[4]_i_8__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h69996669)) 
    \FSM_onehot_state[4]_i_9__4 
       (.I0(\FSM_onehot_state_reg[1]_0 [4]),
        .I1(\FSM_onehot_state[4]_i_5__4_0 [4]),
        .I2(\FSM_onehot_state[4]_i_14__3_n_0 ),
        .I3(\FSM_onehot_state_reg[1]_0 [3]),
        .I4(\FSM_onehot_state[4]_i_5__4_0 [3]),
        .O(\FSM_onehot_state[4]_i_9__4_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__9_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__9_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__13_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__4_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[0]_i_1__4 
       (.I0(\a_j_reg[0]_0 ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\a_j_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\a_j_reg[1]_i_2__3_n_0 ),
        .O(\a_j_reg[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[0]_i_4__0 
       (.I0(a_in_5[0]),
        .I1(a_in_5[16]),
        .I2(\a_j_reg[4]_i_2__2_0 ),
        .I3(a_in_5[24]),
        .I4(\a_j_reg[4]_i_2__2_1 ),
        .I5(a_in_5[8]),
        .O(\count_reg_reg[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\a_j_reg[1]_i_1__4_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[1]_i_1__3 
       (.I0(\a_j_reg[2]_i_2__2_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[4]_i_3__3_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[1]_i_1__4 
       (.I0(\a_j_reg[1]_i_2__3_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[2]_i_2__3_n_0 ),
        .O(\a_j_reg[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[1]_i_2__2 
       (.I0(\a_j_reg[4]_i_6__3_n_0 ),
        .I1(\a_j_reg[1]_i_3__3_n_0 ),
        .I2(\a_j_reg[0]_i_1__3 ),
        .I3(\a_j_reg[3]_i_3__3_n_0 ),
        .I4(\a_j_reg[0]_i_1__3_0 ),
        .I5(\a_j_reg[4]_i_3__3_n_0 ),
        .O(\a_j_reg[4]_i_3__3_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2__3 
       (.I0(\a_j_reg[1]_i_1__4_0 ),
        .I1(\a_j_reg[3]_i_5_n_0 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[3]_i_1__4_0 ),
        .I4(\a_j_reg[4]_i_8__3_n_0 ),
        .I5(\a_j_reg[3]_i_4_n_0 ),
        .O(\a_j_reg[1]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[1]_i_3__3 
       (.I0(\a_j_reg[4]_i_2__2_1 ),
        .I1(a_in_5[1]),
        .I2(a_in_5[17]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(a_in_5[9]),
        .O(\a_j_reg[1]_i_3__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\a_j_reg[2]_i_1__4_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[2]_i_1__3 
       (.I0(\a_j_reg[3]_i_2__2_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[2]_i_2__2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[2]_i_1__4 
       (.I0(\a_j_reg[2]_i_2__3_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[3]_i_2__3_n_0 ),
        .O(\a_j_reg[2]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2__2 
       (.I0(\count_reg_reg[4] ),
        .I1(\a_j_reg[4]_i_10__2_n_0 ),
        .I2(\a_j_reg[0]_i_1__3 ),
        .I3(\count_reg_reg[2] ),
        .I4(\a_j_reg[0]_i_1__3_0 ),
        .I5(\FSM_onehot_state_reg[3]_0 ),
        .O(\a_j_reg[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2__3 
       (.I0(\a_j_reg[2]_i_1__4_0 ),
        .I1(\a_j_reg[4]_i_7__4_n_0 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[4]_i_5__4_n_0 ),
        .I4(\a_j_reg[4]_i_8__3_n_0 ),
        .I5(\a_j_reg[4]_i_1__4_0 ),
        .O(\a_j_reg[2]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[2]_i_3__3 
       (.I0(\a_j_reg[4]_i_2__2_1 ),
        .I1(a_in_5[2]),
        .I2(a_in_5[18]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(a_in_5[10]),
        .O(\count_reg_reg[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\a_j_reg[3]_i_1__4_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__3 
       (.I0(\a_j_reg[4]_i_4__3_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[3]_i_2__2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__4 
       (.I0(\a_j_reg[3]_i_2__3_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_2__3_n_0 ),
        .O(\a_j_reg[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2__2 
       (.I0(\a_j_reg[4]_i_6__3_n_0 ),
        .I1(\a_j_reg[4]_i_7__3_n_0 ),
        .I2(\a_j_reg[0]_i_1__3 ),
        .I3(\a_j_reg[3]_i_3__3_n_0 ),
        .I4(\a_j_reg[0]_i_1__3_0 ),
        .I5(\a_j_reg[4]_i_3__3_n_0 ),
        .O(\a_j_reg[3]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2__3 
       (.I0(\a_j_reg[3]_i_1__4_0 ),
        .I1(\a_j_reg[3]_i_4_n_0 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[3]_i_5_n_0 ),
        .I4(\a_j_reg[4]_i_8__3_n_0 ),
        .I5(\a_j_reg[3]_i_1__4_1 ),
        .O(\a_j_reg[3]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[3]_i_3__3 
       (.I0(\a_j_reg[4]_i_2__2_1 ),
        .I1(a_in_5[3]),
        .I2(a_in_5[19]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(a_in_5[11]),
        .O(\a_j_reg[3]_i_3__3_n_0 ));
  LUT6 #(
    .INIT(64'hEABFBFEA2A80802A)) 
    \a_j_reg[3]_i_4 
       (.I0(a_in_4[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(a_in_4[3]),
        .O(\a_j_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEABFBFEA2A80802A)) 
    \a_j_reg[3]_i_5 
       (.I0(a_in_4[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(a_in_4[1]),
        .O(\a_j_reg[3]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\a_j_reg[4]_i_1__4_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_10__2 
       (.I0(a_in_5[8]),
        .I1(a_in_5[24]),
        .I2(a_in_5[16]),
        .I3(a_in_5[0]),
        .I4(\a_j_reg[4]_i_2__2_0 ),
        .I5(\a_j_reg[4]_i_2__2_1 ),
        .O(\a_j_reg[4]_i_10__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \a_j_reg[4]_i_10__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\j_reg_n_0_[3] ),
        .I3(\j_reg_n_0_[1] ),
        .O(\j_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_11__3 
       (.I0(\a_j_reg[4]_i_2__2_1 ),
        .I1(a_in_5[4]),
        .I2(a_in_5[20]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(a_in_5[12]),
        .O(\count_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \a_j_reg[4]_i_12__3 
       (.I0(a_in_5[10]),
        .I1(a_in_5[18]),
        .I2(a_in_5[2]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(\a_j_reg[4]_i_2__2_1 ),
        .O(\a_j_reg[4]_i_12__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_13__3 
       (.I0(\a_j_reg[4]_i_2__2_1 ),
        .I1(a_in_5[6]),
        .I2(a_in_5[22]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(a_in_5[14]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hE8175FA0)) 
    \a_j_reg[4]_i_13__4 
       (.I0(\j_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(\j_reg_n_0_[3] ),
        .I3(\j_reg_n_0_[4] ),
        .I4(Q[1]),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAEA0000)) 
    \a_j_reg[4]_i_1__3 
       (.I0(\a_j_reg[4]_i_2__2_n_0 ),
        .I1(\a_j_reg[4]_i_3__3_n_0 ),
        .I2(\a_j_reg[4]_0 [2]),
        .I3(\a_j_reg[4]_0 [1]),
        .I4(\a_j_reg[4]_0 [0]),
        .I5(\a_j_reg[4]_i_4__3_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_1__4 
       (.I0(\a_j_reg[4]_i_2__3_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_1 ),
        .I3(\j_reg_n_0_[1] ),
        .I4(\a_j_reg[4]_2 ),
        .O(\a_j_reg[4]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hE320CBCBE3200808)) 
    \a_j_reg[4]_i_2__2 
       (.I0(\a_j_reg[4]_i_5__3_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[4]_0 [1]),
        .I3(\a_j_reg[4]_i_6__3_n_0 ),
        .I4(\a_j_reg[4]_0 [2]),
        .I5(\a_j_reg[4]_i_7__3_n_0 ),
        .O(\a_j_reg[4]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_2__3 
       (.I0(\a_j_reg[4]_i_5__4_n_0 ),
        .I1(\a_j_reg[4]_i_1__4_0 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[4]_i_7__4_n_0 ),
        .I4(\a_j_reg[4]_i_8__3_n_0 ),
        .I5(\a_j_reg[4]_i_1__4_1 ),
        .O(\a_j_reg[4]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_3__3 
       (.I0(\a_j_reg[4]_i_2__2_1 ),
        .I1(a_in_5[7]),
        .I2(a_in_5[23]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(a_in_5[15]),
        .O(\a_j_reg[4]_i_3__3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_4__3 
       (.I0(\a_j_reg[4]_i_10__2_n_0 ),
        .I1(\count_reg_reg[4] ),
        .I2(\a_j_reg[4]_i_12__3_n_0 ),
        .I3(\FSM_onehot_state_reg[3]_0 ),
        .I4(\a_j_reg[0]_i_1__3 ),
        .I5(\a_j_reg[0]_i_1__3_0 ),
        .O(\a_j_reg[4]_i_4__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \a_j_reg[4]_i_5__3 
       (.I0(a_in_5[11]),
        .I1(a_in_5[19]),
        .I2(a_in_5[3]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(\a_j_reg[4]_i_2__2_1 ),
        .O(\a_j_reg[4]_i_5__3_n_0 ));
  LUT6 #(
    .INIT(64'hEABFBFEA2A80802A)) 
    \a_j_reg[4]_i_5__4 
       (.I0(a_in_4[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(a_in_4[0]),
        .O(\a_j_reg[4]_i_5__4_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_6__3 
       (.I0(\a_j_reg[4]_i_2__2_1 ),
        .I1(a_in_5[5]),
        .I2(a_in_5[21]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(a_in_5[13]),
        .O(\a_j_reg[4]_i_6__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \a_j_reg[4]_i_7__3 
       (.I0(a_in_5[9]),
        .I1(a_in_5[17]),
        .I2(a_in_5[1]),
        .I3(\a_j_reg[4]_i_2__2_0 ),
        .I4(\a_j_reg[4]_i_2__2_1 ),
        .O(\a_j_reg[4]_i_7__3_n_0 ));
  LUT6 #(
    .INIT(64'hEABFBFEA2A80802A)) 
    \a_j_reg[4]_i_7__4 
       (.I0(a_in_4[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(a_in_4[2]),
        .O(\a_j_reg[4]_i_7__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \a_j_reg[4]_i_8__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\a_j_reg[4]_i_8__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__4
       (.I0(\count_reg_reg[0]_0 [0]),
        .I1(\count_reg_reg[0]_0 [1]),
        .I2(\count_reg_reg[0]_0 [4]),
        .I3(valid),
        .I4(\count_reg_reg[0]_0 [2]),
        .I5(done),
        .O(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__5_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__15_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__15 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[1]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__9_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count_reg[2]_i_1__9 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__15_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \count_reg[3]_i_1__15 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[3]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__9_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count_reg[4]_i_1__9 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBABAAAAAAAA)) 
    \count_reg[4]_i_2__4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[4]_0 ),
        .I2(\FSM_onehot_state[4]_i_3__9_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__8_n_0 ),
        .I4(\FSM_onehot_state[4]_i_5__4_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__2_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__6_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__6 
       (.I0(\j_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__4_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \j_reg[2]_i_1__4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(\j_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(\j_reg[2]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__4_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \j_reg[3]_i_1__4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__4_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \j_reg[4]_i_1__4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(j));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[4]_i_6__6_n_0 ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5
   (\FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \count_reg_reg[1] ,
    \count_reg_reg[2] ,
    \count_reg_reg[0] ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \FSM_onehot_state_reg[3]_6 ,
    \FSM_onehot_state_reg[4]_0 ,
    E,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[3]_7 ,
    \j_reg[1]_0 ,
    \j_reg[3]_0 ,
    D,
    a_in_4,
    \a_j_reg[4]_i_1__4 ,
    Q,
    \a_j_reg[4]_i_4__4_0 ,
    \count_reg_reg[0]_0 ,
    next_out_4,
    \FSM_onehot_state_reg[3]_8 ,
    \FSM_onehot_state_reg[4]_1 ,
    \FSM_onehot_state_reg[4]_2 ,
    \FSM_onehot_state[4]_i_5__5_0 ,
    \FSM_onehot_state[4]_i_4__10_0 ,
    complete_tick,
    SR,
    clk,
    \FSM_onehot_state[4]_i_7__5 );
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[0] ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \FSM_onehot_state_reg[3]_6 ;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]E;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output [1:0]\FSM_onehot_state_reg[3]_7 ;
  output \j_reg[1]_0 ;
  output \j_reg[3]_0 ;
  output [1:0]D;
  input [19:0]a_in_4;
  input \a_j_reg[4]_i_1__4 ;
  input [1:0]Q;
  input \a_j_reg[4]_i_4__4_0 ;
  input [4:0]\count_reg_reg[0]_0 ;
  input next_out_4;
  input \FSM_onehot_state_reg[3]_8 ;
  input [0:0]\FSM_onehot_state_reg[4]_1 ;
  input \FSM_onehot_state_reg[4]_2 ;
  input [4:0]\FSM_onehot_state[4]_i_5__5_0 ;
  input \FSM_onehot_state[4]_i_4__10_0 ;
  input complete_tick;
  input [0:0]SR;
  input clk;
  input [4:0]\FSM_onehot_state[4]_i_7__5 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__11_n_0 ;
  wire \FSM_onehot_state[1]_i_2__5_n_0 ;
  wire \FSM_onehot_state[3]_i_1__11_n_0 ;
  wire \FSM_onehot_state[4]_i_14__4_n_0 ;
  wire \FSM_onehot_state[4]_i_1__14_n_0 ;
  wire \FSM_onehot_state[4]_i_2__12_n_0 ;
  wire \FSM_onehot_state[4]_i_4__10_0 ;
  wire \FSM_onehot_state[4]_i_4__10_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5__5_0 ;
  wire \FSM_onehot_state[4]_i_5__5_n_0 ;
  wire \FSM_onehot_state[4]_i_6__4_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_7__5 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire \FSM_onehot_state_reg[3]_6 ;
  wire [1:0]\FSM_onehot_state_reg[3]_7 ;
  wire \FSM_onehot_state_reg[3]_8 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire [0:0]\FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg[4]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [19:0]a_in_4;
  wire a_j;
  wire \a_j_reg[0]_i_4__1_n_0 ;
  wire \a_j_reg[4]_i_12__4_n_0 ;
  wire \a_j_reg[4]_i_1__4 ;
  wire \a_j_reg[4]_i_4__4_0 ;
  wire clk;
  wire complete_tick;
  wire count;
  wire \count_reg[0]_i_1__7_n_0 ;
  wire \count_reg[1]_i_1__10_n_0 ;
  wire \count_reg[2]_i_1__11_n_0 ;
  wire \count_reg[3]_i_1__10_n_0 ;
  wire \count_reg[4]_i_1__11_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_reg[0] ;
  wire [4:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire done;
  wire done_aux;
  wire j;
  wire \j_reg[0]_i_1__3_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__4_n_0 ;
  wire \j_reg[2]_i_1__5_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1__5_n_0 ;
  wire \j_reg[4]_i_1__5_n_0 ;
  wire \j_reg_n_0_[2] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_4;
  wire [4:4]next_state30_in;
  wire [3:1]next_state6;
  wire [4:4]p_0_in;
  wire valid;
  wire valid_aux;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \FSM_onehot_state[1]_i_1__11 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[1]_i_2__5_n_0 ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1__11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__12 
       (.I0(\count_reg_reg[0]_0 [0]),
        .I1(\count_reg_reg[0]_0 [2]),
        .I2(valid),
        .I3(complete_tick),
        .I4(\count_reg_reg[0]_0 [3]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[1]_i_2__5 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_2__5_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \FSM_onehot_state[3]_i_1__11 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_6__4_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__5_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__10_n_0 ),
        .I4(\FSM_onehot_state_reg[3]_8 ),
        .O(\FSM_onehot_state[3]_i_1__11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__12 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(valid),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \FSM_onehot_state[4]_i_10__3 
       (.I0(\FSM_onehot_state[4]_i_5__5_0 [3]),
        .I1(\FSM_onehot_state[4]_i_14__4_n_0 ),
        .I2(\FSM_onehot_state_reg[1]_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__5_0 [4]),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \FSM_onehot_state[4]_i_13__4 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5__5_0 [0]),
        .I2(\FSM_onehot_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_state[4]_i_5__5_0 [1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'hF7FF757751551011)) 
    \FSM_onehot_state[4]_i_14__4 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(\FSM_onehot_state[4]_i_5__5_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__5_0 [1]),
        .I5(\FSM_onehot_state[4]_i_5__5_0 [2]),
        .O(\FSM_onehot_state[4]_i_14__4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFAAAAAAAA)) 
    \FSM_onehot_state[4]_i_1__14 
       (.I0(\FSM_onehot_state[4]_i_2__12_n_0 ),
        .I1(\FSM_onehot_state_reg[3]_8 ),
        .I2(\FSM_onehot_state[4]_i_4__10_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5__5_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6__4_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1__14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__11 
       (.I0(\count_reg_reg[0]_0 [1]),
        .I1(\count_reg_reg[0]_0 [0]),
        .I2(\count_reg_reg[0]_0 [2]),
        .I3(done),
        .I4(next_out_4),
        .I5(\count_reg_reg[0]_0 [3]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \FSM_onehot_state[4]_i_2__12 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_2__12_n_0 ));
  LUT4 #(
    .INIT(16'hFD56)) 
    \FSM_onehot_state[4]_i_4__10 
       (.I0(next_state30_in),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_4__10_n_0 ));
  LUT6 #(
    .INIT(64'h969FFFF6FFF9666F)) 
    \FSM_onehot_state[4]_i_5__5 
       (.I0(next_state6[3]),
        .I1(\j_reg_n_0_[3] ),
        .I2(p_0_in),
        .I3(\FSM_onehot_state_reg[4]_2 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .I5(\j_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_5__5_n_0 ));
  LUT6 #(
    .INIT(64'hA5FFFF96FF96A5FF)) 
    \FSM_onehot_state[4]_i_6__4 
       (.I0(\FSM_onehot_state_reg[3]_7 [1]),
        .I1(p_0_in),
        .I2(next_state6[1]),
        .I3(\FSM_onehot_state_reg[3]_7 [0]),
        .I4(\FSM_onehot_state[4]_i_5__5_0 [0]),
        .I5(\FSM_onehot_state_reg[1]_0 [0]),
        .O(\FSM_onehot_state[4]_i_6__4_n_0 ));
  LUT6 #(
    .INIT(64'h0492920400000000)) 
    \FSM_onehot_state[4]_i_8__3 
       (.I0(\FSM_onehot_state[4]_i_14__4_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__5_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__5_0 [4]),
        .I5(\FSM_onehot_state[4]_i_4__10_0 ),
        .O(next_state30_in));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_9__5 
       (.I0(\FSM_onehot_state[4]_i_14__4_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__5_0 [3]),
        .O(next_state6[3]));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__11_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__11_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__14_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__5 [0]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hEB28EBEBEB282828)) 
    \a_j_reg[0]_i_2__4 
       (.I0(\a_j_reg[0]_i_4__1_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_4[12]),
        .I4(\a_j_reg[4]_i_1__4 ),
        .I5(a_in_4[4]),
        .O(\FSM_onehot_state_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hEB28EBEBEB282828)) 
    \a_j_reg[0]_i_3__4 
       (.I0(\FSM_onehot_state_reg[3]_3 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in_4[14]),
        .I4(\a_j_reg[4]_i_1__4 ),
        .I5(a_in_4[6]),
        .O(\FSM_onehot_state_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[0]_i_4__1 
       (.I0(a_in_4[8]),
        .I1(\a_j_reg[4]_i_1__4 ),
        .I2(a_in_4[16]),
        .I3(\a_j_reg[4]_i_4__4_0 ),
        .I4(a_in_4[0]),
        .O(\a_j_reg[0]_i_4__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__5 [1]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[1]_i_3__4 
       (.I0(a_in_4[9]),
        .I1(\a_j_reg[4]_i_1__4 ),
        .I2(a_in_4[17]),
        .I3(\a_j_reg[4]_i_4__4_0 ),
        .I4(a_in_4[1]),
        .O(\FSM_onehot_state_reg[3]_6 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__5 [2]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[2]_i_3__4 
       (.I0(a_in_4[10]),
        .I1(\a_j_reg[4]_i_1__4 ),
        .I2(a_in_4[18]),
        .I3(\a_j_reg[4]_i_4__4_0 ),
        .I4(a_in_4[2]),
        .O(\FSM_onehot_state_reg[3]_3 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__5 [3]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[3]_i_3__4 
       (.I0(a_in_4[11]),
        .I1(\a_j_reg[4]_i_1__4 ),
        .I2(a_in_4[19]),
        .I3(\a_j_reg[4]_i_4__4_0 ),
        .I4(a_in_4[3]),
        .O(\FSM_onehot_state_reg[3]_5 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_7__5 [4]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_11__4 
       (.I0(a_in_4[1]),
        .I1(\a_j_reg[4]_i_4__4_0 ),
        .I2(a_in_4[17]),
        .I3(\a_j_reg[4]_i_1__4 ),
        .I4(a_in_4[9]),
        .O(\count_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_12__4 
       (.I0(a_in_4[3]),
        .I1(\a_j_reg[4]_i_4__4_0 ),
        .I2(a_in_4[19]),
        .I3(\a_j_reg[4]_i_1__4 ),
        .I4(a_in_4[11]),
        .O(\a_j_reg[4]_i_12__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8B8FF00B8B800)) 
    \a_j_reg[4]_i_3__4 
       (.I0(a_in_4[13]),
        .I1(\a_j_reg[4]_i_1__4 ),
        .I2(a_in_4[5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\count_reg_reg[1] ),
        .O(\FSM_onehot_state_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFFB8B8FF00B8B800)) 
    \a_j_reg[4]_i_4__4 
       (.I0(a_in_4[15]),
        .I1(\a_j_reg[4]_i_1__4 ),
        .I2(a_in_4[7]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_12__4_n_0 ),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_6__4 
       (.I0(a_in_4[0]),
        .I1(\a_j_reg[4]_i_4__4_0 ),
        .I2(a_in_4[16]),
        .I3(\a_j_reg[4]_i_1__4 ),
        .I4(a_in_4[8]),
        .O(\count_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \a_j_reg[4]_i_6__5 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg[3]_7 [0]),
        .I2(\FSM_onehot_state_reg[3]_7 [1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h9E61)) 
    \a_j_reg[4]_i_7__5 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg[3]_7 [0]),
        .I2(\FSM_onehot_state_reg[3]_7 [1]),
        .I3(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_9__4 
       (.I0(a_in_4[2]),
        .I1(\a_j_reg[4]_i_4__4_0 ),
        .I2(a_in_4[18]),
        .I3(\a_j_reg[4]_i_1__4 ),
        .I4(a_in_4[10]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__5
       (.I0(\count_reg_reg[0]_0 [4]),
        .I1(\count_reg_reg[0]_0 [1]),
        .I2(\count_reg_reg[0]_0 [0]),
        .I3(\count_reg_reg[0]_0 [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__7_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__10_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \count_reg[1]_i_1__10 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count_reg[1]_i_1__10_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__11_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__11 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__11_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__10_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__10 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__10_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__11_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__11 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \count_reg[4]_i_2__5 
       (.I0(\FSM_onehot_state_reg[3]_8 ),
        .I1(\FSM_onehot_state[4]_i_4__10_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__5_n_0 ),
        .I3(\FSM_onehot_state[4]_i_6__4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__5
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__3_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_7 [0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__3 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_7 [0]),
        .O(\j_reg[0]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__4_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[3]_7 [1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__4 
       (.I0(\FSM_onehot_state_reg[3]_7 [0]),
        .I1(\FSM_onehot_state_reg[3]_7 [1]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__5_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__5 
       (.I0(\FSM_onehot_state_reg[3]_7 [1]),
        .I1(\FSM_onehot_state_reg[3]_7 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\j_reg_n_0_[2] ),
        .O(\j_reg[2]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__5_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__5 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg[3]_7 [0]),
        .I2(\FSM_onehot_state_reg[3]_7 [1]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__5_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__5 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg[3]_7 [1]),
        .I2(\FSM_onehot_state_reg[3]_7 [0]),
        .I3(\j_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(j));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    valid_aux_reg_i_1__5
       (.I0(\count_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[1]_i_2__5_n_0 ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6
   (valid,
    \j_reg[0]_0 ,
    Q,
    D,
    E,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \j_reg[2]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \j_reg[0]_1 ,
    \FSM_onehot_state_reg[2]_0 ,
    \a_j_reg[0]_0 ,
    a_in_3,
    \a_j_reg[0]_i_1__7_0 ,
    \a_j_reg[0]_i_1__7_1 ,
    \count_reg_reg[0] ,
    next_out_3,
    \FSM_onehot_state_reg[4]_0 ,
    \FSM_onehot_state_reg[4]_1 ,
    \FSM_onehot_state_reg[3]_1 ,
    \a_j_reg[0]_1 ,
    \a_j_reg[0]_2 ,
    a_in_2,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state[4]_i_9__6_0 ,
    \FSM_onehot_state_reg[3]_3 ,
    SR,
    clk,
    \FSM_onehot_state[4]_i_2__14 );
  output valid;
  output \j_reg[0]_0 ;
  output [4:0]Q;
  output [4:0]D;
  output [0:0]E;
  output \FSM_onehot_state_reg[0]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \j_reg[2]_0 ;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output \j_reg[0]_1 ;
  output [0:0]\FSM_onehot_state_reg[2]_0 ;
  input [1:0]\a_j_reg[0]_0 ;
  input [14:0]a_in_3;
  input \a_j_reg[0]_i_1__7_0 ;
  input \a_j_reg[0]_i_1__7_1 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_3;
  input \FSM_onehot_state_reg[4]_0 ;
  input \FSM_onehot_state_reg[4]_1 ;
  input \FSM_onehot_state_reg[3]_1 ;
  input \a_j_reg[0]_1 ;
  input \a_j_reg[0]_2 ;
  input [3:0]a_in_2;
  input \FSM_onehot_state_reg[3]_2 ;
  input [2:0]\FSM_onehot_state[4]_i_9__6_0 ;
  input \FSM_onehot_state_reg[3]_3 ;
  input [0:0]SR;
  input clk;
  input [3:0]\FSM_onehot_state[4]_i_2__14 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__13_n_0 ;
  wire \FSM_onehot_state[1]_i_2__6_n_0 ;
  wire \FSM_onehot_state[3]_i_1__13_n_0 ;
  wire \FSM_onehot_state[4]_i_14__5_n_0 ;
  wire \FSM_onehot_state[4]_i_1__15_n_0 ;
  wire [3:0]\FSM_onehot_state[4]_i_2__14 ;
  wire \FSM_onehot_state[4]_i_3__13_n_0 ;
  wire \FSM_onehot_state[4]_i_4__12_n_0 ;
  wire \FSM_onehot_state[4]_i_6__7_n_0 ;
  wire \FSM_onehot_state[4]_i_8__4_n_0 ;
  wire [2:0]\FSM_onehot_state[4]_i_9__6_0 ;
  wire \FSM_onehot_state[4]_i_9__6_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [3:0]a_in_2;
  wire [14:0]a_in_3;
  wire a_j;
  wire [1:0]\a_j_reg[0]_0 ;
  wire \a_j_reg[0]_1 ;
  wire \a_j_reg[0]_2 ;
  wire \a_j_reg[0]_i_1__5_n_0 ;
  wire \a_j_reg[0]_i_1__7_0 ;
  wire \a_j_reg[0]_i_1__7_1 ;
  wire \a_j_reg[0]_i_2__5_n_0 ;
  wire \a_j_reg[0]_i_3__5_n_0 ;
  wire \a_j_reg[1]_i_2__4_n_0 ;
  wire \a_j_reg[2]_i_2__4_n_0 ;
  wire \a_j_reg[3]_i_2__4_n_0 ;
  wire \a_j_reg[4]_i_2__4_n_0 ;
  wire \a_j_reg[4]_i_3__5_n_0 ;
  wire \a_j_reg[4]_i_4__5_n_0 ;
  wire \a_j_reg[4]_i_5__5_n_0 ;
  wire clk;
  wire count;
  wire \count_reg[0]_i_1__9_n_0 ;
  wire \count_reg[1]_i_1__16_n_0 ;
  wire \count_reg[2]_i_1__13_n_0 ;
  wire \count_reg[3]_i_1__16_n_0 ;
  wire \count_reg[4]_i_1__13_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux;
  wire j;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_i_1__4_n_0 ;
  wire \j_reg[1]_i_1__7_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_i_1__7_n_0 ;
  wire \j_reg[3]_i_1__6_n_0 ;
  wire \j_reg[4]_i_1__6_n_0 ;
  wire next_out_3;
  wire valid;
  wire valid_aux;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[1]_i_1__13 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[1]_i_2__6_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1__13_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_state[1]_i_2__6 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2AAAAA2)) 
    \FSM_onehot_state[3]_i_1__13 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg[4]_1 ),
        .I2(\FSM_onehot_state[4]_i_4__12_n_0 ),
        .I3(Q[0]),
        .I4(\FSM_onehot_state_reg[3]_1 ),
        .I5(\FSM_onehot_state_reg[4]_0 ),
        .O(\FSM_onehot_state[3]_i_1__13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__14 
       (.I0(valid),
        .I1(\count_reg_reg[0] [2]),
        .O(\FSM_onehot_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_onehot_state[4]_i_13__6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6966666699996966)) 
    \FSM_onehot_state[4]_i_14__5 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state[4]_i_9__6_0 [2]),
        .I2(\FSM_onehot_state[4]_i_9__6_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state_reg[1]_0 [1]),
        .I5(\FSM_onehot_state[4]_i_9__6_0 [1]),
        .O(\FSM_onehot_state[4]_i_14__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF888A8888)) 
    \FSM_onehot_state[4]_i_1__15 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg[4]_0 ),
        .I2(\FSM_onehot_state[4]_i_3__13_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__12_n_0 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .I5(\FSM_onehot_state[4]_i_6__7_n_0 ),
        .O(\FSM_onehot_state[4]_i_1__15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__13 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(next_out_3),
        .I3(\count_reg_reg[0] [3]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_onehot_state[4]_i_3__13 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[1]_0 [0]),
        .I2(\FSM_onehot_state[4]_i_9__6_0 [0]),
        .O(\FSM_onehot_state[4]_i_3__13_n_0 ));
  LUT6 #(
    .INIT(64'hEDDEEDEDBDB77BBD)) 
    \FSM_onehot_state[4]_i_4__12 
       (.I0(\FSM_onehot_state[4]_i_8__4_n_0 ),
        .I1(\FSM_onehot_state[4]_i_9__6_n_0 ),
        .I2(\FSM_onehot_state_reg[3]_2 ),
        .I3(\FSM_onehot_state[4]_i_9__6_0 [0]),
        .I4(\FSM_onehot_state_reg[1]_0 [0]),
        .I5(\FSM_onehot_state_reg[3]_3 ),
        .O(\FSM_onehot_state[4]_i_4__12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \FSM_onehot_state[4]_i_6__7 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_6__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[4]_i_8__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_state[4]_i_8__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \FSM_onehot_state[4]_i_9__6 
       (.I0(\FSM_onehot_state[4]_i_14__5_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\FSM_onehot_state[4]_i_9__6_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__13_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__13_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__15_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__5_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \a_j_reg[0]_i_1__5 
       (.I0(\a_j_reg[0]_1 ),
        .I1(\a_j_reg[0]_i_3__5_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\a_j_reg[0]_2 ),
        .O(\a_j_reg[0]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hEF2FEC2CE323E020)) 
    \a_j_reg[0]_i_1__7 
       (.I0(\a_j_reg[1]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [1]),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[3]_i_2__4_n_0 ),
        .I4(\a_j_reg[2]_i_2__4_n_0 ),
        .I5(\a_j_reg[0]_i_2__5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[0]_i_2__5 
       (.I0(a_in_3[0]),
        .I1(a_in_3[8]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[12]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[4]),
        .O(\a_j_reg[0]_i_2__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h41147DD7)) 
    \a_j_reg[0]_i_3__5 
       (.I0(a_in_2[1]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in_2[2]),
        .O(\a_j_reg[0]_i_3__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA69A)) 
    \a_j_reg[0]_i_4__2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\j_reg[2]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__14 [0]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hEF2FE323EC2CE020)) 
    \a_j_reg[1]_i_1__7 
       (.I0(\a_j_reg[2]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [1]),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_2__4_n_0 ),
        .I4(\a_j_reg[1]_i_2__4_n_0 ),
        .I5(\a_j_reg[3]_i_2__4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[1]_i_2__4 
       (.I0(a_in_3[1]),
        .I1(a_in_3[9]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[13]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[5]),
        .O(\a_j_reg[1]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBBEBB88288288)) 
    \a_j_reg[1]_i_3__5 
       (.I0(a_in_2[3]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(a_in_2[0]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \a_j_reg[1]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[0]_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__14 [1]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'hEF2FE323EC2CE020)) 
    \a_j_reg[2]_i_1__7 
       (.I0(\a_j_reg[3]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [1]),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_5__5_n_0 ),
        .I4(\a_j_reg[2]_i_2__4_n_0 ),
        .I5(\a_j_reg[4]_i_2__4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \a_j_reg[2]_i_2__4 
       (.I0(a_in_3[2]),
        .I1(a_in_3[10]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[14]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[6]),
        .O(\a_j_reg[2]_i_2__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__14 [2]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'hEF2FE323EC2CE020)) 
    \a_j_reg[3]_i_1__7 
       (.I0(\a_j_reg[4]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [1]),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_3__5_n_0 ),
        .I4(\a_j_reg[3]_i_2__4_n_0 ),
        .I5(\a_j_reg[4]_i_5__5_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[3]_i_2__4 
       (.I0(\a_j_reg[0]_i_1__7_1 ),
        .I1(a_in_3[3]),
        .I2(a_in_3[11]),
        .I3(\a_j_reg[0]_i_1__7_0 ),
        .I4(a_in_3[7]),
        .O(\a_j_reg[3]_i_2__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state[4]_i_2__14 [3]),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'hFBF83B38CBC80B08)) 
    \a_j_reg[4]_i_1__7 
       (.I0(\a_j_reg[4]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [1]),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_3__5_n_0 ),
        .I4(\a_j_reg[4]_i_4__5_n_0 ),
        .I5(\a_j_reg[4]_i_5__5_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_2__4 
       (.I0(a_in_3[4]),
        .I1(a_in_3[12]),
        .I2(a_in_3[8]),
        .I3(a_in_3[0]),
        .I4(\a_j_reg[0]_i_1__7_0 ),
        .I5(\a_j_reg[0]_i_1__7_1 ),
        .O(\a_j_reg[4]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_3__5 
       (.I0(a_in_3[6]),
        .I1(a_in_3[14]),
        .I2(a_in_3[10]),
        .I3(a_in_3[2]),
        .I4(\a_j_reg[0]_i_1__7_0 ),
        .I5(\a_j_reg[0]_i_1__7_1 ),
        .O(\a_j_reg[4]_i_3__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \a_j_reg[4]_i_4__5 
       (.I0(a_in_3[7]),
        .I1(a_in_3[11]),
        .I2(a_in_3[3]),
        .I3(\a_j_reg[0]_i_1__7_0 ),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .O(\a_j_reg[4]_i_4__5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_5__5 
       (.I0(a_in_3[5]),
        .I1(a_in_3[13]),
        .I2(a_in_3[9]),
        .I3(a_in_3[1]),
        .I4(\a_j_reg[0]_i_1__7_0 ),
        .I5(\a_j_reg[0]_i_1__7_1 ),
        .O(\a_j_reg[4]_i_5__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__6
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [4]),
        .I3(valid),
        .I4(\count_reg_reg[0] [2]),
        .I5(done),
        .O(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__9_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__9 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__16_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__16 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[1]_i_1__16_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__13_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count_reg[2]_i_1__13 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__13_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__16_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \count_reg[3]_i_1__16 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[3]_i_1__16_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__13_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count_reg[4]_i_1__13 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__13_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBBAAAAAAAA)) 
    \count_reg[4]_i_2__6 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[4]_0 ),
        .I2(\FSM_onehot_state[4]_i_3__13_n_0 ),
        .I3(\FSM_onehot_state[4]_i_4__12_n_0 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__4_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \j_reg[2]_i_1__7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[2]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__6_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \j_reg[3]_i_1__6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\j_reg[3]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__6_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \j_reg[4]_i_1__6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\j_reg[4]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(j));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[4]_i_6__7_n_0 ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7
   (\count_reg_reg[4] ,
    D,
    \count_reg_reg[3] ,
    \FSM_onehot_state_reg[4]_0 ,
    E,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    a_in_2,
    \a_j_reg[0]_i_1__5 ,
    \a_j_reg[0]_i_1__5_0 ,
    Q,
    \a_j_reg[0]_i_1__5_1 ,
    \count_reg_reg[0] ,
    next_out_2,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[4]_1 ,
    \FSM_onehot_state_reg[4]_2 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state[4]_i_5__7_0 ,
    \a_j_reg[3]_i_1__6_0 ,
    complete_tick,
    SR,
    clk);
  output \count_reg_reg[4] ;
  output [3:0]D;
  output \count_reg_reg[3] ;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]E;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output [1:0]\FSM_onehot_state_reg[2]_0 ;
  input [9:0]a_in_2;
  input \a_j_reg[0]_i_1__5 ;
  input \a_j_reg[0]_i_1__5_0 ;
  input [2:0]Q;
  input \a_j_reg[0]_i_1__5_1 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_2;
  input \FSM_onehot_state_reg[3]_0 ;
  input [0:0]\FSM_onehot_state_reg[4]_1 ;
  input \FSM_onehot_state_reg[4]_2 ;
  input \FSM_onehot_state_reg[3]_1 ;
  input [4:0]\FSM_onehot_state[4]_i_5__7_0 ;
  input [4:0]\a_j_reg[3]_i_1__6_0 ;
  input complete_tick;
  input [0:0]SR;
  input clk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__15_n_0 ;
  wire \FSM_onehot_state[1]_i_2__7_n_0 ;
  wire \FSM_onehot_state[3]_i_1__15_n_0 ;
  wire \FSM_onehot_state[3]_i_2__2_n_0 ;
  wire \FSM_onehot_state[3]_i_3__0_n_0 ;
  wire \FSM_onehot_state[4]_i_16__1_n_0 ;
  wire \FSM_onehot_state[4]_i_1__16_n_0 ;
  wire \FSM_onehot_state[4]_i_2__16_n_0 ;
  wire \FSM_onehot_state[4]_i_4__14_n_0 ;
  wire [4:0]\FSM_onehot_state[4]_i_5__7_0 ;
  wire \FSM_onehot_state[4]_i_5__7_n_0 ;
  wire \FSM_onehot_state[4]_i_6__5_n_0 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [1:0]\FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire [0:0]\FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg[4]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [9:0]a_in_2;
  wire a_j;
  wire \a_j_reg[0]_i_1__5 ;
  wire \a_j_reg[0]_i_1__5_0 ;
  wire \a_j_reg[0]_i_1__5_1 ;
  wire \a_j_reg[0]_i_1__6_n_0 ;
  wire \a_j_reg[0]_i_2__7_n_0 ;
  wire \a_j_reg[1]_i_1__6_n_0 ;
  wire \a_j_reg[2]_i_1__6_n_0 ;
  wire \a_j_reg[2]_i_2__5_n_0 ;
  wire \a_j_reg[2]_i_2__6_n_0 ;
  wire [4:0]\a_j_reg[3]_i_1__6_0 ;
  wire \a_j_reg[3]_i_1__6_n_0 ;
  wire \a_j_reg[3]_i_2__5_n_0 ;
  wire \a_j_reg[4]_i_1__6_n_0 ;
  wire \a_j_reg[4]_i_2__5_n_0 ;
  wire \a_j_reg[4]_i_2__6_n_0 ;
  wire \a_j_reg[4]_i_3__6_n_0 ;
  wire \a_j_reg[4]_i_4__6_n_0 ;
  wire \a_j_reg[4]_i_5__6_n_0 ;
  wire clk;
  wire complete_tick;
  wire count;
  wire \count_reg[0]_i_1__11_n_0 ;
  wire \count_reg[1]_i_1__13_n_0 ;
  wire \count_reg[2]_i_1__15_n_0 ;
  wire \count_reg[3]_i_1__13_n_0 ;
  wire \count_reg[4]_i_1__15_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[4] ;
  wire done;
  wire done_aux;
  wire j;
  wire \j_reg[0]_i_1__5_n_0 ;
  wire \j_reg[1]_i_1__5_n_0 ;
  wire \j_reg[2]_i_1__6_n_0 ;
  wire \j_reg[3]_i_1__7_n_0 ;
  wire \j_reg[4]_i_1__7_n_0 ;
  wire \j_reg_n_0_[0] ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[2] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_2;
  wire [3:2]next_state3;
  wire [4:4]next_state30_in;
  wire [3:1]next_state6;
  wire [4:4]p_0_in;
  wire valid;
  wire valid_aux;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[1]_i_1__15 
       (.I0(\FSM_onehot_state[1]_i_2__7_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1__15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__16 
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [2]),
        .I2(valid),
        .I3(complete_tick),
        .I4(\count_reg_reg[0] [3]),
        .O(\FSM_onehot_state_reg[2]_0 [0]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \FSM_onehot_state[1]_i_2__7 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .O(\FSM_onehot_state[1]_i_2__7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \FSM_onehot_state[3]_i_1__15 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_6__5_n_0 ),
        .I2(\FSM_onehot_state[3]_i_2__2_n_0 ),
        .I3(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I4(\FSM_onehot_state[4]_i_4__14_n_0 ),
        .I5(\FSM_onehot_state_reg[3]_0 ),
        .O(\FSM_onehot_state[3]_i_1__15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__16 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hA956A956A95656A9)) 
    \FSM_onehot_state[3]_i_2__2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state6[3]),
        .I4(\FSM_onehot_state_reg[3]_1 ),
        .I5(p_0_in),
        .O(\FSM_onehot_state[3]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96969669)) 
    \FSM_onehot_state[3]_i_3__0 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg[4]_1 ),
        .I3(\FSM_onehot_state_reg[4]_2 ),
        .I4(p_0_in),
        .O(\FSM_onehot_state[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \FSM_onehot_state[4]_i_10__5 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[3] ),
        .O(next_state3[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \FSM_onehot_state[4]_i_11__7 
       (.I0(\FSM_onehot_state[4]_i_5__7_0 [3]),
        .I1(\FSM_onehot_state[4]_i_16__1_n_0 ),
        .I2(\FSM_onehot_state_reg[1]_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__7_0 [4]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[4]_i_14__6 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[2] ),
        .O(next_state3[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \FSM_onehot_state[4]_i_15__7 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(\FSM_onehot_state[4]_i_5__7_0 [0]),
        .I2(\FSM_onehot_state_reg[1]_0 [1]),
        .I3(\FSM_onehot_state[4]_i_5__7_0 [1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'hF7FF757751551011)) 
    \FSM_onehot_state[4]_i_16__1 
       (.I0(\FSM_onehot_state_reg[1]_0 [2]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(\FSM_onehot_state[4]_i_5__7_0 [0]),
        .I3(\FSM_onehot_state_reg[1]_0 [0]),
        .I4(\FSM_onehot_state[4]_i_5__7_0 [1]),
        .I5(\FSM_onehot_state[4]_i_5__7_0 [2]),
        .O(\FSM_onehot_state[4]_i_16__1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFAAAAAAAA)) 
    \FSM_onehot_state[4]_i_1__16 
       (.I0(\FSM_onehot_state[4]_i_2__16_n_0 ),
        .I1(\FSM_onehot_state_reg[3]_0 ),
        .I2(\FSM_onehot_state[4]_i_4__14_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5__7_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6__5_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1__16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__15 
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [2]),
        .I3(done),
        .I4(next_out_2),
        .I5(\count_reg_reg[0] [3]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \FSM_onehot_state[4]_i_2__16 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_2__16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFD5556)) 
    \FSM_onehot_state[4]_i_4__14 
       (.I0(next_state30_in),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\j_reg_n_0_[2] ),
        .I4(\j_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_4__14_n_0 ));
  LUT6 #(
    .INIT(64'h696FFFF9FFF9666F)) 
    \FSM_onehot_state[4]_i_5__7 
       (.I0(next_state6[3]),
        .I1(next_state3[3]),
        .I2(p_0_in),
        .I3(\FSM_onehot_state_reg[4]_2 ),
        .I4(\FSM_onehot_state_reg[4]_1 ),
        .I5(next_state3[2]),
        .O(\FSM_onehot_state[4]_i_5__7_n_0 ));
  LUT6 #(
    .INIT(64'h3CFFFF69FF693CFF)) 
    \FSM_onehot_state[4]_i_6__5 
       (.I0(p_0_in),
        .I1(next_state6[1]),
        .I2(\j_reg_n_0_[1] ),
        .I3(\j_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[4]_i_5__7_0 [0]),
        .I5(\FSM_onehot_state_reg[1]_0 [0]),
        .O(\FSM_onehot_state[4]_i_6__5_n_0 ));
  LUT6 #(
    .INIT(64'h0492920400000000)) 
    \FSM_onehot_state[4]_i_8__5 
       (.I0(\FSM_onehot_state[4]_i_16__1_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__7_0 [3]),
        .I3(\FSM_onehot_state_reg[1]_0 [4]),
        .I4(\FSM_onehot_state[4]_i_5__7_0 [4]),
        .I5(\FSM_onehot_state_reg[3]_1 ),
        .O(next_state30_in));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \FSM_onehot_state[4]_i_9__7 
       (.I0(\FSM_onehot_state[4]_i_16__1_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_5__7_0 [3]),
        .O(next_state6[3]));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1__15_n_0 ),
        .Q(a_j),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a_j),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1__15_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1__16_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \a_j_reg[0]_i_1__6 
       (.I0(\a_j_reg[3]_i_1__6_0 [3]),
        .I1(\j_reg_n_0_[1] ),
        .I2(\a_j_reg[3]_i_1__6_0 [1]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\a_j_reg[0]_i_2__7_n_0 ),
        .O(\a_j_reg[0]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \a_j_reg[0]_i_2__6 
       (.I0(a_in_2[4]),
        .I1(\a_j_reg[0]_i_1__5_0 ),
        .I2(a_in_2[0]),
        .I3(\a_j_reg[0]_i_1__5 ),
        .I4(a_in_2[8]),
        .I5(Q[1]),
        .O(\count_reg_reg[4] ));
  LUT6 #(
    .INIT(64'hE4FFFFE4E40000E4)) 
    \a_j_reg[0]_i_2__7 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\a_j_reg[3]_i_1__6_0 [0]),
        .I2(\a_j_reg[3]_i_1__6_0 [4]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(\a_j_reg[3]_i_1__6_0 [2]),
        .O(\a_j_reg[0]_i_2__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\a_j_reg[1]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[1]_i_1__5 
       (.I0(\count_reg_reg[3] ),
        .I1(Q[0]),
        .I2(\a_j_reg[2]_i_2__5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[1]_i_1__6 
       (.I0(\a_j_reg[2]_i_2__6_n_0 ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\a_j_reg[3]_i_1__6_0 [3]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\a_j_reg[3]_i_1__6_0 [1]),
        .O(\a_j_reg[1]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2__5 
       (.I0(a_in_2[3]),
        .I1(a_in_2[7]),
        .I2(Q[1]),
        .I3(\a_j_reg[0]_i_1__5_1 ),
        .I4(\a_j_reg[0]_i_1__5_0 ),
        .I5(a_in_2[5]),
        .O(\count_reg_reg[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\a_j_reg[2]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[2]_i_1__5 
       (.I0(\a_j_reg[2]_i_2__5_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[3]_i_2__5_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \a_j_reg[2]_i_1__6 
       (.I0(\a_j_reg[3]_i_1__6_0 [1]),
        .I1(\j_reg_n_0_[1] ),
        .I2(\a_j_reg[3]_i_1__6_0 [3]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\a_j_reg[2]_i_2__6_n_0 ),
        .O(\a_j_reg[2]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hAAFCAACFAA0CAAC0)) 
    \a_j_reg[2]_i_2__5 
       (.I0(\a_j_reg[4]_i_4__6_n_0 ),
        .I1(a_in_2[2]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(a_in_2[6]),
        .O(\a_j_reg[2]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE2B8FF00E2B800)) 
    \a_j_reg[2]_i_2__6 
       (.I0(\a_j_reg[3]_i_1__6_0 [0]),
        .I1(\j_reg_n_0_[2] ),
        .I2(\a_j_reg[3]_i_1__6_0 [4]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(\a_j_reg[3]_i_1__6_0 [2]),
        .O(\a_j_reg[2]_i_2__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\a_j_reg[3]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__5 
       (.I0(\a_j_reg[3]_i_2__5_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_2__5_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[3]_i_1__6 
       (.I0(\a_j_reg[4]_i_2__6_n_0 ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\a_j_reg[3]_i_1__6_0 [1]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\a_j_reg[3]_i_1__6_0 [3]),
        .O(\a_j_reg[3]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \a_j_reg[3]_i_2__5 
       (.I0(\a_j_reg[4]_i_5__6_n_0 ),
        .I1(Q[1]),
        .I2(a_in_2[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(a_in_2[7]),
        .O(\a_j_reg[3]_i_2__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\a_j_reg[4]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_1__5 
       (.I0(\a_j_reg[4]_i_2__5_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_3__6_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \a_j_reg[4]_i_1__6 
       (.I0(\a_j_reg[3]_i_1__6_0 [3]),
        .I1(\j_reg_n_0_[1] ),
        .I2(\a_j_reg[3]_i_1__6_0 [1]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\a_j_reg[4]_i_2__6_n_0 ),
        .O(\a_j_reg[4]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hBE82BE82FFFF0000)) 
    \a_j_reg[4]_i_2__5 
       (.I0(a_in_2[6]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(a_in_2[2]),
        .I4(\a_j_reg[4]_i_4__6_n_0 ),
        .I5(Q[1]),
        .O(\a_j_reg[4]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'hEB28EBEBEB282828)) 
    \a_j_reg[4]_i_2__6 
       (.I0(\a_j_reg[3]_i_1__6_0 [2]),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[3]_i_1__6_0 [0]),
        .I4(\j_reg_n_0_[2] ),
        .I5(\a_j_reg[3]_i_1__6_0 [4]),
        .O(\a_j_reg[4]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \a_j_reg[4]_i_3__6 
       (.I0(a_in_2[7]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(a_in_2[3]),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_5__6_n_0 ),
        .O(\a_j_reg[4]_i_3__6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_4__6 
       (.I0(a_in_2[4]),
        .I1(\a_j_reg[0]_i_1__5_0 ),
        .I2(a_in_2[0]),
        .I3(\a_j_reg[0]_i_1__5 ),
        .I4(a_in_2[8]),
        .O(\a_j_reg[4]_i_4__6_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \a_j_reg[4]_i_5__6 
       (.I0(a_in_2[1]),
        .I1(\a_j_reg[0]_i_1__5 ),
        .I2(a_in_2[9]),
        .I3(\a_j_reg[0]_i_1__5_0 ),
        .I4(a_in_2[5]),
        .O(\a_j_reg[4]_i_5__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__7
       (.I0(\count_reg_reg[0] [4]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [0]),
        .I3(\count_reg_reg[0] [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__11_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__11 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__11_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__13_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__13 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[1]_i_1__13_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__15_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__15 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__13_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__13 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__13_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__15_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__15 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \count_reg[4]_i_2__7 
       (.I0(\FSM_onehot_state_reg[3]_0 ),
        .I1(\FSM_onehot_state[4]_i_4__14_n_0 ),
        .I2(\FSM_onehot_state[4]_i_5__7_n_0 ),
        .I3(\FSM_onehot_state[4]_i_6__5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__5_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__5 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[0] ),
        .O(\j_reg[0]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__5_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__5 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__6_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__6 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\j_reg_n_0_[2] ),
        .O(\j_reg[2]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__7 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__7 
       (.I0(\j_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[0] ),
        .I3(\j_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__7 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(j));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_reg_i_1__7
       (.I0(\FSM_onehot_state[4]_i_2__16_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(valid_aux));
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
  output [31:0]counter;
  output [4:0]a;

  wire [4:0]a;
  wire clk;
  wire [31:0]counter;
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
    \j_reg[2] ,
    Q,
    \j_reg[2]_0 ,
    \j_reg[4] ,
    \j_reg[3] ,
    E,
    D,
    \counter[31] ,
    \counter[31]_0 ,
    \counter[31]_1 ,
    \counter[31]_2 ,
    plusOp,
    clk,
    \FSM_onehot_state[4]_i_2__0 ,
    SR,
    AR);
  output next_out_9;
  output \j_reg[2] ;
  output [1:0]Q;
  output \j_reg[2]_0 ;
  output \j_reg[4] ;
  output \j_reg[3] ;
  output [0:0]E;
  output [31:0]D;
  input \counter[31] ;
  input \counter[31]_0 ;
  input \counter[31]_1 ;
  input \counter[31]_2 ;
  input [31:0]plusOp;
  input clk;
  input [4:0]\FSM_onehot_state[4]_i_2__0 ;
  input [0:0]SR;
  input [0:0]AR;

  wire [0:0]AR;
  wire [31:0]D;
  wire [0:0]E;
  wire [4:0]\FSM_onehot_state[4]_i_2__0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ack_out_9;
  wire acks_out;
  wire \asout_array[9]_0 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1_n_0;
  wire clk;
  wire \counter[31] ;
  wire \counter[31]_0 ;
  wire \counter[31]_1 ;
  wire \counter[31]_2 ;
  wire dut_n_11;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[2] ;
  wire \j_reg[2]_0 ;
  wire \j_reg[3] ;
  wire \j_reg[4] ;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_5;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire next_out_9;
  wire [2:2]next_state6;
  wire nexts_out;
  wire [31:0]plusOp;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2_n_0;
  wire [4:0]u_i;
  wire valid;

  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_11),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_11),
        .D(dut_n_9),
        .Q(ce__0),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_11),
        .D(dut_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_11),
        .D(logic_n_12),
        .Q(\asout_array[9]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_11),
        .D(dut_n_7),
        .Q(nexts_out),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_10),
        .GE(1'b1),
        .Q(ack_out_9));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
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
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[0]_i_1 
       (.I0(plusOp[0]),
        .I1(ack_out_9),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[10]_i_1 
       (.I0(plusOp[10]),
        .I1(ack_out_9),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[11]_i_1 
       (.I0(plusOp[11]),
        .I1(ack_out_9),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[12]_i_1 
       (.I0(plusOp[12]),
        .I1(ack_out_9),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[13]_i_1 
       (.I0(plusOp[13]),
        .I1(ack_out_9),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[14]_i_1 
       (.I0(plusOp[14]),
        .I1(ack_out_9),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[15]_i_1 
       (.I0(plusOp[15]),
        .I1(ack_out_9),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[16]_i_1 
       (.I0(plusOp[16]),
        .I1(ack_out_9),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[17]_i_1 
       (.I0(plusOp[17]),
        .I1(ack_out_9),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[18]_i_1 
       (.I0(plusOp[18]),
        .I1(ack_out_9),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[19]_i_1 
       (.I0(plusOp[19]),
        .I1(ack_out_9),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[1]_i_1 
       (.I0(plusOp[1]),
        .I1(ack_out_9),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[20]_i_1 
       (.I0(plusOp[20]),
        .I1(ack_out_9),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[21]_i_1 
       (.I0(plusOp[21]),
        .I1(ack_out_9),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[22]_i_1 
       (.I0(plusOp[22]),
        .I1(ack_out_9),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[23]_i_1 
       (.I0(plusOp[23]),
        .I1(ack_out_9),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[24]_i_1 
       (.I0(plusOp[24]),
        .I1(ack_out_9),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[25]_i_1 
       (.I0(plusOp[25]),
        .I1(ack_out_9),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[26]_i_1 
       (.I0(plusOp[26]),
        .I1(ack_out_9),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[27]_i_1 
       (.I0(plusOp[27]),
        .I1(ack_out_9),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[28]_i_1 
       (.I0(plusOp[28]),
        .I1(ack_out_9),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[29]_i_1 
       (.I0(plusOp[29]),
        .I1(ack_out_9),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[2]_i_1 
       (.I0(plusOp[2]),
        .I1(ack_out_9),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[30]_i_1 
       (.I0(plusOp[30]),
        .I1(ack_out_9),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[31]_i_1 
       (.I0(plusOp[31]),
        .I1(ack_out_9),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hF1111111)) 
    \counter_s_reg[31]_i_2 
       (.I0(\counter[31] ),
        .I1(ack_out_9),
        .I2(\counter[31]_0 ),
        .I3(\counter[31]_1 ),
        .I4(\counter[31]_2 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[3]_i_1 
       (.I0(plusOp[3]),
        .I1(ack_out_9),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[4]_i_1 
       (.I0(plusOp[4]),
        .I1(ack_out_9),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[5]_i_1 
       (.I0(plusOp[5]),
        .I1(ack_out_9),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[6]_i_1 
       (.I0(plusOp[6]),
        .I1(ack_out_9),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[7]_i_1 
       (.I0(plusOp[7]),
        .I1(ack_out_9),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[8]_i_1 
       (.I0(plusOp[8]),
        .I1(ack_out_9),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[9]_i_1 
       (.I0(plusOp[9]),
        .I1(ack_out_9),
        .O(D[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter dut
       (.AR(AR),
        .D({dut_n_7,dut_n_8,dut_n_9}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({logic_n_5,logic_n_6,logic_n_7,logic_n_8,logic_n_9}),
        .\FSM_onehot_state_reg[4]_0 ({\asout_array[9]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_6),
        .\count_reg_reg[2]_0 (dut_n_5),
        .\count_reg_reg[3]_0 (dut_n_11),
        .next_state6(next_state6),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm logic
       (.D(logic_n_12),
        .E(logic_n_11),
        .\FSM_onehot_state[4]_i_2__0 (\FSM_onehot_state[4]_i_2__0 ),
        .\FSM_onehot_state[4]_i_5_0 (u_i),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_5,logic_n_6,logic_n_7,logic_n_8,logic_n_9}),
        .\FSM_onehot_state_reg[3]_0 (next_state6),
        .\FSM_onehot_state_reg[3]_1 (dut_n_6),
        .\FSM_onehot_state_reg[3]_2 (dut_n_5),
        .\FSM_onehot_state_reg[4]_0 (logic_n_10),
        .\FSM_onehot_state_reg[4]_1 (dut_n_11),
        .Q(Q),
        .SR(reset_control),
        .acks_out_reg({nexts_out,\asout_array[9]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .clk(clk),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[2]_1 (\j_reg[2]_0 ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .valid(valid));
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
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\asout_array[9]_0 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2
       (.I0(\asout_array[9]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(reset_control_reg_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0
   (AR,
    next_out_8,
    Q,
    D,
    SR,
    \j_reg[3] ,
    \j_reg[4] ,
    \j_reg[3]_0 ,
    \j_reg[0] ,
    \a_j_reg[0] ,
    \a_j_reg[0]_i_1 ,
    \a_j_reg[0]_i_1_0 ,
    \a_j_reg[0]_i_2 ,
    \a_j_reg[0]_i_2_0 ,
    nRst,
    next_out_9,
    clk,
    \FSM_onehot_state[4]_i_2__2 ,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_8,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_8;
  output [1:0]Q;
  output [4:0]D;
  output [0:0]SR;
  output \j_reg[3] ;
  output \j_reg[4] ;
  output \j_reg[3]_0 ;
  output \j_reg[0] ;
  input [1:0]\a_j_reg[0] ;
  input \a_j_reg[0]_i_1 ;
  input \a_j_reg[0]_i_1_0 ;
  input \a_j_reg[0]_i_2 ;
  input \a_j_reg[0]_i_2_0 ;
  input nRst;
  input next_out_9;
  input clk;
  input [4:0]\FSM_onehot_state[4]_i_2__2 ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [39:0]a_in_8;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [4:0]D;
  wire [4:0]\FSM_onehot_state[4]_i_2__2 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [39:0]a_in_8;
  wire [44:0]a_in_9;
  wire [1:0]\a_j_reg[0] ;
  wire \a_j_reg[0]_i_1 ;
  wire \a_j_reg[0]_i_1_0 ;
  wire \a_j_reg[0]_i_2 ;
  wire \a_j_reg[0]_i_2_0 ;
  wire acks_out;
  wire \asout_array[8]_1 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__0_n_0;
  wire clk;
  wire [0:0]\count_reg_reg[0] ;
  wire dut_n_11;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[3] ;
  wire \j_reg[3]_0 ;
  wire \j_reg[4] ;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_8;
  wire next_out_9;
  wire [2:2]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__0_n_0;
  wire [4:0]u_i;
  wire valid;

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
        .D(dut_n_9),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_9),
        .D(dut_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_9),
        .D(logic_n_10),
        .Q(\asout_array[8]_1 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_9),
        .D(dut_n_7),
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
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__0
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
        .D(u_i[0]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[4]));
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
        .Q(a_in_9[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_8[6]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_8[7]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[12]));
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
        .Q(a_in_9[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_8[11]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_8[12]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[17]));
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
        .G(ce_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__0
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 dut
       (.D({dut_n_7,dut_n_8,dut_n_9}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({logic_n_11,logic_n_12,logic_n_13,logic_n_14,logic_n_15}),
        .\FSM_onehot_state_reg[4]_0 ({\asout_array[8]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_6),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[2]_0 (dut_n_5),
        .\count_reg_reg[3]_0 (dut_n_11),
        .next_state6(next_state6),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0 logic
       (.D(D),
        .E(logic_n_9),
        .\FSM_onehot_state[4]_i_2__2 (\FSM_onehot_state[4]_i_2__2 ),
        .\FSM_onehot_state[4]_i_5__0_0 (u_i),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_11,logic_n_12,logic_n_13,logic_n_14,logic_n_15}),
        .\FSM_onehot_state_reg[2]_0 (logic_n_10),
        .\FSM_onehot_state_reg[3]_0 (next_state6),
        .\FSM_onehot_state_reg[3]_1 (dut_n_6),
        .\FSM_onehot_state_reg[3]_2 (dut_n_5),
        .\FSM_onehot_state_reg[4]_0 (logic_n_8),
        .\FSM_onehot_state_reg[4]_1 (dut_n_11),
        .Q(Q),
        .SR(reset_control),
        .a_in_9(a_in_9),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_i_1_0 (\a_j_reg[0]_i_1 ),
        .\a_j_reg[0]_i_1_1 (\a_j_reg[0]_i_1_0 ),
        .\a_j_reg[0]_i_2_0 (\a_j_reg[0]_i_2 ),
        .\a_j_reg[0]_i_2_1 (\a_j_reg[0]_i_2_0 ),
        .clk(clk),
        .\count_reg_reg[0] ({nexts_out,\asout_array[8]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[3]_1 (\j_reg[3]_0 ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .next_out_9(next_out_9),
        .valid(valid));
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
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__0
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\asout_array[8]_1 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__0
       (.I0(\asout_array[8]_1 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(reset_control_reg_i_2__0_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1
   (AR,
    next_out_7,
    SR,
    D,
    a_in_8,
    \FSM_onehot_state_reg[3]_0 ,
    \a_j_reg[3]_i_3__1 ,
    \j_reg[1] ,
    \j_reg[3] ,
    \j_reg[4] ,
    \j_reg[3]_0 ,
    nRst,
    Q,
    \a_j_reg[0]_i_1__0 ,
    \a_j_reg[0]_i_1__0_0 ,
    \a_j_reg[0]_i_2__0 ,
    \a_j_reg[0]_i_2__0_0 ,
    next_out_8,
    \a_j_reg[2] ,
    \a_j_reg[2]_0 ,
    \a_j_reg[2]_1 ,
    \a_j_reg[4] ,
    \a_j_reg[4]_i_1__1 ,
    \a_j_reg[4]_i_1__1_0 ,
    \a_j_reg[0]_i_1__1 ,
    clk,
    \FSM_onehot_state[4]_i_7__1 ,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_7,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_7;
  output [0:0]SR;
  output [4:0]D;
  output [39:0]a_in_8;
  output [1:0]\FSM_onehot_state_reg[3]_0 ;
  output \a_j_reg[3]_i_3__1 ;
  output \j_reg[1] ;
  output \j_reg[3] ;
  output \j_reg[4] ;
  output \j_reg[3]_0 ;
  input nRst;
  input [1:0]Q;
  input \a_j_reg[0]_i_1__0 ;
  input \a_j_reg[0]_i_1__0_0 ;
  input \a_j_reg[0]_i_2__0 ;
  input \a_j_reg[0]_i_2__0_0 ;
  input next_out_8;
  input \a_j_reg[2] ;
  input \a_j_reg[2]_0 ;
  input \a_j_reg[2]_1 ;
  input \a_j_reg[4] ;
  input \a_j_reg[4]_i_1__1 ;
  input \a_j_reg[4]_i_1__1_0 ;
  input \a_j_reg[0]_i_1__1 ;
  input clk;
  input [2:0]\FSM_onehot_state[4]_i_7__1 ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [34:0]a_in_7;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [4:0]D;
  wire [2:0]\FSM_onehot_state[4]_i_7__1 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire [1:0]\FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [34:0]a_in_7;
  wire [39:0]a_in_8;
  wire \a_j_reg[0]_i_1__0 ;
  wire \a_j_reg[0]_i_1__0_0 ;
  wire \a_j_reg[0]_i_1__1 ;
  wire \a_j_reg[0]_i_2__0 ;
  wire \a_j_reg[0]_i_2__0_0 ;
  wire \a_j_reg[2] ;
  wire \a_j_reg[2]_0 ;
  wire \a_j_reg[2]_1 ;
  wire \a_j_reg[3]_i_3__1 ;
  wire \a_j_reg[4] ;
  wire \a_j_reg[4]_i_1__1 ;
  wire \a_j_reg[4]_i_1__1_0 ;
  wire acks_out;
  wire \asout_array[7]_2 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__1_n_0;
  wire clk;
  wire complete_tick;
  wire [0:0]\count_reg_reg[0] ;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_6;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[1] ;
  wire \j_reg[3] ;
  wire \j_reg[3]_0 ;
  wire \j_reg[4] ;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_19;
  wire logic_n_20;
  wire logic_n_5;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_7;
  wire next_out_8;
  wire [2:2]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__1_n_0;
  wire [4:0]u_i;

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
        .CE(logic_n_6),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_6),
        .D(logic_n_20),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_6),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_6),
        .D(logic_n_19),
        .Q(\asout_array[7]_2 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_6),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_5),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
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
        .G(ce_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 dut
       (.D({dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state[4]_i_3__3_0 ({logic_n_7,logic_n_8,logic_n_9,logic_n_10,logic_n_11}),
        .\FSM_onehot_state_reg[4] ({\asout_array[7]_2 ,ce__0}),
        .Q(u_i),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0]_0 (dut_n_0),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_8),
        .\count_reg_reg[2]_0 (dut_n_6),
        .next_state6(next_state6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1 logic
       (.D(D),
        .E(logic_n_6),
        .\FSM_onehot_state[4]_i_4__2_0 (dut_n_6),
        .\FSM_onehot_state[4]_i_5__1_0 (u_i),
        .\FSM_onehot_state[4]_i_7__1 (\FSM_onehot_state[4]_i_7__1 ),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_7,logic_n_8,logic_n_9,logic_n_10,logic_n_11}),
        .\FSM_onehot_state_reg[2]_0 ({logic_n_19,logic_n_20}),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_1 (dut_n_0),
        .\FSM_onehot_state_reg[4]_0 (logic_n_5),
        .\FSM_onehot_state_reg[4]_1 (next_state6),
        .\FSM_onehot_state_reg[4]_2 (dut_n_8),
        .Q(Q),
        .SR(reset_control),
        .a_in_8(a_in_8),
        .\a_j_reg[0]_i_1__0_0 (\a_j_reg[0]_i_1__0 ),
        .\a_j_reg[0]_i_1__0_1 (\a_j_reg[0]_i_1__0_0 ),
        .\a_j_reg[0]_i_1__1 (\a_j_reg[0]_i_1__1 ),
        .\a_j_reg[0]_i_2__0_0 (\a_j_reg[0]_i_2__0 ),
        .\a_j_reg[0]_i_2__0_1 (\a_j_reg[0]_i_2__0_0 ),
        .\a_j_reg[2]_0 (\a_j_reg[2] ),
        .\a_j_reg[2]_1 (\a_j_reg[2]_0 ),
        .\a_j_reg[2]_2 (\a_j_reg[2]_1 ),
        .\a_j_reg[3]_i_3__1 (\a_j_reg[3]_i_3__1 ),
        .\a_j_reg[4]_0 (\a_j_reg[4] ),
        .\a_j_reg[4]_i_1__1_0 (\a_j_reg[4]_i_1__1 ),
        .\a_j_reg[4]_i_1__1_1 (\a_j_reg[4]_i_1__1_0 ),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0] ({nexts_out,\asout_array[7]_2 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[3]_1 (\j_reg[3]_0 ),
        .\j_reg[4]_0 (\j_reg[4] ),
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
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(\asout_array[7]_2 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__1
       (.I0(\asout_array[7]_2 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(reset_control_reg_i_2__1_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2
   (AR,
    next_out_6,
    SR,
    D,
    \a_j_reg[4]_i_16__1 ,
    \a_j_reg[4]_i_12__1 ,
    \a_j_reg[4]_i_12__1_0 ,
    \a_j_reg[4]_i_12__1_1 ,
    \count_reg_reg[3] ,
    a_in_7,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \j_reg[1] ,
    \j_reg[3] ,
    \j_reg[4] ,
    nRst,
    Q,
    \a_j_reg[0] ,
    \a_j_reg[0]_i_1__1 ,
    \a_j_reg[0]_i_1__1_0 ,
    \a_j_reg[3]_i_2__1 ,
    \a_j_reg[0]_i_2__1 ,
    next_out_7,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1__2 ,
    \a_j_reg[0]_i_1__2_0 ,
    \a_j_reg[0]_i_1__2_1 ,
    \a_j_reg[0]_i_1__2_2 ,
    clk,
    \FSM_onehot_state[4]_i_7__2 ,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_6,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_6;
  output [0:0]SR;
  output [2:0]D;
  output \a_j_reg[4]_i_16__1 ;
  output \a_j_reg[4]_i_12__1 ;
  output \a_j_reg[4]_i_12__1_0 ;
  output \a_j_reg[4]_i_12__1_1 ;
  output \count_reg_reg[3] ;
  output [34:0]a_in_7;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output [2:0]\FSM_onehot_state_reg[3]_2 ;
  output \j_reg[1] ;
  output \j_reg[3] ;
  output \j_reg[4] ;
  input nRst;
  input [1:0]Q;
  input \a_j_reg[0] ;
  input \a_j_reg[0]_i_1__1 ;
  input \a_j_reg[0]_i_1__1_0 ;
  input \a_j_reg[3]_i_2__1 ;
  input \a_j_reg[0]_i_2__1 ;
  input next_out_7;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1__2 ;
  input \a_j_reg[0]_i_1__2_0 ;
  input \a_j_reg[0]_i_1__2_1 ;
  input \a_j_reg[0]_i_1__2_2 ;
  input clk;
  input [3:0]\FSM_onehot_state[4]_i_7__2 ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [29:0]a_in_6;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [2:0]D;
  wire [3:0]\FSM_onehot_state[4]_i_7__2 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire [2:0]\FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [29:0]a_in_6;
  wire [34:0]a_in_7;
  wire \a_j_reg[0] ;
  wire \a_j_reg[0]_0 ;
  wire \a_j_reg[0]_i_1__1 ;
  wire \a_j_reg[0]_i_1__1_0 ;
  wire \a_j_reg[0]_i_1__2 ;
  wire \a_j_reg[0]_i_1__2_0 ;
  wire \a_j_reg[0]_i_1__2_1 ;
  wire \a_j_reg[0]_i_1__2_2 ;
  wire \a_j_reg[0]_i_2__1 ;
  wire \a_j_reg[3]_i_2__1 ;
  wire \a_j_reg[4]_i_12__1 ;
  wire \a_j_reg[4]_i_12__1_0 ;
  wire \a_j_reg[4]_i_12__1_1 ;
  wire \a_j_reg[4]_i_16__1 ;
  wire acks_out;
  wire \asout_array[6]_3 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__2_n_0;
  wire clk;
  wire complete_tick;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_6;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[1] ;
  wire \j_reg[3] ;
  wire \j_reg[4] ;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire logic_n_19;
  wire logic_n_23;
  wire logic_n_24;
  wire nRst;
  wire next_out_6;
  wire next_out_7;
  wire [2:2]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__2_n_0;
  wire [4:0]u_i;

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
        .CE(logic_n_11),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_11),
        .D(logic_n_24),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_11),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_11),
        .D(logic_n_23),
        .Q(\asout_array[6]_3 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_11),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_10),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
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
        .G(ce_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__2
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 dut
       (.D({dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state[4]_i_3__5_0 ({logic_n_15,logic_n_16,logic_n_17,logic_n_18,logic_n_19}),
        .\FSM_onehot_state_reg[4] ({\asout_array[6]_3 ,ce__0}),
        .Q(u_i),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0]_0 (dut_n_0),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_8),
        .\count_reg_reg[2]_0 (dut_n_6),
        .next_state6(next_state6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2 logic
       (.D(D),
        .E(logic_n_11),
        .\FSM_onehot_state[4]_i_4__4_0 (dut_n_6),
        .\FSM_onehot_state[4]_i_5__2_0 (u_i),
        .\FSM_onehot_state[4]_i_7__2 (\FSM_onehot_state[4]_i_7__2 ),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_15,logic_n_16,logic_n_17,logic_n_18,logic_n_19}),
        .\FSM_onehot_state_reg[2]_0 ({logic_n_23,logic_n_24}),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_3 (dut_n_0),
        .\FSM_onehot_state_reg[4]_0 (logic_n_10),
        .\FSM_onehot_state_reg[4]_1 (next_state6),
        .\FSM_onehot_state_reg[4]_2 (dut_n_8),
        .Q(Q),
        .SR(reset_control),
        .a_in_7(a_in_7),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_1 (\a_j_reg[0]_0 ),
        .\a_j_reg[0]_i_1__1_0 (\a_j_reg[0]_i_1__1 ),
        .\a_j_reg[0]_i_1__1_1 (\a_j_reg[0]_i_1__1_0 ),
        .\a_j_reg[0]_i_1__2_0 (\a_j_reg[0]_i_1__2 ),
        .\a_j_reg[0]_i_1__2_1 (\a_j_reg[0]_i_1__2_0 ),
        .\a_j_reg[0]_i_1__2_2 (\a_j_reg[0]_i_1__2_1 ),
        .\a_j_reg[0]_i_1__2_3 (\a_j_reg[0]_i_1__2_2 ),
        .\a_j_reg[0]_i_2__1_0 (\a_j_reg[0]_i_2__1 ),
        .\a_j_reg[3]_i_2__1 (\a_j_reg[3]_i_2__1 ),
        .\a_j_reg[4]_i_12__1 (\a_j_reg[4]_i_12__1 ),
        .\a_j_reg[4]_i_12__1_0 (\a_j_reg[4]_i_12__1_0 ),
        .\a_j_reg[4]_i_12__1_1 (\a_j_reg[4]_i_12__1_1 ),
        .\a_j_reg[4]_i_16__1_0 (\a_j_reg[4]_i_16__1 ),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0] ({nexts_out,\asout_array[6]_3 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[4]_0 (\j_reg[4] ),
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
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(\asout_array[6]_3 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__2
       (.I0(\asout_array[6]_3 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(reset_control_reg_i_2__2_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3
   (AR,
    next_out_5,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \count_reg_reg[2] ,
    \a_j_reg[3]_i_3__2 ,
    SR,
    D,
    \count_reg_reg[0] ,
    a_in_6,
    \FSM_onehot_state_reg[3]_2 ,
    \j_reg[1] ,
    \j_reg[4] ,
    \j_reg[3] ,
    \j_reg[2] ,
    Q,
    \a_j_reg[3]_i_1__2 ,
    nRst,
    \a_j_reg[0]_i_2__2 ,
    \a_j_reg[0]_i_2__2_0 ,
    next_out_6,
    \a_j_reg[0] ,
    \a_j_reg[0]_i_1__3 ,
    \a_j_reg[0]_i_1__3_0 ,
    \a_j_reg[0]_i_1__3_1 ,
    \a_j_reg[0]_i_1__3_2 ,
    clk,
    \FSM_onehot_state[4]_i_7__3 ,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_5,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_5;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \count_reg_reg[2] ;
  output \a_j_reg[3]_i_3__2 ;
  output [0:0]SR;
  output [3:0]D;
  output \count_reg_reg[0] ;
  output [29:0]a_in_6;
  output [2:0]\FSM_onehot_state_reg[3]_2 ;
  output \j_reg[1] ;
  output \j_reg[4] ;
  output \j_reg[3] ;
  output \j_reg[2] ;
  input [2:0]Q;
  input \a_j_reg[3]_i_1__2 ;
  input nRst;
  input \a_j_reg[0]_i_2__2 ;
  input \a_j_reg[0]_i_2__2_0 ;
  input next_out_6;
  input \a_j_reg[0] ;
  input \a_j_reg[0]_i_1__3 ;
  input \a_j_reg[0]_i_1__3_0 ;
  input \a_j_reg[0]_i_1__3_1 ;
  input \a_j_reg[0]_i_1__3_2 ;
  input clk;
  input [3:0]\FSM_onehot_state[4]_i_7__3 ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [24:0]a_in_5;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [3:0]\FSM_onehot_state[4]_i_7__3 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire [2:0]\FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [24:0]a_in_5;
  wire [29:0]a_in_6;
  wire \a_j_reg[0] ;
  wire \a_j_reg[0]_i_1__3 ;
  wire \a_j_reg[0]_i_1__3_0 ;
  wire \a_j_reg[0]_i_1__3_1 ;
  wire \a_j_reg[0]_i_1__3_2 ;
  wire \a_j_reg[0]_i_2__2 ;
  wire \a_j_reg[0]_i_2__2_0 ;
  wire \a_j_reg[3]_i_1__2 ;
  wire \a_j_reg[3]_i_3__2 ;
  wire acks_out_reg_i_1__3_n_0;
  wire \asout_array[5]_4 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__3_n_0;
  wire clk;
  wire \count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2] ;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_6;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[1] ;
  wire \j_reg[2] ;
  wire \j_reg[3] ;
  wire \j_reg[4] ;
  wire logic_n_10;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire logic_n_23;
  wire logic_n_24;
  wire logic_n_9;
  wire nRst;
  wire next_out_5;
  wire next_out_6;
  wire [2:2]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__3_n_0;
  wire [4:0]u_i;

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
        .D(logic_n_24),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_10),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_10),
        .D(logic_n_23),
        .Q(\asout_array[5]_4 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_10),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__3_n_0),
        .G(logic_n_9),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
        .O(acks_out_reg_i_1__3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
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
        .G(ce_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__3
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__3_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 dut
       (.D({dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state[4]_i_3__7_0 ({logic_n_14,logic_n_15,logic_n_16,logic_n_17,logic_n_18}),
        .\FSM_onehot_state_reg[4] ({\asout_array[5]_4 ,ce__0}),
        .Q(u_i),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_0),
        .\count_reg_reg[0]_1 (dut_n_11),
        .\count_reg_reg[0]_2 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[1]_0 (dut_n_8),
        .\count_reg_reg[2]_0 (dut_n_6),
        .next_state6(next_state6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3 logic
       (.D(D),
        .E(logic_n_10),
        .\FSM_onehot_state[4]_i_5__3_0 (u_i),
        .\FSM_onehot_state[4]_i_7__3 (\FSM_onehot_state[4]_i_7__3 ),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_14,logic_n_15,logic_n_16,logic_n_17,logic_n_18}),
        .\FSM_onehot_state_reg[1]_1 (dut_n_11),
        .\FSM_onehot_state_reg[2]_0 ({logic_n_23,logic_n_24}),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_3 (dut_n_0),
        .\FSM_onehot_state_reg[3]_4 (dut_n_6),
        .\FSM_onehot_state_reg[4]_0 (logic_n_9),
        .\FSM_onehot_state_reg[4]_1 (next_state6),
        .\FSM_onehot_state_reg[4]_2 (dut_n_8),
        .Q(Q),
        .SR(reset_control),
        .a_in_6(a_in_6),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_i_1__3_0 (\a_j_reg[0]_i_1__3 ),
        .\a_j_reg[0]_i_1__3_1 (\a_j_reg[0]_i_1__3_0 ),
        .\a_j_reg[0]_i_1__3_2 (\a_j_reg[0]_i_1__3_1 ),
        .\a_j_reg[0]_i_1__3_3 (\a_j_reg[0]_i_1__3_2 ),
        .\a_j_reg[0]_i_2__2 (\a_j_reg[0]_i_2__2 ),
        .\a_j_reg[0]_i_2__2_0 (\a_j_reg[0]_i_2__2_0 ),
        .\a_j_reg[3]_i_1__2_0 (\a_j_reg[3]_i_1__2 ),
        .\a_j_reg[3]_i_3__2_0 (\a_j_reg[3]_i_3__2 ),
        .clk(clk),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[5]_4 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .next_out_6(next_out_6));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__3_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(\asout_array[5]_4 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__3
       (.I0(\asout_array[5]_4 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(reset_control_reg_i_2__3_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4
   (AR,
    next_out_4,
    Q,
    \j_reg[1] ,
    SR,
    D,
    \a_j_reg[4]_i_3__3 ,
    \count_reg_reg[4] ,
    \count_reg_reg[2] ,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_5,
    \count_reg_reg[0] ,
    \j_reg[2] ,
    nRst,
    \a_j_reg[4] ,
    \a_j_reg[0]_i_1__3 ,
    \a_j_reg[0]_i_1__3_0 ,
    \a_j_reg[4]_i_2__2 ,
    \a_j_reg[4]_i_2__2_0 ,
    next_out_5,
    \a_j_reg[4]_0 ,
    \a_j_reg[4]_1 ,
    \a_j_reg[3]_i_1__4 ,
    \a_j_reg[3]_i_1__4_0 ,
    \a_j_reg[4]_i_1__4 ,
    \a_j_reg[4]_i_1__4_0 ,
    \a_j_reg[2]_i_1__4 ,
    \a_j_reg[0] ,
    \a_j_reg[0]_0 ,
    \a_j_reg[1]_i_1__4 ,
    a_in_4,
    clk,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_4;
  output [1:0]Q;
  output \j_reg[1] ;
  output [0:0]SR;
  output [3:0]D;
  output \a_j_reg[4]_i_3__3 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[2] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output [24:0]a_in_5;
  output \count_reg_reg[0] ;
  output \j_reg[2] ;
  input nRst;
  input [2:0]\a_j_reg[4] ;
  input \a_j_reg[0]_i_1__3 ;
  input \a_j_reg[0]_i_1__3_0 ;
  input \a_j_reg[4]_i_2__2 ;
  input \a_j_reg[4]_i_2__2_0 ;
  input next_out_5;
  input \a_j_reg[4]_0 ;
  input \a_j_reg[4]_1 ;
  input \a_j_reg[3]_i_1__4 ;
  input \a_j_reg[3]_i_1__4_0 ;
  input \a_j_reg[4]_i_1__4 ;
  input \a_j_reg[4]_i_1__4_0 ;
  input \a_j_reg[2]_i_1__4 ;
  input \a_j_reg[0] ;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[1]_i_1__4 ;
  input [19:0]a_in_4;
  input clk;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [19:0]a_in_4;
  wire [24:0]a_in_5;
  wire \a_j_reg[0] ;
  wire \a_j_reg[0]_0 ;
  wire \a_j_reg[0]_i_1__3 ;
  wire \a_j_reg[0]_i_1__3_0 ;
  wire \a_j_reg[1]_i_1__4 ;
  wire \a_j_reg[2]_i_1__4 ;
  wire \a_j_reg[3]_i_1__4 ;
  wire \a_j_reg[3]_i_1__4_0 ;
  wire [2:0]\a_j_reg[4] ;
  wire \a_j_reg[4]_0 ;
  wire \a_j_reg[4]_1 ;
  wire \a_j_reg[4]_i_1__4 ;
  wire \a_j_reg[4]_i_1__4_0 ;
  wire \a_j_reg[4]_i_2__2 ;
  wire \a_j_reg[4]_i_2__2_0 ;
  wire \a_j_reg[4]_i_3__3 ;
  wire acks_out_reg_i_1__4_n_0;
  wire \asout_array[4]_5 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__4_n_0;
  wire clk;
  wire \count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[4] ;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[1] ;
  wire \j_reg[2] ;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire logic_n_19;
  wire logic_n_21;
  wire nRst;
  wire next_out_4;
  wire next_out_5;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__4_n_0;
  wire [4:0]u_i;
  wire valid;

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
        .D(dut_n_11),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_13),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_13),
        .D(logic_n_21),
        .Q(\asout_array[4]_5 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_13),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__4_n_0),
        .G(logic_n_14),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__4
       (.I0(nexts_out),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(acks_out_reg_i_1__4_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
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
        .G(ce_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(nexts_out),
        .O(ce_reg_i_1__4_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 dut
       (.D({dut_n_9,dut_n_10,dut_n_11}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[4]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q({logic_n_15,logic_n_16,logic_n_17,logic_n_18,logic_n_19}),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_8),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[1]_0 (dut_n_7),
        .\count_reg_reg[2]_0 (dut_n_6),
        .\count_reg_reg[3]_0 (dut_n_0),
        .\count_reg_reg[4]_0 (u_i),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4 logic
       (.D(D),
        .E(logic_n_13),
        .\FSM_onehot_state[4]_i_5__4_0 (u_i),
        .\FSM_onehot_state_reg[0]_0 (logic_n_14),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_15,logic_n_16,logic_n_17,logic_n_18,logic_n_19}),
        .\FSM_onehot_state_reg[2]_0 (logic_n_21),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_1 (dut_n_8),
        .\FSM_onehot_state_reg[3]_2 (dut_n_7),
        .\FSM_onehot_state_reg[3]_3 (dut_n_6),
        .\FSM_onehot_state_reg[4]_0 (dut_n_0),
        .Q(Q),
        .SR(reset_control),
        .a_in_4({a_in_4[15:12],a_in_4[7:4]}),
        .a_in_5(a_in_5),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_1 (\a_j_reg[0]_0 ),
        .\a_j_reg[0]_i_1__3 (\a_j_reg[0]_i_1__3 ),
        .\a_j_reg[0]_i_1__3_0 (\a_j_reg[0]_i_1__3_0 ),
        .\a_j_reg[1]_i_1__4_0 (\a_j_reg[1]_i_1__4 ),
        .\a_j_reg[2]_i_1__4_0 (\a_j_reg[2]_i_1__4 ),
        .\a_j_reg[3]_i_1__4_0 (\a_j_reg[3]_i_1__4 ),
        .\a_j_reg[3]_i_1__4_1 (\a_j_reg[3]_i_1__4_0 ),
        .\a_j_reg[4]_0 (\a_j_reg[4] ),
        .\a_j_reg[4]_1 (\a_j_reg[4]_0 ),
        .\a_j_reg[4]_2 (\a_j_reg[4]_1 ),
        .\a_j_reg[4]_i_1__4_0 (\a_j_reg[4]_i_1__4 ),
        .\a_j_reg[4]_i_1__4_1 (\a_j_reg[4]_i_1__4_0 ),
        .\a_j_reg[4]_i_2__2_0 (\a_j_reg[4]_i_2__2 ),
        .\a_j_reg[4]_i_2__2_1 (\a_j_reg[4]_i_2__2_0 ),
        .\a_j_reg[4]_i_3__3_0 (\a_j_reg[4]_i_3__3 ),
        .clk(clk),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[4]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .next_out_5(next_out_5),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__4_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[4]_5 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\asout_array[4]_5 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(reset_control_reg_i_2__4_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5
   (AR,
    next_out_3,
    SR,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_4,
    \FSM_onehot_state_reg[3]_1 ,
    \count_reg_reg[1] ,
    \count_reg_reg[2] ,
    \count_reg_reg[0] ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \FSM_onehot_state_reg[3]_6 ,
    \FSM_onehot_state_reg[3]_7 ,
    \j_reg[1] ,
    \j_reg[3] ,
    nRst,
    \a_j_reg[4]_i_1__4 ,
    Q,
    \a_j_reg[4]_i_4__4 ,
    next_out_4,
    clk,
    D,
    \FSM_onehot_state_reg[0]_0 ,
    a_in_3,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_3;
  output [0:0]SR;
  output \FSM_onehot_state_reg[3]_0 ;
  output [19:0]a_in_4;
  output \FSM_onehot_state_reg[3]_1 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[0] ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \FSM_onehot_state_reg[3]_6 ;
  output [1:0]\FSM_onehot_state_reg[3]_7 ;
  output \j_reg[1] ;
  output \j_reg[3] ;
  input nRst;
  input \a_j_reg[4]_i_1__4 ;
  input [1:0]Q;
  input \a_j_reg[4]_i_4__4 ;
  input next_out_4;
  input clk;
  input [4:0]D;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [14:0]a_in_3;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire \FSM_onehot_state_reg[3]_6 ;
  wire [1:0]\FSM_onehot_state_reg[3]_7 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [14:0]a_in_3;
  wire [19:0]a_in_4;
  wire \a_j_reg[4]_i_1__4 ;
  wire \a_j_reg[4]_i_4__4 ;
  wire acks_out_reg_i_1__5_n_0;
  wire \asout_array[3]_6 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__5_n_0;
  wire clk;
  wire complete_tick;
  wire \count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_6;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[1] ;
  wire \j_reg[3] ;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_21;
  wire logic_n_22;
  wire nRst;
  wire next_out_3;
  wire next_out_4;
  wire [2:2]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__5_n_0;
  wire [4:0]u_i;

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
        .CE(logic_n_11),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_11),
        .D(logic_n_22),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_11),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_11),
        .D(logic_n_21),
        .Q(\asout_array[3]_6 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_11),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__5_n_0),
        .G(logic_n_10),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__5
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
        .O(acks_out_reg_i_1__5_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
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
        .G(ce_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__5
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__5_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 dut
       (.D({dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state[4]_i_3__11_0 ({logic_n_12,logic_n_13,logic_n_14,logic_n_15,logic_n_16}),
        .\FSM_onehot_state_reg[4] ({\asout_array[3]_6 ,ce__0}),
        .Q(u_i),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0]_0 (dut_n_0),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[1]_0 (dut_n_8),
        .\count_reg_reg[2]_0 (dut_n_6),
        .next_state6(next_state6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5 logic
       (.D({logic_n_21,logic_n_22}),
        .E(logic_n_11),
        .\FSM_onehot_state[4]_i_4__10_0 (dut_n_6),
        .\FSM_onehot_state[4]_i_5__5_0 (u_i),
        .\FSM_onehot_state[4]_i_7__5 (D),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_12,logic_n_13,logic_n_14,logic_n_15,logic_n_16}),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_3 (\FSM_onehot_state_reg[3]_3 ),
        .\FSM_onehot_state_reg[3]_4 (\FSM_onehot_state_reg[3]_4 ),
        .\FSM_onehot_state_reg[3]_5 (\FSM_onehot_state_reg[3]_5 ),
        .\FSM_onehot_state_reg[3]_6 (\FSM_onehot_state_reg[3]_6 ),
        .\FSM_onehot_state_reg[3]_7 (\FSM_onehot_state_reg[3]_7 ),
        .\FSM_onehot_state_reg[3]_8 (dut_n_0),
        .\FSM_onehot_state_reg[4]_0 (logic_n_10),
        .\FSM_onehot_state_reg[4]_1 (next_state6),
        .\FSM_onehot_state_reg[4]_2 (dut_n_8),
        .Q(Q),
        .SR(reset_control),
        .a_in_4(a_in_4),
        .\a_j_reg[4]_i_1__4 (\a_j_reg[4]_i_1__4 ),
        .\a_j_reg[4]_i_4__4_0 (\a_j_reg[4]_i_4__4 ),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[3]_6 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .next_out_4(next_out_4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__5_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__5
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(\asout_array[3]_6 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__5
       (.I0(\asout_array[3]_6 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(reset_control_reg_i_2__5_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6
   (AR,
    next_out_2,
    Q,
    D,
    SR,
    a_in_3,
    \FSM_onehot_state_reg[3]_0 ,
    \j_reg[2] ,
    \j_reg[0] ,
    \a_j_reg[0] ,
    nRst,
    \a_j_reg[0]_i_1__7 ,
    \a_j_reg[0]_i_1__7_0 ,
    next_out_3,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_1 ,
    a_in_2,
    clk,
    \FSM_onehot_state[4]_i_2__14 ,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_2;
  output [2:0]Q;
  output [4:0]D;
  output [0:0]SR;
  output [14:0]a_in_3;
  output \FSM_onehot_state_reg[3]_0 ;
  output \j_reg[2] ;
  output \j_reg[0] ;
  input [1:0]\a_j_reg[0] ;
  input nRst;
  input \a_j_reg[0]_i_1__7 ;
  input \a_j_reg[0]_i_1__7_0 ;
  input next_out_3;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_1 ;
  input [9:0]a_in_2;
  input clk;
  input [3:0]\FSM_onehot_state[4]_i_2__14 ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [4:0]D;
  wire [3:0]\FSM_onehot_state[4]_i_2__14 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [9:0]a_in_2;
  wire [14:0]a_in_3;
  wire [1:0]\a_j_reg[0] ;
  wire \a_j_reg[0]_0 ;
  wire \a_j_reg[0]_1 ;
  wire \a_j_reg[0]_i_1__7 ;
  wire \a_j_reg[0]_i_1__7_0 ;
  wire acks_out_reg_i_1__6_n_0;
  wire \asout_array[2]_7 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__6_n_0;
  wire clk;
  wire [0:0]\count_reg_reg[0] ;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[2] ;
  wire logic_n_1;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire logic_n_19;
  wire logic_n_2;
  wire logic_n_20;
  wire logic_n_22;
  wire logic_n_3;
  wire nRst;
  wire next_out_2;
  wire next_out_3;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__6_n_0;
  wire [4:0]u_i;
  wire valid;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__6 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_12),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_12),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_11),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_12),
        .D(logic_n_22),
        .Q(\asout_array[2]_7 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_10),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__6_n_0),
        .G(logic_n_13),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__6
       (.I0(nexts_out),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(acks_out_reg_i_1__6_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
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
        .G(ce_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(nexts_out),
        .O(ce_reg_i_1__6_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 dut
       (.D({dut_n_10,dut_n_11,dut_n_12}),
        .E(ce),
        .\FSM_onehot_state_reg[4] (logic_n_1),
        .\FSM_onehot_state_reg[4]_0 ({logic_n_2,logic_n_3}),
        .\FSM_onehot_state_reg[4]_1 ({\asout_array[2]_7 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q({logic_n_16,logic_n_17,logic_n_18,logic_n_19,logic_n_20}),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_9),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_5),
        .\count_reg_reg[1]_1 (dut_n_8),
        .\count_reg_reg[3]_0 (dut_n_7),
        .\count_reg_reg[4]_0 (u_i),
        .\count_reg_reg[4]_1 (dut_n_6),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6 logic
       (.D(D),
        .E(logic_n_12),
        .\FSM_onehot_state[4]_i_2__14 (\FSM_onehot_state[4]_i_2__14 ),
        .\FSM_onehot_state[4]_i_9__6_0 (u_i[2:0]),
        .\FSM_onehot_state_reg[0]_0 (logic_n_13),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_16,logic_n_17,logic_n_18,logic_n_19,logic_n_20}),
        .\FSM_onehot_state_reg[2]_0 (logic_n_22),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_1 (dut_n_9),
        .\FSM_onehot_state_reg[3]_2 (dut_n_8),
        .\FSM_onehot_state_reg[3]_3 (dut_n_6),
        .\FSM_onehot_state_reg[4]_0 (dut_n_7),
        .\FSM_onehot_state_reg[4]_1 (dut_n_5),
        .Q({logic_n_2,logic_n_3,Q}),
        .SR(reset_control),
        .a_in_2({a_in_2[9],a_in_2[6],a_in_2[2:1]}),
        .a_in_3(a_in_3),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_1 (\a_j_reg[0]_0 ),
        .\a_j_reg[0]_2 (\a_j_reg[0]_1 ),
        .\a_j_reg[0]_i_1__7_0 (\a_j_reg[0]_i_1__7 ),
        .\a_j_reg[0]_i_1__7_1 (\a_j_reg[0]_i_1__7_0 ),
        .clk(clk),
        .\count_reg_reg[0] ({nexts_out,\asout_array[2]_7 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\j_reg[0]_0 (logic_n_1),
        .\j_reg[0]_1 (\j_reg[0] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .next_out_3(next_out_3),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__6_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[2]_7 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__6
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\asout_array[2]_7 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(reset_control_reg_i_2__6_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7
   (AR,
    a_in_2,
    SR,
    done_s7_out,
    ack_in_1__0,
    nRst_0,
    ack_in_14_out,
    \count_reg_reg[4] ,
    D,
    \count_reg_reg[3] ,
    \a_j_reg[0]_i_1__5 ,
    \a_j_reg[0]_i_1__5_0 ,
    nRst,
    ack_in_1,
    \count_reg_reg[0] ,
    \count_reg_reg[0]_0 ,
    Q,
    \a_j_reg[0]_i_1__5_1 ,
    next_out_2,
    \asout_array_reg[2][4] ,
    clk);
  output [0:0]AR;
  output [9:0]a_in_2;
  output [0:0]SR;
  output done_s7_out;
  output ack_in_1__0;
  output nRst_0;
  output ack_in_14_out;
  output \count_reg_reg[4] ;
  output [3:0]D;
  output \count_reg_reg[3] ;
  input \a_j_reg[0]_i_1__5 ;
  input \a_j_reg[0]_i_1__5_0 ;
  input nRst;
  input ack_in_1;
  input \count_reg_reg[0] ;
  input \count_reg_reg[0]_0 ;
  input [2:0]Q;
  input \a_j_reg[0]_i_1__5_1 ;
  input next_out_2;
  input [4:0]\asout_array_reg[2][4] ;
  input clk;

  wire [0:0]AR;
  wire [3:0]D;
  wire \FSM_onehot_state[4]_i_1__8_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [9:0]a_in_2;
  wire \a_j_reg[0]_i_1__5 ;
  wire \a_j_reg[0]_i_1__5_0 ;
  wire \a_j_reg[0]_i_1__5_1 ;
  wire ack_in_1;
  wire ack_in_14_out;
  wire ack_in_1__0;
  wire acks_out_reg_i_1__7_n_0;
  wire \asout_array[1]_8 ;
  wire [4:0]\asout_array_reg[2][4] ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__7_n_0;
  wire clk;
  wire complete_tick;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[4] ;
  wire done_s7_out;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_6;
  wire dut_n_8;
  wire dut_n_9;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire nRst_0;
  wire next_out_1;
  wire next_out_2;
  wire [2:2]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__7_n_0;
  wire [4:0]u_i;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__7 
       (.I0(AR),
        .I1(nRst),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1__8 
       (.I0(ack_in_1),
        .I1(nRst),
        .O(\FSM_onehot_state[4]_i_1__8_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_7),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[4]_i_1__8_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_7),
        .D(logic_n_14),
        .Q(ce__0),
        .R(\FSM_onehot_state[4]_i_1__8_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_7),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state[4]_i_1__8_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_7),
        .D(logic_n_13),
        .Q(\asout_array[1]_8 ),
        .R(\FSM_onehot_state[4]_i_1__8_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_7),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state[4]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ack_in_1_reg_i_1
       (.I0(next_out_1),
        .I1(ack_in_1),
        .O(ack_in_1__0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    ack_in_1_reg_i_2
       (.I0(\count_reg_reg[0] ),
        .I1(\count_reg_reg[0]_0 ),
        .I2(ack_in_1),
        .I3(next_out_1),
        .O(ack_in_14_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__7_n_0),
        .G(logic_n_6),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
        .O(acks_out_reg_i_1__7_n_0));
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
        .D(\asout_array_reg[2][4] [0]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [1]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [2]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [3]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [4]),
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
        .G(ce_reg_i_1__7_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__7
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h32)) 
    done_s_reg_i_1
       (.I0(\count_reg_reg[0] ),
        .I1(nRst),
        .I2(next_out_1),
        .O(done_s7_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    done_s_reg_i_2
       (.I0(nRst),
        .I1(\count_reg_reg[0] ),
        .I2(next_out_1),
        .I3(\count_reg_reg[0]_0 ),
        .O(nRst_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 dut
       (.D({dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state[4]_i_3__15_0 ({logic_n_8,logic_n_9,logic_n_10,logic_n_11,logic_n_12}),
        .\FSM_onehot_state_reg[4] ({\asout_array[1]_8 ,ce__0}),
        .Q(u_i),
        .ack_in_1(ack_in_1),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0]_0 (dut_n_0),
        .\count_reg_reg[1]_0 (dut_n_8),
        .\count_reg_reg[2]_0 (dut_n_6),
        .next_state6(next_state6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7 logic
       (.D(D),
        .E(logic_n_7),
        .\FSM_onehot_state[4]_i_5__7_0 (u_i),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_8,logic_n_9,logic_n_10,logic_n_11,logic_n_12}),
        .\FSM_onehot_state_reg[2]_0 ({logic_n_13,logic_n_14}),
        .\FSM_onehot_state_reg[3]_0 (dut_n_0),
        .\FSM_onehot_state_reg[3]_1 (dut_n_6),
        .\FSM_onehot_state_reg[4]_0 (logic_n_6),
        .\FSM_onehot_state_reg[4]_1 (next_state6),
        .\FSM_onehot_state_reg[4]_2 (dut_n_8),
        .Q(Q),
        .SR(reset_control),
        .a_in_2(a_in_2),
        .\a_j_reg[0]_i_1__5 (\a_j_reg[0]_i_1__5 ),
        .\a_j_reg[0]_i_1__5_0 (\a_j_reg[0]_i_1__5_0 ),
        .\a_j_reg[0]_i_1__5_1 (\a_j_reg[0]_i_1__5_1 ),
        .\a_j_reg[3]_i_1__6_0 (\asout_array_reg[2][4] ),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0] ({nexts_out,\asout_array[1]_8 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .next_out_2(next_out_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__7_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(\asout_array[1]_8 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__7
       (.I0(\asout_array[1]_8 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(reset_control_reg_i_2__7_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens
   (a,
    flag,
    done,
    counter,
    clk,
    nRst);
  output [4:0]a;
  output flag;
  output done;
  output [31:0]counter;
  input clk;
  input nRst;

  wire [4:0]a;
  wire a_in_1;
  wire \a_in_1_reg[0]_i_1_n_0 ;
  wire \a_in_1_reg[1]_i_1_n_0 ;
  wire \a_in_1_reg[2]_i_1_n_0 ;
  wire \a_in_1_reg[3]_i_1_n_0 ;
  wire \a_in_1_reg[4]_i_1_n_0 ;
  wire [9:0]a_in_2;
  wire [14:0]a_in_3;
  wire [19:0]a_in_4;
  wire [24:0]a_in_5;
  wire [29:0]a_in_6;
  wire [34:0]a_in_7;
  wire [39:0]a_in_8;
  wire ack_in_1;
  wire ack_in_14_out;
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
  wire [31:0]counter;
  wire counter_s;
  wire \counter_s_reg[31]_i_3_n_0 ;
  wire \counter_s_reg[31]_i_4_n_0 ;
  wire \counter_s_reg[31]_i_5_n_0 ;
  wire \counter_s_reg[31]_i_6_n_0 ;
  wire \counter_s_reg[31]_i_7_n_0 ;
  wire \counter_s_reg[31]_i_8_n_0 ;
  wire done;
  wire done_s7_out;
  wire flag;
  wire flag_s_reg_i_1_n_0;
  wire fsm_1_n_11;
  wire fsm_1_n_14;
  wire fsm_1_n_16;
  wire fsm_1_n_17;
  wire fsm_1_n_18;
  wire fsm_1_n_19;
  wire fsm_1_n_20;
  wire fsm_1_n_21;
  wire fsm_2_n_10;
  wire fsm_2_n_2;
  wire fsm_2_n_26;
  wire fsm_2_n_27;
  wire fsm_2_n_28;
  wire fsm_2_n_3;
  wire fsm_2_n_4;
  wire fsm_2_n_5;
  wire fsm_2_n_6;
  wire fsm_2_n_7;
  wire fsm_2_n_8;
  wire fsm_2_n_9;
  wire fsm_3_n_2;
  wire fsm_3_n_24;
  wire fsm_3_n_25;
  wire fsm_3_n_26;
  wire fsm_3_n_27;
  wire fsm_3_n_28;
  wire fsm_3_n_29;
  wire fsm_3_n_3;
  wire fsm_3_n_30;
  wire fsm_3_n_31;
  wire fsm_3_n_32;
  wire fsm_3_n_33;
  wire fsm_3_n_34;
  wire fsm_3_n_35;
  wire fsm_3_n_36;
  wire fsm_4_n_10;
  wire fsm_4_n_11;
  wire fsm_4_n_12;
  wire fsm_4_n_13;
  wire fsm_4_n_2;
  wire fsm_4_n_3;
  wire fsm_4_n_39;
  wire fsm_4_n_4;
  wire fsm_4_n_40;
  wire fsm_4_n_5;
  wire fsm_4_n_6;
  wire fsm_4_n_7;
  wire fsm_4_n_8;
  wire fsm_4_n_9;
  wire fsm_5_n_10;
  wire fsm_5_n_11;
  wire fsm_5_n_2;
  wire fsm_5_n_3;
  wire fsm_5_n_4;
  wire fsm_5_n_42;
  wire fsm_5_n_43;
  wire fsm_5_n_44;
  wire fsm_5_n_45;
  wire fsm_5_n_46;
  wire fsm_5_n_47;
  wire fsm_5_n_48;
  wire fsm_5_n_5;
  wire fsm_5_n_6;
  wire fsm_5_n_7;
  wire fsm_5_n_8;
  wire fsm_5_n_9;
  wire fsm_6_n_10;
  wire fsm_6_n_2;
  wire fsm_6_n_3;
  wire fsm_6_n_4;
  wire fsm_6_n_46;
  wire fsm_6_n_47;
  wire fsm_6_n_48;
  wire fsm_6_n_49;
  wire fsm_6_n_5;
  wire fsm_6_n_50;
  wire fsm_6_n_51;
  wire fsm_6_n_52;
  wire fsm_6_n_53;
  wire fsm_6_n_6;
  wire fsm_6_n_7;
  wire fsm_6_n_8;
  wire fsm_6_n_9;
  wire fsm_7_n_2;
  wire fsm_7_n_3;
  wire fsm_7_n_4;
  wire fsm_7_n_5;
  wire fsm_7_n_50;
  wire fsm_7_n_51;
  wire fsm_7_n_52;
  wire fsm_7_n_53;
  wire fsm_7_n_54;
  wire fsm_7_n_6;
  wire fsm_7_n_7;
  wire fsm_8_n_10;
  wire fsm_8_n_11;
  wire fsm_8_n_12;
  wire fsm_8_n_13;
  wire fsm_8_n_4;
  wire fsm_8_n_5;
  wire fsm_8_n_6;
  wire fsm_8_n_7;
  wire fsm_8_n_8;
  wire fsm_8_n_9;
  wire fsm_9_n_1;
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
  wire fsm_9_n_28;
  wire fsm_9_n_29;
  wire fsm_9_n_30;
  wire fsm_9_n_31;
  wire fsm_9_n_32;
  wire fsm_9_n_33;
  wire fsm_9_n_34;
  wire fsm_9_n_35;
  wire fsm_9_n_36;
  wire fsm_9_n_37;
  wire fsm_9_n_38;
  wire fsm_9_n_39;
  wire fsm_9_n_4;
  wire fsm_9_n_5;
  wire fsm_9_n_6;
  wire fsm_9_n_8;
  wire fsm_9_n_9;
  wire [1:0]\logic/j ;
  wire [1:0]\logic/j_0 ;
  wire [1:0]\logic/j_1 ;
  wire nRst;
  wire next_out_2;
  wire next_out_3;
  wire next_out_4;
  wire next_out_5;
  wire next_out_6;
  wire next_out_7;
  wire next_out_8;
  wire next_out_9;
  wire [31:0]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_1;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [3:3]NLW_plusOp_carry__6_CO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[0] 
       (.CLR(nRst),
        .D(\a_in_1_reg[0]_i_1_n_0 ),
        .G(a_in_1),
        .GE(1'b1),
        .Q(a[0]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
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
        .G(a_in_1),
        .GE(1'b1),
        .Q(a[1]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_in_1_reg[1]_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .O(\a_in_1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[2] 
       (.CLR(nRst),
        .D(\a_in_1_reg[2]_i_1_n_0 ),
        .G(a_in_1),
        .GE(1'b1),
        .Q(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \a_in_1_reg[2]_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\a_in_1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[3] 
       (.CLR(nRst),
        .D(\a_in_1_reg[3]_i_1_n_0 ),
        .G(a_in_1),
        .GE(1'b1),
        .Q(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \a_in_1_reg[3]_i_1 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\a_in_1_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[4] 
       (.CLR(nRst),
        .D(\a_in_1_reg[4]_i_1_n_0 ),
        .G(a_in_1),
        .GE(1'b1),
        .Q(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \a_in_1_reg[4]_i_1 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\a_in_1_reg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \a_in_1_reg[4]_i_2 
       (.I0(done),
        .I1(ack_in_1),
        .I2(flag),
        .O(a_in_1));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    ack_in_1_reg
       (.D(ack_in_1__0),
        .G(ack_in_14_out),
        .GE(1'b1),
        .PRE(nRst),
        .Q(ack_in_1));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[0] 
       (.CLR(nRst),
        .D(fsm_9_n_39),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[10] 
       (.CLR(nRst),
        .D(fsm_9_n_29),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[11] 
       (.CLR(nRst),
        .D(fsm_9_n_28),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[12] 
       (.CLR(nRst),
        .D(fsm_9_n_27),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[13] 
       (.CLR(nRst),
        .D(fsm_9_n_26),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[14] 
       (.CLR(nRst),
        .D(fsm_9_n_25),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[15] 
       (.CLR(nRst),
        .D(fsm_9_n_24),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[16] 
       (.CLR(nRst),
        .D(fsm_9_n_23),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[17] 
       (.CLR(nRst),
        .D(fsm_9_n_22),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[18] 
       (.CLR(nRst),
        .D(fsm_9_n_21),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[19] 
       (.CLR(nRst),
        .D(fsm_9_n_20),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[1] 
       (.CLR(nRst),
        .D(fsm_9_n_38),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[20] 
       (.CLR(nRst),
        .D(fsm_9_n_19),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[21] 
       (.CLR(nRst),
        .D(fsm_9_n_18),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[22] 
       (.CLR(nRst),
        .D(fsm_9_n_17),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[23] 
       (.CLR(nRst),
        .D(fsm_9_n_16),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[24] 
       (.CLR(nRst),
        .D(fsm_9_n_15),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[25] 
       (.CLR(nRst),
        .D(fsm_9_n_14),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[26] 
       (.CLR(nRst),
        .D(fsm_9_n_13),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[27] 
       (.CLR(nRst),
        .D(fsm_9_n_12),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[28] 
       (.CLR(nRst),
        .D(fsm_9_n_11),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[29] 
       (.CLR(nRst),
        .D(fsm_9_n_10),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[2] 
       (.CLR(nRst),
        .D(fsm_9_n_37),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[30] 
       (.CLR(nRst),
        .D(fsm_9_n_9),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[31] 
       (.CLR(nRst),
        .D(fsm_9_n_8),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[31]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \counter_s_reg[31]_i_3 
       (.I0(\counter_s_reg[31]_i_6_n_0 ),
        .I1(\counter_s_reg[31]_i_7_n_0 ),
        .I2(\counter_s_reg[31]_i_8_n_0 ),
        .I3(done),
        .I4(counter[1]),
        .I5(counter[0]),
        .O(\counter_s_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_s_reg[31]_i_4 
       (.I0(counter[28]),
        .I1(counter[29]),
        .I2(counter[26]),
        .I3(counter[27]),
        .I4(counter[31]),
        .I5(counter[30]),
        .O(\counter_s_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_s_reg[31]_i_5 
       (.I0(counter[22]),
        .I1(counter[23]),
        .I2(counter[20]),
        .I3(counter[21]),
        .I4(counter[25]),
        .I5(counter[24]),
        .O(\counter_s_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_s_reg[31]_i_6 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .I4(counter[13]),
        .I5(counter[12]),
        .O(\counter_s_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_s_reg[31]_i_7 
       (.I0(counter[16]),
        .I1(counter[17]),
        .I2(counter[14]),
        .I3(counter[15]),
        .I4(counter[19]),
        .I5(counter[18]),
        .O(\counter_s_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_s_reg[31]_i_8 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[7]),
        .I5(counter[6]),
        .O(\counter_s_reg[31]_i_8_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[3] 
       (.CLR(nRst),
        .D(fsm_9_n_36),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[4] 
       (.CLR(nRst),
        .D(fsm_9_n_35),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[5] 
       (.CLR(nRst),
        .D(fsm_9_n_34),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[6] 
       (.CLR(nRst),
        .D(fsm_9_n_33),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[7] 
       (.CLR(nRst),
        .D(fsm_9_n_32),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[8] 
       (.CLR(nRst),
        .D(fsm_9_n_31),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[9] 
       (.CLR(nRst),
        .D(fsm_9_n_30),
        .G(counter_s),
        .GE(1'b1),
        .Q(counter[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_s_reg
       (.CLR(1'b0),
        .D(done_s7_out),
        .G(fsm_1_n_14),
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
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    flag_s_reg_i_1
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .O(flag_s_reg_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7 fsm_1
       (.AR(ack_in_2),
        .D({fsm_1_n_17,fsm_1_n_18,fsm_1_n_19,fsm_1_n_20}),
        .Q({fsm_2_n_2,fsm_2_n_3,fsm_2_n_4}),
        .SR(fsm_1_n_11),
        .a_in_2(a_in_2),
        .\a_j_reg[0]_i_1__5 (fsm_2_n_27),
        .\a_j_reg[0]_i_1__5_0 (fsm_2_n_28),
        .\a_j_reg[0]_i_1__5_1 (fsm_2_n_26),
        .ack_in_1(ack_in_1),
        .ack_in_14_out(ack_in_14_out),
        .ack_in_1__0(ack_in_1__0),
        .\asout_array_reg[2][4] (a),
        .clk(clk),
        .\count_reg_reg[0] (done),
        .\count_reg_reg[0]_0 (flag),
        .\count_reg_reg[3] (fsm_1_n_21),
        .\count_reg_reg[4] (fsm_1_n_16),
        .done_s7_out(done_s7_out),
        .nRst(nRst),
        .nRst_0(fsm_1_n_14),
        .next_out_2(next_out_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6 fsm_2
       (.AR(ack_in_3),
        .D({fsm_2_n_5,fsm_2_n_6,fsm_2_n_7,fsm_2_n_8,fsm_2_n_9}),
        .\FSM_onehot_state[4]_i_2__14 ({fsm_1_n_17,fsm_1_n_18,fsm_1_n_19,fsm_1_n_20}),
        .\FSM_onehot_state_reg[0]_0 (fsm_1_n_11),
        .\FSM_onehot_state_reg[3]_0 (fsm_2_n_26),
        .Q({fsm_2_n_2,fsm_2_n_3,fsm_2_n_4}),
        .SR(fsm_2_n_10),
        .a_in_2(a_in_2),
        .a_in_3(a_in_3),
        .\a_j_reg[0] ({fsm_3_n_33,fsm_3_n_34}),
        .\a_j_reg[0]_0 (fsm_1_n_16),
        .\a_j_reg[0]_1 (fsm_1_n_21),
        .\a_j_reg[0]_i_1__7 (fsm_3_n_35),
        .\a_j_reg[0]_i_1__7_0 (fsm_3_n_36),
        .clk(clk),
        .\count_reg_reg[0] (ack_in_2),
        .\j_reg[0] (fsm_2_n_28),
        .\j_reg[2] (fsm_2_n_27),
        .nRst(nRst),
        .next_out_2(next_out_2),
        .next_out_3(next_out_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5 fsm_3
       (.AR(ack_in_4),
        .D({fsm_2_n_5,fsm_2_n_6,fsm_2_n_7,fsm_2_n_8,fsm_2_n_9}),
        .\FSM_onehot_state_reg[0]_0 (fsm_2_n_10),
        .\FSM_onehot_state_reg[3]_0 (fsm_3_n_3),
        .\FSM_onehot_state_reg[3]_1 (fsm_3_n_24),
        .\FSM_onehot_state_reg[3]_2 (fsm_3_n_28),
        .\FSM_onehot_state_reg[3]_3 (fsm_3_n_29),
        .\FSM_onehot_state_reg[3]_4 (fsm_3_n_30),
        .\FSM_onehot_state_reg[3]_5 (fsm_3_n_31),
        .\FSM_onehot_state_reg[3]_6 (fsm_3_n_32),
        .\FSM_onehot_state_reg[3]_7 ({fsm_3_n_33,fsm_3_n_34}),
        .Q({fsm_4_n_2,fsm_4_n_3}),
        .SR(fsm_3_n_2),
        .a_in_3(a_in_3),
        .a_in_4(a_in_4),
        .\a_j_reg[4]_i_1__4 (fsm_4_n_4),
        .\a_j_reg[4]_i_4__4 (fsm_4_n_40),
        .clk(clk),
        .\count_reg_reg[0] (fsm_3_n_27),
        .\count_reg_reg[0]_0 (ack_in_3),
        .\count_reg_reg[1] (fsm_3_n_25),
        .\count_reg_reg[2] (fsm_3_n_26),
        .\j_reg[1] (fsm_3_n_35),
        .\j_reg[3] (fsm_3_n_36),
        .nRst(nRst),
        .next_out_3(next_out_3),
        .next_out_4(next_out_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4 fsm_4
       (.AR(ack_in_5),
        .D({fsm_4_n_6,fsm_4_n_7,fsm_4_n_8,fsm_4_n_9}),
        .\FSM_onehot_state_reg[0]_0 (fsm_3_n_2),
        .\FSM_onehot_state_reg[3]_0 (fsm_4_n_13),
        .Q({fsm_4_n_2,fsm_4_n_3}),
        .SR(fsm_4_n_5),
        .a_in_4(a_in_4),
        .a_in_5(a_in_5),
        .\a_j_reg[0] (fsm_3_n_30),
        .\a_j_reg[0]_0 (fsm_3_n_28),
        .\a_j_reg[0]_i_1__3 (fsm_5_n_45),
        .\a_j_reg[0]_i_1__3_0 (fsm_5_n_48),
        .\a_j_reg[1]_i_1__4 (fsm_3_n_32),
        .\a_j_reg[2]_i_1__4 (fsm_3_n_29),
        .\a_j_reg[3]_i_1__4 (fsm_3_n_31),
        .\a_j_reg[3]_i_1__4_0 (fsm_3_n_25),
        .\a_j_reg[4] ({fsm_5_n_42,fsm_5_n_43,fsm_5_n_44}),
        .\a_j_reg[4]_0 (fsm_3_n_24),
        .\a_j_reg[4]_1 (fsm_3_n_3),
        .\a_j_reg[4]_i_1__4 (fsm_3_n_27),
        .\a_j_reg[4]_i_1__4_0 (fsm_3_n_26),
        .\a_j_reg[4]_i_2__2 (fsm_5_n_47),
        .\a_j_reg[4]_i_2__2_0 (fsm_5_n_46),
        .\a_j_reg[4]_i_3__3 (fsm_4_n_10),
        .clk(clk),
        .\count_reg_reg[0] (fsm_4_n_39),
        .\count_reg_reg[0]_0 (ack_in_4),
        .\count_reg_reg[2] (fsm_4_n_12),
        .\count_reg_reg[4] (fsm_4_n_11),
        .\j_reg[1] (fsm_4_n_4),
        .\j_reg[2] (fsm_4_n_40),
        .nRst(nRst),
        .next_out_4(next_out_4),
        .next_out_5(next_out_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3 fsm_5
       (.AR(ack_in_6),
        .D({fsm_5_n_7,fsm_5_n_8,fsm_5_n_9,fsm_5_n_10}),
        .\FSM_onehot_state[4]_i_7__3 ({fsm_4_n_6,fsm_4_n_7,fsm_4_n_8,fsm_4_n_9}),
        .\FSM_onehot_state_reg[0]_0 (fsm_4_n_5),
        .\FSM_onehot_state_reg[3]_0 (fsm_5_n_2),
        .\FSM_onehot_state_reg[3]_1 (fsm_5_n_3),
        .\FSM_onehot_state_reg[3]_2 ({fsm_5_n_42,fsm_5_n_43,fsm_5_n_44}),
        .Q({fsm_6_n_48,fsm_6_n_49,fsm_6_n_50}),
        .SR(fsm_5_n_6),
        .a_in_5(a_in_5),
        .a_in_6(a_in_6),
        .\a_j_reg[0] (fsm_4_n_10),
        .\a_j_reg[0]_i_1__3 (fsm_4_n_39),
        .\a_j_reg[0]_i_1__3_0 (fsm_4_n_11),
        .\a_j_reg[0]_i_1__3_1 (fsm_4_n_12),
        .\a_j_reg[0]_i_1__3_2 (fsm_4_n_13),
        .\a_j_reg[0]_i_2__2 (fsm_6_n_52),
        .\a_j_reg[0]_i_2__2_0 (fsm_6_n_53),
        .\a_j_reg[3]_i_1__2 (fsm_6_n_51),
        .\a_j_reg[3]_i_3__2 (fsm_5_n_5),
        .clk(clk),
        .\count_reg_reg[0] (fsm_5_n_11),
        .\count_reg_reg[0]_0 (ack_in_5),
        .\count_reg_reg[2] (fsm_5_n_4),
        .\j_reg[1] (fsm_5_n_45),
        .\j_reg[2] (fsm_5_n_48),
        .\j_reg[3] (fsm_5_n_47),
        .\j_reg[4] (fsm_5_n_46),
        .nRst(nRst),
        .next_out_5(next_out_5),
        .next_out_6(next_out_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2 fsm_6
       (.AR(ack_in_7),
        .D({fsm_6_n_3,fsm_6_n_4,fsm_6_n_5}),
        .\FSM_onehot_state[4]_i_7__2 ({fsm_5_n_7,fsm_5_n_8,fsm_5_n_9,fsm_5_n_10}),
        .\FSM_onehot_state_reg[0]_0 (fsm_5_n_6),
        .\FSM_onehot_state_reg[3]_0 (fsm_6_n_46),
        .\FSM_onehot_state_reg[3]_1 (fsm_6_n_47),
        .\FSM_onehot_state_reg[3]_2 ({fsm_6_n_48,fsm_6_n_49,fsm_6_n_50}),
        .Q(\logic/j ),
        .SR(fsm_6_n_2),
        .a_in_6(a_in_6),
        .a_in_7(a_in_7),
        .\a_j_reg[0] (fsm_7_n_50),
        .\a_j_reg[0]_0 (fsm_5_n_5),
        .\a_j_reg[0]_i_1__1 (fsm_7_n_52),
        .\a_j_reg[0]_i_1__1_0 (fsm_7_n_51),
        .\a_j_reg[0]_i_1__2 (fsm_5_n_2),
        .\a_j_reg[0]_i_1__2_0 (fsm_5_n_11),
        .\a_j_reg[0]_i_1__2_1 (fsm_5_n_3),
        .\a_j_reg[0]_i_1__2_2 (fsm_5_n_4),
        .\a_j_reg[0]_i_2__1 (fsm_7_n_54),
        .\a_j_reg[3]_i_2__1 (fsm_7_n_53),
        .\a_j_reg[4]_i_12__1 (fsm_6_n_7),
        .\a_j_reg[4]_i_12__1_0 (fsm_6_n_8),
        .\a_j_reg[4]_i_12__1_1 (fsm_6_n_9),
        .\a_j_reg[4]_i_16__1 (fsm_6_n_6),
        .clk(clk),
        .\count_reg_reg[0] (ack_in_6),
        .\count_reg_reg[3] (fsm_6_n_10),
        .\j_reg[1] (fsm_6_n_51),
        .\j_reg[3] (fsm_6_n_52),
        .\j_reg[4] (fsm_6_n_53),
        .nRst(nRst),
        .next_out_6(next_out_6),
        .next_out_7(next_out_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1 fsm_7
       (.AR(ack_in_8),
        .D({fsm_7_n_3,fsm_7_n_4,fsm_7_n_5,fsm_7_n_6,fsm_7_n_7}),
        .\FSM_onehot_state[4]_i_7__1 ({fsm_6_n_3,fsm_6_n_4,fsm_6_n_5}),
        .\FSM_onehot_state_reg[0]_0 (fsm_6_n_2),
        .\FSM_onehot_state_reg[3]_0 (\logic/j ),
        .Q(\logic/j_0 ),
        .SR(fsm_7_n_2),
        .a_in_7(a_in_7),
        .a_in_8(a_in_8),
        .\a_j_reg[0]_i_1__0 (fsm_8_n_13),
        .\a_j_reg[0]_i_1__0_0 (fsm_8_n_12),
        .\a_j_reg[0]_i_1__1 (fsm_6_n_10),
        .\a_j_reg[0]_i_2__0 (fsm_8_n_11),
        .\a_j_reg[0]_i_2__0_0 (fsm_8_n_10),
        .\a_j_reg[2] (fsm_6_n_9),
        .\a_j_reg[2]_0 (fsm_6_n_6),
        .\a_j_reg[2]_1 (fsm_6_n_7),
        .\a_j_reg[3]_i_3__1 (fsm_7_n_50),
        .\a_j_reg[4] (fsm_6_n_8),
        .\a_j_reg[4]_i_1__1 (fsm_6_n_46),
        .\a_j_reg[4]_i_1__1_0 (fsm_6_n_47),
        .clk(clk),
        .\count_reg_reg[0] (ack_in_7),
        .\j_reg[1] (fsm_7_n_51),
        .\j_reg[3] (fsm_7_n_52),
        .\j_reg[3]_0 (fsm_7_n_54),
        .\j_reg[4] (fsm_7_n_53),
        .nRst(nRst),
        .next_out_7(next_out_7),
        .next_out_8(next_out_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0 fsm_8
       (.AR(ack_in_9),
        .D({fsm_8_n_4,fsm_8_n_5,fsm_8_n_6,fsm_8_n_7,fsm_8_n_8}),
        .\FSM_onehot_state[4]_i_2__2 ({fsm_7_n_3,fsm_7_n_4,fsm_7_n_5,fsm_7_n_6,fsm_7_n_7}),
        .\FSM_onehot_state_reg[0]_0 (fsm_7_n_2),
        .Q(\logic/j_0 ),
        .SR(fsm_8_n_9),
        .a_in_8(a_in_8),
        .\a_j_reg[0] (\logic/j_1 ),
        .\a_j_reg[0]_i_1 (fsm_9_n_1),
        .\a_j_reg[0]_i_1_0 (fsm_9_n_4),
        .\a_j_reg[0]_i_2 (fsm_9_n_5),
        .\a_j_reg[0]_i_2_0 (fsm_9_n_6),
        .clk(clk),
        .\count_reg_reg[0] (ack_in_8),
        .\j_reg[0] (fsm_8_n_13),
        .\j_reg[3] (fsm_8_n_10),
        .\j_reg[3]_0 (fsm_8_n_12),
        .\j_reg[4] (fsm_8_n_11),
        .nRst(nRst),
        .next_out_8(next_out_8),
        .next_out_9(next_out_9));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm fsm_9
       (.AR(ack_in_9),
        .D({fsm_9_n_8,fsm_9_n_9,fsm_9_n_10,fsm_9_n_11,fsm_9_n_12,fsm_9_n_13,fsm_9_n_14,fsm_9_n_15,fsm_9_n_16,fsm_9_n_17,fsm_9_n_18,fsm_9_n_19,fsm_9_n_20,fsm_9_n_21,fsm_9_n_22,fsm_9_n_23,fsm_9_n_24,fsm_9_n_25,fsm_9_n_26,fsm_9_n_27,fsm_9_n_28,fsm_9_n_29,fsm_9_n_30,fsm_9_n_31,fsm_9_n_32,fsm_9_n_33,fsm_9_n_34,fsm_9_n_35,fsm_9_n_36,fsm_9_n_37,fsm_9_n_38,fsm_9_n_39}),
        .E(counter_s),
        .\FSM_onehot_state[4]_i_2__0 ({fsm_8_n_4,fsm_8_n_5,fsm_8_n_6,fsm_8_n_7,fsm_8_n_8}),
        .Q(\logic/j_1 ),
        .SR(fsm_8_n_9),
        .clk(clk),
        .\counter[31] (done),
        .\counter[31]_0 (\counter_s_reg[31]_i_3_n_0 ),
        .\counter[31]_1 (\counter_s_reg[31]_i_4_n_0 ),
        .\counter[31]_2 (\counter_s_reg[31]_i_5_n_0 ),
        .\j_reg[2] (fsm_9_n_1),
        .\j_reg[2]_0 (fsm_9_n_4),
        .\j_reg[3] (fsm_9_n_6),
        .\j_reg[4] (fsm_9_n_5),
        .next_out_9(next_out_9),
        .plusOp(plusOp));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[1],1'b0}),
        .O(plusOp[3:0]),
        .S({counter[3:2],plusOp_carry_i_1_n_0,counter[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[7:4]),
        .S(counter[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[11:8]),
        .S(counter[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[15:12]),
        .S(counter[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[19:16]),
        .S(counter[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[23:20]),
        .S(counter[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[27:24]),
        .S(counter[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3],plusOp_carry__6_n_1,plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[31:28]),
        .S(counter[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(counter[1]),
        .O(plusOp_carry_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter
   (Q,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[0]_0 ,
    D,
    next_state6,
    \count_reg_reg[3]_0 ,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[4]_0 ,
    valid,
    E,
    clk,
    AR);
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  output [0:0]next_state6;
  output \count_reg_reg[3]_0 ;
  input [4:0]\FSM_onehot_state_reg[4] ;
  input [3:0]\FSM_onehot_state_reg[4]_0 ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_7_n_0 ;
  wire [4:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]\FSM_onehot_state_reg[4]_0 ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__13_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire [0:0]next_state6;
  wire valid;

  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[4]_0 [0]),
        .I1(\FSM_onehot_state_reg[4]_0 [3]),
        .I2(complete_tick),
        .I3(\FSM_onehot_state_reg[4]_0 [2]),
        .I4(valid),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[4]_0 [1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[4]_i_10__6 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[4] [2]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_state[4]_i_13__7 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4] [0]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \FSM_onehot_state[4]_i_14 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4] [0]),
        .I2(Q[1]),
        .I3(\FSM_onehot_state_reg[4] [1]),
        .I4(\FSM_onehot_state_reg[4] [2]),
        .I5(Q[2]),
        .O(next_state6));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \FSM_onehot_state[4]_i_2__0 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state[4]_i_7_n_0 ),
        .I3(\FSM_onehot_state_reg[4] [4]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg[4]_0 [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4]_0 [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(complete_tick));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4] [0]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .I5(Q[1]),
        .O(\FSM_onehot_state[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h0F0F0F07)) 
    \count_reg[0]_i_1__13 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg[0]_i_1__13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'h3C3C3C34)) 
    \count_reg[1]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'h6AAA6AA2)) 
    \count_reg[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg[4]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[0]_i_1__13_n_0 ),
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
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0
   (Q,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[0]_0 ,
    D,
    next_state6,
    \count_reg_reg[3]_0 ,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[4]_0 ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  output [0:0]next_state6;
  output \count_reg_reg[3]_0 ;
  input [4:0]\FSM_onehot_state_reg[4] ;
  input [3:0]\FSM_onehot_state_reg[4]_0 ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_7__0_n_0 ;
  wire [4:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]\FSM_onehot_state_reg[4]_0 ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__14_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire [0:0]next_state6;
  wire valid;

  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(\FSM_onehot_state_reg[4]_0 [0]),
        .I1(\FSM_onehot_state_reg[4]_0 [3]),
        .I2(complete_tick),
        .I3(\FSM_onehot_state_reg[4]_0 [2]),
        .I4(valid),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg[4]_0 [1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[4]_i_10__7 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[4] [2]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_state[4]_i_14__7 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4] [0]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \FSM_onehot_state[4]_i_15__0 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4] [0]),
        .I2(Q[1]),
        .I3(\FSM_onehot_state_reg[4] [1]),
        .I4(\FSM_onehot_state_reg[4] [2]),
        .I5(Q[2]),
        .O(next_state6));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \FSM_onehot_state[4]_i_2__2 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state[4]_i_7__0_n_0 ),
        .I3(\FSM_onehot_state_reg[4] [4]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__1 
       (.I0(\FSM_onehot_state_reg[4]_0 [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4]_0 [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_4__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(complete_tick));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7__0 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[4] [0]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .I5(Q[1]),
        .O(\FSM_onehot_state[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h0F0F0F07)) 
    \count_reg[0]_i_1__14 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg[0]_i_1__14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h3C3C3C34)) 
    \count_reg[1]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h6AAA6AA2)) 
    \count_reg[3]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg[4]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(\count_reg[0]_i_1__14_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[4]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1
   (\count_reg_reg[0]_0 ,
    Q,
    \count_reg_reg[2]_0 ,
    next_state6,
    \count_reg_reg[1]_0 ,
    D,
    complete_tick,
    \FSM_onehot_state[4]_i_3__3_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output [0:0]next_state6;
  output \count_reg_reg[1]_0 ;
  output [1:0]D;
  output complete_tick;
  input [4:0]\FSM_onehot_state[4]_i_3__3_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]\FSM_onehot_state[4]_i_3__3_0 ;
  wire \FSM_onehot_state[4]_i_7__1_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire [0:0]next_state6;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \FSM_onehot_state[2]_i_1__1 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[4]_i_11__1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__3_0 [1]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__3_0 [0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \FSM_onehot_state[4]_i_12__0 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__3_0 [0]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__3_0 [1]),
        .I4(\FSM_onehot_state[4]_i_3__3_0 [2]),
        .I5(Q[2]),
        .O(next_state6));
  LUT6 #(
    .INIT(64'h9000009009000009)) 
    \FSM_onehot_state[4]_i_15__1 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state[4]_i_3__3_0 [2]),
        .I2(\FSM_onehot_state[4]_i_3__3_0 [1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[4]_i_3__3_0 [0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \FSM_onehot_state[4]_i_3__3 
       (.I0(\FSM_onehot_state[4]_i_7__1_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state[4]_i_3__3_0 [0]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[4]_i_3__3_0 [1]),
        .O(\count_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__4 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(complete_tick));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7__1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state[4]_i_3__3_0 [3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_state[4]_i_3__3_0 [4]),
        .I4(\FSM_onehot_state[4]_i_3__3_0 [2]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[4]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \count_reg[0]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h66626666)) 
    \count_reg[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h7F7B8080)) 
    \count_reg[3]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \count_reg[4]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[4]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2
   (\count_reg_reg[0]_0 ,
    Q,
    \count_reg_reg[2]_0 ,
    next_state6,
    \count_reg_reg[1]_0 ,
    D,
    complete_tick,
    \FSM_onehot_state[4]_i_3__5_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output [0:0]next_state6;
  output \count_reg_reg[1]_0 ;
  output [1:0]D;
  output complete_tick;
  input [4:0]\FSM_onehot_state[4]_i_3__5_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]\FSM_onehot_state[4]_i_3__5_0 ;
  wire \FSM_onehot_state[4]_i_7__2_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire [0:0]next_state6;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \FSM_onehot_state[2]_i_1__2 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[4]_i_12__1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__5_0 [1]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__5_0 [0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \FSM_onehot_state[4]_i_13__1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__5_0 [0]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__5_0 [1]),
        .I4(\FSM_onehot_state[4]_i_3__5_0 [2]),
        .I5(Q[2]),
        .O(next_state6));
  LUT6 #(
    .INIT(64'h9000009009000009)) 
    \FSM_onehot_state[4]_i_17__0 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state[4]_i_3__5_0 [2]),
        .I2(\FSM_onehot_state[4]_i_3__5_0 [1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[4]_i_3__5_0 [0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \FSM_onehot_state[4]_i_3__5 
       (.I0(\FSM_onehot_state[4]_i_7__2_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state[4]_i_3__5_0 [0]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[4]_i_3__5_0 [1]),
        .O(\count_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__6 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(complete_tick));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7__2 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state[4]_i_3__5_0 [3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_state[4]_i_3__5_0 [4]),
        .I4(\FSM_onehot_state[4]_i_3__5_0 [2]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[4]_i_7__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \count_reg[0]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h66626666)) 
    \count_reg[1]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h7F7B8080)) 
    \count_reg[3]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \count_reg[4]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[4]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3
   (\count_reg_reg[0]_0 ,
    Q,
    \count_reg_reg[2]_0 ,
    next_state6,
    \count_reg_reg[1]_0 ,
    D,
    \count_reg_reg[0]_1 ,
    \FSM_onehot_state[4]_i_3__7_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_2 );
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output [0:0]next_state6;
  output \count_reg_reg[1]_0 ;
  output [1:0]D;
  output \count_reg_reg[0]_1 ;
  input [4:0]\FSM_onehot_state[4]_i_3__7_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]\FSM_onehot_state[4]_i_3__7_0 ;
  wire \FSM_onehot_state[4]_i_7__3_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire [0:0]next_state6;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \FSM_onehot_state[2]_i_1__3 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h9000009009000009)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state[4]_i_3__7_0 [2]),
        .I2(\FSM_onehot_state[4]_i_3__7_0 [1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[4]_i_3__7_0 [0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[4]_i_12__2 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__7_0 [1]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__7_0 [0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \FSM_onehot_state[4]_i_13__2 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__7_0 [0]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__7_0 [1]),
        .I4(\FSM_onehot_state[4]_i_3__7_0 [2]),
        .I5(Q[2]),
        .O(next_state6));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \FSM_onehot_state[4]_i_3__7 
       (.I0(\FSM_onehot_state[4]_i_7__3_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state[4]_i_3__7_0 [0]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[4]_i_3__7_0 [1]),
        .O(\count_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__8 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(\count_reg_reg[0]_1 ),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\count_reg_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7__3 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state[4]_i_3__7_0 [3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_state[4]_i_3__7_0 [4]),
        .I4(\FSM_onehot_state[4]_i_3__7_0 [2]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[4]_i_7__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \count_reg[0]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h66626666)) 
    \count_reg[1]_i_1__8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7F7B8080)) 
    \count_reg[3]_i_1__8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \count_reg[4]_i_1__8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(count_next[4]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4
   (\count_reg_reg[3]_0 ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    D,
    Q,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[3]_0 ;
  output [4:0]\count_reg_reg[4]_0 ;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  input [4:0]Q;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__9_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire [4:0]\count_reg_reg[4]_0 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__10 
       (.I0(\FSM_onehot_state[4]_i_4__9_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__4 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(\count_reg_reg[4]_0 [4]),
        .I2(\count_reg_reg[4]_0 [3]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [2]),
        .I5(\count_reg_reg[4]_0 [0]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(\count_reg_reg[4]_0 [0]),
        .I1(Q[0]),
        .O(\count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[4]_i_12__3 
       (.I0(\count_reg_reg[4]_0 [1]),
        .I1(Q[1]),
        .O(\count_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h90000090)) 
    \FSM_onehot_state[4]_i_2__10 
       (.I0(Q[3]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[2]_0 ),
        .I3(\count_reg_reg[4]_0 [4]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_state[4]_i_3__10 
       (.I0(\FSM_onehot_state_reg[4] [3]),
        .I1(\FSM_onehot_state_reg[4] [1]),
        .I2(\FSM_onehot_state[4]_i_4__9_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__9 
       (.I0(\count_reg_reg[4]_0 [0]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [3]),
        .I4(\count_reg_reg[4]_0 [4]),
        .O(\FSM_onehot_state[4]_i_4__9_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[4]_i_7__4 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(\count_reg_reg[4]_0 [1]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__6 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__9 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__10 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__9 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__10 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(\count_reg_reg[4]_0 [2]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[0]),
        .Q(\count_reg_reg[4]_0 [0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[1]),
        .Q(\count_reg_reg[4]_0 [1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[2]),
        .Q(\count_reg_reg[4]_0 [2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[3]),
        .Q(\count_reg_reg[4]_0 [3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[4]),
        .Q(\count_reg_reg[4]_0 [4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5
   (\count_reg_reg[0]_0 ,
    Q,
    \count_reg_reg[2]_0 ,
    next_state6,
    \count_reg_reg[1]_0 ,
    D,
    complete_tick,
    \FSM_onehot_state[4]_i_3__11_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output [0:0]next_state6;
  output \count_reg_reg[1]_0 ;
  output [1:0]D;
  output complete_tick;
  input [4:0]\FSM_onehot_state[4]_i_3__11_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]\FSM_onehot_state[4]_i_3__11_0 ;
  wire \FSM_onehot_state[4]_i_7__5_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire [0:0]next_state6;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \FSM_onehot_state[2]_i_1__5 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[4]_i_11__5 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__11_0 [1]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__11_0 [0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \FSM_onehot_state[4]_i_12__4 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__11_0 [0]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__11_0 [1]),
        .I4(\FSM_onehot_state[4]_i_3__11_0 [2]),
        .I5(Q[2]),
        .O(next_state6));
  LUT6 #(
    .INIT(64'h9000009009000009)) 
    \FSM_onehot_state[4]_i_15__5 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state[4]_i_3__11_0 [2]),
        .I2(\FSM_onehot_state[4]_i_3__11_0 [1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[4]_i_3__11_0 [0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \FSM_onehot_state[4]_i_3__11 
       (.I0(\FSM_onehot_state[4]_i_7__5_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state[4]_i_3__11_0 [0]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[4]_i_3__11_0 [1]),
        .O(\count_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__12 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__11 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(complete_tick));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7__5 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state[4]_i_3__11_0 [3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_state[4]_i_3__11_0 [4]),
        .I4(\FSM_onehot_state[4]_i_3__11_0 [2]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[4]_i_7__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \count_reg[0]_i_1__8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h66626666)) 
    \count_reg[1]_i_1__11 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__12 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7F7B8080)) 
    \count_reg[3]_i_1__11 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \count_reg[4]_i_1__12 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[4]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6
   (\count_reg_reg[4]_0 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[1]_1 ,
    \count_reg_reg[0]_0 ,
    D,
    Q,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[4]_0 ,
    \FSM_onehot_state_reg[4]_1 ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output [4:0]\count_reg_reg[4]_0 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[4]_1 ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[1]_1 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  input [4:0]Q;
  input \FSM_onehot_state_reg[4] ;
  input [1:0]\FSM_onehot_state_reg[4]_0 ;
  input [3:0]\FSM_onehot_state_reg[4]_1 ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_12__6_n_0 ;
  wire \FSM_onehot_state[4]_i_15__6_n_0 ;
  wire \FSM_onehot_state[4]_i_4__13_n_0 ;
  wire \FSM_onehot_state[4]_i_7__6_n_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire [1:0]\FSM_onehot_state_reg[4]_0 ;
  wire [3:0]\FSM_onehot_state_reg[4]_1 ;
  wire [4:0]Q;
  wire clk;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[1]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire [4:0]\count_reg_reg[4]_0 ;
  wire \count_reg_reg[4]_1 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__14 
       (.I0(\FSM_onehot_state[4]_i_4__13_n_0 ),
        .I1(\FSM_onehot_state_reg[4]_1 [3]),
        .I2(\FSM_onehot_state_reg[4]_1 [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4]_1 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__6 
       (.I0(\FSM_onehot_state_reg[4]_1 [1]),
        .I1(\count_reg_reg[4]_0 [4]),
        .I2(\count_reg_reg[4]_0 [3]),
        .I3(\count_reg_reg[4]_0 [1]),
        .I4(\count_reg_reg[4]_0 [2]),
        .I5(\count_reg_reg[4]_0 [0]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[3]_i_2__1 
       (.I0(\count_reg_reg[4]_0 [0]),
        .I1(Q[0]),
        .O(\count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[4]_i_10__4 
       (.I0(\count_reg_reg[4]_0 [1]),
        .I1(Q[1]),
        .O(\count_reg_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    \FSM_onehot_state[4]_i_11__6 
       (.I0(Q[4]),
        .I1(\count_reg_reg[4]_0 [4]),
        .I2(\count_reg_reg[4]_0 [3]),
        .I3(Q[3]),
        .I4(\FSM_onehot_state[4]_i_15__6_n_0 ),
        .O(\count_reg_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \FSM_onehot_state[4]_i_12__6 
       (.I0(Q[3]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_15__6_n_0 ),
        .O(\FSM_onehot_state[4]_i_12__6_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFF0000BB2B)) 
    \FSM_onehot_state[4]_i_15__6 
       (.I0(\count_reg_reg[4]_0 [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(Q[2]),
        .I5(\count_reg_reg[4]_0 [2]),
        .O(\FSM_onehot_state[4]_i_15__6_n_0 ));
  LUT5 #(
    .INIT(32'h09000009)) 
    \FSM_onehot_state[4]_i_2__14 
       (.I0(Q[3]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\FSM_onehot_state[4]_i_7__6_n_0 ),
        .I3(\count_reg_reg[4]_0 [4]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_state[4]_i_3__14 
       (.I0(\FSM_onehot_state_reg[4]_1 [3]),
        .I1(\FSM_onehot_state_reg[4]_1 [1]),
        .I2(\FSM_onehot_state[4]_i_4__13_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__13 
       (.I0(\count_reg_reg[4]_0 [0]),
        .I1(\count_reg_reg[4]_0 [2]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [3]),
        .I4(\count_reg_reg[4]_0 [4]),
        .O(\FSM_onehot_state[4]_i_4__13_n_0 ));
  LUT6 #(
    .INIT(64'h000004000004C200)) 
    \FSM_onehot_state[4]_i_5__6 
       (.I0(\FSM_onehot_state[4]_i_7__6_n_0 ),
        .I1(\FSM_onehot_state[4]_i_12__6_n_0 ),
        .I2(\count_reg_reg[4]_1 ),
        .I3(\FSM_onehot_state_reg[4] ),
        .I4(\FSM_onehot_state_reg[4]_0 [0]),
        .I5(\FSM_onehot_state_reg[4]_0 [1]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7__6 
       (.I0(\count_reg_reg[4]_0 [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(\count_reg_reg[4]_0 [2]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[4]_i_7__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__10 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__12 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__14 
       (.I0(\count_reg_reg[4]_0 [2]),
        .I1(\count_reg_reg[4]_0 [1]),
        .I2(\count_reg_reg[4]_0 [0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__12 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [2]),
        .I4(\count_reg_reg[4]_0 [0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__14 
       (.I0(\count_reg_reg[4]_0 [4]),
        .I1(\count_reg_reg[4]_0 [3]),
        .I2(\count_reg_reg[4]_0 [1]),
        .I3(\count_reg_reg[4]_0 [0]),
        .I4(\count_reg_reg[4]_0 [2]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[0]),
        .Q(\count_reg_reg[4]_0 [0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[1]),
        .Q(\count_reg_reg[4]_0 [1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[2]),
        .Q(\count_reg_reg[4]_0 [2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[3]),
        .Q(\count_reg_reg[4]_0 [3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(count_next[4]),
        .Q(\count_reg_reg[4]_0 [4]));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7
   (\count_reg_reg[0]_0 ,
    Q,
    \count_reg_reg[2]_0 ,
    next_state6,
    \count_reg_reg[1]_0 ,
    D,
    complete_tick,
    \FSM_onehot_state[4]_i_3__15_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    ack_in_1);
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output [0:0]next_state6;
  output \count_reg_reg[1]_0 ;
  output [1:0]D;
  output complete_tick;
  input [4:0]\FSM_onehot_state[4]_i_3__15_0 ;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input ack_in_1;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]\FSM_onehot_state[4]_i_3__15_0 ;
  wire \FSM_onehot_state[4]_i_7__7_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire ack_in_1;
  wire clk;
  wire complete_tick;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire [0:0]next_state6;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2AAAA)) 
    \FSM_onehot_state[2]_i_1__7 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h9000009009000009)) 
    \FSM_onehot_state[3]_i_4__0 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state[4]_i_3__15_0 [2]),
        .I2(\FSM_onehot_state[4]_i_3__15_0 [1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[4]_i_3__15_0 [0]),
        .I5(Q[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[4]_i_12__5 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__15_0 [1]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__15_0 [0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \FSM_onehot_state[4]_i_13__5 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[4]_i_3__15_0 [0]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state[4]_i_3__15_0 [1]),
        .I4(\FSM_onehot_state[4]_i_3__15_0 [2]),
        .I5(Q[2]),
        .O(next_state6));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \FSM_onehot_state[4]_i_3__15 
       (.I0(\FSM_onehot_state[4]_i_7__7_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state[4]_i_3__15_0 [0]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[4]_i_3__15_0 [1]),
        .O(\count_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__16 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__15 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(complete_tick));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[4]_i_7__7 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state[4]_i_3__15_0 [3]),
        .I2(Q[4]),
        .I3(\FSM_onehot_state[4]_i_3__15_0 [4]),
        .I4(\FSM_onehot_state[4]_i_3__15_0 [2]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[4]_i_7__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \count_reg[0]_i_1__12 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h66626666)) 
    \count_reg[1]_i_1__14 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__16 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F7B8080)) 
    \count_reg[3]_i_1__14 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \count_reg[4]_i_1__16 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(ack_in_1),
        .D(count_next[0]),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(ack_in_1),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(ack_in_1),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(ack_in_1),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(ack_in_1),
        .D(count_next[4]),
        .Q(Q[4]));
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
