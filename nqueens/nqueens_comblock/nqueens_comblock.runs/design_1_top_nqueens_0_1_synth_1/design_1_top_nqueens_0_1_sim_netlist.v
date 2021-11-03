// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov  3 16:16:23 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_nqueens_0_1_sim_netlist.v
// Design      : design_1_top_nqueens_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic
   (valid,
    \j_reg[2]_0 ,
    \j_reg[2]_1 ,
    \j_reg[1]_0 ,
    \j_reg[1]_1 ,
    \j_reg[1]_2 ,
    \j_reg[0]_0 ,
    \count_reg_reg[4] ,
    \j_reg[1]_3 ,
    \j_reg[1]_4 ,
    \j_reg[1]_5 ,
    \j_reg[1]_6 ,
    \FSM_onehot_state_reg[0] ,
    E,
    D,
    S,
    clk,
    AR,
    Q,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    count1_carry__1_0,
    count1_carry__1_1,
    count1_carry_i_4,
    \count[4]_i_5_0 ,
    \count[4]_i_5_1 ,
    \count[4]_i_5_2 ,
    \count[4]_i_5_3 ,
    \count[4]_i_12_0 ,
    \count[4]_i_12_1 ,
    \count[4]_i_7_0 ,
    \count[4]_i_7_1 ,
    count1_carry_i_14,
    count1_carry_i_14_0,
    acks_out_reg,
    done_aux_reg_0);
  output valid;
  output \j_reg[2]_0 ;
  output [2:0]\j_reg[2]_1 ;
  output \j_reg[1]_0 ;
  output \j_reg[1]_1 ;
  output \j_reg[1]_2 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[4] ;
  output \j_reg[1]_3 ;
  output \j_reg[1]_4 ;
  output \j_reg[1]_5 ;
  output \j_reg[1]_6 ;
  output \FSM_onehot_state_reg[0] ;
  output [0:0]E;
  output [0:0]D;
  input [0:0]S;
  input clk;
  input [0:0]AR;
  input [1:0]Q;
  input [1:0]\count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input count1_carry__1_0;
  input count1_carry__1_1;
  input count1_carry_i_4;
  input \count[4]_i_5_0 ;
  input \count[4]_i_5_1 ;
  input \count[4]_i_5_2 ;
  input \count[4]_i_5_3 ;
  input \count[4]_i_12_0 ;
  input \count[4]_i_12_1 ;
  input \count[4]_i_7_0 ;
  input \count[4]_i_7_1 ;
  input count1_carry_i_14;
  input count1_carry_i_14_0;
  input [4:0]acks_out_reg;
  input done_aux_reg_0;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [1:0]Q;
  wire [0:0]S;
  wire [4:0]acks_out_reg;
  wire clk;
  wire count;
  wire count1;
  wire count1_carry__0_i_1_n_0;
  wire count1_carry__0_i_2_n_0;
  wire count1_carry__0_i_3_n_0;
  wire count1_carry__0_i_4_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_0;
  wire count1_carry__1_1;
  wire count1_carry__1_i_1_n_0;
  wire count1_carry__1_i_2_n_0;
  wire count1_carry__1_i_3_n_0;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_14;
  wire count1_carry_i_14_0;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4;
  wire count1_carry_i_5_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[4]_i_12_0 ;
  wire \count[4]_i_12_1 ;
  wire \count[4]_i_12_n_0 ;
  wire \count[4]_i_16_n_0 ;
  wire \count[4]_i_20_n_0 ;
  wire \count[4]_i_5_0 ;
  wire \count[4]_i_5_1 ;
  wire \count[4]_i_5_2 ;
  wire \count[4]_i_5_3 ;
  wire \count[4]_i_7_0 ;
  wire \count[4]_i_7_1 ;
  wire \count[4]_i_7_n_0 ;
  wire [4:0]count_reg;
  wire [1:0]\count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg_reg[4] ;
  wire done;
  wire done_aux_i_1_n_0;
  wire done_aux_i_2_n_0;
  wire done_aux_i_3__0_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1_n_0 ;
  wire [4:3]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[1]_2 ;
  wire \j_reg[1]_3 ;
  wire \j_reg[1]_4 ;
  wire \j_reg[1]_5 ;
  wire \j_reg[1]_6 ;
  wire \j_reg[2]_0 ;
  wire [2:0]\j_reg[2]_1 ;
  wire [4:1]p_0_in;
  wire [4:1]plusOp;
  wire valid;
  wire valid_aux_i_1_n_0;
  wire valid_aux_i_2_n_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(valid),
        .I1(acks_out_reg[2]),
        .O(D));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_state[4]_i_2__7 
       (.I0(acks_out_reg[3]),
        .I1(acks_out_reg[1]),
        .I2(done),
        .I3(acks_out_reg[2]),
        .I4(acks_out_reg[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__0
       (.I0(acks_out_reg[0]),
        .I1(acks_out_reg[4]),
        .I2(acks_out_reg[1]),
        .I3(done),
        .I4(acks_out_reg[2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[0] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_1_n_0,count1_carry_i_2_n_0,count1_carry_i_3_n_0,S}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_1_n_0,count1_carry__0_i_2_n_0,count1_carry__0_i_3_n_0,count1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry__0_i_1
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry__0_i_2
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry__0_i_3
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry__0_i_4
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry__0_i_4_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count1_carry__1_i_1_n_0,count1_carry__1_i_2_n_0,count1_carry__1_i_3_n_0}));
  LUT6 #(
    .INIT(64'h4545454545004545)) 
    count1_carry__1_i_1
       (.I0(j_reg[4]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[3]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry__1_i_2
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry__1_i_3
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry_i_1
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_11
       (.I0(\j_reg[2]_1 [1]),
        .I1(count1_carry_i_4),
        .O(\j_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hACCACAACCAACCCAA)) 
    count1_carry_i_17
       (.I0(count1_carry_i_14),
        .I1(count1_carry_i_14_0),
        .I2(\j_reg[2]_1 [1]),
        .I3(j_reg[3]),
        .I4(\j_reg[2]_1 [0]),
        .I5(\j_reg[2]_1 [2]),
        .O(\j_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h0D0D0D0D0DF20D0D)) 
    count1_carry_i_2
       (.I0(j_reg[3]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[4]),
        .I3(\count_reg[0]_2 ),
        .I4(count1_carry__1_0),
        .I5(count1_carry__1_1),
        .O(count1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h4104044141820404)) 
    count1_carry_i_3
       (.I0(j_reg[4]),
        .I1(count1_carry_i_5_n_0),
        .I2(j_reg[3]),
        .I3(count1_carry__1_1),
        .I4(count1_carry__1_0),
        .I5(\count_reg[0]_2 ),
        .O(count1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_5
       (.I0(\j_reg[2]_1 [1]),
        .I1(\j_reg[2]_1 [2]),
        .O(count1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp[3]));
  LUT6 #(
    .INIT(64'h8888888888880880)) 
    \count[4]_i_1 
       (.I0(j0),
        .I1(count1),
        .I2(\j_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\count_reg[0]_2 ),
        .I5(\count_reg_reg[4] ),
        .O(count));
  LUT6 #(
    .INIT(64'h00004700FF004700)) 
    \count[4]_i_12 
       (.I0(\count[4]_i_20_n_0 ),
        .I1(\j_reg[2]_1 [2]),
        .I2(\count[4]_i_5_2 ),
        .I3(\j_reg[2]_1 [0]),
        .I4(\j_reg[2]_1 [1]),
        .I5(\count[4]_i_5_3 ),
        .O(\count[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBEBFA8228280A)) 
    \count[4]_i_16 
       (.I0(\count[4]_i_7_0 ),
        .I1(\j_reg[2]_1 [1]),
        .I2(j_reg[3]),
        .I3(\j_reg[2]_1 [0]),
        .I4(\j_reg[2]_1 [2]),
        .I5(\count[4]_i_7_1 ),
        .O(\count[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'hBEEBEBFA8228280A)) 
    \count[4]_i_20 
       (.I0(\count[4]_i_12_0 ),
        .I1(\j_reg[2]_1 [1]),
        .I2(j_reg[3]),
        .I3(\j_reg[2]_1 [0]),
        .I4(\j_reg[2]_1 [2]),
        .I5(\count[4]_i_12_1 ),
        .O(\count[4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \count[4]_i_23__1 
       (.I0(\j_reg[2]_1 [1]),
        .I1(\j_reg[2]_1 [2]),
        .I2(\j_reg[2]_1 [0]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h9663)) 
    \count[4]_i_25 
       (.I0(\j_reg[2]_1 [1]),
        .I1(j_reg[3]),
        .I2(\j_reg[2]_1 [0]),
        .I3(\j_reg[2]_1 [2]),
        .O(\j_reg[1]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'hD1FFD100)) 
    \count[4]_i_3 
       (.I0(\count_reg[0]_1 ),
        .I1(\j_reg[2]_1 [0]),
        .I2(\count[4]_i_7_n_0 ),
        .I3(\j_reg[2]_0 ),
        .I4(\count_reg[0]_0 [0]),
        .O(\j_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h7E1581EA)) 
    \count[4]_i_32__2 
       (.I0(\j_reg[2]_1 [1]),
        .I1(j_reg[3]),
        .I2(\j_reg[2]_1 [0]),
        .I3(\j_reg[2]_1 [2]),
        .I4(j_reg[4]),
        .O(\j_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_42__0 
       (.I0(\j_reg[2]_1 [1]),
        .I1(\j_reg[2]_1 [0]),
        .O(\j_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'hCD33B326)) 
    \count[4]_i_46 
       (.I0(\j_reg[2]_1 [1]),
        .I1(j_reg[3]),
        .I2(\j_reg[2]_1 [0]),
        .I3(\j_reg[2]_1 [2]),
        .I4(j_reg[4]),
        .O(\j_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h56A656A6565656A6)) 
    \count[4]_i_5 
       (.I0(Q[1]),
        .I1(\count_reg[0]_0 [1]),
        .I2(\j_reg[2]_0 ),
        .I3(\count[4]_i_12_n_0 ),
        .I4(\count[4]_i_7_n_0 ),
        .I5(\j_reg[2]_1 [0]),
        .O(\count_reg_reg[4] ));
  LUT6 #(
    .INIT(64'hFF001D1D4747FF00)) 
    \count[4]_i_7 
       (.I0(\count[4]_i_5_0 ),
        .I1(\j_reg[2]_1 [2]),
        .I2(\count[4]_i_16_n_0 ),
        .I3(\count[4]_i_5_1 ),
        .I4(\j_reg[2]_1 [1]),
        .I5(\j_reg[2]_1 [0]),
        .O(\count[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h000F010F)) 
    \count[4]_i_8 
       (.I0(\j_reg[2]_1 [2]),
        .I1(\j_reg[2]_1 [1]),
        .I2(j_reg[4]),
        .I3(j_reg[3]),
        .I4(\j_reg[2]_1 [0]),
        .O(\j_reg[2]_0 ));
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
    .INIT(64'hFFFFFFFF2E2EEE2E)) 
    done_aux_i_1
       (.I0(done_aux_i_2_n_0),
        .I1(j0),
        .I2(count1),
        .I3(done_aux_i_3__0_n_0),
        .I4(done_aux_reg_0),
        .I5(done),
        .O(done_aux_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    done_aux_i_2
       (.I0(\j_reg[2]_1 [1]),
        .I1(\j_reg[2]_1 [0]),
        .I2(j_reg[3]),
        .I3(\j_reg[2]_1 [2]),
        .I4(j_reg[4]),
        .O(done_aux_i_2_n_0));
  LUT6 #(
    .INIT(64'hA9595959A959A9A9)) 
    done_aux_i_3__0
       (.I0(Q[0]),
        .I1(\count_reg[0]_0 [0]),
        .I2(\j_reg[2]_0 ),
        .I3(\count[4]_i_7_n_0 ),
        .I4(\j_reg[2]_1 [0]),
        .I5(\count_reg[0]_1 ),
        .O(done_aux_i_3__0_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(\j_reg[2]_1 [0]),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1 
       (.I0(\j_reg[2]_1 [0]),
        .I1(\j_reg[2]_1 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1 
       (.I0(\j_reg[2]_1 [2]),
        .I1(\j_reg[2]_1 [0]),
        .I2(\j_reg[2]_1 [1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j[3]_i_1 
       (.I0(j_reg[3]),
        .I1(\j_reg[2]_1 [0]),
        .I2(\j_reg[2]_1 [2]),
        .I3(\j_reg[2]_1 [1]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0000000003030307)) 
    \j[4]_i_1 
       (.I0(\j_reg[2]_1 [0]),
        .I1(j_reg[3]),
        .I2(j_reg[4]),
        .I3(\j_reg[2]_1 [1]),
        .I4(\j_reg[2]_1 [2]),
        .I5(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \j[4]_i_2 
       (.I0(\j_reg[2]_1 [1]),
        .I1(j_reg[3]),
        .I2(\j_reg[2]_1 [0]),
        .I3(\j_reg[2]_1 [2]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1_n_0 ),
        .Q(\j_reg[2]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(\j_reg[2]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(\j_reg[2]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(j_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(j_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    valid_aux_i_1
       (.I0(valid_aux_i_2_n_0),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .I4(count_reg[1]),
        .I5(valid),
        .O(valid_aux_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    valid_aux_i_2
       (.I0(\j_reg[2]_1 [2]),
        .I1(\j_reg[2]_1 [1]),
        .I2(j_reg[4]),
        .I3(count_reg[4]),
        .I4(\j_reg[2]_1 [0]),
        .I5(j_reg[3]),
        .O(valid_aux_i_2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized0
   (valid,
    \j_reg[0]_0 ,
    Q,
    \j_reg[3]_0 ,
    \j_reg[3]_1 ,
    \j_reg[0]_1 ,
    \j_reg[0]_2 ,
    \j_reg[0]_3 ,
    \j_reg[1]_0 ,
    \j_reg[1]_1 ,
    \FSM_onehot_state_reg[3] ,
    \j_reg[1]_2 ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \count_reg_reg[3] ,
    \count_reg_reg[2] ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \j_reg[0]_4 ,
    \j_reg[2]_0 ,
    \j_reg[3]_2 ,
    \j_reg[2]_1 ,
    \j_reg[2]_2 ,
    \j_reg[2]_3 ,
    E,
    \FSM_onehot_state_reg[1] ,
    valid_aux_reg_0,
    clk,
    AR,
    a_in_9,
    \count[4]_i_17_0 ,
    \count[4]_i_17_1 ,
    count1_carry_i_14_0,
    \count_reg[0]_0 ,
    count1_carry_i_4__0_0,
    \count_reg[0]_1 ,
    done_aux_reg_0,
    D,
    \count_reg[0]_2 ,
    a_in_8,
    \count[4]_i_11_0 ,
    \count[4]_i_4 ,
    count1_carry_i_13_0,
    count1_carry_i_13_1,
    count1_carry_i_13_2,
    count1_carry_i_17,
    count1_carry_0,
    count1_carry_1,
    count1_carry_i_4__0_1,
    count1_carry_i_4__0_2,
    count1_carry_i_4__0_3,
    \count[4]_i_11__3_0 ,
    \count[4]_i_11__3_1 ,
    \count[4]_i_7__0_0 ,
    \count_reg_reg[0] ,
    next_out_9,
    \count[4]_i_5__5 );
  output valid;
  output \j_reg[0]_0 ;
  output [3:0]Q;
  output \j_reg[3]_0 ;
  output \j_reg[3]_1 ;
  output \j_reg[0]_1 ;
  output \j_reg[0]_2 ;
  output \j_reg[0]_3 ;
  output \j_reg[1]_0 ;
  output \j_reg[1]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output \j_reg[1]_2 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[2] ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \j_reg[0]_4 ;
  output \j_reg[2]_0 ;
  output \j_reg[3]_2 ;
  output \j_reg[2]_1 ;
  output \j_reg[2]_2 ;
  output \j_reg[2]_3 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]valid_aux_reg_0;
  input clk;
  input [0:0]AR;
  input [42:0]a_in_9;
  input \count[4]_i_17_0 ;
  input \count[4]_i_17_1 ;
  input count1_carry_i_14_0;
  input \count_reg[0]_0 ;
  input count1_carry_i_4__0_0;
  input \count_reg[0]_1 ;
  input done_aux_reg_0;
  input [2:0]D;
  input \count_reg[0]_2 ;
  input [4:0]a_in_8;
  input [1:0]\count[4]_i_11_0 ;
  input \count[4]_i_4 ;
  input count1_carry_i_13_0;
  input count1_carry_i_13_1;
  input count1_carry_i_13_2;
  input [1:0]count1_carry_i_17;
  input count1_carry_0;
  input count1_carry_1;
  input count1_carry_i_4__0_1;
  input count1_carry_i_4__0_2;
  input count1_carry_i_4__0_3;
  input \count[4]_i_11__3_0 ;
  input \count[4]_i_11__3_1 ;
  input \count[4]_i_7__0_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_9;
  input \count[4]_i_5__5 ;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire [3:0]Q;
  wire [4:0]a_in_8;
  wire [42:0]a_in_9;
  wire clk;
  wire count;
  wire count1;
  wire count1_carry_0;
  wire count1_carry_1;
  wire count1_carry__0_i_1__0_n_0;
  wire count1_carry__0_i_2__0_n_0;
  wire count1_carry__0_i_3__0_n_0;
  wire count1_carry__0_i_4__0_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1__0_n_0;
  wire count1_carry__1_i_2__0_n_0;
  wire count1_carry__1_i_3__0_n_0;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_11__0_n_0;
  wire count1_carry_i_13_0;
  wire count1_carry_i_13_1;
  wire count1_carry_i_13_2;
  wire count1_carry_i_14_0;
  wire count1_carry_i_14_n_0;
  wire count1_carry_i_15__3_n_0;
  wire count1_carry_i_16_n_0;
  wire [1:0]count1_carry_i_17;
  wire count1_carry_i_1__0_n_0;
  wire count1_carry_i_2__0_n_0;
  wire count1_carry_i_3__0_n_0;
  wire count1_carry_i_4__0_0;
  wire count1_carry_i_4__0_1;
  wire count1_carry_i_4__0_2;
  wire count1_carry_i_4__0_3;
  wire count1_carry_i_4__0_n_0;
  wire count1_carry_i_6__0_n_0;
  wire count1_carry_i_7__0_n_0;
  wire count1_carry_i_9_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire [1:0]\count[4]_i_11_0 ;
  wire \count[4]_i_11__3_0 ;
  wire \count[4]_i_11__3_1 ;
  wire \count[4]_i_14_n_0 ;
  wire \count[4]_i_15__0_n_0 ;
  wire \count[4]_i_17_0 ;
  wire \count[4]_i_17_1 ;
  wire \count[4]_i_18_n_0 ;
  wire \count[4]_i_19_n_0 ;
  wire \count[4]_i_22__2_n_0 ;
  wire \count[4]_i_24_n_0 ;
  wire \count[4]_i_26_n_0 ;
  wire \count[4]_i_28_n_0 ;
  wire \count[4]_i_29_n_0 ;
  wire \count[4]_i_30__2_n_0 ;
  wire \count[4]_i_30_n_0 ;
  wire \count[4]_i_31_n_0 ;
  wire \count[4]_i_37_n_0 ;
  wire \count[4]_i_38_n_0 ;
  wire \count[4]_i_39_n_0 ;
  wire \count[4]_i_4 ;
  wire \count[4]_i_40__0_n_0 ;
  wire \count[4]_i_41_n_0 ;
  wire \count[4]_i_44_n_0 ;
  wire \count[4]_i_45_n_0 ;
  wire \count[4]_i_47_n_0 ;
  wire \count[4]_i_48_n_0 ;
  wire \count[4]_i_49_n_0 ;
  wire \count[4]_i_5__5 ;
  wire \count[4]_i_7__0_0 ;
  wire \count[4]_i_7__0_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[3] ;
  wire done;
  wire done_aux_i_1__5_n_0;
  wire done_aux_i_3__1_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1__0_n_0 ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[0]_3 ;
  wire \j_reg[0]_4 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[1]_2 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire \j_reg[2]_2 ;
  wire \j_reg[2]_3 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_2 ;
  wire next_out_9;
  wire [3:1]p_0_in__0;
  wire [4:0]plusOp__0;
  wire valid;
  wire valid_aux_i_1__2_n_0;
  wire valid_aux_i_2__0_n_0;
  wire [0:0]valid_aux_reg_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(valid),
        .I1(\count_reg_reg[0] [2]),
        .O(valid_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__1 
       (.I0(\count_reg_reg[0] [3]),
        .I1(next_out_9),
        .I2(done),
        .I3(\count_reg_reg[0] [2]),
        .I4(\count_reg_reg[0] [1]),
        .I5(\count_reg_reg[0] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__2
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [4]),
        .I3(done),
        .I4(\count_reg_reg[0] [2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_1__0_n_0,count1_carry_i_2__0_n_0,count1_carry_i_3__0_n_0,count1_carry_i_4__0_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_1__0_n_0,count1_carry__0_i_2__0_n_0,count1_carry__0_i_3__0_n_0,count1_carry__0_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry__0_i_1__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry__0_i_2__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry__0_i_3__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry__0_i_4__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry__0_i_4__0_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count1_carry__1_i_1__0_n_0,count1_carry__1_i_2__0_n_0,count1_carry__1_i_3__0_n_0}));
  LUT6 #(
    .INIT(64'h0FFF0FFF09990FFF)) 
    count1_carry__1_i_1__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(Q[3]),
        .I3(count1_carry_i_6__0_n_0),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry__1_i_2__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry__1_i_3__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9696966969696996)) 
    count1_carry_i_11__0
       (.I0(count1_carry_i_4__0_1),
        .I1(D[0]),
        .I2(count1_carry_i_4__0_2),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(count1_carry_i_11__0_n_0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    count1_carry_i_13
       (.I0(\count[4]_i_19_n_0 ),
        .I1(\count[4]_i_11_0 [0]),
        .I2(count1_carry_i_14_n_0),
        .I3(\count[4]_i_4 ),
        .I4(a_in_9[40]),
        .O(\j_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h101FFFFF101F0000)) 
    count1_carry_i_14
       (.I0(count1_carry_i_15__3_n_0),
        .I1(count1_carry_i_16_n_0),
        .I2(count1_carry_i_13_0),
        .I3(count1_carry_i_13_1),
        .I4(count1_carry_i_13_2),
        .I5(\count[4]_i_39_n_0 ),
        .O(count1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    count1_carry_i_15__3
       (.I0(a_in_9[40]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[8]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[24]),
        .I5(count1_carry_i_14_0),
        .O(count1_carry_i_15__3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    count1_carry_i_16
       (.I0(a_in_9[0]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[32]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[16]),
        .I5(count1_carry_i_14_0),
        .O(count1_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry_i_1__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF69990FFF)) 
    count1_carry_i_2__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0669066900090996)) 
    count1_carry_i_3__0
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_4__0_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(Q[3]),
        .I4(\count_reg[0]_1 ),
        .I5(count1_carry_i_7__0_n_0),
        .O(count1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8400008501202000)) 
    count1_carry_i_4__0
       (.I0(Q[0]),
        .I1(count1_carry_i_7__0_n_0),
        .I2(count1_carry_0),
        .I3(count1_carry_i_9_n_0),
        .I4(count1_carry_1),
        .I5(count1_carry_i_11__0_n_0),
        .O(count1_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    count1_carry_i_6__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(count1_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    count1_carry_i_7__0
       (.I0(\j_reg[3]_1 ),
        .I1(\j_reg[0]_4 ),
        .I2(D[1]),
        .I3(count1_carry_i_4__0_0),
        .O(count1_carry_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h96)) 
    count1_carry_i_9
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count1_carry_i_4__0_3),
        .O(count1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__0 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(plusOp__0[3]));
  LUT5 #(
    .INIT(32'hCFC05555)) 
    \count[4]_i_10 
       (.I0(a_in_9[42]),
        .I1(\j_reg[1]_0 ),
        .I2(\count[4]_i_11_0 [0]),
        .I3(\count[4]_i_18_n_0 ),
        .I4(\count[4]_i_4 ),
        .O(\j_reg[0]_3 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \count[4]_i_11 
       (.I0(\count[4]_i_18_n_0 ),
        .I1(\count[4]_i_11_0 [0]),
        .I2(\count[4]_i_19_n_0 ),
        .I3(\count[4]_i_4 ),
        .I4(a_in_9[41]),
        .O(\j_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h5555CFC0)) 
    \count[4]_i_11__3 
       (.I0(a_in_8[3]),
        .I1(\count[4]_i_5__5 ),
        .I2(Q[0]),
        .I3(\count[4]_i_7__0_n_0 ),
        .I4(Q[3]),
        .O(\j_reg[0]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_13 
       (.I0(\count[4]_i_22__2_n_0 ),
        .I1(count1_carry_i_13_0),
        .I2(\count[4]_i_24_n_0 ),
        .I3(count1_carry_i_14_0),
        .I4(\count[4]_i_26_n_0 ),
        .O(\j_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hA0A0C0CFAFAFC0CF)) 
    \count[4]_i_14 
       (.I0(\FSM_onehot_state_reg[3]_0 ),
        .I1(\count[4]_i_28_n_0 ),
        .I2(count1_carry_i_13_0),
        .I3(\count[4]_i_29_n_0 ),
        .I4(count1_carry_i_14_0),
        .I5(\count[4]_i_30_n_0 ),
        .O(\count[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[4]_i_15 
       (.I0(a_in_9[22]),
        .I1(\count[4]_i_31_n_0 ),
        .I2(count1_carry_i_14_0),
        .I3(a_in_9[30]),
        .I4(\count[4]_i_17_0 ),
        .I5(a_in_9[14]),
        .O(\FSM_onehot_state_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h00000000D0DDFFFF)) 
    \count[4]_i_15__0 
       (.I0(\j_reg[3]_0 ),
        .I1(a_in_8[2]),
        .I2(a_in_8[1]),
        .I3(\count[4]_i_30__2_n_0 ),
        .I4(\j_reg[2]_0 ),
        .I5(\count[4]_i_7__0_0 ),
        .O(\count[4]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_17 
       (.I0(\FSM_onehot_state_reg[3]_1 ),
        .I1(\FSM_onehot_state_reg[3]_2 ),
        .I2(count1_carry_i_13_0),
        .I3(\count[4]_i_37_n_0 ),
        .I4(count1_carry_i_14_0),
        .I5(\count[4]_i_38_n_0 ),
        .O(\j_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hC55C)) 
    \count[4]_i_18 
       (.I0(\j_reg[1]_1 ),
        .I1(\count[4]_i_39_n_0 ),
        .I2(\count[4]_i_11_0 [1]),
        .I3(\count[4]_i_11_0 [0]),
        .O(\count[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \count[4]_i_19 
       (.I0(\count[4]_i_40__0_n_0 ),
        .I1(\count[4]_i_41_n_0 ),
        .I2(count1_carry_i_13_0),
        .I3(\count[4]_i_22__2_n_0 ),
        .I4(count1_carry_i_13_2),
        .I5(\count[4]_i_14_n_0 ),
        .O(\count[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1111101100000000)) 
    \count[4]_i_1__6 
       (.I0(done),
        .I1(Q[3]),
        .I2(\j_reg[3]_1 ),
        .I3(\count_reg[0]_1 ),
        .I4(\count_reg[0]_0 ),
        .I5(count1),
        .O(count));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[4]_i_21 
       (.I0(a_in_9[23]),
        .I1(\count[4]_i_44_n_0 ),
        .I2(count1_carry_i_14_0),
        .I3(a_in_9[31]),
        .I4(\count[4]_i_17_0 ),
        .I5(a_in_9[15]),
        .O(\FSM_onehot_state_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hE11E)) 
    \count[4]_i_21__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[4]_i_22__2 
       (.I0(a_in_9[21]),
        .I1(\count[4]_i_45_n_0 ),
        .I2(count1_carry_i_14_0),
        .I3(a_in_9[29]),
        .I4(\count[4]_i_17_0 ),
        .I5(a_in_9[13]),
        .O(\count[4]_i_22__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h887E)) 
    \count[4]_i_23__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\j_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h1D001DFF)) 
    \count[4]_i_24 
       (.I0(a_in_9[1]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[33]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[17]),
        .O(\count[4]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \count[4]_i_24__0 
       (.I0(\j_reg[2]_2 ),
        .I1(a_in_8[4]),
        .I2(\j_reg[2]_3 ),
        .I3(a_in_8[0]),
        .O(\j_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h001DFF1D)) 
    \count[4]_i_26 
       (.I0(a_in_9[41]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[9]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[25]),
        .O(\count[4]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00FF1D1D)) 
    \count[4]_i_27 
       (.I0(count1_carry_i_17[0]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[11]),
        .I3(a_in_9[27]),
        .I4(\count[4]_i_17_0 ),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_27__2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\j_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \count[4]_i_28 
       (.I0(a_in_9[19]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[3]),
        .I3(\count[4]_i_17_1 ),
        .I4(a_in_9[35]),
        .O(\count[4]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_29 
       (.I0(a_in_9[23]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[7]),
        .I3(\count[4]_i_17_1 ),
        .I4(a_in_9[39]),
        .O(\count[4]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__0 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(plusOp__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_30 
       (.I0(a_in_9[31]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[15]),
        .O(\count[4]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h522B)) 
    \count[4]_i_30__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\count[4]_i_30__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_31 
       (.I0(a_in_9[6]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[38]),
        .O(\count[4]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h1D001DFF)) 
    \count[4]_i_33 
       (.I0(a_in_9[2]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[34]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[18]),
        .O(\count_reg_reg[2] ));
  LUT5 #(
    .INIT(32'h00FF1D1D)) 
    \count[4]_i_34 
       (.I0(a_in_9[42]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[10]),
        .I3(a_in_9[26]),
        .I4(\count[4]_i_17_0 ),
        .O(\FSM_onehot_state_reg[3] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_35 
       (.I0(a_in_9[28]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[12]),
        .I3(\count[4]_i_17_1 ),
        .I4(count1_carry_i_17[1]),
        .O(\FSM_onehot_state_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_36 
       (.I0(a_in_9[20]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[4]),
        .I3(\count[4]_i_17_1 ),
        .I4(a_in_9[36]),
        .O(\FSM_onehot_state_reg[3]_2 ));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \count[4]_i_37 
       (.I0(a_in_9[0]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[32]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[16]),
        .O(\count[4]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_38 
       (.I0(a_in_9[24]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[8]),
        .I3(\count[4]_i_17_1 ),
        .I4(a_in_9[40]),
        .O(\count[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0C0CFAFAFC0CF)) 
    \count[4]_i_39 
       (.I0(\FSM_onehot_state_reg[3] ),
        .I1(\count[4]_i_47_n_0 ),
        .I2(count1_carry_i_13_0),
        .I3(\count[4]_i_48_n_0 ),
        .I4(count1_carry_i_14_0),
        .I5(\count[4]_i_49_n_0 ),
        .O(\count[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h363633369C9C999C)) 
    \count[4]_i_3__7 
       (.I0(Q[3]),
        .I1(D[2]),
        .I2(\count_reg[0]_2 ),
        .I3(Q[0]),
        .I4(\count[4]_i_7__0_n_0 ),
        .I5(a_in_8[4]),
        .O(\j_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h47444777FFFFFFFF)) 
    \count[4]_i_40__0 
       (.I0(a_in_9[25]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[9]),
        .I3(\count[4]_i_17_1 ),
        .I4(a_in_9[41]),
        .I5(count1_carry_i_14_0),
        .O(\count[4]_i_40__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \count[4]_i_41 
       (.I0(a_in_9[1]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[33]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[17]),
        .I5(count1_carry_i_14_0),
        .O(\count[4]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h5F01)) 
    \count[4]_i_41__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\j_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hA0FE)) 
    \count[4]_i_42 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\j_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h1D001DFF)) 
    \count[4]_i_43 
       (.I0(a_in_9[3]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[35]),
        .I3(\count[4]_i_17_0 ),
        .I4(a_in_9[19]),
        .O(\count_reg_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_44 
       (.I0(a_in_9[7]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[39]),
        .O(\count[4]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_45 
       (.I0(a_in_9[5]),
        .I1(\count[4]_i_17_1 ),
        .I2(a_in_9[37]),
        .O(\count[4]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \count[4]_i_47 
       (.I0(a_in_9[18]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[2]),
        .I3(\count[4]_i_17_1 ),
        .I4(a_in_9[34]),
        .O(\count[4]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_48 
       (.I0(a_in_9[22]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[6]),
        .I3(\count[4]_i_17_1 ),
        .I4(a_in_9[38]),
        .O(\count[4]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_49 
       (.I0(a_in_9[30]),
        .I1(\count[4]_i_17_0 ),
        .I2(a_in_9[14]),
        .O(\count[4]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \count[4]_i_51 
       (.I0(\j_reg[3]_0 ),
        .I1(a_in_8[2]),
        .I2(a_in_8[1]),
        .I3(\count[4]_i_30__2_n_0 ),
        .O(\j_reg[3]_2 ));
  LUT4 #(
    .INIT(16'hCAAC)) 
    \count[4]_i_6 
       (.I0(\j_reg[1]_2 ),
        .I1(\count[4]_i_14_n_0 ),
        .I2(\count[4]_i_11_0 [1]),
        .I3(\count[4]_i_11_0 [0]),
        .O(\j_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000417D417D)) 
    \count[4]_i_7__0 
       (.I0(\count[4]_i_15__0_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\count[4]_i_11__3_0 ),
        .I4(\count[4]_i_11__3_1 ),
        .I5(Q[1]),
        .O(\count[4]_i_7__0_n_0 ));
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
  LUT6 #(
    .INIT(64'hFFFFFFFFAABABBBB)) 
    done_aux_i_1__5
       (.I0(done),
        .I1(Q[3]),
        .I2(done_aux_reg_0),
        .I3(\count_reg[0]_0 ),
        .I4(count1),
        .I5(done_aux_i_3__1_n_0),
        .O(done_aux_i_1__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    done_aux_i_3__1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(done_aux_i_3__1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__5_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__0 
       (.I0(Q[0]),
        .O(\j[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(p_0_in__0[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \j[3]_i_1__0 
       (.I0(done),
        .I1(Q[3]),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    valid_aux_i_1__2
       (.I0(Q[3]),
        .I1(valid_aux_i_2__0_n_0),
        .I2(count1_carry_i_6__0_n_0),
        .I3(valid),
        .O(valid_aux_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    valid_aux_i_2__0
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .I4(count_reg[2]),
        .O(valid_aux_i_2__0_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__2_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized1
   (CO,
    valid,
    \j_reg[2]_0 ,
    \j_reg[3]_0 ,
    \j_reg[0]_0 ,
    \j_reg[3]_1 ,
    \j_reg[0]_1 ,
    \count_reg_reg[3] ,
    \count_reg_reg[0] ,
    \j_reg[3]_2 ,
    \j_reg[3]_3 ,
    \j_reg[0]_2 ,
    \count_reg_reg[2] ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[1] ,
    \count_reg_reg[0]_1 ,
    \j_reg[0]_3 ,
    \j_reg[1]_0 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \count_reg_reg[4] ,
    \j_reg[0]_4 ,
    \j_reg[3]_4 ,
    \j_reg[0]_5 ,
    E,
    \FSM_onehot_state_reg[1] ,
    valid_aux_reg_0,
    \j_reg[1]_1 ,
    \j_reg[1]_2 ,
    count1_carry__0_0,
    count1_carry__1_0,
    S,
    clk,
    AR,
    Q,
    \count[4]_i_5__0_0 ,
    \count[4]_i_5__0_1 ,
    \count[4]_i_5__0_2 ,
    D,
    count1_carry_i_7__1_0,
    \count_reg[0]_0 ,
    count1_carry__1_i_1__6,
    count1_carry_0,
    done_aux_reg_0,
    done_aux_reg_1,
    done_aux_reg_2,
    \count[4]_i_7__0 ,
    \count[4]_i_7__0_0 ,
    a_in_8,
    \count[4]_i_17__0_0 ,
    \count[4]_i_17__0_1 ,
    \count[4]_i_14__0_0 ,
    \count[4]_i_19__0_0 ,
    \count[4]_i_6__3_0 ,
    count1_carry_1,
    count1_carry_2,
    a_in_7,
    count1_carry_i_12__0,
    count1_carry_i_8__1_0,
    \count[4]_i_4__5 ,
    count1_carry_i_16__1_0,
    count1_carry_i_16__1_1,
    count1_carry_i_16__1_2,
    \count_reg_reg[0]_2 ,
    next_out_8);
  output [0:0]CO;
  output valid;
  output \j_reg[2]_0 ;
  output [3:0]\j_reg[3]_0 ;
  output \j_reg[0]_0 ;
  output \j_reg[3]_1 ;
  output \j_reg[0]_1 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[0] ;
  output \j_reg[3]_2 ;
  output \j_reg[3]_3 ;
  output \j_reg[0]_2 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[0]_1 ;
  output \j_reg[0]_3 ;
  output \j_reg[1]_0 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \count_reg_reg[4] ;
  output \j_reg[0]_4 ;
  output \j_reg[3]_4 ;
  output \j_reg[0]_5 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]valid_aux_reg_0;
  output \j_reg[1]_1 ;
  output \j_reg[1]_2 ;
  input [1:0]count1_carry__0_0;
  input [3:0]count1_carry__1_0;
  input [2:0]S;
  input clk;
  input [0:0]AR;
  input [3:0]Q;
  input \count[4]_i_5__0_0 ;
  input \count[4]_i_5__0_1 ;
  input \count[4]_i_5__0_2 ;
  input [4:0]D;
  input count1_carry_i_7__1_0;
  input \count_reg[0]_0 ;
  input count1_carry__1_i_1__6;
  input count1_carry_0;
  input [2:0]done_aux_reg_0;
  input done_aux_reg_1;
  input done_aux_reg_2;
  input \count[4]_i_7__0 ;
  input \count[4]_i_7__0_0 ;
  input [37:0]a_in_8;
  input \count[4]_i_17__0_0 ;
  input \count[4]_i_17__0_1 ;
  input \count[4]_i_14__0_0 ;
  input \count[4]_i_19__0_0 ;
  input \count[4]_i_6__3_0 ;
  input count1_carry_1;
  input count1_carry_2;
  input [2:0]a_in_7;
  input count1_carry_i_12__0;
  input count1_carry_i_8__1_0;
  input \count[4]_i_4__5 ;
  input count1_carry_i_16__1_0;
  input count1_carry_i_16__1_1;
  input count1_carry_i_16__1_2;
  input [4:0]\count_reg_reg[0]_2 ;
  input next_out_8;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire [3:0]Q;
  wire [2:0]S;
  wire [2:0]a_in_7;
  wire [37:0]a_in_8;
  wire clk;
  wire count;
  wire count1_carry_0;
  wire count1_carry_1;
  wire count1_carry_2;
  wire [1:0]count1_carry__0_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire [3:0]count1_carry__1_0;
  wire count1_carry__1_i_1__6;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_11__1_n_0;
  wire count1_carry_i_12__0;
  wire count1_carry_i_14__0_n_0;
  wire count1_carry_i_15_n_0;
  wire count1_carry_i_16__0_n_0;
  wire count1_carry_i_16__1_0;
  wire count1_carry_i_16__1_1;
  wire count1_carry_i_16__1_2;
  wire count1_carry_i_17__0_n_0;
  wire count1_carry_i_18__0_n_0;
  wire count1_carry_i_18_n_0;
  wire count1_carry_i_25_n_0;
  wire count1_carry_i_3__6_n_0;
  wire count1_carry_i_4__1_n_0;
  wire count1_carry_i_7__1_0;
  wire count1_carry_i_8__1_0;
  wire count1_carry_i_8__1_n_0;
  wire count1_carry_i_9__4_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[4]_i_12__0_n_0 ;
  wire \count[4]_i_13__0_n_0 ;
  wire \count[4]_i_14__0_0 ;
  wire \count[4]_i_14__0_n_0 ;
  wire \count[4]_i_17__0_0 ;
  wire \count[4]_i_17__0_1 ;
  wire \count[4]_i_18__0_n_0 ;
  wire \count[4]_i_19__0_0 ;
  wire \count[4]_i_19__0_n_0 ;
  wire \count[4]_i_22_n_0 ;
  wire \count[4]_i_25__0_n_0 ;
  wire \count[4]_i_26__0_n_0 ;
  wire \count[4]_i_28__0_n_0 ;
  wire \count[4]_i_29__0_n_0 ;
  wire \count[4]_i_32_n_0 ;
  wire \count[4]_i_33__0_n_0 ;
  wire \count[4]_i_34__0_n_0 ;
  wire \count[4]_i_35__0_n_0 ;
  wire \count[4]_i_36__0_n_0 ;
  wire \count[4]_i_37__0_n_0 ;
  wire \count[4]_i_38__0_n_0 ;
  wire \count[4]_i_39__0_n_0 ;
  wire \count[4]_i_40_n_0 ;
  wire \count[4]_i_43__0_n_0 ;
  wire \count[4]_i_44__0_n_0 ;
  wire \count[4]_i_45__0_n_0 ;
  wire \count[4]_i_46__0_n_0 ;
  wire \count[4]_i_47__0_n_0 ;
  wire \count[4]_i_48__0_n_0 ;
  wire \count[4]_i_49__0_n_0 ;
  wire \count[4]_i_4__5 ;
  wire \count[4]_i_50_n_0 ;
  wire \count[4]_i_5__0_0 ;
  wire \count[4]_i_5__0_1 ;
  wire \count[4]_i_5__0_2 ;
  wire \count[4]_i_6__3_0 ;
  wire \count[4]_i_6__4_n_0 ;
  wire \count[4]_i_7__0 ;
  wire \count[4]_i_7__0_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [4:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[4] ;
  wire done;
  wire done_aux_i_1__4_n_0;
  wire [2:0]done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_aux_reg_2;
  wire j0;
  wire \j[0]_i_1__1_n_0 ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[0]_3 ;
  wire \j_reg[0]_4 ;
  wire \j_reg[0]_5 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[1]_2 ;
  wire \j_reg[2]_0 ;
  wire [3:0]\j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_2 ;
  wire \j_reg[3]_3 ;
  wire \j_reg[3]_4 ;
  wire next_out_8;
  wire [3:1]p_0_in__1;
  wire [4:0]plusOp__1;
  wire valid;
  wire valid_aux_i_1__0_n_0;
  wire valid_aux_i_2__1_n_0;
  wire valid_aux_i_3_n_0;
  wire [0:0]valid_aux_reg_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(valid),
        .I1(\count_reg_reg[0]_2 [2]),
        .O(valid_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__3 
       (.I0(\count_reg_reg[0]_2 [3]),
        .I1(next_out_8),
        .I2(done),
        .I3(\count_reg_reg[0]_2 [2]),
        .I4(\count_reg_reg[0]_2 [1]),
        .I5(\count_reg_reg[0]_2 [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__4
       (.I0(\count_reg_reg[0]_2 [1]),
        .I1(\count_reg_reg[0]_2 [0]),
        .I2(\count_reg_reg[0]_2 [4]),
        .I3(done),
        .I4(\count_reg_reg[0]_2 [2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_0,count1_carry_i_3__6_n_0,count1_carry_i_4__1_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S(count1_carry__1_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],CO,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,S}));
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_10__0
       (.I0(\j_reg[3]_3 ),
        .I1(done_aux_reg_0[1]),
        .O(\count_reg_reg[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_11__1
       (.I0(\j_reg[3]_0 [1]),
        .I1(count1_carry_i_18__0_n_0),
        .O(count1_carry_i_11__1_n_0));
  LUT5 #(
    .INIT(32'hBBBB888B)) 
    count1_carry_i_12__5
       (.I0(a_in_8[33]),
        .I1(Q[3]),
        .I2(\count[4]_i_18__0_n_0 ),
        .I3(Q[0]),
        .I4(count1_carry_i_14__0_n_0),
        .O(\j_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h022F)) 
    count1_carry_i_13__0
       (.I0(\j_reg[3]_2 ),
        .I1(done_aux_reg_0[0]),
        .I2(done_aux_reg_0[1]),
        .I3(\j_reg[3]_3 ),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hD0101010D0D010D0)) 
    count1_carry_i_14__0
       (.I0(\count[4]_i_40_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(count1_carry_i_15_n_0),
        .I5(count1_carry_i_16__0_n_0),
        .O(count1_carry_i_14__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    count1_carry_i_15
       (.I0(a_in_8[23]),
        .I1(a_in_8[8]),
        .I2(\count[4]_i_7__0_0 ),
        .I3(a_in_8[15]),
        .I4(\count[4]_i_17__0_1 ),
        .I5(count1_carry_i_17__0_n_0),
        .O(count1_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    count1_carry_i_15__0
       (.I0(a_in_7[0]),
        .I1(\j_reg[0]_0 ),
        .I2(count1_carry_i_8__1_0),
        .I3(count1_carry_i_25_n_0),
        .I4(\j_reg[3]_0 [0]),
        .O(\j_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h30305F503F3F5F50)) 
    count1_carry_i_16__0
       (.I0(a_in_8[12]),
        .I1(a_in_8[27]),
        .I2(\count[4]_i_7__0_0 ),
        .I3(count1_carry_i_18_n_0),
        .I4(\count[4]_i_17__0_1 ),
        .I5(a_in_8[19]),
        .O(count1_carry_i_16__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    count1_carry_i_16__1
       (.I0(a_in_7[1]),
        .I1(\j_reg[0]_0 ),
        .I2(count1_carry_i_12__0),
        .I3(\j_reg[3]_0 [0]),
        .I4(count1_carry_i_25_n_0),
        .O(\j_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_17__0
       (.I0(a_in_8[0]),
        .I1(\count[4]_i_14__0_0 ),
        .I2(a_in_8[30]),
        .O(count1_carry_i_17__0_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    count1_carry_i_18
       (.I0(a_in_8[34]),
        .I1(\count[4]_i_14__0_0 ),
        .I2(\count[4]_i_17__0_0 ),
        .I3(a_in_8[4]),
        .O(count1_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h00000000FFF800F8)) 
    count1_carry_i_18__0
       (.I0(\j_reg[3]_0 [0]),
        .I1(count1_carry_i_25_n_0),
        .I2(count1_carry_i_8__1_0),
        .I3(\j_reg[0]_0 ),
        .I4(a_in_7[0]),
        .I5(D[0]),
        .O(count1_carry_i_18__0_n_0));
  LUT6 #(
    .INIT(64'hFF0D0EFF000D0E00)) 
    count1_carry_i_25
       (.I0(\j_reg[3]_0 [2]),
        .I1(count1_carry_i_16__1_0),
        .I2(count1_carry_i_16__1_1),
        .I3(\j_reg[3]_0 [1]),
        .I4(\j_reg[3]_0 [0]),
        .I5(count1_carry_i_16__1_2),
        .O(count1_carry_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hA56A)) 
    count1_carry_i_28
       (.I0(\j_reg[3]_0 [3]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [0]),
        .I3(\j_reg[3]_0 [1]),
        .O(\j_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h39)) 
    count1_carry_i_31
       (.I0(\j_reg[3]_0 [0]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [1]),
        .O(\j_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h1E70)) 
    count1_carry_i_32__0
       (.I0(\j_reg[3]_0 [3]),
        .I1(\j_reg[3]_0 [0]),
        .I2(\j_reg[3]_0 [2]),
        .I3(\j_reg[3]_0 [1]),
        .O(\j_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0006000099696690)) 
    count1_carry_i_3__6
       (.I0(D[3]),
        .I1(count1_carry__1_i_1__6),
        .I2(count1_carry_0),
        .I3(\count_reg_reg[3] ),
        .I4(count1_carry_i_8__1_n_0),
        .I5(\j_reg[3]_0 [3]),
        .O(count1_carry_i_3__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h3780)) 
    count1_carry_i_42
       (.I0(\j_reg[3]_0 [1]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [0]),
        .I3(\j_reg[3]_0 [3]),
        .O(\j_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hC87F)) 
    count1_carry_i_47
       (.I0(\j_reg[3]_0 [1]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [0]),
        .I3(\j_reg[3]_0 [3]),
        .O(\j_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0090A00001080801)) 
    count1_carry_i_4__1
       (.I0(count1_carry_i_9__4_n_0),
        .I1(\count_reg_reg[3] ),
        .I2(count1_carry_1),
        .I3(count1_carry_i_11__1_n_0),
        .I4(count1_carry_2),
        .I5(\j_reg[3]_0 [0]),
        .O(count1_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDD0FDD00000)) 
    count1_carry_i_5__0
       (.I0(\j_reg[3]_2 ),
        .I1(done_aux_reg_0[0]),
        .I2(done_aux_reg_0[1]),
        .I3(\j_reg[3]_3 ),
        .I4(\j_reg[0]_2 ),
        .I5(done_aux_reg_0[2]),
        .O(\count_reg_reg[0] ));
  LUT4 #(
    .INIT(16'h6A56)) 
    count1_carry_i_7__1
       (.I0(\count_reg_reg[4] ),
        .I1(D[3]),
        .I2(count1_carry__1_i_1__6),
        .I3(count1_carry_i_8__1_n_0),
        .O(\count_reg_reg[3] ));
  LUT5 #(
    .INIT(32'h008E8EFF)) 
    count1_carry_i_8__1
       (.I0(count1_carry_i_18__0_n_0),
        .I1(\j_reg[0]_1 ),
        .I2(D[1]),
        .I3(D[2]),
        .I4(count1_carry_i_7__1_0),
        .O(count1_carry_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    count1_carry_i_9__4
       (.I0(count1_carry_i_18__0_n_0),
        .I1(\j_reg[0]_1 ),
        .I2(D[1]),
        .I3(\j_reg[3]_0 [2]),
        .I4(D[2]),
        .I5(count1_carry_i_7__1_0),
        .O(count1_carry_i_9__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(count_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__1 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(plusOp__1[3]));
  LUT5 #(
    .INIT(32'h5555CCF0)) 
    \count[4]_i_10__2 
       (.I0(a_in_8[35]),
        .I1(\count[4]_i_19__0_n_0 ),
        .I2(\j_reg[1]_0 ),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\j_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[4]_i_12__0 
       (.I0(a_in_8[26]),
        .I1(a_in_8[11]),
        .I2(\count[4]_i_7__0_0 ),
        .I3(\count[4]_i_22_n_0 ),
        .I4(\count[4]_i_17__0_1 ),
        .I5(a_in_8[18]),
        .O(\count[4]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h303F5F5F303F5050)) 
    \count[4]_i_13__0 
       (.I0(a_in_8[14]),
        .I1(a_in_8[29]),
        .I2(\count[4]_i_7__0_0 ),
        .I3(a_in_8[22]),
        .I4(\count[4]_i_17__0_1 ),
        .I5(\count[4]_i_6__3_0 ),
        .O(\count[4]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_14__0 
       (.I0(\count[4]_i_25__0_n_0 ),
        .I1(\count[4]_i_26__0_n_0 ),
        .I2(\count[4]_i_7__0 ),
        .I3(\count[4]_i_28__0_n_0 ),
        .I4(\count[4]_i_7__0_0 ),
        .I5(\count[4]_i_29__0_n_0 ),
        .O(\count[4]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \count[4]_i_16__0 
       (.I0(a_in_8[17]),
        .I1(\count[4]_i_32_n_0 ),
        .I2(\count[4]_i_7__0_0 ),
        .I3(a_in_8[25]),
        .I4(\count[4]_i_17__0_1 ),
        .I5(a_in_8[10]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h5050C0CF5F5FC0CF)) 
    \count[4]_i_17__0 
       (.I0(\count[4]_i_33__0_n_0 ),
        .I1(\count[4]_i_34__0_n_0 ),
        .I2(\count[4]_i_7__0 ),
        .I3(\count[4]_i_35__0_n_0 ),
        .I4(\count[4]_i_7__0_0 ),
        .I5(\count[4]_i_36__0_n_0 ),
        .O(\j_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \count[4]_i_18__0 
       (.I0(\count[4]_i_37__0_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\count[4]_i_38__0_n_0 ),
        .I4(Q[1]),
        .I5(\count[4]_i_39__0_n_0 ),
        .O(\count[4]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_19__0 
       (.I0(\count[4]_i_40_n_0 ),
        .I1(Q[1]),
        .I2(\j_reg[0]_3 ),
        .O(\count[4]_i_19__0_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \count[4]_i_1__0 
       (.I0(\j_reg[0]_0 ),
        .I1(done),
        .I2(\count_reg[0]_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_20__0 
       (.I0(\count[4]_i_39__0_n_0 ),
        .I1(Q[1]),
        .I2(\count[4]_i_14__0_n_0 ),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_22 
       (.I0(a_in_8[3]),
        .I1(\count[4]_i_17__0_0 ),
        .I2(a_in_8[33]),
        .O(\count[4]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \count[4]_i_25__0 
       (.I0(a_in_8[13]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[28]),
        .O(\count[4]_i_25__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \count[4]_i_26__0 
       (.I0(a_in_8[5]),
        .I1(\count[4]_i_14__0_0 ),
        .I2(a_in_8[35]),
        .I3(\count[4]_i_17__0_1 ),
        .I4(a_in_8[20]),
        .O(\count[4]_i_26__0_n_0 ));
  LUT5 #(
    .INIT(32'h470047FF)) 
    \count[4]_i_28__0 
       (.I0(a_in_8[1]),
        .I1(\count[4]_i_17__0_0 ),
        .I2(a_in_8[31]),
        .I3(\count[4]_i_17__0_1 ),
        .I4(a_in_8[16]),
        .O(\count[4]_i_28__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \count[4]_i_29__0 
       (.I0(a_in_8[24]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[9]),
        .O(\count[4]_i_29__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h0000000000FF4747)) 
    \count[4]_i_31__0 
       (.I0(a_in_8[36]),
        .I1(\count[4]_i_17__0_0 ),
        .I2(a_in_8[6]),
        .I3(a_in_8[21]),
        .I4(\count[4]_i_17__0_1 ),
        .I5(\count[4]_i_7__0_0 ),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_32 
       (.I0(a_in_8[2]),
        .I1(\count[4]_i_17__0_0 ),
        .I2(a_in_8[32]),
        .O(\count[4]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_33__0 
       (.I0(a_in_8[27]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[12]),
        .O(\count[4]_i_33__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000D0DDFFFFD0DD)) 
    \count[4]_i_34__0 
       (.I0(a_in_8[34]),
        .I1(\count[4]_i_14__0_0 ),
        .I2(\count[4]_i_17__0_0 ),
        .I3(a_in_8[4]),
        .I4(\count[4]_i_17__0_1 ),
        .I5(a_in_8[19]),
        .O(\count[4]_i_34__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_35__0 
       (.I0(a_in_8[23]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[8]),
        .O(\count[4]_i_35__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[4]_i_36__0 
       (.I0(a_in_8[0]),
        .I1(\count[4]_i_17__0_0 ),
        .I2(a_in_8[30]),
        .I3(\count[4]_i_17__0_1 ),
        .I4(a_in_8[15]),
        .O(\count[4]_i_36__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \count[4]_i_37__0 
       (.I0(a_in_8[16]),
        .I1(\count[4]_i_43__0_n_0 ),
        .I2(a_in_8[24]),
        .I3(\count[4]_i_17__0_1 ),
        .I4(a_in_8[9]),
        .I5(\count[4]_i_7__0_0 ),
        .O(\count[4]_i_37__0_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \count[4]_i_38__0 
       (.I0(a_in_8[13]),
        .I1(a_in_8[28]),
        .I2(\count[4]_i_7__0_0 ),
        .I3(\count[4]_i_44__0_n_0 ),
        .I4(\count[4]_i_17__0_1 ),
        .I5(a_in_8[20]),
        .O(\count[4]_i_38__0_n_0 ));
  LUT6 #(
    .INIT(64'hCFC05F5FCFC05050)) 
    \count[4]_i_39__0 
       (.I0(\count[4]_i_45__0_n_0 ),
        .I1(\count[4]_i_46__0_n_0 ),
        .I2(\count[4]_i_7__0 ),
        .I3(\count[4]_i_47__0_n_0 ),
        .I4(\count[4]_i_7__0_0 ),
        .I5(\count[4]_i_48__0_n_0 ),
        .O(\count[4]_i_39__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \count[4]_i_3__5 
       (.I0(\j_reg[3]_0 [0]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [1]),
        .I3(\j_reg[3]_0 [3]),
        .O(\j_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hCFC05F50CFCF5F50)) 
    \count[4]_i_40 
       (.I0(\count[4]_i_49__0_n_0 ),
        .I1(\count[4]_i_50_n_0 ),
        .I2(\count[4]_i_7__0 ),
        .I3(\FSM_onehot_state_reg[3] ),
        .I4(\count[4]_i_7__0_0 ),
        .I5(\count[4]_i_19__0_0 ),
        .O(\count[4]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_43__0 
       (.I0(a_in_8[1]),
        .I1(\count[4]_i_14__0_0 ),
        .I2(a_in_8[31]),
        .O(\count[4]_i_43__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_44__0 
       (.I0(a_in_8[5]),
        .I1(\count[4]_i_14__0_0 ),
        .I2(a_in_8[35]),
        .O(\count[4]_i_44__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_45__0 
       (.I0(a_in_8[18]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[3]),
        .I3(\count[4]_i_14__0_0 ),
        .I4(a_in_8[33]),
        .O(\count[4]_i_45__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \count[4]_i_46__0 
       (.I0(a_in_8[26]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[11]),
        .O(\count[4]_i_46__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \count[4]_i_47__0 
       (.I0(a_in_8[14]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[29]),
        .O(\count[4]_i_47__0_n_0 ));
  LUT6 #(
    .INIT(64'h4447444744477777)) 
    \count[4]_i_48__0 
       (.I0(a_in_8[22]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(\count[4]_i_14__0_0 ),
        .I3(a_in_8[37]),
        .I4(\count[4]_i_17__0_0 ),
        .I5(a_in_8[7]),
        .O(\count[4]_i_48__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_49__0 
       (.I0(a_in_8[17]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[2]),
        .I3(\count[4]_i_14__0_0 ),
        .I4(a_in_8[32]),
        .O(\count[4]_i_49__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \count[4]_i_50 
       (.I0(a_in_8[25]),
        .I1(\count[4]_i_17__0_1 ),
        .I2(a_in_8[10]),
        .O(\count[4]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h55556665AAAA6665)) 
    \count[4]_i_5__0 
       (.I0(D[4]),
        .I1(\count[4]_i_6__4_n_0 ),
        .I2(\j_reg[3]_0 [0]),
        .I3(\count[4]_i_4__5 ),
        .I4(\j_reg[0]_0 ),
        .I5(a_in_7[2]),
        .O(\count_reg_reg[4] ));
  LUT6 #(
    .INIT(64'h000004070F0F0407)) 
    \count[4]_i_6__3 
       (.I0(\count[4]_i_12__0_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count[4]_i_13__0_n_0 ),
        .I4(Q[1]),
        .I5(\count[4]_i_14__0_n_0 ),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB1BBB11100000000)) 
    \count[4]_i_6__4 
       (.I0(\j_reg[3]_0 [1]),
        .I1(\count[4]_i_5__0_0 ),
        .I2(\count[4]_i_5__0_1 ),
        .I3(\j_reg[3]_0 [2]),
        .I4(\count[4]_i_5__0_2 ),
        .I5(\j_reg[3]_0 [0]),
        .O(\count[4]_i_6__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_8__0 
       (.I0(\j_reg[3]_2 ),
        .I1(done_aux_reg_0[0]),
        .O(\count_reg_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \count[4]_i_9__3 
       (.I0(a_in_8[34]),
        .I1(Q[3]),
        .I2(\count[4]_i_18__0_n_0 ),
        .I3(Q[0]),
        .I4(\count[4]_i_19__0_n_0 ),
        .O(\j_reg[3]_3 ));
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
  LUT6 #(
    .INIT(64'hFFFFFFFF008000FF)) 
    done_aux_i_1__4
       (.I0(\j_reg[3]_0 [1]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [0]),
        .I3(\j_reg[3]_0 [3]),
        .I4(\count_reg[0]_0 ),
        .I5(done),
        .O(done_aux_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000096)) 
    done_aux_i_2__0
       (.I0(\j_reg[0]_2 ),
        .I1(done_aux_reg_0[2]),
        .I2(\count_reg_reg[0]_0 ),
        .I3(\count_reg_reg[1] ),
        .I4(done_aux_reg_1),
        .I5(done_aux_reg_2),
        .O(\count_reg_reg[2] ));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__4_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__1 
       (.I0(\j_reg[3]_0 [0]),
        .O(\j[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__1 
       (.I0(\j_reg[3]_0 [1]),
        .I1(\j_reg[3]_0 [0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__1 
       (.I0(\j_reg[3]_0 [2]),
        .I1(\j_reg[3]_0 [0]),
        .I2(\j_reg[3]_0 [1]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'h01111111)) 
    \j[3]_i_1__1 
       (.I0(done),
        .I1(\j_reg[3]_0 [3]),
        .I2(\j_reg[3]_0 [1]),
        .I3(\j_reg[3]_0 [2]),
        .I4(\j_reg[3]_0 [0]),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__0 
       (.I0(\j_reg[3]_0 [0]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [1]),
        .O(p_0_in__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__1_n_0 ),
        .Q(\j_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(\j_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(\j_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(\j_reg[3]_0 [3]));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    valid_aux_i_1__0
       (.I0(valid_aux_i_2__1_n_0),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(valid_aux_i_3_n_0),
        .I4(valid),
        .O(valid_aux_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h80)) 
    valid_aux_i_2__1
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(valid_aux_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    valid_aux_i_3
       (.I0(\j_reg[3]_0 [0]),
        .I1(\j_reg[3]_0 [2]),
        .I2(\j_reg[3]_0 [1]),
        .I3(\j_reg[3]_0 [3]),
        .O(valid_aux_i_3_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__0_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized2
   (valid,
    \j_reg[0]_0 ,
    \j_reg[1]_0 ,
    \j_reg[0]_1 ,
    \j_reg[1]_1 ,
    \j_reg[3]_0 ,
    \j_reg[3]_1 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \j_reg[2]_0 ,
    \j_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_1 ,
    \j_reg[0]_2 ,
    \j_reg[0]_3 ,
    \j_reg[3]_3 ,
    E,
    \FSM_onehot_state_reg[1] ,
    valid_aux_reg_0,
    \j_reg[3]_4 ,
    clk,
    AR,
    \count[4]_i_3__0_0 ,
    \count[4]_i_3__0_1 ,
    count1_carry_i_12__1_0,
    \count[4]_i_8__2_0 ,
    \count_reg[0]_0 ,
    Q,
    \count[4]_i_5__0 ,
    count1_carry__1_i_3__6,
    \count[4]_i_6__4 ,
    \count[4]_i_6__4_0 ,
    a_in_7,
    count1_carry_i_25,
    count1_carry_i_41_0,
    count1_carry_i_19_0,
    count1_carry_0,
    D,
    a_in_6,
    \count[4]_i_3__0_2 ,
    \count[4]_i_3__0_3 ,
    \count[4]_i_7__4_0 ,
    \count[4]_i_7__4_1 ,
    \count[4]_i_8__2_1 ,
    count1_carry_i_12__1_1,
    \count[4]_i_22__0_0 ,
    \count[4]_i_21__1_0 ,
    \count_reg_reg[0] ,
    next_out_7);
  output valid;
  output \j_reg[0]_0 ;
  output \j_reg[1]_0 ;
  output \j_reg[0]_1 ;
  output \j_reg[1]_1 ;
  output \j_reg[3]_0 ;
  output \j_reg[3]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \j_reg[2]_0 ;
  output \j_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \j_reg[0]_2 ;
  output \j_reg[0]_3 ;
  output \j_reg[3]_3 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]valid_aux_reg_0;
  output \j_reg[3]_4 ;
  input clk;
  input [0:0]AR;
  input \count[4]_i_3__0_0 ;
  input \count[4]_i_3__0_1 ;
  input count1_carry_i_12__1_0;
  input \count[4]_i_8__2_0 ;
  input \count_reg[0]_0 ;
  input [4:0]Q;
  input [2:0]\count[4]_i_5__0 ;
  input count1_carry__1_i_3__6;
  input \count[4]_i_6__4 ;
  input \count[4]_i_6__4_0 ;
  input [29:0]a_in_7;
  input count1_carry_i_25;
  input count1_carry_i_41_0;
  input count1_carry_i_19_0;
  input count1_carry_0;
  input [4:0]D;
  input [4:0]a_in_6;
  input \count[4]_i_3__0_2 ;
  input \count[4]_i_3__0_3 ;
  input \count[4]_i_7__4_0 ;
  input \count[4]_i_7__4_1 ;
  input \count[4]_i_8__2_1 ;
  input count1_carry_i_12__1_1;
  input \count[4]_i_22__0_0 ;
  input \count[4]_i_21__1_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_7;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire [4:0]Q;
  wire [4:0]a_in_6;
  wire [29:0]a_in_7;
  wire clk;
  wire count;
  wire count1;
  wire count1_carry_0;
  wire count1_carry__0_i_1__7_n_0;
  wire count1_carry__0_i_2__7_n_0;
  wire count1_carry__0_i_3__7_n_0;
  wire count1_carry__0_i_4__7_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1__7_n_0;
  wire count1_carry__1_i_2__7_n_0;
  wire count1_carry__1_i_3__6;
  wire count1_carry__1_i_3__7_n_0;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_10__1_n_0;
  wire count1_carry_i_11__2_n_0;
  wire count1_carry_i_12__1_0;
  wire count1_carry_i_12__1_1;
  wire count1_carry_i_12__1_n_0;
  wire count1_carry_i_13__2_n_0;
  wire count1_carry_i_14__1_n_0;
  wire count1_carry_i_19_0;
  wire count1_carry_i_19_n_0;
  wire count1_carry_i_1__7_n_0;
  wire count1_carry_i_20_n_0;
  wire count1_carry_i_21_n_0;
  wire count1_carry_i_25;
  wire count1_carry_i_27_n_0;
  wire count1_carry_i_29_n_0;
  wire count1_carry_i_2__7_n_0;
  wire count1_carry_i_30_n_0;
  wire count1_carry_i_33_n_0;
  wire count1_carry_i_34_n_0;
  wire count1_carry_i_35_n_0;
  wire count1_carry_i_37_n_0;
  wire count1_carry_i_38_n_0;
  wire count1_carry_i_39_n_0;
  wire count1_carry_i_3__7_n_0;
  wire count1_carry_i_40_n_0;
  wire count1_carry_i_41_0;
  wire count1_carry_i_43_n_0;
  wire count1_carry_i_44_n_0;
  wire count1_carry_i_45_n_0;
  wire count1_carry_i_46_n_0;
  wire count1_carry_i_4__2_n_0;
  wire count1_carry_i_5__2_n_0;
  wire count1_carry_i_6__2_n_0;
  wire count1_carry_i_7__2_n_0;
  wire count1_carry_i_9__0_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[4]_i_10__0_n_0 ;
  wire \count[4]_i_11__0_n_0 ;
  wire \count[4]_i_13__1_n_0 ;
  wire \count[4]_i_18__1_n_0 ;
  wire \count[4]_i_19__1_n_0 ;
  wire \count[4]_i_20__2_n_0 ;
  wire \count[4]_i_21__1_0 ;
  wire \count[4]_i_21__1_n_0 ;
  wire \count[4]_i_22__0_0 ;
  wire \count[4]_i_22__0_n_0 ;
  wire \count[4]_i_29__1_n_0 ;
  wire \count[4]_i_32__0_n_0 ;
  wire \count[4]_i_3__0_0 ;
  wire \count[4]_i_3__0_1 ;
  wire \count[4]_i_3__0_2 ;
  wire \count[4]_i_3__0_3 ;
  wire \count[4]_i_3__0_n_0 ;
  wire \count[4]_i_4__1_n_0 ;
  wire [2:0]\count[4]_i_5__0 ;
  wire \count[4]_i_6__1_n_0 ;
  wire \count[4]_i_6__4 ;
  wire \count[4]_i_6__4_0 ;
  wire \count[4]_i_7__4_0 ;
  wire \count[4]_i_7__4_1 ;
  wire \count[4]_i_7__4_n_0 ;
  wire \count[4]_i_8__2_0 ;
  wire \count[4]_i_8__2_1 ;
  wire \count[4]_i_8__2_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux_i_1__6_n_0;
  wire j0;
  wire \j[0]_i_1__2_n_0 ;
  wire [3:0]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[0]_3 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_2 ;
  wire \j_reg[3]_3 ;
  wire \j_reg[3]_4 ;
  wire next_out_7;
  wire [3:1]p_0_in__2;
  wire [4:0]plusOp__2;
  wire valid;
  wire valid_aux_i_1__1_n_0;
  wire valid_aux_i_2__7_n_0;
  wire [0:0]valid_aux_reg_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(valid),
        .I1(\count_reg_reg[0] [2]),
        .O(valid_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__4 
       (.I0(\count_reg_reg[0] [3]),
        .I1(next_out_7),
        .I2(done),
        .I3(\count_reg_reg[0] [2]),
        .I4(\count_reg_reg[0] [1]),
        .I5(\count_reg_reg[0] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__5
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [4]),
        .I3(done),
        .I4(\count_reg_reg[0] [2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_1__7_n_0,count1_carry_i_2__7_n_0,count1_carry_i_3__7_n_0,count1_carry_i_4__2_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_1__7_n_0,count1_carry__0_i_2__7_n_0,count1_carry__0_i_3__7_n_0,count1_carry__0_i_4__7_n_0}));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry__0_i_1__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry__0_i_1__7_n_0));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry__0_i_2__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry__0_i_2__7_n_0));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry__0_i_3__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry__0_i_3__7_n_0));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry__0_i_4__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry__0_i_4__7_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count1_carry__1_i_1__7_n_0,count1_carry__1_i_2__7_n_0,count1_carry__1_i_3__7_n_0}));
  LUT6 #(
    .INIT(64'h000F000F000F0009)) 
    count1_carry__1_i_1__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(j_reg[3]),
        .I3(count1_carry_i_6__2_n_0),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry__1_i_1__7_n_0));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry__1_i_2__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry__1_i_2__7_n_0));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry__1_i_3__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry__1_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_10__1
       (.I0(\count[4]_i_10__0_n_0 ),
        .I1(D[1]),
        .O(count1_carry_i_10__1_n_0));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    count1_carry_i_11__2
       (.I0(count1_carry_i_13__2_n_0),
        .I1(D[2]),
        .I2(\count[4]_i_11__0_n_0 ),
        .I3(j_reg[1]),
        .I4(j_reg[0]),
        .I5(j_reg[2]),
        .O(count1_carry_i_11__2_n_0));
  LUT6 #(
    .INIT(64'h00000000E2E2E2EE)) 
    count1_carry_i_12__1
       (.I0(a_in_6[0]),
        .I1(\count[4]_i_6__1_n_0 ),
        .I2(\count[4]_i_20__2_n_0 ),
        .I3(j_reg[0]),
        .I4(\count[4]_i_19__1_n_0 ),
        .I5(D[0]),
        .O(count1_carry_i_12__1_n_0));
  LUT6 #(
    .INIT(64'h282828EBEBEB28EB)) 
    count1_carry_i_13__1
       (.I0(count1_carry_i_19_n_0),
        .I1(\count[4]_i_5__0 [1]),
        .I2(\count[4]_i_5__0 [0]),
        .I3(count1_carry_i_20_n_0),
        .I4(\count[4]_i_5__0 [2]),
        .I5(count1_carry_i_21_n_0),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    count1_carry_i_13__2
       (.I0(count1_carry_i_12__1_n_0),
        .I1(D[1]),
        .I2(\count[4]_i_10__0_n_0 ),
        .O(count1_carry_i_13__2_n_0));
  LUT4 #(
    .INIT(16'hC55C)) 
    count1_carry_i_14__1
       (.I0(\j_reg[3]_0 ),
        .I1(\j_reg[3]_1 ),
        .I2(\count[4]_i_5__0 [1]),
        .I3(\count[4]_i_5__0 [0]),
        .O(count1_carry_i_14__1_n_0));
  LUT5 #(
    .INIT(32'h77444747)) 
    count1_carry_i_17__1
       (.I0(Q[2]),
        .I1(count1_carry__1_i_3__6),
        .I2(\j_reg[1]_1 ),
        .I3(count1_carry_i_14__1_n_0),
        .I4(\count[4]_i_5__0 [0]),
        .O(\j_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h8B8B00FF)) 
    count1_carry_i_19
       (.I0(count1_carry_i_27_n_0),
        .I1(\count[4]_i_6__4 ),
        .I2(count1_carry_i_29_n_0),
        .I3(count1_carry_i_30_n_0),
        .I4(\count[4]_i_6__4_0 ),
        .O(count1_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry_i_1__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry_i_1__7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    count1_carry_i_20
       (.I0(a_in_7[10]),
        .I1(a_in_7[26]),
        .I2(\count[4]_i_6__4 ),
        .I3(a_in_7[18]),
        .I4(count1_carry_i_25),
        .I5(count1_carry_i_33_n_0),
        .O(count1_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    count1_carry_i_21
       (.I0(a_in_7[6]),
        .I1(a_in_7[22]),
        .I2(\count[4]_i_6__4 ),
        .I3(a_in_7[14]),
        .I4(count1_carry_i_25),
        .I5(Q[0]),
        .O(count1_carry_i_21_n_0));
  LUT5 #(
    .INIT(32'hFF008D8D)) 
    count1_carry_i_22
       (.I0(\count[4]_i_6__4 ),
        .I1(count1_carry_i_34_n_0),
        .I2(count1_carry_i_35_n_0),
        .I3(\FSM_onehot_state_reg[3]_0 ),
        .I4(\count[4]_i_6__4_0 ),
        .O(\j_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hCF035555)) 
    count1_carry_i_23
       (.I0(\FSM_onehot_state_reg[3] ),
        .I1(\count[4]_i_6__4 ),
        .I2(count1_carry_i_37_n_0),
        .I3(count1_carry_i_38_n_0),
        .I4(\count[4]_i_6__4_0 ),
        .O(\j_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000E0FF0000E000)) 
    count1_carry_i_24
       (.I0(count1_carry_i_30_n_0),
        .I1(\count[4]_i_5__0 [2]),
        .I2(count1_carry_i_39_n_0),
        .I3(\count[4]_i_5__0 [1]),
        .I4(\count[4]_i_5__0 [0]),
        .I5(count1_carry_i_40_n_0),
        .O(\j_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h28EB)) 
    count1_carry_i_26
       (.I0(count1_carry_i_40_n_0),
        .I1(\count[4]_i_5__0 [1]),
        .I2(\count[4]_i_5__0 [0]),
        .I3(count1_carry_i_19_n_0),
        .O(\j_reg[1]_1 ));
  LUT3 #(
    .INIT(8'h47)) 
    count1_carry_i_27
       (.I0(a_in_7[8]),
        .I1(count1_carry_i_25),
        .I2(a_in_7[24]),
        .O(count1_carry_i_27_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    count1_carry_i_29
       (.I0(a_in_7[16]),
        .I1(count1_carry_i_25),
        .I2(a_in_7[0]),
        .I3(count1_carry_i_19_0),
        .I4(Q[2]),
        .O(count1_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h000F000F000F6669)) 
    count1_carry_i_2__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry_i_2__7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    count1_carry_i_30
       (.I0(a_in_7[4]),
        .I1(a_in_7[20]),
        .I2(\count[4]_i_6__4 ),
        .I3(a_in_7[12]),
        .I4(count1_carry_i_25),
        .I5(a_in_7[28]),
        .O(count1_carry_i_30_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_33
       (.I0(a_in_7[2]),
        .I1(count1_carry_i_19_0),
        .I2(Q[4]),
        .O(count1_carry_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    count1_carry_i_34
       (.I0(a_in_7[3]),
        .I1(count1_carry_i_25),
        .I2(a_in_7[19]),
        .O(count1_carry_i_34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h47)) 
    count1_carry_i_35
       (.I0(a_in_7[11]),
        .I1(count1_carry_i_25),
        .I2(a_in_7[27]),
        .O(count1_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    count1_carry_i_36
       (.I0(a_in_7[5]),
        .I1(a_in_7[21]),
        .I2(\count[4]_i_6__4 ),
        .I3(a_in_7[13]),
        .I4(count1_carry_i_25),
        .I5(a_in_7[29]),
        .O(\FSM_onehot_state_reg[3] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    count1_carry_i_37
       (.I0(a_in_7[17]),
        .I1(count1_carry_i_25),
        .I2(a_in_7[1]),
        .I3(count1_carry_i_19_0),
        .I4(Q[3]),
        .O(count1_carry_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h47)) 
    count1_carry_i_38
       (.I0(a_in_7[9]),
        .I1(count1_carry_i_25),
        .I2(a_in_7[25]),
        .O(count1_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF77744474)) 
    count1_carry_i_39
       (.I0(count1_carry_i_43_n_0),
        .I1(\count[4]_i_6__4 ),
        .I2(a_in_7[24]),
        .I3(count1_carry_i_25),
        .I4(a_in_7[8]),
        .I5(\count[4]_i_6__4_0 ),
        .O(count1_carry_i_39_n_0));
  LUT6 #(
    .INIT(64'h0006000600096000)) 
    count1_carry_i_3__7
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(count1_carry_i_6__2_n_0),
        .I3(j_reg[3]),
        .I4(\count[4]_i_4__1_n_0 ),
        .I5(count1_carry_i_7__2_n_0),
        .O(count1_carry_i_3__7_n_0));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    count1_carry_i_40
       (.I0(count1_carry_i_21_n_0),
        .I1(\count[4]_i_6__4_0 ),
        .I2(count1_carry_i_44_n_0),
        .I3(\count[4]_i_6__4 ),
        .I4(count1_carry_i_45_n_0),
        .O(count1_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'h00000000888AAA8A)) 
    count1_carry_i_41
       (.I0(count1_carry_i_46_n_0),
        .I1(\count[4]_i_6__4 ),
        .I2(a_in_7[25]),
        .I3(count1_carry_i_25),
        .I4(a_in_7[9]),
        .I5(\count[4]_i_6__4_0 ),
        .O(\j_reg[3]_2 ));
  LUT5 #(
    .INIT(32'h470047FF)) 
    count1_carry_i_43
       (.I0(a_in_7[0]),
        .I1(count1_carry_i_41_0),
        .I2(Q[2]),
        .I3(count1_carry_i_25),
        .I4(a_in_7[16]),
        .O(count1_carry_i_43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h47)) 
    count1_carry_i_44
       (.I0(a_in_7[10]),
        .I1(count1_carry_i_25),
        .I2(a_in_7[26]),
        .O(count1_carry_i_44_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    count1_carry_i_45
       (.I0(a_in_7[2]),
        .I1(count1_carry_i_41_0),
        .I2(Q[4]),
        .I3(count1_carry_i_25),
        .I4(a_in_7[18]),
        .O(count1_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'h47FF47FF00FFFFFF)) 
    count1_carry_i_46
       (.I0(a_in_7[1]),
        .I1(count1_carry_i_41_0),
        .I2(Q[3]),
        .I3(\count[4]_i_6__4 ),
        .I4(a_in_7[17]),
        .I5(count1_carry_i_25),
        .O(count1_carry_i_46_n_0));
  LUT6 #(
    .INIT(64'h0120200084000085)) 
    count1_carry_i_4__2
       (.I0(j_reg[0]),
        .I1(count1_carry_i_7__2_n_0),
        .I2(count1_carry_0),
        .I3(count1_carry_i_9__0_n_0),
        .I4(count1_carry_i_10__1_n_0),
        .I5(count1_carry_i_11__2_n_0),
        .O(count1_carry_i_4__2_n_0));
  LUT5 #(
    .INIT(32'h5555CFC0)) 
    count1_carry_i_5__1
       (.I0(Q[3]),
        .I1(\j_reg[1]_0 ),
        .I2(\count[4]_i_5__0 [0]),
        .I3(count1_carry_i_14__1_n_0),
        .I4(count1_carry__1_i_3__6),
        .O(\j_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h002B2BFF)) 
    count1_carry_i_5__2
       (.I0(count1_carry_i_12__1_n_0),
        .I1(D[1]),
        .I2(\count[4]_i_10__0_n_0 ),
        .I3(D[2]),
        .I4(\count[4]_i_11__0_n_0 ),
        .O(count1_carry_i_5__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    count1_carry_i_6__2
       (.I0(j_reg[1]),
        .I1(j_reg[2]),
        .I2(j_reg[0]),
        .O(count1_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h599A)) 
    count1_carry_i_7__2
       (.I0(\count[4]_i_3__0_n_0 ),
        .I1(count1_carry_i_5__2_n_0),
        .I2(D[3]),
        .I3(\j_reg[0]_3 ),
        .O(count1_carry_i_7__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h69)) 
    count1_carry_i_9__0
       (.I0(j_reg[0]),
        .I1(j_reg[1]),
        .I2(count1_carry_i_12__1_n_0),
        .O(count1_carry_i_9__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__2 
       (.I0(count_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__2 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__2 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__2 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(plusOp__2[3]));
  LUT5 #(
    .INIT(32'hD100D1FF)) 
    \count[4]_i_10__0 
       (.I0(\count[4]_i_21__1_n_0 ),
        .I1(j_reg[0]),
        .I2(\count[4]_i_19__1_n_0 ),
        .I3(\count[4]_i_6__1_n_0 ),
        .I4(a_in_6[1]),
        .O(\count[4]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'h3F553055)) 
    \count[4]_i_11__0 
       (.I0(a_in_6[2]),
        .I1(\count[4]_i_21__1_n_0 ),
        .I2(j_reg[0]),
        .I3(\count[4]_i_6__1_n_0 ),
        .I4(\count[4]_i_22__0_n_0 ),
        .O(\count[4]_i_11__0_n_0 ));
  LUT5 #(
    .INIT(32'hF3550355)) 
    \count[4]_i_12__1 
       (.I0(a_in_6[3]),
        .I1(\count[4]_i_8__2_n_0 ),
        .I2(j_reg[0]),
        .I3(\count[4]_i_6__1_n_0 ),
        .I4(\count[4]_i_22__0_n_0 ),
        .O(\j_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hBEEB8228)) 
    \count[4]_i_13__1 
       (.I0(\count[4]_i_7__4_0 ),
        .I1(j_reg[2]),
        .I2(j_reg[0]),
        .I3(j_reg[1]),
        .I4(\count[4]_i_7__4_1 ),
        .O(\count[4]_i_13__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hBEEB8228)) 
    \count[4]_i_18__1 
       (.I0(\count[4]_i_8__2_1 ),
        .I1(j_reg[2]),
        .I2(j_reg[0]),
        .I3(j_reg[1]),
        .I4(\count[4]_i_8__2_0 ),
        .O(\count[4]_i_18__1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \count[4]_i_19__1 
       (.I0(\count[4]_i_29__1_n_0 ),
        .I1(j_reg[1]),
        .I2(\count[4]_i_7__4_1 ),
        .I3(j_reg[2]),
        .I4(j_reg[0]),
        .I5(count1_carry_i_12__1_1),
        .O(\count[4]_i_19__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EF0000000000)) 
    \count[4]_i_1__1 
       (.I0(\count[4]_i_3__0_n_0 ),
        .I1(\count[4]_i_4__1_n_0 ),
        .I2(\count_reg[0]_0 ),
        .I3(\count[4]_i_6__1_n_0 ),
        .I4(done),
        .I5(count1),
        .O(count));
  LUT6 #(
    .INIT(64'hFFB800B800000000)) 
    \count[4]_i_20__2 
       (.I0(count1_carry_i_12__1_0),
        .I1(j_reg[2]),
        .I2(\count[4]_i_8__2_0 ),
        .I3(j_reg[1]),
        .I4(\count[4]_i_32__0_n_0 ),
        .I5(j_reg[0]),
        .O(\count[4]_i_20__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_21__1 
       (.I0(\count[4]_i_18__1_n_0 ),
        .I1(j_reg[1]),
        .I2(\count[4]_i_32__0_n_0 ),
        .O(\count[4]_i_21__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_22__0 
       (.I0(\count[4]_i_13__1_n_0 ),
        .I1(j_reg[1]),
        .I2(\count[4]_i_29__1_n_0 ),
        .O(\count[4]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h91EC)) 
    \count[4]_i_25__2 
       (.I0(j_reg[3]),
        .I1(j_reg[1]),
        .I2(j_reg[0]),
        .I3(j_reg[2]),
        .O(\j_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h599A)) 
    \count[4]_i_26__1 
       (.I0(j_reg[3]),
        .I1(j_reg[1]),
        .I2(j_reg[2]),
        .I3(j_reg[0]),
        .O(\j_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hBEEB8228)) 
    \count[4]_i_29__1 
       (.I0(\count[4]_i_3__0_0 ),
        .I1(j_reg[2]),
        .I2(j_reg[0]),
        .I3(j_reg[1]),
        .I4(\count[4]_i_22__0_0 ),
        .O(\count[4]_i_29__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__2 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(plusOp__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hBEEB8228)) 
    \count[4]_i_32__0 
       (.I0(\count[4]_i_3__0_3 ),
        .I1(j_reg[2]),
        .I2(j_reg[0]),
        .I3(j_reg[1]),
        .I4(\count[4]_i_21__1_0 ),
        .O(\count[4]_i_32__0_n_0 ));
  LUT6 #(
    .INIT(64'h565656A656A656A6)) 
    \count[4]_i_3__0 
       (.I0(D[4]),
        .I1(a_in_6[4]),
        .I2(\count[4]_i_6__1_n_0 ),
        .I3(\count[4]_i_7__4_n_0 ),
        .I4(\count[4]_i_8__2_n_0 ),
        .I5(j_reg[0]),
        .O(\count[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF66FF66FFFFF)) 
    \count[4]_i_4__1 
       (.I0(\j_reg[0]_2 ),
        .I1(D[0]),
        .I2(D[1]),
        .I3(\count[4]_i_10__0_n_0 ),
        .I4(D[2]),
        .I5(\count[4]_i_11__0_n_0 ),
        .O(\count[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \count[4]_i_6__1 
       (.I0(j_reg[2]),
        .I1(j_reg[1]),
        .I2(j_reg[3]),
        .O(\count[4]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \count[4]_i_7__1 
       (.I0(a_in_7[7]),
        .I1(a_in_7[23]),
        .I2(\count[4]_i_6__4 ),
        .I3(Q[1]),
        .I4(count1_carry_i_25),
        .I5(a_in_7[15]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h001D0011001D00DD)) 
    \count[4]_i_7__4 
       (.I0(\count[4]_i_13__1_n_0 ),
        .I1(j_reg[1]),
        .I2(\count[4]_i_3__0_0 ),
        .I3(j_reg[0]),
        .I4(j_reg[2]),
        .I5(\count[4]_i_3__0_1 ),
        .O(\count[4]_i_7__4_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \count[4]_i_8__1 
       (.I0(a_in_7[11]),
        .I1(a_in_7[27]),
        .I2(a_in_7[19]),
        .I3(count1_carry_i_25),
        .I4(a_in_7[3]),
        .I5(\count[4]_i_6__4 ),
        .O(\FSM_onehot_state_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \count[4]_i_8__2 
       (.I0(\count[4]_i_3__0_2 ),
        .I1(j_reg[2]),
        .I2(j_reg[0]),
        .I3(\count[4]_i_3__0_3 ),
        .I4(j_reg[1]),
        .I5(\count[4]_i_18__1_n_0 ),
        .O(\count[4]_i_8__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hF1FFF100)) 
    \count[4]_i_9__0 
       (.I0(\count[4]_i_19__1_n_0 ),
        .I1(j_reg[0]),
        .I2(\count[4]_i_20__2_n_0 ),
        .I3(\count[4]_i_6__1_n_0 ),
        .I4(a_in_6[0]),
        .O(\j_reg[0]_2 ));
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
    .INIT(64'hFFFFFFFF01111111)) 
    done_aux_i_1__6
       (.I0(j_reg[3]),
        .I1(count),
        .I2(j_reg[0]),
        .I3(j_reg[1]),
        .I4(j_reg[2]),
        .I5(done),
        .O(done_aux_i_1__6_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__6_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__2 
       (.I0(j_reg[0]),
        .O(\j[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__2 
       (.I0(j_reg[0]),
        .I1(j_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__2 
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .O(p_0_in__2[2]));
  LUT4 #(
    .INIT(16'h0015)) 
    \j[3]_i_1__2 
       (.I0(j_reg[3]),
        .I1(j_reg[1]),
        .I2(j_reg[2]),
        .I3(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__1 
       (.I0(j_reg[0]),
        .I1(j_reg[2]),
        .I2(j_reg[1]),
        .O(p_0_in__2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__2_n_0 ),
        .Q(j_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[1]),
        .Q(j_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[2]),
        .Q(j_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__2[3]),
        .Q(j_reg[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    valid_aux_i_1__1
       (.I0(valid_aux_i_2__7_n_0),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .I5(valid),
        .O(valid_aux_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    valid_aux_i_2__7
       (.I0(j_reg[2]),
        .I1(j_reg[1]),
        .I2(j_reg[0]),
        .I3(count_reg[0]),
        .I4(j_reg[3]),
        .O(valid_aux_i_2__7_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__1_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized3
   (valid,
    \j_reg[0]_0 ,
    \j_reg[2]_0 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \count_reg_reg[3] ,
    \count_reg_reg[1] ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \count_reg_reg[2] ,
    \count_reg_reg[4] ,
    \count_reg_reg[0] ,
    \j_reg[0]_1 ,
    \j_reg[0]_2 ,
    \j_reg[1]_0 ,
    E,
    \FSM_onehot_state_reg[1] ,
    valid_aux_reg_0,
    \j_reg[2]_1 ,
    clk,
    AR,
    D,
    count1_carry_i_13__3_0,
    count1_carry_i_13__3_1,
    \count_reg[0]_0 ,
    a_in_6,
    \count[4]_i_8__2 ,
    \count[4]_i_8__2_0 ,
    count1_carry_0,
    count1_carry_1,
    a_in_5,
    \count[4]_i_10__1_0 ,
    \count[4]_i_10__1_1 ,
    \count[4]_i_3__1_0 ,
    \count[4]_i_3__1_1 ,
    \count[4]_i_6__0_0 ,
    \count[4]_i_19__2_0 ,
    \count[4]_i_12__2_0 ,
    \count[4]_i_12__2_1 ,
    \count[4]_i_21__2_0 ,
    \count[4]_i_7__2_0 ,
    Q,
    next_out_6);
  output valid;
  output \j_reg[0]_0 ;
  output \j_reg[2]_0 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[1] ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[0] ;
  output \j_reg[0]_1 ;
  output \j_reg[0]_2 ;
  output \j_reg[1]_0 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]valid_aux_reg_0;
  output \j_reg[2]_1 ;
  input clk;
  input [0:0]AR;
  input [4:0]D;
  input count1_carry_i_13__3_0;
  input count1_carry_i_13__3_1;
  input \count_reg[0]_0 ;
  input [29:0]a_in_6;
  input \count[4]_i_8__2 ;
  input \count[4]_i_8__2_0 ;
  input count1_carry_0;
  input count1_carry_1;
  input [4:0]a_in_5;
  input \count[4]_i_10__1_0 ;
  input \count[4]_i_10__1_1 ;
  input \count[4]_i_3__1_0 ;
  input \count[4]_i_3__1_1 ;
  input \count[4]_i_6__0_0 ;
  input \count[4]_i_19__2_0 ;
  input \count[4]_i_12__2_0 ;
  input \count[4]_i_12__2_1 ;
  input \count[4]_i_21__2_0 ;
  input \count[4]_i_7__2_0 ;
  input [4:0]Q;
  input next_out_6;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire [4:0]Q;
  wire [4:0]a_in_5;
  wire [29:0]a_in_6;
  wire clk;
  wire count;
  wire count1;
  wire count1_carry_0;
  wire count1_carry_1;
  wire count1_carry__0_i_1__1_n_0;
  wire count1_carry__0_i_2__1_n_0;
  wire count1_carry__0_i_3__1_n_0;
  wire count1_carry__0_i_4__1_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1__1_n_0;
  wire count1_carry__1_i_2__1_n_0;
  wire count1_carry__1_i_3__1_n_0;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_12__2_n_0;
  wire count1_carry_i_13__3_0;
  wire count1_carry_i_13__3_1;
  wire count1_carry_i_13__3_n_0;
  wire count1_carry_i_14__2_n_0;
  wire count1_carry_i_1__1_n_0;
  wire count1_carry_i_2__1_n_0;
  wire count1_carry_i_3__1_n_0;
  wire count1_carry_i_4__3_n_0;
  wire count1_carry_i_5__3_n_0;
  wire count1_carry_i_6__6_n_0;
  wire count1_carry_i_7__5_n_0;
  wire count1_carry_i_8__3_n_0;
  wire count1_carry_i_9__1_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1__3_n_0 ;
  wire \count[4]_i_10__1_0 ;
  wire \count[4]_i_10__1_1 ;
  wire \count[4]_i_11__1_n_0 ;
  wire \count[4]_i_12__2_0 ;
  wire \count[4]_i_12__2_1 ;
  wire \count[4]_i_15__2_n_0 ;
  wire \count[4]_i_16__2_n_0 ;
  wire \count[4]_i_19__2_0 ;
  wire \count[4]_i_19__2_n_0 ;
  wire \count[4]_i_20__3_n_0 ;
  wire \count[4]_i_21__2_0 ;
  wire \count[4]_i_21__2_n_0 ;
  wire \count[4]_i_22__1_n_0 ;
  wire \count[4]_i_30__1_n_0 ;
  wire \count[4]_i_31__2_n_0 ;
  wire \count[4]_i_3__1_0 ;
  wire \count[4]_i_3__1_1 ;
  wire \count[4]_i_3__1_n_0 ;
  wire \count[4]_i_4__2_n_0 ;
  wire \count[4]_i_6__0_0 ;
  wire \count[4]_i_6__0_n_0 ;
  wire \count[4]_i_7__2_0 ;
  wire \count[4]_i_7__2_n_0 ;
  wire \count[4]_i_8__2 ;
  wire \count[4]_i_8__2_0 ;
  wire \count[4]_i_8__4_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[4] ;
  wire done;
  wire done_aux_i_1__0_n_0;
  wire done_aux_i_2__1_n_0;
  wire j0;
  wire \j[0]_i_1__3_n_0 ;
  wire [3:0]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire next_out_6;
  wire [3:1]p_0_in__3;
  wire [4:1]plusOp__3;
  wire valid;
  wire valid_aux_i_1__5_n_0;
  wire valid_aux_i_2__2_n_0;
  wire [0:0]valid_aux_reg_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(valid),
        .I1(Q[2]),
        .O(valid_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__6 
       (.I0(Q[3]),
        .I1(next_out_6),
        .I2(done),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__7
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(done),
        .I4(Q[2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_1__1_n_0,count1_carry_i_2__1_n_0,count1_carry_i_3__1_n_0,count1_carry_i_4__3_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_1__1_n_0,count1_carry__0_i_2__1_n_0,count1_carry__0_i_3__1_n_0,count1_carry__0_i_4__1_n_0}));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry__0_i_1__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry__0_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry__0_i_2__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry__0_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry__0_i_3__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry__0_i_3__1_n_0));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry__0_i_4__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry__0_i_4__1_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count1_carry__1_i_1__1_n_0,count1_carry__1_i_2__1_n_0,count1_carry__1_i_3__1_n_0}));
  LUT5 #(
    .INIT(32'hF0F090F0)) 
    count1_carry__1_i_1__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry__1_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry__1_i_2__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry__1_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry__1_i_3__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry__1_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    count1_carry_i_12__2
       (.I0(count1_carry_i_14__2_n_0),
        .I1(D[2]),
        .I2(\count[4]_i_11__1_n_0 ),
        .I3(j_reg[2]),
        .I4(j_reg[1]),
        .O(count1_carry_i_12__2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFAE00AE)) 
    count1_carry_i_13__3
       (.I0(\count[4]_i_20__3_n_0 ),
        .I1(j_reg[0]),
        .I2(\count[4]_i_19__2_n_0 ),
        .I3(\count[4]_i_8__4_n_0 ),
        .I4(a_in_5[0]),
        .I5(D[0]),
        .O(count1_carry_i_13__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    count1_carry_i_14__2
       (.I0(count1_carry_i_13__3_n_0),
        .I1(D[1]),
        .I2(\j_reg[0]_2 ),
        .O(count1_carry_i_14__2_n_0));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry_i_1__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hF0F096F0)) 
    count1_carry_i_2__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_6__6_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(count1_carry_i_7__5_n_0),
        .O(count1_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0600000000006069)) 
    count1_carry_i_3__1
       (.I0(\count_reg[0]_0 ),
        .I1(count1_carry_i_5__3_n_0),
        .I2(count1_carry_i_7__5_n_0),
        .I3(\count[4]_i_4__2_n_0 ),
        .I4(j_reg[3]),
        .I5(count1_carry_i_8__3_n_0),
        .O(count1_carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h0058000248002100)) 
    count1_carry_i_4__3
       (.I0(count1_carry_i_9__1_n_0),
        .I1(count1_carry_i_7__5_n_0),
        .I2(count1_carry_0),
        .I3(count1_carry_1),
        .I4(count1_carry_i_12__2_n_0),
        .I5(j_reg[0]),
        .O(count1_carry_i_4__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h002B2BFF)) 
    count1_carry_i_5__3
       (.I0(count1_carry_i_13__3_n_0),
        .I1(D[1]),
        .I2(\j_reg[0]_2 ),
        .I3(D[2]),
        .I4(\count[4]_i_11__1_n_0 ),
        .O(count1_carry_i_5__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h07)) 
    count1_carry_i_6__6
       (.I0(j_reg[1]),
        .I1(j_reg[2]),
        .I2(j_reg[3]),
        .O(count1_carry_i_6__6_n_0));
  LUT4 #(
    .INIT(16'h6A56)) 
    count1_carry_i_7__5
       (.I0(\count[4]_i_3__1_n_0 ),
        .I1(\j_reg[0]_0 ),
        .I2(D[3]),
        .I3(count1_carry_i_5__3_n_0),
        .O(count1_carry_i_7__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_8__3
       (.I0(j_reg[1]),
        .I1(j_reg[2]),
        .O(count1_carry_i_8__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_9__1
       (.I0(j_reg[1]),
        .I1(count1_carry_i_13__3_n_0),
        .O(count1_carry_i_9__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__3 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__3 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(plusOp__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__3 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__3[3]));
  LUT5 #(
    .INIT(32'h74777444)) 
    \count[4]_i_10__1 
       (.I0(a_in_5[1]),
        .I1(\count[4]_i_8__4_n_0 ),
        .I2(\count[4]_i_21__2_n_0 ),
        .I3(j_reg[0]),
        .I4(\count[4]_i_19__2_n_0 ),
        .O(\j_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h74777444)) 
    \count[4]_i_11__1 
       (.I0(a_in_5[2]),
        .I1(\count[4]_i_8__4_n_0 ),
        .I2(\count[4]_i_22__1_n_0 ),
        .I3(j_reg[0]),
        .I4(\count[4]_i_21__2_n_0 ),
        .O(\count[4]_i_11__1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \count[4]_i_12__2 
       (.I0(a_in_5[3]),
        .I1(\count[4]_i_8__4_n_0 ),
        .I2(\count[4]_i_7__2_n_0 ),
        .I3(j_reg[0]),
        .I4(\count[4]_i_22__1_n_0 ),
        .O(\j_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h470047FF)) 
    \count[4]_i_14__1 
       (.I0(a_in_6[7]),
        .I1(\count[4]_i_8__2_0 ),
        .I2(a_in_6[23]),
        .I3(\count[4]_i_8__2 ),
        .I4(a_in_6[15]),
        .O(\FSM_onehot_state_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[4]_i_15__1 
       (.I0(a_in_6[11]),
        .I1(a_in_6[27]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[19]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[3]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hAFEBA028)) 
    \count[4]_i_15__2 
       (.I0(\count[4]_i_10__1_1 ),
        .I1(j_reg[1]),
        .I2(j_reg[2]),
        .I3(j_reg[0]),
        .I4(\count[4]_i_6__0_0 ),
        .O(\count[4]_i_15__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_16__1 
       (.I0(a_in_6[10]),
        .I1(a_in_6[26]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[18]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[2]),
        .O(\FSM_onehot_state_reg[3] ));
  LUT5 #(
    .INIT(32'h33AAA33A)) 
    \count[4]_i_16__2 
       (.I0(\count[4]_i_7__2_0 ),
        .I1(count1_carry_i_13__3_0),
        .I2(j_reg[1]),
        .I3(j_reg[2]),
        .I4(j_reg[0]),
        .O(\count[4]_i_16__2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[4]_i_17__1 
       (.I0(a_in_6[6]),
        .I1(\count[4]_i_8__2_0 ),
        .I2(a_in_6[22]),
        .I3(\count[4]_i_8__2 ),
        .I4(a_in_6[14]),
        .O(\FSM_onehot_state_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hB8FFFFB8B80000B8)) 
    \count[4]_i_19__2 
       (.I0(\count[4]_i_10__1_0 ),
        .I1(j_reg[2]),
        .I2(\count[4]_i_10__1_1 ),
        .I3(j_reg[1]),
        .I4(j_reg[0]),
        .I5(\count[4]_i_30__1_n_0 ),
        .O(\count[4]_i_19__2_n_0 ));
  LUT5 #(
    .INIT(32'hBF000000)) 
    \count[4]_i_1__2 
       (.I0(\count[4]_i_3__1_n_0 ),
        .I1(\count[4]_i_4__2_n_0 ),
        .I2(\count_reg[0]_0 ),
        .I3(j0),
        .I4(count1),
        .O(count));
  LUT6 #(
    .INIT(64'h1313131010101310)) 
    \count[4]_i_20__3 
       (.I0(\count[4]_i_31__2_n_0 ),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .I3(count1_carry_i_13__3_0),
        .I4(j_reg[2]),
        .I5(count1_carry_i_13__3_1),
        .O(\count[4]_i_20__3_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \count[4]_i_21__2 
       (.I0(\count[4]_i_31__2_n_0 ),
        .I1(j_reg[1]),
        .I2(j_reg[0]),
        .I3(\count[4]_i_16__2_n_0 ),
        .O(\count[4]_i_21__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hBE82)) 
    \count[4]_i_22__1 
       (.I0(\count[4]_i_30__1_n_0 ),
        .I1(j_reg[1]),
        .I2(j_reg[0]),
        .I3(\count[4]_i_15__2_n_0 ),
        .O(\count[4]_i_22__1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[4]_i_23 
       (.I0(a_in_6[9]),
        .I1(a_in_6[25]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[17]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[1]),
        .O(\FSM_onehot_state_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hB556)) 
    \count[4]_i_23__0 
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[3]),
        .I3(j_reg[1]),
        .O(\j_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h50505F5F303F303F)) 
    \count[4]_i_24__1 
       (.I0(a_in_6[5]),
        .I1(a_in_6[21]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[29]),
        .I4(a_in_6[13]),
        .I5(\count[4]_i_8__2_0 ),
        .O(\FSM_onehot_state_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hE13C)) 
    \count[4]_i_24__2 
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[3]),
        .I3(j_reg[1]),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_27__0 
       (.I0(a_in_6[8]),
        .I1(a_in_6[24]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[16]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[0]),
        .O(\FSM_onehot_state_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFAFA0A0CFC0CFC0)) 
    \count[4]_i_28__1 
       (.I0(a_in_6[4]),
        .I1(a_in_6[20]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[28]),
        .I4(a_in_6[12]),
        .I5(\count[4]_i_8__2_0 ),
        .O(\count_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__3 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp__3[4]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[4]_i_30__0 
       (.I0(a_in_6[1]),
        .I1(a_in_6[17]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[9]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[25]),
        .O(\count_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hAFEBA028)) 
    \count[4]_i_30__1 
       (.I0(\count[4]_i_19__2_0 ),
        .I1(j_reg[1]),
        .I2(j_reg[2]),
        .I3(j_reg[0]),
        .I4(\count[4]_i_3__1_1 ),
        .O(\count[4]_i_30__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_31__1 
       (.I0(a_in_6[0]),
        .I1(a_in_6[16]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[8]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[24]),
        .O(\count_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h0A82FABE)) 
    \count[4]_i_31__2 
       (.I0(\count[4]_i_12__2_0 ),
        .I1(j_reg[1]),
        .I2(j_reg[2]),
        .I3(j_reg[0]),
        .I4(\count[4]_i_21__2_0 ),
        .O(\count[4]_i_31__2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[4]_i_33__1 
       (.I0(a_in_6[3]),
        .I1(a_in_6[19]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[11]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[27]),
        .O(\count_reg_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h9663)) 
    \count[4]_i_33__2 
       (.I0(j_reg[1]),
        .I1(j_reg[3]),
        .I2(j_reg[0]),
        .I3(j_reg[2]),
        .O(\j_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_34__1 
       (.I0(a_in_6[2]),
        .I1(a_in_6[18]),
        .I2(\count[4]_i_8__2 ),
        .I3(a_in_6[10]),
        .I4(\count[4]_i_8__2_0 ),
        .I5(a_in_6[26]),
        .O(\count_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h55556665AAAA6665)) 
    \count[4]_i_3__1 
       (.I0(D[4]),
        .I1(\count[4]_i_6__0_n_0 ),
        .I2(j_reg[0]),
        .I3(\count[4]_i_7__2_n_0 ),
        .I4(\count[4]_i_8__4_n_0 ),
        .I5(a_in_5[4]),
        .O(\count[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000099009900000)) 
    \count[4]_i_4__2 
       (.I0(\j_reg[0]_1 ),
        .I1(D[0]),
        .I2(D[1]),
        .I3(\j_reg[0]_2 ),
        .I4(D[2]),
        .I5(\count[4]_i_11__1_n_0 ),
        .O(\count[4]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h00001D00FF001D00)) 
    \count[4]_i_6__0 
       (.I0(\count[4]_i_3__1_0 ),
        .I1(j_reg[2]),
        .I2(\count[4]_i_3__1_1 ),
        .I3(j_reg[0]),
        .I4(j_reg[1]),
        .I5(\count[4]_i_15__2_n_0 ),
        .O(\count[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hB2828E82BE8EBEB2)) 
    \count[4]_i_7__2 
       (.I0(\count[4]_i_16__2_n_0 ),
        .I1(j_reg[1]),
        .I2(j_reg[0]),
        .I3(\count[4]_i_12__2_0 ),
        .I4(j_reg[2]),
        .I5(\count[4]_i_12__2_1 ),
        .O(\count[4]_i_7__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFCEC)) 
    \count[4]_i_8__4 
       (.I0(j_reg[0]),
        .I1(j_reg[3]),
        .I2(j_reg[2]),
        .I3(j_reg[1]),
        .O(\count[4]_i_8__4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \count[4]_i_9__1 
       (.I0(a_in_5[0]),
        .I1(\count[4]_i_8__4_n_0 ),
        .I2(\count[4]_i_19__2_n_0 ),
        .I3(j_reg[0]),
        .I4(\count[4]_i_20__3_n_0 ),
        .O(\j_reg[0]_1 ));
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
  LUT4 #(
    .INIT(16'hFF54)) 
    done_aux_i_1__0
       (.I0(count),
        .I1(j0),
        .I2(done_aux_i_2__1_n_0),
        .I3(done),
        .O(done_aux_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    done_aux_i_2__1
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .I3(j_reg[3]),
        .O(done_aux_i_2__1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__0_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__3 
       (.I0(j_reg[0]),
        .O(\j[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__3 
       (.I0(j_reg[0]),
        .I1(j_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j[2]_i_1__3 
       (.I0(j_reg[2]),
        .I1(j_reg[0]),
        .I2(j_reg[1]),
        .O(p_0_in__3[2]));
  LUT5 #(
    .INIT(32'h00050015)) 
    \j[3]_i_1__3 
       (.I0(done),
        .I1(j_reg[1]),
        .I2(j_reg[2]),
        .I3(j_reg[3]),
        .I4(j_reg[0]),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \j[3]_i_2__2 
       (.I0(j_reg[1]),
        .I1(j_reg[0]),
        .I2(j_reg[2]),
        .O(p_0_in__3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__3_n_0 ),
        .Q(j_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[1]),
        .Q(j_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[2]),
        .Q(j_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__3[3]),
        .Q(j_reg[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    valid_aux_i_1__5
       (.I0(j_reg[0]),
        .I1(j_reg[2]),
        .I2(valid_aux_i_2__2_n_0),
        .I3(j_reg[1]),
        .I4(j_reg[3]),
        .I5(valid),
        .O(valid_aux_i_1__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    valid_aux_i_2__2
       (.I0(count_reg[2]),
        .I1(count_reg[4]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(valid_aux_i_2__2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__5_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized4
   (valid,
    Q,
    \j_reg[2]_0 ,
    \j_reg[2]_1 ,
    \j_reg[2]_2 ,
    \j_reg[2]_3 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \count_reg_reg[1] ,
    \FSM_onehot_state_reg[3]_6 ,
    \FSM_onehot_state_reg[3]_7 ,
    \FSM_onehot_state_reg[3]_8 ,
    \FSM_onehot_state_reg[3]_9 ,
    \count_reg_reg[3] ,
    \j_reg[0]_0 ,
    \j_reg[2]_4 ,
    E,
    \FSM_onehot_state_reg[1] ,
    valid_aux_reg_0,
    \j_reg[2]_5 ,
    \j_reg[1]_0 ,
    count1_carry__0_0,
    count1_carry__1_0,
    S,
    clk,
    AR,
    count1_carry_i_19__0_0,
    count1_carry_i_19__0_1,
    D,
    done_aux_reg_0,
    a_in_4,
    count1_carry__1_i_3__2,
    count1_carry_i_13__6,
    a_in_5,
    \count[4]_i_19__2 ,
    \count[4]_i_19__2_0 ,
    \count[4]_i_15__2 ,
    count1_carry_0,
    count1_carry_1,
    count1_carry__1_i_3__2_0,
    count1_carry_i_4__4_0,
    count1_carry_i_5__7_0,
    count1_carry_i_5__7_1,
    \count[4]_i_4__6_0 ,
    \count[4]_i_4__6_1 ,
    count1_carry_i_19__0_2,
    count1_carry_i_19__0_3,
    \count_reg_reg[0] ,
    next_out_5);
  output valid;
  output [2:0]Q;
  output \j_reg[2]_0 ;
  output \j_reg[2]_1 ;
  output \j_reg[2]_2 ;
  output \j_reg[2]_3 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \count_reg_reg[1] ;
  output \FSM_onehot_state_reg[3]_6 ;
  output \FSM_onehot_state_reg[3]_7 ;
  output \FSM_onehot_state_reg[3]_8 ;
  output \FSM_onehot_state_reg[3]_9 ;
  output \count_reg_reg[3] ;
  output \j_reg[0]_0 ;
  output \j_reg[2]_4 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]valid_aux_reg_0;
  output \j_reg[2]_5 ;
  output \j_reg[1]_0 ;
  input [2:0]count1_carry__0_0;
  input [3:0]count1_carry__1_0;
  input [2:0]S;
  input clk;
  input [0:0]AR;
  input count1_carry_i_19__0_0;
  input count1_carry_i_19__0_1;
  input [4:0]D;
  input done_aux_reg_0;
  input [10:0]a_in_4;
  input count1_carry__1_i_3__2;
  input count1_carry_i_13__6;
  input [24:0]a_in_5;
  input \count[4]_i_19__2 ;
  input \count[4]_i_19__2_0 ;
  input \count[4]_i_15__2 ;
  input count1_carry_0;
  input count1_carry_1;
  input count1_carry__1_i_3__2_0;
  input count1_carry_i_4__4_0;
  input count1_carry_i_5__7_0;
  input count1_carry_i_5__7_1;
  input \count[4]_i_4__6_0 ;
  input \count[4]_i_4__6_1 ;
  input count1_carry_i_19__0_2;
  input count1_carry_i_19__0_3;
  input [4:0]\count_reg_reg[0] ;
  input next_out_5;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire \FSM_onehot_state_reg[3]_6 ;
  wire \FSM_onehot_state_reg[3]_7 ;
  wire \FSM_onehot_state_reg[3]_8 ;
  wire \FSM_onehot_state_reg[3]_9 ;
  wire [2:0]Q;
  wire [2:0]S;
  wire [10:0]a_in_4;
  wire [24:0]a_in_5;
  wire clk;
  wire count;
  wire count1;
  wire count1_carry_0;
  wire count1_carry_1;
  wire [2:0]count1_carry__0_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire [3:0]count1_carry__1_0;
  wire count1_carry__1_i_3__2;
  wire count1_carry__1_i_3__2_0;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_10__3_n_0;
  wire count1_carry_i_12__3_n_0;
  wire count1_carry_i_13__6;
  wire count1_carry_i_15__1_n_0;
  wire count1_carry_i_19__0_0;
  wire count1_carry_i_19__0_1;
  wire count1_carry_i_19__0_2;
  wire count1_carry_i_19__0_3;
  wire count1_carry_i_20__0_n_0;
  wire count1_carry_i_24__0_n_0;
  wire count1_carry_i_26__0_n_0;
  wire count1_carry_i_28__0_n_0;
  wire count1_carry_i_35__0_n_0;
  wire count1_carry_i_37__0_n_0;
  wire count1_carry_i_4__4_0;
  wire count1_carry_i_4__4_n_0;
  wire count1_carry_i_5__7_0;
  wire count1_carry_i_5__7_1;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[4]_i_15__2 ;
  wire \count[4]_i_19__2 ;
  wire \count[4]_i_19__2_0 ;
  wire \count[4]_i_3__6_n_0 ;
  wire \count[4]_i_4__6_0 ;
  wire \count[4]_i_4__6_1 ;
  wire \count[4]_i_4__6_n_0 ;
  wire \count[4]_i_5__3_n_0 ;
  wire \count[4]_i_6__2_n_0 ;
  wire [4:0]count_reg;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[3] ;
  wire done;
  wire done_aux_i_1__1_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1__4_n_0 ;
  wire \j_reg[0]_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire \j_reg[2]_2 ;
  wire \j_reg[2]_3 ;
  wire \j_reg[2]_4 ;
  wire \j_reg[2]_5 ;
  wire next_out_5;
  wire [2:1]p_0_in__4;
  wire [4:0]plusOp__4;
  wire valid;
  wire valid_aux_i_1__6_n_0;
  wire valid_aux_i_2__3_n_0;
  wire [0:0]valid_aux_reg_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__4 
       (.I0(valid),
        .I1(\count_reg_reg[0] [2]),
        .O(valid_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__5 
       (.I0(\count_reg_reg[0] [3]),
        .I1(next_out_5),
        .I2(done),
        .I3(\count_reg_reg[0] [2]),
        .I4(\count_reg_reg[0] [1]),
        .I5(\count_reg_reg[0] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__6
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [4]),
        .I3(done),
        .I4(\count_reg_reg[0] [2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_0,count1_carry_i_4__4_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S(count1_carry__1_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,S}));
  LUT6 #(
    .INIT(64'h6969699696969669)) 
    count1_carry_i_10__3
       (.I0(count1_carry_i_20__0_n_0),
        .I1(D[2]),
        .I2(count1_carry_i_4__4_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(count1_carry_i_10__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h69)) 
    count1_carry_i_12__3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\j_reg[2]_2 ),
        .O(count1_carry_i_12__3_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF90F690F6)) 
    count1_carry_i_15__1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(count1_carry_i_5__7_0),
        .I3(count1_carry_i_24__0_n_0),
        .I4(count1_carry_i_5__7_1),
        .I5(Q[1]),
        .O(count1_carry_i_15__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h72777222)) 
    count1_carry_i_16__4
       (.I0(Q[2]),
        .I1(a_in_4[8]),
        .I2(count1_carry_i_26__0_n_0),
        .I3(Q[0]),
        .I4(count1_carry_i_13__6),
        .O(\j_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hDFDFDFCECECECECE)) 
    count1_carry_i_17__4
       (.I0(Q[2]),
        .I1(D[0]),
        .I2(a_in_4[7]),
        .I3(count1_carry_i_26__0_n_0),
        .I4(Q[0]),
        .I5(count1_carry_i_28__0_n_0),
        .O(\j_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h4440EEEA)) 
    count1_carry_i_19__0
       (.I0(Q[2]),
        .I1(count1_carry_i_28__0_n_0),
        .I2(Q[0]),
        .I3(count1_carry_i_26__0_n_0),
        .I4(a_in_4[7]),
        .O(\j_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h17)) 
    count1_carry_i_20__0
       (.I0(D[1]),
        .I1(\j_reg[2]_3 ),
        .I2(\j_reg[2]_2 ),
        .O(count1_carry_i_20__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    count1_carry_i_24__0
       (.I0(a_in_4[2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_4[6]),
        .O(count1_carry_i_24__0_n_0));
  LUT6 #(
    .INIT(64'h14D7FFFF14D70000)) 
    count1_carry_i_26__0
       (.I0(count1_carry_i_19__0_2),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(count1_carry_i_35__0_n_0),
        .I4(Q[1]),
        .I5(count1_carry_i_19__0_3),
        .O(count1_carry_i_26__0_n_0));
  LUT6 #(
    .INIT(64'h2EEE2E22FFFFFFFF)) 
    count1_carry_i_28__0
       (.I0(count1_carry_i_19__0_0),
        .I1(Q[1]),
        .I2(count1_carry_i_37__0_n_0),
        .I3(Q[2]),
        .I4(count1_carry_i_19__0_1),
        .I5(Q[0]),
        .O(count1_carry_i_28__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    count1_carry_i_30__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\j_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h70)) 
    count1_carry_i_32
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    count1_carry_i_35__0
       (.I0(a_in_4[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_4[5]),
        .O(count1_carry_i_35__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    count1_carry_i_37__0
       (.I0(a_in_4[0]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in_4[4]),
        .O(count1_carry_i_37__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_40__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\j_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h08010108900000A0)) 
    count1_carry_i_4__4
       (.I0(count1_carry_i_10__3_n_0),
        .I1(\count_reg_reg[3] ),
        .I2(count1_carry_0),
        .I3(count1_carry_i_12__3_n_0),
        .I4(count1_carry_1),
        .I5(Q[0]),
        .O(count1_carry_i_4__4_n_0));
  LUT5 #(
    .INIT(32'h72777222)) 
    count1_carry_i_5__7
       (.I0(Q[2]),
        .I1(a_in_4[9]),
        .I2(count1_carry__1_i_3__2),
        .I3(Q[0]),
        .I4(count1_carry_i_15__1_n_0),
        .O(\j_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    count1_carry_i_7__3
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\j_reg[2]_4 ));
  LUT4 #(
    .INIT(16'h566A)) 
    count1_carry_i_9__2
       (.I0(\count[4]_i_4__6_n_0 ),
        .I1(\j_reg[2]_0 ),
        .I2(D[3]),
        .I3(count1_carry__1_i_3__2_0),
        .O(\count_reg_reg[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__4 
       (.I0(count_reg[0]),
        .O(plusOp__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__4 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__4 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__4 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .O(plusOp__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h470047FF)) 
    \count[4]_i_13__2 
       (.I0(a_in_5[19]),
        .I1(\count[4]_i_19__2 ),
        .I2(a_in_5[3]),
        .I3(\count[4]_i_19__2_0 ),
        .I4(a_in_5[11]),
        .O(\FSM_onehot_state_reg[3]_3 ));
  LUT5 #(
    .INIT(32'h00FF3535)) 
    \count[4]_i_14__2 
       (.I0(a_in_5[23]),
        .I1(a_in_5[7]),
        .I2(\count[4]_i_19__2 ),
        .I3(a_in_5[15]),
        .I4(\count[4]_i_19__2_0 ),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h00FF3535)) 
    \count[4]_i_17__2 
       (.I0(a_in_5[22]),
        .I1(a_in_5[6]),
        .I2(\count[4]_i_19__2 ),
        .I3(a_in_5[14]),
        .I4(\count[4]_i_19__2_0 ),
        .O(\FSM_onehot_state_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count[4]_i_18__2 
       (.I0(a_in_5[18]),
        .I1(\count[4]_i_19__2 ),
        .I2(a_in_5[2]),
        .I3(\count[4]_i_19__2_0 ),
        .I4(a_in_5[10]),
        .O(\FSM_onehot_state_reg[3]_2 ));
  LUT3 #(
    .INIT(8'h10)) 
    \count[4]_i_1__4 
       (.I0(done),
        .I1(Q[2]),
        .I2(\count[4]_i_3__6_n_0 ),
        .O(count));
  LUT5 #(
    .INIT(32'h00FF3535)) 
    \count[4]_i_25__1 
       (.I0(a_in_5[21]),
        .I1(a_in_5[5]),
        .I2(\count[4]_i_19__2 ),
        .I3(a_in_5[13]),
        .I4(\count[4]_i_19__2_0 ),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'h000047FF47FF47FF)) 
    \count[4]_i_26__2 
       (.I0(a_in_5[17]),
        .I1(\count[4]_i_19__2 ),
        .I2(a_in_5[1]),
        .I3(\count[4]_i_19__2_0 ),
        .I4(\count[4]_i_15__2 ),
        .I5(a_in_5[9]),
        .O(\FSM_onehot_state_reg[3]_4 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \count[4]_i_27__1 
       (.I0(a_in_5[16]),
        .I1(a_in_5[0]),
        .I2(a_in_5[8]),
        .I3(\count[4]_i_19__2 ),
        .I4(a_in_5[24]),
        .I5(\count[4]_i_19__2_0 ),
        .O(\FSM_onehot_state_reg[3]_5 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_28__2 
       (.I0(a_in_5[12]),
        .I1(\count[4]_i_19__2_0 ),
        .I2(a_in_5[4]),
        .I3(\count[4]_i_19__2 ),
        .I4(a_in_5[20]),
        .O(\FSM_onehot_state_reg[3]_9 ));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \count[4]_i_29__2 
       (.I0(a_in_5[1]),
        .I1(\count[4]_i_19__2 ),
        .I2(a_in_5[17]),
        .I3(\count[4]_i_19__2_0 ),
        .I4(a_in_5[9]),
        .O(\count_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__4 
       (.I0(count_reg[4]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[3]),
        .O(plusOp__4[4]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \count[4]_i_32__1 
       (.I0(a_in_5[8]),
        .I1(a_in_5[24]),
        .I2(a_in_5[0]),
        .I3(\count[4]_i_19__2 ),
        .I4(a_in_5[16]),
        .I5(\count[4]_i_19__2_0 ),
        .O(\FSM_onehot_state_reg[3]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \count[4]_i_34__2 
       (.I0(a_in_5[11]),
        .I1(\count[4]_i_19__2_0 ),
        .I2(a_in_5[3]),
        .I3(\count[4]_i_19__2 ),
        .I4(a_in_5[19]),
        .O(\FSM_onehot_state_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_35__1 
       (.I0(a_in_5[10]),
        .I1(\count[4]_i_19__2_0 ),
        .I2(a_in_5[2]),
        .I3(\count[4]_i_19__2 ),
        .I4(a_in_5[18]),
        .O(\FSM_onehot_state_reg[3]_7 ));
  LUT5 #(
    .INIT(32'hF090F0F0)) 
    \count[4]_i_3__6 
       (.I0(D[3]),
        .I1(\j_reg[2]_0 ),
        .I2(count1),
        .I3(\count[4]_i_4__6_n_0 ),
        .I4(done_aux_reg_0),
        .O(\count[4]_i_3__6_n_0 ));
  LUT6 #(
    .INIT(64'h66633363CCC999C9)) 
    \count[4]_i_4__6 
       (.I0(Q[2]),
        .I1(D[4]),
        .I2(\count[4]_i_5__3_n_0 ),
        .I3(Q[0]),
        .I4(count1_carry_i_15__1_n_0),
        .I5(a_in_4[10]),
        .O(\count[4]_i_4__6_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FCCF0CC0)) 
    \count[4]_i_5__3 
       (.I0(\count[4]_i_4__6_0 ),
        .I1(\count[4]_i_6__2_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\count[4]_i_4__6_1 ),
        .I5(Q[1]),
        .O(\count[4]_i_5__3_n_0 ));
  LUT5 #(
    .INIT(32'h41117DDD)) 
    \count[4]_i_6__2 
       (.I0(a_in_4[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(a_in_4[3]),
        .O(\count[4]_i_6__2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFF111B)) 
    done_aux_i_1__1
       (.I0(Q[2]),
        .I1(\count[4]_i_3__6_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(done),
        .O(done_aux_i_1__1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__1_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__4 
       (.I0(Q[0]),
        .O(\j[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__4[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \j[2]_i_1__4 
       (.I0(Q[2]),
        .I1(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__4_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__4[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__4[2]),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    valid_aux_i_1__6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(valid_aux_i_2__3_n_0),
        .I3(Q[2]),
        .I4(valid),
        .O(valid_aux_i_1__6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    valid_aux_i_2__3
       (.I0(j0),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(count_reg[0]),
        .I5(count_reg[1]),
        .O(valid_aux_i_2__3_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__6_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized5
   (valid,
    Q,
    \j_reg[2]_0 ,
    \j_reg[1]_0 ,
    \j_reg[1]_1 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \j_reg[0]_0 ,
    \j_reg[0]_1 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \j_reg[0]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \count_reg_reg[3] ,
    \count_reg_reg[4] ,
    \j_reg[2]_1 ,
    \j_reg[1]_2 ,
    \j_reg[2]_2 ,
    E,
    \FSM_onehot_state_reg[1] ,
    valid_aux_reg_0,
    \j_reg[2]_3 ,
    count1_carry__0_0,
    count1_carry__1_0,
    S,
    clk,
    AR,
    count1_carry_i_4__5_0,
    D,
    count1_carry_i_4__5_1,
    \count[4]_i_5__4_0 ,
    \count_reg[0]_0 ,
    done_aux_reg_0,
    \count[4]_i_5__3 ,
    \count[4]_i_5__3_0 ,
    a_in_4,
    count1_carry_i_15__1,
    count1_carry_i_15__1_0,
    count1_carry_i_28__0,
    count1_carry_0,
    count1_carry_1,
    count1_carry_2,
    count1_carry__1_i_1__3,
    count1_carry__1_i_1__3_0,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    a_in_3,
    \count_reg_reg[0] ,
    next_out_4);
  output valid;
  output [2:0]Q;
  output \j_reg[2]_0 ;
  output \j_reg[1]_0 ;
  output \j_reg[1]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \j_reg[0]_0 ;
  output \j_reg[0]_1 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \j_reg[0]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[4] ;
  output \j_reg[2]_1 ;
  output [0:0]\j_reg[1]_2 ;
  output \j_reg[2]_2 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]valid_aux_reg_0;
  output \j_reg[2]_3 ;
  input [2:0]count1_carry__0_0;
  input [3:0]count1_carry__1_0;
  input [2:0]S;
  input clk;
  input [0:0]AR;
  input count1_carry_i_4__5_0;
  input [2:0]D;
  input count1_carry_i_4__5_1;
  input \count[4]_i_5__4_0 ;
  input \count_reg[0]_0 ;
  input done_aux_reg_0;
  input [2:0]\count[4]_i_5__3 ;
  input [4:0]\count[4]_i_5__3_0 ;
  input [14:0]a_in_4;
  input count1_carry_i_15__1;
  input count1_carry_i_15__1_0;
  input count1_carry_i_28__0;
  input count1_carry_0;
  input count1_carry_1;
  input count1_carry_2;
  input count1_carry__1_i_1__3;
  input count1_carry__1_i_1__3_0;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input [0:0]a_in_3;
  input [4:0]\count_reg_reg[0] ;
  input next_out_4;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire [2:0]Q;
  wire [2:0]S;
  wire [0:0]a_in_3;
  wire [14:0]a_in_4;
  wire clk;
  wire count;
  wire count1;
  wire count1_carry_0;
  wire count1_carry_1;
  wire count1_carry_2;
  wire [2:0]count1_carry__0_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire [3:0]count1_carry__1_0;
  wire count1_carry__1_i_1__3;
  wire count1_carry__1_i_1__3_0;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_15__1;
  wire count1_carry_i_15__1_0;
  wire count1_carry_i_28__0;
  wire count1_carry_i_29__0_n_0;
  wire count1_carry_i_31__0_n_0;
  wire count1_carry_i_33__0_n_0;
  wire count1_carry_i_39__0_n_0;
  wire count1_carry_i_4__5_0;
  wire count1_carry_i_4__5_1;
  wire count1_carry_i_4__5_n_0;
  wire count1_carry_i_7__6_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1__5_n_0 ;
  wire \count[4]_i_10__3_n_0 ;
  wire [2:0]\count[4]_i_5__3 ;
  wire [4:0]\count[4]_i_5__3_0 ;
  wire \count[4]_i_5__4_0 ;
  wire [4:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[4] ;
  wire done;
  wire done_aux_i_1__7_n_0;
  wire done_aux_i_3_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1__5_n_0 ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire [0:0]\j_reg[1]_2 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire \j_reg[2]_2 ;
  wire \j_reg[2]_3 ;
  wire next_out_4;
  wire [2:2]p_0_in__5;
  wire [4:1]plusOp__5;
  wire valid;
  wire valid_aux_i_1__3_n_0;
  wire valid_aux_i_2__4_n_0;
  wire [0:0]valid_aux_reg_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__5 
       (.I0(valid),
        .I1(\count_reg_reg[0] [2]),
        .O(valid_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__2 
       (.I0(\count_reg_reg[0] [3]),
        .I1(next_out_4),
        .I2(done),
        .I3(\count_reg_reg[0] [2]),
        .I4(\count_reg_reg[0] [1]),
        .I5(\count_reg_reg[0] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__3
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [4]),
        .I3(done),
        .I4(\count_reg_reg[0] [2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_0,count1_carry_i_4__5_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S(count1_carry__1_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,S}));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    count1_carry_i_14__3
       (.I0(\j_reg[0]_0 ),
        .I1(\j_reg[0]_1 ),
        .I2(\count[4]_i_5__3 [1]),
        .O(\j_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h72777222)) 
    count1_carry_i_18__2
       (.I0(\count[4]_i_5__3 [2]),
        .I1(\count[4]_i_5__3_0 [2]),
        .I2(\j_reg[1]_0 ),
        .I3(\count[4]_i_5__3 [0]),
        .I4(\j_reg[1]_1 ),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAACFC0CFC0AAAA)) 
    count1_carry_i_21__0
       (.I0(count1_carry_i_29__0_n_0),
        .I1(a_in_4[5]),
        .I2(count1_carry_i_15__1_0),
        .I3(a_in_4[13]),
        .I4(\count[4]_i_5__3 [0]),
        .I5(\count[4]_i_5__3 [2]),
        .O(\j_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h282828EBEBEB28EB)) 
    count1_carry_i_22__0
       (.I0(count1_carry_i_31__0_n_0),
        .I1(\count[4]_i_5__3 [0]),
        .I2(\count[4]_i_5__3 [2]),
        .I3(\count[4]_i_5__3_0 [0]),
        .I4(count1_carry_i_15__1_0),
        .I5(a_in_4[7]),
        .O(\j_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h5555303F)) 
    count1_carry_i_23__0
       (.I0(a_in_4[10]),
        .I1(a_in_4[2]),
        .I2(count1_carry_i_15__1),
        .I3(\count[4]_i_5__3_0 [3]),
        .I4(count1_carry_i_15__1_0),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'hFFB8B8FF00B8B800)) 
    count1_carry_i_25__0
       (.I0(a_in_4[4]),
        .I1(count1_carry_i_15__1_0),
        .I2(a_in_4[12]),
        .I3(\count[4]_i_5__3 [0]),
        .I4(\count[4]_i_5__3 [2]),
        .I5(count1_carry_i_33__0_n_0),
        .O(\j_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    count1_carry_i_27__0
       (.I0(\j_reg[0]_2 ),
        .I1(\FSM_onehot_state_reg[3]_3 ),
        .I2(\count[4]_i_5__3 [1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    count1_carry_i_29__0
       (.I0(a_in_4[9]),
        .I1(count1_carry_i_15__1_0),
        .I2(a_in_4[1]),
        .I3(count1_carry_i_15__1),
        .I4(\count[4]_i_5__3_0 [2]),
        .O(count1_carry_i_29__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h470047FF)) 
    count1_carry_i_31__0
       (.I0(\count[4]_i_5__3_0 [4]),
        .I1(count1_carry_i_15__1),
        .I2(a_in_4[3]),
        .I3(count1_carry_i_15__1_0),
        .I4(a_in_4[11]),
        .O(count1_carry_i_31__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    count1_carry_i_33__0
       (.I0(a_in_4[8]),
        .I1(count1_carry_i_15__1_0),
        .I2(a_in_4[0]),
        .I3(count1_carry_i_15__1),
        .I4(\count[4]_i_5__3_0 [1]),
        .O(count1_carry_i_33__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    count1_carry_i_34__0
       (.I0(\count[4]_i_5__3_0 [2]),
        .I1(count1_carry_i_15__1),
        .I2(a_in_4[1]),
        .I3(count1_carry_i_15__1_0),
        .I4(a_in_4[9]),
        .O(\FSM_onehot_state_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hCC55CC550F000FFF)) 
    count1_carry_i_36__0
       (.I0(a_in_4[10]),
        .I1(count1_carry_i_39__0_n_0),
        .I2(a_in_4[6]),
        .I3(count1_carry_i_15__1_0),
        .I4(a_in_4[14]),
        .I5(count1_carry_i_28__0),
        .O(\FSM_onehot_state_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h470047FF)) 
    count1_carry_i_38__0
       (.I0(\count[4]_i_5__3_0 [1]),
        .I1(count1_carry_i_15__1),
        .I2(a_in_4[0]),
        .I3(count1_carry_i_15__1_0),
        .I4(a_in_4[8]),
        .O(\FSM_onehot_state_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h47)) 
    count1_carry_i_39__0
       (.I0(\count[4]_i_5__3_0 [3]),
        .I1(count1_carry_i_15__1),
        .I2(a_in_4[2]),
        .O(count1_carry_i_39__0_n_0));
  LUT6 #(
    .INIT(64'hA000009008010108)) 
    count1_carry_i_4__5
       (.I0(count1_carry_i_7__6_n_0),
        .I1(\count_reg_reg[3] ),
        .I2(count1_carry_0),
        .I3(count1_carry_1),
        .I4(count1_carry_2),
        .I5(Q[0]),
        .O(count1_carry_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h6A56)) 
    count1_carry_i_6__4
       (.I0(\count_reg_reg[4] ),
        .I1(D[1]),
        .I2(count1_carry__1_i_1__3),
        .I3(count1_carry__1_i_1__3_0),
        .O(\count_reg_reg[3] ));
  LUT4 #(
    .INIT(16'h9669)) 
    count1_carry_i_7__6
       (.I0(Q[2]),
        .I1(count1_carry_i_4__5_0),
        .I2(D[0]),
        .I3(count1_carry_i_4__5_1),
        .O(count1_carry_i_7__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__5 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__5 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__5 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(plusOp__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__5 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .O(plusOp__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \count[4]_i_10__3 
       (.I0(\count[4]_i_5__4_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count[4]_i_10__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h61)) 
    \count[4]_i_19__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\j_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h4444444000000000)) 
    \count[4]_i_1__3 
       (.I0(done),
        .I1(\j_reg[2]_1 ),
        .I2(\count_reg[0]_1 ),
        .I3(\count_reg_reg[4] ),
        .I4(\count_reg[0]_0 ),
        .I5(count1),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \count[4]_i_20__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__5 
       (.I0(count_reg[4]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(count_reg[3]),
        .O(plusOp__5[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \count[4]_i_3__4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\j_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h55A655A655A6AAAA)) 
    \count[4]_i_5__4 
       (.I0(D[2]),
        .I1(\count_reg[0]_2 ),
        .I2(Q[0]),
        .I3(\count[4]_i_10__3_n_0 ),
        .I4(a_in_3),
        .I5(\j_reg[2]_1 ),
        .O(\count_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \count[4]_i_7__3 
       (.I0(a_in_4[11]),
        .I1(count1_carry_i_15__1_0),
        .I2(a_in_4[3]),
        .I3(count1_carry_i_15__1),
        .I4(\count[4]_i_5__3_0 [4]),
        .O(\FSM_onehot_state_reg[3]_0 ));
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
  LUT6 #(
    .INIT(64'hFFFFFFFF55551511)) 
    done_aux_i_1__7
       (.I0(Q[2]),
        .I1(count1),
        .I2(\count_reg[0]_0 ),
        .I3(done_aux_reg_0),
        .I4(done_aux_i_3_n_0),
        .I5(done),
        .O(done_aux_i_1__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    done_aux_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(done_aux_i_3_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__7_n_0),
        .Q(done));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__5 
       (.I0(Q[0]),
        .O(\j[0]_i_1__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\j_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \j[2]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__5));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__5_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j_reg[1]_2 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(p_0_in__5),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    valid_aux_i_1__3
       (.I0(valid_aux_i_2__4_n_0),
        .I1(Q[2]),
        .I2(valid),
        .O(valid_aux_i_1__3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    valid_aux_i_2__4
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .I5(done_aux_i_3_n_0),
        .O(valid_aux_i_2__4_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__3_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized6
   (CO,
    valid,
    \j_reg[0]_0 ,
    Q,
    \count_reg_reg[0] ,
    \j_reg[0]_1 ,
    \j_reg[0]_2 ,
    \count_reg_reg[0]_0 ,
    \j_reg[0]_3 ,
    \j_reg[0]_4 ,
    \j_reg[0]_5 ,
    \j_reg[1]_0 ,
    \count_reg_reg[1] ,
    E,
    \FSM_onehot_state_reg[1] ,
    valid_aux_reg_0,
    count1_carry__0_0,
    count1_carry__1_0,
    S,
    clk,
    AR,
    count1_carry__1_i_3__3,
    count1_carry_i_4__6_0,
    D,
    a_in_2,
    \count[4]_i_3__2 ,
    count1_carry_i_14__4_0,
    count1_carry_i_10__7,
    \count[4]_i_5__4 ,
    count1_carry_i_12__4_0,
    a_in_3,
    count1_carry_i_13__4_0,
    count1_carry_i_13__4_1,
    count1_carry_0,
    count1_carry_1,
    count1_carry_2,
    \count_reg_reg[0]_1 ,
    next_out_3,
    done_aux_reg_0,
    count1_carry_i_4__6_1,
    count1_carry_i_4__6_2);
  output [0:0]CO;
  output valid;
  output \j_reg[0]_0 ;
  output [1:0]Q;
  output \count_reg_reg[0] ;
  output \j_reg[0]_1 ;
  output \j_reg[0]_2 ;
  output \count_reg_reg[0]_0 ;
  output \j_reg[0]_3 ;
  output \j_reg[0]_4 ;
  output \j_reg[0]_5 ;
  output \j_reg[1]_0 ;
  output \count_reg_reg[1] ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]valid_aux_reg_0;
  input [2:0]count1_carry__0_0;
  input [3:0]count1_carry__1_0;
  input [2:0]S;
  input clk;
  input [0:0]AR;
  input [2:0]count1_carry__1_i_3__3;
  input count1_carry_i_4__6_0;
  input [2:0]D;
  input [0:0]a_in_2;
  input \count[4]_i_3__2 ;
  input [4:0]count1_carry_i_14__4_0;
  input count1_carry_i_10__7;
  input [1:0]\count[4]_i_5__4 ;
  input [0:0]count1_carry_i_12__4_0;
  input [9:0]a_in_3;
  input count1_carry_i_13__4_0;
  input count1_carry_i_13__4_1;
  input count1_carry_0;
  input count1_carry_1;
  input count1_carry_2;
  input [4:0]\count_reg_reg[0]_1 ;
  input next_out_3;
  input done_aux_reg_0;
  input count1_carry_i_4__6_1;
  input count1_carry_i_4__6_2;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire [1:0]Q;
  wire [2:0]S;
  wire [0:0]a_in_2;
  wire [9:0]a_in_3;
  wire clk;
  wire count;
  wire count1_carry_0;
  wire count1_carry_1;
  wire count1_carry_2;
  wire [2:0]count1_carry__0_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire [3:0]count1_carry__1_0;
  wire [2:0]count1_carry__1_i_3__3;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_10__4_n_0;
  wire count1_carry_i_10__7;
  wire [0:0]count1_carry_i_12__4_0;
  wire count1_carry_i_12__6_n_0;
  wire count1_carry_i_13__4_0;
  wire count1_carry_i_13__4_1;
  wire count1_carry_i_13__4_n_0;
  wire [4:0]count1_carry_i_14__4_0;
  wire count1_carry_i_14__4_n_0;
  wire count1_carry_i_15__2_n_0;
  wire count1_carry_i_16__2_n_0;
  wire count1_carry_i_17__2_n_0;
  wire count1_carry_i_4__6_0;
  wire count1_carry_i_4__6_1;
  wire count1_carry_i_4__6_2;
  wire count1_carry_i_4__6_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[4]_i_12__3_n_0 ;
  wire \count[4]_i_13__3_n_0 ;
  wire \count[4]_i_14__3_n_0 ;
  wire \count[4]_i_15__3_n_0 ;
  wire \count[4]_i_17__3_n_0 ;
  wire \count[4]_i_18__3_n_0 ;
  wire \count[4]_i_3__2 ;
  wire [1:0]\count[4]_i_5__4 ;
  wire [4:0]count_reg;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [4:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1] ;
  wire done;
  wire done_aux_i_1__3_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1__6_n_0 ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[0]_3 ;
  wire \j_reg[0]_4 ;
  wire \j_reg[0]_5 ;
  wire \j_reg[1]_0 ;
  wire next_out_3;
  wire [4:0]plusOp__6;
  wire valid;
  wire valid_aux_i_1__7_n_0;
  wire valid_aux_i_2__5_n_0;
  wire [0:0]valid_aux_reg_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__6 
       (.I0(valid),
        .I1(\count_reg_reg[0]_1 [2]),
        .O(valid_aux_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__0 
       (.I0(\count_reg_reg[0]_1 [3]),
        .I1(next_out_3),
        .I2(done),
        .I3(\count_reg_reg[0]_1 [2]),
        .I4(\count_reg_reg[0]_1 [1]),
        .I5(\count_reg_reg[0]_1 [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__1
       (.I0(\count_reg_reg[0]_1 [1]),
        .I1(\count_reg_reg[0]_1 [0]),
        .I2(\count_reg_reg[0]_1 [4]),
        .I3(done),
        .I4(\count_reg_reg[0]_1 [2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_0,count1_carry_i_4__6_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S(count1_carry__1_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],CO,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,S}));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    count1_carry_i_10__4
       (.I0(count1_carry_i_4__6_1),
        .I1(D[1]),
        .I2(count1_carry_i_4__6_2),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count1_carry_i_10__4_n_0));
  LUT5 #(
    .INIT(32'h303FAAAA)) 
    count1_carry_i_11__5
       (.I0(count1_carry_i_14__4_0[0]),
        .I1(count1_carry_i_13__4_n_0),
        .I2(\count[4]_i_5__4 [0]),
        .I3(count1_carry_i_14__4_n_0),
        .I4(count1_carry_i_10__7),
        .O(\j_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h2E222EEE)) 
    count1_carry_i_12__4
       (.I0(count1_carry_i_14__4_0[1]),
        .I1(count1_carry_i_10__7),
        .I2(\count[4]_i_13__3_n_0 ),
        .I3(\count[4]_i_5__4 [0]),
        .I4(count1_carry_i_13__4_n_0),
        .O(\j_reg[0]_2 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    count1_carry_i_12__6
       (.I0(count1_carry_i_4__6_0),
        .I1(D[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(count1_carry_i_12__6_n_0));
  MUXF7 count1_carry_i_13__4
       (.I0(count1_carry_i_15__2_n_0),
        .I1(count1_carry_i_16__2_n_0),
        .O(count1_carry_i_13__4_n_0),
        .S(count1_carry_i_12__4_0));
  LUT4 #(
    .INIT(16'hEB28)) 
    count1_carry_i_14__4
       (.I0(count1_carry_i_17__2_n_0),
        .I1(\count[4]_i_5__4 [1]),
        .I2(\count[4]_i_5__4 [0]),
        .I3(\count[4]_i_18__3_n_0 ),
        .O(count1_carry_i_14__4_n_0));
  LUT5 #(
    .INIT(32'h001DFF1D)) 
    count1_carry_i_15__2
       (.I0(a_in_3[3]),
        .I1(count1_carry_i_13__4_1),
        .I2(count1_carry_i_14__4_0[1]),
        .I3(count1_carry_i_13__4_0),
        .I4(a_in_3[7]),
        .O(count1_carry_i_15__2_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    count1_carry_i_16__2
       (.I0(count1_carry_i_14__4_0[3]),
        .I1(a_in_3[5]),
        .I2(count1_carry_i_13__4_0),
        .I3(a_in_3[9]),
        .I4(count1_carry_i_13__4_1),
        .I5(a_in_3[1]),
        .O(count1_carry_i_16__2_n_0));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    count1_carry_i_17__2
       (.I0(count1_carry_i_14__4_0[2]),
        .I1(a_in_3[4]),
        .I2(a_in_3[8]),
        .I3(count1_carry_i_13__4_1),
        .I4(a_in_3[0]),
        .I5(count1_carry_i_13__4_0),
        .O(count1_carry_i_17__2_n_0));
  LUT6 #(
    .INIT(64'h08010108900000A0)) 
    count1_carry_i_4__6
       (.I0(count1_carry_i_10__4_n_0),
        .I1(count1_carry_0),
        .I2(count1_carry_1),
        .I3(count1_carry_i_12__6_n_0),
        .I4(count1_carry_2),
        .I5(Q[0]),
        .O(count1_carry_i_4__6_n_0));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    count1_carry_i_5__6
       (.I0(\j_reg[0]_1 ),
        .I1(count1_carry__1_i_3__3[0]),
        .I2(count1_carry__1_i_3__3[1]),
        .I3(\j_reg[0]_2 ),
        .I4(count1_carry__1_i_3__3[2]),
        .I5(\j_reg[0]_3 ),
        .O(\count_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_7__7
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\j_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__6 
       (.I0(count_reg[0]),
        .O(plusOp__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__6 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__6 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__6 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(plusOp__6[3]));
  LUT5 #(
    .INIT(32'h0CFC5555)) 
    \count[4]_i_11__2 
       (.I0(count1_carry_i_14__4_0[3]),
        .I1(\count[4]_i_12__3_n_0 ),
        .I2(\count[4]_i_5__4 [0]),
        .I3(\j_reg[1]_0 ),
        .I4(count1_carry_i_10__7),
        .O(\j_reg[0]_5 ));
  LUT4 #(
    .INIT(16'h5335)) 
    \count[4]_i_12__3 
       (.I0(\count_reg_reg[1] ),
        .I1(\count[4]_i_17__3_n_0 ),
        .I2(\count[4]_i_5__4 [1]),
        .I3(\count[4]_i_5__4 [0]),
        .O(\count[4]_i_12__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5CC5)) 
    \count[4]_i_13__3 
       (.I0(\count[4]_i_14__3_n_0 ),
        .I1(\count[4]_i_18__3_n_0 ),
        .I2(\count[4]_i_5__4 [1]),
        .I3(\count[4]_i_5__4 [0]),
        .O(\count[4]_i_13__3_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \count[4]_i_14__3 
       (.I0(a_in_3[0]),
        .I1(a_in_3[8]),
        .I2(count1_carry_i_14__4_0[2]),
        .I3(count1_carry_i_13__4_1),
        .I4(a_in_3[4]),
        .I5(count1_carry_i_13__4_0),
        .O(\count[4]_i_14__3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[4]_i_15__3 
       (.I0(a_in_3[2]),
        .I1(count1_carry_i_14__4_0[0]),
        .I2(count1_carry_i_13__4_0),
        .I3(count1_carry_i_14__4_0[4]),
        .I4(count1_carry_i_13__4_1),
        .I5(a_in_3[6]),
        .O(\count[4]_i_15__3_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \count[4]_i_16__3 
       (.I0(a_in_3[1]),
        .I1(a_in_3[9]),
        .I2(count1_carry_i_14__4_0[3]),
        .I3(count1_carry_i_13__4_1),
        .I4(a_in_3[5]),
        .I5(count1_carry_i_13__4_0),
        .O(\count_reg_reg[1] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \count[4]_i_17__3 
       (.I0(a_in_3[7]),
        .I1(count1_carry_i_13__4_0),
        .I2(count1_carry_i_14__4_0[1]),
        .I3(count1_carry_i_13__4_1),
        .I4(a_in_3[3]),
        .O(\count[4]_i_17__3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count[4]_i_18__3 
       (.I0(count1_carry_i_14__4_0[4]),
        .I1(a_in_3[6]),
        .I2(count1_carry_i_13__4_0),
        .I3(count1_carry_i_14__4_0[0]),
        .I4(count1_carry_i_13__4_1),
        .I5(a_in_3[2]),
        .O(\count[4]_i_18__3_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \count[4]_i_1__5 
       (.I0(done),
        .I1(Q[1]),
        .I2(done_aux_reg_0),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_2__6 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(plusOp__6[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2FD00DF2)) 
    \count[4]_i_6__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(a_in_2),
        .I3(D[2]),
        .I4(\count[4]_i_3__2 ),
        .O(\j_reg[0]_4 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \count[4]_i_7__5 
       (.I0(\j_reg[0]_1 ),
        .I1(count1_carry__1_i_3__3[0]),
        .I2(count1_carry__1_i_3__3[1]),
        .I3(\j_reg[0]_2 ),
        .O(\count_reg_reg[0] ));
  LUT5 #(
    .INIT(32'h2E222EEE)) 
    \count[4]_i_8__3 
       (.I0(count1_carry_i_14__4_0[2]),
        .I1(count1_carry_i_10__7),
        .I2(\count[4]_i_12__3_n_0 ),
        .I3(\count[4]_i_5__4 [0]),
        .I4(\count[4]_i_13__3_n_0 ),
        .O(\j_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \count[4]_i_9__2 
       (.I0(\count[4]_i_14__3_n_0 ),
        .I1(\count[4]_i_5__4 [1]),
        .I2(\count[4]_i_5__4 [0]),
        .I3(\count[4]_i_15__3_n_0 ),
        .O(\j_reg[1]_0 ));
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
  LUT4 #(
    .INIT(16'hFF1B)) 
    done_aux_i_1__3
       (.I0(Q[1]),
        .I1(done_aux_reg_0),
        .I2(Q[0]),
        .I3(done),
        .O(done_aux_i_1__3_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__3_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1__6 
       (.I0(Q[0]),
        .O(\j[0]_i_1__6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \j[1]_i_1__6 
       (.I0(Q[1]),
        .I1(done),
        .O(j0));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(\j[0]_i_1__6_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(Q[0]),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    valid_aux_i_1__7
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(valid_aux_i_2__5_n_0),
        .I3(valid),
        .O(valid_aux_i_1__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    valid_aux_i_2__5
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .O(valid_aux_i_2__5_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__7_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized7
   (j_reg,
    CO,
    valid,
    \count_reg_reg[1] ,
    \count_reg_reg[2] ,
    \j_reg[1] ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    \count_reg_reg[0] ,
    \j_reg[1]_0 ,
    \j_reg[0]_0 ,
    \count_reg_reg[3] ,
    E,
    \FSM_onehot_state_reg[1] ,
    D,
    clk,
    AR,
    count1_carry__0_0,
    count1_carry__1_0,
    S,
    \count[4]_i_3__2_0 ,
    done_aux_reg_0,
    count1_carry__1_1,
    done_aux_reg_1,
    count1_carry_i_19__1_0,
    Q,
    a_in_2,
    done_aux_reg_2,
    done_aux_reg_3,
    done_aux_reg_4,
    \count_reg_reg[0]_0 ,
    next_out_2);
  output [0:0]j_reg;
  output [0:0]CO;
  output valid;
  output \count_reg_reg[1] ;
  output [2:0]\count_reg_reg[2] ;
  output \j_reg[1] ;
  output \count_reg_reg[2]_0 ;
  output [3:0]\count_reg_reg[2]_1 ;
  output [2:0]\count_reg_reg[2]_2 ;
  output \count_reg_reg[0] ;
  output \j_reg[1]_0 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[3] ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1] ;
  output [0:0]D;
  input clk;
  input [0:0]AR;
  input [3:0]count1_carry__0_0;
  input [3:0]count1_carry__1_0;
  input [2:0]S;
  input \count[4]_i_3__2_0 ;
  input [3:0]done_aux_reg_0;
  input count1_carry__1_1;
  input done_aux_reg_1;
  input [1:0]count1_carry_i_19__1_0;
  input [4:0]Q;
  input [4:0]a_in_2;
  input done_aux_reg_2;
  input [0:0]done_aux_reg_3;
  input done_aux_reg_4;
  input [4:0]\count_reg_reg[0]_0 ;
  input next_out_2;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire [4:0]Q;
  wire [2:0]S;
  wire [4:0]a_in_2;
  wire clk;
  wire count;
  wire [3:0]count1_carry__0_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire [3:0]count1_carry__1_0;
  wire count1_carry__1_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_14__5_n_0;
  wire count1_carry_i_15__4_n_0;
  wire count1_carry_i_18__1_n_0;
  wire [1:0]count1_carry_i_19__1_0;
  wire count1_carry_i_19__1_n_0;
  wire count1_carry_i_20__1_n_0;
  wire count1_carry_i_5__5_n_0;
  wire count1_carry_i_9__6_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1__7_n_0 ;
  wire \count[4]_i_3__2_0 ;
  wire \count[4]_i_5__6_n_0 ;
  wire [4:0]count_reg;
  wire \count_reg_reg[0] ;
  wire [4:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire [2:0]\count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire [3:0]\count_reg_reg[2]_1 ;
  wire [2:0]\count_reg_reg[2]_2 ;
  wire \count_reg_reg[3] ;
  wire done;
  wire done_aux_i_1__2_n_0;
  wire [3:0]done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_aux_reg_2;
  wire [0:0]done_aux_reg_3;
  wire done_aux_reg_4;
  wire j0;
  wire [0:0]j_reg;
  wire \j_reg[0]_0 ;
  wire \j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire next_out_2;
  wire [4:1]plusOp__7;
  wire valid;
  wire valid_aux_i_1__4_n_0;
  wire valid_aux_i_2__6_n_0;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__7 
       (.I0(valid),
        .I1(\count_reg_reg[0]_0 [2]),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\count_reg_reg[0]_0 [3]),
        .I1(next_out_2),
        .I2(done),
        .I3(\count_reg_reg[0]_0 [2]),
        .I4(\count_reg_reg[0]_0 [1]),
        .I5(\count_reg_reg[0]_0 [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2
       (.I0(\count_reg_reg[0]_0 [1]),
        .I1(\count_reg_reg[0]_0 [0]),
        .I2(\count_reg_reg[0]_0 [4]),
        .I3(done),
        .I4(\count_reg_reg[0]_0 [2]),
        .I5(valid),
        .O(\FSM_onehot_state_reg[1] ));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S(count1_carry__0_0));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S(count1_carry__1_0));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry__0_i_1__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2]_1 [3]));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry__0_i_2__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2]_1 [2]));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry__0_i_3__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2]_1 [1]));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry__0_i_4__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2]_1 [0]));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],CO,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,S}));
  LUT6 #(
    .INIT(64'hFF00EB00FF00FF00)) 
    count1_carry__1_i_1__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2] [2]));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry__1_i_2__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry__1_i_3__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_13__5
       (.I0(count1_carry_i_18__1_n_0),
        .I1(done_aux_reg_0[1]),
        .O(\count_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h084C2A6E195D3B7F)) 
    count1_carry_i_14__5
       (.I0(count1_carry_i_19__1_0[0]),
        .I1(count1_carry_i_19__1_0[1]),
        .I2(Q[3]),
        .I3(a_in_2[4]),
        .I4(a_in_2[2]),
        .I5(Q[1]),
        .O(count1_carry_i_14__5_n_0));
  LUT6 #(
    .INIT(64'h048C26AE159D37BF)) 
    count1_carry_i_15__4
       (.I0(count1_carry_i_19__1_0[0]),
        .I1(count1_carry_i_19__1_0[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(a_in_2[3]),
        .I5(Q[2]),
        .O(count1_carry_i_15__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h022F)) 
    count1_carry_i_16__3
       (.I0(\j_reg[1]_0 ),
        .I1(done_aux_reg_0[0]),
        .I2(done_aux_reg_0[1]),
        .I3(count1_carry_i_18__1_n_0),
        .O(\count_reg_reg[0] ));
  LUT5 #(
    .INIT(32'hFB51EA40)) 
    count1_carry_i_17__3
       (.I0(count1_carry_i_19__1_0[1]),
        .I1(count1_carry_i_19__1_0[0]),
        .I2(a_in_2[0]),
        .I3(Q[0]),
        .I4(count1_carry_i_19__1_n_0),
        .O(\j_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h27772272)) 
    count1_carry_i_18__1
       (.I0(count1_carry_i_19__1_0[1]),
        .I1(Q[1]),
        .I2(count1_carry_i_19__1_0[0]),
        .I3(count1_carry_i_19__1_n_0),
        .I4(count1_carry_i_14__5_n_0),
        .O(count1_carry_i_18__1_n_0));
  LUT6 #(
    .INIT(64'hFB73D951EA62C840)) 
    count1_carry_i_19__1
       (.I0(count1_carry_i_19__1_0[0]),
        .I1(count1_carry_i_19__1_0[1]),
        .I2(a_in_2[3]),
        .I3(Q[2]),
        .I4(count1_carry_i_20__1_n_0),
        .I5(Q[0]),
        .O(count1_carry_i_19__1_n_0));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry_i_1__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2]_2 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    count1_carry_i_20__1
       (.I0(a_in_2[1]),
        .I1(count1_carry_i_19__1_0[0]),
        .I2(count1_carry_i_19__1_0[1]),
        .I3(Q[4]),
        .O(count1_carry_i_20__1_n_0));
  LUT6 #(
    .INIT(64'hFF00EB14FF00FF00)) 
    count1_carry_i_2__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(count1_carry__1_1),
        .I4(\count_reg_reg[2]_0 ),
        .I5(count1_carry_i_9__6_n_0),
        .O(\count_reg_reg[2]_2 [1]));
  LUT6 #(
    .INIT(64'hFF0000EB00000000)) 
    count1_carry_i_3__4
       (.I0(count1_carry_i_5__5_n_0),
        .I1(\j_reg[1] ),
        .I2(done_aux_reg_0[2]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry_i_9__6_n_0),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[2]_2 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    count1_carry_i_5__5
       (.I0(\count_reg_reg[1] ),
        .I1(\count[4]_i_3__2_0 ),
        .O(count1_carry_i_5__5_n_0));
  LUT5 #(
    .INIT(32'h72777222)) 
    count1_carry_i_6__7
       (.I0(count1_carry_i_19__1_0[1]),
        .I1(Q[2]),
        .I2(count1_carry_i_14__5_n_0),
        .I3(count1_carry_i_19__1_0[0]),
        .I4(count1_carry_i_15__4_n_0),
        .O(\j_reg[1] ));
  LUT6 #(
    .INIT(64'h00FF2BD42BD4FF00)) 
    count1_carry_i_8__7
       (.I0(\count_reg_reg[0] ),
        .I1(done_aux_reg_0[2]),
        .I2(\j_reg[1] ),
        .I3(done_aux_reg_1),
        .I4(done_aux_reg_0[3]),
        .I5(\count[4]_i_5__6_n_0 ),
        .O(\count_reg_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    count1_carry_i_9__6
       (.I0(\count_reg_reg[0] ),
        .I1(done_aux_reg_0[2]),
        .I2(\j_reg[1] ),
        .I3(\count[4]_i_5__6_n_0 ),
        .I4(done_aux_reg_0[3]),
        .O(count1_carry_i_9__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__7 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__7 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1__7 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(plusOp__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1__7 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp__7[3]));
  LUT3 #(
    .INIT(8'h10)) 
    \count[4]_i_1__7 
       (.I0(j_reg),
        .I1(done),
        .I2(done_aux_reg_2),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
    .INIT(64'hAAAAAAAAAA8A8AAA)) 
    \count[4]_i_3__2 
       (.I0(done_aux_reg_3),
        .I1(count1_carry_i_5__5_n_0),
        .I2(done_aux_reg_4),
        .I3(\count[4]_i_5__6_n_0 ),
        .I4(done_aux_reg_0[3]),
        .I5(done_aux_reg_1),
        .O(\count_reg_reg[3] ));
  LUT5 #(
    .INIT(32'h72777222)) 
    \count[4]_i_5__6 
       (.I0(count1_carry_i_19__1_0[1]),
        .I1(Q[3]),
        .I2(count1_carry_i_15__4_n_0),
        .I3(count1_carry_i_19__1_0[0]),
        .I4(\j_reg[0]_0 ),
        .O(\count[4]_i_5__6_n_0 ));
  LUT6 #(
    .INIT(64'h0123456789ABCDEF)) 
    \count[4]_i_7__6 
       (.I0(count1_carry_i_19__1_0[0]),
        .I1(count1_carry_i_19__1_0[1]),
        .I2(Q[3]),
        .I3(a_in_2[4]),
        .I4(Q[1]),
        .I5(a_in_2[2]),
        .O(\j_reg[0]_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(\count[0]_i_1__7_n_0 ),
        .Q(count_reg[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__7[1]),
        .Q(count_reg[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__7[2]),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__7[3]),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(count),
        .CLR(AR),
        .D(plusOp__7[4]),
        .Q(count_reg[4]));
  LUT3 #(
    .INIT(8'hFB)) 
    done_aux_i_1__2
       (.I0(j_reg),
        .I1(done_aux_reg_2),
        .I2(done),
        .O(done_aux_i_1__2_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1__2_n_0),
        .Q(done));
  LUT2 #(
    .INIT(4'h1)) 
    \j[0]_i_1__7 
       (.I0(j_reg),
        .I1(done),
        .O(j0));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(j0),
        .CLR(AR),
        .D(1'b1),
        .Q(j_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hD)) 
    valid_aux_i_1__4
       (.I0(valid_aux_i_2__6_n_0),
        .I1(valid),
        .O(valid_aux_i_1__4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    valid_aux_i_2__6
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[3]),
        .I3(j_reg),
        .I4(count_reg[2]),
        .I5(count_reg[4]),
        .O(valid_aux_i_2__6_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1__4_n_0),
        .Q(valid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_nqueens_0_1,top_nqueens,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top_nqueens,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    nRst,
    flag,
    done,
    counter);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input nRst;
  output flag;
  output done;
  output [11:0]counter;

  wire clk;
  wire [11:0]counter;
  wire done;
  wire flag;
  wire nRst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens U0
       (.clk(clk),
        .counter(counter),
        .done(done),
        .flag(flag),
        .nRst(nRst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm
   (next_out_9,
    \j_reg[2] ,
    \j_reg[1] ,
    \j_reg[1]_0 ,
    \j_reg[1]_1 ,
    \j_reg[1]_2 ,
    \j_reg[1]_3 ,
    \j_reg[1]_4 ,
    \j_reg[1]_5 ,
    E,
    clk,
    \count_reg[0] ,
    Q,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    done_aux_i_4,
    \count[4]_i_5 ,
    \count[4]_i_5_0 ,
    \count[4]_i_5_1 ,
    \count[4]_i_5_2 ,
    \count[4]_i_12 ,
    \count[4]_i_12_0 ,
    \count[4]_i_7 ,
    \count[4]_i_7_0 ,
    count1_carry_i_14,
    count1_carry_i_14_0,
    SR,
    AR);
  output next_out_9;
  output \j_reg[2] ;
  output [1:0]\j_reg[1] ;
  output \j_reg[1]_0 ;
  output \j_reg[1]_1 ;
  output \j_reg[1]_2 ;
  output \j_reg[1]_3 ;
  output \j_reg[1]_4 ;
  output \j_reg[1]_5 ;
  output [0:0]E;
  input clk;
  input \count_reg[0] ;
  input [1:0]Q;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input done_aux_i_4;
  input \count[4]_i_5 ;
  input \count[4]_i_5_0 ;
  input \count[4]_i_5_1 ;
  input \count[4]_i_5_2 ;
  input \count[4]_i_12 ;
  input \count[4]_i_12_0 ;
  input \count[4]_i_7 ;
  input \count[4]_i_7_0 ;
  input count1_carry_i_14;
  input count1_carry_i_14_0;
  input [0:0]SR;
  input [0:0]AR;

  wire [0:0]AR;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ack_out_9;
  wire acks_out;
  wire \asout_array[9]_0 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__0_n_0;
  wire clk;
  wire count1_carry_i_14;
  wire count1_carry_i_14_0;
  wire \count[4]_i_12 ;
  wire \count[4]_i_12_0 ;
  wire \count[4]_i_5 ;
  wire \count[4]_i_5_0 ;
  wire \count[4]_i_5_1 ;
  wire \count[4]_i_5_2 ;
  wire \count[4]_i_7 ;
  wire \count[4]_i_7_0 ;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire done_aux_i_4;
  wire dut_n_10;
  wire dut_n_2;
  wire dut_n_3;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [2:2]j_reg;
  wire [1:0]\j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[1]_2 ;
  wire \j_reg[1]_3 ;
  wire \j_reg[1]_4 ;
  wire \j_reg[1]_5 ;
  wire j_reg_2_sn_1;
  wire logic_n_10;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_8;
  wire logic_n_9;
  wire next_out_9;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1_n_0;
  wire [4:3]u_i;
  wire valid;

  assign E[0] = ack_out_9;
  assign \j_reg[2]  = j_reg_2_sn_1;
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_15),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_10),
        .Q(ce__0),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_15),
        .D(logic_n_16),
        .Q(\asout_array[9]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_8),
        .Q(nexts_out),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_14),
        .GE(1'b1),
        .Q(ack_out_9));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__0
       (.I0(ce__0),
        .I1(nexts_out),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .I3(ce__0),
        .O(ce_reg_i_1__0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter dut
       (.AR(AR),
        .D({dut_n_8,dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[9]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .S(dut_n_2),
        .clk(clk),
        .count1_carry(logic_n_10),
        .count1_carry__1_i_3(logic_n_8),
        .count1_carry_i_4_0({j_reg,\j_reg[1] }),
        .\count_reg[0] (\count_reg[0] ),
        .\count_reg[0]_0 (\count_reg[0]_1 ),
        .\count_reg_reg[0]_0 (dut_n_6),
        .\count_reg_reg[2]_0 (dut_n_3),
        .\count_reg_reg[2]_1 (dut_n_4),
        .\count_reg_reg[2]_2 (dut_n_5),
        .\count_reg_reg[3]_0 (dut_n_7),
        .done_aux_i_4_0(done_aux_i_4),
        .done_aux_reg(logic_n_9),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic logic
       (.AR(reset_control),
        .D(logic_n_16),
        .E(logic_n_15),
        .\FSM_onehot_state_reg[0] (logic_n_14),
        .Q(u_i),
        .S(dut_n_2),
        .acks_out_reg({nexts_out,\asout_array[9]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .clk(clk),
        .count1_carry__1_0(dut_n_7),
        .count1_carry__1_1(dut_n_3),
        .count1_carry_i_14(count1_carry_i_14),
        .count1_carry_i_14_0(count1_carry_i_14_0),
        .count1_carry_i_4(dut_n_6),
        .\count[4]_i_12_0 (\count[4]_i_12 ),
        .\count[4]_i_12_1 (\count[4]_i_12_0 ),
        .\count[4]_i_5_0 (\count[4]_i_5 ),
        .\count[4]_i_5_1 (\count[4]_i_5_0 ),
        .\count[4]_i_5_2 (\count[4]_i_5_1 ),
        .\count[4]_i_5_3 (\count[4]_i_5_2 ),
        .\count[4]_i_7_0 (\count[4]_i_7 ),
        .\count[4]_i_7_1 (\count[4]_i_7_0 ),
        .\count_reg[0]_0 (Q),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .\count_reg[0]_2 (dut_n_5),
        .\count_reg_reg[4] (logic_n_9),
        .done_aux_reg_0(dut_n_4),
        .\j_reg[0]_0 (logic_n_8),
        .\j_reg[1]_0 (\j_reg[1]_0 ),
        .\j_reg[1]_1 (\j_reg[1]_1 ),
        .\j_reg[1]_2 (\j_reg[1]_2 ),
        .\j_reg[1]_3 (logic_n_10),
        .\j_reg[1]_4 (\j_reg[1]_3 ),
        .\j_reg[1]_5 (\j_reg[1]_4 ),
        .\j_reg[1]_6 (\j_reg[1]_5 ),
        .\j_reg[2]_0 (j_reg_2_sn_1),
        .\j_reg[2]_1 ({j_reg,\j_reg[1] }),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_9));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0
   (AR,
    next_out_8,
    Q,
    \count_reg_reg[2] ,
    \j_reg[0] ,
    \j_reg[3] ,
    \j_reg[3]_0 ,
    \j_reg[3]_1 ,
    \j_reg[0]_0 ,
    \j_reg[0]_1 ,
    \j_reg[0]_2 ,
    \j_reg[1] ,
    \j_reg[1]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \j_reg[1]_1 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \count_reg_reg[3] ,
    \count_reg_reg[2]_0 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \count_reg_reg[0] ,
    \j_reg[2] ,
    \j_reg[3]_2 ,
    \j_reg[2]_0 ,
    \j_reg[2]_1 ,
    \j_reg[2]_2 ,
    SR,
    clk,
    \count[4]_i_17 ,
    \count[4]_i_17_0 ,
    count1_carry_i_14,
    count1_carry_i_4__0,
    done_aux_reg,
    \count_reg[0] ,
    a_in_8,
    \count[4]_i_11 ,
    \count[4]_i_4 ,
    count1_carry_i_13,
    count1_carry_i_13_0,
    count1_carry_i_13_1,
    count1_carry,
    count1_carry_i_4__0_0,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    done_aux_i_2__0,
    \count[4]_i_11__3 ,
    \count[4]_i_11__3_0 ,
    \count[4]_i_7__0 ,
    next_out_9,
    \count[4]_i_5__5 ,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_8;
  output [1:0]Q;
  output [2:0]\count_reg_reg[2] ;
  output \j_reg[0] ;
  output [3:0]\j_reg[3] ;
  output \j_reg[3]_0 ;
  output \j_reg[3]_1 ;
  output \j_reg[0]_0 ;
  output \j_reg[0]_1 ;
  output \j_reg[0]_2 ;
  output \j_reg[1] ;
  output \j_reg[1]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \j_reg[1]_1 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[2]_0 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \count_reg_reg[0] ;
  output \j_reg[2] ;
  output \j_reg[3]_2 ;
  output \j_reg[2]_0 ;
  output \j_reg[2]_1 ;
  output \j_reg[2]_2 ;
  output [0:0]SR;
  input clk;
  input \count[4]_i_17 ;
  input \count[4]_i_17_0 ;
  input count1_carry_i_14;
  input count1_carry_i_4__0;
  input done_aux_reg;
  input \count_reg[0] ;
  input [39:0]a_in_8;
  input [1:0]\count[4]_i_11 ;
  input \count[4]_i_4 ;
  input count1_carry_i_13;
  input count1_carry_i_13_0;
  input count1_carry_i_13_1;
  input count1_carry;
  input count1_carry_i_4__0_0;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input done_aux_i_2__0;
  input \count[4]_i_11__3 ;
  input \count[4]_i_11__3_0 ;
  input \count[4]_i_7__0 ;
  input next_out_9;
  input \count[4]_i_5__5 ;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [39:0]a_in_8;
  wire [42:0]a_in_9;
  wire acks_out;
  wire \asout_array[8]_1 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__2_n_0;
  wire clk;
  wire count1_carry;
  wire count1_carry_i_13;
  wire count1_carry_i_13_0;
  wire count1_carry_i_13_1;
  wire count1_carry_i_14;
  wire count1_carry_i_4__0;
  wire count1_carry_i_4__0_0;
  wire [1:0]\count[4]_i_11 ;
  wire \count[4]_i_11__3 ;
  wire \count[4]_i_11__3_0 ;
  wire \count[4]_i_17 ;
  wire \count[4]_i_17_0 ;
  wire \count[4]_i_4 ;
  wire \count[4]_i_5__5 ;
  wire \count[4]_i_7__0 ;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire [2:0]\count_reg_reg[2] ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3] ;
  wire done_aux_i_2__0;
  wire done_aux_reg;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_6;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[2] ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire \j_reg[2]_2 ;
  wire [3:0]\j_reg[3] ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_2 ;
  wire logic_n_22;
  wire logic_n_28;
  wire logic_n_29;
  wire logic_n_30;
  wire nRst;
  wire next_out_8;
  wire next_out_9;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__0_n_0;
  wire [4:3]u_i;
  wire valid;

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
        .CE(logic_n_28),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_28),
        .D(dut_n_10),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_28),
        .D(dut_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_28),
        .D(logic_n_30),
        .Q(\asout_array[8]_1 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_28),
        .D(dut_n_8),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_29),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__2
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[2] [0]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[2] [1]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[2] [2]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_8[0]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_8[1]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_8[2]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_8[3]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_8[4]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_8[5]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_8[6]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_8[7]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_8[8]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_8[9]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_8[10]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_8[11]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_8[12]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_8[13]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_8[14]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_8[15]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_8[16]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_8[17]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_8[18]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_8[19]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_8[20]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_8[21]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_8[22]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_8[23]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_8[24]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][0] 
       (.CLR(1'b0),
        .D(a_in_8[25]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][1] 
       (.CLR(1'b0),
        .D(a_in_8[26]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][2] 
       (.CLR(1'b0),
        .D(a_in_8[27]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[32]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][3] 
       (.CLR(1'b0),
        .D(a_in_8[28]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[33]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][4] 
       (.CLR(1'b0),
        .D(a_in_8[29]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[34]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][0] 
       (.CLR(1'b0),
        .D(a_in_8[30]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[35]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][1] 
       (.CLR(1'b0),
        .D(a_in_8[31]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[36]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][2] 
       (.CLR(1'b0),
        .D(a_in_8[32]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[37]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][3] 
       (.CLR(1'b0),
        .D(a_in_8[33]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[38]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][4] 
       (.CLR(1'b0),
        .D(a_in_8[34]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[39]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][0] 
       (.CLR(1'b0),
        .D(a_in_8[35]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[40]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][1] 
       (.CLR(1'b0),
        .D(a_in_8[36]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[41]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][2] 
       (.CLR(1'b0),
        .D(a_in_8[37]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[42]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][3] 
       (.CLR(1'b0),
        .D(a_in_8[38]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][4] 
       (.CLR(1'b0),
        .D(a_in_8[39]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1__2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 dut
       (.D({dut_n_8,dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[8]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q({u_i,\count_reg_reg[2] }),
        .clk(clk),
        .\count_reg[0] (logic_n_22),
        .\count_reg[0]_0 (\count_reg[0]_1 ),
        .\count_reg[0]_1 (\count_reg[0]_2 ),
        .\count_reg[0]_2 (\count_reg[0]_0 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[1]_0 (dut_n_6),
        .\count_reg_reg[3]_0 (dut_n_0),
        .done_aux_i_2__0(done_aux_i_2__0),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized0 logic
       (.AR(reset_control),
        .D({u_i,\count_reg_reg[2] [2]}),
        .E(logic_n_28),
        .\FSM_onehot_state_reg[1] (logic_n_29),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_3 ),
        .\FSM_onehot_state_reg[3]_3 (\FSM_onehot_state_reg[3]_4 ),
        .\FSM_onehot_state_reg[3]_4 (\FSM_onehot_state_reg[3]_5 ),
        .Q(\j_reg[3] ),
        .a_in_8({a_in_8[39:38],a_in_8[30],a_in_8[14],a_in_8[7]}),
        .a_in_9(a_in_9),
        .clk(clk),
        .count1_carry_0(\count_reg_reg[0] ),
        .count1_carry_1(count1_carry),
        .count1_carry_i_13_0(count1_carry_i_13),
        .count1_carry_i_13_1(count1_carry_i_13_0),
        .count1_carry_i_13_2(count1_carry_i_13_1),
        .count1_carry_i_14_0(count1_carry_i_14),
        .count1_carry_i_17(Q),
        .count1_carry_i_4__0_0(count1_carry_i_4__0),
        .count1_carry_i_4__0_1(count1_carry_i_4__0_0),
        .count1_carry_i_4__0_2(\count_reg[0]_0 ),
        .count1_carry_i_4__0_3(\count_reg[0]_1 ),
        .\count[4]_i_11_0 (\count[4]_i_11 ),
        .\count[4]_i_11__3_0 (\count[4]_i_11__3 ),
        .\count[4]_i_11__3_1 (\count[4]_i_11__3_0 ),
        .\count[4]_i_17_0 (\count[4]_i_17 ),
        .\count[4]_i_17_1 (\count[4]_i_17_0 ),
        .\count[4]_i_4 (\count[4]_i_4 ),
        .\count[4]_i_5__5 (\count[4]_i_5__5 ),
        .\count[4]_i_7__0_0 (\count[4]_i_7__0 ),
        .\count_reg[0]_0 (dut_n_0),
        .\count_reg[0]_1 (dut_n_6),
        .\count_reg[0]_2 (\count_reg[0] ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[8]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2]_0 ),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .done_aux_reg_0(done_aux_reg),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .\j_reg[0]_2 (\j_reg[0]_1 ),
        .\j_reg[0]_3 (\j_reg[0]_2 ),
        .\j_reg[0]_4 (logic_n_22),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[1]_1 (\j_reg[1]_0 ),
        .\j_reg[1]_2 (\j_reg[1]_1 ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[2]_1 (\j_reg[2]_0 ),
        .\j_reg[2]_2 (\j_reg[2]_1 ),
        .\j_reg[2]_3 (\j_reg[2]_2 ),
        .\j_reg[3]_0 (\j_reg[3]_0 ),
        .\j_reg[3]_1 (\j_reg[3]_1 ),
        .\j_reg[3]_2 (\j_reg[3]_2 ),
        .next_out_9(next_out_9),
        .valid(valid),
        .valid_aux_reg_0(logic_n_30));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_8));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__0_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1
   (AR,
    next_out_7,
    \j_reg[2] ,
    \j_reg[2]_0 ,
    \j_reg[0] ,
    \j_reg[3] ,
    \count_reg_reg[0] ,
    \j_reg[3]_0 ,
    \j_reg[3]_1 ,
    \j_reg[0]_0 ,
    \count_reg_reg[2] ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[1] ,
    \count_reg_reg[0]_1 ,
    \j_reg[0]_1 ,
    a_in_8,
    \j_reg[1] ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \j_reg[3]_2 ,
    \j_reg[0]_2 ,
    \j_reg[1]_0 ,
    \j_reg[1]_1 ,
    SR,
    clk,
    Q,
    \count[4]_i_5__0 ,
    \count[4]_i_5__0_0 ,
    \count[4]_i_5__0_1 ,
    count1_carry_i_3__6,
    \count_reg[0] ,
    done_aux_reg,
    done_aux_reg_0,
    done_aux_reg_1,
    \count[4]_i_7__0 ,
    \count[4]_i_7__0_0 ,
    \count[4]_i_17__0 ,
    \count[4]_i_17__0_0 ,
    \count[4]_i_14__0 ,
    \count[4]_i_19__0 ,
    \count[4]_i_6__3 ,
    a_in_7,
    count1_carry_i_12__0,
    count1_carry_i_8__1,
    \count[4]_i_4__5 ,
    count1_carry_i_16__1,
    count1_carry_i_16__1_0,
    count1_carry_i_16__1_1,
    next_out_8,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_2 );
  output [0:0]AR;
  output next_out_7;
  output \j_reg[2] ;
  output [2:0]\j_reg[2]_0 ;
  output \j_reg[0] ;
  output \j_reg[3] ;
  output \count_reg_reg[0] ;
  output \j_reg[3]_0 ;
  output \j_reg[3]_1 ;
  output \j_reg[0]_0 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[0]_1 ;
  output \j_reg[0]_1 ;
  output [39:0]a_in_8;
  output \j_reg[1] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \j_reg[3]_2 ;
  output \j_reg[0]_2 ;
  output \j_reg[1]_0 ;
  output \j_reg[1]_1 ;
  output [0:0]SR;
  input clk;
  input [3:0]Q;
  input \count[4]_i_5__0 ;
  input \count[4]_i_5__0_0 ;
  input \count[4]_i_5__0_1 ;
  input count1_carry_i_3__6;
  input \count_reg[0] ;
  input [2:0]done_aux_reg;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input \count[4]_i_7__0 ;
  input \count[4]_i_7__0_0 ;
  input \count[4]_i_17__0 ;
  input \count[4]_i_17__0_0 ;
  input \count[4]_i_14__0 ;
  input \count[4]_i_19__0 ;
  input \count[4]_i_6__3 ;
  input [34:0]a_in_7;
  input count1_carry_i_12__0;
  input count1_carry_i_8__1;
  input \count[4]_i_4__5 ;
  input count1_carry_i_16__1;
  input count1_carry_i_16__1_0;
  input count1_carry_i_16__1_1;
  input next_out_8;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [34:0]a_in_7;
  wire [39:0]a_in_8;
  wire acks_out;
  wire \asout_array[7]_2 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__4_n_0;
  wire clk;
  wire count1;
  wire count1_carry_i_12__0;
  wire count1_carry_i_16__1;
  wire count1_carry_i_16__1_0;
  wire count1_carry_i_16__1_1;
  wire count1_carry_i_3__6;
  wire count1_carry_i_8__1;
  wire \count[4]_i_14__0 ;
  wire \count[4]_i_17__0 ;
  wire \count[4]_i_17__0_0 ;
  wire \count[4]_i_19__0 ;
  wire \count[4]_i_4__5 ;
  wire \count[4]_i_5__0 ;
  wire \count[4]_i_5__0_0 ;
  wire \count[4]_i_5__0_1 ;
  wire \count[4]_i_6__3 ;
  wire \count[4]_i_7__0 ;
  wire \count[4]_i_7__0_0 ;
  wire \count_reg[0] ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire [2:0]done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_15;
  wire dut_n_16;
  wire dut_n_17;
  wire dut_n_18;
  wire dut_n_19;
  wire dut_n_20;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [3:3]j_reg;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_1 ;
  wire \j_reg[2] ;
  wire [2:0]\j_reg[2]_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_2 ;
  wire j_reg_3_sn_1;
  wire logic_n_10;
  wire logic_n_23;
  wire logic_n_24;
  wire logic_n_27;
  wire logic_n_28;
  wire logic_n_29;
  wire logic_n_9;
  wire nRst;
  wire next_out_7;
  wire next_out_8;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__1_n_0;
  wire [4:0]u_i;
  wire valid;

  assign \j_reg[3]  = j_reg_3_sn_1;
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
        .CE(logic_n_27),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_27),
        .D(dut_n_20),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_27),
        .D(dut_n_19),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_27),
        .D(logic_n_29),
        .Q(\asout_array[7]_2 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_27),
        .D(dut_n_18),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_28),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__4
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_7[0]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_7[1]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_7[2]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_7[3]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_7[4]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_7[5]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_7[6]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_7[7]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_7[8]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_7[9]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_7[10]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_7[11]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_7[12]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_7[13]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_7[14]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_7[15]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_7[16]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_7[17]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_7[18]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_7[19]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_7[20]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_7[21]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_7[22]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_7[23]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_7[24]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][0] 
       (.CLR(1'b0),
        .D(a_in_7[25]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][1] 
       (.CLR(1'b0),
        .D(a_in_7[26]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][2] 
       (.CLR(1'b0),
        .D(a_in_7[27]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[32]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][3] 
       (.CLR(1'b0),
        .D(a_in_7[28]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[33]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][4] 
       (.CLR(1'b0),
        .D(a_in_7[29]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[34]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][0] 
       (.CLR(1'b0),
        .D(a_in_7[30]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[35]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][1] 
       (.CLR(1'b0),
        .D(a_in_7[31]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[36]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][2] 
       (.CLR(1'b0),
        .D(a_in_7[32]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[37]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][3] 
       (.CLR(1'b0),
        .D(a_in_7[33]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[38]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[7][4] 
       (.CLR(1'b0),
        .D(a_in_7[34]),
        .G(\asout_array[7]_2 ),
        .GE(1'b1),
        .Q(a_in_8[39]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1__4_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 dut
       (.CO(count1),
        .D({dut_n_18,dut_n_19,dut_n_20}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[7]_2 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .S({dut_n_6,dut_n_7,dut_n_8}),
        .clk(clk),
        .count1_carry__1(j_reg),
        .count1_carry__1_0(logic_n_10),
        .count1_carry_i_3__6(count1_carry_i_3__6),
        .count1_carry_i_4__1(logic_n_24),
        .count1_carry_i_4__1_0(logic_n_9),
        .\count_reg[0] (\count_reg[0] ),
        .\count_reg[0]_0 (logic_n_23),
        .\count_reg_reg[0]_0 (dut_n_0),
        .\count_reg_reg[0]_1 (dut_n_9),
        .\count_reg_reg[0]_2 (\count_reg_reg[0]_2 ),
        .\count_reg_reg[1]_0 (dut_n_17),
        .\count_reg_reg[3]_0 ({dut_n_10,dut_n_11,dut_n_12,dut_n_13}),
        .\count_reg_reg[3]_1 ({dut_n_14,dut_n_15}),
        .\count_reg_reg[3]_2 (dut_n_16),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized1 logic
       (.AR(reset_control),
        .CO(count1),
        .D(u_i),
        .E(logic_n_27),
        .\FSM_onehot_state_reg[1] (logic_n_28),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .Q(Q),
        .S({dut_n_6,dut_n_7,dut_n_8}),
        .a_in_7({a_in_7[34],a_in_7[31:30]}),
        .a_in_8({a_in_8[39:31],a_in_8[29:15],a_in_8[13:0]}),
        .clk(clk),
        .count1_carry_0(dut_n_9),
        .count1_carry_1(dut_n_0),
        .count1_carry_2(dut_n_17),
        .count1_carry__0_0({dut_n_14,dut_n_15}),
        .count1_carry__1_0({dut_n_10,dut_n_11,dut_n_12,dut_n_13}),
        .count1_carry__1_i_1__6(\count_reg[0] ),
        .count1_carry_i_12__0(count1_carry_i_12__0),
        .count1_carry_i_16__1_0(count1_carry_i_16__1),
        .count1_carry_i_16__1_1(count1_carry_i_16__1_0),
        .count1_carry_i_16__1_2(count1_carry_i_16__1_1),
        .count1_carry_i_7__1_0(count1_carry_i_3__6),
        .count1_carry_i_8__1_0(count1_carry_i_8__1),
        .\count[4]_i_14__0_0 (\count[4]_i_14__0 ),
        .\count[4]_i_17__0_0 (\count[4]_i_17__0 ),
        .\count[4]_i_17__0_1 (\count[4]_i_17__0_0 ),
        .\count[4]_i_19__0_0 (\count[4]_i_19__0 ),
        .\count[4]_i_4__5 (\count[4]_i_4__5 ),
        .\count[4]_i_5__0_0 (\count[4]_i_5__0 ),
        .\count[4]_i_5__0_1 (\count[4]_i_5__0_0 ),
        .\count[4]_i_5__0_2 (\count[4]_i_5__0_1 ),
        .\count[4]_i_6__3_0 (\count[4]_i_6__3 ),
        .\count[4]_i_7__0 (\count[4]_i_7__0 ),
        .\count[4]_i_7__0_0 (\count[4]_i_7__0_0 ),
        .\count_reg[0]_0 (dut_n_16),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[0]_2 ({nexts_out,\asout_array[7]_2 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[3] (logic_n_10),
        .\count_reg_reg[4] (logic_n_23),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(done_aux_reg_0),
        .done_aux_reg_2(done_aux_reg_1),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (logic_n_9),
        .\j_reg[0]_2 (\j_reg[0]_0 ),
        .\j_reg[0]_3 (\j_reg[0]_1 ),
        .\j_reg[0]_4 (logic_n_24),
        .\j_reg[0]_5 (\j_reg[0]_2 ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[1]_1 (\j_reg[1]_0 ),
        .\j_reg[1]_2 (\j_reg[1]_1 ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[3]_0 ({j_reg,\j_reg[2]_0 }),
        .\j_reg[3]_1 (j_reg_3_sn_1),
        .\j_reg[3]_2 (\j_reg[3]_0 ),
        .\j_reg[3]_3 (\j_reg[3]_1 ),
        .\j_reg[3]_4 (\j_reg[3]_2 ),
        .next_out_8(next_out_8),
        .valid(valid),
        .valid_aux_reg_0(logic_n_29));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_7));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__1_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2
   (AR,
    next_out_6,
    \j_reg[0] ,
    a_in_7,
    \j_reg[1] ,
    \j_reg[0]_0 ,
    \j_reg[1]_0 ,
    \j_reg[3] ,
    \j_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \j_reg[2] ,
    \j_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \j_reg[3]_2 ,
    \j_reg[3]_3 ,
    SR,
    clk,
    \count[4]_i_3__0 ,
    \count[4]_i_3__0_0 ,
    count1_carry_i_12__1,
    \count[4]_i_8__2 ,
    Q,
    count1_carry__1_i_3__6,
    \count[4]_i_6__4 ,
    \count[4]_i_6__4_0 ,
    count1_carry_i_25,
    count1_carry_i_41,
    count1_carry_i_19,
    a_in_6,
    \count[4]_i_3__0_1 ,
    \count[4]_i_3__0_2 ,
    \count[4]_i_7__4 ,
    \count[4]_i_7__4_0 ,
    \count[4]_i_8__2_0 ,
    count1_carry_i_12__1_0,
    \count[4]_i_22__0 ,
    \count[4]_i_21__1 ,
    next_out_7,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_6;
  output \j_reg[0] ;
  output [34:0]a_in_7;
  output \j_reg[1] ;
  output \j_reg[0]_0 ;
  output \j_reg[1]_0 ;
  output \j_reg[3] ;
  output \j_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \j_reg[2] ;
  output \j_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \j_reg[3]_2 ;
  output \j_reg[3]_3 ;
  output [0:0]SR;
  input clk;
  input \count[4]_i_3__0 ;
  input \count[4]_i_3__0_0 ;
  input count1_carry_i_12__1;
  input \count[4]_i_8__2 ;
  input [2:0]Q;
  input count1_carry__1_i_3__6;
  input \count[4]_i_6__4 ;
  input \count[4]_i_6__4_0 ;
  input count1_carry_i_25;
  input count1_carry_i_41;
  input count1_carry_i_19;
  input [29:0]a_in_6;
  input \count[4]_i_3__0_1 ;
  input \count[4]_i_3__0_2 ;
  input \count[4]_i_7__4 ;
  input \count[4]_i_7__4_0 ;
  input \count[4]_i_8__2_0 ;
  input count1_carry_i_12__1_0;
  input \count[4]_i_22__0 ;
  input \count[4]_i_21__1 ;
  input next_out_7;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [29:0]a_in_6;
  wire [34:0]a_in_7;
  wire acks_out;
  wire \asout_array[6]_3 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__5_n_0;
  wire clk;
  wire count1_carry__1_i_3__6;
  wire count1_carry_i_12__1;
  wire count1_carry_i_12__1_0;
  wire count1_carry_i_19;
  wire count1_carry_i_25;
  wire count1_carry_i_41;
  wire \count[4]_i_21__1 ;
  wire \count[4]_i_22__0 ;
  wire \count[4]_i_3__0 ;
  wire \count[4]_i_3__0_0 ;
  wire \count[4]_i_3__0_1 ;
  wire \count[4]_i_3__0_2 ;
  wire \count[4]_i_6__4 ;
  wire \count[4]_i_6__4_0 ;
  wire \count[4]_i_7__4 ;
  wire \count[4]_i_7__4_0 ;
  wire \count[4]_i_8__2 ;
  wire \count[4]_i_8__2_0 ;
  wire [0:0]\count_reg_reg[0] ;
  wire dut_n_0;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire \j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire \j_reg[2] ;
  wire \j_reg[3] ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_2 ;
  wire \j_reg[3]_3 ;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire nRst;
  wire next_out_6;
  wire next_out_7;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__2_n_0;
  wire [4:0]u_i;
  wire valid;

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
        .CE(logic_n_15),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_9),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_15),
        .D(logic_n_17),
        .Q(\asout_array[6]_3 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_7),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_16),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__5
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_6[0]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_6[1]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_6[2]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_6[3]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_6[4]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_6[5]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_6[6]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_6[7]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_6[8]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_6[9]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_6[10]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_6[11]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_6[12]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_6[13]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_6[14]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_6[15]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_6[16]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_6[17]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_6[18]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_6[19]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_6[20]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_6[21]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_6[22]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_6[23]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_6[24]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][0] 
       (.CLR(1'b0),
        .D(a_in_6[25]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][1] 
       (.CLR(1'b0),
        .D(a_in_6[26]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][2] 
       (.CLR(1'b0),
        .D(a_in_6[27]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[32]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][3] 
       (.CLR(1'b0),
        .D(a_in_6[28]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[33]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[6][4] 
       (.CLR(1'b0),
        .D(a_in_6[29]),
        .G(\asout_array[6]_3 ),
        .GE(1'b1),
        .Q(a_in_7[34]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__5
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1__5_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 dut
       (.D({dut_n_7,dut_n_8,dut_n_9}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[6]_3 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .count1_carry_i_4__2(logic_n_12),
        .\count_reg[0] (logic_n_13),
        .\count_reg_reg[0]_0 (dut_n_0),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[3]_0 (dut_n_6),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized2 logic
       (.AR(reset_control),
        .D(u_i),
        .E(logic_n_15),
        .\FSM_onehot_state_reg[1] (logic_n_16),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_2 ),
        .Q(a_in_7[34:30]),
        .a_in_6(a_in_6[29:25]),
        .a_in_7(a_in_7[29:0]),
        .clk(clk),
        .count1_carry_0(dut_n_0),
        .count1_carry__1_i_3__6(count1_carry__1_i_3__6),
        .count1_carry_i_12__1_0(count1_carry_i_12__1),
        .count1_carry_i_12__1_1(count1_carry_i_12__1_0),
        .count1_carry_i_19_0(count1_carry_i_19),
        .count1_carry_i_25(count1_carry_i_25),
        .count1_carry_i_41_0(count1_carry_i_41),
        .\count[4]_i_21__1_0 (\count[4]_i_21__1 ),
        .\count[4]_i_22__0_0 (\count[4]_i_22__0 ),
        .\count[4]_i_3__0_0 (\count[4]_i_3__0 ),
        .\count[4]_i_3__0_1 (\count[4]_i_3__0_0 ),
        .\count[4]_i_3__0_2 (\count[4]_i_3__0_1 ),
        .\count[4]_i_3__0_3 (\count[4]_i_3__0_2 ),
        .\count[4]_i_5__0 (Q),
        .\count[4]_i_6__4 (\count[4]_i_6__4 ),
        .\count[4]_i_6__4_0 (\count[4]_i_6__4_0 ),
        .\count[4]_i_7__4_0 (\count[4]_i_7__4 ),
        .\count[4]_i_7__4_1 (\count[4]_i_7__4_0 ),
        .\count[4]_i_8__2_0 (\count[4]_i_8__2 ),
        .\count[4]_i_8__2_1 (\count[4]_i_8__2_0 ),
        .\count_reg[0]_0 (dut_n_6),
        .\count_reg_reg[0] ({nexts_out,\asout_array[6]_3 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .\j_reg[0]_2 (logic_n_12),
        .\j_reg[0]_3 (logic_n_13),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[1]_1 (\j_reg[1]_0 ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[3]_1 (\j_reg[3]_0 ),
        .\j_reg[3]_2 (\j_reg[3]_1 ),
        .\j_reg[3]_3 (\j_reg[3]_2 ),
        .\j_reg[3]_4 (\j_reg[3]_3 ),
        .next_out_7(next_out_7),
        .valid(valid),
        .valid_aux_reg_0(logic_n_17));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_6));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__2_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3
   (AR,
    next_out_5,
    \j_reg[2] ,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_6,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \count_reg_reg[3] ,
    \count_reg_reg[1] ,
    \FSM_onehot_state_reg[3]_5 ,
    \FSM_onehot_state_reg[3]_6 ,
    \count_reg_reg[2] ,
    \count_reg_reg[4] ,
    \count_reg_reg[0] ,
    \j_reg[1] ,
    \j_reg[2]_0 ,
    SR,
    clk,
    count1_carry_i_13__3,
    count1_carry_i_13__3_0,
    \count[4]_i_8__2 ,
    \count[4]_i_8__2_0 ,
    a_in_5,
    \count[4]_i_10__1 ,
    \count[4]_i_10__1_0 ,
    \count[4]_i_3__1 ,
    \count[4]_i_3__1_0 ,
    \count[4]_i_6__0 ,
    \count[4]_i_19__2 ,
    \count[4]_i_12__2 ,
    \count[4]_i_12__2_0 ,
    \count[4]_i_21__2 ,
    \count[4]_i_7__2 ,
    next_out_6,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_5;
  output \j_reg[2] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output [29:0]a_in_6;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \count_reg_reg[3] ;
  output \count_reg_reg[1] ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \FSM_onehot_state_reg[3]_6 ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[0] ;
  output \j_reg[1] ;
  output \j_reg[2]_0 ;
  output [0:0]SR;
  input clk;
  input count1_carry_i_13__3;
  input count1_carry_i_13__3_0;
  input \count[4]_i_8__2 ;
  input \count[4]_i_8__2_0 ;
  input [24:0]a_in_5;
  input \count[4]_i_10__1 ;
  input \count[4]_i_10__1_0 ;
  input \count[4]_i_3__1 ;
  input \count[4]_i_3__1_0 ;
  input \count[4]_i_6__0 ;
  input \count[4]_i_19__2 ;
  input \count[4]_i_12__2 ;
  input \count[4]_i_12__2_0 ;
  input \count[4]_i_21__2 ;
  input \count[4]_i_7__2 ;
  input next_out_6;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire \FSM_onehot_state_reg[3]_6 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [0:0]SR;
  wire [24:0]a_in_5;
  wire [29:0]a_in_6;
  wire acks_out;
  wire \asout_array[5]_4 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__7_n_0;
  wire clk;
  wire count1_carry_i_13__3;
  wire count1_carry_i_13__3_0;
  wire \count[4]_i_10__1 ;
  wire \count[4]_i_10__1_0 ;
  wire \count[4]_i_12__2 ;
  wire \count[4]_i_12__2_0 ;
  wire \count[4]_i_19__2 ;
  wire \count[4]_i_21__2 ;
  wire \count[4]_i_3__1 ;
  wire \count[4]_i_3__1_0 ;
  wire \count[4]_i_6__0 ;
  wire \count[4]_i_7__2 ;
  wire \count[4]_i_8__2 ;
  wire \count[4]_i_8__2_0 ;
  wire \count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[4] ;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[1] ;
  wire \j_reg[2] ;
  wire \j_reg[2]_0 ;
  wire logic_n_1;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_18;
  wire logic_n_19;
  wire logic_n_20;
  wire nRst;
  wire next_out_5;
  wire next_out_6;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__3_n_0;
  wire [4:0]u_i;
  wire valid;

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
        .D(dut_n_10),
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
        .D(logic_n_20),
        .Q(\asout_array[5]_4 ),
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
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_19),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__7
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_5[0]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_5[1]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_5[2]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_5[3]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_5[4]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_5[5]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_5[6]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_5[7]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_5[8]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_5[9]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_5[10]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_5[11]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_5[12]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_5[13]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_5[14]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_5[15]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_5[16]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_5[17]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_5[18]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_5[19]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][0] 
       (.CLR(1'b0),
        .D(a_in_5[20]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][1] 
       (.CLR(1'b0),
        .D(a_in_5[21]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][2] 
       (.CLR(1'b0),
        .D(a_in_5[22]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][3] 
       (.CLR(1'b0),
        .D(a_in_5[23]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[5][4] 
       (.CLR(1'b0),
        .D(a_in_5[24]),
        .G(\asout_array[5]_4 ),
        .GE(1'b1),
        .Q(a_in_6[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__7_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1__7_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 dut
       (.D({dut_n_8,dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[5]_4 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .count1_carry_i_4__3(logic_n_16),
        .count1_carry_i_4__3_0(logic_n_15),
        .\count_reg[0] (logic_n_1),
        .\count_reg_reg[0]_0 (dut_n_7),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[1]_0 (dut_n_6),
        .\count_reg_reg[3]_0 (dut_n_0),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized3 logic
       (.AR(reset_control),
        .D(u_i),
        .E(logic_n_18),
        .\FSM_onehot_state_reg[1] (logic_n_19),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_3 ),
        .\FSM_onehot_state_reg[3]_3 (\FSM_onehot_state_reg[3]_4 ),
        .\FSM_onehot_state_reg[3]_4 (\FSM_onehot_state_reg[3]_5 ),
        .\FSM_onehot_state_reg[3]_5 (\FSM_onehot_state_reg[3]_6 ),
        .Q({nexts_out,\asout_array[5]_4 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .a_in_5(a_in_5[24:20]),
        .a_in_6(a_in_6),
        .clk(clk),
        .count1_carry_0(dut_n_6),
        .count1_carry_1(dut_n_7),
        .count1_carry_i_13__3_0(count1_carry_i_13__3),
        .count1_carry_i_13__3_1(count1_carry_i_13__3_0),
        .\count[4]_i_10__1_0 (\count[4]_i_10__1 ),
        .\count[4]_i_10__1_1 (\count[4]_i_10__1_0 ),
        .\count[4]_i_12__2_0 (\count[4]_i_12__2 ),
        .\count[4]_i_12__2_1 (\count[4]_i_12__2_0 ),
        .\count[4]_i_19__2_0 (\count[4]_i_19__2 ),
        .\count[4]_i_21__2_0 (\count[4]_i_21__2 ),
        .\count[4]_i_3__1_0 (\count[4]_i_3__1 ),
        .\count[4]_i_3__1_1 (\count[4]_i_3__1_0 ),
        .\count[4]_i_6__0_0 (\count[4]_i_6__0 ),
        .\count[4]_i_7__2_0 (\count[4]_i_7__2 ),
        .\count[4]_i_8__2 (\count[4]_i_8__2 ),
        .\count[4]_i_8__2_0 (\count[4]_i_8__2_0 ),
        .\count_reg[0]_0 (dut_n_0),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\j_reg[0]_0 (logic_n_1),
        .\j_reg[0]_1 (logic_n_15),
        .\j_reg[0]_2 (logic_n_16),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[2]_1 (\j_reg[2]_0 ),
        .next_out_6(next_out_6),
        .valid(valid),
        .valid_aux_reg_0(logic_n_20));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out_5));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__3_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4
   (AR,
    next_out_4,
    Q,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_5,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \FSM_onehot_state_reg[3]_6 ,
    \count_reg_reg[1] ,
    \FSM_onehot_state_reg[3]_7 ,
    \FSM_onehot_state_reg[3]_8 ,
    \FSM_onehot_state_reg[3]_9 ,
    \FSM_onehot_state_reg[3]_10 ,
    \j_reg[0] ,
    \j_reg[2] ,
    \j_reg[1] ,
    SR,
    clk,
    count1_carry_i_19__0,
    count1_carry_i_19__0_0,
    a_in_4,
    count1_carry__1_i_3__2,
    count1_carry_i_13__6,
    \count[4]_i_19__2 ,
    \count[4]_i_19__2_0 ,
    \count[4]_i_15__2 ,
    count1_carry_i_9__2,
    count1_carry_i_5__7,
    count1_carry_i_5__7_0,
    \count[4]_i_4__6 ,
    \count[4]_i_4__6_0 ,
    count1_carry_i_19__0_1,
    count1_carry_i_19__0_2,
    next_out_5,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_4;
  output [2:0]Q;
  output \FSM_onehot_state_reg[3]_0 ;
  output [24:0]a_in_5;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \FSM_onehot_state_reg[3]_6 ;
  output \count_reg_reg[1] ;
  output \FSM_onehot_state_reg[3]_7 ;
  output \FSM_onehot_state_reg[3]_8 ;
  output \FSM_onehot_state_reg[3]_9 ;
  output \FSM_onehot_state_reg[3]_10 ;
  output \j_reg[0] ;
  output \j_reg[2] ;
  output \j_reg[1] ;
  output [0:0]SR;
  input clk;
  input count1_carry_i_19__0;
  input count1_carry_i_19__0_0;
  input [19:0]a_in_4;
  input count1_carry__1_i_3__2;
  input count1_carry_i_13__6;
  input \count[4]_i_19__2 ;
  input \count[4]_i_19__2_0 ;
  input \count[4]_i_15__2 ;
  input count1_carry_i_9__2;
  input count1_carry_i_5__7;
  input count1_carry_i_5__7_0;
  input \count[4]_i_4__6 ;
  input \count[4]_i_4__6_0 ;
  input count1_carry_i_19__0_1;
  input count1_carry_i_19__0_2;
  input next_out_5;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_10 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire \FSM_onehot_state_reg[3]_6 ;
  wire \FSM_onehot_state_reg[3]_7 ;
  wire \FSM_onehot_state_reg[3]_8 ;
  wire \FSM_onehot_state_reg[3]_9 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [19:0]a_in_4;
  wire [24:0]a_in_5;
  wire acks_out_reg_i_1__6_n_0;
  wire \asout_array[4]_5 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__6_n_0;
  wire clk;
  wire count1_carry__1_i_3__2;
  wire count1_carry_i_13__6;
  wire count1_carry_i_19__0;
  wire count1_carry_i_19__0_0;
  wire count1_carry_i_19__0_1;
  wire count1_carry_i_19__0_2;
  wire count1_carry_i_5__7;
  wire count1_carry_i_5__7_0;
  wire count1_carry_i_9__2;
  wire \count[4]_i_15__2 ;
  wire \count[4]_i_19__2 ;
  wire \count[4]_i_19__2_0 ;
  wire \count[4]_i_4__6 ;
  wire \count[4]_i_4__6_0 ;
  wire [0:0]\count_reg_reg[0] ;
  wire \count_reg_reg[1] ;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_15;
  wire dut_n_16;
  wire dut_n_17;
  wire dut_n_18;
  wire dut_n_19;
  wire dut_n_20;
  wire dut_n_21;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[1] ;
  wire \j_reg[2] ;
  wire logic_n_20;
  wire logic_n_22;
  wire logic_n_23;
  wire logic_n_24;
  wire logic_n_25;
  wire logic_n_4;
  wire logic_n_5;
  wire logic_n_6;
  wire logic_n_7;
  wire nRst;
  wire next_out_4;
  wire next_out_5;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__4_n_0;
  wire [4:0]u_i;
  wire valid;

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
        .CE(logic_n_23),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_23),
        .D(dut_n_21),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_23),
        .D(dut_n_20),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_23),
        .D(logic_n_25),
        .Q(\asout_array[4]_5 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_23),
        .D(dut_n_19),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__6_n_0),
        .G(logic_n_24),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__6
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1__6_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_4[0]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_4[1]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_4[2]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_4[3]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_4[4]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_4[5]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_4[6]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_4[7]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_4[8]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_4[9]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_4[10]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_4[11]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_4[12]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_4[13]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_4[14]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][0] 
       (.CLR(1'b0),
        .D(a_in_4[15]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][1] 
       (.CLR(1'b0),
        .D(a_in_4[16]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][2] 
       (.CLR(1'b0),
        .D(a_in_4[17]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][3] 
       (.CLR(1'b0),
        .D(a_in_4[18]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[4][4] 
       (.CLR(1'b0),
        .D(a_in_4[19]),
        .G(\asout_array[4]_5 ),
        .GE(1'b1),
        .Q(a_in_5[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1__6_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 dut
       (.D({dut_n_19,dut_n_20,dut_n_21}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[4]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .S({dut_n_6,dut_n_7,dut_n_8}),
        .clk(clk),
        .count1_carry__1(logic_n_4),
        .count1_carry__1_0(logic_n_22),
        .count1_carry__1_1(logic_n_20),
        .count1_carry_i_4__4(logic_n_7),
        .count1_carry_i_4__4_0(logic_n_5),
        .count1_carry_i_9__2(logic_n_6),
        .count1_carry_i_9__2_0(count1_carry_i_9__2),
        .\count_reg_reg[0]_0 (dut_n_18),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_0),
        .\count_reg_reg[1]_1 (dut_n_9),
        .\count_reg_reg[1]_2 (dut_n_10),
        .\count_reg_reg[3]_0 ({dut_n_11,dut_n_12,dut_n_13}),
        .\count_reg_reg[3]_1 ({dut_n_14,dut_n_15,dut_n_16,dut_n_17}),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized4 logic
       (.AR(reset_control),
        .D(u_i),
        .E(logic_n_23),
        .\FSM_onehot_state_reg[1] (logic_n_24),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_3 ),
        .\FSM_onehot_state_reg[3]_3 (\FSM_onehot_state_reg[3]_4 ),
        .\FSM_onehot_state_reg[3]_4 (\FSM_onehot_state_reg[3]_5 ),
        .\FSM_onehot_state_reg[3]_5 (\FSM_onehot_state_reg[3]_6 ),
        .\FSM_onehot_state_reg[3]_6 (\FSM_onehot_state_reg[3]_7 ),
        .\FSM_onehot_state_reg[3]_7 (\FSM_onehot_state_reg[3]_8 ),
        .\FSM_onehot_state_reg[3]_8 (\FSM_onehot_state_reg[3]_9 ),
        .\FSM_onehot_state_reg[3]_9 (\FSM_onehot_state_reg[3]_10 ),
        .Q(Q),
        .S({dut_n_6,dut_n_7,dut_n_8}),
        .a_in_4({a_in_4[19:18],a_in_4[16:12],a_in_4[7:4]}),
        .a_in_5(a_in_5),
        .clk(clk),
        .count1_carry_0(dut_n_18),
        .count1_carry_1(dut_n_0),
        .count1_carry__0_0({dut_n_11,dut_n_12,dut_n_13}),
        .count1_carry__1_0({dut_n_14,dut_n_15,dut_n_16,dut_n_17}),
        .count1_carry__1_i_3__2(count1_carry__1_i_3__2),
        .count1_carry__1_i_3__2_0(dut_n_9),
        .count1_carry_i_13__6(count1_carry_i_13__6),
        .count1_carry_i_19__0_0(count1_carry_i_19__0),
        .count1_carry_i_19__0_1(count1_carry_i_19__0_0),
        .count1_carry_i_19__0_2(count1_carry_i_19__0_1),
        .count1_carry_i_19__0_3(count1_carry_i_19__0_2),
        .count1_carry_i_4__4_0(count1_carry_i_9__2),
        .count1_carry_i_5__7_0(count1_carry_i_5__7),
        .count1_carry_i_5__7_1(count1_carry_i_5__7_0),
        .\count[4]_i_15__2 (\count[4]_i_15__2 ),
        .\count[4]_i_19__2 (\count[4]_i_19__2 ),
        .\count[4]_i_19__2_0 (\count[4]_i_19__2_0 ),
        .\count[4]_i_4__6_0 (\count[4]_i_4__6 ),
        .\count[4]_i_4__6_1 (\count[4]_i_4__6_0 ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[4]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[3] (logic_n_20),
        .done_aux_reg_0(dut_n_10),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[2]_0 (logic_n_4),
        .\j_reg[2]_1 (logic_n_5),
        .\j_reg[2]_2 (logic_n_6),
        .\j_reg[2]_3 (logic_n_7),
        .\j_reg[2]_4 (logic_n_22),
        .\j_reg[2]_5 (\j_reg[2] ),
        .next_out_5(next_out_5),
        .valid(valid),
        .valid_aux_reg_0(logic_n_25));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(next_out_4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__4_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5
   (AR,
    next_out_3,
    Q,
    \count_reg_reg[2] ,
    \j_reg[2] ,
    a_in_4,
    \j_reg[1] ,
    \j_reg[1]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \j_reg[0] ,
    \j_reg[0]_0 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \j_reg[0]_1 ,
    \FSM_onehot_state_reg[3]_4 ,
    \j_reg[2]_0 ,
    D,
    \j_reg[2]_1 ,
    \j_reg[2]_2 ,
    SR,
    clk,
    done_aux_reg,
    done_aux_reg_0,
    count1_carry_i_4__5,
    count1_carry_i_4__5_0,
    \count_reg[0] ,
    \count[4]_i_5__4 ,
    count1_carry__1,
    \count[4]_i_5__3 ,
    count1_carry_i_15__1,
    count1_carry_i_15__1_0,
    count1_carry_i_28__0,
    \count_reg[0]_0 ,
    a_in_3,
    next_out_4,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_3;
  output [1:0]Q;
  output [2:0]\count_reg_reg[2] ;
  output \j_reg[2] ;
  output [19:0]a_in_4;
  output \j_reg[1] ;
  output \j_reg[1]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \j_reg[0] ;
  output \j_reg[0]_0 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \j_reg[0]_1 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \j_reg[2]_0 ;
  output [0:0]D;
  output \j_reg[2]_1 ;
  output \j_reg[2]_2 ;
  output [0:0]SR;
  input clk;
  input done_aux_reg;
  input done_aux_reg_0;
  input count1_carry_i_4__5;
  input count1_carry_i_4__5_0;
  input \count_reg[0] ;
  input \count[4]_i_5__4 ;
  input count1_carry__1;
  input [2:0]\count[4]_i_5__3 ;
  input count1_carry_i_15__1;
  input count1_carry_i_15__1_0;
  input count1_carry_i_28__0;
  input \count_reg[0]_0 ;
  input [14:0]a_in_3;
  input next_out_4;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [14:0]a_in_3;
  wire [19:0]a_in_4;
  wire acks_out_reg_i_1__3_n_0;
  wire \asout_array[3]_6 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__3_n_0;
  wire clk;
  wire count1_carry__1;
  wire count1_carry_i_15__1;
  wire count1_carry_i_15__1_0;
  wire count1_carry_i_28__0;
  wire count1_carry_i_4__5;
  wire count1_carry_i_4__5_0;
  wire [2:0]\count[4]_i_5__3 ;
  wire \count[4]_i_5__4 ;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0] ;
  wire [2:0]\count_reg_reg[2] ;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire dut_n_0;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_15;
  wire dut_n_16;
  wire dut_n_17;
  wire dut_n_18;
  wire dut_n_19;
  wire dut_n_20;
  wire dut_n_21;
  wire dut_n_22;
  wire dut_n_23;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [2:2]j_reg;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire \j_reg[2]_2 ;
  wire j_reg_2_sn_1;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_20;
  wire logic_n_21;
  wire logic_n_22;
  wire nRst;
  wire next_out_3;
  wire next_out_4;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__5_n_0;
  wire [4:3]u_i;
  wire valid;

  assign \j_reg[2]  = j_reg_2_sn_1;
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
        .CE(logic_n_20),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_20),
        .D(dut_n_23),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_20),
        .D(dut_n_22),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_20),
        .D(logic_n_22),
        .Q(\asout_array[3]_6 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_20),
        .D(dut_n_21),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__3_n_0),
        .G(logic_n_21),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__3
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1__3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(\count_reg_reg[2] [0]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(\count_reg_reg[2] [1]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(\count_reg_reg[2] [2]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_3[0]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_3[1]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_3[2]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_3[3]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_3[4]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_3[5]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_3[6]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_3[7]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_3[8]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_3[9]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in_3[10]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in_3[11]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in_3[12]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in_3[13]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][4] 
       (.CLR(1'b0),
        .D(a_in_3[14]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1__3_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 dut
       (.D({dut_n_21,dut_n_22,dut_n_23}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[3]_6 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q({u_i,\count_reg_reg[2] }),
        .S({dut_n_8,dut_n_9,dut_n_10}),
        .clk(clk),
        .count1_carry__1(count1_carry__1),
        .count1_carry__1_0({j_reg,Q[1]}),
        .count1_carry__1_1(logic_n_15),
        .count1_carry_i_4__5(count1_carry_i_4__5),
        .count1_carry_i_4__5_0(count1_carry_i_4__5_0),
        .\count_reg[0] (\count_reg[0] ),
        .\count_reg_reg[0]_0 (dut_n_6),
        .\count_reg_reg[0]_1 (dut_n_20),
        .\count_reg_reg[0]_2 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_0),
        .\count_reg_reg[2]_0 (dut_n_11),
        .\count_reg_reg[2]_1 (dut_n_19),
        .\count_reg_reg[3]_0 (dut_n_7),
        .done_aux_reg(done_aux_reg),
        .done_aux_reg_0(done_aux_reg_0),
        .done_aux_reg_1(logic_n_16),
        .\j_reg[2] ({dut_n_12,dut_n_13,dut_n_14,dut_n_15}),
        .\j_reg[2]_0 ({dut_n_16,dut_n_17,dut_n_18}),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized5 logic
       (.AR(reset_control),
        .D({u_i,\count_reg_reg[2] [2]}),
        .E(logic_n_20),
        .\FSM_onehot_state_reg[1] (logic_n_21),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_3 ),
        .\FSM_onehot_state_reg[3]_3 (\FSM_onehot_state_reg[3]_4 ),
        .Q({j_reg,Q}),
        .S({dut_n_8,dut_n_9,dut_n_10}),
        .a_in_3(a_in_3[14]),
        .a_in_4(a_in_4[14:0]),
        .clk(clk),
        .count1_carry_0(dut_n_6),
        .count1_carry_1(dut_n_20),
        .count1_carry_2(dut_n_0),
        .count1_carry__0_0({dut_n_16,dut_n_17,dut_n_18}),
        .count1_carry__1_0({dut_n_12,dut_n_13,dut_n_14,dut_n_15}),
        .count1_carry__1_i_1__3(\count_reg[0] ),
        .count1_carry__1_i_1__3_0(count1_carry__1),
        .count1_carry_i_15__1(count1_carry_i_15__1),
        .count1_carry_i_15__1_0(count1_carry_i_15__1_0),
        .count1_carry_i_28__0(count1_carry_i_28__0),
        .count1_carry_i_4__5_0(done_aux_reg),
        .count1_carry_i_4__5_1(done_aux_reg_0),
        .\count[4]_i_5__3 (\count[4]_i_5__3 ),
        .\count[4]_i_5__3_0 (a_in_4[19:15]),
        .\count[4]_i_5__4_0 (\count[4]_i_5__4 ),
        .\count_reg[0]_0 (dut_n_7),
        .\count_reg[0]_1 (dut_n_11),
        .\count_reg[0]_2 (\count_reg[0]_0 ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[3]_6 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (logic_n_15),
        .\count_reg_reg[4] (logic_n_16),
        .done_aux_reg_0(dut_n_19),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .\j_reg[0]_2 (\j_reg[0]_1 ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[1]_1 (\j_reg[1]_0 ),
        .\j_reg[1]_2 (D),
        .\j_reg[2]_0 (j_reg_2_sn_1),
        .\j_reg[2]_1 (\j_reg[2]_0 ),
        .\j_reg[2]_2 (\j_reg[2]_1 ),
        .\j_reg[2]_3 (\j_reg[2]_2 ),
        .next_out_4(next_out_4),
        .valid(valid),
        .valid_aux_reg_0(logic_n_22));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(next_out_3));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__5
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__5_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6
   (AR,
    next_out_2,
    CO,
    \count_reg_reg[0] ,
    Q,
    \j_reg[0] ,
    \j_reg[1] ,
    \count_reg_reg[0]_0 ,
    \j_reg[0]_0 ,
    \j_reg[0]_1 ,
    \count_reg_reg[0]_1 ,
    \j_reg[0]_2 ,
    \j_reg[0]_3 ,
    a_in_3,
    \j_reg[0]_4 ,
    \j_reg[1]_0 ,
    \count_reg_reg[1] ,
    \count_reg_reg[2] ,
    SR,
    count1_carry__0,
    count1_carry__1,
    S,
    clk,
    count1_carry_i_5__5,
    count1_carry__1_i_3__3,
    a_in_2,
    \count[4]_i_3__2 ,
    count1_carry_i_10__7,
    \count[4]_i_5__4 ,
    D,
    count1_carry_i_13__4,
    count1_carry_i_13__4_0,
    count1_carry,
    count1_carry_0,
    \count[4]_i_3__2_0 ,
    next_out_3,
    done_aux_reg,
    count1_carry_i_4__6,
    nRst,
    \FSM_onehot_state_reg[0]_0 ,
    \count_reg_reg[0]_2 );
  output [0:0]AR;
  output next_out_2;
  output [0:0]CO;
  output \count_reg_reg[0] ;
  output [3:0]Q;
  output \j_reg[0] ;
  output [1:0]\j_reg[1] ;
  output \count_reg_reg[0]_0 ;
  output \j_reg[0]_0 ;
  output \j_reg[0]_1 ;
  output \count_reg_reg[0]_1 ;
  output \j_reg[0]_2 ;
  output \j_reg[0]_3 ;
  output [14:0]a_in_3;
  output \j_reg[0]_4 ;
  output \j_reg[1]_0 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[2] ;
  output [0:0]SR;
  input [2:0]count1_carry__0;
  input [3:0]count1_carry__1;
  input [2:0]S;
  input clk;
  input count1_carry_i_5__5;
  input [2:0]count1_carry__1_i_3__3;
  input [9:0]a_in_2;
  input \count[4]_i_3__2 ;
  input count1_carry_i_10__7;
  input [1:0]\count[4]_i_5__4 ;
  input [0:0]D;
  input count1_carry_i_13__4;
  input count1_carry_i_13__4_0;
  input count1_carry;
  input count1_carry_0;
  input \count[4]_i_3__2_0 ;
  input next_out_3;
  input done_aux_reg;
  input count1_carry_i_4__6;
  input nRst;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [9:0]a_in_2;
  wire [14:0]a_in_3;
  wire acks_out_reg_i_1__1_n_0;
  wire \asout_array[2]_7 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__1_n_0;
  wire clk;
  wire count1_carry;
  wire count1_carry_0;
  wire [2:0]count1_carry__0;
  wire [3:0]count1_carry__1;
  wire [2:0]count1_carry__1_i_3__3;
  wire count1_carry_i_10__7;
  wire count1_carry_i_13__4;
  wire count1_carry_i_13__4_0;
  wire count1_carry_i_4__6;
  wire count1_carry_i_5__5;
  wire \count[4]_i_3__2 ;
  wire \count[4]_i_3__2_0 ;
  wire [1:0]\count[4]_i_5__4 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire done_aux_reg;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[0] ;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_2 ;
  wire \j_reg[0]_3 ;
  wire \j_reg[0]_4 ;
  wire [1:0]\j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire nRst;
  wire next_out_2;
  wire next_out_3;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__6_n_0;
  wire [4:4]u_i;
  wire valid;

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
        .CE(logic_n_14),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_14),
        .D(dut_n_9),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_14),
        .D(dut_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_14),
        .D(logic_n_16),
        .Q(\asout_array[2]_7 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_14),
        .D(dut_n_7),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__1_n_0),
        .G(logic_n_15),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .O(acks_out_reg_i_1__1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in_2[0]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in_2[1]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in_2[2]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in_2[3]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(a_in_2[4]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in_2[5]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in_2[6]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in_2[7]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in_2[8]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][4] 
       (.CLR(1'b0),
        .D(a_in_2[9]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1__1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 dut
       (.D({dut_n_7,dut_n_8,dut_n_9}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[2]_7 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q({u_i,Q}),
        .clk(clk),
        .count1_carry_i_5__5(count1_carry_i_5__5),
        .\count[4]_i_3__2 (\count[4]_i_3__2_0 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_2 ),
        .\count_reg_reg[2]_0 (\count_reg_reg[2] ),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized6 logic
       (.AR(reset_control),
        .CO(CO),
        .D({u_i,Q[2],Q[0]}),
        .E(logic_n_14),
        .\FSM_onehot_state_reg[1] (logic_n_15),
        .Q(\j_reg[1] ),
        .S(S),
        .a_in_2(a_in_2[9]),
        .a_in_3(a_in_3[9:0]),
        .clk(clk),
        .count1_carry_0(count1_carry),
        .count1_carry_1(\count_reg_reg[0] ),
        .count1_carry_2(count1_carry_0),
        .count1_carry__0_0(count1_carry__0),
        .count1_carry__1_0(count1_carry__1),
        .count1_carry__1_i_3__3(count1_carry__1_i_3__3),
        .count1_carry_i_10__7(count1_carry_i_10__7),
        .count1_carry_i_12__4_0(D),
        .count1_carry_i_13__4_0(count1_carry_i_13__4),
        .count1_carry_i_13__4_1(count1_carry_i_13__4_0),
        .count1_carry_i_14__4_0(a_in_3[14:10]),
        .count1_carry_i_4__6_0(count1_carry_i_5__5),
        .count1_carry_i_4__6_1(count1_carry_i_4__6),
        .count1_carry_i_4__6_2(\count[4]_i_3__2_0 ),
        .\count[4]_i_3__2 (\count[4]_i_3__2 ),
        .\count[4]_i_5__4 (\count[4]_i_5__4 ),
        .\count_reg_reg[0] (\count_reg_reg[0]_0 ),
        .\count_reg_reg[0]_0 (\count_reg_reg[0]_1 ),
        .\count_reg_reg[0]_1 ({nexts_out,\asout_array[2]_7 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .done_aux_reg_0(done_aux_reg),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[0]_1 (\j_reg[0]_0 ),
        .\j_reg[0]_2 (\j_reg[0]_1 ),
        .\j_reg[0]_3 (\j_reg[0]_2 ),
        .\j_reg[0]_4 (\j_reg[0]_3 ),
        .\j_reg[0]_5 (\j_reg[0]_4 ),
        .\j_reg[1]_0 (\j_reg[1]_0 ),
        .next_out_3(next_out_3),
        .valid(valid),
        .valid_aux_reg_0(logic_n_16));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(next_out_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__6_n_0));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7
   (AR,
    next_out_1,
    \count_reg_reg[1] ,
    \FSM_onehot_state_reg[4]_0 ,
    S,
    \j_reg[1] ,
    \count_reg_reg[2] ,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[0] ,
    \j_reg[1]_0 ,
    a_in_2,
    \j_reg[0] ,
    \count_reg_reg[3] ,
    SR,
    done_s,
    ack_in_1__0,
    clk,
    \count[4]_i_3__2 ,
    ack_in_1,
    \count_reg_reg[0]_0 ,
    Q,
    done_aux_reg,
    count1_carry__1,
    done_aux_reg_0,
    count1_carry_i_19__1,
    CO,
    done_aux_reg_1,
    next_out_2,
    nRst);
  output [0:0]AR;
  output next_out_1;
  output \count_reg_reg[1] ;
  output \FSM_onehot_state_reg[4]_0 ;
  output [2:0]S;
  output \j_reg[1] ;
  output \count_reg_reg[2] ;
  output [3:0]\count_reg_reg[2]_0 ;
  output [2:0]\count_reg_reg[2]_1 ;
  output \count_reg_reg[0] ;
  output \j_reg[1]_0 ;
  output [9:0]a_in_2;
  output \j_reg[0] ;
  output \count_reg_reg[3] ;
  output [0:0]SR;
  output done_s;
  output ack_in_1__0;
  input clk;
  input \count[4]_i_3__2 ;
  input ack_in_1;
  input \count_reg_reg[0]_0 ;
  input [4:0]Q;
  input [3:0]done_aux_reg;
  input count1_carry__1;
  input done_aux_reg_0;
  input [1:0]count1_carry_i_19__1;
  input [0:0]CO;
  input done_aux_reg_1;
  input next_out_2;
  input nRst;

  wire [0:0]AR;
  wire [0:0]CO;
  wire \FSM_onehot_state[4]_i_1__7_n_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [4:0]Q;
  wire [2:0]S;
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
  wire count1;
  wire count1_carry__1;
  wire [1:0]count1_carry_i_19__1;
  wire \count[4]_i_3__2 ;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire [3:0]\count_reg_reg[2]_0 ;
  wire [2:0]\count_reg_reg[2]_1 ;
  wire \count_reg_reg[3] ;
  wire [3:0]done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire done_s;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_15;
  wire dut_n_16;
  wire dut_n_17;
  wire dut_n_18;
  wire dut_n_19;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [0:0]j_reg;
  wire \j_reg[1] ;
  wire \j_reg[1]_0 ;
  wire j_reg_0_sn_1;
  wire logic_n_20;
  wire logic_n_21;
  wire logic_n_22;
  wire nRst;
  wire next_out_1;
  wire next_out_2;
  wire nexts_out;
  wire reset_control;
  wire reset_control_reg_i_1__7_n_0;
  wire [4:0]u_i;
  wire valid;

  assign \j_reg[0]  = j_reg_0_sn_1;
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
        .CE(logic_n_20),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_20),
        .D(dut_n_19),
        .Q(ce__0),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_20),
        .D(dut_n_18),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_20),
        .D(logic_n_22),
        .Q(\asout_array[1]_8 ),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_20),
        .D(dut_n_17),
        .Q(nexts_out),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ack_in_1_reg_i_1
       (.I0(next_out_1),
        .I1(ack_in_1),
        .O(ack_in_1__0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    ack_in_1_reg_i_2
       (.I0(next_out_1),
        .I1(ack_in_1),
        .I2(\count_reg_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1_n_0),
        .G(logic_n_21),
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
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
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
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(nexts_out),
        .O(ce_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    done_s_reg_i_1
       (.I0(\count_reg_reg[0]_0 ),
        .I1(next_out_1),
        .O(done_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 dut
       (.CO(count1),
        .D({dut_n_17,dut_n_18,dut_n_19}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[1]_8 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .S({dut_n_5,dut_n_6,dut_n_7}),
        .ack_in_1(ack_in_1),
        .clk(clk),
        .\count_reg_reg[3]_0 (dut_n_16),
        .\count_reg_reg[4]_0 ({dut_n_8,dut_n_9,dut_n_10,dut_n_11}),
        .\count_reg_reg[4]_1 ({dut_n_12,dut_n_13,dut_n_14,dut_n_15}),
        .done_aux_reg(Q),
        .j_reg(j_reg),
        .valid(valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized7 logic
       (.AR(reset_control),
        .CO(count1),
        .D(logic_n_22),
        .E(logic_n_20),
        .\FSM_onehot_state_reg[1] (logic_n_21),
        .Q(a_in_2[9:5]),
        .S({dut_n_5,dut_n_6,dut_n_7}),
        .a_in_2(a_in_2[4:0]),
        .clk(clk),
        .count1_carry__0_0({dut_n_12,dut_n_13,dut_n_14,dut_n_15}),
        .count1_carry__1_0({dut_n_8,dut_n_9,dut_n_10,dut_n_11}),
        .count1_carry__1_1(count1_carry__1),
        .count1_carry_i_19__1_0(count1_carry_i_19__1),
        .\count[4]_i_3__2_0 (\count[4]_i_3__2 ),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[1]_8 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[2] (S),
        .\count_reg_reg[2]_0 (\count_reg_reg[2] ),
        .\count_reg_reg[2]_1 (\count_reg_reg[2]_0 ),
        .\count_reg_reg[2]_2 (\count_reg_reg[2]_1 ),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .done_aux_reg_0(done_aux_reg),
        .done_aux_reg_1(done_aux_reg_0),
        .done_aux_reg_2(dut_n_16),
        .done_aux_reg_3(CO),
        .done_aux_reg_4(done_aux_reg_1),
        .j_reg(j_reg),
        .\j_reg[0]_0 (j_reg_0_sn_1),
        .\j_reg[1] (\j_reg[1] ),
        .\j_reg[1]_0 (\j_reg[1]_0 ),
        .next_out_2(next_out_2),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1_n_0),
        .GE(1'b1),
        .Q(next_out_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(reset_control_reg_i_1__7_n_0),
        .GE(1'b1),
        .Q(reset_control));
  LUT2 #(
    .INIT(4'hE)) 
    reset_control_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .O(reset_control_reg_i_1__7_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens
   (flag,
    done,
    counter,
    clk,
    nRst);
  output flag;
  output done;
  output [11:0]counter;
  input clk;
  input nRst;

  wire [4:0]a_in_1;
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
  wire [44:43]a_in_9;
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
  wire \counter_s_reg[11]_i_1_n_1 ;
  wire \counter_s_reg[11]_i_1_n_2 ;
  wire \counter_s_reg[11]_i_1_n_3 ;
  wire \counter_s_reg[3]_i_1_n_0 ;
  wire \counter_s_reg[3]_i_1_n_1 ;
  wire \counter_s_reg[3]_i_1_n_2 ;
  wire \counter_s_reg[3]_i_1_n_3 ;
  wire \counter_s_reg[3]_i_2_n_0 ;
  wire \counter_s_reg[7]_i_1_n_0 ;
  wire \counter_s_reg[7]_i_1_n_1 ;
  wire \counter_s_reg[7]_i_1_n_2 ;
  wire \counter_s_reg[7]_i_1_n_3 ;
  wire done;
  wire done_s;
  wire flag;
  wire flag_s_reg_i_1_n_0;
  wire fsm_1_n_10;
  wire fsm_1_n_11;
  wire fsm_1_n_12;
  wire fsm_1_n_13;
  wire fsm_1_n_14;
  wire fsm_1_n_15;
  wire fsm_1_n_16;
  wire fsm_1_n_17;
  wire fsm_1_n_2;
  wire fsm_1_n_28;
  wire fsm_1_n_29;
  wire fsm_1_n_3;
  wire fsm_1_n_30;
  wire fsm_1_n_4;
  wire fsm_1_n_5;
  wire fsm_1_n_6;
  wire fsm_1_n_7;
  wire fsm_1_n_8;
  wire fsm_1_n_9;
  wire fsm_2_n_11;
  wire fsm_2_n_12;
  wire fsm_2_n_13;
  wire fsm_2_n_14;
  wire fsm_2_n_15;
  wire fsm_2_n_16;
  wire fsm_2_n_3;
  wire fsm_2_n_32;
  wire fsm_2_n_33;
  wire fsm_2_n_34;
  wire fsm_2_n_35;
  wire fsm_2_n_36;
  wire fsm_2_n_8;
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
  wire fsm_3_n_38;
  wire fsm_3_n_40;
  wire fsm_3_n_41;
  wire fsm_3_n_42;
  wire fsm_3_n_7;
  wire fsm_4_n_31;
  wire fsm_4_n_32;
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
  wire fsm_4_n_45;
  wire fsm_4_n_5;
  wire fsm_5_n_2;
  wire fsm_5_n_3;
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
  wire fsm_5_n_45;
  wire fsm_5_n_46;
  wire fsm_5_n_47;
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
  wire fsm_7_n_10;
  wire fsm_7_n_11;
  wire fsm_7_n_12;
  wire fsm_7_n_13;
  wire fsm_7_n_14;
  wire fsm_7_n_15;
  wire fsm_7_n_16;
  wire fsm_7_n_2;
  wire fsm_7_n_57;
  wire fsm_7_n_58;
  wire fsm_7_n_59;
  wire fsm_7_n_6;
  wire fsm_7_n_60;
  wire fsm_7_n_61;
  wire fsm_7_n_62;
  wire fsm_7_n_63;
  wire fsm_7_n_64;
  wire fsm_7_n_7;
  wire fsm_7_n_8;
  wire fsm_7_n_9;
  wire fsm_8_n_12;
  wire fsm_8_n_13;
  wire fsm_8_n_14;
  wire fsm_8_n_15;
  wire fsm_8_n_16;
  wire fsm_8_n_17;
  wire fsm_8_n_18;
  wire fsm_8_n_19;
  wire fsm_8_n_20;
  wire fsm_8_n_21;
  wire fsm_8_n_22;
  wire fsm_8_n_23;
  wire fsm_8_n_24;
  wire fsm_8_n_25;
  wire fsm_8_n_26;
  wire fsm_8_n_27;
  wire fsm_8_n_28;
  wire fsm_8_n_29;
  wire fsm_8_n_30;
  wire fsm_8_n_31;
  wire fsm_8_n_32;
  wire fsm_8_n_33;
  wire fsm_8_n_34;
  wire fsm_8_n_7;
  wire fsm_9_n_1;
  wire fsm_9_n_10;
  wire fsm_9_n_4;
  wire fsm_9_n_5;
  wire fsm_9_n_6;
  wire fsm_9_n_7;
  wire fsm_9_n_8;
  wire fsm_9_n_9;
  wire \logic/count1 ;
  wire [1:0]\logic/j_reg ;
  wire [1:0]\logic/j_reg_1 ;
  wire [2:0]\logic/j_reg_2 ;
  wire [2:0]\logic/j_reg_3 ;
  wire [3:0]\logic/j_reg_4 ;
  wire [1:0]\logic/j_reg_6 ;
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
  wire [1:1]p_0_in__5;
  wire [11:0]plusOp_9;
  wire [3:0]u_i;
  wire [2:0]u_i_0;
  wire [2:0]u_i_5;
  wire [3:3]\NLW_counter_s_reg[11]_i_1_CO_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[0] 
       (.CLR(1'b0),
        .D(\a_in_1_reg[0]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \a_in_1_reg[0]_i_1 
       (.I0(a_in_1[0]),
        .O(\a_in_1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[1] 
       (.CLR(1'b0),
        .D(\a_in_1_reg[1]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_in_1_reg[1]_i_1 
       (.I0(a_in_1[0]),
        .I1(a_in_1[1]),
        .O(\a_in_1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[2] 
       (.CLR(1'b0),
        .D(\a_in_1_reg[2]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \a_in_1_reg[2]_i_1 
       (.I0(a_in_1[2]),
        .I1(a_in_1[1]),
        .I2(a_in_1[0]),
        .O(\a_in_1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[3] 
       (.CLR(1'b0),
        .D(\a_in_1_reg[3]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \a_in_1_reg[3]_i_1 
       (.I0(a_in_1[3]),
        .I1(a_in_1[2]),
        .I2(a_in_1[0]),
        .I3(a_in_1[1]),
        .O(\a_in_1_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[4] 
       (.CLR(1'b0),
        .D(\a_in_1_reg[4]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \a_in_1_reg[4]_i_1 
       (.I0(a_in_1[4]),
        .I1(a_in_1[1]),
        .I2(a_in_1[0]),
        .I3(a_in_1[2]),
        .I4(a_in_1[3]),
        .O(\a_in_1_reg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a_in_1_reg[4]_i_2 
       (.I0(ack_in_1),
        .I1(flag),
        .O(\a_in_1_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    ack_in_1_reg
       (.CLR(1'b0),
        .D(ack_in_1__0),
        .G(fsm_1_n_3),
        .GE(1'b1),
        .Q(ack_in_1));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[0] 
       (.CLR(1'b0),
        .D(plusOp_9[0]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[10] 
       (.CLR(1'b0),
        .D(plusOp_9[10]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[10]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[11] 
       (.CLR(1'b0),
        .D(plusOp_9[11]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[11]));
  CARRY4 \counter_s_reg[11]_i_1 
       (.CI(\counter_s_reg[7]_i_1_n_0 ),
        .CO({\NLW_counter_s_reg[11]_i_1_CO_UNCONNECTED [3],\counter_s_reg[11]_i_1_n_1 ,\counter_s_reg[11]_i_1_n_2 ,\counter_s_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_9[11:8]),
        .S(counter[11:8]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[1] 
       (.CLR(1'b0),
        .D(plusOp_9[1]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[1]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[2] 
       (.CLR(1'b0),
        .D(plusOp_9[2]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[2]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[3] 
       (.CLR(1'b0),
        .D(plusOp_9[3]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[3]));
  CARRY4 \counter_s_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\counter_s_reg[3]_i_1_n_0 ,\counter_s_reg[3]_i_1_n_1 ,\counter_s_reg[3]_i_1_n_2 ,\counter_s_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[1],1'b0}),
        .O(plusOp_9[3:0]),
        .S({counter[3:2],\counter_s_reg[3]_i_2_n_0 ,counter[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_s_reg[3]_i_2 
       (.I0(counter[1]),
        .O(\counter_s_reg[3]_i_2_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[4] 
       (.CLR(1'b0),
        .D(plusOp_9[4]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[4]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[5] 
       (.CLR(1'b0),
        .D(plusOp_9[5]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[5]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[6] 
       (.CLR(1'b0),
        .D(plusOp_9[6]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[6]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[7] 
       (.CLR(1'b0),
        .D(plusOp_9[7]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[7]));
  CARRY4 \counter_s_reg[7]_i_1 
       (.CI(\counter_s_reg[3]_i_1_n_0 ),
        .CO({\counter_s_reg[7]_i_1_n_0 ,\counter_s_reg[7]_i_1_n_1 ,\counter_s_reg[7]_i_1_n_2 ,\counter_s_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_9[7:4]),
        .S(counter[7:4]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[8] 
       (.CLR(1'b0),
        .D(plusOp_9[8]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[8]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \counter_s_reg[9] 
       (.CLR(1'b0),
        .D(plusOp_9[9]),
        .G(fsm_9_n_10),
        .GE(1'b1),
        .Q(counter[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_s_reg
       (.CLR(1'b0),
        .D(next_out_1),
        .G(done_s),
        .GE(1'b1),
        .Q(done));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    flag_s_reg
       (.CLR(1'b0),
        .D(1'b1),
        .G(flag_s_reg_i_1_n_0),
        .GE(1'b1),
        .Q(flag));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    flag_s_reg_i_1
       (.I0(a_in_1[1]),
        .I1(a_in_1[0]),
        .I2(a_in_1[2]),
        .I3(a_in_1[4]),
        .I4(a_in_1[3]),
        .O(flag_s_reg_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7 fsm_1
       (.AR(ack_in_2),
        .CO(\logic/count1 ),
        .\FSM_onehot_state_reg[4]_0 (fsm_1_n_3),
        .Q(a_in_1),
        .S({fsm_1_n_4,fsm_1_n_5,fsm_1_n_6}),
        .SR(fsm_1_n_30),
        .a_in_2(a_in_2),
        .ack_in_1(ack_in_1),
        .ack_in_1__0(ack_in_1__0),
        .clk(clk),
        .count1_carry__1(fsm_2_n_8),
        .count1_carry_i_19__1(\logic/j_reg ),
        .\count[4]_i_3__2 (fsm_2_n_3),
        .\count_reg_reg[0] (fsm_1_n_16),
        .\count_reg_reg[0]_0 (flag),
        .\count_reg_reg[1] (fsm_1_n_2),
        .\count_reg_reg[2] (fsm_1_n_8),
        .\count_reg_reg[2]_0 ({fsm_1_n_9,fsm_1_n_10,fsm_1_n_11,fsm_1_n_12}),
        .\count_reg_reg[2]_1 ({fsm_1_n_13,fsm_1_n_14,fsm_1_n_15}),
        .\count_reg_reg[3] (fsm_1_n_29),
        .done_aux_reg(u_i),
        .done_aux_reg_0(fsm_2_n_16),
        .done_aux_reg_1(fsm_2_n_35),
        .done_s(done_s),
        .\j_reg[0] (fsm_1_n_28),
        .\j_reg[1] (fsm_1_n_7),
        .\j_reg[1]_0 (fsm_1_n_17),
        .nRst(nRst),
        .next_out_1(next_out_1),
        .next_out_2(next_out_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6 fsm_2
       (.AR(ack_in_3),
        .CO(\logic/count1 ),
        .D(p_0_in__5),
        .\FSM_onehot_state_reg[0]_0 (fsm_1_n_30),
        .Q(u_i),
        .S({fsm_1_n_4,fsm_1_n_5,fsm_1_n_6}),
        .SR(fsm_2_n_36),
        .a_in_2(a_in_2),
        .a_in_3(a_in_3),
        .clk(clk),
        .count1_carry(fsm_1_n_8),
        .count1_carry_0(fsm_1_n_2),
        .count1_carry__0({fsm_1_n_13,fsm_1_n_14,fsm_1_n_15}),
        .count1_carry__1({fsm_1_n_9,fsm_1_n_10,fsm_1_n_11,fsm_1_n_12}),
        .count1_carry__1_i_3__3(u_i_0),
        .count1_carry_i_10__7(fsm_3_n_38),
        .count1_carry_i_13__4(fsm_3_n_40),
        .count1_carry_i_13__4_0(fsm_3_n_41),
        .count1_carry_i_4__6(fsm_1_n_16),
        .count1_carry_i_5__5(fsm_1_n_17),
        .\count[4]_i_3__2 (fsm_1_n_28),
        .\count[4]_i_3__2_0 (fsm_1_n_7),
        .\count[4]_i_5__4 (\logic/j_reg_1 ),
        .\count_reg_reg[0] (fsm_2_n_3),
        .\count_reg_reg[0]_0 (fsm_2_n_11),
        .\count_reg_reg[0]_1 (fsm_2_n_14),
        .\count_reg_reg[0]_2 (ack_in_2),
        .\count_reg_reg[1] (fsm_2_n_34),
        .\count_reg_reg[2] (fsm_2_n_35),
        .done_aux_reg(fsm_1_n_29),
        .\j_reg[0] (fsm_2_n_8),
        .\j_reg[0]_0 (fsm_2_n_12),
        .\j_reg[0]_1 (fsm_2_n_13),
        .\j_reg[0]_2 (fsm_2_n_15),
        .\j_reg[0]_3 (fsm_2_n_16),
        .\j_reg[0]_4 (fsm_2_n_32),
        .\j_reg[1] (\logic/j_reg ),
        .\j_reg[1]_0 (fsm_2_n_33),
        .nRst(nRst),
        .next_out_2(next_out_2),
        .next_out_3(next_out_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5 fsm_3
       (.AR(ack_in_4),
        .D(p_0_in__5),
        .\FSM_onehot_state_reg[0]_0 (fsm_2_n_36),
        .\FSM_onehot_state_reg[3]_0 (fsm_3_n_30),
        .\FSM_onehot_state_reg[3]_1 (fsm_3_n_31),
        .\FSM_onehot_state_reg[3]_2 (fsm_3_n_34),
        .\FSM_onehot_state_reg[3]_3 (fsm_3_n_35),
        .\FSM_onehot_state_reg[3]_4 (fsm_3_n_37),
        .Q(\logic/j_reg_1 ),
        .SR(fsm_3_n_42),
        .a_in_3(a_in_3),
        .a_in_4(a_in_4),
        .clk(clk),
        .count1_carry__1(fsm_2_n_14),
        .count1_carry_i_15__1(fsm_4_n_44),
        .count1_carry_i_15__1_0(fsm_4_n_43),
        .count1_carry_i_28__0(fsm_4_n_42),
        .count1_carry_i_4__5(fsm_2_n_13),
        .count1_carry_i_4__5_0(fsm_2_n_12),
        .\count[4]_i_5__3 (\logic/j_reg_2 ),
        .\count[4]_i_5__4 (fsm_2_n_34),
        .\count_reg[0] (fsm_2_n_32),
        .\count_reg[0]_0 (fsm_2_n_33),
        .\count_reg_reg[0] (ack_in_3),
        .\count_reg_reg[2] (u_i_0),
        .done_aux_reg(fsm_2_n_11),
        .done_aux_reg_0(fsm_2_n_15),
        .\j_reg[0] (fsm_3_n_32),
        .\j_reg[0]_0 (fsm_3_n_33),
        .\j_reg[0]_1 (fsm_3_n_36),
        .\j_reg[1] (fsm_3_n_28),
        .\j_reg[1]_0 (fsm_3_n_29),
        .\j_reg[2] (fsm_3_n_7),
        .\j_reg[2]_0 (fsm_3_n_38),
        .\j_reg[2]_1 (fsm_3_n_40),
        .\j_reg[2]_2 (fsm_3_n_41),
        .nRst(nRst),
        .next_out_3(next_out_3),
        .next_out_4(next_out_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4 fsm_4
       (.AR(ack_in_5),
        .\FSM_onehot_state_reg[0]_0 (fsm_3_n_42),
        .\FSM_onehot_state_reg[3]_0 (fsm_4_n_5),
        .\FSM_onehot_state_reg[3]_1 (fsm_4_n_31),
        .\FSM_onehot_state_reg[3]_10 (fsm_4_n_41),
        .\FSM_onehot_state_reg[3]_2 (fsm_4_n_32),
        .\FSM_onehot_state_reg[3]_3 (fsm_4_n_33),
        .\FSM_onehot_state_reg[3]_4 (fsm_4_n_34),
        .\FSM_onehot_state_reg[3]_5 (fsm_4_n_35),
        .\FSM_onehot_state_reg[3]_6 (fsm_4_n_36),
        .\FSM_onehot_state_reg[3]_7 (fsm_4_n_38),
        .\FSM_onehot_state_reg[3]_8 (fsm_4_n_39),
        .\FSM_onehot_state_reg[3]_9 (fsm_4_n_40),
        .Q(\logic/j_reg_2 ),
        .SR(fsm_4_n_45),
        .a_in_4(a_in_4),
        .a_in_5(a_in_5),
        .clk(clk),
        .count1_carry__1_i_3__2(fsm_3_n_29),
        .count1_carry_i_13__6(fsm_3_n_28),
        .count1_carry_i_19__0(fsm_3_n_37),
        .count1_carry_i_19__0_0(fsm_3_n_34),
        .count1_carry_i_19__0_1(fsm_3_n_35),
        .count1_carry_i_19__0_2(fsm_3_n_33),
        .count1_carry_i_5__7(fsm_3_n_30),
        .count1_carry_i_5__7_0(fsm_3_n_36),
        .count1_carry_i_9__2(fsm_3_n_7),
        .\count[4]_i_15__2 (fsm_5_n_45),
        .\count[4]_i_19__2 (fsm_5_n_46),
        .\count[4]_i_19__2_0 (fsm_5_n_2),
        .\count[4]_i_4__6 (fsm_3_n_32),
        .\count[4]_i_4__6_0 (fsm_3_n_31),
        .\count_reg_reg[0] (ack_in_4),
        .\count_reg_reg[1] (fsm_4_n_37),
        .\j_reg[0] (fsm_4_n_42),
        .\j_reg[1] (fsm_4_n_44),
        .\j_reg[2] (fsm_4_n_43),
        .nRst(nRst),
        .next_out_4(next_out_4),
        .next_out_5(next_out_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3 fsm_5
       (.AR(ack_in_6),
        .\FSM_onehot_state_reg[0]_0 (fsm_4_n_45),
        .\FSM_onehot_state_reg[3]_0 (fsm_5_n_3),
        .\FSM_onehot_state_reg[3]_1 (fsm_5_n_34),
        .\FSM_onehot_state_reg[3]_2 (fsm_5_n_35),
        .\FSM_onehot_state_reg[3]_3 (fsm_5_n_36),
        .\FSM_onehot_state_reg[3]_4 (fsm_5_n_37),
        .\FSM_onehot_state_reg[3]_5 (fsm_5_n_40),
        .\FSM_onehot_state_reg[3]_6 (fsm_5_n_41),
        .SR(fsm_5_n_47),
        .a_in_5(a_in_5),
        .a_in_6(a_in_6),
        .clk(clk),
        .count1_carry_i_13__3(fsm_4_n_41),
        .count1_carry_i_13__3_0(fsm_4_n_40),
        .\count[4]_i_10__1 (fsm_4_n_37),
        .\count[4]_i_10__1_0 (fsm_4_n_5),
        .\count[4]_i_12__2 (fsm_4_n_32),
        .\count[4]_i_12__2_0 (fsm_4_n_33),
        .\count[4]_i_19__2 (fsm_4_n_38),
        .\count[4]_i_21__2 (fsm_4_n_39),
        .\count[4]_i_3__1 (fsm_4_n_34),
        .\count[4]_i_3__1_0 (fsm_4_n_31),
        .\count[4]_i_6__0 (fsm_4_n_35),
        .\count[4]_i_7__2 (fsm_4_n_36),
        .\count[4]_i_8__2 (fsm_6_n_48),
        .\count[4]_i_8__2_0 (fsm_6_n_49),
        .\count_reg_reg[0] (fsm_5_n_44),
        .\count_reg_reg[0]_0 (ack_in_5),
        .\count_reg_reg[1] (fsm_5_n_39),
        .\count_reg_reg[2] (fsm_5_n_42),
        .\count_reg_reg[3] (fsm_5_n_38),
        .\count_reg_reg[4] (fsm_5_n_43),
        .\j_reg[1] (fsm_5_n_45),
        .\j_reg[2] (fsm_5_n_2),
        .\j_reg[2]_0 (fsm_5_n_46),
        .nRst(nRst),
        .next_out_5(next_out_5),
        .next_out_6(next_out_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2 fsm_6
       (.AR(ack_in_7),
        .\FSM_onehot_state_reg[0]_0 (fsm_5_n_47),
        .\FSM_onehot_state_reg[3]_0 (fsm_6_n_43),
        .\FSM_onehot_state_reg[3]_1 (fsm_6_n_44),
        .\FSM_onehot_state_reg[3]_2 (fsm_6_n_47),
        .Q(\logic/j_reg_3 ),
        .SR(fsm_6_n_50),
        .a_in_6(a_in_6),
        .a_in_7(a_in_7),
        .clk(clk),
        .count1_carry__1_i_3__6(fsm_7_n_6),
        .count1_carry_i_12__1(fsm_5_n_44),
        .count1_carry_i_12__1_0(fsm_5_n_39),
        .count1_carry_i_19(fsm_7_n_63),
        .count1_carry_i_25(fsm_7_n_7),
        .count1_carry_i_41(fsm_7_n_62),
        .\count[4]_i_21__1 (fsm_5_n_42),
        .\count[4]_i_22__0 (fsm_5_n_38),
        .\count[4]_i_3__0 (fsm_5_n_37),
        .\count[4]_i_3__0_0 (fsm_5_n_34),
        .\count[4]_i_3__0_1 (fsm_5_n_3),
        .\count[4]_i_3__0_2 (fsm_5_n_41),
        .\count[4]_i_6__4 (fsm_7_n_60),
        .\count[4]_i_6__4_0 (fsm_7_n_61),
        .\count[4]_i_7__4 (fsm_5_n_35),
        .\count[4]_i_7__4_0 (fsm_5_n_40),
        .\count[4]_i_8__2 (fsm_5_n_43),
        .\count[4]_i_8__2_0 (fsm_5_n_36),
        .\count_reg_reg[0] (ack_in_6),
        .\j_reg[0] (fsm_6_n_2),
        .\j_reg[0]_0 (fsm_6_n_39),
        .\j_reg[1] (fsm_6_n_38),
        .\j_reg[1]_0 (fsm_6_n_40),
        .\j_reg[2] (fsm_6_n_45),
        .\j_reg[3] (fsm_6_n_41),
        .\j_reg[3]_0 (fsm_6_n_42),
        .\j_reg[3]_1 (fsm_6_n_46),
        .\j_reg[3]_2 (fsm_6_n_48),
        .\j_reg[3]_3 (fsm_6_n_49),
        .nRst(nRst),
        .next_out_6(next_out_6),
        .next_out_7(next_out_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1 fsm_7
       (.AR(ack_in_8),
        .\FSM_onehot_state_reg[0]_0 (fsm_6_n_50),
        .\FSM_onehot_state_reg[3]_0 (fsm_7_n_58),
        .\FSM_onehot_state_reg[3]_1 (fsm_7_n_59),
        .Q(\logic/j_reg_4 ),
        .SR(fsm_7_n_64),
        .a_in_7(a_in_7),
        .a_in_8(a_in_8),
        .clk(clk),
        .count1_carry_i_12__0(fsm_6_n_40),
        .count1_carry_i_16__1(fsm_6_n_43),
        .count1_carry_i_16__1_0(fsm_6_n_46),
        .count1_carry_i_16__1_1(fsm_6_n_41),
        .count1_carry_i_3__6(fsm_6_n_39),
        .count1_carry_i_8__1(fsm_6_n_45),
        .\count[4]_i_14__0 (fsm_8_n_32),
        .\count[4]_i_17__0 (fsm_8_n_33),
        .\count[4]_i_17__0_0 (fsm_8_n_12),
        .\count[4]_i_19__0 (fsm_8_n_30),
        .\count[4]_i_4__5 (fsm_6_n_38),
        .\count[4]_i_5__0 (fsm_6_n_42),
        .\count[4]_i_5__0_0 (fsm_6_n_44),
        .\count[4]_i_5__0_1 (fsm_6_n_47),
        .\count[4]_i_6__3 (fsm_8_n_31),
        .\count[4]_i_7__0 (fsm_8_n_7),
        .\count[4]_i_7__0_0 (fsm_8_n_29),
        .\count_reg[0] (fsm_6_n_2),
        .\count_reg_reg[0] (fsm_7_n_8),
        .\count_reg_reg[0]_0 (fsm_7_n_13),
        .\count_reg_reg[0]_1 (fsm_7_n_15),
        .\count_reg_reg[0]_2 (ack_in_7),
        .\count_reg_reg[1] (fsm_7_n_14),
        .\count_reg_reg[2] (fsm_7_n_12),
        .done_aux_reg(u_i_5),
        .done_aux_reg_0(fsm_8_n_28),
        .done_aux_reg_1(fsm_8_n_13),
        .\j_reg[0] (fsm_7_n_6),
        .\j_reg[0]_0 (fsm_7_n_11),
        .\j_reg[0]_1 (fsm_7_n_16),
        .\j_reg[0]_2 (fsm_7_n_61),
        .\j_reg[1] (fsm_7_n_57),
        .\j_reg[1]_0 (fsm_7_n_62),
        .\j_reg[1]_1 (fsm_7_n_63),
        .\j_reg[2] (fsm_7_n_2),
        .\j_reg[2]_0 (\logic/j_reg_3 ),
        .\j_reg[3] (fsm_7_n_7),
        .\j_reg[3]_0 (fsm_7_n_9),
        .\j_reg[3]_1 (fsm_7_n_10),
        .\j_reg[3]_2 (fsm_7_n_60),
        .nRst(nRst),
        .next_out_7(next_out_7),
        .next_out_8(next_out_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0 fsm_8
       (.AR(ack_in_9),
        .\FSM_onehot_state_reg[0]_0 (fsm_7_n_64),
        .\FSM_onehot_state_reg[3]_0 (fsm_8_n_19),
        .\FSM_onehot_state_reg[3]_1 (fsm_8_n_21),
        .\FSM_onehot_state_reg[3]_2 (fsm_8_n_22),
        .\FSM_onehot_state_reg[3]_3 (fsm_8_n_23),
        .\FSM_onehot_state_reg[3]_4 (fsm_8_n_26),
        .\FSM_onehot_state_reg[3]_5 (fsm_8_n_27),
        .Q(a_in_9),
        .SR(fsm_8_n_34),
        .a_in_8(a_in_8),
        .clk(clk),
        .count1_carry(fsm_7_n_14),
        .count1_carry_i_13(fsm_9_n_4),
        .count1_carry_i_13_0(fsm_9_n_7),
        .count1_carry_i_13_1(fsm_9_n_6),
        .count1_carry_i_14(fsm_9_n_9),
        .count1_carry_i_4__0(fsm_7_n_8),
        .count1_carry_i_4__0_0(fsm_7_n_13),
        .\count[4]_i_11 (\logic/j_reg_6 ),
        .\count[4]_i_11__3 (fsm_7_n_59),
        .\count[4]_i_11__3_0 (fsm_7_n_16),
        .\count[4]_i_17 (fsm_9_n_5),
        .\count[4]_i_17_0 (fsm_9_n_8),
        .\count[4]_i_4 (fsm_9_n_1),
        .\count[4]_i_5__5 (fsm_7_n_57),
        .\count[4]_i_7__0 (fsm_7_n_58),
        .\count_reg[0] (fsm_7_n_2),
        .\count_reg[0]_0 (fsm_7_n_11),
        .\count_reg[0]_1 (fsm_7_n_15),
        .\count_reg[0]_2 (fsm_7_n_10),
        .\count_reg_reg[0] (fsm_8_n_28),
        .\count_reg_reg[0]_0 (ack_in_8),
        .\count_reg_reg[2] (u_i_5),
        .\count_reg_reg[2]_0 (fsm_8_n_25),
        .\count_reg_reg[3] (fsm_8_n_24),
        .done_aux_i_2__0(fsm_7_n_9),
        .done_aux_reg(fsm_7_n_12),
        .\j_reg[0] (fsm_8_n_7),
        .\j_reg[0]_0 (fsm_8_n_14),
        .\j_reg[0]_1 (fsm_8_n_15),
        .\j_reg[0]_2 (fsm_8_n_16),
        .\j_reg[1] (fsm_8_n_17),
        .\j_reg[1]_0 (fsm_8_n_18),
        .\j_reg[1]_1 (fsm_8_n_20),
        .\j_reg[2] (fsm_8_n_29),
        .\j_reg[2]_0 (fsm_8_n_31),
        .\j_reg[2]_1 (fsm_8_n_32),
        .\j_reg[2]_2 (fsm_8_n_33),
        .\j_reg[3] (\logic/j_reg_4 ),
        .\j_reg[3]_0 (fsm_8_n_12),
        .\j_reg[3]_1 (fsm_8_n_13),
        .\j_reg[3]_2 (fsm_8_n_30),
        .nRst(nRst),
        .next_out_8(next_out_8),
        .next_out_9(next_out_9));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm fsm_9
       (.AR(ack_in_9),
        .E(fsm_9_n_10),
        .Q(a_in_9),
        .SR(fsm_8_n_34),
        .clk(clk),
        .count1_carry_i_14(fsm_8_n_22),
        .count1_carry_i_14_0(fsm_8_n_23),
        .\count[4]_i_12 (fsm_8_n_24),
        .\count[4]_i_12_0 (fsm_8_n_21),
        .\count[4]_i_5 (fsm_8_n_26),
        .\count[4]_i_5_0 (fsm_8_n_18),
        .\count[4]_i_5_1 (fsm_8_n_27),
        .\count[4]_i_5_2 (fsm_8_n_20),
        .\count[4]_i_7 (fsm_8_n_25),
        .\count[4]_i_7_0 (fsm_8_n_19),
        .\count_reg[0] (fsm_8_n_14),
        .\count_reg[0]_0 (fsm_8_n_17),
        .\count_reg[0]_1 (fsm_8_n_16),
        .done_aux_i_4(fsm_8_n_15),
        .\j_reg[1] (\logic/j_reg_6 ),
        .\j_reg[1]_0 (fsm_9_n_4),
        .\j_reg[1]_1 (fsm_9_n_5),
        .\j_reg[1]_2 (fsm_9_n_6),
        .\j_reg[1]_3 (fsm_9_n_7),
        .\j_reg[1]_4 (fsm_9_n_8),
        .\j_reg[1]_5 (fsm_9_n_9),
        .\j_reg[2] (fsm_9_n_1),
        .next_out_9(next_out_9));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter
   (Q,
    S,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[2]_2 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[3]_0 ,
    D,
    \count_reg[0] ,
    count1_carry_i_4_0,
    count1_carry,
    done_aux_reg,
    \count_reg[0]_0 ,
    count1_carry__1_i_3,
    done_aux_i_4_0,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    AR);
  output [1:0]Q;
  output [0:0]S;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[2]_2 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[3]_0 ;
  output [2:0]D;
  input \count_reg[0] ;
  input [2:0]count1_carry_i_4_0;
  input count1_carry;
  input done_aux_reg;
  input \count_reg[0]_0 ;
  input count1_carry__1_i_3;
  input done_aux_i_4_0;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [1:0]Q;
  wire [0:0]S;
  wire clk;
  wire count1_carry;
  wire count1_carry__1_i_3;
  wire count1_carry_i_10_n_0;
  wire count1_carry_i_12_n_0;
  wire [2:0]count1_carry_i_4_0;
  wire count1_carry_i_8_n_0;
  wire count1_carry_i_9__3_n_0;
  wire [4:0]count_next;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[2]_2 ;
  wire \count_reg_reg[3]_0 ;
  wire done_aux_i_4_0;
  wire done_aux_reg;
  wire [2:0]u_i;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[4]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(u_i[1]),
        .I4(u_i[2]),
        .I5(u_i[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg[4] [3]),
        .I1(\FSM_onehot_state_reg[4] [1]),
        .I2(\FSM_onehot_state[4]_i_4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(u_i[0]),
        .I1(u_i[2]),
        .I2(u_i[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    count1_carry_i_10
       (.I0(count1_carry_i_12_n_0),
        .I1(u_i[2]),
        .I2(\count_reg[0]_0 ),
        .I3(count1_carry_i_4_0[2]),
        .I4(count1_carry_i_4_0[1]),
        .O(count1_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h1117)) 
    count1_carry_i_12
       (.I0(u_i[1]),
        .I1(\count_reg[0] ),
        .I2(u_i[0]),
        .I3(done_aux_i_4_0),
        .O(count1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h00A4010084002001)) 
    count1_carry_i_4
       (.I0(count1_carry_i_4_0[0]),
        .I1(\count_reg_reg[2]_0 ),
        .I2(count1_carry_i_8_n_0),
        .I3(count1_carry_i_9__3_n_0),
        .I4(count1_carry_i_10_n_0),
        .I5(count1_carry),
        .O(S));
  LUT5 #(
    .INIT(32'h96669996)) 
    count1_carry_i_6
       (.I0(count1_carry__1_i_3),
        .I1(Q[0]),
        .I2(\count_reg[0]_0 ),
        .I3(u_i[2]),
        .I4(count1_carry_i_12_n_0),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h6A565555AAAA6A56)) 
    count1_carry_i_7
       (.I0(done_aux_reg),
        .I1(\count_reg[0]_0 ),
        .I2(u_i[2]),
        .I3(count1_carry_i_12_n_0),
        .I4(count1_carry__1_i_3),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_8
       (.I0(u_i[0]),
        .I1(done_aux_i_4_0),
        .O(count1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_9__3
       (.I0(u_i[1]),
        .I1(\count_reg[0] ),
        .O(count1_carry_i_9__3_n_0));
  LUT6 #(
    .INIT(64'hFF9696FFFFFFFFFF)) 
    \count[4]_i_4 
       (.I0(\count_reg_reg[0]_0 ),
        .I1(u_i[2]),
        .I2(\count_reg[0]_0 ),
        .I3(u_i[1]),
        .I4(\count_reg[0] ),
        .I5(count1_carry_i_8_n_0),
        .O(\count_reg_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count[4]_i_9 
       (.I0(u_i[0]),
        .I1(done_aux_i_4_0),
        .O(\count_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(u_i[1]),
        .I3(u_i[2]),
        .I4(u_i[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(u_i[1]),
        .I3(u_i[2]),
        .I4(u_i[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1 
       (.I0(u_i[2]),
        .I1(u_i[1]),
        .I2(u_i[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(u_i[1]),
        .I3(u_i[2]),
        .I4(u_i[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(u_i[1]),
        .I3(u_i[0]),
        .I4(u_i[2]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[0]),
        .Q(u_i[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[1]),
        .Q(u_i[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[2]),
        .Q(u_i[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[3]),
        .Q(Q[0]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(count_next[4]),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'hFBFFFFFBFFFBFBFF)) 
    done_aux_i_4
       (.I0(done_aux_reg),
        .I1(count1_carry_i_8_n_0),
        .I2(count1_carry_i_9__3_n_0),
        .I3(\count_reg[0]_0 ),
        .I4(u_i[2]),
        .I5(count1_carry_i_12_n_0),
        .O(\count_reg_reg[2]_1 ));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0
   (\count_reg_reg[3]_0 ,
    Q,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    D,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \count_reg[0]_2 ,
    done_aux_i_2__0,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[3]_0 ;
  output [4:0]Q;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input \count_reg[0]_2 ;
  input done_aux_i_2__0;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__0_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire [4:0]count_next;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire \count_reg[0]_2 ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire done_aux_i_2__0;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state[4]_i_4__0_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__0 
       (.I0(\FSM_onehot_state[4]_i_4__0_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_8__0
       (.I0(Q[0]),
        .I1(done_aux_i_2__0),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0440011001100440)) 
    \count[4]_i_4__0 
       (.I0(\count_reg_reg[0]_0 ),
        .I1(\count_reg[0]_0 ),
        .I2(Q[1]),
        .I3(\count_reg[0]_1 ),
        .I4(Q[2]),
        .I5(\count_reg[0]_2 ),
        .O(\count_reg_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_5__5 
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1
   (\count_reg_reg[0]_0 ,
    Q,
    S,
    \count_reg_reg[0]_1 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[3]_1 ,
    \count_reg_reg[3]_2 ,
    \count_reg_reg[1]_0 ,
    D,
    count1_carry_i_4__1,
    \count_reg[0] ,
    count1_carry__1,
    count1_carry__1_0,
    CO,
    \count_reg[0]_0 ,
    count1_carry_i_4__1_0,
    count1_carry_i_3__6,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_2 );
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output [2:0]S;
  output \count_reg_reg[0]_1 ;
  output [3:0]\count_reg_reg[3]_0 ;
  output [1:0]\count_reg_reg[3]_1 ;
  output \count_reg_reg[3]_2 ;
  output \count_reg_reg[1]_0 ;
  output [2:0]D;
  input count1_carry_i_4__1;
  input \count_reg[0] ;
  input [0:0]count1_carry__1;
  input count1_carry__1_0;
  input [0:0]CO;
  input \count_reg[0]_0 ;
  input count1_carry_i_4__1_0;
  input count1_carry_i_3__6;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__1_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [2:0]S;
  wire clk;
  wire [0:0]count1_carry__1;
  wire count1_carry__1_0;
  wire count1_carry_i_3__6;
  wire count1_carry_i_4__1;
  wire count1_carry_i_4__1_0;
  wire [4:1]count_next;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_i_1__4_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1]_0 ;
  wire [3:0]\count_reg_reg[3]_0 ;
  wire [1:0]\count_reg_reg[3]_1 ;
  wire \count_reg_reg[3]_2 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(\FSM_onehot_state[4]_i_4__1_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__1 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__1 
       (.I0(\FSM_onehot_state[4]_i_4__1_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry__0_i_1__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(\count_reg_reg[3]_0 [3]));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry__0_i_2__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(\count_reg_reg[3]_0 [2]));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry__0_i_3__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(\count_reg_reg[3]_0 [1]));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry__0_i_4__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(\count_reg_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h0F0F0F09)) 
    count1_carry__1_i_1__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry__1_i_2__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry__1_i_3__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_10__6
       (.I0(Q[0]),
        .I1(count1_carry_i_4__1),
        .O(\count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_12__0
       (.I0(Q[1]),
        .I1(count1_carry_i_4__1_0),
        .O(\count_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry_i_1__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(\count_reg_reg[3]_1 [1]));
  LUT5 #(
    .INIT(32'h0F0F0F69)) 
    count1_carry_i_2__6
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(count1_carry__1),
        .I3(\count_reg_reg[0]_1 ),
        .I4(count1_carry__1_0),
        .O(\count_reg_reg[3]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFF6FF66FF6FFFF)) 
    count1_carry_i_6__1
       (.I0(count1_carry_i_4__1),
        .I1(Q[0]),
        .I2(count1_carry_i_4__1_0),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(count1_carry_i_3__6),
        .O(\count_reg_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hF0F0F090)) 
    \count[4]_i_4__5 
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .I2(CO),
        .I3(\count_reg[0]_0 ),
        .I4(\count_reg_reg[0]_1 ),
        .O(\count_reg_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\count_reg[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(\count_reg[0]_i_1__4_n_0 ),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2
   (\count_reg_reg[0]_0 ,
    Q,
    \count_reg_reg[3]_0 ,
    D,
    count1_carry_i_4__2,
    \count_reg[0] ,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output \count_reg_reg[3]_0 ;
  output [2:0]D;
  input count1_carry_i_4__2;
  input \count_reg[0] ;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__2_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire count1_carry_i_4__2;
  wire [4:0]count_next;
  wire \count_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(\FSM_onehot_state[4]_i_4__2_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__2 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__2 
       (.I0(\FSM_onehot_state[4]_i_4__2_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_8__2
       (.I0(Q[0]),
        .I1(count1_carry_i_4__2),
        .O(\count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[4]_i_5__1 
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
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
   (\count_reg_reg[3]_0 ,
    Q,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    D,
    \count_reg[0] ,
    count1_carry_i_4__3,
    count1_carry_i_4__3_0,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[3]_0 ;
  output [4:0]Q;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  input \count_reg[0] ;
  input count1_carry_i_4__3;
  input count1_carry_i_4__3_0;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__3_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire count1_carry_i_4__3;
  wire count1_carry_i_4__3_0;
  wire [4:0]count_next;
  wire \count_reg[0] ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(\FSM_onehot_state[4]_i_4__3_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__3 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__3 
       (.I0(\FSM_onehot_state[4]_i_4__3_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_10__2
       (.I0(Q[1]),
        .I1(count1_carry_i_4__3),
        .O(\count_reg_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_11__3
       (.I0(Q[0]),
        .I1(count1_carry_i_4__3_0),
        .O(\count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[4]_i_5__2 
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4
   (\count_reg_reg[1]_0 ,
    Q,
    S,
    \count_reg_reg[1]_1 ,
    \count_reg_reg[1]_2 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[3]_1 ,
    \count_reg_reg[0]_0 ,
    D,
    count1_carry_i_4__4,
    count1_carry__1,
    count1_carry__1_0,
    count1_carry__1_1,
    count1_carry_i_9__2,
    count1_carry_i_9__2_0,
    count1_carry_i_4__4_0,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[1]_0 ;
  output [4:0]Q;
  output [2:0]S;
  output \count_reg_reg[1]_1 ;
  output \count_reg_reg[1]_2 ;
  output [2:0]\count_reg_reg[3]_0 ;
  output [3:0]\count_reg_reg[3]_1 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  input count1_carry_i_4__4;
  input count1_carry__1;
  input count1_carry__1_0;
  input count1_carry__1_1;
  input count1_carry_i_9__2;
  input count1_carry_i_9__2_0;
  input count1_carry_i_4__4_0;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__4_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [2:0]S;
  wire clk;
  wire count1_carry__1;
  wire count1_carry__1_0;
  wire count1_carry__1_1;
  wire count1_carry_i_4__4;
  wire count1_carry_i_4__4_0;
  wire count1_carry_i_9__2;
  wire count1_carry_i_9__2_0;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[1]_1 ;
  wire \count_reg_reg[1]_2 ;
  wire [2:0]\count_reg_reg[3]_0 ;
  wire [3:0]\count_reg_reg[3]_1 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__4 
       (.I0(\FSM_onehot_state[4]_i_4__4_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__4 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__4 
       (.I0(\FSM_onehot_state[4]_i_4__4_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__4 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__4_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry__0_i_1__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[3]_1 [3]));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry__0_i_2__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry__0_i_3__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[3]_1 [1]));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry__0_i_4__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[3]_1 [0]));
  LUT6 #(
    .INIT(64'h00FF00FF009600FF)) 
    count1_carry__1_i_1__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry__1_i_2__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry__1_i_3__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    count1_carry_i_11__4
       (.I0(Q[0]),
        .I1(count1_carry_i_4__4_0),
        .O(\count_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_13__6
       (.I0(Q[1]),
        .I1(count1_carry_i_4__4),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry_i_1__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h00FF00FF699600FF)) 
    count1_carry_i_2__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h0069006900000096)) 
    count1_carry_i_3__2
       (.I0(Q[3]),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[1]_1 ),
        .I3(count1_carry__1_0),
        .I4(\count_reg_reg[1]_2 ),
        .I5(count1_carry__1_1),
        .O(\count_reg_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    count1_carry_i_6__3
       (.I0(Q[1]),
        .I1(count1_carry_i_4__4),
        .I2(count1_carry_i_9__2),
        .I3(Q[2]),
        .I4(count1_carry_i_9__2_0),
        .O(\count_reg_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    count1_carry_i_8__4
       (.I0(Q[1]),
        .I1(count1_carry_i_4__4),
        .I2(Q[0]),
        .I3(count1_carry_i_4__4_0),
        .I4(Q[2]),
        .I5(count1_carry_i_9__2_0),
        .O(\count_reg_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5
   (\count_reg_reg[1]_0 ,
    Q,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[3]_0 ,
    S,
    \count_reg_reg[2]_0 ,
    \j_reg[2] ,
    \j_reg[2]_0 ,
    \count_reg_reg[2]_1 ,
    \count_reg_reg[0]_1 ,
    D,
    count1_carry_i_4__5,
    count1_carry_i_4__5_0,
    \count_reg[0] ,
    count1_carry__1,
    count1_carry__1_0,
    count1_carry__1_1,
    done_aux_reg,
    done_aux_reg_0,
    done_aux_reg_1,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_2 );
  output \count_reg_reg[1]_0 ;
  output [4:0]Q;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[3]_0 ;
  output [2:0]S;
  output \count_reg_reg[2]_0 ;
  output [3:0]\j_reg[2] ;
  output [2:0]\j_reg[2]_0 ;
  output \count_reg_reg[2]_1 ;
  output \count_reg_reg[0]_1 ;
  output [2:0]D;
  input count1_carry_i_4__5;
  input count1_carry_i_4__5_0;
  input \count_reg[0] ;
  input count1_carry__1;
  input [1:0]count1_carry__1_0;
  input count1_carry__1_1;
  input done_aux_reg;
  input done_aux_reg_0;
  input done_aux_reg_1;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__5_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [2:0]S;
  wire clk;
  wire count1_carry__1;
  wire [1:0]count1_carry__1_0;
  wire count1_carry__1_1;
  wire count1_carry_i_4__5;
  wire count1_carry_i_4__5_0;
  wire [4:1]count_next;
  wire \count_reg[0] ;
  wire \count_reg[0]_i_1__5_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire \count_reg_reg[3]_0 ;
  wire done_aux_reg;
  wire done_aux_reg_0;
  wire done_aux_reg_1;
  wire [3:0]\j_reg[2] ;
  wire [2:0]\j_reg[2]_0 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__5 
       (.I0(\FSM_onehot_state[4]_i_4__5_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__5 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__5 
       (.I0(\FSM_onehot_state[4]_i_4__5_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__5_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry__0_i_1__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(\j_reg[2] [3]));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry__0_i_2__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(\j_reg[2] [2]));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry__0_i_3__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(\j_reg[2] [1]));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry__0_i_4__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(\j_reg[2] [0]));
  LUT5 #(
    .INIT(32'h0F0F0F06)) 
    count1_carry__1_i_1__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry__1_i_2__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry__1_i_3__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_10__7
       (.I0(Q[1]),
        .I1(count1_carry_i_4__5),
        .O(\count_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry_i_1__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(\j_reg[2]_0 [2]));
  LUT5 #(
    .INIT(32'h0F0F0F96)) 
    count1_carry_i_2__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(count1_carry__1_0[1]),
        .I3(\count_reg_reg[2]_0 ),
        .I4(count1_carry__1_1),
        .O(\j_reg[2]_0 [1]));
  LUT5 #(
    .INIT(32'h00009960)) 
    count1_carry_i_3__3
       (.I0(\count_reg_reg[3]_0 ),
        .I1(count1_carry__1),
        .I2(\count_reg_reg[2]_0 ),
        .I3(count1_carry__1_1),
        .I4(count1_carry__1_0[1]),
        .O(\j_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_8__6
       (.I0(Q[0]),
        .I1(count1_carry_i_4__5_0),
        .O(\count_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    count1_carry_i_9__5
       (.I0(count1_carry_i_4__5_0),
        .I1(Q[0]),
        .I2(count1_carry__1_0[0]),
        .O(\count_reg_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hF77F7FF7)) 
    \count[4]_i_4__4 
       (.I0(\count_reg_reg[0]_0 ),
        .I1(\count_reg_reg[1]_0 ),
        .I2(done_aux_reg),
        .I3(Q[2]),
        .I4(done_aux_reg_0),
        .O(\count_reg_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_6__5 
       (.I0(Q[3]),
        .I1(\count_reg[0] ),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\count_reg[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(\count_reg[0]_i_1__5_n_0 ),
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
  LUT6 #(
    .INIT(64'h0008080008000008)) 
    done_aux_i_2__2
       (.I0(\count_reg_reg[0]_0 ),
        .I1(\count_reg_reg[1]_0 ),
        .I2(done_aux_reg_1),
        .I3(done_aux_reg_0),
        .I4(Q[2]),
        .I5(done_aux_reg),
        .O(\count_reg_reg[2]_1 ));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6
   (\count_reg_reg[0]_0 ,
    Q,
    \count_reg_reg[2]_0 ,
    D,
    count1_carry_i_5__5,
    \count[4]_i_3__2 ,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[0]_0 ;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output [2:0]D;
  input count1_carry_i_5__5;
  input \count[4]_i_3__2 ;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__6_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire count1_carry_i_5__5;
  wire \count[4]_i_3__2 ;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__6_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[2]_0 ;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__6 
       (.I0(\FSM_onehot_state[4]_i_4__6_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__6 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__6 
       (.I0(\FSM_onehot_state[4]_i_4__6_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__6 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_11__6
       (.I0(Q[0]),
        .I1(count1_carry_i_5__5),
        .O(\count_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[4]_i_4__3 
       (.I0(Q[2]),
        .I1(\count[4]_i_3__2 ),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\count_reg[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(\count_reg[0]_i_1__6_n_0 ),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7
   (Q,
    S,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[4]_1 ,
    \count_reg_reg[3]_0 ,
    D,
    done_aux_reg,
    CO,
    j_reg,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    ack_in_1);
  output [4:0]Q;
  output [2:0]S;
  output [3:0]\count_reg_reg[4]_0 ;
  output [3:0]\count_reg_reg[4]_1 ;
  output \count_reg_reg[3]_0 ;
  output [2:0]D;
  input [4:0]done_aux_reg;
  input [0:0]CO;
  input [0:0]j_reg;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input ack_in_1;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__7_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [2:0]S;
  wire ack_in_1;
  wire clk;
  wire count1_carry_i_10__5_n_0;
  wire count1_carry_i_11__7_n_0;
  wire count1_carry_i_5__4_n_0;
  wire count1_carry_i_6__5_n_0;
  wire count1_carry_i_7__4_n_0;
  wire count1_carry_i_8__5_n_0;
  wire count1_carry_i_9__7_n_0;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__7_n_0 ;
  wire \count_reg_reg[3]_0 ;
  wire [3:0]\count_reg_reg[4]_0 ;
  wire [3:0]\count_reg_reg[4]_1 ;
  wire [4:0]done_aux_reg;
  wire [0:0]j_reg;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__7 
       (.I0(\FSM_onehot_state[4]_i_4__7_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [2]),
        .I3(valid),
        .I4(\FSM_onehot_state_reg[4] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \FSM_onehot_state[2]_i_1__7 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[4]_i_3__7 
       (.I0(\FSM_onehot_state[4]_i_4__7_n_0 ),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(\FSM_onehot_state_reg[4] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__7 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__7_n_0 ));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry__0_i_1__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(\count_reg_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry__0_i_2__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(\count_reg_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry__0_i_3__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(\count_reg_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry__0_i_4__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(\count_reg_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry__1_i_1__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry__1_i_2__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry__1_i_3__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    count1_carry_i_10__5
       (.I0(Q[0]),
        .I1(done_aux_reg[0]),
        .I2(Q[1]),
        .I3(done_aux_reg[1]),
        .O(count1_carry_i_10__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count1_carry_i_11__7
       (.I0(Q[0]),
        .I1(done_aux_reg[0]),
        .O(count1_carry_i_11__7_n_0));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry_i_1__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(\count_reg_reg[4]_1 [3]));
  LUT6 #(
    .INIT(64'hFF9F6FFF9FFFFF9F)) 
    count1_carry_i_2__5
       (.I0(Q[4]),
        .I1(done_aux_reg[4]),
        .I2(count1_carry_i_5__4_n_0),
        .I3(done_aux_reg[3]),
        .I4(Q[3]),
        .I5(count1_carry_i_6__5_n_0),
        .O(\count_reg_reg[4]_1 [2]));
  LUT5 #(
    .INIT(32'h00966969)) 
    count1_carry_i_3__5
       (.I0(done_aux_reg[3]),
        .I1(Q[3]),
        .I2(count1_carry_i_6__5_n_0),
        .I3(count1_carry_i_5__4_n_0),
        .I4(count1_carry_i_7__4_n_0),
        .O(\count_reg_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h0028000A14000005)) 
    count1_carry_i_4__7
       (.I0(j_reg),
        .I1(count1_carry_i_8__5_n_0),
        .I2(count1_carry_i_9__7_n_0),
        .I3(count1_carry_i_10__5_n_0),
        .I4(count1_carry_i_7__4_n_0),
        .I5(count1_carry_i_11__7_n_0),
        .O(\count_reg_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_5__4
       (.I0(done_aux_reg[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(done_aux_reg[1]),
        .I4(Q[2]),
        .I5(done_aux_reg[2]),
        .O(count1_carry_i_5__4_n_0));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    count1_carry_i_6__5
       (.I0(done_aux_reg[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(done_aux_reg[1]),
        .I4(Q[2]),
        .I5(done_aux_reg[2]),
        .O(count1_carry_i_6__5_n_0));
  LUT5 #(
    .INIT(32'h96996696)) 
    count1_carry_i_7__4
       (.I0(done_aux_reg[4]),
        .I1(Q[4]),
        .I2(done_aux_reg[3]),
        .I3(Q[3]),
        .I4(count1_carry_i_6__5_n_0),
        .O(count1_carry_i_7__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    count1_carry_i_8__5
       (.I0(done_aux_reg[0]),
        .I1(Q[0]),
        .I2(done_aux_reg[1]),
        .I3(Q[1]),
        .O(count1_carry_i_8__5_n_0));
  LUT6 #(
    .INIT(64'h6696969966966696)) 
    count1_carry_i_9__7
       (.I0(done_aux_reg[2]),
        .I1(Q[2]),
        .I2(done_aux_reg[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(done_aux_reg[0]),
        .O(count1_carry_i_9__7_n_0));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    \count[4]_i_3__3 
       (.I0(CO),
        .I1(Q[3]),
        .I2(done_aux_reg[3]),
        .I3(count1_carry_i_5__4_n_0),
        .I4(done_aux_reg[4]),
        .I5(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__7 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\count_reg[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__7 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__7 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__7 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__7 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(count_next[4]));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(ack_in_1),
        .D(\count_reg[0]_i_1__7_n_0 ),
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
