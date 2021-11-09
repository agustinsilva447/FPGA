// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Nov  9 14:36:37 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_final/nqueens_final.srcs/sources_1/bd/design_1/ip/design_1_top_nqueens_0_1/design_1_top_nqueens_0_1_sim_netlist.v
// Design      : design_1_top_nqueens_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_nqueens_0_1,top_nqueens,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top_nqueens,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_top_nqueens_0_1
   (clk,
    nRst,
    flag,
    done,
    counter);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input nRst;
  output flag;
  output done;
  output [11:0]counter;

  wire clk;
  wire [11:0]counter;
  wire done;
  wire flag;
  wire nRst;

  design_1_top_nqueens_0_1_top_nqueens U0
       (.clk(clk),
        .counter(counter),
        .done(done),
        .flag(flag),
        .nRst(nRst));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm
   (valid,
    CO,
    Q,
    \state_reg[0]_0 ,
    \j_reg[2]_0 ,
    \j_reg[2]_1 ,
    \FSM_onehot_state_reg[4] ,
    E,
    D,
    \j_reg[4]_0 ,
    \j_reg[3]_0 ,
    next_state2_carry_i_10_0,
    next_state2_carry__1_i_1_0,
    \state_reg[2]_0 ,
    acks_out_reg,
    next_state2_carry_i_4_0,
    next_state2_carry_i_4_1,
    \count_reg[4]_i_3 ,
    reset_control,
    clk);
  output valid;
  output [0:0]CO;
  output [1:0]Q;
  output [4:0]\state_reg[0]_0 ;
  output \j_reg[2]_0 ;
  output \j_reg[2]_1 ;
  output \FSM_onehot_state_reg[4] ;
  output [0:0]E;
  output [0:0]D;
  output \j_reg[4]_0 ;
  output \j_reg[3]_0 ;
  input [4:0]next_state2_carry_i_10_0;
  input next_state2_carry__1_i_1_0;
  input \state_reg[2]_0 ;
  input [4:0]acks_out_reg;
  input [0:0]next_state2_carry_i_4_0;
  input next_state2_carry_i_4_1;
  input [4:0]\count_reg[4]_i_3 ;
  input reset_control;
  input clk;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[4] ;
  wire [1:0]Q;
  wire \a_j_reg[4]_i_2_n_0 ;
  wire [4:0]acks_out_reg;
  wire clk;
  wire \count_reg[0]_i_1__14_n_0 ;
  wire \count_reg[1]_i_1_n_0 ;
  wire \count_reg[2]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire [4:0]\count_reg[4]_i_3 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire done;
  wire done_aux_reg_i_1_n_0;
  wire [4:2]j;
  wire \j_reg[0]_i_1__5_n_0 ;
  wire \j_reg[1]_i_1_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_1 ;
  wire \j_reg[2]_i_1_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1_n_0 ;
  wire \j_reg[4]_i_2_n_0 ;
  wire next_state2_carry__0_i_1__2_n_0;
  wire next_state2_carry__0_i_2__2_n_0;
  wire next_state2_carry__0_i_3__2_n_0;
  wire next_state2_carry__0_i_4__2_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_i_1_0;
  wire next_state2_carry__1_i_1_n_0;
  wire next_state2_carry__1_i_2__2_n_0;
  wire next_state2_carry__1_i_3__2_n_0;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire [4:0]next_state2_carry_i_10_0;
  wire next_state2_carry_i_10_n_0;
  wire next_state2_carry_i_11_n_0;
  wire next_state2_carry_i_1__2_n_0;
  wire next_state2_carry_i_2__2_n_0;
  wire next_state2_carry_i_3_n_0;
  wire [0:0]next_state2_carry_i_4_0;
  wire next_state2_carry_i_4_1;
  wire next_state2_carry_i_4_n_0;
  wire next_state2_carry_i_5__5_n_0;
  wire next_state2_carry_i_6__6_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [4:1]next_state6;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire [4:0]\state_reg[0]_0 ;
  wire \state_reg[2]_0 ;
  wire valid;
  wire valid_aux_reg_i_1_n_0;
  wire valid_aux_reg_i_2_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(acks_out_reg[2]),
        .I1(valid),
        .O(D));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(acks_out_reg[0]),
        .I1(acks_out_reg[1]),
        .I2(acks_out_reg[3]),
        .I3(acks_out_reg[2]),
        .I4(done),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3 [0]),
        .G(\a_j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3 [1]),
        .G(\a_j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3 [2]),
        .G(\a_j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3 [3]),
        .G(\a_j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3 [4]),
        .G(\a_j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h699A)) 
    \a_j_reg[4]_i_11__4 
       (.I0(j[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(j[2]),
        .O(\j_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \a_j_reg[4]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\a_j_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'h7E0781F8)) 
    \a_j_reg[4]_i_25 
       (.I0(Q[0]),
        .I1(j[3]),
        .I2(Q[1]),
        .I3(j[2]),
        .I4(j[4]),
        .O(\j_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'hF8011FFA)) 
    \a_j_reg[4]_i_26 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j[4]),
        .I3(j[2]),
        .I4(j[3]),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \a_j_reg[4]_i_9__4 
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
        .O(\FSM_onehot_state_reg[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__14_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__14 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__14_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \count_reg[2]_i_1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \count_reg[3]_i_1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \count_reg[4]_i_1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\count_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \count_reg[4]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\state_reg[2]_0 ),
        .O(\count_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1_n_0),
        .GE(1'b1),
        .Q(done));
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .O(done_aux_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__5_n_0 ),
        .G(\j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__5 
       (.I0(state[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1_n_0 ),
        .G(\j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \j_reg[1]_i_1 
       (.I0(state[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1_n_0 ),
        .G(\j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(j[2]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \j_reg[2]_i_1 
       (.I0(state[2]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\j_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1_n_0 ),
        .G(\j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(j[3]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \j_reg[3]_i_1 
       (.I0(state[2]),
        .I1(j[3]),
        .I2(j[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\j_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1_n_0 ),
        .G(\j_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(j[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \j_reg[4]_i_1 
       (.I0(state[2]),
        .I1(j[4]),
        .I2(j[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(j[2]),
        .O(\j_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\j_reg[4]_i_2_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__2_n_0,next_state2_carry_i_2__2_n_0,next_state2_carry_i_3_n_0,next_state2_carry_i_4_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__2_n_0,next_state2_carry__0_i_2__2_n_0,next_state2_carry__0_i_3__2_n_0,next_state2_carry__0_i_4__2_n_0}));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry__0_i_1__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry__0_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry__0_i_2__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry__0_i_2__2_n_0));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry__0_i_3__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry__0_i_3__2_n_0));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry__0_i_4__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry__0_i_4__2_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],CO,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1_n_0,next_state2_carry__1_i_2__2_n_0,next_state2_carry__1_i_3__2_n_0}));
  LUT5 #(
    .INIT(32'h00022222)) 
    next_state2_carry__1_i_1
       (.I0(next_state2_carry_i_5__5_n_0),
        .I1(j[4]),
        .I2(Q[1]),
        .I3(j[2]),
        .I4(j[3]),
        .O(next_state2_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry__1_i_2__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry__1_i_2__2_n_0));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry__1_i_3__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry__1_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h900A425009A02405)) 
    next_state2_carry_i_10
       (.I0(next_state6[1]),
        .I1(next_state2_carry_i_4_1),
        .I2(next_state2_carry_i_4_0),
        .I3(next_state6[4]),
        .I4(Q[1]),
        .I5(j[2]),
        .O(next_state2_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    next_state2_carry_i_11
       (.I0(\state_reg[0]_0 [2]),
        .I1(next_state2_carry_i_10_0[2]),
        .I2(next_state2_carry_i_10_0[0]),
        .I3(\state_reg[0]_0 [0]),
        .I4(next_state2_carry_i_10_0[1]),
        .I5(\state_reg[0]_0 [1]),
        .O(next_state2_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    next_state2_carry_i_12
       (.I0(\state_reg[0]_0 [0]),
        .I1(next_state2_carry_i_10_0[0]),
        .I2(\state_reg[0]_0 [1]),
        .I3(next_state2_carry_i_10_0[1]),
        .O(next_state6[1]));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry_i_1__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h0155FEAA)) 
    next_state2_carry_i_2__2
       (.I0(j[4]),
        .I1(Q[1]),
        .I2(j[2]),
        .I3(j[3]),
        .I4(next_state2_carry_i_5__5_n_0),
        .O(next_state2_carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0482410404410441)) 
    next_state2_carry_i_3
       (.I0(j[4]),
        .I1(next_state2_carry_i_6__6_n_0),
        .I2(j[3]),
        .I3(next_state6[3]),
        .I4(next_state2_carry__1_i_1_0),
        .I5(next_state6[4]),
        .O(next_state2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9600)) 
    next_state2_carry_i_4
       (.I0(next_state2_carry_i_10_0[0]),
        .I1(\state_reg[0]_0 [0]),
        .I2(Q[0]),
        .I3(next_state2_carry_i_10_n_0),
        .O(next_state2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hEF7979EFFFFFFFFF)) 
    next_state2_carry_i_5__5
       (.I0(next_state2_carry_i_11_n_0),
        .I1(next_state2_carry_i_10_0[3]),
        .I2(\state_reg[0]_0 [3]),
        .I3(\state_reg[0]_0 [4]),
        .I4(next_state2_carry_i_10_0[4]),
        .I5(next_state2_carry__1_i_1_0),
        .O(next_state2_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state2_carry_i_6__6
       (.I0(j[2]),
        .I1(Q[1]),
        .O(next_state2_carry_i_6__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_7
       (.I0(next_state2_carry_i_11_n_0),
        .I1(\state_reg[0]_0 [3]),
        .I2(next_state2_carry_i_10_0[3]),
        .O(next_state6[3]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    next_state2_carry_i_9
       (.I0(next_state2_carry_i_11_n_0),
        .I1(next_state2_carry_i_10_0[3]),
        .I2(\state_reg[0]_0 [3]),
        .I3(\state_reg[0]_0 [4]),
        .I4(next_state2_carry_i_10_0[4]),
        .O(next_state6[4]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \state[0]_i_1 
       (.I0(state[2]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(state[1]),
        .I3(reset_control),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \state[0]_i_2 
       (.I0(state[0]),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004074447)) 
    \state[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\state[1]_i_2_n_0 ),
        .I4(\state_reg[2]_0 ),
        .I5(reset_control),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \state[1]_i_2 
       (.I0(state[2]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\state_reg[2]_0 ),
        .I3(state[1]),
        .I4(reset_control),
        .O(\state[2]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1_n_0),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h10)) 
    valid_aux_reg_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_aux_reg_i_2_n_0),
        .O(valid_aux_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555575555555555)) 
    valid_aux_reg_i_2
       (.I0(state[2]),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[0] ),
        .O(valid_aux_reg_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized0
   (valid,
    CO,
    Q,
    \state_reg[0]_0 ,
    D,
    \FSM_onehot_state_reg[4] ,
    E,
    \FSM_onehot_state_reg[2] ,
    \j_reg[3]_0 ,
    \j_reg[4]_0 ,
    \j_reg[3]_1 ,
    \j_reg[0]_0 ,
    next_state2_carry_i_4__0_0,
    next_state2_carry__1_i_1__0_0,
    next_state2_carry_i_4__0_1,
    next_state2_carry_i_4__0_2,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1_0 ,
    \a_j_reg[0]_i_1_1 ,
    a_in_9,
    \a_j_reg[0]_i_2_0 ,
    \a_j_reg[0]_i_2_1 ,
    \state_reg[2]_0 ,
    \count_reg_reg[0] ,
    next_state2_carry_0,
    next_out_9,
    \count_reg[4]_i_3__0 ,
    reset_control,
    clk);
  output valid;
  output [0:0]CO;
  output [1:0]Q;
  output [4:0]\state_reg[0]_0 ;
  output [4:0]D;
  output \FSM_onehot_state_reg[4] ;
  output [0:0]E;
  output [0:0]\FSM_onehot_state_reg[2] ;
  output \j_reg[3]_0 ;
  output \j_reg[4]_0 ;
  output \j_reg[3]_1 ;
  output \j_reg[0]_0 ;
  input [4:0]next_state2_carry_i_4__0_0;
  input next_state2_carry__1_i_1__0_0;
  input [0:0]next_state2_carry_i_4__0_1;
  input next_state2_carry_i_4__0_2;
  input [1:0]\a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1_0 ;
  input \a_j_reg[0]_i_1_1 ;
  input [44:0]a_in_9;
  input \a_j_reg[0]_i_2_0 ;
  input \a_j_reg[0]_i_2_1 ;
  input \state_reg[2]_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_state2_carry_0;
  input next_out_9;
  input [4:0]\count_reg[4]_i_3__0 ;
  input reset_control;
  input clk;

  wire [0:0]CO;
  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[4] ;
  wire [1:0]Q;
  wire [44:0]a_in_9;
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
  wire \a_j_reg[4]_i_10_n_0 ;
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
  wire \a_j_reg[4]_i_24_n_0 ;
  wire \a_j_reg[4]_i_2__0_n_0 ;
  wire \a_j_reg[4]_i_3_n_0 ;
  wire \a_j_reg[4]_i_4_n_0 ;
  wire \a_j_reg[4]_i_5_n_0 ;
  wire \a_j_reg[4]_i_6_n_0 ;
  wire \a_j_reg[4]_i_7_n_0 ;
  wire \a_j_reg[4]_i_8_n_0 ;
  wire clk;
  wire \count_reg[0]_i_1__15_n_0 ;
  wire \count_reg[1]_i_1__1_n_0 ;
  wire \count_reg[2]_i_1__1_n_0 ;
  wire \count_reg[3]_i_1__1_n_0 ;
  wire \count_reg[4]_i_1__1_n_0 ;
  wire \count_reg[4]_i_2__0_n_0 ;
  wire [4:0]\count_reg[4]_i_3__0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux_reg_i_1__0_n_0;
  wire [4:2]j;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_i_1__6_n_0 ;
  wire \j_reg[1]_i_1__0_n_0 ;
  wire \j_reg[2]_i_1__0_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_i_1__0_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__0_n_0 ;
  wire \j_reg[4]_i_2__0_n_0 ;
  wire next_out_9;
  wire next_state2_carry_0;
  wire next_state2_carry__0_i_1__3_n_0;
  wire next_state2_carry__0_i_2__3_n_0;
  wire next_state2_carry__0_i_3__3_n_0;
  wire next_state2_carry__0_i_4__3_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_i_1__0_0;
  wire next_state2_carry__1_i_1__0_n_0;
  wire next_state2_carry__1_i_2__3_n_0;
  wire next_state2_carry__1_i_3__3_n_0;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_10__6_n_0;
  wire next_state2_carry_i_13_n_0;
  wire next_state2_carry_i_1__3_n_0;
  wire next_state2_carry_i_2__3_n_0;
  wire next_state2_carry_i_3__0_n_0;
  wire [4:0]next_state2_carry_i_4__0_0;
  wire [0:0]next_state2_carry_i_4__0_1;
  wire next_state2_carry_i_4__0_2;
  wire next_state2_carry_i_4__0_n_0;
  wire next_state2_carry_i_5__6_n_0;
  wire next_state2_carry_i_6__7_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [4:1]next_state6;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire [4:0]\state_reg[0]_0 ;
  wire \state_reg[2]_0 ;
  wire valid;
  wire valid_aux_reg_i_1__0_n_0;
  wire valid_aux_reg_i_2__0_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__0 
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [3]),
        .I3(next_out_9),
        .I4(\count_reg_reg[0] [2]),
        .I5(done),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3__0 [0]),
        .G(\a_j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [0]));
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
       (.I0(\a_j_reg[4]_i_23_n_0 ),
        .I1(\a_j_reg[4]_i_24_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[0]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_21_n_0 ),
        .O(\a_j_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3__0 [1]),
        .G(\a_j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[1]_i_1 
       (.I0(\a_j_reg[4]_i_6_n_0 ),
        .I1(\a_j_reg[2]_i_2_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[3]_i_2_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2 
       (.I0(\a_j_reg[4]_i_15_n_0 ),
        .I1(\a_j_reg[4]_i_16_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[1]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_13_n_0 ),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3__0 [2]),
        .G(\a_j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[2]_i_1 
       (.I0(\a_j_reg[4]_i_4_n_0 ),
        .I1(\a_j_reg[3]_i_2_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_6_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2 
       (.I0(\a_j_reg[4]_i_19_n_0 ),
        .I1(\a_j_reg[4]_i_20_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[2]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_17_n_0 ),
        .O(\a_j_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3__0 [3]),
        .G(\a_j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[3]_i_1 
       (.I0(\a_j_reg[4]_i_5_n_0 ),
        .I1(\a_j_reg[4]_i_6_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_4_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2 
       (.I0(\a_j_reg[4]_i_10_n_0 ),
        .I1(\a_j_reg[4]_i_12_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[3]_i_3_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_7_n_0 ),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_3__0 [4]),
        .G(\a_j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[4]_i_1 
       (.I0(\a_j_reg[4]_i_3_n_0 ),
        .I1(\a_j_reg[4]_i_4_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_5_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[4]_i_6_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_10 
       (.I0(a_in_9[23]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[7]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[39]),
        .O(\a_j_reg[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hE11E)) 
    \a_j_reg[4]_i_11 
       (.I0(j[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(j[3]),
        .O(\j_reg[3]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_12 
       (.I0(a_in_9[31]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[15]),
        .O(\a_j_reg[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_13 
       (.I0(a_in_9[25]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[9]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[41]),
        .O(\a_j_reg[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_14 
       (.I0(a_in_9[33]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[1]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[17]),
        .O(\a_j_reg[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_15 
       (.I0(a_in_9[21]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[5]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[37]),
        .O(\a_j_reg[4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_16 
       (.I0(a_in_9[29]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[13]),
        .O(\a_j_reg[4]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_17 
       (.I0(a_in_9[26]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[10]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[42]),
        .O(\a_j_reg[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_18 
       (.I0(a_in_9[34]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[2]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[18]),
        .O(\a_j_reg[4]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_19 
       (.I0(a_in_9[22]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[6]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[38]),
        .O(\a_j_reg[4]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_20 
       (.I0(a_in_9[30]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[14]),
        .O(\a_j_reg[4]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_21 
       (.I0(a_in_9[24]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[8]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[40]),
        .O(\a_j_reg[4]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_22 
       (.I0(a_in_9[32]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[0]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[16]),
        .O(\a_j_reg[4]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_23 
       (.I0(a_in_9[20]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[4]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[36]),
        .O(\a_j_reg[4]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_24 
       (.I0(a_in_9[28]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[12]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[44]),
        .O(\a_j_reg[4]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hFA800FFE)) 
    \a_j_reg[4]_i_25__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(j[4]),
        .I3(j[2]),
        .I4(j[3]),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h3F81C07E)) 
    \a_j_reg[4]_i_26__0 
       (.I0(Q[0]),
        .I1(j[3]),
        .I2(Q[1]),
        .I3(j[2]),
        .I4(j[4]),
        .O(\j_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \a_j_reg[4]_i_2__0 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\a_j_reg[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_3 
       (.I0(\a_j_reg[4]_i_7_n_0 ),
        .I1(\a_j_reg[4]_i_8_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_10_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_12_n_0 ),
        .O(\a_j_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_4 
       (.I0(\a_j_reg[4]_i_13_n_0 ),
        .I1(\a_j_reg[4]_i_14_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_15_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_16_n_0 ),
        .O(\a_j_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_5 
       (.I0(\a_j_reg[4]_i_17_n_0 ),
        .I1(\a_j_reg[4]_i_18_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_19_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_20_n_0 ),
        .O(\a_j_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_6 
       (.I0(\a_j_reg[4]_i_21_n_0 ),
        .I1(\a_j_reg[4]_i_22_n_0 ),
        .I2(\a_j_reg[0]_i_1_0 ),
        .I3(\a_j_reg[4]_i_23_n_0 ),
        .I4(\a_j_reg[0]_i_1_1 ),
        .I5(\a_j_reg[4]_i_24_n_0 ),
        .O(\a_j_reg[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_7 
       (.I0(a_in_9[27]),
        .I1(\a_j_reg[0]_i_2_0 ),
        .I2(a_in_9[11]),
        .I3(\a_j_reg[0]_i_2_1 ),
        .I4(a_in_9[43]),
        .O(\a_j_reg[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_8 
       (.I0(a_in_9[35]),
        .I1(\a_j_reg[0]_i_2_1 ),
        .I2(a_in_9[3]),
        .I3(\a_j_reg[0]_i_2_0 ),
        .I4(a_in_9[19]),
        .O(\a_j_reg[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \a_j_reg[4]_i_9 
       (.I0(j[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    acks_out_reg_i_2__0
       (.I0(\count_reg_reg[0] [4]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [2]),
        .I3(valid),
        .I4(done),
        .I5(\count_reg_reg[0] [1]),
        .O(\FSM_onehot_state_reg[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__15_n_0 ),
        .G(\count_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__15 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__1_n_0 ),
        .G(\count_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1__1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count_reg[1]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__1_n_0 ),
        .G(\count_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \count_reg[2]_i_1__1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count_reg[2]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__1_n_0 ),
        .G(\count_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \count_reg[3]_i_1__1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count_reg[3]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__1_n_0 ),
        .G(\count_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \count_reg[4]_i_1__1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\count_reg[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \count_reg[4]_i_2__0 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\state_reg[2]_0 ),
        .O(\count_reg[4]_i_2__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1__0
       (.I0(state[0]),
        .I1(state[2]),
        .O(done_aux_reg_i_1__0_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__6_n_0 ),
        .G(\j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__6 
       (.I0(state[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__0_n_0 ),
        .G(\j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \j_reg[1]_i_1__0 
       (.I0(state[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[1]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__0_n_0 ),
        .G(\j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(j[2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \j_reg[2]_i_1__0 
       (.I0(state[2]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\j_reg[2]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__0_n_0 ),
        .G(\j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(j[3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \j_reg[3]_i_1__0 
       (.I0(state[2]),
        .I1(j[3]),
        .I2(j[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\j_reg[3]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__0_n_0 ),
        .G(\j_reg[4]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(j[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \j_reg[4]_i_1__0 
       (.I0(state[2]),
        .I1(j[4]),
        .I2(j[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(j[2]),
        .O(\j_reg[4]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2__0 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\j_reg[4]_i_2__0_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__3_n_0,next_state2_carry_i_2__3_n_0,next_state2_carry_i_3__0_n_0,next_state2_carry_i_4__0_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__3_n_0,next_state2_carry__0_i_2__3_n_0,next_state2_carry__0_i_3__3_n_0,next_state2_carry__0_i_4__3_n_0}));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry__0_i_1__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry__0_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry__0_i_2__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry__0_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry__0_i_3__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry__0_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry__0_i_4__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry__0_i_4__3_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],CO,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__0_n_0,next_state2_carry__1_i_2__3_n_0,next_state2_carry__1_i_3__3_n_0}));
  LUT6 #(
    .INIT(64'h0000000222222222)) 
    next_state2_carry__1_i_1__0
       (.I0(next_state2_carry_i_5__6_n_0),
        .I1(j[4]),
        .I2(j[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(j[3]),
        .O(next_state2_carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry__1_i_2__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry__1_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry__1_i_3__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry__1_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h5656A9A9A95656A9)) 
    next_state2_carry_i_10__6
       (.I0(j[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(next_state6[4]),
        .I4(next_state2_carry_i_4__0_1),
        .I5(next_state2_carry_i_4__0_2),
        .O(next_state2_carry_i_10__6_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    next_state2_carry_i_11__0
       (.I0(\state_reg[0]_0 [0]),
        .I1(next_state2_carry_i_4__0_0[0]),
        .I2(\state_reg[0]_0 [1]),
        .I3(next_state2_carry_i_4__0_0[1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    next_state2_carry_i_13
       (.I0(\state_reg[0]_0 [2]),
        .I1(next_state2_carry_i_4__0_0[2]),
        .I2(next_state2_carry_i_4__0_0[0]),
        .I3(\state_reg[0]_0 [0]),
        .I4(next_state2_carry_i_4__0_0[1]),
        .I5(\state_reg[0]_0 [1]),
        .O(next_state2_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry_i_1__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h00015555FFFEAAAA)) 
    next_state2_carry_i_2__3
       (.I0(j[4]),
        .I1(j[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(j[3]),
        .I5(next_state2_carry_i_5__6_n_0),
        .O(next_state2_carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h0482410404410441)) 
    next_state2_carry_i_3__0
       (.I0(j[4]),
        .I1(next_state2_carry_i_6__7_n_0),
        .I2(j[3]),
        .I3(next_state6[3]),
        .I4(next_state2_carry__1_i_1__0_0),
        .I5(next_state6[4]),
        .O(next_state2_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0808020280202080)) 
    next_state2_carry_i_4__0
       (.I0(next_state2_carry_i_10__6_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(next_state6[4]),
        .I4(next_state6[1]),
        .I5(next_state2_carry_0),
        .O(next_state2_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hEF7979EFFFFFFFFF)) 
    next_state2_carry_i_5__6
       (.I0(next_state2_carry_i_13_n_0),
        .I1(next_state2_carry_i_4__0_0[3]),
        .I2(\state_reg[0]_0 [3]),
        .I3(\state_reg[0]_0 [4]),
        .I4(next_state2_carry_i_4__0_0[4]),
        .I5(next_state2_carry__1_i_1__0_0),
        .O(next_state2_carry_i_5__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h01)) 
    next_state2_carry_i_6__7
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(j[2]),
        .O(next_state2_carry_i_6__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_7__0
       (.I0(next_state2_carry_i_13_n_0),
        .I1(\state_reg[0]_0 [3]),
        .I2(next_state2_carry_i_4__0_0[3]),
        .O(next_state6[3]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    next_state2_carry_i_9__0
       (.I0(next_state2_carry_i_13_n_0),
        .I1(next_state2_carry_i_4__0_0[3]),
        .I2(\state_reg[0]_0 [3]),
        .I3(\state_reg[0]_0 [4]),
        .I4(next_state2_carry_i_4__0_0[4]),
        .O(next_state6[4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \state[0]_i_1__0 
       (.I0(state[2]),
        .I1(\state[0]_i_2__0_n_0 ),
        .I2(state[1]),
        .I3(reset_control),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \state[0]_i_2__0 
       (.I0(state[0]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002120A1A)) 
    \state[1]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(valid_aux_reg_i_2__0_n_0),
        .I4(\state_reg[2]_0 ),
        .I5(reset_control),
        .O(\state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \state[2]_i_1__0 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\state_reg[2]_0 ),
        .I3(state[1]),
        .I4(reset_control),
        .O(\state[2]_i_1__0_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    valid_aux_reg_i_1__0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_aux_reg_i_2__0_n_0),
        .I3(state[2]),
        .O(valid_aux_reg_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    valid_aux_reg_i_2__0
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[4] ),
        .O(valid_aux_reg_i_2__0_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized1
   (Q,
    D,
    \state_reg[2]_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    \a_j_reg[3]_i_3__1 ,
    \j_reg[1]_0 ,
    \j_reg[3]_0 ,
    \j_reg[4]_0 ,
    \j_reg[3]_1 ,
    \FSM_onehot_state_reg[2] ,
    S,
    next_state2_carry__1_0,
    reset_control,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1__0_0 ,
    \a_j_reg[0]_i_1__0_1 ,
    a_in_8,
    \a_j_reg[0]_i_2__0_0 ,
    \a_j_reg[0]_i_2__0_1 ,
    next_state2_carry_i_4__1_0,
    next_state2_carry_0,
    \count_reg[4]_i_3__1_0 ,
    \count_reg_reg[0] ,
    next_out_8,
    \a_j_reg[2]_0 ,
    \a_j_reg[2]_1 ,
    \a_j_reg[2]_2 ,
    \a_j_reg[4]_0 ,
    \a_j_reg[4]_i_1__1_0 ,
    \a_j_reg[4]_i_1__1_1 ,
    \a_j_reg[0]_i_1__1 ,
    complete_tick,
    next_state2_carry_i_6__3,
    clk);
  output [3:0]Q;
  output [4:0]D;
  output [4:0]\state_reg[2]_0 ;
  output \FSM_onehot_state_reg[4] ;
  output [0:0]E;
  output \a_j_reg[3]_i_3__1 ;
  output \j_reg[1]_0 ;
  output \j_reg[3]_0 ;
  output \j_reg[4]_0 ;
  output \j_reg[3]_1 ;
  output [1:0]\FSM_onehot_state_reg[2] ;
  input [0:0]S;
  input next_state2_carry__1_0;
  input reset_control;
  input [1:0]\a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1__0_0 ;
  input \a_j_reg[0]_i_1__0_1 ;
  input [39:0]a_in_8;
  input \a_j_reg[0]_i_2__0_0 ;
  input \a_j_reg[0]_i_2__0_1 ;
  input next_state2_carry_i_4__1_0;
  input next_state2_carry_0;
  input [4:0]\count_reg[4]_i_3__1_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_8;
  input \a_j_reg[2]_0 ;
  input \a_j_reg[2]_1 ;
  input \a_j_reg[2]_2 ;
  input \a_j_reg[4]_0 ;
  input \a_j_reg[4]_i_1__1_0 ;
  input \a_j_reg[4]_i_1__1_1 ;
  input \a_j_reg[0]_i_1__1 ;
  input complete_tick;
  input [2:0]next_state2_carry_i_6__3;
  input clk;

  wire [4:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire [0:0]S;
  wire [39:0]a_in_8;
  wire [1:0]\a_j_reg[0]_0 ;
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
  wire \a_j_reg[4]_i_10__0_n_0 ;
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
  wire \a_j_reg[4]_i_24__0_n_0 ;
  wire \a_j_reg[4]_i_2__1_n_0 ;
  wire \a_j_reg[4]_i_3__0_n_0 ;
  wire \a_j_reg[4]_i_3__1_n_0 ;
  wire \a_j_reg[4]_i_4__0_n_0 ;
  wire \a_j_reg[4]_i_5__0_n_0 ;
  wire \a_j_reg[4]_i_6__0_n_0 ;
  wire \a_j_reg[4]_i_7__0_n_0 ;
  wire \a_j_reg[4]_i_8__0_n_0 ;
  wire clk;
  wire complete_tick;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[1]_i_1__3_n_0 ;
  wire \count_reg[2]_i_1__3_n_0 ;
  wire \count_reg[3]_i_1__3_n_0 ;
  wire \count_reg[4]_i_1__3_n_0 ;
  wire \count_reg[4]_i_2__1_n_0 ;
  wire [4:0]\count_reg[4]_i_3__1_0 ;
  wire \count_reg[4]_i_3__1_n_0 ;
  wire \count_reg[4]_i_4__1_n_0 ;
  wire \count_reg[4]_i_5_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux_reg_i_1__1_n_0;
  wire [2:2]j;
  wire \j_reg[0]_i_1_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__1_n_0 ;
  wire \j_reg[2]_i_1__1_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_1 ;
  wire \j_reg[3]_i_1__1_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__1_n_0 ;
  wire \j_reg[4]_i_2__1_n_0 ;
  wire next_out_8;
  wire next_state2_carry_0;
  wire next_state2_carry__0_i_1__4_n_0;
  wire next_state2_carry__0_i_2__4_n_0;
  wire next_state2_carry__0_i_3__4_n_0;
  wire next_state2_carry__0_i_4__4_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_0;
  wire next_state2_carry__1_i_1__1_n_0;
  wire next_state2_carry__1_i_2__4_n_0;
  wire next_state2_carry__1_i_3__4_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_1__4_n_0;
  wire next_state2_carry_i_2__4_n_0;
  wire next_state2_carry_i_4__1_0;
  wire next_state2_carry_i_4__1_n_0;
  wire [2:0]next_state2_carry_i_6__3;
  wire next_state2_carry_i_9__1_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [2:1]next_state6;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1__1_n_0 ;
  wire \state[0]_i_2__1_n_0 ;
  wire \state[1]_i_1__1_n_0 ;
  wire \state[1]_i_2__0_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire [4:0]\state_reg[2]_0 ;
  wire valid;
  wire valid_aux_reg_i_1__1_n_0;
  wire valid_aux_reg_i_2__1_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [2]),
        .I2(valid),
        .I3(complete_tick),
        .I4(\count_reg_reg[0] [3]),
        .O(\FSM_onehot_state_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__1 
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [2]),
        .I3(done),
        .I4(next_out_8),
        .I5(\count_reg_reg[0] [3]),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__3[0]),
        .G(\a_j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[0]_i_1__0 
       (.I0(\a_j_reg[0]_i_2__0_n_0 ),
        .I1(\a_j_reg[2]_i_2__0_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[1]_i_2__0_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[3]_i_2__0_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[0]_i_2__0 
       (.I0(\a_j_reg[4]_i_10__0_n_0 ),
        .I1(\a_j_reg[4]_i_12__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_8__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[0]_i_3__0_n_0 ),
        .O(\a_j_reg[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__3[1]),
        .G(\a_j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_1__0 
       (.I0(\a_j_reg[1]_i_2__0_n_0 ),
        .I1(\a_j_reg[3]_i_2__0_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[2]_i_2__0_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[4]_i_3__0_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2__0 
       (.I0(\a_j_reg[4]_i_19__0_n_0 ),
        .I1(\a_j_reg[4]_i_20__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_18__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[1]_i_3__0_n_0 ),
        .O(\a_j_reg[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\a_j_reg[2]_i_1__1_n_0 ),
        .G(\a_j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_1__0 
       (.I0(\a_j_reg[2]_i_2__0_n_0 ),
        .I1(\a_j_reg[4]_i_3__0_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[3]_i_2__0_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[4]_i_5__0_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[2]_i_1__1 
       (.I0(\a_j_reg[3]_i_3__1 ),
        .I1(\a_j_reg[2]_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[2]_1 ),
        .I4(Q[1]),
        .I5(\a_j_reg[2]_2 ),
        .O(\a_j_reg[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2__0 
       (.I0(\a_j_reg[4]_i_15__0_n_0 ),
        .I1(\a_j_reg[4]_i_16__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_14__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[2]_i_3__0_n_0 ),
        .O(\a_j_reg[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__3[2]),
        .G(\a_j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_1__0 
       (.I0(\a_j_reg[3]_i_2__0_n_0 ),
        .I1(\a_j_reg[4]_i_5__0_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_3__0_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[4]_i_4__0_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2__0 
       (.I0(\a_j_reg[4]_i_23__0_n_0 ),
        .I1(\a_j_reg[4]_i_24__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_22__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[3]_i_3__0_n_0 ),
        .O(\a_j_reg[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hEEBE2282)) 
    \a_j_reg[3]_i_2__1 
       (.I0(\a_j_reg[4]_i_1__1_1 ),
        .I1(j),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\a_j_reg[0]_i_1__1 ),
        .O(\a_j_reg[3]_i_3__1 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\a_j_reg[4]_i_1__1_n_0 ),
        .G(\a_j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_10__0 
       (.I0(a_in_8[28]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[12]),
        .O(\a_j_reg[4]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_12__0 
       (.I0(a_in_8[20]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[4]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[36]),
        .O(\a_j_reg[4]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h38C7)) 
    \a_j_reg[4]_i_12__1 
       (.I0(j),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_13__0 
       (.I0(a_in_8[34]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[2]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[18]),
        .O(\a_j_reg[4]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \a_j_reg[4]_i_13__1 
       (.I0(j),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_14__0 
       (.I0(a_in_8[26]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[10]),
        .O(\a_j_reg[4]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_15__0 
       (.I0(a_in_8[30]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[14]),
        .O(\a_j_reg[4]_i_15__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_16__0 
       (.I0(a_in_8[22]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[6]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[38]),
        .O(\a_j_reg[4]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_17__0 
       (.I0(a_in_8[33]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[1]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[17]),
        .O(\a_j_reg[4]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_18__0 
       (.I0(a_in_8[25]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[9]),
        .O(\a_j_reg[4]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_19__0 
       (.I0(a_in_8[29]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[13]),
        .O(\a_j_reg[4]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_1__0 
       (.I0(\a_j_reg[4]_i_3__0_n_0 ),
        .I1(\a_j_reg[4]_i_4__0_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[4]_i_5__0_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[4]_i_6__0_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0E0E0)) 
    \a_j_reg[4]_i_1__1 
       (.I0(\a_j_reg[4]_i_3__1_n_0 ),
        .I1(\a_j_reg[2]_0 ),
        .I2(Q[0]),
        .I3(\a_j_reg[2]_2 ),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_0 ),
        .O(\a_j_reg[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_20__0 
       (.I0(a_in_8[21]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[5]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[37]),
        .O(\a_j_reg[4]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h17C8E837)) 
    \a_j_reg[4]_i_20__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(j),
        .I4(Q[3]),
        .O(\j_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_21__0 
       (.I0(a_in_8[35]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[3]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[19]),
        .O(\a_j_reg[4]_i_21__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h1137E888)) 
    \a_j_reg[4]_i_21__1 
       (.I0(Q[3]),
        .I1(j),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\j_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_22__0 
       (.I0(a_in_8[27]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[11]),
        .O(\a_j_reg[4]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_23__0 
       (.I0(a_in_8[31]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[15]),
        .O(\a_j_reg[4]_i_23__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_24__0 
       (.I0(a_in_8[23]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[7]),
        .I3(\a_j_reg[0]_i_2__0_1 ),
        .I4(a_in_8[39]),
        .O(\a_j_reg[4]_i_24__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \a_j_reg[4]_i_2__1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\a_j_reg[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_3__0 
       (.I0(\a_j_reg[4]_i_7__0_n_0 ),
        .I1(\a_j_reg[4]_i_8__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_10__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_12__0_n_0 ),
        .O(\a_j_reg[4]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hCA0000CA)) 
    \a_j_reg[4]_i_3__1 
       (.I0(\a_j_reg[4]_i_1__1_0 ),
        .I1(\a_j_reg[4]_i_1__1_1 ),
        .I2(j),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\a_j_reg[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_4__0 
       (.I0(\a_j_reg[4]_i_13__0_n_0 ),
        .I1(\a_j_reg[4]_i_14__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_15__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_16__0_n_0 ),
        .O(\a_j_reg[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_5__0 
       (.I0(\a_j_reg[4]_i_17__0_n_0 ),
        .I1(\a_j_reg[4]_i_18__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_19__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_20__0_n_0 ),
        .O(\a_j_reg[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_6__0 
       (.I0(\a_j_reg[4]_i_21__0_n_0 ),
        .I1(\a_j_reg[4]_i_22__0_n_0 ),
        .I2(\a_j_reg[0]_i_1__0_0 ),
        .I3(\a_j_reg[4]_i_23__0_n_0 ),
        .I4(\a_j_reg[0]_i_1__0_1 ),
        .I5(\a_j_reg[4]_i_24__0_n_0 ),
        .O(\a_j_reg[4]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_7__0 
       (.I0(a_in_8[32]),
        .I1(\a_j_reg[0]_i_2__0_1 ),
        .I2(a_in_8[0]),
        .I3(\a_j_reg[0]_i_2__0_0 ),
        .I4(a_in_8[16]),
        .O(\a_j_reg[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_8__0 
       (.I0(a_in_8[24]),
        .I1(\a_j_reg[0]_i_2__0_0 ),
        .I2(a_in_8[8]),
        .O(\a_j_reg[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__1
       (.I0(\count_reg_reg[0] [4]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [0]),
        .I3(\count_reg_reg[0] [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1_n_0 ),
        .G(\count_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__3_n_0 ),
        .G(\count_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \count_reg[1]_i_1__3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(\count_reg_n_0_[1] ),
        .O(\count_reg[1]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__3_n_0 ),
        .G(\count_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__3 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(state[1]),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__3_n_0 ),
        .G(\count_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(state[1]),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__3_n_0 ),
        .G(\count_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__3 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(state[1]),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h0800000F)) 
    \count_reg[4]_i_2__1 
       (.I0(\count_reg[4]_i_3__1_n_0 ),
        .I1(next_state2_carry__1_n_1),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\count_reg[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \count_reg[4]_i_3__1 
       (.I0(\count_reg[4]_i_4__1_n_0 ),
        .I1(\state_reg[2]_0 [1]),
        .I2(\count_reg[4]_i_3__1_0 [1]),
        .I3(\state_reg[2]_0 [3]),
        .I4(\count_reg[4]_i_3__1_0 [3]),
        .I5(\count_reg[4]_i_5_n_0 ),
        .O(\count_reg[4]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'h4FF4)) 
    \count_reg[4]_i_4__1 
       (.I0(\state_reg[2]_0 [2]),
        .I1(\count_reg[4]_i_3__1_0 [2]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\count_reg[4]_i_3__1_0 [0]),
        .O(\count_reg[4]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h66F6)) 
    \count_reg[4]_i_5 
       (.I0(\state_reg[2]_0 [4]),
        .I1(\count_reg[4]_i_3__1_0 [4]),
        .I2(\state_reg[2]_0 [2]),
        .I3(\count_reg[4]_i_3__1_0 [2]),
        .O(\count_reg[4]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1__1
       (.I0(state[0]),
        .I1(state[2]),
        .O(done_aux_reg_i_1__1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1_n_0 ),
        .G(\j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1 
       (.I0(state[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__1_n_0 ),
        .G(\j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state[2]),
        .O(\j_reg[1]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__1_n_0 ),
        .G(\j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(j));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state[2]),
        .I3(j),
        .O(\j_reg[2]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__1_n_0 ),
        .G(\j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__1 
       (.I0(j),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(state[2]),
        .I4(Q[2]),
        .O(\j_reg[3]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__1_n_0 ),
        .G(\j_reg[4]_i_2__1_n_0 ),
        .GE(1'b1),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(j),
        .I4(state[2]),
        .I5(Q[3]),
        .O(\j_reg[4]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2__1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\j_reg[4]_i_2__1_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__4_n_0,next_state2_carry_i_2__4_n_0,S,next_state2_carry_i_4__1_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__4_n_0,next_state2_carry__0_i_2__4_n_0,next_state2_carry__0_i_3__4_n_0,next_state2_carry__0_i_4__4_n_0}));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry__0_i_1__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_1__4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry__0_i_2__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_2__4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry__0_i_3__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_3__4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry__0_i_4__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_4__4_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__1_n_0,next_state2_carry__1_i_2__4_n_0,next_state2_carry__1_i_3__4_n_0}));
  LUT3 #(
    .INIT(8'h10)) 
    next_state2_carry__1_i_1__1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry__1_i_2__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_2__4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry__1_i_3__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_3__4_n_0));
  LUT6 #(
    .INIT(64'h22B2DD4DDD4D22B2)) 
    next_state2_carry_i_11__1
       (.I0(\state_reg[2]_0 [1]),
        .I1(\count_reg[4]_i_3__1_0 [1]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\count_reg[4]_i_3__1_0 [0]),
        .I4(\state_reg[2]_0 [2]),
        .I5(\count_reg[4]_i_3__1_0 [2]),
        .O(next_state6[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    next_state2_carry_i_13__0
       (.I0(\state_reg[2]_0 [0]),
        .I1(\count_reg[4]_i_3__1_0 [0]),
        .I2(\state_reg[2]_0 [1]),
        .I3(\count_reg[4]_i_3__1_0 [1]),
        .O(next_state6[1]));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry_i_1__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry_i_1__4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    next_state2_carry_i_2__4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(next_state2_carry__1_0),
        .O(next_state2_carry_i_2__4_n_0));
  LUT5 #(
    .INIT(32'h02A8A802)) 
    next_state2_carry_i_4__1
       (.I0(next_state2_carry_i_9__1_n_0),
        .I1(next_state2_carry_i_4__1_0),
        .I2(next_state2_carry_0),
        .I3(next_state6[2]),
        .I4(j),
        .O(next_state2_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h3C00003C00696900)) 
    next_state2_carry_i_9__1
       (.I0(next_state2_carry_i_4__1_0),
        .I1(next_state6[1]),
        .I2(Q[1]),
        .I3(\count_reg[4]_i_3__1_0 [0]),
        .I4(\state_reg[2]_0 [0]),
        .I5(Q[0]),
        .O(next_state2_carry_i_9__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \state[0]_i_1__1 
       (.I0(\state[0]_i_2__1_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(reset_control),
        .O(\state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \state[0]_i_2__1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(state[2]),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[1] ),
        .O(\state[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00000F04)) 
    \state[1]_i_1__1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\state[1]_i_2__0_n_0 ),
        .I3(\state[1]_i_3_n_0 ),
        .I4(reset_control),
        .O(\state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[1]_i_2__0 
       (.I0(state[0]),
        .I1(\count_reg[4]_i_3__1_n_0 ),
        .I2(state[1]),
        .I3(next_state2_carry__1_n_1),
        .O(\state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \state[1]_i_3 
       (.I0(\j_reg[4]_i_2__1_n_0 ),
        .I1(valid_aux_reg_i_2__1_n_0),
        .I2(state[2]),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \state[2]_i_1 
       (.I0(next_state2_carry__1_n_1),
        .I1(state[1]),
        .I2(\count_reg[4]_i_3__1_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(reset_control),
        .O(\state[2]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(valid));
  LUT6 #(
    .INIT(64'h222222A222222222)) 
    valid_aux_reg_i_1__1
       (.I0(\j_reg[4]_i_2__1_n_0 ),
        .I1(state[2]),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(valid_aux_reg_i_2__1_n_0),
        .O(valid_aux_reg_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    valid_aux_reg_i_2__1
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(valid_aux_reg_i_2__1_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized2
   (Q,
    D,
    \a_j_reg[4]_i_17__1_0 ,
    \a_j_reg[4]_i_13__1 ,
    \a_j_reg[4]_i_13__1_0 ,
    \a_j_reg[4]_i_13__1_1 ,
    \count_reg_reg[3] ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \state_reg[2]_0 ,
    \j_reg[1]_0 ,
    \j_reg[3]_0 ,
    \j_reg[4]_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    \FSM_onehot_state_reg[2] ,
    next_state2_carry__1_0,
    reset_control,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_1 ,
    \a_j_reg[0]_i_1__1_0 ,
    \a_j_reg[0]_i_1__1_1 ,
    a_in_7,
    \a_j_reg[3]_i_2__1 ,
    \a_j_reg[0]_i_2__1_0 ,
    next_state2_carry_i_4__2_0,
    next_state2_carry_0,
    next_state2_carry_1,
    next_state2_carry_2,
    next_state2_carry_i_4__2_1,
    \count_reg[4]_i_3__2_0 ,
    \a_j_reg[0]_2 ,
    \a_j_reg[0]_i_1__2_0 ,
    \a_j_reg[0]_i_1__2_1 ,
    \a_j_reg[0]_i_1__2_2 ,
    \a_j_reg[0]_i_1__2_3 ,
    \count_reg_reg[0] ,
    next_out_7,
    complete_tick,
    next_state2_carry_i_6__4,
    clk);
  output [2:0]Q;
  output [2:0]D;
  output \a_j_reg[4]_i_17__1_0 ;
  output \a_j_reg[4]_i_13__1 ;
  output \a_j_reg[4]_i_13__1_0 ;
  output \a_j_reg[4]_i_13__1_1 ;
  output \count_reg_reg[3] ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output [4:0]\state_reg[2]_0 ;
  output \j_reg[1]_0 ;
  output \j_reg[3]_0 ;
  output \j_reg[4]_0 ;
  output \FSM_onehot_state_reg[4] ;
  output [0:0]E;
  output [1:0]\FSM_onehot_state_reg[2] ;
  input next_state2_carry__1_0;
  input reset_control;
  input [1:0]\a_j_reg[0]_0 ;
  input \a_j_reg[0]_1 ;
  input \a_j_reg[0]_i_1__1_0 ;
  input \a_j_reg[0]_i_1__1_1 ;
  input [34:0]a_in_7;
  input \a_j_reg[3]_i_2__1 ;
  input \a_j_reg[0]_i_2__1_0 ;
  input next_state2_carry_i_4__2_0;
  input next_state2_carry_0;
  input [0:0]next_state2_carry_1;
  input next_state2_carry_2;
  input next_state2_carry_i_4__2_1;
  input [4:0]\count_reg[4]_i_3__2_0 ;
  input \a_j_reg[0]_2 ;
  input \a_j_reg[0]_i_1__2_0 ;
  input \a_j_reg[0]_i_1__2_1 ;
  input \a_j_reg[0]_i_1__2_2 ;
  input \a_j_reg[0]_i_1__2_3 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_7;
  input complete_tick;
  input [3:0]next_state2_carry_i_6__4;
  input clk;

  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire [2:0]Q;
  wire [34:0]a_in_7;
  wire [1:0]\a_j_reg[0]_0 ;
  wire \a_j_reg[0]_1 ;
  wire \a_j_reg[0]_2 ;
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
  wire \a_j_reg[4]_i_10__1_n_0 ;
  wire \a_j_reg[4]_i_11__0_n_0 ;
  wire \a_j_reg[4]_i_13__1 ;
  wire \a_j_reg[4]_i_13__1_0 ;
  wire \a_j_reg[4]_i_13__1_1 ;
  wire \a_j_reg[4]_i_14__1_n_0 ;
  wire \a_j_reg[4]_i_15__1_n_0 ;
  wire \a_j_reg[4]_i_16__1_n_0 ;
  wire \a_j_reg[4]_i_17__1_0 ;
  wire \a_j_reg[4]_i_17__1_n_0 ;
  wire \a_j_reg[4]_i_18__1_n_0 ;
  wire \a_j_reg[4]_i_19__1_n_0 ;
  wire \a_j_reg[4]_i_2__2_n_0 ;
  wire \a_j_reg[4]_i_9__0_n_0 ;
  wire clk;
  wire complete_tick;
  wire \count_reg[0]_i_1__1_n_0 ;
  wire \count_reg[1]_i_1__5_n_0 ;
  wire \count_reg[2]_i_1__5_n_0 ;
  wire \count_reg[3]_i_1__5_n_0 ;
  wire \count_reg[4]_i_1__5_n_0 ;
  wire \count_reg[4]_i_2__2_n_0 ;
  wire [4:0]\count_reg[4]_i_3__2_0 ;
  wire \count_reg[4]_i_3__2_n_0 ;
  wire \count_reg[4]_i_4__2_n_0 ;
  wire \count_reg[4]_i_5__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire done;
  wire done_aux_reg_i_1__2_n_0;
  wire \j_reg[0]_i_1__0_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__2_n_0 ;
  wire \j_reg[2]_i_1__2_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1__2_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__2_n_0 ;
  wire \j_reg[4]_i_2__2_n_0 ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_7;
  wire next_state2_carry_0;
  wire [0:0]next_state2_carry_1;
  wire next_state2_carry_2;
  wire next_state2_carry__0_i_1__5_n_0;
  wire next_state2_carry__0_i_2__5_n_0;
  wire next_state2_carry__0_i_3__5_n_0;
  wire next_state2_carry__0_i_4__5_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_0;
  wire next_state2_carry__1_i_1__2_n_0;
  wire next_state2_carry__1_i_2__5_n_0;
  wire next_state2_carry__1_i_3__5_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_12__1_n_0;
  wire next_state2_carry_i_1__5_n_0;
  wire next_state2_carry_i_2__5_n_0;
  wire next_state2_carry_i_3__2_n_0;
  wire next_state2_carry_i_4__2_0;
  wire next_state2_carry_i_4__2_1;
  wire next_state2_carry_i_4__2_n_0;
  wire [3:0]next_state2_carry_i_6__4;
  wire next_state2_carry_i_9__2_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [2:1]next_state6;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1__2_n_0 ;
  wire \state[0]_i_2__2_n_0 ;
  wire \state[1]_i_1__2_n_0 ;
  wire \state[1]_i_2__1_n_0 ;
  wire \state[1]_i_3__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire [4:0]\state_reg[2]_0 ;
  wire valid;
  wire valid_aux_reg_i_1__2_n_0;
  wire valid_aux_reg_i_2__2_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [2]),
        .I2(valid),
        .I3(complete_tick),
        .I4(\count_reg_reg[0] [3]),
        .O(\FSM_onehot_state_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(\count_reg_reg[0] [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__2 
       (.I0(\count_reg_reg[0] [1]),
        .I1(\count_reg_reg[0] [0]),
        .I2(\count_reg_reg[0] [2]),
        .I3(done),
        .I4(next_out_7),
        .I5(\count_reg_reg[0] [3]),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__2_n_0 ),
        .G(\a_j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hFCFCFA0A0C0CFA0A)) 
    \a_j_reg[0]_i_1__1 
       (.I0(\a_j_reg[4]_i_17__1_0 ),
        .I1(\a_j_reg[0]_i_2__1_n_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[1]_i_2__1_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[0]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \a_j_reg[0]_i_1__2 
       (.I0(\a_j_reg[0]_i_2__2_n_0 ),
        .I1(Q[1]),
        .I2(\a_j_reg[0]_i_3__2_n_0 ),
        .I3(Q[0]),
        .I4(\a_j_reg[0]_2 ),
        .O(\a_j_reg[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[0]_i_2__1 
       (.I0(\a_j_reg[0]_i_1__1_0 ),
        .I1(\a_j_reg[0]_i_3__1_n_0 ),
        .I2(\a_j_reg[4]_i_15__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_1 ),
        .I4(\a_j_reg[4]_i_14__1_n_0 ),
        .O(\a_j_reg[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00CA00AC)) 
    \a_j_reg[0]_i_2__2 
       (.I0(\a_j_reg[0]_i_1__2_0 ),
        .I1(\a_j_reg[0]_i_1__2_1 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hBEEB8228)) 
    \a_j_reg[0]_i_3__2 
       (.I0(\a_j_reg[0]_i_1__2_2 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\a_j_reg[0]_i_1__2_3 ),
        .O(\a_j_reg[0]_i_3__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__4[0]),
        .G(\a_j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[1]_i_1__1 
       (.I0(\a_j_reg[4]_i_17__1_0 ),
        .I1(\a_j_reg[4]_i_13__1 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[1]_i_2__1_n_0 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[0]_1 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[1]_i_2__1 
       (.I0(\a_j_reg[0]_i_1__1_0 ),
        .I1(\a_j_reg[1]_i_3__1_n_0 ),
        .I2(\a_j_reg[4]_i_10__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_1 ),
        .I4(\a_j_reg[4]_i_9__0_n_0 ),
        .O(\a_j_reg[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__4[1]),
        .G(\a_j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [2]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[2]_i_2__1 
       (.I0(\a_j_reg[0]_i_1__1_0 ),
        .I1(\a_j_reg[2]_i_3__1_n_0 ),
        .I2(\a_j_reg[4]_i_18__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_1 ),
        .I4(\a_j_reg[4]_i_17__1_n_0 ),
        .O(\a_j_reg[4]_i_17__1_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__4[2]),
        .G(\a_j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \a_j_reg[3]_i_1__1 
       (.I0(\a_j_reg[4]_i_13__1 ),
        .I1(\a_j_reg[4]_i_13__1_0 ),
        .I2(\a_j_reg[0]_0 [0]),
        .I3(\a_j_reg[0]_1 ),
        .I4(\a_j_reg[0]_0 [1]),
        .I5(\a_j_reg[4]_i_13__1_1 ),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__4[3]),
        .G(\a_j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_10__1 
       (.I0(a_in_7[25]),
        .I1(\a_j_reg[3]_i_2__1 ),
        .I2(a_in_7[9]),
        .O(\a_j_reg[4]_i_10__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \a_j_reg[4]_i_10__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFCAA0CAA)) 
    \a_j_reg[4]_i_11__0 
       (.I0(a_in_7[17]),
        .I1(a_in_7[33]),
        .I2(\a_j_reg[0]_i_2__1_0 ),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[1]),
        .O(\a_j_reg[4]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_14__1 
       (.I0(a_in_7[20]),
        .I1(a_in_7[28]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[4]),
        .I5(a_in_7[12]),
        .O(\a_j_reg[4]_i_14__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h8E71)) 
    \a_j_reg[4]_i_14__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_15__1 
       (.I0(a_in_7[24]),
        .I1(\a_j_reg[3]_i_2__1 ),
        .I2(a_in_7[8]),
        .O(\a_j_reg[4]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h91EC6E13)) 
    \a_j_reg[4]_i_15__2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFCAA0CAA)) 
    \a_j_reg[4]_i_16__1 
       (.I0(a_in_7[16]),
        .I1(a_in_7[32]),
        .I2(\a_j_reg[0]_i_2__1_0 ),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[0]),
        .O(\a_j_reg[4]_i_16__1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_17__1 
       (.I0(a_in_7[22]),
        .I1(a_in_7[30]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[6]),
        .I5(a_in_7[14]),
        .O(\a_j_reg[4]_i_17__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_18__1 
       (.I0(a_in_7[26]),
        .I1(\a_j_reg[3]_i_2__1 ),
        .I2(a_in_7[10]),
        .O(\a_j_reg[4]_i_18__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFCAA0CAA)) 
    \a_j_reg[4]_i_19__1 
       (.I0(a_in_7[18]),
        .I1(a_in_7[34]),
        .I2(\a_j_reg[0]_i_2__1_0 ),
        .I3(\a_j_reg[3]_i_2__1 ),
        .I4(a_in_7[2]),
        .O(\a_j_reg[4]_i_19__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \a_j_reg[4]_i_2__2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\a_j_reg[4]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \a_j_reg[4]_i_4__1 
       (.I0(\a_j_reg[4]_i_9__0_n_0 ),
        .I1(\a_j_reg[4]_i_10__1_n_0 ),
        .I2(\a_j_reg[4]_i_11__0_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(\a_j_reg[0]_i_1__1_1 ),
        .O(\a_j_reg[4]_i_13__1_1 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \a_j_reg[4]_i_5__1 
       (.I0(\a_j_reg[4]_i_14__1_n_0 ),
        .I1(\a_j_reg[4]_i_15__1_n_0 ),
        .I2(\a_j_reg[4]_i_16__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(\a_j_reg[0]_i_1__1_1 ),
        .O(\a_j_reg[4]_i_13__1 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \a_j_reg[4]_i_6__1 
       (.I0(\a_j_reg[4]_i_17__1_n_0 ),
        .I1(\a_j_reg[4]_i_18__1_n_0 ),
        .I2(\a_j_reg[4]_i_19__1_n_0 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(\a_j_reg[0]_i_1__1_1 ),
        .O(\a_j_reg[4]_i_13__1_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_7__1 
       (.I0(a_in_7[11]),
        .I1(a_in_7[27]),
        .I2(a_in_7[19]),
        .I3(a_in_7[3]),
        .I4(\a_j_reg[0]_i_1__1_0 ),
        .I5(\a_j_reg[3]_i_2__1 ),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_8__1 
       (.I0(a_in_7[23]),
        .I1(a_in_7[31]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[7]),
        .I5(a_in_7[15]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_9__0 
       (.I0(a_in_7[21]),
        .I1(a_in_7[29]),
        .I2(\a_j_reg[3]_i_2__1 ),
        .I3(\a_j_reg[0]_i_1__1_0 ),
        .I4(a_in_7[5]),
        .I5(a_in_7[13]),
        .O(\a_j_reg[4]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__2
       (.I0(\count_reg_reg[0] [4]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [0]),
        .I3(\count_reg_reg[0] [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__1_n_0 ),
        .G(\count_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__1 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__5_n_0 ),
        .G(\count_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1__5 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count_reg[1]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__5_n_0 ),
        .G(\count_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__5 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(state[1]),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__5_n_0 ),
        .G(\count_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__5 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(state[1]),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__5_n_0 ),
        .G(\count_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__5 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(state[1]),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h0800000F)) 
    \count_reg[4]_i_2__2 
       (.I0(\count_reg[4]_i_3__2_n_0 ),
        .I1(next_state2_carry__1_n_1),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\count_reg[4]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \count_reg[4]_i_3__2 
       (.I0(\count_reg[4]_i_4__2_n_0 ),
        .I1(\state_reg[2]_0 [1]),
        .I2(\count_reg[4]_i_3__2_0 [1]),
        .I3(\state_reg[2]_0 [3]),
        .I4(\count_reg[4]_i_3__2_0 [3]),
        .I5(\count_reg[4]_i_5__0_n_0 ),
        .O(\count_reg[4]_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'h4FF4)) 
    \count_reg[4]_i_4__2 
       (.I0(\state_reg[2]_0 [2]),
        .I1(\count_reg[4]_i_3__2_0 [2]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\count_reg[4]_i_3__2_0 [0]),
        .O(\count_reg[4]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'h66F6)) 
    \count_reg[4]_i_5__0 
       (.I0(\state_reg[2]_0 [4]),
        .I1(\count_reg[4]_i_3__2_0 [4]),
        .I2(\state_reg[2]_0 [2]),
        .I3(\count_reg[4]_i_3__2_0 [2]),
        .O(\count_reg[4]_i_5__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1__2
       (.I0(state[0]),
        .I1(state[2]),
        .O(done_aux_reg_i_1__2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__0_n_0 ),
        .G(\j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__0 
       (.I0(state[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__2_n_0 ),
        .G(\j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(state[2]),
        .O(\j_reg[1]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__2_n_0 ),
        .G(\j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state[2]),
        .I3(Q[2]),
        .O(\j_reg[2]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__2_n_0 ),
        .G(\j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(state[2]),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__2_n_0 ),
        .G(\j_reg[4]_i_2__2_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(state[2]),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2__2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\j_reg[4]_i_2__2_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__5_n_0,next_state2_carry_i_2__5_n_0,next_state2_carry_i_3__2_n_0,next_state2_carry_i_4__2_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__5_n_0,next_state2_carry__0_i_2__5_n_0,next_state2_carry__0_i_3__5_n_0,next_state2_carry__0_i_4__5_n_0}));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry__0_i_1__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry__0_i_2__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry__0_i_3__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_3__5_n_0));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry__0_i_4__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_4__5_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__2_n_0,next_state2_carry__1_i_2__5_n_0,next_state2_carry__1_i_3__5_n_0}));
  LUT6 #(
    .INIT(64'h0000155500000000)) 
    next_state2_carry__1_i_1__2
       (.I0(\j_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\j_reg_n_0_[4] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry__1_i_2__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry__1_i_3__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    next_state2_carry_i_11__2
       (.I0(\state_reg[2]_0 [0]),
        .I1(\count_reg[4]_i_3__2_0 [0]),
        .I2(\state_reg[2]_0 [1]),
        .I3(\count_reg[4]_i_3__2_0 [1]),
        .O(next_state6[1]));
  LUT6 #(
    .INIT(64'h956A956A956A6A95)) 
    next_state2_carry_i_12__1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(next_state6[2]),
        .I4(next_state2_carry_i_4__2_1),
        .I5(next_state2_carry_i_4__2_0),
        .O(next_state2_carry_i_12__1_n_0));
  LUT6 #(
    .INIT(64'h22B2DD4DDD4D22B2)) 
    next_state2_carry_i_14__1
       (.I0(\state_reg[2]_0 [1]),
        .I1(\count_reg[4]_i_3__2_0 [1]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\count_reg[4]_i_3__2_0 [0]),
        .I4(\state_reg[2]_0 [2]),
        .I5(\count_reg[4]_i_3__2_0 [2]),
        .O(next_state6[2]));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry_i_1__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h00001555FFFFEAAA)) 
    next_state2_carry_i_2__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry__1_0),
        .O(next_state2_carry_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h0000001001640000)) 
    next_state2_carry_i_3__2
       (.I0(\j_reg_n_0_[4] ),
        .I1(next_state2_carry_i_4__2_0),
        .I2(next_state2_carry_0),
        .I3(next_state2_carry_1),
        .I4(next_state2_carry_i_9__2_n_0),
        .I5(\j_reg_n_0_[3] ),
        .O(next_state2_carry_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h8118099000000000)) 
    next_state2_carry_i_4__2
       (.I0(Q[0]),
        .I1(next_state2_carry_2),
        .I2(Q[1]),
        .I3(next_state6[1]),
        .I4(next_state2_carry_i_4__2_0),
        .I5(next_state2_carry_i_12__1_n_0),
        .O(next_state2_carry_i_4__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    next_state2_carry_i_9__2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(next_state2_carry_i_9__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \state[0]_i_1__2 
       (.I0(\state[0]_i_2__2_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(reset_control),
        .O(\state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \state[0]_i_2__2 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(state[2]),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[1] ),
        .O(\state[0]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h00000F04)) 
    \state[1]_i_1__2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\state[1]_i_2__1_n_0 ),
        .I3(\state[1]_i_3__0_n_0 ),
        .I4(reset_control),
        .O(\state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[1]_i_2__1 
       (.I0(state[0]),
        .I1(\count_reg[4]_i_3__2_n_0 ),
        .I2(state[1]),
        .I3(next_state2_carry__1_n_1),
        .O(\state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \state[1]_i_3__0 
       (.I0(\j_reg[4]_i_2__2_n_0 ),
        .I1(valid_aux_reg_i_2__2_n_0),
        .I2(state[2]),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \state[2]_i_1__0 
       (.I0(next_state2_carry__1_n_1),
        .I1(state[1]),
        .I2(\count_reg[4]_i_3__2_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(reset_control),
        .O(\state[2]_i_1__0_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__2_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__2_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(valid));
  LUT6 #(
    .INIT(64'h222222A222222222)) 
    valid_aux_reg_i_1__2
       (.I0(\j_reg[4]_i_2__2_n_0 ),
        .I1(state[2]),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(valid_aux_reg_i_2__2_n_0),
        .O(valid_aux_reg_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    valid_aux_reg_i_2__2
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(valid_aux_reg_i_2__2_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized3
   (Q,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \count_reg_reg[2] ,
    \a_j_reg[3]_i_3__2_0 ,
    D,
    \count_reg_reg[0] ,
    \state_reg[2]_0 ,
    \FSM_onehot_state_reg[4] ,
    E,
    \j_reg[1]_0 ,
    \j_reg[4]_0 ,
    \j_reg[3]_0 ,
    \j_reg[2]_0 ,
    \FSM_onehot_state_reg[2] ,
    next_state2_carry__1_0,
    \a_j_reg[4]_0 ,
    \a_j_reg[3]_i_1__2_0 ,
    reset_control,
    a_in_6,
    \a_j_reg[0]_i_2__2 ,
    \a_j_reg[0]_i_2__2_0 ,
    next_state2_carry_i_4__3_0,
    next_state2_carry_0,
    next_state2_carry_1,
    next_state2_carry_2,
    \count_reg[4]_i_3__3_0 ,
    \count_reg_reg[0]_0 ,
    next_out_6,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1__3_0 ,
    \a_j_reg[0]_i_1__3_1 ,
    \a_j_reg[0]_i_1__3_2 ,
    \a_j_reg[0]_i_1__3_3 ,
    \FSM_onehot_state_reg[1] ,
    next_state2_carry_i_6__5,
    clk);
  output [2:0]Q;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \count_reg_reg[2] ;
  output \a_j_reg[3]_i_3__2_0 ;
  output [3:0]D;
  output \count_reg_reg[0] ;
  output [4:0]\state_reg[2]_0 ;
  output \FSM_onehot_state_reg[4] ;
  output [0:0]E;
  output \j_reg[1]_0 ;
  output \j_reg[4]_0 ;
  output \j_reg[3]_0 ;
  output \j_reg[2]_0 ;
  output [1:0]\FSM_onehot_state_reg[2] ;
  input next_state2_carry__1_0;
  input [2:0]\a_j_reg[4]_0 ;
  input \a_j_reg[3]_i_1__2_0 ;
  input reset_control;
  input [29:0]a_in_6;
  input \a_j_reg[0]_i_2__2 ;
  input \a_j_reg[0]_i_2__2_0 ;
  input next_state2_carry_i_4__3_0;
  input next_state2_carry_0;
  input [0:0]next_state2_carry_1;
  input next_state2_carry_2;
  input [4:0]\count_reg[4]_i_3__3_0 ;
  input [4:0]\count_reg_reg[0]_0 ;
  input next_out_6;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1__3_0 ;
  input \a_j_reg[0]_i_1__3_1 ;
  input \a_j_reg[0]_i_1__3_2 ;
  input \a_j_reg[0]_i_1__3_3 ;
  input \FSM_onehot_state_reg[1] ;
  input [3:0]next_state2_carry_i_6__5;
  input clk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire [2:0]Q;
  wire [29:0]a_in_6;
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
  wire [2:0]\a_j_reg[4]_0 ;
  wire \a_j_reg[4]_i_11__1_n_0 ;
  wire \a_j_reg[4]_i_12__2_n_0 ;
  wire \a_j_reg[4]_i_13__2_n_0 ;
  wire \a_j_reg[4]_i_2__3_n_0 ;
  wire \a_j_reg[4]_i_3__6_n_0 ;
  wire \a_j_reg[4]_i_4__2_n_0 ;
  wire \a_j_reg[4]_i_5__2_n_0 ;
  wire \a_j_reg[4]_i_7__2_n_0 ;
  wire \a_j_reg[4]_i_9__1_n_0 ;
  wire clk;
  wire \count_reg[0]_i_1__3_n_0 ;
  wire \count_reg[1]_i_1__7_n_0 ;
  wire \count_reg[2]_i_1__7_n_0 ;
  wire \count_reg[3]_i_1__7_n_0 ;
  wire \count_reg[4]_i_1__7_n_0 ;
  wire \count_reg[4]_i_2__3_n_0 ;
  wire [4:0]\count_reg[4]_i_3__3_0 ;
  wire \count_reg[4]_i_3__3_n_0 ;
  wire \count_reg[4]_i_4__3_n_0 ;
  wire \count_reg[4]_i_5__1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_reg[0] ;
  wire [4:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[2] ;
  wire done;
  wire done_aux_reg_i_1__3_n_0;
  wire \j_reg[0]_i_1__1_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__3_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_i_1__3_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1__3_n_0 ;
  wire \j_reg[4]_0 ;
  wire \j_reg[4]_i_1__3_n_0 ;
  wire \j_reg[4]_i_2__3_n_0 ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_6;
  wire next_state2_carry_0;
  wire [0:0]next_state2_carry_1;
  wire next_state2_carry_2;
  wire next_state2_carry__0_i_1__6_n_0;
  wire next_state2_carry__0_i_2__6_n_0;
  wire next_state2_carry__0_i_3__6_n_0;
  wire next_state2_carry__0_i_4__6_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_0;
  wire next_state2_carry__1_i_1__3_n_0;
  wire next_state2_carry__1_i_2__6_n_0;
  wire next_state2_carry__1_i_3__6_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_10__1_n_0;
  wire next_state2_carry_i_1__6_n_0;
  wire next_state2_carry_i_2__6_n_0;
  wire next_state2_carry_i_3__3_n_0;
  wire next_state2_carry_i_4__3_0;
  wire next_state2_carry_i_4__3_n_0;
  wire [3:0]next_state2_carry_i_6__5;
  wire next_state2_carry_i_9__3_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [2:1]next_state6;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1__3_n_0 ;
  wire \state[0]_i_2__3_n_0 ;
  wire \state[1]_i_1__3_n_0 ;
  wire \state[1]_i_2__2_n_0 ;
  wire \state[1]_i_3__1_n_0 ;
  wire \state[2]_i_1__1_n_0 ;
  wire [4:0]\state_reg[2]_0 ;
  wire valid;
  wire valid_aux_reg_i_1__3_n_0;
  wire valid_aux_reg_i_2__3_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(\count_reg_reg[0]_0 [0]),
        .I1(\count_reg_reg[0]_0 [2]),
        .I2(valid),
        .I3(\FSM_onehot_state_reg[1] ),
        .I4(\count_reg_reg[0]_0 [3]),
        .O(\FSM_onehot_state_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(valid),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__3 
       (.I0(\count_reg_reg[0]_0 [1]),
        .I1(\count_reg_reg[0]_0 [0]),
        .I2(\count_reg_reg[0]_0 [2]),
        .I3(done),
        .I4(next_out_6),
        .I5(\count_reg_reg[0]_0 [3]),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__3_n_0 ),
        .G(\a_j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \a_j_reg[0]_i_1__3 
       (.I0(\a_j_reg[0]_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[0]_i_2__3_n_0 ),
        .I3(Q[1]),
        .I4(\a_j_reg[0]_i_3__3_n_0 ),
        .O(\a_j_reg[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hAC0000AC)) 
    \a_j_reg[0]_i_2__3 
       (.I0(\a_j_reg[0]_i_1__3_0 ),
        .I1(\a_j_reg[0]_i_1__3_1 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\a_j_reg[0]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hAEFBA208)) 
    \a_j_reg[0]_i_3__3 
       (.I0(\a_j_reg[0]_i_1__3_2 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__5[0]),
        .G(\a_j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[1]_i_1__2 
       (.I0(\a_j_reg[3]_i_3__2_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[2]_i_2__7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFA50EEEEFA504444)) 
    \a_j_reg[1]_i_2__6 
       (.I0(\a_j_reg[4]_0 [1]),
        .I1(\a_j_reg[1]_i_3__2_n_0 ),
        .I2(\a_j_reg[4]_i_13__2_n_0 ),
        .I3(\a_j_reg[4]_i_11__1_n_0 ),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__5[1]),
        .G(\a_j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[2]_i_1__2 
       (.I0(\a_j_reg[2]_i_2__7_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[3]_i_2__6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \a_j_reg[2]_i_2__7 
       (.I0(\a_j_reg[4]_0 [1]),
        .I1(\a_j_reg[4]_i_7__2_n_0 ),
        .I2(\FSM_onehot_state_reg[3] ),
        .I3(\FSM_onehot_state_reg[3]_0 ),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__5[2]),
        .G(\a_j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__2 
       (.I0(\a_j_reg[3]_i_2__6_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[4]_i_3__6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hDD88F5F5DD88A0A0)) 
    \a_j_reg[3]_i_2__6 
       (.I0(\a_j_reg[4]_0 [1]),
        .I1(\a_j_reg[4]_i_12__2_n_0 ),
        .I2(\a_j_reg[4]_i_13__2_n_0 ),
        .I3(\a_j_reg[4]_i_11__1_n_0 ),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__5[3]),
        .G(\a_j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hE31C)) 
    \a_j_reg[4]_i_10__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_11__1 
       (.I0(\a_j_reg[0]_i_2__2_0 ),
        .I1(a_in_6[7]),
        .I2(a_in_6[23]),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[15]),
        .O(\a_j_reg[4]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_12__2 
       (.I0(a_in_6[9]),
        .I1(a_in_6[25]),
        .I2(a_in_6[17]),
        .I3(a_in_6[1]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_12__2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_13__2 
       (.I0(a_in_6[21]),
        .I1(a_in_6[29]),
        .I2(\a_j_reg[0]_i_2__2_0 ),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[5]),
        .I5(a_in_6[13]),
        .O(\a_j_reg[4]_i_13__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_j_reg[4]_i_15__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \a_j_reg[4]_i_16__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \a_j_reg[4]_i_1__2 
       (.I0(\a_j_reg[4]_i_3__6_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[4]_i_4__2_n_0 ),
        .I3(\a_j_reg[4]_i_5__2_n_0 ),
        .I4(\a_j_reg[4]_0 [2]),
        .I5(\a_j_reg[4]_0 [1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \a_j_reg[4]_i_2__3 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\a_j_reg[4]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA5050EE44EE44)) 
    \a_j_reg[4]_i_3__6 
       (.I0(\a_j_reg[4]_0 [1]),
        .I1(\FSM_onehot_state_reg[3] ),
        .I2(\a_j_reg[4]_i_7__2_n_0 ),
        .I3(\FSM_onehot_state_reg[3]_0 ),
        .I4(\a_j_reg[4]_i_9__1_n_0 ),
        .I5(\a_j_reg[3]_i_1__2_0 ),
        .O(\a_j_reg[4]_i_3__6_n_0 ));
  LUT6 #(
    .INIT(64'h2F2C8F8323208C80)) 
    \a_j_reg[4]_i_4__2 
       (.I0(\a_j_reg[4]_i_11__1_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[4]_0 [1]),
        .I3(\a_j_reg[4]_i_12__2_n_0 ),
        .I4(\a_j_reg[4]_0 [2]),
        .I5(\a_j_reg[4]_i_13__2_n_0 ),
        .O(\a_j_reg[4]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_5__2 
       (.I0(a_in_6[11]),
        .I1(a_in_6[27]),
        .I2(a_in_6[19]),
        .I3(a_in_6[3]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \a_j_reg[4]_i_6__2 
       (.I0(a_in_6[20]),
        .I1(a_in_6[28]),
        .I2(\a_j_reg[0]_i_2__2_0 ),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[4]),
        .I5(a_in_6[12]),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_7__2 
       (.I0(a_in_6[8]),
        .I1(a_in_6[24]),
        .I2(a_in_6[16]),
        .I3(a_in_6[0]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_7__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_8__2 
       (.I0(\a_j_reg[0]_i_2__2_0 ),
        .I1(a_in_6[6]),
        .I2(a_in_6[22]),
        .I3(\a_j_reg[0]_i_2__2 ),
        .I4(a_in_6[14]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_9__1 
       (.I0(a_in_6[10]),
        .I1(a_in_6[26]),
        .I2(a_in_6[18]),
        .I3(a_in_6[2]),
        .I4(\a_j_reg[0]_i_2__2 ),
        .I5(\a_j_reg[0]_i_2__2_0 ),
        .O(\a_j_reg[4]_i_9__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h897E7681)) 
    \a_j_reg[4]_i_9__2 
       (.I0(\j_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__3
       (.I0(\count_reg_reg[0]_0 [4]),
        .I1(\count_reg_reg[0]_0 [1]),
        .I2(\count_reg_reg[0]_0 [0]),
        .I3(\count_reg_reg[0]_0 [2]),
        .I4(done),
        .I5(valid),
        .O(\FSM_onehot_state_reg[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__3_n_0 ),
        .G(\count_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__3 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__7_n_0 ),
        .G(\count_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1__7 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count_reg[1]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__7_n_0 ),
        .G(\count_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1__7 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(state[1]),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__7_n_0 ),
        .G(\count_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \count_reg[3]_i_1__7 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(state[1]),
        .I4(\count_reg_n_0_[3] ),
        .O(\count_reg[3]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__7_n_0 ),
        .G(\count_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \count_reg[4]_i_1__7 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(state[1]),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h0800000F)) 
    \count_reg[4]_i_2__3 
       (.I0(\count_reg[4]_i_3__3_n_0 ),
        .I1(next_state2_carry__1_n_1),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\count_reg[4]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \count_reg[4]_i_3__3 
       (.I0(\count_reg[4]_i_4__3_n_0 ),
        .I1(\state_reg[2]_0 [1]),
        .I2(\count_reg[4]_i_3__3_0 [1]),
        .I3(\state_reg[2]_0 [3]),
        .I4(\count_reg[4]_i_3__3_0 [3]),
        .I5(\count_reg[4]_i_5__1_n_0 ),
        .O(\count_reg[4]_i_3__3_n_0 ));
  LUT4 #(
    .INIT(16'h4FF4)) 
    \count_reg[4]_i_4__3 
       (.I0(\state_reg[2]_0 [2]),
        .I1(\count_reg[4]_i_3__3_0 [2]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\count_reg[4]_i_3__3_0 [0]),
        .O(\count_reg[4]_i_4__3_n_0 ));
  LUT4 #(
    .INIT(16'h66F6)) 
    \count_reg[4]_i_5__1 
       (.I0(\state_reg[2]_0 [4]),
        .I1(\count_reg[4]_i_3__3_0 [4]),
        .I2(\state_reg[2]_0 [2]),
        .I3(\count_reg[4]_i_3__3_0 [2]),
        .O(\count_reg[4]_i_5__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1__3
       (.I0(state[0]),
        .I1(state[2]),
        .O(done_aux_reg_i_1__3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__1_n_0 ),
        .G(\j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__1 
       (.I0(state[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__3_n_0 ),
        .G(\j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state[2]),
        .O(\j_reg[1]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__3_n_0 ),
        .G(\j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \j_reg[2]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state[2]),
        .I3(Q[2]),
        .O(\j_reg[2]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__3_n_0 ),
        .G(\j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \j_reg[3]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(state[2]),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__3_n_0 ),
        .G(\j_reg[4]_i_2__3_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \j_reg[4]_i_1__3 
       (.I0(\j_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(state[2]),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2__3 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\j_reg[4]_i_2__3_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__6_n_0,next_state2_carry_i_2__6_n_0,next_state2_carry_i_3__3_n_0,next_state2_carry_i_4__3_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__6_n_0,next_state2_carry__0_i_2__6_n_0,next_state2_carry__0_i_3__6_n_0,next_state2_carry__0_i_4__6_n_0}));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry__0_i_1__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_1__6_n_0));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry__0_i_2__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_2__6_n_0));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry__0_i_3__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_3__6_n_0));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry__0_i_4__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry__0_i_4__6_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__3_n_0,next_state2_carry__1_i_2__6_n_0,next_state2_carry__1_i_3__6_n_0}));
  LUT5 #(
    .INIT(32'h00150000)) 
    next_state2_carry__1_i_1__3
       (.I0(\j_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\j_reg_n_0_[4] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_1__3_n_0));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry__1_i_2__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_2__6_n_0));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry__1_i_3__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry__1_i_3__6_n_0));
  LUT6 #(
    .INIT(64'hA50000A500969600)) 
    next_state2_carry_i_10__1
       (.I0(Q[1]),
        .I1(next_state2_carry_i_4__3_0),
        .I2(next_state6[1]),
        .I3(\count_reg[4]_i_3__3_0 [0]),
        .I4(\state_reg[2]_0 [0]),
        .I5(Q[0]),
        .O(next_state2_carry_i_10__1_n_0));
  LUT6 #(
    .INIT(64'h22B2DD4DDD4D22B2)) 
    next_state2_carry_i_12__2
       (.I0(\state_reg[2]_0 [1]),
        .I1(\count_reg[4]_i_3__3_0 [1]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\count_reg[4]_i_3__3_0 [0]),
        .I4(\state_reg[2]_0 [2]),
        .I5(\count_reg[4]_i_3__3_0 [2]),
        .O(next_state6[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    next_state2_carry_i_14__2
       (.I0(\state_reg[2]_0 [0]),
        .I1(\count_reg[4]_i_3__3_0 [0]),
        .I2(\state_reg[2]_0 [1]),
        .I3(\count_reg[4]_i_3__3_0 [1]),
        .O(next_state6[1]));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry_i_1__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry_i_1__6_n_0));
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    next_state2_carry_i_2__6
       (.I0(\j_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state2_carry__1_0),
        .O(next_state2_carry_i_2__6_n_0));
  LUT6 #(
    .INIT(64'h0000001001640000)) 
    next_state2_carry_i_3__3
       (.I0(\j_reg_n_0_[4] ),
        .I1(next_state2_carry_i_4__3_0),
        .I2(next_state2_carry_0),
        .I3(next_state2_carry_1),
        .I4(next_state2_carry_i_9__3_n_0),
        .I5(\j_reg_n_0_[3] ),
        .O(next_state2_carry_i_3__3_n_0));
  LUT6 #(
    .INIT(64'hA80202A802A8A802)) 
    next_state2_carry_i_4__3
       (.I0(next_state2_carry_i_10__1_n_0),
        .I1(next_state2_carry_i_4__3_0),
        .I2(next_state2_carry_2),
        .I3(next_state6[2]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(next_state2_carry_i_4__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h7)) 
    next_state2_carry_i_9__3
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(next_state2_carry_i_9__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \state[0]_i_1__3 
       (.I0(\state[0]_i_2__3_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(reset_control),
        .O(\state[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \state[0]_i_2__3 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(state[2]),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\state[0]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h00000F04)) 
    \state[1]_i_1__3 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\state[1]_i_2__2_n_0 ),
        .I3(\state[1]_i_3__1_n_0 ),
        .I4(reset_control),
        .O(\state[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[1]_i_2__2 
       (.I0(state[0]),
        .I1(\count_reg[4]_i_3__3_n_0 ),
        .I2(state[1]),
        .I3(next_state2_carry__1_n_1),
        .O(\state[1]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \state[1]_i_3__1 
       (.I0(\j_reg[4]_i_2__3_n_0 ),
        .I1(valid_aux_reg_i_2__3_n_0),
        .I2(state[2]),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\state[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \state[2]_i_1__1 
       (.I0(next_state2_carry__1_n_1),
        .I1(state[1]),
        .I2(\count_reg[4]_i_3__3_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(reset_control),
        .O(\state[2]_i_1__1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__3_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__3_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1__1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(valid));
  LUT6 #(
    .INIT(64'h222222A222222222)) 
    valid_aux_reg_i_1__3
       (.I0(\j_reg[4]_i_2__3_n_0 ),
        .I1(state[2]),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(valid_aux_reg_i_2__3_n_0),
        .O(valid_aux_reg_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    valid_aux_reg_i_2__3
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(valid_aux_reg_i_2__3_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized4
   (valid,
    \j_reg[2]_0 ,
    Q,
    D,
    \a_j_reg[4]_i_4__3_0 ,
    \count_reg_reg[4] ,
    \count_reg_reg[2] ,
    \FSM_onehot_state_reg[3] ,
    \count_reg_reg[0] ,
    \state_reg[0]_0 ,
    E,
    \FSM_onehot_state_reg[0] ,
    \j_reg[1]_0 ,
    \FSM_onehot_state_reg[2] ,
    \a_j_reg[4]_0 ,
    \a_j_reg[0]_i_1__3 ,
    \a_j_reg[0]_i_1__3_0 ,
    a_in_5,
    \a_j_reg[4]_i_3__2_0 ,
    \a_j_reg[4]_i_3__2_1 ,
    next_state3,
    next_state2_carry_0,
    next_state2_carry_1,
    next_state2_carry_2,
    next_state2_carry_3,
    \state_reg[1]_0 ,
    next_state2_carry_i_4__4_0,
    next_state2_carry_i_4__4_1,
    \count_reg_reg[0]_0 ,
    next_out_5,
    \a_j_reg[3]_i_1__4_0 ,
    \a_j_reg[3]_i_1__4_1 ,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_1 ,
    \a_j_reg[1]_i_1__4_0 ,
    \a_j_reg[2]_i_1__4_0 ,
    \a_j_reg[2]_i_1__4_1 ,
    \a_j_reg[4]_1 ,
    \a_j_reg[4]_2 ,
    \a_j_reg[3]_i_1__4_2 ,
    a_in_4,
    reset_control,
    clk);
  output valid;
  output \j_reg[2]_0 ;
  output [1:0]Q;
  output [3:0]D;
  output \a_j_reg[4]_i_4__3_0 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[2] ;
  output \FSM_onehot_state_reg[3] ;
  output \count_reg_reg[0] ;
  output [4:0]\state_reg[0]_0 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[0] ;
  output \j_reg[1]_0 ;
  output [0:0]\FSM_onehot_state_reg[2] ;
  input [2:0]\a_j_reg[4]_0 ;
  input \a_j_reg[0]_i_1__3 ;
  input \a_j_reg[0]_i_1__3_0 ;
  input [24:0]a_in_5;
  input \a_j_reg[4]_i_3__2_0 ;
  input \a_j_reg[4]_i_3__2_1 ;
  input [0:0]next_state3;
  input next_state2_carry_0;
  input next_state2_carry_1;
  input next_state2_carry_2;
  input next_state2_carry_3;
  input \state_reg[1]_0 ;
  input next_state2_carry_i_4__4_0;
  input [1:0]next_state2_carry_i_4__4_1;
  input [4:0]\count_reg_reg[0]_0 ;
  input next_out_5;
  input \a_j_reg[3]_i_1__4_0 ;
  input \a_j_reg[3]_i_1__4_1 ;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_1 ;
  input \a_j_reg[1]_i_1__4_0 ;
  input \a_j_reg[2]_i_1__4_0 ;
  input \a_j_reg[2]_i_1__4_1 ;
  input \a_j_reg[4]_1 ;
  input \a_j_reg[4]_2 ;
  input \a_j_reg[3]_i_1__4_2 ;
  input [7:0]a_in_4;
  input reset_control;
  input clk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire [1:0]Q;
  wire [7:0]a_in_4;
  wire [24:0]a_in_5;
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
  wire \a_j_reg[2]_i_1__4_1 ;
  wire \a_j_reg[2]_i_1__4_n_0 ;
  wire \a_j_reg[2]_i_2__2_n_0 ;
  wire \a_j_reg[2]_i_2__3_n_0 ;
  wire \a_j_reg[3]_i_1__4_0 ;
  wire \a_j_reg[3]_i_1__4_1 ;
  wire \a_j_reg[3]_i_1__4_2 ;
  wire \a_j_reg[3]_i_1__4_n_0 ;
  wire \a_j_reg[3]_i_2__2_n_0 ;
  wire \a_j_reg[3]_i_2__3_n_0 ;
  wire \a_j_reg[3]_i_3__3_n_0 ;
  wire \a_j_reg[3]_i_4_n_0 ;
  wire \a_j_reg[3]_i_5_n_0 ;
  wire [2:0]\a_j_reg[4]_0 ;
  wire \a_j_reg[4]_1 ;
  wire \a_j_reg[4]_2 ;
  wire \a_j_reg[4]_i_11__2_n_0 ;
  wire \a_j_reg[4]_i_13__3_n_0 ;
  wire \a_j_reg[4]_i_1__4_n_0 ;
  wire \a_j_reg[4]_i_2__4_n_0 ;
  wire \a_j_reg[4]_i_3__2_0 ;
  wire \a_j_reg[4]_i_3__2_1 ;
  wire \a_j_reg[4]_i_3__2_n_0 ;
  wire \a_j_reg[4]_i_3__3_n_0 ;
  wire \a_j_reg[4]_i_4__3_0 ;
  wire \a_j_reg[4]_i_4__3_n_0 ;
  wire \a_j_reg[4]_i_5__3_n_0 ;
  wire \a_j_reg[4]_i_6__3_n_0 ;
  wire \a_j_reg[4]_i_6__4_n_0 ;
  wire \a_j_reg[4]_i_7__3_n_0 ;
  wire \a_j_reg[4]_i_8__3_n_0 ;
  wire \a_j_reg[4]_i_8__4_n_0 ;
  wire \a_j_reg[4]_i_9__3_n_0 ;
  wire clk;
  wire \count_reg[0]_i_1__5_n_0 ;
  wire \count_reg[1]_i_1__14_n_0 ;
  wire \count_reg[2]_i_1__9_n_0 ;
  wire \count_reg[3]_i_1__14_n_0 ;
  wire \count_reg[4]_i_1__9_n_0 ;
  wire \count_reg[4]_i_2__4_n_0 ;
  wire \count_reg[4]_i_3__4_n_0 ;
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
  wire done_aux_reg_i_1__4_n_0;
  wire \j_reg[0]_i_1__2_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__4_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_i_1__4_n_0 ;
  wire \j_reg[3]_i_1__4_n_0 ;
  wire \j_reg[4]_i_1__4_n_0 ;
  wire \j_reg[4]_i_2__4_n_0 ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_5;
  wire next_state2_carry_0;
  wire next_state2_carry_1;
  wire next_state2_carry_2;
  wire next_state2_carry_3;
  wire next_state2_carry__0_i_1_n_0;
  wire next_state2_carry__0_i_2_n_0;
  wire next_state2_carry__0_i_3_n_0;
  wire next_state2_carry__0_i_4_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_i_1__4_n_0;
  wire next_state2_carry__1_i_2_n_0;
  wire next_state2_carry__1_i_3_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_10__2_n_0;
  wire next_state2_carry_i_11__3_n_0;
  wire next_state2_carry_i_12__3_n_0;
  wire next_state2_carry_i_1_n_0;
  wire next_state2_carry_i_2_n_0;
  wire next_state2_carry_i_3__4_n_0;
  wire next_state2_carry_i_4__4_0;
  wire [1:0]next_state2_carry_i_4__4_1;
  wire next_state2_carry_i_4__4_n_0;
  wire next_state2_carry_i_6_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [0:0]next_state3;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1__4_n_0 ;
  wire \state[1]_i_1__4_n_0 ;
  wire \state[2]_i_1__1_n_0 ;
  wire [4:0]\state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire valid;
  wire valid_aux_reg_i_1__4_n_0;
  wire valid_aux_reg_i_2__4_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__4 
       (.I0(valid),
        .I1(\count_reg_reg[0]_0 [2]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__4 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(done),
        .I2(next_out_5),
        .I3(\count_reg_reg[0]_0 [3]),
        .I4(\count_reg_reg[0]_0 [0]),
        .I5(\count_reg_reg[0]_0 [1]),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__4_n_0 ),
        .G(\a_j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [0]));
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
        .I2(\a_j_reg[4]_i_3__2_0 ),
        .I3(a_in_5[24]),
        .I4(\a_j_reg[4]_i_3__2_1 ),
        .I5(a_in_5[8]),
        .O(\count_reg_reg[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\a_j_reg[1]_i_1__4_n_0 ),
        .G(\a_j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[1]_i_1__3 
       (.I0(\a_j_reg[2]_i_2__2_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[4]_i_4__3_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
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
       (.I0(\a_j_reg[4]_i_7__3_n_0 ),
        .I1(\a_j_reg[1]_i_3__3_n_0 ),
        .I2(\a_j_reg[0]_i_1__3 ),
        .I3(\a_j_reg[3]_i_3__3_n_0 ),
        .I4(\a_j_reg[0]_i_1__3_0 ),
        .I5(\a_j_reg[4]_i_4__3_n_0 ),
        .O(\a_j_reg[4]_i_4__3_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2__3 
       (.I0(\a_j_reg[1]_i_1__4_0 ),
        .I1(\a_j_reg[3]_i_5_n_0 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[3]_i_1__4_0 ),
        .I4(\a_j_reg[4]_i_9__3_n_0 ),
        .I5(\a_j_reg[3]_i_4_n_0 ),
        .O(\a_j_reg[1]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[1]_i_3__3 
       (.I0(\a_j_reg[4]_i_3__2_1 ),
        .I1(a_in_5[1]),
        .I2(a_in_5[17]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(a_in_5[9]),
        .O(\a_j_reg[1]_i_3__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\a_j_reg[2]_i_1__4_n_0 ),
        .G(\a_j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[2]_i_1__3 
       (.I0(\a_j_reg[3]_i_2__2_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[2]_i_2__2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
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
        .I1(\a_j_reg[4]_i_11__2_n_0 ),
        .I2(\a_j_reg[0]_i_1__3 ),
        .I3(\count_reg_reg[2] ),
        .I4(\a_j_reg[0]_i_1__3_0 ),
        .I5(\FSM_onehot_state_reg[3] ),
        .O(\a_j_reg[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2__3 
       (.I0(\a_j_reg[2]_i_1__4_0 ),
        .I1(\a_j_reg[4]_i_8__4_n_0 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[4]_i_6__4_n_0 ),
        .I4(\a_j_reg[4]_i_9__3_n_0 ),
        .I5(\a_j_reg[2]_i_1__4_1 ),
        .O(\a_j_reg[2]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[2]_i_3__3 
       (.I0(\a_j_reg[4]_i_3__2_1 ),
        .I1(a_in_5[2]),
        .I2(a_in_5[18]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(a_in_5[10]),
        .O(\count_reg_reg[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\a_j_reg[3]_i_1__4_n_0 ),
        .G(\a_j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__3 
       (.I0(\a_j_reg[4]_i_5__3_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[3]_i_2__2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__4 
       (.I0(\a_j_reg[3]_i_2__3_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_3__3_n_0 ),
        .O(\a_j_reg[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2__2 
       (.I0(\a_j_reg[4]_i_7__3_n_0 ),
        .I1(\a_j_reg[4]_i_8__3_n_0 ),
        .I2(\a_j_reg[0]_i_1__3 ),
        .I3(\a_j_reg[3]_i_3__3_n_0 ),
        .I4(\a_j_reg[0]_i_1__3_0 ),
        .I5(\a_j_reg[4]_i_4__3_n_0 ),
        .O(\a_j_reg[3]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[3]_i_2__3 
       (.I0(\a_j_reg[3]_i_1__4_0 ),
        .I1(\a_j_reg[3]_i_4_n_0 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[3]_i_5_n_0 ),
        .I4(\a_j_reg[4]_i_9__3_n_0 ),
        .I5(\a_j_reg[3]_i_1__4_1 ),
        .O(\a_j_reg[3]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[3]_i_3__3 
       (.I0(\a_j_reg[4]_i_3__2_1 ),
        .I1(a_in_5[3]),
        .I2(a_in_5[19]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\a_j_reg[4]_i_1__4_n_0 ),
        .G(\a_j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_11__2 
       (.I0(a_in_5[8]),
        .I1(a_in_5[24]),
        .I2(a_in_5[16]),
        .I3(a_in_5[0]),
        .I4(\a_j_reg[4]_i_3__2_0 ),
        .I5(\a_j_reg[4]_i_3__2_1 ),
        .O(\a_j_reg[4]_i_11__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \a_j_reg[4]_i_11__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\j_reg_n_0_[3] ),
        .I3(\j_reg_n_0_[1] ),
        .O(\j_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_12__3 
       (.I0(\a_j_reg[4]_i_3__2_1 ),
        .I1(a_in_5[4]),
        .I2(a_in_5[20]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(a_in_5[12]),
        .O(\count_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \a_j_reg[4]_i_13__3 
       (.I0(a_in_5[10]),
        .I1(a_in_5[18]),
        .I2(a_in_5[2]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(\a_j_reg[4]_i_3__2_1 ),
        .O(\a_j_reg[4]_i_13__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_14__3 
       (.I0(\a_j_reg[4]_i_3__2_1 ),
        .I1(a_in_5[6]),
        .I2(a_in_5[22]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(a_in_5[14]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hE8175FA0)) 
    \a_j_reg[4]_i_14__4 
       (.I0(\j_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(\j_reg_n_0_[1] ),
        .I3(\j_reg_n_0_[4] ),
        .I4(Q[1]),
        .O(\j_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAEA0000)) 
    \a_j_reg[4]_i_1__3 
       (.I0(\a_j_reg[4]_i_3__2_n_0 ),
        .I1(\a_j_reg[4]_i_4__3_n_0 ),
        .I2(\a_j_reg[4]_0 [2]),
        .I3(\a_j_reg[4]_0 [1]),
        .I4(\a_j_reg[4]_0 [0]),
        .I5(\a_j_reg[4]_i_5__3_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_1__4 
       (.I0(\a_j_reg[4]_i_3__3_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_1 ),
        .I3(\j_reg_n_0_[1] ),
        .I4(\a_j_reg[4]_2 ),
        .O(\a_j_reg[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \a_j_reg[4]_i_2__4 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\a_j_reg[4]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'hE320CBCBE3200808)) 
    \a_j_reg[4]_i_3__2 
       (.I0(\a_j_reg[4]_i_6__3_n_0 ),
        .I1(\a_j_reg[4]_0 [0]),
        .I2(\a_j_reg[4]_0 [1]),
        .I3(\a_j_reg[4]_i_7__3_n_0 ),
        .I4(\a_j_reg[4]_0 [2]),
        .I5(\a_j_reg[4]_i_8__3_n_0 ),
        .O(\a_j_reg[4]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_3__3 
       (.I0(\a_j_reg[4]_i_6__4_n_0 ),
        .I1(\a_j_reg[2]_i_1__4_1 ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[4]_i_8__4_n_0 ),
        .I4(\a_j_reg[4]_i_9__3_n_0 ),
        .I5(\a_j_reg[3]_i_1__4_2 ),
        .O(\a_j_reg[4]_i_3__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_4__3 
       (.I0(\a_j_reg[4]_i_3__2_1 ),
        .I1(a_in_5[7]),
        .I2(a_in_5[23]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(a_in_5[15]),
        .O(\a_j_reg[4]_i_4__3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \a_j_reg[4]_i_5__3 
       (.I0(\a_j_reg[4]_i_11__2_n_0 ),
        .I1(\count_reg_reg[4] ),
        .I2(\a_j_reg[4]_i_13__3_n_0 ),
        .I3(\FSM_onehot_state_reg[3] ),
        .I4(\a_j_reg[0]_i_1__3 ),
        .I5(\a_j_reg[0]_i_1__3_0 ),
        .O(\a_j_reg[4]_i_5__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \a_j_reg[4]_i_6__3 
       (.I0(a_in_5[11]),
        .I1(a_in_5[19]),
        .I2(a_in_5[3]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(\a_j_reg[4]_i_3__2_1 ),
        .O(\a_j_reg[4]_i_6__3_n_0 ));
  LUT6 #(
    .INIT(64'hEABFBFEA2A80802A)) 
    \a_j_reg[4]_i_6__4 
       (.I0(a_in_4[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(a_in_4[0]),
        .O(\a_j_reg[4]_i_6__4_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \a_j_reg[4]_i_7__3 
       (.I0(\a_j_reg[4]_i_3__2_1 ),
        .I1(a_in_5[5]),
        .I2(a_in_5[21]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(a_in_5[13]),
        .O(\a_j_reg[4]_i_7__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \a_j_reg[4]_i_8__3 
       (.I0(a_in_5[9]),
        .I1(a_in_5[17]),
        .I2(a_in_5[1]),
        .I3(\a_j_reg[4]_i_3__2_0 ),
        .I4(\a_j_reg[4]_i_3__2_1 ),
        .O(\a_j_reg[4]_i_8__3_n_0 ));
  LUT6 #(
    .INIT(64'hEABFBFEA2A80802A)) 
    \a_j_reg[4]_i_8__4 
       (.I0(a_in_4[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(a_in_4[2]),
        .O(\a_j_reg[4]_i_8__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_j_reg[4]_i_9__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\a_j_reg[4]_i_9__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__4
       (.I0(\count_reg_reg[0]_0 [0]),
        .I1(\count_reg_reg[0]_0 [1]),
        .I2(\count_reg_reg[0]_0 [4]),
        .I3(valid),
        .I4(\count_reg_reg[0]_0 [2]),
        .I5(done),
        .O(\FSM_onehot_state_reg[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__5_n_0 ),
        .G(\count_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__5 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__14_n_0 ),
        .G(\count_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__14 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(state[1]),
        .O(\count_reg[1]_i_1__14_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__9_n_0 ),
        .G(\count_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count_reg[2]_i_1__9 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__14_n_0 ),
        .G(\count_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \count_reg[3]_i_1__14 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(state[1]),
        .O(\count_reg[3]_i_1__14_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__9_n_0 ),
        .G(\count_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count_reg[4]_i_1__9 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0507)) 
    \count_reg[4]_i_2__4 
       (.I0(\count_reg[4]_i_3__4_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\count_reg[4]_i_2__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \count_reg[4]_i_3__4 
       (.I0(\state_reg[1]_0 ),
        .I1(state[1]),
        .I2(next_state2_carry__1_n_1),
        .I3(state[0]),
        .O(\count_reg[4]_i_3__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1__4
       (.I0(state[2]),
        .I1(state[0]),
        .O(done_aux_reg_i_1__4_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__2_n_0 ),
        .G(\j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__2 
       (.I0(state[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__4_n_0 ),
        .G(\j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \j_reg[1]_i_1__4 
       (.I0(state[2]),
        .I1(\j_reg_n_0_[1] ),
        .I2(Q[0]),
        .O(\j_reg[1]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__4_n_0 ),
        .G(\j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \j_reg[2]_i_1__4 
       (.I0(state[2]),
        .I1(Q[0]),
        .I2(\j_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(\j_reg[2]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__4_n_0 ),
        .G(\j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \j_reg[3]_i_1__4 
       (.I0(state[2]),
        .I1(\j_reg_n_0_[1] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__4_n_0 ),
        .G(\j_reg[4]_i_2__4_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \j_reg[4]_i_1__4 
       (.I0(state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[3] ),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2__4 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\j_reg[4]_i_2__4_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1_n_0,next_state2_carry_i_2_n_0,next_state2_carry_i_3__4_n_0,next_state2_carry_i_4__4_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1_n_0,next_state2_carry__0_i_2_n_0,next_state2_carry__0_i_3_n_0,next_state2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry__0_i_1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry__0_i_2
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry__0_i_3
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry__0_i_4
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_4_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__4_n_0,next_state2_carry__1_i_2_n_0,next_state2_carry__1_i_3_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000057)) 
    next_state2_carry__1_i_1__4
       (.I0(Q[1]),
        .I1(\j_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[3] ),
        .I4(\j_reg_n_0_[4] ),
        .I5(next_state3),
        .O(next_state2_carry__1_i_1__4_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry__1_i_2
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry__1_i_3
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry_i_1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9669966969969669)) 
    next_state2_carry_i_10__2
       (.I0(\j_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(next_state2_carry_i_4__4_1[1]),
        .I3(\state_reg[0]_0 [1]),
        .I4(\state_reg[0]_0 [0]),
        .I5(next_state2_carry_i_4__4_1[0]),
        .O(next_state2_carry_i_10__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state2_carry_i_11__3
       (.I0(\state_reg[0]_0 [0]),
        .I1(next_state2_carry_i_4__4_1[0]),
        .I2(\state_reg[0]_0 [1]),
        .I3(next_state2_carry_i_4__4_1[1]),
        .O(next_state2_carry_i_11__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h1EE1)) 
    next_state2_carry_i_12__3
       (.I0(Q[0]),
        .I1(\j_reg_n_0_[1] ),
        .I2(Q[1]),
        .I3(next_state2_carry_i_4__4_0),
        .O(next_state2_carry_i_12__3_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00011111)) 
    next_state2_carry_i_2
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(\j_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(next_state3),
        .O(next_state2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h4200000101000100)) 
    next_state2_carry_i_3__4
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(next_state2_carry_i_6_n_0),
        .I3(next_state2_carry_0),
        .I4(next_state2_carry_1),
        .I5(next_state2_carry_2),
        .O(next_state2_carry_i_3__4_n_0));
  LUT6 #(
    .INIT(64'h104A00000000208A)) 
    next_state2_carry_i_4__4
       (.I0(next_state2_carry_i_10__2_n_0),
        .I1(next_state2_carry_i_11__3_n_0),
        .I2(next_state2_carry_2),
        .I3(next_state2_carry_i_12__3_n_0),
        .I4(Q[0]),
        .I5(next_state2_carry_3),
        .O(next_state2_carry_i_4__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    next_state2_carry_i_6
       (.I0(Q[1]),
        .I1(\j_reg_n_0_[1] ),
        .I2(Q[0]),
        .O(next_state2_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \state[0]_i_1__4 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_aux_reg_i_2__4_n_0),
        .I3(state[2]),
        .I4(reset_control),
        .O(\state[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010CC0000)) 
    \state[1]_i_1__4 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_aux_reg_i_2__4_n_0),
        .I3(state[2]),
        .I4(\count_reg[4]_i_3__4_n_0 ),
        .I5(reset_control),
        .O(\state[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[2]_i_1__1 
       (.I0(\count_reg[4]_i_3__4_n_0 ),
        .I1(state[2]),
        .I2(reset_control),
        .O(\state[2]_i_1__1_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__4_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__4_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1__1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    valid_aux_reg_i_1__4
       (.I0(state[2]),
        .I1(valid_aux_reg_i_2__4_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .O(valid_aux_reg_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h00000100)) 
    valid_aux_reg_i_2__4
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(valid_aux_reg_i_2__4_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized5
   (valid,
    \state_reg[2]_0 ,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \count_reg_reg[1] ,
    \count_reg_reg[2] ,
    \count_reg_reg[0] ,
    \FSM_onehot_state_reg[4] ,
    E,
    D,
    \state_reg[0]_0 ,
    \j_reg[1]_0 ,
    \j_reg[3]_0 ,
    Q,
    next_state2_carry__1_i_1__5_0,
    a_in_4,
    \a_j_reg[3]_i_2__3 ,
    \a_j_reg[3]_i_2__3_0 ,
    \a_j_reg[0]_i_1__4 ,
    \state_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    next_state2_carry_i_4__5_0,
    next_state2_carry_i_4__5_1,
    next_out_4,
    next_state2_carry_i_5__7_0,
    reset_control,
    clk);
  output valid;
  output [1:0]\state_reg[2]_0 ;
  output \FSM_onehot_state_reg[3] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[0] ;
  output \FSM_onehot_state_reg[4] ;
  output [0:0]E;
  output [0:0]D;
  output [2:0]\state_reg[0]_0 ;
  output \j_reg[1]_0 ;
  output \j_reg[3]_0 ;
  input [4:0]Q;
  input next_state2_carry__1_i_1__5_0;
  input [19:0]a_in_4;
  input \a_j_reg[3]_i_2__3 ;
  input \a_j_reg[3]_i_2__3_0 ;
  input [1:0]\a_j_reg[0]_i_1__4 ;
  input \state_reg[1]_0 ;
  input [4:0]\count_reg_reg[0]_0 ;
  input [0:0]next_state2_carry_i_4__5_0;
  input next_state2_carry_i_4__5_1;
  input next_out_4;
  input [4:0]next_state2_carry_i_5__7_0;
  input reset_control;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg[3]_2 ;
  wire \FSM_onehot_state_reg[3]_3 ;
  wire \FSM_onehot_state_reg[3]_4 ;
  wire \FSM_onehot_state_reg[3]_5 ;
  wire \FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [19:0]a_in_4;
  wire [1:0]\a_j_reg[0]_i_1__4 ;
  wire \a_j_reg[0]_i_4__1_n_0 ;
  wire \a_j_reg[3]_i_2__3 ;
  wire \a_j_reg[3]_i_2__3_0 ;
  wire \a_j_reg[4]_i_13__4_n_0 ;
  wire \a_j_reg[4]_i_2__5_n_0 ;
  wire \a_j_reg_n_0_[3] ;
  wire \a_j_reg_n_0_[4] ;
  wire clk;
  wire \count_reg[0]_i_1__16_n_0 ;
  wire \count_reg[1]_i_1__10_n_0 ;
  wire \count_reg[2]_i_1__11_n_0 ;
  wire \count_reg[3]_i_1__10_n_0 ;
  wire \count_reg[4]_i_1__11_n_0 ;
  wire \count_reg[4]_i_2__5_n_0 ;
  wire \count_reg[4]_i_3__5_n_0 ;
  wire \count_reg[4]_i_5__2_n_0 ;
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
  wire done_aux_reg_i_1__5_n_0;
  wire \j_reg[0]_i_1__7_n_0 ;
  wire \j_reg[1]_0 ;
  wire \j_reg[1]_i_1__5_n_0 ;
  wire \j_reg[2]_i_1__5_n_0 ;
  wire \j_reg[3]_0 ;
  wire \j_reg[3]_i_1__5_n_0 ;
  wire \j_reg[4]_i_1__5_n_0 ;
  wire \j_reg[4]_i_2__5_n_0 ;
  wire \j_reg_n_0_[2] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_4;
  wire next_state2_carry__0_i_1__7_n_0;
  wire next_state2_carry__0_i_2__7_n_0;
  wire next_state2_carry__0_i_3__7_n_0;
  wire next_state2_carry__0_i_4__7_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_i_1__5_0;
  wire next_state2_carry__1_i_1__5_n_0;
  wire next_state2_carry__1_i_2__7_n_0;
  wire next_state2_carry__1_i_3__7_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_10__3_n_0;
  wire next_state2_carry_i_1__7_n_0;
  wire next_state2_carry_i_2__7_n_0;
  wire next_state2_carry_i_3__5_n_0;
  wire [0:0]next_state2_carry_i_4__5_0;
  wire next_state2_carry_i_4__5_1;
  wire next_state2_carry_i_4__5_n_0;
  wire [4:0]next_state2_carry_i_5__7_0;
  wire next_state2_carry_i_5__7_n_0;
  wire next_state2_carry_i_9__5_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [4:1]next_state6;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1__5_n_0 ;
  wire \state[0]_i_2__4_n_0 ;
  wire \state[1]_i_1__5_n_0 ;
  wire \state[1]_i_2__3_n_0 ;
  wire \state[2]_i_1__2_n_0 ;
  wire [2:0]\state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire [1:0]\state_reg[2]_0 ;
  wire valid;
  wire valid_aux_reg_i_1__5_n_0;
  wire valid_aux_reg_i_2__5_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__5 
       (.I0(\count_reg_reg[0]_0 [2]),
        .I1(valid),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_state[4]_i_2__5 
       (.I0(\count_reg_reg[0]_0 [0]),
        .I1(\count_reg_reg[0]_0 [1]),
        .I2(\count_reg_reg[0]_0 [3]),
        .I3(next_out_4),
        .I4(\count_reg_reg[0]_0 [2]),
        .I5(done),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_5__7_0[0]),
        .G(\a_j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hEB28EBEBEB282828)) 
    \a_j_reg[0]_i_2__4 
       (.I0(\a_j_reg[0]_i_4__1_n_0 ),
        .I1(\a_j_reg[0]_i_1__4 [0]),
        .I2(\a_j_reg[0]_i_1__4 [1]),
        .I3(a_in_4[12]),
        .I4(\a_j_reg[3]_i_2__3 ),
        .I5(a_in_4[4]),
        .O(\FSM_onehot_state_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hEB28EBEBEB282828)) 
    \a_j_reg[0]_i_3__4 
       (.I0(\FSM_onehot_state_reg[3]_1 ),
        .I1(\a_j_reg[0]_i_1__4 [0]),
        .I2(\a_j_reg[0]_i_1__4 [1]),
        .I3(a_in_4[14]),
        .I4(\a_j_reg[3]_i_2__3 ),
        .I5(a_in_4[6]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \a_j_reg[0]_i_4__1 
       (.I0(a_in_4[8]),
        .I1(\a_j_reg[3]_i_2__3 ),
        .I2(a_in_4[0]),
        .I3(\a_j_reg[3]_i_2__3_0 ),
        .I4(a_in_4[16]),
        .O(\a_j_reg[0]_i_4__1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_5__7_0[1]),
        .G(\a_j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \a_j_reg[1]_i_3__4 
       (.I0(a_in_4[9]),
        .I1(\a_j_reg[3]_i_2__3 ),
        .I2(a_in_4[1]),
        .I3(\a_j_reg[3]_i_2__3_0 ),
        .I4(a_in_4[17]),
        .O(\FSM_onehot_state_reg[3]_2 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_5__7_0[2]),
        .G(\a_j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \a_j_reg[2]_i_3__4 
       (.I0(a_in_4[10]),
        .I1(\a_j_reg[3]_i_2__3 ),
        .I2(a_in_4[2]),
        .I3(\a_j_reg[3]_i_2__3_0 ),
        .I4(a_in_4[18]),
        .O(\FSM_onehot_state_reg[3]_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_5__7_0[3]),
        .G(\a_j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\a_j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \a_j_reg[3]_i_3__4 
       (.I0(a_in_4[11]),
        .I1(\a_j_reg[3]_i_2__3 ),
        .I2(a_in_4[3]),
        .I3(\a_j_reg[3]_i_2__3_0 ),
        .I4(a_in_4[19]),
        .O(\FSM_onehot_state_reg[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_5__7_0[4]),
        .G(\a_j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\a_j_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_10__4 
       (.I0(a_in_4[2]),
        .I1(\a_j_reg[3]_i_2__3_0 ),
        .I2(a_in_4[18]),
        .I3(\a_j_reg[3]_i_2__3 ),
        .I4(a_in_4[10]),
        .O(\count_reg_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_12__4 
       (.I0(a_in_4[1]),
        .I1(\a_j_reg[3]_i_2__3_0 ),
        .I2(a_in_4[17]),
        .I3(\a_j_reg[3]_i_2__3 ),
        .I4(a_in_4[9]),
        .O(\count_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_13__4 
       (.I0(a_in_4[3]),
        .I1(\a_j_reg[3]_i_2__3_0 ),
        .I2(a_in_4[19]),
        .I3(\a_j_reg[3]_i_2__3 ),
        .I4(a_in_4[11]),
        .O(\a_j_reg[4]_i_13__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \a_j_reg[4]_i_2__5 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\a_j_reg[4]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8B8FF00B8B800)) 
    \a_j_reg[4]_i_4__4 
       (.I0(a_in_4[13]),
        .I1(\a_j_reg[3]_i_2__3 ),
        .I2(a_in_4[5]),
        .I3(\a_j_reg[0]_i_1__4 [0]),
        .I4(\a_j_reg[0]_i_1__4 [1]),
        .I5(\count_reg_reg[1] ),
        .O(\FSM_onehot_state_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hFFB8B8FF00B8B800)) 
    \a_j_reg[4]_i_5__4 
       (.I0(a_in_4[15]),
        .I1(\a_j_reg[3]_i_2__3 ),
        .I2(a_in_4[7]),
        .I3(\a_j_reg[0]_i_1__4 [0]),
        .I4(\a_j_reg[0]_i_1__4 [1]),
        .I5(\a_j_reg[4]_i_13__4_n_0 ),
        .O(\FSM_onehot_state_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_7__4 
       (.I0(a_in_4[0]),
        .I1(\a_j_reg[3]_i_2__3_0 ),
        .I2(a_in_4[16]),
        .I3(\a_j_reg[3]_i_2__3 ),
        .I4(a_in_4[8]),
        .O(\count_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \a_j_reg[4]_i_7__5 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [1]),
        .O(\j_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h619E)) 
    \a_j_reg[4]_i_8__5 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [1]),
        .I3(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    acks_out_reg_i_2__5
       (.I0(\count_reg_reg[0]_0 [4]),
        .I1(\count_reg_reg[0]_0 [0]),
        .I2(\count_reg_reg[0]_0 [2]),
        .I3(valid),
        .I4(done),
        .I5(\count_reg_reg[0]_0 [1]),
        .O(\FSM_onehot_state_reg[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__16_n_0 ),
        .G(\count_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__16 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__16_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__10_n_0 ),
        .G(\count_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1__10 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count_reg[1]_i_1__10_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__11_n_0 ),
        .G(\count_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \count_reg[2]_i_1__11 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count_reg[2]_i_1__11_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__10_n_0 ),
        .G(\count_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \count_reg[3]_i_1__10 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\count_reg[3]_i_1__10_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__11_n_0 ),
        .G(\count_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \count_reg[4]_i_1__11 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\count_reg[4]_i_1__11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h5101)) 
    \count_reg[4]_i_2__5 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\count_reg[4]_i_3__5_n_0 ),
        .O(\count_reg[4]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888880880)) 
    \count_reg[4]_i_3__5 
       (.I0(state[1]),
        .I1(next_state2_carry__1_n_1),
        .I2(Q[3]),
        .I3(\a_j_reg_n_0_[3] ),
        .I4(\state_reg[1]_0 ),
        .I5(\count_reg[4]_i_5__2_n_0 ),
        .O(\count_reg[4]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[4]_i_5__2 
       (.I0(\a_j_reg_n_0_[4] ),
        .I1(Q[4]),
        .O(\count_reg[4]_i_5__2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1__5
       (.I0(state[0]),
        .I1(state[2]),
        .O(done_aux_reg_i_1__5_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__7_n_0 ),
        .G(\j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__7 
       (.I0(state[2]),
        .I1(\state_reg[2]_0 [0]),
        .O(\j_reg[0]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__5_n_0 ),
        .G(\j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[2]_0 [1]));
  LUT3 #(
    .INIT(8'h28)) 
    \j_reg[1]_i_1__5 
       (.I0(state[2]),
        .I1(\state_reg[2]_0 [1]),
        .I2(\state_reg[2]_0 [0]),
        .O(\j_reg[1]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__5_n_0 ),
        .G(\j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \j_reg[2]_i_1__5 
       (.I0(state[2]),
        .I1(\j_reg_n_0_[2] ),
        .I2(\state_reg[2]_0 [1]),
        .I3(\state_reg[2]_0 [0]),
        .O(\j_reg[2]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__5_n_0 ),
        .G(\j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \j_reg[3]_i_1__5 
       (.I0(state[2]),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\state_reg[2]_0 [0]),
        .I4(\state_reg[2]_0 [1]),
        .O(\j_reg[3]_i_1__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__5_n_0 ),
        .G(\j_reg[4]_i_2__5_n_0 ),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \j_reg[4]_i_1__5 
       (.I0(state[2]),
        .I1(\j_reg_n_0_[4] ),
        .I2(\j_reg_n_0_[3] ),
        .I3(\state_reg[2]_0 [1]),
        .I4(\state_reg[2]_0 [0]),
        .I5(\j_reg_n_0_[2] ),
        .O(\j_reg[4]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2__5 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\j_reg[4]_i_2__5_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__7_n_0,next_state2_carry_i_2__7_n_0,next_state2_carry_i_3__5_n_0,next_state2_carry_i_4__5_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__7_n_0,next_state2_carry__0_i_2__7_n_0,next_state2_carry__0_i_3__7_n_0,next_state2_carry__0_i_4__7_n_0}));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry__0_i_1__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry__0_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry__0_i_2__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry__0_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry__0_i_3__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry__0_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry__0_i_4__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry__0_i_4__7_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__5_n_0,next_state2_carry__1_i_2__7_n_0,next_state2_carry__1_i_3__7_n_0}));
  LUT4 #(
    .INIT(16'h0002)) 
    next_state2_carry__1_i_1__5
       (.I0(next_state2_carry_i_5__7_n_0),
        .I1(\j_reg_n_0_[4] ),
        .I2(\j_reg_n_0_[3] ),
        .I3(\j_reg_n_0_[2] ),
        .O(next_state2_carry__1_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry__1_i_2__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry__1_i_2__7_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry__1_i_3__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry__1_i_3__7_n_0));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    next_state2_carry_i_10__3
       (.I0(\state_reg[0]_0 [2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\state_reg[0]_0 [0]),
        .I4(Q[1]),
        .I5(\state_reg[0]_0 [1]),
        .O(next_state2_carry_i_10__3_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    next_state2_carry_i_11__4
       (.I0(\state_reg[0]_0 [0]),
        .I1(Q[0]),
        .I2(\state_reg[0]_0 [1]),
        .I3(Q[1]),
        .O(next_state6[1]));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry_i_1__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry_i_1__7_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    next_state2_carry_i_2__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state2_carry_i_5__7_n_0),
        .O(next_state2_carry_i_2__7_n_0));
  LUT6 #(
    .INIT(64'h0042010000010001)) 
    next_state2_carry_i_3__5
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(next_state6[3]),
        .I4(next_state2_carry__1_i_1__5_0),
        .I5(next_state6[4]),
        .O(next_state2_carry_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h9600)) 
    next_state2_carry_i_4__5
       (.I0(Q[0]),
        .I1(\state_reg[0]_0 [0]),
        .I2(\state_reg[2]_0 [0]),
        .I3(next_state2_carry_i_9__5_n_0),
        .O(next_state2_carry_i_4__5_n_0));
  LUT6 #(
    .INIT(64'hEF7979EFFFFFFFFF)) 
    next_state2_carry_i_5__7
       (.I0(next_state2_carry_i_10__3_n_0),
        .I1(Q[3]),
        .I2(\a_j_reg_n_0_[3] ),
        .I3(\a_j_reg_n_0_[4] ),
        .I4(Q[4]),
        .I5(next_state2_carry__1_i_1__5_0),
        .O(next_state2_carry_i_5__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_6__0
       (.I0(next_state2_carry_i_10__3_n_0),
        .I1(\a_j_reg_n_0_[3] ),
        .I2(Q[3]),
        .O(next_state6[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    next_state2_carry_i_8__3
       (.I0(next_state2_carry_i_10__3_n_0),
        .I1(Q[3]),
        .I2(\a_j_reg_n_0_[3] ),
        .I3(\a_j_reg_n_0_[4] ),
        .I4(Q[4]),
        .O(next_state6[4]));
  LUT6 #(
    .INIT(64'h2049660049200066)) 
    next_state2_carry_i_9__5
       (.I0(\state_reg[2]_0 [1]),
        .I1(next_state6[1]),
        .I2(next_state2_carry_i_4__5_1),
        .I3(next_state2_carry_i_4__5_0),
        .I4(next_state6[4]),
        .I5(\j_reg_n_0_[2] ),
        .O(next_state2_carry_i_9__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \state[0]_i_1__5 
       (.I0(state[2]),
        .I1(\state[0]_i_2__4_n_0 ),
        .I2(state[1]),
        .I3(reset_control),
        .O(\state[0]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \state[0]_i_2__4 
       (.I0(state[0]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[1] ),
        .O(\state[0]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000034447)) 
    \state[1]_i_1__5 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\state[1]_i_2__3_n_0 ),
        .I4(\count_reg[4]_i_3__5_n_0 ),
        .I5(reset_control),
        .O(\state[1]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \state[1]_i_2__3 
       (.I0(state[2]),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\state[1]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \state[2]_i_1__2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\count_reg[4]_i_3__5_n_0 ),
        .I3(reset_control),
        .O(\state[2]_i_1__2_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__5_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__5_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1__2_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h10)) 
    valid_aux_reg_i_1__5
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_aux_reg_i_2__5_n_0),
        .O(valid_aux_reg_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h5555575555555555)) 
    valid_aux_reg_i_2__5
       (.I0(state[2]),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[0] ),
        .O(valid_aux_reg_i_2__5_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized6
   (valid,
    Q,
    \j_reg[0]_0 ,
    D,
    \j_reg[0]_1 ,
    \FSM_onehot_state_reg[3] ,
    \j_reg[2]_0 ,
    E,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[2] ,
    \state_reg[0]_0 ,
    S,
    \a_j_reg[0]_0 ,
    a_in_3,
    \a_j_reg[0]_i_1__7_0 ,
    \a_j_reg[0]_i_1__7_1 ,
    next_state3,
    \state_reg[1]_0 ,
    next_state2_carry_0,
    next_state2_carry_1,
    next_state2_carry_2,
    next_state2_carry_i_4__6_0,
    \a_j_reg[0]_1 ,
    \a_j_reg[0]_2 ,
    a_in_2,
    \count_reg_reg[0] ,
    next_out_3,
    next_state2_carry_i_6__1,
    reset_control,
    clk);
  output valid;
  output [4:0]Q;
  output \j_reg[0]_0 ;
  output [4:0]D;
  output \j_reg[0]_1 ;
  output \FSM_onehot_state_reg[3] ;
  output \j_reg[2]_0 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[0] ;
  output [0:0]\FSM_onehot_state_reg[2] ;
  output [4:0]\state_reg[0]_0 ;
  input [0:0]S;
  input [1:0]\a_j_reg[0]_0 ;
  input [14:0]a_in_3;
  input \a_j_reg[0]_i_1__7_0 ;
  input \a_j_reg[0]_i_1__7_1 ;
  input [0:0]next_state3;
  input \state_reg[1]_0 ;
  input next_state2_carry_0;
  input next_state2_carry_1;
  input next_state2_carry_2;
  input next_state2_carry_i_4__6_0;
  input \a_j_reg[0]_1 ;
  input \a_j_reg[0]_2 ;
  input [3:0]a_in_2;
  input [4:0]\count_reg_reg[0] ;
  input next_out_3;
  input [3:0]next_state2_carry_i_6__1;
  input reset_control;
  input clk;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire [4:0]Q;
  wire [0:0]S;
  wire [3:0]a_in_2;
  wire [14:0]a_in_3;
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
  wire \a_j_reg[4]_i_2__6_n_0 ;
  wire \a_j_reg[4]_i_3__4_n_0 ;
  wire \a_j_reg[4]_i_4__5_n_0 ;
  wire \a_j_reg[4]_i_5__5_n_0 ;
  wire \a_j_reg[4]_i_6__5_n_0 ;
  wire clk;
  wire \count_reg[0]_i_1__7_n_0 ;
  wire \count_reg[1]_i_1__15_n_0 ;
  wire \count_reg[2]_i_1__13_n_0 ;
  wire \count_reg[3]_i_1__15_n_0 ;
  wire \count_reg[4]_i_1__13_n_0 ;
  wire \count_reg[4]_i_2__6_n_0 ;
  wire \count_reg[4]_i_3__6_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire [4:0]\count_reg_reg[0] ;
  wire done;
  wire done_aux_reg_i_1__6_n_0;
  wire \j_reg[0]_0 ;
  wire \j_reg[0]_1 ;
  wire \j_reg[0]_i_1__3_n_0 ;
  wire \j_reg[1]_i_1__6_n_0 ;
  wire \j_reg[2]_0 ;
  wire \j_reg[2]_i_1__6_n_0 ;
  wire \j_reg[3]_i_1__6_n_0 ;
  wire \j_reg[4]_i_1__6_n_0 ;
  wire \j_reg[4]_i_2__6_n_0 ;
  wire next_out_3;
  wire next_state2_carry_0;
  wire next_state2_carry_1;
  wire next_state2_carry_2;
  wire next_state2_carry__0_i_1__0_n_0;
  wire next_state2_carry__0_i_2__0_n_0;
  wire next_state2_carry__0_i_3__0_n_0;
  wire next_state2_carry__0_i_4__0_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_i_1__6_n_0;
  wire next_state2_carry__1_i_2__0_n_0;
  wire next_state2_carry__1_i_3__0_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_10__4_n_0;
  wire next_state2_carry_i_1__0_n_0;
  wire next_state2_carry_i_2__0_n_0;
  wire next_state2_carry_i_4__6_0;
  wire next_state2_carry_i_4__6_n_0;
  wire [3:0]next_state2_carry_i_6__1;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [0:0]next_state3;
  wire reset_control;
  wire [2:0]state;
  wire \state[0]_i_1__6_n_0 ;
  wire \state[1]_i_1__6_n_0 ;
  wire \state[2]_i_1__3_n_0 ;
  wire [4:0]\state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire valid;
  wire valid_aux_reg_i_1__6_n_0;
  wire valid_aux_reg_i_2__6_n_0;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__6 
       (.I0(valid),
        .I1(\count_reg_reg[0] [2]),
        .O(\FSM_onehot_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__6 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(next_out_3),
        .I3(\count_reg_reg[0] [3]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[0] 
       (.CLR(1'b0),
        .D(\a_j_reg[0]_i_1__5_n_0 ),
        .G(\a_j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [0]));
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
    .INIT(64'hFB3BCB0BF838C808)) 
    \a_j_reg[0]_i_1__7 
       (.I0(\a_j_reg[1]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [0]),
        .I2(\a_j_reg[0]_0 [1]),
        .I3(\a_j_reg[3]_i_2__4_n_0 ),
        .I4(\a_j_reg[0]_i_2__5_n_0 ),
        .I5(\a_j_reg[2]_i_2__4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[0]_i_2__5 
       (.I0(a_in_3[4]),
        .I1(a_in_3[12]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[0]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[8]),
        .O(\a_j_reg[0]_i_2__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__1[0]),
        .G(\a_j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hFB3BCB0BF838C808)) 
    \a_j_reg[1]_i_1__7 
       (.I0(\a_j_reg[2]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [0]),
        .I2(\a_j_reg[0]_0 [1]),
        .I3(\a_j_reg[4]_i_3__4_n_0 ),
        .I4(\a_j_reg[1]_i_2__4_n_0 ),
        .I5(\a_j_reg[3]_i_2__4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2__4 
       (.I0(a_in_3[5]),
        .I1(a_in_3[13]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[1]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[9]),
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
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \a_j_reg[1]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[0]_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__1[1]),
        .G(\a_j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'hFB3BCB0BF838C808)) 
    \a_j_reg[2]_i_1__7 
       (.I0(\a_j_reg[3]_i_2__4_n_0 ),
        .I1(\a_j_reg[0]_0 [0]),
        .I2(\a_j_reg[0]_0 [1]),
        .I3(\a_j_reg[4]_i_5__5_n_0 ),
        .I4(\a_j_reg[2]_i_2__4_n_0 ),
        .I5(\a_j_reg[4]_i_3__4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[2]_i_2__4 
       (.I0(a_in_3[6]),
        .I1(a_in_3[14]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[2]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[10]),
        .O(\a_j_reg[2]_i_2__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__1[2]),
        .G(\a_j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'hFB3BCB0BF838C808)) 
    \a_j_reg[3]_i_1__7 
       (.I0(\a_j_reg[4]_i_3__4_n_0 ),
        .I1(\a_j_reg[0]_0 [0]),
        .I2(\a_j_reg[0]_0 [1]),
        .I3(\a_j_reg[4]_i_4__5_n_0 ),
        .I4(\a_j_reg[3]_i_2__4_n_0 ),
        .I5(\a_j_reg[4]_i_5__5_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[3]_i_2__4 
       (.I0(a_in_3[7]),
        .I1(\a_j_reg[0]_i_1__7_0 ),
        .I2(a_in_3[3]),
        .I3(\a_j_reg[0]_i_1__7_1 ),
        .I4(a_in_3[11]),
        .O(\a_j_reg[3]_i_2__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(next_state2_carry_i_6__1[3]),
        .G(\a_j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\state_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'hEFECE3E02F2C2320)) 
    \a_j_reg[4]_i_1__7 
       (.I0(\a_j_reg[4]_i_3__4_n_0 ),
        .I1(\a_j_reg[0]_0 [0]),
        .I2(\a_j_reg[0]_0 [1]),
        .I3(\a_j_reg[4]_i_4__5_n_0 ),
        .I4(\a_j_reg[4]_i_5__5_n_0 ),
        .I5(\a_j_reg[4]_i_6__5_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \a_j_reg[4]_i_2__6 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\a_j_reg[4]_i_2__6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_3__4 
       (.I0(a_in_3[8]),
        .I1(a_in_3[0]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[4]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[12]),
        .O(\a_j_reg[4]_i_3__4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_4__5 
       (.I0(a_in_3[10]),
        .I1(a_in_3[2]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[6]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[14]),
        .O(\a_j_reg[4]_i_4__5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[4]_i_5__5 
       (.I0(a_in_3[9]),
        .I1(a_in_3[1]),
        .I2(\a_j_reg[0]_i_1__7_0 ),
        .I3(a_in_3[5]),
        .I4(\a_j_reg[0]_i_1__7_1 ),
        .I5(a_in_3[13]),
        .O(\a_j_reg[4]_i_5__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \a_j_reg[4]_i_6__5 
       (.I0(a_in_3[11]),
        .I1(\a_j_reg[0]_i_1__7_1 ),
        .I2(a_in_3[3]),
        .I3(\a_j_reg[0]_i_1__7_0 ),
        .I4(a_in_3[7]),
        .O(\a_j_reg[4]_i_6__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__6
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [4]),
        .I3(valid),
        .I4(\count_reg_reg[0] [2]),
        .I5(done),
        .O(\FSM_onehot_state_reg[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__7_n_0 ),
        .G(\count_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__7 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__15_n_0 ),
        .G(\count_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__15 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(state[1]),
        .O(\count_reg[1]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__13_n_0 ),
        .G(\count_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count_reg[2]_i_1__13 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__13_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__15_n_0 ),
        .G(\count_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \count_reg[3]_i_1__15 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(state[1]),
        .O(\count_reg[3]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__13_n_0 ),
        .G(\count_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count_reg[4]_i_1__13 
       (.I0(state[1]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0507)) 
    \count_reg[4]_i_2__6 
       (.I0(\count_reg[4]_i_3__6_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\count_reg[4]_i_2__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \count_reg[4]_i_3__6 
       (.I0(\state_reg[1]_0 ),
        .I1(state[1]),
        .I2(next_state2_carry__1_n_1),
        .I3(state[0]),
        .O(\count_reg[4]_i_3__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(state[1]),
        .G(done_aux_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_aux_reg_i_1__6
       (.I0(state[2]),
        .I1(state[0]),
        .O(done_aux_reg_i_1__6_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__3_n_0 ),
        .G(\j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__3 
       (.I0(state[2]),
        .I1(Q[0]),
        .O(\j_reg[0]_i_1__3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__6_n_0 ),
        .G(\j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state[2]),
        .O(\j_reg[1]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__6_n_0 ),
        .G(\j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \j_reg[2]_i_1__6 
       (.I0(state[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\j_reg[2]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__6_n_0 ),
        .G(\j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \j_reg[3]_i_1__6 
       (.I0(state[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\j_reg[3]_i_1__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__6_n_0 ),
        .G(\j_reg[4]_i_2__6_n_0 ),
        .GE(1'b1),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \j_reg[4]_i_1__6 
       (.I0(state[2]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\j_reg[4]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \j_reg[4]_i_2__6 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\j_reg[4]_i_2__6_n_0 ));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__0_n_0,next_state2_carry_i_2__0_n_0,S,next_state2_carry_i_4__6_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__0_n_0,next_state2_carry__0_i_2__0_n_0,next_state2_carry__0_i_3__0_n_0,next_state2_carry__0_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry__0_i_1__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry__0_i_2__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry__0_i_3__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry__0_i_4__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry__0_i_4__0_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__6_n_0,next_state2_carry__1_i_2__0_n_0,next_state2_carry__1_i_3__0_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    next_state2_carry__1_i_1__6
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(next_state3),
        .O(next_state2_carry__1_i_1__6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry__1_i_2__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry__1_i_3__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry__1_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    next_state2_carry_i_10__4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(next_state2_carry_i_4__6_0),
        .O(next_state2_carry_i_10__4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry_i_1__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000015)) 
    next_state2_carry_i_2__0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(next_state3),
        .O(next_state2_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0208802001081040)) 
    next_state2_carry_i_4__6
       (.I0(next_state2_carry_i_10__4_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(next_state2_carry_0),
        .I4(next_state2_carry_1),
        .I5(next_state2_carry_2),
        .O(next_state2_carry_i_4__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h15)) 
    next_state2_carry_i_9__7
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\j_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \state[0]_i_1__6 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_aux_reg_i_2__6_n_0),
        .I3(state[2]),
        .I4(reset_control),
        .O(\state[0]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010CC0000)) 
    \state[1]_i_1__6 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(valid_aux_reg_i_2__6_n_0),
        .I3(state[2]),
        .I4(\count_reg[4]_i_3__6_n_0 ),
        .I5(reset_control),
        .O(\state[1]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[2]_i_1__3 
       (.I0(\count_reg[4]_i_3__6_n_0 ),
        .I1(state[2]),
        .I2(reset_control),
        .O(\state[2]_i_1__3_n_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1__6_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1__6_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1__3_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(state[2]),
        .G(valid_aux_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    valid_aux_reg_i_1__6
       (.I0(state[2]),
        .I1(valid_aux_reg_i_2__6_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .O(valid_aux_reg_i_1__6_n_0));
  LUT5 #(
    .INIT(32'h00000100)) 
    valid_aux_reg_i_2__6
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[3] ),
        .O(valid_aux_reg_i_2__6_n_0));
endmodule

(* ORIG_REF_NAME = "ctrl_logic_fsm" *) 
module design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized7
   (valid,
    D,
    \count_reg_reg[3] ,
    \count_reg_reg[4] ,
    \FSM_onehot_state_reg[1]_0 ,
    E,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    Q,
    \a_j_reg[0]_i_1__5 ,
    \a_j_reg[3]_i_2__5_0 ,
    \a_j_reg[0]_i_1__5_0 ,
    \a_j_reg[0]_i_1__5_1 ,
    \a_j_reg[0]_i_1__5_2 ,
    next_state3,
    next_state2_carry_0,
    next_state2_carry_i_4__7_0,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    next_state2_carry_i_4__7_1,
    next_state2_carry_i_10__5_0,
    \a_j_reg[0]_i_1__6_0 ,
    \count_reg_reg[0] ,
    next_out_2,
    SR,
    clk);
  output valid;
  output [3:0]D;
  output \count_reg_reg[3] ;
  output \count_reg_reg[4] ;
  output [4:0]\FSM_onehot_state_reg[1]_0 ;
  output [0:0]E;
  output \FSM_onehot_state_reg[0]_0 ;
  output [0:0]\FSM_onehot_state_reg[2]_0 ;
  input [2:0]Q;
  input [4:0]\a_j_reg[0]_i_1__5 ;
  input [4:0]\a_j_reg[3]_i_2__5_0 ;
  input \a_j_reg[0]_i_1__5_0 ;
  input \a_j_reg[0]_i_1__5_1 ;
  input \a_j_reg[0]_i_1__5_2 ;
  input [0:0]next_state3;
  input next_state2_carry_0;
  input next_state2_carry_i_4__7_0;
  input \FSM_onehot_state_reg[3]_0 ;
  input [2:0]\FSM_onehot_state_reg[3]_1 ;
  input next_state2_carry_i_4__7_1;
  input next_state2_carry_i_10__5_0;
  input [4:0]\a_j_reg[0]_i_1__6_0 ;
  input [4:0]\count_reg_reg[0] ;
  input next_out_2;
  input [0:0]SR;
  input clk;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__7_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1__7_n_0 ;
  wire \FSM_onehot_state[4]_i_1__8_n_0 ;
  wire \FSM_onehot_state[4]_i_2__7_n_0 ;
  wire \FSM_onehot_state[4]_i_3__8_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [4:0]\FSM_onehot_state_reg[1]_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire [2:0]\FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire a_j;
  wire [4:0]\a_j_reg[0]_i_1__5 ;
  wire \a_j_reg[0]_i_1__5_0 ;
  wire \a_j_reg[0]_i_1__5_1 ;
  wire \a_j_reg[0]_i_1__5_2 ;
  wire [4:0]\a_j_reg[0]_i_1__6_0 ;
  wire \a_j_reg[0]_i_1__6_n_0 ;
  wire \a_j_reg[0]_i_2__7_n_0 ;
  wire \a_j_reg[1]_i_1__6_n_0 ;
  wire \a_j_reg[2]_i_1__6_n_0 ;
  wire \a_j_reg[2]_i_2__5_n_0 ;
  wire \a_j_reg[2]_i_2__6_n_0 ;
  wire \a_j_reg[3]_i_1__6_n_0 ;
  wire [4:0]\a_j_reg[3]_i_2__5_0 ;
  wire \a_j_reg[3]_i_2__5_n_0 ;
  wire \a_j_reg[4]_i_1__6_n_0 ;
  wire \a_j_reg[4]_i_2__7_n_0 ;
  wire \a_j_reg[4]_i_3__5_n_0 ;
  wire \a_j_reg[4]_i_4__6_n_0 ;
  wire \a_j_reg[4]_i_5__6_n_0 ;
  wire \a_j_reg[4]_i_6__6_n_0 ;
  wire clk;
  wire count;
  wire \count_reg[0]_i_1__8_n_0 ;
  wire \count_reg[1]_i_1__16_n_0 ;
  wire \count_reg[2]_i_1__15_n_0 ;
  wire \count_reg[3]_i_1__16_n_0 ;
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
  wire \j_reg[0]_i_1__4_n_0 ;
  wire \j_reg[1]_i_1__7_n_0 ;
  wire \j_reg[2]_i_1__7_n_0 ;
  wire \j_reg[3]_i_1__7_n_0 ;
  wire \j_reg[4]_i_1__7_n_0 ;
  wire \j_reg_n_0_[0] ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[2] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire next_out_2;
  wire next_state2_carry_0;
  wire next_state2_carry__0_i_1__1_n_0;
  wire next_state2_carry__0_i_2__1_n_0;
  wire next_state2_carry__0_i_3__1_n_0;
  wire next_state2_carry__0_i_4__1_n_0;
  wire next_state2_carry__0_n_0;
  wire next_state2_carry__0_n_1;
  wire next_state2_carry__0_n_2;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry__1_i_1__7_n_0;
  wire next_state2_carry__1_i_2__1_n_0;
  wire next_state2_carry__1_i_3__1_n_0;
  wire next_state2_carry__1_n_1;
  wire next_state2_carry__1_n_2;
  wire next_state2_carry__1_n_3;
  wire next_state2_carry_i_10__5_0;
  wire next_state2_carry_i_10__5_n_0;
  wire next_state2_carry_i_12__4_n_0;
  wire next_state2_carry_i_1__1_n_0;
  wire next_state2_carry_i_2__1_n_0;
  wire next_state2_carry_i_3__7_n_0;
  wire next_state2_carry_i_4__7_0;
  wire next_state2_carry_i_4__7_1;
  wire next_state2_carry_i_4__7_n_0;
  wire next_state2_carry_i_9__6_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire [0:0]next_state3;
  wire valid;
  wire valid_aux;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[1]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_1__7_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_2__7_n_0 ),
        .O(\FSM_onehot_state[3]_i_1__7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1__8 
       (.I0(valid),
        .I1(\count_reg_reg[0] [2]),
        .O(\FSM_onehot_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[4]_i_1__8 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[4]_i_2__7_n_0 ),
        .I2(\FSM_onehot_state[4]_i_3__8_n_0 ),
        .O(\FSM_onehot_state[4]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h09000009FFFFFFFF)) 
    \FSM_onehot_state[4]_i_2__7 
       (.I0(\FSM_onehot_state_reg[1]_0 [4]),
        .I1(\FSM_onehot_state_reg[3]_1 [2]),
        .I2(\FSM_onehot_state_reg[3]_0 ),
        .I3(\FSM_onehot_state_reg[3]_1 [1]),
        .I4(\FSM_onehot_state_reg[1]_0 [3]),
        .I5(next_state2_carry__1_n_1),
        .O(\FSM_onehot_state[4]_i_2__7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2__8 
       (.I0(\count_reg_reg[0] [2]),
        .I1(done),
        .I2(next_out_2),
        .I3(\count_reg_reg[0] [3]),
        .I4(\count_reg_reg[0] [0]),
        .I5(\count_reg_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \FSM_onehot_state[4]_i_3__8 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_3__8_n_0 ));
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
        .D(\FSM_onehot_state[4]_i_1__8_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
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
       (.I0(\a_j_reg[0]_i_1__6_0 [3]),
        .I1(\j_reg_n_0_[1] ),
        .I2(\a_j_reg[0]_i_1__6_0 [1]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\a_j_reg[0]_i_2__7_n_0 ),
        .O(\a_j_reg[0]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \a_j_reg[0]_i_2__6 
       (.I0(\a_j_reg[0]_i_1__5 [4]),
        .I1(\a_j_reg[0]_i_1__5_1 ),
        .I2(\a_j_reg[0]_i_1__5 [0]),
        .I3(\a_j_reg[0]_i_1__5_2 ),
        .I4(\a_j_reg[3]_i_2__5_0 [3]),
        .I5(Q[1]),
        .O(\count_reg_reg[4] ));
  LUT6 #(
    .INIT(64'hEBEBEB282828EB28)) 
    \a_j_reg[0]_i_2__7 
       (.I0(\a_j_reg[0]_i_1__6_0 [2]),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[0]_i_1__6_0 [0]),
        .I4(\j_reg_n_0_[2] ),
        .I5(\a_j_reg[0]_i_1__6_0 [4]),
        .O(\a_j_reg[0]_i_2__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[1] 
       (.CLR(1'b0),
        .D(\a_j_reg[1]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[1]_i_1__5 
       (.I0(\count_reg_reg[3] ),
        .I1(Q[0]),
        .I2(\a_j_reg[2]_i_2__5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[1]_i_1__6 
       (.I0(\a_j_reg[2]_i_2__6_n_0 ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\a_j_reg[0]_i_1__6_0 [3]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\a_j_reg[0]_i_1__6_0 [1]),
        .O(\a_j_reg[1]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \a_j_reg[1]_i_2__5 
       (.I0(\a_j_reg[0]_i_1__5 [3]),
        .I1(\a_j_reg[3]_i_2__5_0 [2]),
        .I2(Q[1]),
        .I3(\a_j_reg[0]_i_1__5_0 ),
        .I4(\a_j_reg[0]_i_1__5_1 ),
        .I5(\a_j_reg[3]_i_2__5_0 [0]),
        .O(\count_reg_reg[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[2] 
       (.CLR(1'b0),
        .D(\a_j_reg[2]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[2]_i_1__5 
       (.I0(\a_j_reg[2]_i_2__5_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[3]_i_2__5_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \a_j_reg[2]_i_1__6 
       (.I0(\a_j_reg[0]_i_1__6_0 [1]),
        .I1(\j_reg_n_0_[1] ),
        .I2(\a_j_reg[0]_i_1__6_0 [3]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\a_j_reg[2]_i_2__6_n_0 ),
        .O(\a_j_reg[2]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hAAFCAACFAA0CAAC0)) 
    \a_j_reg[2]_i_2__5 
       (.I0(\a_j_reg[4]_i_5__6_n_0 ),
        .I1(\a_j_reg[0]_i_1__5 [2]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\a_j_reg[3]_i_2__5_0 [1]),
        .O(\a_j_reg[2]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8E2FF00B8E200)) 
    \a_j_reg[2]_i_2__6 
       (.I0(\a_j_reg[0]_i_1__6_0 [4]),
        .I1(\j_reg_n_0_[2] ),
        .I2(\a_j_reg[0]_i_1__6_0 [0]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\j_reg_n_0_[1] ),
        .I5(\a_j_reg[0]_i_1__6_0 [2]),
        .O(\a_j_reg[2]_i_2__6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[3] 
       (.CLR(1'b0),
        .D(\a_j_reg[3]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[3]_i_1__5 
       (.I0(\a_j_reg[3]_i_2__5_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_3__5_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[3]_i_1__6 
       (.I0(\a_j_reg[4]_i_2__7_n_0 ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\a_j_reg[0]_i_1__6_0 [1]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\a_j_reg[0]_i_1__6_0 [3]),
        .O(\a_j_reg[3]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB88B8B888)) 
    \a_j_reg[3]_i_2__5 
       (.I0(\a_j_reg[4]_i_6__6_n_0 ),
        .I1(Q[1]),
        .I2(\a_j_reg[0]_i_1__5 [3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\a_j_reg[3]_i_2__5_0 [2]),
        .O(\a_j_reg[3]_i_2__5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_j_reg[4] 
       (.CLR(1'b0),
        .D(\a_j_reg[4]_i_1__6_n_0 ),
        .G(a_j),
        .GE(1'b1),
        .Q(\FSM_onehot_state_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_j_reg[4]_i_1__5 
       (.I0(\a_j_reg[4]_i_3__5_n_0 ),
        .I1(Q[0]),
        .I2(\a_j_reg[4]_i_4__6_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \a_j_reg[4]_i_1__6 
       (.I0(\a_j_reg[0]_i_1__6_0 [3]),
        .I1(\j_reg_n_0_[1] ),
        .I2(\a_j_reg[0]_i_1__6_0 [1]),
        .I3(\j_reg_n_0_[0] ),
        .I4(\a_j_reg[4]_i_2__7_n_0 ),
        .O(\a_j_reg[4]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hEBEBEB282828EB28)) 
    \a_j_reg[4]_i_2__7 
       (.I0(\a_j_reg[0]_i_1__6_0 [2]),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\a_j_reg[0]_i_1__6_0 [4]),
        .I4(\j_reg_n_0_[2] ),
        .I5(\a_j_reg[0]_i_1__6_0 [0]),
        .O(\a_j_reg[4]_i_2__7_n_0 ));
  LUT6 #(
    .INIT(64'hBE82BE82FFFF0000)) 
    \a_j_reg[4]_i_3__5 
       (.I0(\a_j_reg[3]_i_2__5_0 [1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\a_j_reg[0]_i_1__5 [2]),
        .I4(\a_j_reg[4]_i_5__6_n_0 ),
        .I5(Q[1]),
        .O(\a_j_reg[4]_i_3__5_n_0 ));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \a_j_reg[4]_i_4__6 
       (.I0(\a_j_reg[3]_i_2__5_0 [2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\a_j_reg[0]_i_1__5 [3]),
        .I4(Q[1]),
        .I5(\a_j_reg[4]_i_6__6_n_0 ),
        .O(\a_j_reg[4]_i_4__6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_5__6 
       (.I0(\a_j_reg[0]_i_1__5 [4]),
        .I1(\a_j_reg[0]_i_1__5_1 ),
        .I2(\a_j_reg[0]_i_1__5 [0]),
        .I3(\a_j_reg[0]_i_1__5_2 ),
        .I4(\a_j_reg[3]_i_2__5_0 [3]),
        .O(\a_j_reg[4]_i_5__6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \a_j_reg[4]_i_6__6 
       (.I0(\a_j_reg[3]_i_2__5_0 [0]),
        .I1(\a_j_reg[0]_i_1__5_1 ),
        .I2(\a_j_reg[0]_i_1__5 [1]),
        .I3(\a_j_reg[0]_i_1__5_2 ),
        .I4(\a_j_reg[3]_i_2__5_0 [4]),
        .O(\a_j_reg[4]_i_6__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    acks_out_reg_i_2__7
       (.I0(\count_reg_reg[0] [0]),
        .I1(\count_reg_reg[0] [1]),
        .I2(\count_reg_reg[0] [4]),
        .I3(valid),
        .I4(\count_reg_reg[0] [2]),
        .I5(done),
        .O(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1__8_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1__8 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count_reg[0]_i_1__8_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1__16_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \count_reg[1]_i_1__16 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[1]_i_1__16_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1__15_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \count_reg[2]_i_1__15 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count_reg[2]_i_1__15_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1__16_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \count_reg[3]_i_1__16 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\count_reg[3]_i_1__16_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1__15_n_0 ),
        .G(count),
        .GE(1'b1),
        .Q(\count_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \count_reg[4]_i_1__15 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count_reg[4]_i_1__15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \count_reg[4]_i_2__7 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[4]_i_2__7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .G(done_aux),
        .GE(1'b1),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_aux_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(done_aux));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.CLR(1'b0),
        .D(\j_reg[0]_i_1__4_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j_reg[0]_i_1__4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[0] ),
        .O(\j_reg[0]_i_1__4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.CLR(1'b0),
        .D(\j_reg[1]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \j_reg[1]_i_1__7 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\j_reg[1]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.CLR(1'b0),
        .D(\j_reg[2]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \j_reg[2]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\j_reg_n_0_[2] ),
        .O(\j_reg[2]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.CLR(1'b0),
        .D(\j_reg[3]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \j_reg[3]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[0] ),
        .I3(\j_reg_n_0_[2] ),
        .I4(\j_reg_n_0_[3] ),
        .O(\j_reg[3]_i_1__7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.CLR(1'b0),
        .D(\j_reg[4]_i_1__7_n_0 ),
        .G(j),
        .GE(1'b1),
        .Q(\j_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \j_reg[4]_i_1__7 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(\j_reg_n_0_[0] ),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[3] ),
        .I5(\j_reg_n_0_[4] ),
        .O(\j_reg[4]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \j_reg[4]_i_2__7 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(j));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1__1_n_0,next_state2_carry_i_2__1_n_0,next_state2_carry_i_3__7_n_0,next_state2_carry_i_4__7_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({next_state2_carry__0_n_0,next_state2_carry__0_n_1,next_state2_carry__0_n_2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state2_carry__0_i_1__1_n_0,next_state2_carry__0_i_2__1_n_0,next_state2_carry__0_i_3__1_n_0,next_state2_carry__0_i_4__1_n_0}));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry__0_i_1__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry__0_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry__0_i_2__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry__0_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry__0_i_3__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry__0_i_3__1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry__0_i_4__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry__0_i_4__1_n_0));
  CARRY4 next_state2_carry__1
       (.CI(next_state2_carry__0_n_0),
        .CO({NLW_next_state2_carry__1_CO_UNCONNECTED[3],next_state2_carry__1_n_1,next_state2_carry__1_n_2,next_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_next_state2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state2_carry__1_i_1__7_n_0,next_state2_carry__1_i_2__1_n_0,next_state2_carry__1_i_3__1_n_0}));
  LUT5 #(
    .INIT(32'h00000001)) 
    next_state2_carry__1_i_1__7
       (.I0(\j_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\j_reg_n_0_[4] ),
        .I4(next_state3),
        .O(next_state2_carry__1_i_1__7_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry__1_i_2__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry__1_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry__1_i_3__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry__1_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h7DBBBD7E7EBD7DBB)) 
    next_state2_carry_i_10__5
       (.I0(\j_reg_n_0_[1] ),
        .I1(next_state2_carry_i_12__4_n_0),
        .I2(next_state2_carry_i_4__7_0),
        .I3(next_state2_carry_i_4__7_1),
        .I4(\FSM_onehot_state_reg[3]_1 [0]),
        .I5(\FSM_onehot_state_reg[1]_0 [0]),
        .O(next_state2_carry_i_10__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_12__4
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(next_state2_carry_i_10__5_0),
        .O(next_state2_carry_i_12__4_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry_i_1__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry_i_1__1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    next_state2_carry_i_2__1
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\j_reg_n_0_[3] ),
        .I4(next_state3),
        .O(next_state2_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000141200010000)) 
    next_state2_carry_i_3__7
       (.I0(\j_reg_n_0_[4] ),
        .I1(next_state2_carry_0),
        .I2(next_state2_carry_i_4__7_0),
        .I3(\FSM_onehot_state_reg[3]_0 ),
        .I4(\j_reg_n_0_[3] ),
        .I5(next_state2_carry_i_9__6_n_0),
        .O(next_state2_carry_i_3__7_n_0));
  LUT4 #(
    .INIT(16'h0096)) 
    next_state2_carry_i_4__7
       (.I0(\FSM_onehot_state_reg[3]_1 [0]),
        .I1(\FSM_onehot_state_reg[1]_0 [0]),
        .I2(\j_reg_n_0_[0] ),
        .I3(next_state2_carry_i_10__5_n_0),
        .O(next_state2_carry_i_4__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    next_state2_carry_i_9__6
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[1] ),
        .O(next_state2_carry_i_9__6_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    valid_aux_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .G(valid_aux),
        .GE(1'b1),
        .Q(valid));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    valid_aux_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[4]_i_3__8_n_0 ),
        .O(valid_aux));
endmodule

(* ORIG_REF_NAME = "fsm" *) 
module design_1_top_nqueens_0_1_fsm
   (next_out_9,
    Q,
    \j_reg[2] ,
    \j_reg[2]_0 ,
    \j_reg[4] ,
    \j_reg[3] ,
    D,
    E,
    plusOp,
    \counter[11] ,
    \counter[11]_0 ,
    \count_reg[4]_i_3 ,
    SR,
    clk,
    AR);
  output next_out_9;
  output [1:0]Q;
  output \j_reg[2] ;
  output \j_reg[2]_0 ;
  output \j_reg[4] ;
  output \j_reg[3] ;
  output [11:0]D;
  output [0:0]E;
  input [11:0]plusOp;
  input \counter[11] ;
  input \counter[11]_0 ;
  input [4:0]\count_reg[4]_i_3 ;
  input [0:0]SR;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [11:0]D;
  wire [0:0]E;
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
  wire [4:0]\count_reg[4]_i_3 ;
  wire \counter[11] ;
  wire \counter[11]_0 ;
  wire dut_n_10;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[2] ;
  wire \j_reg[2]_0 ;
  wire \j_reg[3] ;
  wire \j_reg[4] ;
  wire logic_n_1;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_4;
  wire logic_n_5;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
  wire next_out_9;
  wire [2:2]next_state6;
  wire nexts_out;
  wire [11:0]plusOp;
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
        .CE(logic_n_12),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_10),
        .Q(ce__0),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_12),
        .D(logic_n_13),
        .Q(\asout_array[9]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_8),
        .Q(nexts_out),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_11),
        .GE(1'b1),
        .Q(ack_out_9));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[0]_i_1 
       (.I0(plusOp[0]),
        .I1(ack_out_9),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[10]_i_1 
       (.I0(plusOp[10]),
        .I1(ack_out_9),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[11]_i_1 
       (.I0(plusOp[11]),
        .I1(ack_out_9),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \counter_s_reg[11]_i_2 
       (.I0(\counter[11] ),
        .I1(\counter[11]_0 ),
        .I2(ack_out_9),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[1]_i_1 
       (.I0(plusOp[1]),
        .I1(ack_out_9),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[2]_i_1 
       (.I0(plusOp[2]),
        .I1(ack_out_9),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[3]_i_1 
       (.I0(plusOp[3]),
        .I1(ack_out_9),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[4]_i_1 
       (.I0(plusOp[4]),
        .I1(ack_out_9),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[5]_i_1 
       (.I0(plusOp[5]),
        .I1(ack_out_9),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[6]_i_1 
       (.I0(plusOp[6]),
        .I1(ack_out_9),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[7]_i_1 
       (.I0(plusOp[7]),
        .I1(ack_out_9),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[8]_i_1 
       (.I0(plusOp[8]),
        .I1(ack_out_9),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_s_reg[9]_i_1 
       (.I0(plusOp[9]),
        .I1(ack_out_9),
        .O(D[9]));
  design_1_top_nqueens_0_1_up_counter dut
       (.AR(AR),
        .CO(logic_n_1),
        .D({dut_n_8,dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[9]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_6),
        .\count_reg_reg[2]_0 (dut_n_5),
        .\count_reg_reg[4]_0 (dut_n_7),
        .next_state6(next_state6),
        .\state_reg[2] ({logic_n_4,logic_n_5,logic_n_6,logic_n_7,logic_n_8}),
        .valid(valid));
  design_1_top_nqueens_0_1_ctrl_logic_fsm logic
       (.CO(logic_n_1),
        .D(logic_n_13),
        .E(logic_n_12),
        .\FSM_onehot_state_reg[4] (logic_n_11),
        .Q(Q),
        .acks_out_reg({nexts_out,\asout_array[9]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .clk(clk),
        .\count_reg[4]_i_3 (\count_reg[4]_i_3 ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[2]_1 (\j_reg[2]_0 ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .next_state2_carry__1_i_1_0(dut_n_5),
        .next_state2_carry_i_10_0(u_i),
        .next_state2_carry_i_4_0(next_state6),
        .next_state2_carry_i_4_1(dut_n_6),
        .reset_control(reset_control),
        .\state_reg[0]_0 ({logic_n_4,logic_n_5,logic_n_6,logic_n_7,logic_n_8}),
        .\state_reg[2]_0 (dut_n_7),
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
        .D(reset_control__0),
        .G(reset_control_reg_i_2_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
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
module design_1_top_nqueens_0_1_fsm__parameterized0
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
    \count_reg[4]_i_3__0 ,
    \FSM_onehot_state_reg[0]_0 ,
    clk,
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
  input [4:0]\count_reg[4]_i_3__0 ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input clk;
  input [39:0]a_in_8;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [4:0]D;
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
  wire [4:0]\count_reg[4]_i_3__0 ;
  wire [0:0]\count_reg_reg[0] ;
  wire dut_n_10;
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
  wire logic_n_1;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_4;
  wire logic_n_5;
  wire logic_n_6;
  wire logic_n_7;
  wire logic_n_8;
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
    \FSM_onehot_state[4]_i_1 
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
        .D(dut_n_11),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_15),
        .D(logic_n_16),
        .Q(\asout_array[8]_1 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_14),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__0
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
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
        .Q(a_in_9[43]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[8][4] 
       (.CLR(1'b0),
        .D(a_in_8[39]),
        .G(\asout_array[8]_1 ),
        .GE(1'b1),
        .Q(a_in_9[44]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__0_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__0
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__0_n_0));
  design_1_top_nqueens_0_1_up_counter_0 dut
       (.CO(logic_n_1),
        .D({dut_n_9,dut_n_10,dut_n_11}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[8]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_7),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_6),
        .\count_reg_reg[2]_0 (dut_n_5),
        .\count_reg_reg[4]_0 (dut_n_8),
        .next_state6(next_state6),
        .\state_reg[2] ({logic_n_4,logic_n_5,logic_n_6,logic_n_7,logic_n_8}),
        .valid(valid));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized0 logic
       (.CO(logic_n_1),
        .D(D),
        .E(logic_n_15),
        .\FSM_onehot_state_reg[2] (logic_n_16),
        .\FSM_onehot_state_reg[4] (logic_n_14),
        .Q(Q),
        .a_in_9(a_in_9),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_i_1_0 (\a_j_reg[0]_i_1 ),
        .\a_j_reg[0]_i_1_1 (\a_j_reg[0]_i_1_0 ),
        .\a_j_reg[0]_i_2_0 (\a_j_reg[0]_i_2 ),
        .\a_j_reg[0]_i_2_1 (\a_j_reg[0]_i_2_0 ),
        .clk(clk),
        .\count_reg[4]_i_3__0 (\count_reg[4]_i_3__0 ),
        .\count_reg_reg[0] ({nexts_out,\asout_array[8]_1 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\j_reg[0]_0 (\j_reg[0] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[3]_1 (\j_reg[3]_0 ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .next_out_9(next_out_9),
        .next_state2_carry_0(dut_n_7),
        .next_state2_carry__1_i_1__0_0(dut_n_5),
        .next_state2_carry_i_4__0_0(u_i),
        .next_state2_carry_i_4__0_1(next_state6),
        .next_state2_carry_i_4__0_2(dut_n_6),
        .reset_control(reset_control),
        .\state_reg[0]_0 ({logic_n_4,logic_n_5,logic_n_6,logic_n_7,logic_n_8}),
        .\state_reg[2]_0 (dut_n_8),
        .valid(valid));
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
        .D(reset_control__0),
        .G(reset_control_reg_i_2__0_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__0
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\asout_array[8]_1 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
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
module design_1_top_nqueens_0_1_fsm__parameterized1
   (AR,
    next_out_7,
    Q,
    SR,
    D,
    a_in_8,
    \a_j_reg[3]_i_3__1 ,
    \j_reg[1] ,
    \j_reg[3] ,
    \j_reg[4] ,
    \j_reg[3]_0 ,
    nRst,
    \a_j_reg[0] ,
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
    next_state2_carry_i_6__3,
    \FSM_onehot_state_reg[0]_0 ,
    clk,
    a_in_7,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_7;
  output [1:0]Q;
  output [0:0]SR;
  output [4:0]D;
  output [39:0]a_in_8;
  output \a_j_reg[3]_i_3__1 ;
  output \j_reg[1] ;
  output \j_reg[3] ;
  output \j_reg[4] ;
  output \j_reg[3]_0 ;
  input nRst;
  input [1:0]\a_j_reg[0] ;
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
  input [2:0]next_state2_carry_i_6__3;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input clk;
  input [34:0]a_in_7;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [34:0]a_in_7;
  wire [39:0]a_in_8;
  wire [1:0]\a_j_reg[0] ;
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
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [4:3]j;
  wire \j_reg[1] ;
  wire \j_reg[3] ;
  wire \j_reg[3]_0 ;
  wire \j_reg[4] ;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_21;
  wire logic_n_22;
  wire logic_n_9;
  wire nRst;
  wire next_out_7;
  wire next_out_8;
  wire [2:0]next_state2_carry_i_6__3;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__1_n_0;
  wire [4:0]u_i;

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
        .D(logic_n_22),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_15),
        .D(logic_n_21),
        .Q(\asout_array[7]_2 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_9),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_14),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
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
        .G(ce_reg_i_1__1_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__1
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__1_n_0));
  design_1_top_nqueens_0_1_up_counter_1 dut
       (.D({dut_n_9,dut_n_10}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[7]_2 ,ce__0}),
        .Q(u_i),
        .S(dut_n_7),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0]_0 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_0),
        .\count_reg_reg[3]_0 (dut_n_6),
        .\count_reg_reg[4]_0 (dut_n_8),
        .next_state2_carry(j),
        .next_state2_carry_i_9__1({logic_n_9,logic_n_10,logic_n_11,logic_n_12,logic_n_13}));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized1 logic
       (.D(D),
        .E(logic_n_15),
        .\FSM_onehot_state_reg[2] ({logic_n_21,logic_n_22}),
        .\FSM_onehot_state_reg[4] (logic_n_14),
        .Q({j,Q}),
        .S(dut_n_7),
        .a_in_8(a_in_8),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
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
        .\count_reg[4]_i_3__1_0 (u_i),
        .\count_reg_reg[0] ({nexts_out,\asout_array[7]_2 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[3]_1 (\j_reg[3]_0 ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .next_out_8(next_out_8),
        .next_state2_carry_0(dut_n_0),
        .next_state2_carry__1_0(dut_n_8),
        .next_state2_carry_i_4__1_0(dut_n_6),
        .next_state2_carry_i_6__3(next_state2_carry_i_6__3),
        .reset_control(reset_control),
        .\state_reg[2]_0 ({logic_n_9,logic_n_10,logic_n_11,logic_n_12,logic_n_13}));
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
        .D(reset_control__0),
        .G(reset_control_reg_i_2__1_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(\asout_array[7]_2 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
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
module design_1_top_nqueens_0_1_fsm__parameterized2
   (AR,
    next_out_6,
    Q,
    SR,
    D,
    \a_j_reg[4]_i_17__1 ,
    \a_j_reg[4]_i_13__1 ,
    \a_j_reg[4]_i_13__1_0 ,
    \a_j_reg[4]_i_13__1_1 ,
    \count_reg_reg[3] ,
    a_in_7,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \j_reg[1] ,
    \j_reg[3] ,
    \j_reg[4] ,
    nRst,
    \a_j_reg[0] ,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_i_1__1 ,
    \a_j_reg[0]_i_1__1_0 ,
    \a_j_reg[3]_i_2__1 ,
    \a_j_reg[0]_i_2__1 ,
    \a_j_reg[0]_1 ,
    \a_j_reg[0]_i_1__2 ,
    \a_j_reg[0]_i_1__2_0 ,
    \a_j_reg[0]_i_1__2_1 ,
    \a_j_reg[0]_i_1__2_2 ,
    next_out_7,
    next_state2_carry_i_6__4,
    \FSM_onehot_state_reg[0]_0 ,
    clk,
    a_in_6,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_6;
  output [2:0]Q;
  output [0:0]SR;
  output [2:0]D;
  output \a_j_reg[4]_i_17__1 ;
  output \a_j_reg[4]_i_13__1 ;
  output \a_j_reg[4]_i_13__1_0 ;
  output \a_j_reg[4]_i_13__1_1 ;
  output \count_reg_reg[3] ;
  output [34:0]a_in_7;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \j_reg[1] ;
  output \j_reg[3] ;
  output \j_reg[4] ;
  input nRst;
  input [1:0]\a_j_reg[0] ;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_i_1__1 ;
  input \a_j_reg[0]_i_1__1_0 ;
  input \a_j_reg[3]_i_2__1 ;
  input \a_j_reg[0]_i_2__1 ;
  input \a_j_reg[0]_1 ;
  input \a_j_reg[0]_i_1__2 ;
  input \a_j_reg[0]_i_1__2_0 ;
  input \a_j_reg[0]_i_1__2_1 ;
  input \a_j_reg[0]_i_1__2_2 ;
  input next_out_7;
  input [3:0]next_state2_carry_i_6__4;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input clk;
  input [29:0]a_in_6;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [29:0]a_in_6;
  wire [34:0]a_in_7;
  wire [1:0]\a_j_reg[0] ;
  wire \a_j_reg[0]_0 ;
  wire \a_j_reg[0]_1 ;
  wire \a_j_reg[0]_i_1__1 ;
  wire \a_j_reg[0]_i_1__1_0 ;
  wire \a_j_reg[0]_i_1__2 ;
  wire \a_j_reg[0]_i_1__2_0 ;
  wire \a_j_reg[0]_i_1__2_1 ;
  wire \a_j_reg[0]_i_1__2_2 ;
  wire \a_j_reg[0]_i_2__1 ;
  wire \a_j_reg[3]_i_2__1 ;
  wire \a_j_reg[4]_i_13__1 ;
  wire \a_j_reg[4]_i_13__1_0 ;
  wire \a_j_reg[4]_i_13__1_1 ;
  wire \a_j_reg[4]_i_17__1 ;
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
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire \j_reg[1] ;
  wire \j_reg[3] ;
  wire \j_reg[4] ;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_21;
  wire logic_n_22;
  wire logic_n_23;
  wire logic_n_24;
  wire nRst;
  wire next_out_6;
  wire next_out_7;
  wire [3:0]next_state2_carry_i_6__4;
  wire [3:3]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__2_n_0;
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
        .CE(logic_n_22),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_22),
        .D(logic_n_24),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_22),
        .D(dut_n_12),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_22),
        .D(logic_n_23),
        .Q(\asout_array[6]_3 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_22),
        .D(dut_n_11),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_21),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
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
        .G(ce_reg_i_1__2_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__2
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__2_n_0));
  design_1_top_nqueens_0_1_up_counter_2 dut
       (.D({dut_n_11,dut_n_12}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[6]_3 ,ce__0}),
        .Q(u_i),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg_reg[0]_0 (dut_n_10),
        .\count_reg_reg[0]_1 (\count_reg_reg[0] ),
        .\count_reg_reg[1]_0 (dut_n_0),
        .\count_reg_reg[2]_0 (dut_n_8),
        .\count_reg_reg[3]_0 (dut_n_6),
        .\count_reg_reg[4]_0 (dut_n_7),
        .next_state2_carry_i_12__1({logic_n_13,logic_n_14,logic_n_15,logic_n_16,logic_n_17}),
        .next_state6(next_state6));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized2 logic
       (.D(D),
        .E(logic_n_22),
        .\FSM_onehot_state_reg[2] ({logic_n_23,logic_n_24}),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[4] (logic_n_21),
        .Q(Q),
        .a_in_7(a_in_7),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_1 (\a_j_reg[0]_0 ),
        .\a_j_reg[0]_2 (\a_j_reg[0]_1 ),
        .\a_j_reg[0]_i_1__1_0 (\a_j_reg[0]_i_1__1 ),
        .\a_j_reg[0]_i_1__1_1 (\a_j_reg[0]_i_1__1_0 ),
        .\a_j_reg[0]_i_1__2_0 (\a_j_reg[0]_i_1__2 ),
        .\a_j_reg[0]_i_1__2_1 (\a_j_reg[0]_i_1__2_0 ),
        .\a_j_reg[0]_i_1__2_2 (\a_j_reg[0]_i_1__2_1 ),
        .\a_j_reg[0]_i_1__2_3 (\a_j_reg[0]_i_1__2_2 ),
        .\a_j_reg[0]_i_2__1_0 (\a_j_reg[0]_i_2__1 ),
        .\a_j_reg[3]_i_2__1 (\a_j_reg[3]_i_2__1 ),
        .\a_j_reg[4]_i_13__1 (\a_j_reg[4]_i_13__1 ),
        .\a_j_reg[4]_i_13__1_0 (\a_j_reg[4]_i_13__1_0 ),
        .\a_j_reg[4]_i_13__1_1 (\a_j_reg[4]_i_13__1_1 ),
        .\a_j_reg[4]_i_17__1_0 (\a_j_reg[4]_i_17__1 ),
        .clk(clk),
        .complete_tick(complete_tick),
        .\count_reg[4]_i_3__2_0 (u_i),
        .\count_reg_reg[0] ({nexts_out,\asout_array[6]_3 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .next_out_7(next_out_7),
        .next_state2_carry_0(dut_n_8),
        .next_state2_carry_1(next_state6),
        .next_state2_carry_2(dut_n_10),
        .next_state2_carry__1_0(dut_n_7),
        .next_state2_carry_i_4__2_0(dut_n_6),
        .next_state2_carry_i_4__2_1(dut_n_0),
        .next_state2_carry_i_6__4(next_state2_carry_i_6__4),
        .reset_control(reset_control),
        .\state_reg[2]_0 ({logic_n_13,logic_n_14,logic_n_15,logic_n_16,logic_n_17}));
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
module design_1_top_nqueens_0_1_fsm__parameterized3
   (AR,
    next_out_5,
    Q,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_1 ,
    \count_reg_reg[2] ,
    \a_j_reg[3]_i_3__2 ,
    SR,
    D,
    \count_reg_reg[0] ,
    a_in_6,
    \j_reg[1] ,
    \j_reg[4] ,
    \j_reg[3] ,
    \j_reg[2] ,
    \a_j_reg[4] ,
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
    next_state2_carry_i_6__5,
    \FSM_onehot_state_reg[0]_0 ,
    clk,
    a_in_5,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_5;
  output [2:0]Q;
  output \FSM_onehot_state_reg[3]_0 ;
  output \FSM_onehot_state_reg[3]_1 ;
  output \count_reg_reg[2] ;
  output \a_j_reg[3]_i_3__2 ;
  output [0:0]SR;
  output [3:0]D;
  output \count_reg_reg[0] ;
  output [29:0]a_in_6;
  output \j_reg[1] ;
  output \j_reg[4] ;
  output \j_reg[3] ;
  output \j_reg[2] ;
  input [2:0]\a_j_reg[4] ;
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
  input [3:0]next_state2_carry_i_6__5;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input clk;
  input [24:0]a_in_5;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[3]_1 ;
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
  wire [2:0]\a_j_reg[4] ;
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
  wire dut_n_12;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire \j_reg[1] ;
  wire \j_reg[2] ;
  wire \j_reg[3] ;
  wire \j_reg[4] ;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire logic_n_23;
  wire logic_n_24;
  wire nRst;
  wire next_out_5;
  wire next_out_6;
  wire [3:0]next_state2_carry_i_6__5;
  wire [3:3]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__3_n_0;
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
        .D(logic_n_24),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_18),
        .D(dut_n_11),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_18),
        .D(logic_n_23),
        .Q(\asout_array[5]_4 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_18),
        .D(dut_n_10),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__3_n_0),
        .G(logic_n_17),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(nexts_out),
        .O(acks_out_reg_i_1__3_n_0));
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
        .G(ce_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__3
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__3_n_0));
  design_1_top_nqueens_0_1_up_counter_3 dut
       (.D({dut_n_10,dut_n_11}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[5]_4 ,ce__0}),
        .Q(u_i),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_12),
        .\count_reg_reg[0]_1 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[1]_0 (dut_n_0),
        .\count_reg_reg[2]_0 (dut_n_8),
        .\count_reg_reg[3]_0 (dut_n_6),
        .\count_reg_reg[4]_0 (dut_n_7),
        .next_state2_carry_i_10__1({logic_n_12,logic_n_13,logic_n_14,logic_n_15,logic_n_16}),
        .next_state6(next_state6));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized3 logic
       (.D(D),
        .E(logic_n_18),
        .\FSM_onehot_state_reg[1] (dut_n_12),
        .\FSM_onehot_state_reg[2] ({logic_n_23,logic_n_24}),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[4] (logic_n_17),
        .Q(Q),
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
        .\a_j_reg[4]_0 (\a_j_reg[4] ),
        .clk(clk),
        .\count_reg[4]_i_3__3_0 (u_i),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[5]_4 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .\j_reg[4]_0 (\j_reg[4] ),
        .next_out_6(next_out_6),
        .next_state2_carry_0(dut_n_8),
        .next_state2_carry_1(next_state6),
        .next_state2_carry_2(dut_n_0),
        .next_state2_carry__1_0(dut_n_7),
        .next_state2_carry_i_4__3_0(dut_n_6),
        .next_state2_carry_i_6__5(next_state2_carry_i_6__5),
        .reset_control(reset_control),
        .\state_reg[2]_0 ({logic_n_12,logic_n_13,logic_n_14,logic_n_15,logic_n_16}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__3_n_0),
        .GE(1'b1),
        .Q(next_out_5));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__3_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ce__0),
        .I2(\asout_array[5]_4 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
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
module design_1_top_nqueens_0_1_fsm__parameterized4
   (AR,
    next_out_4,
    \j_reg[2] ,
    Q,
    SR,
    D,
    \a_j_reg[4]_i_4__3 ,
    \count_reg_reg[4] ,
    \count_reg_reg[2] ,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_5,
    \count_reg_reg[0] ,
    \j_reg[1] ,
    nRst,
    \a_j_reg[4] ,
    \a_j_reg[0]_i_1__3 ,
    \a_j_reg[0]_i_1__3_0 ,
    \a_j_reg[4]_i_3__2 ,
    \a_j_reg[4]_i_3__2_0 ,
    next_out_5,
    \a_j_reg[3]_i_1__4 ,
    \a_j_reg[3]_i_1__4_0 ,
    \a_j_reg[0] ,
    \a_j_reg[0]_0 ,
    \a_j_reg[1]_i_1__4 ,
    \a_j_reg[2]_i_1__4 ,
    \a_j_reg[2]_i_1__4_0 ,
    \a_j_reg[4]_0 ,
    \a_j_reg[4]_1 ,
    \a_j_reg[3]_i_1__4_1 ,
    a_in_4,
    \FSM_onehot_state_reg[0]_0 ,
    clk,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_4;
  output \j_reg[2] ;
  output [1:0]Q;
  output [0:0]SR;
  output [3:0]D;
  output \a_j_reg[4]_i_4__3 ;
  output \count_reg_reg[4] ;
  output \count_reg_reg[2] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output [24:0]a_in_5;
  output \count_reg_reg[0] ;
  output \j_reg[1] ;
  input nRst;
  input [2:0]\a_j_reg[4] ;
  input \a_j_reg[0]_i_1__3 ;
  input \a_j_reg[0]_i_1__3_0 ;
  input \a_j_reg[4]_i_3__2 ;
  input \a_j_reg[4]_i_3__2_0 ;
  input next_out_5;
  input \a_j_reg[3]_i_1__4 ;
  input \a_j_reg[3]_i_1__4_0 ;
  input \a_j_reg[0] ;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[1]_i_1__4 ;
  input \a_j_reg[2]_i_1__4 ;
  input \a_j_reg[2]_i_1__4_0 ;
  input \a_j_reg[4]_0 ;
  input \a_j_reg[4]_1 ;
  input \a_j_reg[3]_i_1__4_1 ;
  input [19:0]a_in_4;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input clk;
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
  wire \a_j_reg[2]_i_1__4_0 ;
  wire \a_j_reg[3]_i_1__4 ;
  wire \a_j_reg[3]_i_1__4_0 ;
  wire \a_j_reg[3]_i_1__4_1 ;
  wire [2:0]\a_j_reg[4] ;
  wire \a_j_reg[4]_0 ;
  wire \a_j_reg[4]_1 ;
  wire \a_j_reg[4]_i_3__2 ;
  wire \a_j_reg[4]_i_3__2_0 ;
  wire \a_j_reg[4]_i_4__3 ;
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
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
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
  wire [4:4]next_state3;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__4_n_0;
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
        .D(dut_n_14),
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
        .D(logic_n_21),
        .Q(\asout_array[4]_5 ),
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
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__4_n_0),
        .G(logic_n_19),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__4
       (.I0(nexts_out),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(acks_out_reg_i_1__4_n_0));
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
        .G(ce_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(nexts_out),
        .O(ce_reg_i_1__4_n_0));
  design_1_top_nqueens_0_1_up_counter_4 dut
       (.D({dut_n_12,dut_n_13,dut_n_14}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[4]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .\count_reg[4]_i_3__4 ({logic_n_13,logic_n_14,logic_n_15,logic_n_16,logic_n_17}),
        .\count_reg_reg[0]_0 (dut_n_10),
        .\count_reg_reg[0]_1 (dut_n_11),
        .\count_reg_reg[0]_2 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[2]_0 (dut_n_6),
        .\count_reg_reg[3]_0 (dut_n_7),
        .\count_reg_reg[3]_1 (dut_n_9),
        .\count_reg_reg[4]_0 (dut_n_8),
        .next_state3(next_state3),
        .valid(valid));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized4 logic
       (.D(D),
        .E(logic_n_18),
        .\FSM_onehot_state_reg[0] (logic_n_19),
        .\FSM_onehot_state_reg[2] (logic_n_21),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .Q(Q),
        .a_in_4({a_in_4[15:12],a_in_4[7:4]}),
        .a_in_5(a_in_5),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_1 (\a_j_reg[0]_0 ),
        .\a_j_reg[0]_i_1__3 (\a_j_reg[0]_i_1__3 ),
        .\a_j_reg[0]_i_1__3_0 (\a_j_reg[0]_i_1__3_0 ),
        .\a_j_reg[1]_i_1__4_0 (\a_j_reg[1]_i_1__4 ),
        .\a_j_reg[2]_i_1__4_0 (\a_j_reg[2]_i_1__4 ),
        .\a_j_reg[2]_i_1__4_1 (\a_j_reg[2]_i_1__4_0 ),
        .\a_j_reg[3]_i_1__4_0 (\a_j_reg[3]_i_1__4 ),
        .\a_j_reg[3]_i_1__4_1 (\a_j_reg[3]_i_1__4_0 ),
        .\a_j_reg[3]_i_1__4_2 (\a_j_reg[3]_i_1__4_1 ),
        .\a_j_reg[4]_0 (\a_j_reg[4] ),
        .\a_j_reg[4]_1 (\a_j_reg[4]_0 ),
        .\a_j_reg[4]_2 (\a_j_reg[4]_1 ),
        .\a_j_reg[4]_i_3__2_0 (\a_j_reg[4]_i_3__2 ),
        .\a_j_reg[4]_i_3__2_1 (\a_j_reg[4]_i_3__2_0 ),
        .\a_j_reg[4]_i_4__3_0 (\a_j_reg[4]_i_4__3 ),
        .clk(clk),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[4]_5 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .next_out_5(next_out_5),
        .next_state2_carry_0(dut_n_7),
        .next_state2_carry_1(dut_n_6),
        .next_state2_carry_2(dut_n_8),
        .next_state2_carry_3(dut_n_11),
        .next_state2_carry_i_4__4_0(dut_n_10),
        .next_state2_carry_i_4__4_1(u_i[1:0]),
        .next_state3(next_state3),
        .reset_control(reset_control),
        .\state_reg[0]_0 ({logic_n_13,logic_n_14,logic_n_15,logic_n_16,logic_n_17}),
        .\state_reg[1]_0 (dut_n_9),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__4_n_0),
        .GE(1'b1),
        .Q(next_out_4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__4_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[4]_5 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
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
module design_1_top_nqueens_0_1_fsm__parameterized5
   (AR,
    next_out_3,
    Q,
    SR,
    \FSM_onehot_state_reg[3]_0 ,
    a_in_4,
    \FSM_onehot_state_reg[3]_1 ,
    \FSM_onehot_state_reg[3]_2 ,
    \FSM_onehot_state_reg[3]_3 ,
    \FSM_onehot_state_reg[3]_4 ,
    \FSM_onehot_state_reg[3]_5 ,
    \FSM_onehot_state_reg[3]_6 ,
    \count_reg_reg[1] ,
    \count_reg_reg[2] ,
    \count_reg_reg[0] ,
    \j_reg[1] ,
    \j_reg[3] ,
    nRst,
    \a_j_reg[3]_i_2__3 ,
    \a_j_reg[3]_i_2__3_0 ,
    \a_j_reg[0]_i_1__4 ,
    next_out_4,
    D,
    \FSM_onehot_state_reg[0]_0 ,
    clk,
    a_in_3,
    \count_reg_reg[0]_0 );
  output [0:0]AR;
  output next_out_3;
  output [1:0]Q;
  output [0:0]SR;
  output \FSM_onehot_state_reg[3]_0 ;
  output [19:0]a_in_4;
  output \FSM_onehot_state_reg[3]_1 ;
  output \FSM_onehot_state_reg[3]_2 ;
  output \FSM_onehot_state_reg[3]_3 ;
  output \FSM_onehot_state_reg[3]_4 ;
  output \FSM_onehot_state_reg[3]_5 ;
  output \FSM_onehot_state_reg[3]_6 ;
  output \count_reg_reg[1] ;
  output \count_reg_reg[2] ;
  output \count_reg_reg[0] ;
  output \j_reg[1] ;
  output \j_reg[3] ;
  input nRst;
  input \a_j_reg[3]_i_2__3 ;
  input \a_j_reg[3]_i_2__3_0 ;
  input [1:0]\a_j_reg[0]_i_1__4 ;
  input next_out_4;
  input [4:0]D;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input clk;
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
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [14:0]a_in_3;
  wire [19:0]a_in_4;
  wire [1:0]\a_j_reg[0]_i_1__4 ;
  wire \a_j_reg[3]_i_2__3 ;
  wire \a_j_reg[3]_i_2__3_0 ;
  wire acks_out_reg_i_1__5_n_0;
  wire \asout_array[3]_6 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__5_n_0;
  wire clk;
  wire \count_reg_reg[0] ;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1] ;
  wire \count_reg_reg[2] ;
  wire dut_n_11;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire \j_reg[1] ;
  wire \j_reg[3] ;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire nRst;
  wire next_out_3;
  wire next_out_4;
  wire [2:2]next_state6;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__5_n_0;
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
        .D(logic_n_15),
        .Q(\asout_array[3]_6 ),
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
        .D(acks_out_reg_i_1__5_n_0),
        .G(logic_n_13),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__5
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(nexts_out),
        .O(acks_out_reg_i_1__5_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[3]_6 ),
        .GE(1'b1),
        .Q(a_in_4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
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
        .G(ce_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__5
       (.I0(nexts_out),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(ce__0),
        .O(ce_reg_i_1__5_n_0));
  design_1_top_nqueens_0_1_up_counter_5 dut
       (.D({dut_n_7,dut_n_8,dut_n_9}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[3]_6 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .clk(clk),
        .\count_reg[4]_i_3__5 ({logic_n_16,logic_n_17,logic_n_18}),
        .\count_reg_reg[0]_0 (dut_n_6),
        .\count_reg_reg[0]_1 (dut_n_11),
        .\count_reg_reg[0]_2 (\count_reg_reg[0]_0 ),
        .\count_reg_reg[2]_0 (dut_n_5),
        .next_state6(next_state6),
        .valid(valid));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized5 logic
       (.D(logic_n_15),
        .E(logic_n_14),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3]_1 ),
        .\FSM_onehot_state_reg[3]_1 (\FSM_onehot_state_reg[3]_2 ),
        .\FSM_onehot_state_reg[3]_2 (\FSM_onehot_state_reg[3]_3 ),
        .\FSM_onehot_state_reg[3]_3 (\FSM_onehot_state_reg[3]_4 ),
        .\FSM_onehot_state_reg[3]_4 (\FSM_onehot_state_reg[3]_5 ),
        .\FSM_onehot_state_reg[3]_5 (\FSM_onehot_state_reg[3]_6 ),
        .\FSM_onehot_state_reg[4] (logic_n_13),
        .Q(u_i),
        .a_in_4(a_in_4),
        .\a_j_reg[0]_i_1__4 (\a_j_reg[0]_i_1__4 ),
        .\a_j_reg[3]_i_2__3 (\a_j_reg[3]_i_2__3 ),
        .\a_j_reg[3]_i_2__3_0 (\a_j_reg[3]_i_2__3_0 ),
        .clk(clk),
        .\count_reg_reg[0] (\count_reg_reg[0] ),
        .\count_reg_reg[0]_0 ({nexts_out,\asout_array[3]_6 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[1] (\count_reg_reg[1] ),
        .\count_reg_reg[2] (\count_reg_reg[2] ),
        .\j_reg[1]_0 (\j_reg[1] ),
        .\j_reg[3]_0 (\j_reg[3] ),
        .next_out_4(next_out_4),
        .next_state2_carry__1_i_1__5_0(dut_n_5),
        .next_state2_carry_i_4__5_0(next_state6),
        .next_state2_carry_i_4__5_1(dut_n_6),
        .next_state2_carry_i_5__7_0(D),
        .reset_control(reset_control),
        .\state_reg[0]_0 ({logic_n_16,logic_n_17,logic_n_18}),
        .\state_reg[1]_0 (dut_n_11),
        .\state_reg[2]_0 (Q),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__5_n_0),
        .GE(1'b1),
        .Q(next_out_3));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__5_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__5
       (.I0(ce__0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\asout_array[3]_6 ),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
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
module design_1_top_nqueens_0_1_fsm__parameterized6
   (AR,
    next_out_2,
    Q,
    D,
    SR,
    a_in_3,
    \j_reg[0] ,
    \FSM_onehot_state_reg[3]_0 ,
    \j_reg[2] ,
    \a_j_reg[0] ,
    nRst,
    \a_j_reg[0]_i_1__7 ,
    \a_j_reg[0]_i_1__7_0 ,
    \a_j_reg[0]_0 ,
    \a_j_reg[0]_1 ,
    a_in_2,
    next_out_3,
    next_state2_carry_i_6__1,
    \FSM_onehot_state_reg[0]_0 ,
    clk,
    \count_reg_reg[0] );
  output [0:0]AR;
  output next_out_2;
  output [2:0]Q;
  output [4:0]D;
  output [0:0]SR;
  output [14:0]a_in_3;
  output \j_reg[0] ;
  output \FSM_onehot_state_reg[3]_0 ;
  output \j_reg[2] ;
  input [1:0]\a_j_reg[0] ;
  input nRst;
  input \a_j_reg[0]_i_1__7 ;
  input \a_j_reg[0]_i_1__7_0 ;
  input \a_j_reg[0]_0 ;
  input \a_j_reg[0]_1 ;
  input [9:0]a_in_2;
  input next_out_3;
  input [3:0]next_state2_carry_i_6__1;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input clk;
  input [0:0]\count_reg_reg[0] ;

  wire [0:0]AR;
  wire [4:0]D;
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
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire \j_reg[0] ;
  wire \j_reg[2] ;
  wire logic_n_1;
  wire logic_n_15;
  wire logic_n_16;
  wire logic_n_17;
  wire logic_n_18;
  wire logic_n_19;
  wire logic_n_2;
  wire logic_n_20;
  wire logic_n_21;
  wire logic_n_22;
  wire logic_n_6;
  wire nRst;
  wire next_out_2;
  wire next_out_3;
  wire [3:0]next_state2_carry_i_6__1;
  wire [4:4]next_state3;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__6_n_0;
  wire [4:0]u_i;
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
        .D(dut_n_14),
        .Q(ce__0),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_13),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_15),
        .D(logic_n_17),
        .Q(\asout_array[2]_7 ),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_15),
        .D(dut_n_12),
        .Q(nexts_out),
        .R(\FSM_onehot_state_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__6_n_0),
        .G(logic_n_16),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__6
       (.I0(nexts_out),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(acks_out_reg_i_1__6_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[2]_7 ),
        .GE(1'b1),
        .Q(a_in_3[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][4] 
       (.CLR(1'b0),
        .D(u_i[4]),
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
        .G(ce_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(nexts_out),
        .O(ce_reg_i_1__6_n_0));
  design_1_top_nqueens_0_1_up_counter_6 dut
       (.D({dut_n_12,dut_n_13,dut_n_14}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[2]_7 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .S(dut_n_6),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_5),
        .\count_reg_reg[0]_1 (dut_n_10),
        .\count_reg_reg[0]_2 (dut_n_11),
        .\count_reg_reg[0]_3 (\count_reg_reg[0] ),
        .\count_reg_reg[3]_0 (dut_n_8),
        .\count_reg_reg[4]_0 (dut_n_7),
        .next_state2_carry(logic_n_6),
        .next_state2_carry_0({logic_n_1,logic_n_2}),
        .next_state2_carry_i_4__6({logic_n_18,logic_n_19,logic_n_20,logic_n_21,logic_n_22}),
        .next_state3(next_state3),
        .valid(valid));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized6 logic
       (.D(D),
        .E(logic_n_15),
        .\FSM_onehot_state_reg[0] (logic_n_16),
        .\FSM_onehot_state_reg[2] (logic_n_17),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3]_0 ),
        .Q({logic_n_1,logic_n_2,Q}),
        .S(dut_n_6),
        .a_in_2({a_in_2[9],a_in_2[6],a_in_2[2:1]}),
        .a_in_3(a_in_3),
        .\a_j_reg[0]_0 (\a_j_reg[0] ),
        .\a_j_reg[0]_1 (\a_j_reg[0]_0 ),
        .\a_j_reg[0]_2 (\a_j_reg[0]_1 ),
        .\a_j_reg[0]_i_1__7_0 (\a_j_reg[0]_i_1__7 ),
        .\a_j_reg[0]_i_1__7_1 (\a_j_reg[0]_i_1__7_0 ),
        .clk(clk),
        .\count_reg_reg[0] ({nexts_out,\asout_array[2]_7 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\j_reg[0]_0 (logic_n_6),
        .\j_reg[0]_1 (\j_reg[0] ),
        .\j_reg[2]_0 (\j_reg[2] ),
        .next_out_3(next_out_3),
        .next_state2_carry_0(dut_n_10),
        .next_state2_carry_1(dut_n_5),
        .next_state2_carry_2(dut_n_7),
        .next_state2_carry_i_4__6_0(dut_n_11),
        .next_state2_carry_i_6__1(next_state2_carry_i_6__1),
        .next_state3(next_state3),
        .reset_control(reset_control),
        .\state_reg[0]_0 ({logic_n_18,logic_n_19,logic_n_20,logic_n_21,logic_n_22}),
        .\state_reg[1]_0 (dut_n_8),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__6_n_0),
        .GE(1'b1),
        .Q(next_out_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__6_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__6
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[2]_7 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
module design_1_top_nqueens_0_1_fsm__parameterized7
   (AR,
    next_out_1,
    \FSM_onehot_state_reg[4]_0 ,
    SR,
    done_s,
    ack_in_1__0,
    D,
    \count_reg_reg[3] ,
    a_in_2,
    \count_reg_reg[4] ,
    ack_in_1,
    \count_reg_reg[0] ,
    nRst,
    Q,
    \a_j_reg[0]_i_1__5 ,
    \a_j_reg[0]_i_1__5_0 ,
    \a_j_reg[0]_i_1__5_1 ,
    \asout_array_reg[2][4] ,
    next_out_2,
    clk);
  output [0:0]AR;
  output next_out_1;
  output \FSM_onehot_state_reg[4]_0 ;
  output [0:0]SR;
  output done_s;
  output ack_in_1__0;
  output [3:0]D;
  output \count_reg_reg[3] ;
  output [9:0]a_in_2;
  output \count_reg_reg[4] ;
  input ack_in_1;
  input \count_reg_reg[0] ;
  input nRst;
  input [2:0]Q;
  input \a_j_reg[0]_i_1__5 ;
  input \a_j_reg[0]_i_1__5_0 ;
  input \a_j_reg[0]_i_1__5_1 ;
  input [4:0]\asout_array_reg[2][4] ;
  input next_out_2;
  input clk;

  wire [0:0]AR;
  wire [3:0]D;
  wire \FSM_onehot_state[4]_i_1__7_n_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [9:0]a_in_2;
  wire \a_j_reg[0]_i_1__5 ;
  wire \a_j_reg[0]_i_1__5_0 ;
  wire \a_j_reg[0]_i_1__5_1 ;
  wire ack_in_1;
  wire ack_in_1__0;
  wire acks_out_reg_i_1__7_n_0;
  wire \asout_array[1]_8 ;
  wire [4:0]\asout_array_reg[2][4] ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1__7_n_0;
  wire clk;
  wire \count_reg_reg[0] ;
  wire \count_reg_reg[3] ;
  wire \count_reg_reg[4] ;
  wire done_s;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire logic_n_10;
  wire logic_n_11;
  wire logic_n_12;
  wire logic_n_13;
  wire logic_n_14;
  wire logic_n_7;
  wire logic_n_8;
  wire logic_n_9;
  wire nRst;
  wire next_out_1;
  wire next_out_2;
  wire [4:4]next_state3;
  wire nexts_out;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2__7_n_0;
  wire [4:0]u_i;
  wire valid;

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
        .CE(logic_n_12),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_13),
        .Q(ce__0),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_12),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_12),
        .D(logic_n_14),
        .Q(\asout_array[1]_8 ),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_12),
        .D(dut_n_11),
        .Q(nexts_out),
        .R(\FSM_onehot_state[4]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ack_in_1_reg_i_1
       (.I0(next_out_1),
        .I1(ack_in_1),
        .O(ack_in_1__0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    ack_in_1_reg_i_2
       (.I0(next_out_1),
        .I1(ack_in_1),
        .I2(\count_reg_reg[0] ),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out_reg_i_1__7_n_0),
        .G(logic_n_13),
        .GE(1'b1),
        .Q(AR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1__7
       (.I0(nexts_out),
        .I1(ce__0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(acks_out_reg_i_1__7_n_0));
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
        .D(\asout_array_reg[2][4] [0]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [1]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [2]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [3]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][4] 
       (.CLR(1'b0),
        .D(\asout_array_reg[2][4] [4]),
        .G(\asout_array[1]_8 ),
        .GE(1'b1),
        .Q(a_in_2[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ce_reg
       (.CLR(1'b0),
        .D(ce__0),
        .G(ce_reg_i_1__7_n_0),
        .GE(1'b1),
        .Q(ce));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ce__0),
        .I3(nexts_out),
        .O(ce_reg_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    done_s_reg_i_1
       (.I0(\count_reg_reg[0] ),
        .I1(next_out_1),
        .O(done_s));
  design_1_top_nqueens_0_1_up_counter_7 dut
       (.D({dut_n_11,dut_n_12,dut_n_13}),
        .E(ce),
        .\FSM_onehot_state_reg[4] ({\asout_array[1]_8 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .ack_in_1(ack_in_1),
        .clk(clk),
        .\count_reg_reg[0]_0 (dut_n_9),
        .\count_reg_reg[1]_0 (dut_n_10),
        .\count_reg_reg[2]_0 (dut_n_6),
        .\count_reg_reg[3]_0 (dut_n_7),
        .\count_reg_reg[4]_0 (dut_n_8),
        .next_state2_carry_i_10__5({logic_n_7,logic_n_8,logic_n_9,logic_n_10,logic_n_11}),
        .next_state3(next_state3),
        .valid(valid));
  design_1_top_nqueens_0_1_ctrl_logic_fsm__parameterized7 logic
       (.D(D),
        .E(logic_n_12),
        .\FSM_onehot_state_reg[0]_0 (logic_n_13),
        .\FSM_onehot_state_reg[1]_0 ({logic_n_7,logic_n_8,logic_n_9,logic_n_10,logic_n_11}),
        .\FSM_onehot_state_reg[2]_0 (logic_n_14),
        .\FSM_onehot_state_reg[3]_0 (dut_n_6),
        .\FSM_onehot_state_reg[3]_1 ({u_i[4:3],u_i[0]}),
        .Q(Q),
        .SR(reset_control),
        .\a_j_reg[0]_i_1__5 (a_in_2[4:0]),
        .\a_j_reg[0]_i_1__5_0 (\a_j_reg[0]_i_1__5 ),
        .\a_j_reg[0]_i_1__5_1 (\a_j_reg[0]_i_1__5_0 ),
        .\a_j_reg[0]_i_1__5_2 (\a_j_reg[0]_i_1__5_1 ),
        .\a_j_reg[0]_i_1__6_0 (\asout_array_reg[2][4] ),
        .\a_j_reg[3]_i_2__5_0 (a_in_2[9:5]),
        .clk(clk),
        .\count_reg_reg[0] ({nexts_out,\asout_array[1]_8 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .\count_reg_reg[3] (\count_reg_reg[3] ),
        .\count_reg_reg[4] (\count_reg_reg[4] ),
        .next_out_2(next_out_2),
        .next_state2_carry_0(dut_n_7),
        .next_state2_carry_i_10__5_0(dut_n_9),
        .next_state2_carry_i_4__7_0(dut_n_8),
        .next_state2_carry_i_4__7_1(dut_n_10),
        .next_state3(next_state3),
        .valid(valid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(nexts_out),
        .G(acks_out_reg_i_1__7_n_0),
        .GE(1'b1),
        .Q(next_out_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    reset_control_reg
       (.CLR(1'b0),
        .D(reset_control__0),
        .G(reset_control_reg_i_2__7_n_0),
        .GE(1'b1),
        .Q(reset_control));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1__7
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[1]_8 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2__7
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ce__0),
        .I2(\asout_array[1]_8 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(reset_control_reg_i_2__7_n_0));
endmodule

(* ORIG_REF_NAME = "top_nqueens" *) 
module design_1_top_nqueens_0_1_top_nqueens
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
  wire fsm_1_n_10;
  wire fsm_1_n_2;
  wire fsm_1_n_21;
  wire fsm_1_n_3;
  wire fsm_1_n_6;
  wire fsm_1_n_7;
  wire fsm_1_n_8;
  wire fsm_1_n_9;
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
  wire fsm_3_n_4;
  wire fsm_3_n_5;
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
  wire fsm_5_n_12;
  wire fsm_5_n_13;
  wire fsm_5_n_14;
  wire fsm_5_n_2;
  wire fsm_5_n_3;
  wire fsm_5_n_4;
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
  wire fsm_6_n_11;
  wire fsm_6_n_12;
  wire fsm_6_n_13;
  wire fsm_6_n_2;
  wire fsm_6_n_3;
  wire fsm_6_n_4;
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
  wire fsm_7_n_4;
  wire fsm_7_n_5;
  wire fsm_7_n_50;
  wire fsm_7_n_51;
  wire fsm_7_n_52;
  wire fsm_7_n_53;
  wire fsm_7_n_54;
  wire fsm_7_n_6;
  wire fsm_7_n_7;
  wire fsm_7_n_8;
  wire fsm_7_n_9;
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
  wire fsm_9_n_3;
  wire fsm_9_n_4;
  wire fsm_9_n_5;
  wire fsm_9_n_6;
  wire fsm_9_n_7;
  wire fsm_9_n_8;
  wire fsm_9_n_9;
  wire [1:0]\logic/j ;
  wire [1:0]\logic/j_0 ;
  wire [1:0]\logic/j_1 ;
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
  wire [11:0]plusOp;
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
  wire [3:3]NLW_plusOp_carry__1_CO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[0] 
       (.CLR(nRst),
        .D(\a_in_1_reg[0]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \a_in_1_reg[0]_i_1 
       (.I0(a_in_1[0]),
        .O(\a_in_1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[1] 
       (.CLR(nRst),
        .D(\a_in_1_reg[1]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_in_1_reg[1]_i_1 
       (.I0(a_in_1[0]),
        .I1(a_in_1[1]),
        .O(\a_in_1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[2] 
       (.CLR(nRst),
        .D(\a_in_1_reg[2]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \a_in_1_reg[2]_i_1 
       (.I0(a_in_1[2]),
        .I1(a_in_1[1]),
        .I2(a_in_1[0]),
        .O(\a_in_1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[3] 
       (.CLR(nRst),
        .D(\a_in_1_reg[3]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \a_in_1_reg[3]_i_1 
       (.I0(a_in_1[3]),
        .I1(a_in_1[2]),
        .I2(a_in_1[0]),
        .I3(a_in_1[1]),
        .O(\a_in_1_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_in_1_reg[4] 
       (.CLR(nRst),
        .D(\a_in_1_reg[4]_i_1_n_0 ),
        .G(\a_in_1_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a_in_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
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
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    ack_in_1_reg
       (.D(ack_in_1__0),
        .G(fsm_1_n_2),
        .GE(1'b1),
        .PRE(nRst),
        .Q(ack_in_1));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[0] 
       (.CLR(nRst),
        .D(fsm_9_n_18),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[10] 
       (.CLR(nRst),
        .D(fsm_9_n_8),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[11] 
       (.CLR(nRst),
        .D(fsm_9_n_7),
        .G(fsm_9_n_19),
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
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[1] 
       (.CLR(nRst),
        .D(fsm_9_n_17),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[2] 
       (.CLR(nRst),
        .D(fsm_9_n_16),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[3] 
       (.CLR(nRst),
        .D(fsm_9_n_15),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[4] 
       (.CLR(nRst),
        .D(fsm_9_n_14),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[5] 
       (.CLR(nRst),
        .D(fsm_9_n_13),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[6] 
       (.CLR(nRst),
        .D(fsm_9_n_12),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[7] 
       (.CLR(nRst),
        .D(fsm_9_n_11),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[8] 
       (.CLR(nRst),
        .D(fsm_9_n_10),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \counter_s_reg[9] 
       (.CLR(nRst),
        .D(fsm_9_n_9),
        .G(fsm_9_n_19),
        .GE(1'b1),
        .Q(counter[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_s_reg
       (.CLR(nRst),
        .D(next_out_1),
        .G(done_s),
        .GE(1'b1),
        .Q(done));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    flag_s_reg
       (.CLR(nRst),
        .D(1'b1),
        .G(flag_s_reg_i_1_n_0),
        .GE(1'b1),
        .Q(flag));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    flag_s_reg_i_1
       (.I0(a_in_1[1]),
        .I1(a_in_1[0]),
        .I2(a_in_1[2]),
        .I3(a_in_1[4]),
        .I4(a_in_1[3]),
        .O(flag_s_reg_i_1_n_0));
  design_1_top_nqueens_0_1_fsm__parameterized7 fsm_1
       (.AR(ack_in_2),
        .D({fsm_1_n_6,fsm_1_n_7,fsm_1_n_8,fsm_1_n_9}),
        .\FSM_onehot_state_reg[4]_0 (fsm_1_n_2),
        .Q({fsm_2_n_2,fsm_2_n_3,fsm_2_n_4}),
        .SR(fsm_1_n_3),
        .a_in_2(a_in_2),
        .\a_j_reg[0]_i_1__5 (fsm_2_n_27),
        .\a_j_reg[0]_i_1__5_0 (fsm_2_n_26),
        .\a_j_reg[0]_i_1__5_1 (fsm_2_n_28),
        .ack_in_1(ack_in_1),
        .ack_in_1__0(ack_in_1__0),
        .\asout_array_reg[2][4] (a_in_1),
        .clk(clk),
        .\count_reg_reg[0] (flag),
        .\count_reg_reg[3] (fsm_1_n_10),
        .\count_reg_reg[4] (fsm_1_n_21),
        .done_s(done_s),
        .nRst(nRst),
        .next_out_1(next_out_1),
        .next_out_2(next_out_2));
  design_1_top_nqueens_0_1_fsm__parameterized6 fsm_2
       (.AR(ack_in_3),
        .D({fsm_2_n_5,fsm_2_n_6,fsm_2_n_7,fsm_2_n_8,fsm_2_n_9}),
        .\FSM_onehot_state_reg[0]_0 (fsm_1_n_3),
        .\FSM_onehot_state_reg[3]_0 (fsm_2_n_27),
        .Q({fsm_2_n_2,fsm_2_n_3,fsm_2_n_4}),
        .SR(fsm_2_n_10),
        .a_in_2(a_in_2),
        .a_in_3(a_in_3),
        .\a_j_reg[0] ({fsm_3_n_2,fsm_3_n_3}),
        .\a_j_reg[0]_0 (fsm_1_n_21),
        .\a_j_reg[0]_1 (fsm_1_n_10),
        .\a_j_reg[0]_i_1__7 (fsm_3_n_35),
        .\a_j_reg[0]_i_1__7_0 (fsm_3_n_36),
        .clk(clk),
        .\count_reg_reg[0] (ack_in_2),
        .\j_reg[0] (fsm_2_n_26),
        .\j_reg[2] (fsm_2_n_28),
        .nRst(nRst),
        .next_out_2(next_out_2),
        .next_out_3(next_out_3),
        .next_state2_carry_i_6__1({fsm_1_n_6,fsm_1_n_7,fsm_1_n_8,fsm_1_n_9}));
  design_1_top_nqueens_0_1_fsm__parameterized5 fsm_3
       (.AR(ack_in_4),
        .D({fsm_2_n_5,fsm_2_n_6,fsm_2_n_7,fsm_2_n_8,fsm_2_n_9}),
        .\FSM_onehot_state_reg[0]_0 (fsm_2_n_10),
        .\FSM_onehot_state_reg[3]_0 (fsm_3_n_5),
        .\FSM_onehot_state_reg[3]_1 (fsm_3_n_26),
        .\FSM_onehot_state_reg[3]_2 (fsm_3_n_27),
        .\FSM_onehot_state_reg[3]_3 (fsm_3_n_28),
        .\FSM_onehot_state_reg[3]_4 (fsm_3_n_29),
        .\FSM_onehot_state_reg[3]_5 (fsm_3_n_30),
        .\FSM_onehot_state_reg[3]_6 (fsm_3_n_31),
        .Q({fsm_3_n_2,fsm_3_n_3}),
        .SR(fsm_3_n_4),
        .a_in_3(a_in_3),
        .a_in_4(a_in_4),
        .\a_j_reg[0]_i_1__4 ({fsm_4_n_3,fsm_4_n_4}),
        .\a_j_reg[3]_i_2__3 (fsm_4_n_40),
        .\a_j_reg[3]_i_2__3_0 (fsm_4_n_2),
        .clk(clk),
        .\count_reg_reg[0] (fsm_3_n_34),
        .\count_reg_reg[0]_0 (ack_in_3),
        .\count_reg_reg[1] (fsm_3_n_32),
        .\count_reg_reg[2] (fsm_3_n_33),
        .\j_reg[1] (fsm_3_n_35),
        .\j_reg[3] (fsm_3_n_36),
        .nRst(nRst),
        .next_out_3(next_out_3),
        .next_out_4(next_out_4));
  design_1_top_nqueens_0_1_fsm__parameterized4 fsm_4
       (.AR(ack_in_5),
        .D({fsm_4_n_6,fsm_4_n_7,fsm_4_n_8,fsm_4_n_9}),
        .\FSM_onehot_state_reg[0]_0 (fsm_3_n_4),
        .\FSM_onehot_state_reg[3]_0 (fsm_4_n_13),
        .Q({fsm_4_n_3,fsm_4_n_4}),
        .SR(fsm_4_n_5),
        .a_in_4(a_in_4),
        .a_in_5(a_in_5),
        .\a_j_reg[0] (fsm_3_n_29),
        .\a_j_reg[0]_0 (fsm_3_n_26),
        .\a_j_reg[0]_i_1__3 (fsm_5_n_45),
        .\a_j_reg[0]_i_1__3_0 (fsm_5_n_48),
        .\a_j_reg[1]_i_1__4 (fsm_3_n_28),
        .\a_j_reg[2]_i_1__4 (fsm_3_n_27),
        .\a_j_reg[2]_i_1__4_0 (fsm_3_n_34),
        .\a_j_reg[3]_i_1__4 (fsm_3_n_5),
        .\a_j_reg[3]_i_1__4_0 (fsm_3_n_32),
        .\a_j_reg[3]_i_1__4_1 (fsm_3_n_33),
        .\a_j_reg[4] ({fsm_5_n_2,fsm_5_n_3,fsm_5_n_4}),
        .\a_j_reg[4]_0 (fsm_3_n_31),
        .\a_j_reg[4]_1 (fsm_3_n_30),
        .\a_j_reg[4]_i_3__2 (fsm_5_n_47),
        .\a_j_reg[4]_i_3__2_0 (fsm_5_n_46),
        .\a_j_reg[4]_i_4__3 (fsm_4_n_10),
        .clk(clk),
        .\count_reg_reg[0] (fsm_4_n_39),
        .\count_reg_reg[0]_0 (ack_in_4),
        .\count_reg_reg[2] (fsm_4_n_12),
        .\count_reg_reg[4] (fsm_4_n_11),
        .\j_reg[1] (fsm_4_n_40),
        .\j_reg[2] (fsm_4_n_2),
        .nRst(nRst),
        .next_out_4(next_out_4),
        .next_out_5(next_out_5));
  design_1_top_nqueens_0_1_fsm__parameterized3 fsm_5
       (.AR(ack_in_6),
        .D({fsm_5_n_10,fsm_5_n_11,fsm_5_n_12,fsm_5_n_13}),
        .\FSM_onehot_state_reg[0]_0 (fsm_4_n_5),
        .\FSM_onehot_state_reg[3]_0 (fsm_5_n_5),
        .\FSM_onehot_state_reg[3]_1 (fsm_5_n_6),
        .Q({fsm_5_n_2,fsm_5_n_3,fsm_5_n_4}),
        .SR(fsm_5_n_9),
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
        .\a_j_reg[3]_i_3__2 (fsm_5_n_8),
        .\a_j_reg[4] ({fsm_6_n_2,fsm_6_n_3,fsm_6_n_4}),
        .clk(clk),
        .\count_reg_reg[0] (fsm_5_n_14),
        .\count_reg_reg[0]_0 (ack_in_5),
        .\count_reg_reg[2] (fsm_5_n_7),
        .\j_reg[1] (fsm_5_n_45),
        .\j_reg[2] (fsm_5_n_48),
        .\j_reg[3] (fsm_5_n_47),
        .\j_reg[4] (fsm_5_n_46),
        .nRst(nRst),
        .next_out_5(next_out_5),
        .next_out_6(next_out_6),
        .next_state2_carry_i_6__5({fsm_4_n_6,fsm_4_n_7,fsm_4_n_8,fsm_4_n_9}));
  design_1_top_nqueens_0_1_fsm__parameterized2 fsm_6
       (.AR(ack_in_7),
        .D({fsm_6_n_6,fsm_6_n_7,fsm_6_n_8}),
        .\FSM_onehot_state_reg[0]_0 (fsm_5_n_9),
        .\FSM_onehot_state_reg[3]_0 (fsm_6_n_49),
        .\FSM_onehot_state_reg[3]_1 (fsm_6_n_50),
        .Q({fsm_6_n_2,fsm_6_n_3,fsm_6_n_4}),
        .SR(fsm_6_n_5),
        .a_in_6(a_in_6),
        .a_in_7(a_in_7),
        .\a_j_reg[0] (\logic/j ),
        .\a_j_reg[0]_0 (fsm_7_n_50),
        .\a_j_reg[0]_1 (fsm_5_n_8),
        .\a_j_reg[0]_i_1__1 (fsm_7_n_52),
        .\a_j_reg[0]_i_1__1_0 (fsm_7_n_51),
        .\a_j_reg[0]_i_1__2 (fsm_5_n_5),
        .\a_j_reg[0]_i_1__2_0 (fsm_5_n_14),
        .\a_j_reg[0]_i_1__2_1 (fsm_5_n_6),
        .\a_j_reg[0]_i_1__2_2 (fsm_5_n_7),
        .\a_j_reg[0]_i_2__1 (fsm_7_n_54),
        .\a_j_reg[3]_i_2__1 (fsm_7_n_53),
        .\a_j_reg[4]_i_13__1 (fsm_6_n_10),
        .\a_j_reg[4]_i_13__1_0 (fsm_6_n_11),
        .\a_j_reg[4]_i_13__1_1 (fsm_6_n_12),
        .\a_j_reg[4]_i_17__1 (fsm_6_n_9),
        .clk(clk),
        .\count_reg_reg[0] (ack_in_6),
        .\count_reg_reg[3] (fsm_6_n_13),
        .\j_reg[1] (fsm_6_n_51),
        .\j_reg[3] (fsm_6_n_52),
        .\j_reg[4] (fsm_6_n_53),
        .nRst(nRst),
        .next_out_6(next_out_6),
        .next_out_7(next_out_7),
        .next_state2_carry_i_6__4({fsm_5_n_10,fsm_5_n_11,fsm_5_n_12,fsm_5_n_13}));
  design_1_top_nqueens_0_1_fsm__parameterized1 fsm_7
       (.AR(ack_in_8),
        .D({fsm_7_n_5,fsm_7_n_6,fsm_7_n_7,fsm_7_n_8,fsm_7_n_9}),
        .\FSM_onehot_state_reg[0]_0 (fsm_6_n_5),
        .Q(\logic/j ),
        .SR(fsm_7_n_4),
        .a_in_7(a_in_7),
        .a_in_8(a_in_8),
        .\a_j_reg[0] (\logic/j_0 ),
        .\a_j_reg[0]_i_1__0 (fsm_8_n_13),
        .\a_j_reg[0]_i_1__0_0 (fsm_8_n_12),
        .\a_j_reg[0]_i_1__1 (fsm_6_n_13),
        .\a_j_reg[0]_i_2__0 (fsm_8_n_11),
        .\a_j_reg[0]_i_2__0_0 (fsm_8_n_10),
        .\a_j_reg[2] (fsm_6_n_12),
        .\a_j_reg[2]_0 (fsm_6_n_9),
        .\a_j_reg[2]_1 (fsm_6_n_10),
        .\a_j_reg[3]_i_3__1 (fsm_7_n_50),
        .\a_j_reg[4] (fsm_6_n_11),
        .\a_j_reg[4]_i_1__1 (fsm_6_n_49),
        .\a_j_reg[4]_i_1__1_0 (fsm_6_n_50),
        .clk(clk),
        .\count_reg_reg[0] (ack_in_7),
        .\j_reg[1] (fsm_7_n_51),
        .\j_reg[3] (fsm_7_n_52),
        .\j_reg[3]_0 (fsm_7_n_54),
        .\j_reg[4] (fsm_7_n_53),
        .nRst(nRst),
        .next_out_7(next_out_7),
        .next_out_8(next_out_8),
        .next_state2_carry_i_6__3({fsm_6_n_6,fsm_6_n_7,fsm_6_n_8}));
  design_1_top_nqueens_0_1_fsm__parameterized0 fsm_8
       (.AR(ack_in_9),
        .D({fsm_8_n_4,fsm_8_n_5,fsm_8_n_6,fsm_8_n_7,fsm_8_n_8}),
        .\FSM_onehot_state_reg[0]_0 (fsm_7_n_4),
        .Q(\logic/j_0 ),
        .SR(fsm_8_n_9),
        .a_in_8(a_in_8),
        .\a_j_reg[0] (\logic/j_1 ),
        .\a_j_reg[0]_i_1 (fsm_9_n_3),
        .\a_j_reg[0]_i_1_0 (fsm_9_n_4),
        .\a_j_reg[0]_i_2 (fsm_9_n_5),
        .\a_j_reg[0]_i_2_0 (fsm_9_n_6),
        .clk(clk),
        .\count_reg[4]_i_3__0 ({fsm_7_n_5,fsm_7_n_6,fsm_7_n_7,fsm_7_n_8,fsm_7_n_9}),
        .\count_reg_reg[0] (ack_in_8),
        .\j_reg[0] (fsm_8_n_13),
        .\j_reg[3] (fsm_8_n_10),
        .\j_reg[3]_0 (fsm_8_n_12),
        .\j_reg[4] (fsm_8_n_11),
        .nRst(nRst),
        .next_out_8(next_out_8),
        .next_out_9(next_out_9));
  design_1_top_nqueens_0_1_fsm fsm_9
       (.AR(ack_in_9),
        .D({fsm_9_n_7,fsm_9_n_8,fsm_9_n_9,fsm_9_n_10,fsm_9_n_11,fsm_9_n_12,fsm_9_n_13,fsm_9_n_14,fsm_9_n_15,fsm_9_n_16,fsm_9_n_17,fsm_9_n_18}),
        .E(fsm_9_n_19),
        .Q(\logic/j_1 ),
        .SR(fsm_8_n_9),
        .clk(clk),
        .\count_reg[4]_i_3 ({fsm_8_n_4,fsm_8_n_5,fsm_8_n_6,fsm_8_n_7,fsm_8_n_8}),
        .\counter[11] (\counter_s_reg[11]_i_3_n_0 ),
        .\counter[11]_0 (\counter_s_reg[11]_i_4_n_0 ),
        .\j_reg[2] (fsm_9_n_3),
        .\j_reg[2]_0 (fsm_9_n_4),
        .\j_reg[3] (fsm_9_n_6),
        .\j_reg[4] (fsm_9_n_5),
        .next_out_9(next_out_9),
        .plusOp(plusOp));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[1],1'b0}),
        .O(plusOp[3:0]),
        .S({counter[3:2],plusOp_carry_i_1_n_0,counter[0]}));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[7:4]),
        .S(counter[7:4]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3],plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[11:8]),
        .S(counter[11:8]));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(counter[1]),
        .O(plusOp_carry_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter
   (Q,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[4]_0 ,
    D,
    next_state6,
    \state_reg[2] ,
    CO,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    AR);
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[4]_0 ;
  output [2:0]D;
  output [0:0]next_state6;
  input [4:0]\state_reg[2] ;
  input [0:0]CO;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__10_n_0 ;
  wire \count_reg[4]_i_4_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire [0:0]next_state6;
  wire [4:0]\state_reg[2] ;
  wire valid;

  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(complete_tick),
        .I3(\FSM_onehot_state_reg[4] [2]),
        .I4(valid),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(complete_tick));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'h0F0F0F07)) 
    \count_reg[0]_i_1__10 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg[0]_i_1__10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'h3C3C3C34)) 
    \count_reg[1]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'h6AAA6AA2)) 
    \count_reg[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg[4]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[4]));
  LUT6 #(
    .INIT(64'hF6FFFFF600000000)) 
    \count_reg[4]_i_3 
       (.I0(Q[4]),
        .I1(\state_reg[2] [4]),
        .I2(\count_reg[4]_i_4_n_0 ),
        .I3(\state_reg[2] [3]),
        .I4(Q[3]),
        .I5(CO),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \count_reg[4]_i_4 
       (.I0(Q[0]),
        .I1(\state_reg[2] [0]),
        .I2(\state_reg[2] [2]),
        .I3(Q[2]),
        .I4(\state_reg[2] [1]),
        .I5(Q[1]),
        .O(\count_reg[4]_i_4_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\count_reg[0]_i_1__10_n_0 ),
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
  LUT2 #(
    .INIT(4'h9)) 
    next_state2_carry_i_13__7
       (.I0(Q[0]),
        .I1(\state_reg[2] [0]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    next_state2_carry_i_14
       (.I0(Q[0]),
        .I1(\state_reg[2] [0]),
        .I2(Q[1]),
        .I3(\state_reg[2] [1]),
        .I4(\state_reg[2] [2]),
        .I5(Q[2]),
        .O(next_state6));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_8__6
       (.I0(Q[2]),
        .I1(\state_reg[2] [2]),
        .I2(\state_reg[2] [1]),
        .I3(Q[1]),
        .I4(\state_reg[2] [0]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_0
   (Q,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[1]_0 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[4]_0 ,
    D,
    next_state6,
    \state_reg[2] ,
    CO,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[1]_0 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[4]_0 ;
  output [2:0]D;
  output [0:0]next_state6;
  input [4:0]\state_reg[2] ;
  input [0:0]CO;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__11_n_0 ;
  wire \count_reg[4]_i_4__0_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire [0:0]next_state6;
  wire [4:0]\state_reg[2] ;
  wire valid;

  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(complete_tick),
        .I3(\FSM_onehot_state_reg[4] [2]),
        .I4(valid),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__0 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [3]),
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
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h0F0F0F07)) 
    \count_reg[0]_i_1__11 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg[0]_i_1__11_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h6AAA6AA2)) 
    \count_reg[3]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg[4]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[4]));
  LUT6 #(
    .INIT(64'hF6FFFFF600000000)) 
    \count_reg[4]_i_3__0 
       (.I0(Q[4]),
        .I1(\state_reg[2] [4]),
        .I2(\count_reg[4]_i_4__0_n_0 ),
        .I3(\state_reg[2] [3]),
        .I4(Q[3]),
        .I5(CO),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \count_reg[4]_i_4__0 
       (.I0(Q[0]),
        .I1(\state_reg[2] [0]),
        .I2(\state_reg[2] [2]),
        .I3(Q[2]),
        .I4(\state_reg[2] [1]),
        .I5(Q[1]),
        .O(\count_reg[4]_i_4__0_n_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_1 ),
        .D(\count_reg[0]_i_1__11_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h9)) 
    next_state2_carry_i_12__5
       (.I0(Q[0]),
        .I1(\state_reg[2] [0]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    next_state2_carry_i_14__0
       (.I0(Q[0]),
        .I1(\state_reg[2] [0]),
        .I2(Q[1]),
        .I3(\state_reg[2] [1]),
        .I4(\state_reg[2] [2]),
        .I5(Q[2]),
        .O(next_state6));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    next_state2_carry_i_15__0
       (.I0(Q[1]),
        .I1(\state_reg[2] [1]),
        .I2(Q[0]),
        .I3(\state_reg[2] [0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_8__7
       (.I0(Q[2]),
        .I1(\state_reg[2] [2]),
        .I2(\state_reg[2] [1]),
        .I3(Q[1]),
        .I4(\state_reg[2] [0]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_1
   (\count_reg_reg[1]_0 ,
    Q,
    \count_reg_reg[3]_0 ,
    S,
    \count_reg_reg[4]_0 ,
    D,
    complete_tick,
    next_state2_carry_i_9__1,
    next_state2_carry,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_0 );
  output \count_reg_reg[1]_0 ;
  output [4:0]Q;
  output \count_reg_reg[3]_0 ;
  output [0:0]S;
  output \count_reg_reg[4]_0 ;
  output [1:0]D;
  output complete_tick;
  input [4:0]next_state2_carry_i_9__1;
  input [1:0]next_state2_carry;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [0:0]S;
  wire clk;
  wire complete_tick;
  wire [4:0]count_next;
  wire [0:0]\count_reg_reg[0]_0 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire [1:0]next_state2_carry;
  wire next_state2_carry_i_12__0_n_0;
  wire next_state2_carry_i_7__1_n_0;
  wire [4:0]next_state2_carry_i_9__1;
  wire [3:3]next_state6;

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
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__1 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(complete_tick));
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
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h66626666)) 
    \count_reg[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
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
  LUT4 #(
    .INIT(16'h9009)) 
    next_state2_carry_i_10__7
       (.I0(Q[1]),
        .I1(next_state2_carry_i_9__1[1]),
        .I2(Q[0]),
        .I3(next_state2_carry_i_9__1[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hB0FB0000FFFFB0FB)) 
    next_state2_carry_i_12__0
       (.I0(Q[0]),
        .I1(next_state2_carry_i_9__1[0]),
        .I2(Q[1]),
        .I3(next_state2_carry_i_9__1[1]),
        .I4(Q[2]),
        .I5(next_state2_carry_i_9__1[2]),
        .O(next_state2_carry_i_12__0_n_0));
  LUT5 #(
    .INIT(32'h00011210)) 
    next_state2_carry_i_3__1
       (.I0(next_state2_carry[1]),
        .I1(next_state2_carry[0]),
        .I2(\count_reg_reg[3]_0 ),
        .I3(next_state2_carry_i_7__1_n_0),
        .I4(next_state6),
        .O(S));
  LUT6 #(
    .INIT(64'hD7FFFF7DFFD7D7FF)) 
    next_state2_carry_i_5
       (.I0(next_state2_carry_i_7__1_n_0),
        .I1(Q[4]),
        .I2(next_state2_carry_i_9__1[4]),
        .I3(next_state2_carry_i_12__0_n_0),
        .I4(Q[3]),
        .I5(next_state2_carry_i_9__1[3]),
        .O(\count_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    next_state2_carry_i_6__3
       (.I0(next_state2_carry_i_9__1[3]),
        .I1(Q[3]),
        .I2(next_state2_carry_i_12__0_n_0),
        .I3(next_state2_carry_i_9__1[4]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_7__1
       (.I0(Q[2]),
        .I1(next_state2_carry_i_9__1[2]),
        .I2(Q[0]),
        .I3(next_state2_carry_i_9__1[0]),
        .I4(Q[1]),
        .I5(next_state2_carry_i_9__1[1]),
        .O(next_state2_carry_i_7__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_8
       (.I0(next_state2_carry_i_12__0_n_0),
        .I1(next_state2_carry_i_9__1[3]),
        .I2(Q[3]),
        .O(next_state6));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_2
   (\count_reg_reg[1]_0 ,
    Q,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[2]_0 ,
    next_state6,
    \count_reg_reg[0]_0 ,
    D,
    complete_tick,
    next_state2_carry_i_12__1,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[1]_0 ;
  output [4:0]Q;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[2]_0 ;
  output [0:0]next_state6;
  output \count_reg_reg[0]_0 ;
  output [1:0]D;
  output complete_tick;
  input [4:0]next_state2_carry_i_12__1;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire [4:0]next_state2_carry_i_12__1;
  wire next_state2_carry_i_13__1_n_0;
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
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__2 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(complete_tick));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \count_reg[0]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h66626666)) 
    \count_reg[1]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h7F7B8080)) 
    \count_reg[3]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    next_state2_carry_i_10__0
       (.I0(Q[0]),
        .I1(next_state2_carry_i_12__1[0]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB0FB0000FFFFB0FB)) 
    next_state2_carry_i_13__1
       (.I0(Q[0]),
        .I1(next_state2_carry_i_12__1[0]),
        .I2(Q[1]),
        .I3(next_state2_carry_i_12__1[1]),
        .I4(Q[2]),
        .I5(next_state2_carry_i_12__1[2]),
        .O(next_state2_carry_i_13__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    next_state2_carry_i_15__1
       (.I0(Q[1]),
        .I1(next_state2_carry_i_12__1[1]),
        .I2(Q[0]),
        .I3(next_state2_carry_i_12__1[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hD7FFFF7DFFD7D7FF)) 
    next_state2_carry_i_5__0
       (.I0(\count_reg_reg[2]_0 ),
        .I1(Q[4]),
        .I2(next_state2_carry_i_12__1[4]),
        .I3(next_state2_carry_i_13__1_n_0),
        .I4(Q[3]),
        .I5(next_state2_carry_i_12__1[3]),
        .O(\count_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    next_state2_carry_i_6__4
       (.I0(next_state2_carry_i_12__1[3]),
        .I1(Q[3]),
        .I2(next_state2_carry_i_13__1_n_0),
        .I3(next_state2_carry_i_12__1[4]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_7__2
       (.I0(Q[2]),
        .I1(next_state2_carry_i_12__1[2]),
        .I2(Q[0]),
        .I3(next_state2_carry_i_12__1[0]),
        .I4(Q[1]),
        .I5(next_state2_carry_i_12__1[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_8__0
       (.I0(next_state2_carry_i_13__1_n_0),
        .I1(next_state2_carry_i_12__1[3]),
        .I2(Q[3]),
        .O(next_state6));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_3
   (\count_reg_reg[1]_0 ,
    Q,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[2]_0 ,
    next_state6,
    D,
    \count_reg_reg[0]_0 ,
    next_state2_carry_i_10__1,
    \FSM_onehot_state_reg[4] ,
    E,
    clk,
    \count_reg_reg[0]_1 );
  output \count_reg_reg[1]_0 ;
  output [4:0]Q;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[2]_0 ;
  output [0:0]next_state6;
  output [1:0]D;
  output \count_reg_reg[0]_0 ;
  input [4:0]next_state2_carry_i_10__1;
  input [1:0]\FSM_onehot_state_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire [0:0]\count_reg_reg[0]_1 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire [4:0]next_state2_carry_i_10__1;
  wire next_state2_carry_i_13__2_n_0;
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
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__3 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(\count_reg_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_state[4]_i_4__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\count_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
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
  LUT4 #(
    .INIT(16'h9009)) 
    next_state2_carry_i_11__7
       (.I0(Q[1]),
        .I1(next_state2_carry_i_10__1[1]),
        .I2(Q[0]),
        .I3(next_state2_carry_i_10__1[0]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hB0FB0000FFFFB0FB)) 
    next_state2_carry_i_13__2
       (.I0(Q[0]),
        .I1(next_state2_carry_i_10__1[0]),
        .I2(Q[1]),
        .I3(next_state2_carry_i_10__1[1]),
        .I4(Q[2]),
        .I5(next_state2_carry_i_10__1[2]),
        .O(next_state2_carry_i_13__2_n_0));
  LUT6 #(
    .INIT(64'hD7FFFF7DFFD7D7FF)) 
    next_state2_carry_i_5__1
       (.I0(\count_reg_reg[2]_0 ),
        .I1(Q[4]),
        .I2(next_state2_carry_i_10__1[4]),
        .I3(next_state2_carry_i_13__2_n_0),
        .I4(Q[3]),
        .I5(next_state2_carry_i_10__1[3]),
        .O(\count_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    next_state2_carry_i_6__5
       (.I0(next_state2_carry_i_10__1[3]),
        .I1(Q[3]),
        .I2(next_state2_carry_i_13__2_n_0),
        .I3(next_state2_carry_i_10__1[4]),
        .I4(Q[4]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_7__3
       (.I0(Q[2]),
        .I1(next_state2_carry_i_10__1[2]),
        .I2(Q[0]),
        .I3(next_state2_carry_i_10__1[0]),
        .I4(Q[1]),
        .I5(next_state2_carry_i_10__1[1]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_8__1
       (.I0(next_state2_carry_i_13__2_n_0),
        .I1(next_state2_carry_i_10__1[3]),
        .I2(Q[3]),
        .O(next_state6));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_4
   (next_state3,
    Q,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[3]_1 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[0]_1 ,
    D,
    \count_reg[4]_i_3__4 ,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_2 );
  output [0:0]next_state3;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[3]_1 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[0]_1 ;
  output [2:0]D;
  input [4:0]\count_reg[4]_i_3__4 ;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__4_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire [4:0]count_next;
  wire [4:0]\count_reg[4]_i_3__4 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[3]_1 ;
  wire \count_reg_reg[4]_0 ;
  wire next_state2_carry_i_14__3_n_0;
  wire [0:0]next_state3;
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
    .INIT(8'hE0)) 
    \FSM_onehot_state[4]_i_3__4 
       (.I0(\FSM_onehot_state_reg[4] [3]),
        .I1(\FSM_onehot_state_reg[4] [1]),
        .I2(\FSM_onehot_state[4]_i_4__4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__4 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__9 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__10 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__9 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__10 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[4]));
  LUT5 #(
    .INIT(32'h90090000)) 
    \count_reg[4]_i_4__4 
       (.I0(\count_reg[4]_i_3__4 [3]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\count_reg[4]_i_3__4 [4]),
        .I4(\count_reg_reg[2]_0 ),
        .O(\count_reg_reg[3]_1 ));
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
  LUT2 #(
    .INIT(4'h6)) 
    next_state2_carry_i_13__3
       (.I0(Q[0]),
        .I1(\count_reg[4]_i_3__4 [0]),
        .O(\count_reg_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h44D40000FFFF44D4)) 
    next_state2_carry_i_14__3
       (.I0(Q[1]),
        .I1(\count_reg[4]_i_3__4 [1]),
        .I2(\count_reg[4]_i_3__4 [0]),
        .I3(Q[0]),
        .I4(\count_reg[4]_i_3__4 [2]),
        .I5(Q[2]),
        .O(next_state2_carry_i_14__3_n_0));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    next_state2_carry_i_15
       (.I0(Q[0]),
        .I1(\count_reg[4]_i_3__4 [0]),
        .I2(\count_reg[4]_i_3__4 [1]),
        .I3(Q[1]),
        .I4(\count_reg[4]_i_3__4 [2]),
        .I5(Q[2]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0060600090000060)) 
    next_state2_carry_i_5__2
       (.I0(Q[4]),
        .I1(\count_reg[4]_i_3__4 [4]),
        .I2(\count_reg_reg[2]_0 ),
        .I3(next_state2_carry_i_14__3_n_0),
        .I4(\count_reg[4]_i_3__4 [3]),
        .I5(Q[3]),
        .O(next_state3));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_7__4
       (.I0(next_state2_carry_i_14__3_n_0),
        .I1(\count_reg[4]_i_3__4 [3]),
        .I2(Q[3]),
        .O(\count_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_8__2
       (.I0(Q[2]),
        .I1(\count_reg[4]_i_3__4 [2]),
        .I2(Q[1]),
        .I3(\count_reg[4]_i_3__4 [1]),
        .I4(\count_reg[4]_i_3__4 [0]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h99696966)) 
    next_state2_carry_i_9__4
       (.I0(\count_reg[4]_i_3__4 [4]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\count_reg[4]_i_3__4 [3]),
        .I4(next_state2_carry_i_14__3_n_0),
        .O(\count_reg_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_5
   (Q,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[0]_0 ,
    D,
    next_state6,
    \count_reg_reg[0]_1 ,
    \count_reg[4]_i_3__5 ,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_2 );
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[0]_0 ;
  output [2:0]D;
  output [0:0]next_state6;
  output \count_reg_reg[0]_1 ;
  input [2:0]\count_reg[4]_i_3__5 ;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire clk;
  wire complete_tick;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__12_n_0 ;
  wire [2:0]\count_reg[4]_i_3__5 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire [0:0]\count_reg_reg[0]_2 ;
  wire \count_reg_reg[2]_0 ;
  wire [0:0]next_state6;
  wire valid;

  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \FSM_onehot_state[1]_i_1__5 
       (.I0(\FSM_onehot_state_reg[4] [0]),
        .I1(\FSM_onehot_state_reg[4] [3]),
        .I2(complete_tick),
        .I3(\FSM_onehot_state_reg[4] [2]),
        .I4(valid),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \FSM_onehot_state[2]_i_1__5 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_state[4]_i_3__5 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(complete_tick),
        .I2(\FSM_onehot_state_reg[4] [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_4__5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(complete_tick));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0F0F0F07)) 
    \count_reg[0]_i_1__12 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_reg[0]_i_1__12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h3C3C3C34)) 
    \count_reg[1]_i_1__11 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_reg[2]_i_1__12 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h6AAA6AA2)) 
    \count_reg[3]_i_1__11 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg[4]_i_1__12 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(count_next[4]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \count_reg[4]_i_4__5 
       (.I0(Q[0]),
        .I1(\count_reg[4]_i_3__5 [0]),
        .I2(\count_reg[4]_i_3__5 [2]),
        .I3(Q[2]),
        .I4(\count_reg[4]_i_3__5 [1]),
        .I5(Q[1]),
        .O(\count_reg_reg[0]_1 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_2 ),
        .D(\count_reg[0]_i_1__12_n_0 ),
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
  LUT2 #(
    .INIT(4'h9)) 
    next_state2_carry_i_12__6
       (.I0(Q[0]),
        .I1(\count_reg[4]_i_3__5 [0]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    next_state2_carry_i_13__4
       (.I0(Q[0]),
        .I1(\count_reg[4]_i_3__5 [0]),
        .I2(Q[1]),
        .I3(\count_reg[4]_i_3__5 [1]),
        .I4(\count_reg[4]_i_3__5 [2]),
        .I5(Q[2]),
        .O(next_state6));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_7__7
       (.I0(Q[2]),
        .I1(\count_reg[4]_i_3__5 [2]),
        .I2(\count_reg[4]_i_3__5 [1]),
        .I3(Q[1]),
        .I4(\count_reg[4]_i_3__5 [0]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_6
   (Q,
    \count_reg_reg[0]_0 ,
    S,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[3]_0 ,
    next_state3,
    \count_reg_reg[0]_1 ,
    \count_reg_reg[0]_2 ,
    D,
    next_state2_carry_i_4__6,
    next_state2_carry,
    next_state2_carry_0,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    \count_reg_reg[0]_3 );
  output [4:0]Q;
  output \count_reg_reg[0]_0 ;
  output [0:0]S;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[3]_0 ;
  output [0:0]next_state3;
  output \count_reg_reg[0]_1 ;
  output \count_reg_reg[0]_2 ;
  output [2:0]D;
  input [4:0]next_state2_carry_i_4__6;
  input next_state2_carry;
  input [1:0]next_state2_carry_0;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input [0:0]\count_reg_reg[0]_3 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__6_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire [0:0]S;
  wire clk;
  wire [4:1]count_next;
  wire \count_reg[0]_i_1__13_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[0]_1 ;
  wire \count_reg_reg[0]_2 ;
  wire [0:0]\count_reg_reg[0]_3 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire next_state2_carry;
  wire [1:0]next_state2_carry_0;
  wire next_state2_carry_i_13__5_n_0;
  wire [4:0]next_state2_carry_i_4__6;
  wire next_state2_carry_i_7__5_n_0;
  wire next_state2_carry_i_8__4_n_0;
  wire [0:0]next_state3;
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
    .INIT(8'hE0)) 
    \FSM_onehot_state[4]_i_3__6 
       (.I0(\FSM_onehot_state_reg[4] [3]),
        .I1(\FSM_onehot_state_reg[4] [1]),
        .I2(\FSM_onehot_state[4]_i_4__6_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__6 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__13 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\count_reg[0]_i_1__13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__12 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__14 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__12 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__14 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(count_next[4]));
  LUT5 #(
    .INIT(32'h90000090)) 
    \count_reg[4]_i_4__6 
       (.I0(next_state2_carry_i_4__6[3]),
        .I1(Q[3]),
        .I2(next_state2_carry_i_7__5_n_0),
        .I3(Q[4]),
        .I4(next_state2_carry_i_4__6[4]),
        .O(\count_reg_reg[3]_0 ));
  FDCE \count_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_3 ),
        .D(\count_reg[0]_i_1__13_n_0 ),
        .Q(Q[0]));
  FDCE \count_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_3 ),
        .D(count_next[1]),
        .Q(Q[1]));
  FDCE \count_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_3 ),
        .D(count_next[2]),
        .Q(Q[2]));
  FDCE \count_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_3 ),
        .D(count_next[3]),
        .Q(Q[3]));
  FDCE \count_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\count_reg_reg[0]_3 ),
        .D(count_next[4]),
        .Q(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    next_state2_carry_i_11__5
       (.I0(Q[0]),
        .I1(next_state2_carry_i_4__6[0]),
        .I2(next_state2_carry_i_4__6[1]),
        .I3(Q[1]),
        .O(\count_reg_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h9)) 
    next_state2_carry_i_12__7
       (.I0(Q[0]),
        .I1(next_state2_carry_i_4__6[0]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFF0000BB2B)) 
    next_state2_carry_i_13__5
       (.I0(Q[1]),
        .I1(next_state2_carry_i_4__6[1]),
        .I2(next_state2_carry_i_4__6[0]),
        .I3(Q[0]),
        .I4(next_state2_carry_i_4__6[2]),
        .I5(Q[2]),
        .O(next_state2_carry_i_13__5_n_0));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    next_state2_carry_i_14__4
       (.I0(Q[0]),
        .I1(next_state2_carry_i_4__6[0]),
        .I2(next_state2_carry_i_4__6[1]),
        .I3(Q[1]),
        .I4(next_state2_carry_i_4__6[2]),
        .I5(Q[2]),
        .O(\count_reg_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000040000041A00)) 
    next_state2_carry_i_3__6
       (.I0(\count_reg_reg[4]_0 ),
        .I1(next_state2_carry_i_7__5_n_0),
        .I2(next_state2_carry_i_8__4_n_0),
        .I3(next_state2_carry),
        .I4(next_state2_carry_0[0]),
        .I5(next_state2_carry_0[1]),
        .O(S));
  LUT6 #(
    .INIT(64'h0020820882080020)) 
    next_state2_carry_i_5__3
       (.I0(next_state2_carry_i_7__5_n_0),
        .I1(next_state2_carry_i_13__5_n_0),
        .I2(next_state2_carry_i_4__6[3]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(next_state2_carry_i_4__6[4]),
        .O(next_state3));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    next_state2_carry_i_6__1
       (.I0(next_state2_carry_i_4__6[4]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(next_state2_carry_i_4__6[3]),
        .I4(next_state2_carry_i_13__5_n_0),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_7__5
       (.I0(Q[2]),
        .I1(next_state2_carry_i_4__6[2]),
        .I2(Q[1]),
        .I3(next_state2_carry_i_4__6[1]),
        .I4(next_state2_carry_i_4__6[0]),
        .I5(Q[0]),
        .O(next_state2_carry_i_7__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_8__4
       (.I0(next_state2_carry_i_13__5_n_0),
        .I1(next_state2_carry_i_4__6[3]),
        .I2(Q[3]),
        .O(next_state2_carry_i_8__4_n_0));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_top_nqueens_0_1_up_counter_7
   (next_state3,
    Q,
    \count_reg_reg[2]_0 ,
    \count_reg_reg[3]_0 ,
    \count_reg_reg[4]_0 ,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[1]_0 ,
    D,
    next_state2_carry_i_10__5,
    \FSM_onehot_state_reg[4] ,
    valid,
    E,
    clk,
    ack_in_1);
  output [0:0]next_state3;
  output [4:0]Q;
  output \count_reg_reg[2]_0 ;
  output \count_reg_reg[3]_0 ;
  output \count_reg_reg[4]_0 ;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[1]_0 ;
  output [2:0]D;
  input [4:0]next_state2_carry_i_10__5;
  input [3:0]\FSM_onehot_state_reg[4] ;
  input valid;
  input [0:0]E;
  input clk;
  input ack_in_1;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_4__7_n_0 ;
  wire [3:0]\FSM_onehot_state_reg[4] ;
  wire [4:0]Q;
  wire ack_in_1;
  wire clk;
  wire [4:0]count_next;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[1]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[3]_0 ;
  wire \count_reg_reg[4]_0 ;
  wire [4:0]next_state2_carry_i_10__5;
  wire next_state2_carry_i_11__6_n_0;
  wire [0:0]next_state3;
  wire valid;

  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_state[1]_i_1__8 
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
    .INIT(8'hE0)) 
    \FSM_onehot_state[4]_i_3__7 
       (.I0(\FSM_onehot_state_reg[4] [3]),
        .I1(\FSM_onehot_state_reg[4] [1]),
        .I2(\FSM_onehot_state[4]_i_4__7_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_state[4]_i_4__7 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[4]_i_4__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \count_reg[0]_i_1__9 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F0FF0B0)) 
    \count_reg[1]_i_1__13 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1__16 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3CCCCC8C)) 
    \count_reg[3]_i_1__13 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_reg[4]_i_1__16 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
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
  LUT6 #(
    .INIT(64'hBB2BFFFF0000BB2B)) 
    next_state2_carry_i_11__6
       (.I0(Q[1]),
        .I1(next_state2_carry_i_10__5[1]),
        .I2(next_state2_carry_i_10__5[0]),
        .I3(Q[0]),
        .I4(next_state2_carry_i_10__5[2]),
        .I5(Q[2]),
        .O(next_state2_carry_i_11__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    next_state2_carry_i_13__6
       (.I0(Q[1]),
        .I1(next_state2_carry_i_10__5[1]),
        .O(\count_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    next_state2_carry_i_14__5
       (.I0(Q[0]),
        .I1(next_state2_carry_i_10__5[0]),
        .I2(next_state2_carry_i_10__5[1]),
        .I3(Q[1]),
        .I4(next_state2_carry_i_10__5[2]),
        .I5(Q[2]),
        .O(\count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000060060960)) 
    next_state2_carry_i_5__4
       (.I0(Q[4]),
        .I1(next_state2_carry_i_10__5[4]),
        .I2(next_state2_carry_i_11__6_n_0),
        .I3(next_state2_carry_i_10__5[3]),
        .I4(Q[3]),
        .I5(\count_reg_reg[2]_0 ),
        .O(next_state3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    next_state2_carry_i_6__2
       (.I0(next_state2_carry_i_11__6_n_0),
        .I1(next_state2_carry_i_10__5[3]),
        .I2(Q[3]),
        .O(\count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    next_state2_carry_i_7__6
       (.I0(next_state2_carry_i_10__5[4]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(next_state2_carry_i_10__5[3]),
        .I4(next_state2_carry_i_11__6_n_0),
        .O(\count_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    next_state2_carry_i_8__5
       (.I0(Q[2]),
        .I1(next_state2_carry_i_10__5[2]),
        .I2(Q[1]),
        .I3(next_state2_carry_i_10__5[1]),
        .I4(next_state2_carry_i_10__5[0]),
        .I5(Q[0]),
        .O(\count_reg_reg[2]_0 ));
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
