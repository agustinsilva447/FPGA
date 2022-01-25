// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 25 18:41:26 2022
// Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_3/pynq_nqueens_3.gen/sources_1/bd/design_1/ip/design_1_fsm_block_0_3/design_1_fsm_block_0_3_sim_netlist.v
// Design      : design_1_fsm_block_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fsm_block_0_3,fsm_block,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "fsm_block,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_fsm_block_0_3
   (clk,
    nRst,
    a_in,
    ack_in,
    next_in,
    a_out,
    ack_out,
    next_out,
    output_state);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input nRst;
  input [11:0]a_in;
  input ack_in;
  input next_in;
  output [15:0]a_out;
  output ack_out;
  output next_out;
  output [2:0]output_state;

  wire [11:0]a_in;
  wire [15:0]a_out;
  wire ack_in;
  wire ack_out;
  wire clk;
  wire nRst;
  wire next_in;
  wire next_out;
  wire [2:0]output_state;

  design_1_fsm_block_0_3_fsm_block U0
       (.Q(output_state[2]),
        .a_in(a_in),
        .a_out(a_out),
        .ack_in(ack_in),
        .ack_out(ack_out),
        .clk(clk),
        .nRst(nRst),
        .next_in(next_in),
        .next_out(next_out),
        .output_state(output_state[1:0]));
endmodule

(* ORIG_REF_NAME = "ctrl_logic" *) 
module design_1_fsm_block_0_3_ctrl_logic
   (Q,
    \FSM_onehot_state_reg[2] ,
    E,
    D,
    clk,
    AR,
    ack_out,
    next_in,
    \FSM_onehot_state_reg[1] ,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    done_aux_reg_0);
  output [1:0]Q;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output [1:0]D;
  input clk;
  input [0:0]AR;
  input [4:0]ack_out;
  input next_in;
  input \FSM_onehot_state_reg[1] ;
  input \count_reg[0]_0 ;
  input \count_reg[0]_1 ;
  input done_aux_reg_0;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [1:0]Q;
  wire [4:0]ack_out;
  wire clk;
  wire count;
  wire [3:0]count_reg;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_1 ;
  wire done;
  wire done_aux_i_1_n_0;
  wire done_aux_reg_0;
  wire j0;
  wire \j[0]_i_1_n_0 ;
  wire [2:2]j_reg;
  wire next_in;
  wire [2:1]p_0_in;
  wire [3:0]plusOp;
  wire valid;
  wire valid_aux_i_1_n_0;
  wire valid_aux_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(valid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(ack_out[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ack_out[2]),
        .I1(valid),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(ack_out[2]),
        .I1(done),
        .I2(ack_out[3]),
        .I3(next_in),
        .I4(ack_out[0]),
        .I5(ack_out[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    acks_out_reg_i_2
       (.I0(ack_out[2]),
        .I1(valid),
        .I2(done),
        .I3(ack_out[0]),
        .I4(ack_out[4]),
        .I5(ack_out[1]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(plusOp[2]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \count[3]_i_1 
       (.I0(j_reg),
        .I1(\count_reg[0]_0 ),
        .I2(Q[0]),
        .I3(\count_reg[0]_1 ),
        .I4(done),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    done_aux_i_1
       (.I0(j_reg),
        .I1(done_aux_reg_0),
        .I2(done),
        .O(done_aux_i_1_n_0));
  FDCE done_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(done_aux_i_1_n_0),
        .Q(done));
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(Q[0]),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h0015)) 
    \j[2]_i_1 
       (.I0(j_reg),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(done),
        .O(j0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[2]));
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
        .Q(j_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    valid_aux_i_1
       (.I0(j_reg),
        .I1(valid_aux_i_2_n_0),
        .I2(valid),
        .O(valid_aux_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    valid_aux_i_2
       (.I0(Q[1]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(Q[0]),
        .O(valid_aux_i_2_n_0));
  FDCE valid_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_aux_i_1_n_0),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "fsm_block" *) 
module design_1_fsm_block_0_3_fsm_block
   (Q,
    a_out,
    ack_out,
    next_out,
    output_state,
    clk,
    a_in,
    next_in,
    nRst,
    ack_in);
  output [0:0]Q;
  output [15:0]a_out;
  output ack_out;
  output next_out;
  output [1:0]output_state;
  input clk;
  input [11:0]a_in;
  input next_in;
  input nRst;
  input ack_in;

  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [11:0]a_in;
  wire [15:0]a_out;
  wire ack_in;
  wire ack_out;
  wire acks_out;
  wire \asout_array[3]_0 ;
  wire ce;
  wire ce__0;
  wire ce_reg_i_1_n_0;
  wire clk;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire [1:0]j_reg;
  wire logic_n_2;
  wire logic_n_3;
  wire logic_n_4;
  wire logic_n_5;
  wire nRst;
  wire next_in;
  wire next_out;
  wire [1:0]output_state;
  wire reset_control;
  wire reset_control__0;
  wire reset_control_reg_i_2_n_0;
  wire reset_counter;
  wire [3:0]u_i;

  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(logic_n_3),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(reset_counter));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(logic_n_3),
        .D(logic_n_5),
        .Q(ce__0),
        .R(reset_counter));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(logic_n_3),
        .D(dut_n_7),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(reset_counter));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(logic_n_3),
        .D(logic_n_4),
        .Q(\asout_array[3]_0 ),
        .R(reset_counter));
  (* FSM_ENCODED_STATES = "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(logic_n_3),
        .D(dut_n_6),
        .Q(Q),
        .R(reset_counter));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    acks_out_reg
       (.CLR(1'b0),
        .D(acks_out),
        .G(logic_n_2),
        .GE(1'b1),
        .Q(ack_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    acks_out_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q),
        .I2(ce__0),
        .O(acks_out));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][0] 
       (.CLR(1'b0),
        .D(u_i[0]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][1] 
       (.CLR(1'b0),
        .D(u_i[1]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][2] 
       (.CLR(1'b0),
        .D(u_i[2]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[0][3] 
       (.CLR(1'b0),
        .D(u_i[3]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][0] 
       (.CLR(1'b0),
        .D(a_in[0]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][1] 
       (.CLR(1'b0),
        .D(a_in[1]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][2] 
       (.CLR(1'b0),
        .D(a_in[2]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[1][3] 
       (.CLR(1'b0),
        .D(a_in[3]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][0] 
       (.CLR(1'b0),
        .D(a_in[4]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][1] 
       (.CLR(1'b0),
        .D(a_in[5]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][2] 
       (.CLR(1'b0),
        .D(a_in[6]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[2][3] 
       (.CLR(1'b0),
        .D(a_in[7]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][0] 
       (.CLR(1'b0),
        .D(a_in[8]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][1] 
       (.CLR(1'b0),
        .D(a_in[9]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][2] 
       (.CLR(1'b0),
        .D(a_in[10]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \asout_array_reg[3][3] 
       (.CLR(1'b0),
        .D(a_in[11]),
        .G(\asout_array[3]_0 ),
        .GE(1'b1),
        .Q(a_out[15]));
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ce_reg_i_1
       (.I0(ce__0),
        .I1(Q),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(ce_reg_i_1_n_0));
  design_1_fsm_block_0_3_up_counter dut
       (.AR(reset_counter),
        .D({dut_n_6,dut_n_7}),
        .\FSM_onehot_state_reg[3] (dut_n_8),
        .\FSM_onehot_state_reg[4] ({\asout_array[3]_0 ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .Q(u_i),
        .a_in(a_in),
        .a_in_3_sp_1(dut_n_5),
        .a_in_7_sp_1(dut_n_4),
        .ack_in(ack_in),
        .ce(ce),
        .clk(clk),
        .\count_reg[0] (j_reg),
        .\j_reg[1] (dut_n_9),
        .nRst(nRst));
  design_1_fsm_block_0_3_ctrl_logic logic
       (.AR(reset_control),
        .D({logic_n_4,logic_n_5}),
        .E(logic_n_3),
        .\FSM_onehot_state_reg[1] (dut_n_8),
        .\FSM_onehot_state_reg[2] (logic_n_2),
        .Q(j_reg),
        .ack_out({Q,\asout_array[3]_0 ,\FSM_onehot_state_reg_n_0_[2] ,ce__0,\FSM_onehot_state_reg_n_0_[0] }),
        .clk(clk),
        .\count_reg[0]_0 (dut_n_5),
        .\count_reg[0]_1 (dut_n_4),
        .done_aux_reg_0(dut_n_9),
        .next_in(next_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    nexts_out_reg
       (.CLR(1'b0),
        .D(Q),
        .G(acks_out),
        .GE(1'b1),
        .Q(next_out));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \output_state[0]_INST_0 
       (.I0(\asout_array[3]_0 ),
        .I1(ce__0),
        .O(output_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \output_state[1]_INST_0 
       (.I0(\asout_array[3]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(output_state[1]));
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    reset_control_reg_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\asout_array[3]_0 ),
        .I2(ce__0),
        .O(reset_control__0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_control_reg_i_2
       (.I0(ce__0),
        .I1(\asout_array[3]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(reset_control_reg_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "up_counter" *) 
module design_1_fsm_block_0_3_up_counter
   (Q,
    a_in_7_sp_1,
    a_in_3_sp_1,
    D,
    \FSM_onehot_state_reg[3] ,
    \j_reg[1] ,
    AR,
    clk,
    ce,
    a_in,
    \count_reg[0] ,
    \FSM_onehot_state_reg[4] ,
    nRst,
    ack_in);
  output [3:0]Q;
  output a_in_7_sp_1;
  output a_in_3_sp_1;
  output [1:0]D;
  output \FSM_onehot_state_reg[3] ;
  output \j_reg[1] ;
  output [0:0]AR;
  input clk;
  input ce;
  input [11:0]a_in;
  input [1:0]\count_reg[0] ;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input nRst;
  input ack_in;

  wire [0:0]AR;
  wire [1:0]D;
  wire \FSM_onehot_state_reg[3] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire [3:0]Q;
  wire [11:0]a_in;
  wire a_in_3_sn_1;
  wire a_in_7_sn_1;
  wire ack_in;
  wire ce;
  wire clk;
  wire \count[3]_i_10_n_0 ;
  wire \count[3]_i_11_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[3]_i_6_n_0 ;
  wire \count[3]_i_7_n_0 ;
  wire \count[3]_i_8_n_0 ;
  wire \count[3]_i_9_n_0 ;
  wire [3:0]count_next;
  wire [1:0]\count_reg[0] ;
  wire \count_reg_reg[3]_i_2_n_0 ;
  wire done_aux_i_10_n_0;
  wire done_aux_i_11_n_0;
  wire done_aux_i_3_n_0;
  wire done_aux_i_4_n_0;
  wire done_aux_i_5_n_0;
  wire done_aux_i_6_n_0;
  wire done_aux_i_7_n_0;
  wire done_aux_i_8_n_0;
  wire done_aux_i_9_n_0;
  wire \j_reg[1] ;
  wire nRst;

  assign a_in_3_sp_1 = a_in_3_sn_1;
  assign a_in_7_sp_1 = a_in_7_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAA)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\FSM_onehot_state_reg[4] [0]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[4] [1]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(nRst),
        .I1(ack_in),
        .O(AR));
  LUT6 #(
    .INIT(64'h0000000C00000008)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg[4] [1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg[4] [2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFBFEFFBDFF7FDFF)) 
    \count[3]_i_10 
       (.I0(a_in[10]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_in[8]),
        .I4(a_in[9]),
        .I5(Q[2]),
        .O(\count[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6FD6F6BDBD6F6BF6)) 
    \count[3]_i_11 
       (.I0(a_in[10]),
        .I1(Q[2]),
        .I2(a_in[9]),
        .I3(a_in[8]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\count[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hED48FFFFED480000)) 
    \count[3]_i_3 
       (.I0(a_in[3]),
        .I1(\count[3]_i_5_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_6_n_0 ),
        .I4(\count_reg[0] [1]),
        .I5(\count[3]_i_7_n_0 ),
        .O(a_in_3_sn_1));
  LUT5 #(
    .INIT(32'h0000B8E2)) 
    \count[3]_i_4 
       (.I0(\count[3]_i_8_n_0 ),
        .I1(Q[3]),
        .I2(\count[3]_i_9_n_0 ),
        .I3(a_in[7]),
        .I4(\count_reg[0] [1]),
        .O(a_in_7_sn_1));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFF7FFFF)) 
    \count[3]_i_5 
       (.I0(a_in[2]),
        .I1(a_in[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(a_in[0]),
        .I5(Q[2]),
        .O(\count[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F666D6FF6B666F6)) 
    \count[3]_i_6 
       (.I0(a_in[2]),
        .I1(Q[2]),
        .I2(a_in[1]),
        .I3(Q[0]),
        .I4(a_in[0]),
        .I5(Q[1]),
        .O(\count[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \count[3]_i_7 
       (.I0(a_in[11]),
        .I1(\count[3]_i_10_n_0 ),
        .I2(Q[3]),
        .I3(\count[3]_i_11_n_0 ),
        .O(\count[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h45A2FFFFFFFF45A2)) 
    \count[3]_i_8 
       (.I0(a_in[6]),
        .I1(Q[1]),
        .I2(a_in[5]),
        .I3(Q[2]),
        .I4(a_in[4]),
        .I5(Q[0]),
        .O(\count[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFF7FF7)) 
    \count[3]_i_9 
       (.I0(a_in[6]),
        .I1(a_in[5]),
        .I2(a_in[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\count[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.CLR(AR),
        .D(count_next[0]),
        .G(\count_reg_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \count_reg_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(count_next[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.CLR(AR),
        .D(count_next[1]),
        .G(\count_reg_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(count_next[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.CLR(AR),
        .D(count_next[2]),
        .G(\count_reg_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(count_next[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.CLR(AR),
        .D(count_next[3]),
        .G(\count_reg_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AA8)) 
    \count_reg_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(count_next[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \count_reg_reg[3]_i_2 
       (.I0(clk),
        .I1(ce),
        .O(\count_reg_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA5D00000000BA5D)) 
    done_aux_i_10
       (.I0(a_in[6]),
        .I1(Q[1]),
        .I2(a_in[5]),
        .I3(Q[2]),
        .I4(a_in[4]),
        .I5(Q[0]),
        .O(done_aux_i_10_n_0));
  LUT6 #(
    .INIT(64'h1000010000800008)) 
    done_aux_i_11
       (.I0(a_in[6]),
        .I1(a_in[5]),
        .I2(a_in[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(done_aux_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    done_aux_i_2
       (.I0(done_aux_i_3_n_0),
        .I1(\count_reg[0] [1]),
        .I2(done_aux_i_4_n_0),
        .I3(\count_reg[0] [0]),
        .I4(done_aux_i_5_n_0),
        .O(\j_reg[1] ));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_3
       (.I0(a_in[11]),
        .I1(done_aux_i_6_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_7_n_0),
        .O(done_aux_i_3_n_0));
  LUT4 #(
    .INIT(16'hED48)) 
    done_aux_i_4
       (.I0(a_in[3]),
        .I1(done_aux_i_8_n_0),
        .I2(Q[3]),
        .I3(done_aux_i_9_n_0),
        .O(done_aux_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFB8E2)) 
    done_aux_i_5
       (.I0(done_aux_i_10_n_0),
        .I1(Q[3]),
        .I2(done_aux_i_11_n_0),
        .I3(a_in[7]),
        .I4(\count_reg[0] [1]),
        .O(done_aux_i_5_n_0));
  LUT6 #(
    .INIT(64'h0040041008200200)) 
    done_aux_i_6
       (.I0(a_in[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(a_in[8]),
        .I4(a_in[9]),
        .I5(Q[2]),
        .O(done_aux_i_6_n_0));
  LUT6 #(
    .INIT(64'h9029094242909409)) 
    done_aux_i_7
       (.I0(a_in[10]),
        .I1(Q[2]),
        .I2(a_in[9]),
        .I3(a_in[8]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(done_aux_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000100000080000)) 
    done_aux_i_8
       (.I0(a_in[2]),
        .I1(a_in[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(a_in[0]),
        .I5(Q[2]),
        .O(done_aux_i_8_n_0));
  LUT6 #(
    .INIT(64'h9099929009499909)) 
    done_aux_i_9
       (.I0(a_in[2]),
        .I1(Q[2]),
        .I2(a_in[1]),
        .I3(Q[0]),
        .I4(a_in[0]),
        .I5(Q[1]),
        .O(done_aux_i_9_n_0));
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
