// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="nqueens,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.149000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=273,HLS_SYN_LUT=784,HLS_VERSION=2019_2}" *)

module nqueens (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_we0,
        a_d0,
        a_q0,
        k,
        n_0,
        u_0,
        sol_list,
        flag
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
input  [31:0] a_q0;
input  [31:0] k;
input  [31:0] n_0;
input  [31:0] u_0;
input  [31:0] sol_list;
input   flag;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] a_address0;
reg a_ce0;
reg a_we0;
reg[31:0] a_d0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] zext_ln8_fu_179_p1;
reg   [31:0] zext_ln8_reg_362;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln8_fu_183_p2;
reg   [0:0] icmp_ln8_reg_368;
wire   [31:0] zext_ln10_fu_189_p1;
reg   [31:0] zext_ln10_reg_372;
wire    ap_CS_fsm_state4;
wire   [30:0] j_fu_199_p2;
reg   [30:0] j_reg_380;
wire   [0:0] icmp_ln10_fu_193_p2;
wire   [2:0] u_fu_216_p2;
wire   [0:0] icmp_ln15_fu_210_p2;
wire   [31:0] select_ln11_1_fu_287_p3;
wire    ap_CS_fsm_state5;
reg  signed [31:0] n_0_assign_2_load_1_reg_403;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln27_fu_300_p2;
reg   [0:0] icmp_ln27_reg_414;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln30_fu_311_p2;
reg   [0:0] icmp_ln30_reg_418;
wire   [31:0] add_ln37_fu_327_p2;
wire   [31:0] add_ln39_fu_338_p2;
wire    ap_CS_fsm_state8;
reg  signed [31:0] k_assign_2_reg_104;
wire   [0:0] icmp_ln40_fu_344_p2;
reg   [2:0] u_0_i_reg_114;
wire    ap_CS_fsm_state2;
reg   [31:0] count_0_i_reg_126;
reg   [30:0] j_0_i_reg_138;
reg   [2:0] ap_phi_mux_p_0_i_phi_fu_153_p4;
reg   [2:0] p_0_i_reg_149;
reg   [31:0] p_1_reg_161;
wire   [63:0] zext_ln11_fu_205_p1;
wire  signed [63:0] sext_ln25_fu_227_p1;
wire  signed [63:0] sext_ln27_fu_295_p1;
wire  signed [63:0] sext_ln34_fu_317_p1;
reg   [31:0] n_0_assign_2_fu_50;
wire   [31:0] add_ln36_fu_322_p2;
wire   [31:0] zext_ln25_fu_222_p1;
wire   [31:0] sub_ln11_fu_237_p2;
wire   [0:0] abscond_i_fu_248_p2;
wire   [31:0] neg_i_fu_242_p2;
wire   [31:0] abs_i_fu_254_p3;
wire   [31:0] sub_ln11_1_fu_262_p2;
wire   [0:0] icmp_ln11_1_fu_267_p2;
wire   [31:0] count_fu_273_p2;
wire   [0:0] icmp_ln11_fu_232_p2;
wire   [31:0] select_ln11_fu_279_p3;
wire  signed [31:0] sext_ln27_fu_295_p0;
wire  signed [31:0] add_ln28_fu_306_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        count_0_i_reg_126 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        count_0_i_reg_126 <= select_ln11_1_fu_287_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        j_0_i_reg_138 <= 31'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        j_0_i_reg_138 <= j_reg_380;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (((icmp_ln27_reg_414 == 1'd0) & (icmp_ln40_fu_344_p2 == 1'd0)) | ((icmp_ln40_fu_344_p2 == 1'd0) & (icmp_ln30_reg_418 == 1'd0))))) begin
        k_assign_2_reg_104 <= add_ln39_fu_338_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_assign_2_reg_104 <= k;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_311_p2 == 1'd0) & (icmp_ln27_fu_300_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        n_0_assign_2_fu_50 <= add_ln36_fu_322_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        n_0_assign_2_fu_50 <= n_0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln15_fu_210_p2 == 1'd1) & (icmp_ln8_reg_368 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        p_0_i_reg_149 <= u_0_i_reg_114;
    end else if (((icmp_ln8_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        p_0_i_reg_149 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        if ((icmp_ln27_fu_300_p2 == 1'd0)) begin
            p_1_reg_161 <= k_assign_2_reg_104;
        end else if (((icmp_ln30_fu_311_p2 == 1'd0) & (icmp_ln27_fu_300_p2 == 1'd1))) begin
            p_1_reg_161 <= add_ln37_fu_327_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_210_p2 == 1'd0) & (icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln8_reg_368 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        u_0_i_reg_114 <= u_fu_216_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        u_0_i_reg_114 <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_ln27_reg_414 <= icmp_ln27_fu_300_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln27_fu_300_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        icmp_ln30_reg_418 <= icmp_ln30_fu_311_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln8_reg_368 <= icmp_ln8_fu_183_p2;
        zext_ln8_reg_362[2 : 0] <= zext_ln8_fu_179_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_reg_368 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        j_reg_380 <= j_fu_199_p2;
        zext_ln10_reg_372[30 : 0] <= zext_ln10_fu_189_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_0_assign_2_load_1_reg_403 <= n_0_assign_2_fu_50;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        a_address0 = sext_ln34_fu_317_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        a_address0 = sext_ln27_fu_295_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln8_reg_368 == 1'd0) | ((icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln15_fu_210_p2 == 1'd1))))) begin
        a_address0 = sext_ln25_fu_227_p1;
    end else if (((icmp_ln10_fu_193_p2 == 1'd1) & (icmp_ln8_reg_368 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        a_address0 = zext_ln11_fu_205_p1;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | ((icmp_ln10_fu_193_p2 == 1'd1) & (icmp_ln8_reg_368 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & ((icmp_ln8_reg_368 == 1'd0) | ((icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln15_fu_210_p2 == 1'd1)))))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        a_d0 = 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln8_reg_368 == 1'd0) | ((icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln15_fu_210_p2 == 1'd1))))) begin
        a_d0 = zext_ln25_fu_222_p1;
    end else begin
        a_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & ((icmp_ln8_reg_368 == 1'd0) | ((icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln15_fu_210_p2 == 1'd1)))) | ((icmp_ln30_fu_311_p2 == 1'd0) & (icmp_ln27_fu_300_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)))) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & ((icmp_ln40_fu_344_p2 == 1'd1) | ((icmp_ln27_reg_414 == 1'd1) & (icmp_ln30_reg_418 == 1'd1))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln15_fu_210_p2 == 1'd1) & (icmp_ln8_reg_368 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_phi_mux_p_0_i_phi_fu_153_p4 = u_0_i_reg_114;
    end else begin
        ap_phi_mux_p_0_i_phi_fu_153_p4 = p_0_i_reg_149;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & ((icmp_ln40_fu_344_p2 == 1'd1) | ((icmp_ln27_reg_414 == 1'd1) & (icmp_ln30_reg_418 == 1'd1))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln15_fu_210_p2 == 1'd0) & (icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln8_reg_368 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln8_reg_368 == 1'd0) | ((icmp_ln10_fu_193_p2 == 1'd0) & (icmp_ln15_fu_210_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & ((icmp_ln40_fu_344_p2 == 1'd1) | ((icmp_ln27_reg_414 == 1'd1) & (icmp_ln30_reg_418 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign abs_i_fu_254_p3 = ((abscond_i_fu_248_p2[0:0] === 1'b1) ? sub_ln11_fu_237_p2 : neg_i_fu_242_p2);

assign abscond_i_fu_248_p2 = (($signed(sub_ln11_fu_237_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign add_ln28_fu_306_p2 = ($signed(n_0_assign_2_load_1_reg_403) + $signed(32'd4294967295));

assign add_ln36_fu_322_p2 = ($signed(n_0_assign_2_load_1_reg_403) + $signed(32'd4294967294));

assign add_ln37_fu_327_p2 = ($signed(k_assign_2_reg_104) + $signed(32'd4294967294));

assign add_ln39_fu_338_p2 = (p_1_reg_161 + 32'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign count_fu_273_p2 = (count_0_i_reg_126 + 32'd1);

assign icmp_ln10_fu_193_p2 = (($signed(zext_ln10_fu_189_p1) < $signed(n_0_assign_2_fu_50)) ? 1'b1 : 1'b0);

assign icmp_ln11_1_fu_267_p2 = ((abs_i_fu_254_p3 == sub_ln11_1_fu_262_p2) ? 1'b1 : 1'b0);

assign icmp_ln11_fu_232_p2 = ((zext_ln8_reg_362 == a_q0) ? 1'b1 : 1'b0);

assign icmp_ln15_fu_210_p2 = ((count_0_i_reg_126 == k_assign_2_reg_104) ? 1'b1 : 1'b0);

assign icmp_ln27_fu_300_p2 = ((a_q0 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln30_fu_311_p2 = ((add_ln28_fu_306_p2 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln40_fu_344_p2 = ((n_0_assign_2_fu_50 == 32'd6) ? 1'b1 : 1'b0);

assign icmp_ln8_fu_183_p2 = ((u_0_i_reg_114 < 3'd6) ? 1'b1 : 1'b0);

assign j_fu_199_p2 = (j_0_i_reg_138 + 31'd1);

assign neg_i_fu_242_p2 = (32'd0 - sub_ln11_fu_237_p2);

assign select_ln11_1_fu_287_p3 = ((icmp_ln11_fu_232_p2[0:0] === 1'b1) ? count_0_i_reg_126 : select_ln11_fu_279_p3);

assign select_ln11_fu_279_p3 = ((icmp_ln11_1_fu_267_p2[0:0] === 1'b1) ? count_0_i_reg_126 : count_fu_273_p2);

assign sext_ln25_fu_227_p1 = k_assign_2_reg_104;

assign sext_ln27_fu_295_p0 = n_0_assign_2_fu_50;

assign sext_ln27_fu_295_p1 = sext_ln27_fu_295_p0;

assign sext_ln34_fu_317_p1 = add_ln28_fu_306_p2;

assign sub_ln11_1_fu_262_p2 = ($signed(k_assign_2_reg_104) - $signed(zext_ln10_reg_372));

assign sub_ln11_fu_237_p2 = (zext_ln8_reg_362 - a_q0);

assign u_fu_216_p2 = (u_0_i_reg_114 + 3'd1);

assign zext_ln10_fu_189_p1 = j_0_i_reg_138;

assign zext_ln11_fu_205_p1 = j_0_i_reg_138;

assign zext_ln25_fu_222_p1 = ap_phi_mux_p_0_i_phi_fu_153_p4;

assign zext_ln8_fu_179_p1 = u_0_i_reg_114;

always @ (posedge ap_clk) begin
    zext_ln8_reg_362[31:3] <= 29'b00000000000000000000000000000;
    zext_ln10_reg_372[31] <= 1'b0;
end

endmodule //nqueens
