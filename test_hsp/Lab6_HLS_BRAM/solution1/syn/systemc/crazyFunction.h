// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _crazyFunction_HH_
#define _crazyFunction_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "scaled_fixed2ieee.h"
#include "crazyFunction_fadfYi.h"
#include "crazyFunction_fmug8j.h"
#include "crazyFunction_fsqhbi.h"
#include "crazyFunction_fexibs.h"
#include "crazyFunction_muljbC.h"
#include "crazyFunction_muxkbM.h"
#include "crazyFunction_muxlbW.h"
#include "crazyFunction_mulmb6.h"
#include "crazyFunction_mulncg.h"
#include "crazyFunction_refbkb.h"
#include "crazyFunction_seccud.h"
#include "crazyFunction_secdEe.h"
#include "crazyFunction_seceOg.h"
#include "crazyFunction_CRTL_BUS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CRTL_BUS_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_CRTL_BUS_DATA_WIDTH = 32>
struct crazyFunction : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_lv<32> > x_Addr_A;
    sc_out< sc_logic > x_EN_A;
    sc_out< sc_lv<4> > x_WEN_A;
    sc_out< sc_lv<32> > x_Din_A;
    sc_in< sc_lv<32> > x_Dout_A;
    sc_out< sc_logic > x_Clk_A;
    sc_out< sc_logic > x_Rst_A;
    sc_out< sc_lv<32> > res_Addr_A;
    sc_out< sc_logic > res_EN_A;
    sc_out< sc_lv<4> > res_WEN_A;
    sc_out< sc_lv<32> > res_Din_A;
    sc_in< sc_lv<32> > res_Dout_A;
    sc_out< sc_logic > res_Clk_A;
    sc_out< sc_logic > res_Rst_A;
    sc_in< sc_logic > s_axi_CRTL_BUS_AWVALID;
    sc_out< sc_logic > s_axi_CRTL_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_CRTL_BUS_ADDR_WIDTH> > s_axi_CRTL_BUS_AWADDR;
    sc_in< sc_logic > s_axi_CRTL_BUS_WVALID;
    sc_out< sc_logic > s_axi_CRTL_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_CRTL_BUS_DATA_WIDTH> > s_axi_CRTL_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_CRTL_BUS_DATA_WIDTH/8> > s_axi_CRTL_BUS_WSTRB;
    sc_in< sc_logic > s_axi_CRTL_BUS_ARVALID;
    sc_out< sc_logic > s_axi_CRTL_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_CRTL_BUS_ADDR_WIDTH> > s_axi_CRTL_BUS_ARADDR;
    sc_out< sc_logic > s_axi_CRTL_BUS_RVALID;
    sc_in< sc_logic > s_axi_CRTL_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_CRTL_BUS_DATA_WIDTH> > s_axi_CRTL_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_CRTL_BUS_RRESP;
    sc_out< sc_logic > s_axi_CRTL_BUS_BVALID;
    sc_in< sc_logic > s_axi_CRTL_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_CRTL_BUS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<1> > ap_var_for_const3;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<1> > ap_var_for_const4;


    // Module declarations
    crazyFunction(sc_module_name name);
    SC_HAS_PROCESS(crazyFunction);

    ~crazyFunction();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    crazyFunction_refbkb* ref_4oPi_table_100_V_U;
    crazyFunction_seccud* second_order_float_2_U;
    crazyFunction_secdEe* second_order_float_3_U;
    crazyFunction_seceOg* second_order_float_s_U;
    crazyFunction_CRTL_BUS_s_axi<C_S_AXI_CRTL_BUS_ADDR_WIDTH,C_S_AXI_CRTL_BUS_DATA_WIDTH>* crazyFunction_CRTL_BUS_s_axi_U;
    scaled_fixed2ieee* grp_scaled_fixed2ieee_fu_280;
    crazyFunction_fadfYi<1,5,32,32,32>* crazyFunction_fadfYi_U3;
    crazyFunction_fmug8j<1,4,32,32,32>* crazyFunction_fmug8j_U4;
    crazyFunction_fsqhbi<1,12,32,32,32>* crazyFunction_fsqhbi_U5;
    crazyFunction_fexibs<1,9,32,32,32>* crazyFunction_fexibs_U6;
    crazyFunction_muljbC<1,5,80,24,104>* crazyFunction_muljbC_U7;
    crazyFunction_muxkbM<1,1,1,1,1,1,1,1,1,1,3,1>* crazyFunction_muxkbM_U8;
    crazyFunction_muxlbW<1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1>* crazyFunction_muxlbW_U9;
    crazyFunction_muxlbW<1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1>* crazyFunction_muxlbW_U10;
    crazyFunction_mulmb6<1,1,15,15,30>* crazyFunction_mulmb6_U11;
    crazyFunction_mulncg<1,1,15,15,30>* crazyFunction_mulncg_U12;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<32> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > y;
    sc_signal< sc_lv<4> > ref_4oPi_table_100_V_address0;
    sc_signal< sc_logic > ref_4oPi_table_100_V_ce0;
    sc_signal< sc_lv<100> > ref_4oPi_table_100_V_q0;
    sc_signal< sc_lv<8> > second_order_float_2_address0;
    sc_signal< sc_logic > second_order_float_2_ce0;
    sc_signal< sc_lv<30> > second_order_float_2_q0;
    sc_signal< sc_lv<8> > second_order_float_3_address0;
    sc_signal< sc_logic > second_order_float_3_ce0;
    sc_signal< sc_lv<23> > second_order_float_3_q0;
    sc_signal< sc_lv<8> > second_order_float_s_address0;
    sc_signal< sc_logic > second_order_float_s_ce0;
    sc_signal< sc_lv<15> > second_order_float_s_q0;
    sc_signal< sc_lv<32> > y_read_reg_1034;
    sc_signal< sc_lv<7> > idx_fu_311_p2;
    sc_signal< sc_lv<7> > idx_reg_1042;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln12_fu_317_p1;
    sc_signal< sc_lv<64> > zext_ln12_reg_1047;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > x_load_reg_1057;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > results_sign_V_1_reg_1062;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > tmp_V_fu_333_p4;
    sc_signal< sc_lv<8> > tmp_V_reg_1068;
    sc_signal< sc_lv<23> > tmp_V_1_fu_343_p1;
    sc_signal< sc_lv<23> > tmp_V_1_reg_1075;
    sc_signal< sc_lv<1> > closepath_fu_347_p2;
    sc_signal< sc_lv<1> > closepath_reg_1081;
    sc_signal< sc_lv<4> > trunc_ln601_fu_382_p1;
    sc_signal< sc_lv<4> > trunc_ln601_reg_1092;
    sc_signal< sc_lv<80> > Med_V_reg_1097;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > icmp_ln833_1_fu_425_p2;
    sc_signal< sc_lv<1> > icmp_ln833_1_reg_1112;
    sc_signal< sc_lv<32> > grp_fu_300_p2;
    sc_signal< sc_lv<32> > x_assign_reg_1118;
    sc_signal< sc_lv<58> > p_Val2_24_reg_1123;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<3> > trunc_ln_i_i_reg_1129;
    sc_signal< sc_lv<3> > p_Val2_25_fu_450_p3;
    sc_signal< sc_lv<3> > p_Val2_25_reg_1134;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<58> > p_Val2_7_fu_465_p3;
    sc_signal< sc_lv<58> > p_Val2_7_reg_1140;
    sc_signal< sc_lv<5> > Mx_zeros_V_fu_516_p1;
    sc_signal< sc_lv<5> > Mx_zeros_V_reg_1145;
    sc_signal< sc_lv<29> > Mx_V_reg_1151;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<8> > Ex_V_fu_553_p2;
    sc_signal< sc_lv<8> > Ex_V_reg_1158;
    sc_signal< sc_lv<1> > isNeg_fu_563_p3;
    sc_signal< sc_lv<1> > isNeg_reg_1163;
    sc_signal< sc_lv<9> > ush_fu_577_p3;
    sc_signal< sc_lv<9> > ush_reg_1168;
    sc_signal< sc_lv<1> > icmp_ln833_fu_585_p2;
    sc_signal< sc_lv<1> > icmp_ln833_reg_1174;
    sc_signal< sc_lv<1> > icmp_ln833_2_fu_590_p2;
    sc_signal< sc_lv<1> > icmp_ln833_2_reg_1180;
    sc_signal< sc_lv<1> > cos_basis_fu_626_p10;
    sc_signal< sc_lv<1> > cos_basis_reg_1187;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<22> > B_V_fu_657_p1;
    sc_signal< sc_lv<22> > B_V_reg_1194;
    sc_signal< sc_lv<15> > B_trunc_V_reg_1199;
    sc_signal< sc_lv<15> > B_squared_V_reg_1219;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<29> > t1_V_reg_1224;
    sc_signal< sc_lv<23> > second_order_float_6_reg_1229;
    sc_signal< sc_lv<15> > second_order_float_8_reg_1234;
    sc_signal< sc_lv<22> > trunc_ln2_reg_1239;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<14> > trunc_ln662_1_reg_1244;
    sc_signal< sc_lv<29> > select_ln272_1_fu_751_p3;
    sc_signal< sc_lv<29> > select_ln272_1_reg_1249;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<30> > ret_V_fu_772_p2;
    sc_signal< sc_lv<30> > ret_V_reg_1254;
    sc_signal< sc_lv<29> > result_V_reg_1259;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<9> > ret_V_10_fu_811_p2;
    sc_signal< sc_lv<9> > ret_V_10_reg_1264;
    sc_signal< sc_lv<1> > and_ln300_fu_933_p2;
    sc_signal< sc_lv<1> > and_ln300_reg_1269;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_280_ap_ready;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_280_ap_done;
    sc_signal< sc_lv<1> > select_ln311_fu_947_p3;
    sc_signal< sc_lv<1> > select_ln311_reg_1274;
    sc_signal< sc_lv<8> > ret_V_11_fu_978_p3;
    sc_signal< sc_lv<8> > ret_V_11_reg_1279;
    sc_signal< sc_lv<23> > ret_V_12_fu_994_p3;
    sc_signal< sc_lv<23> > ret_V_12_reg_1284;
    sc_signal< sc_lv<32> > grp_fu_295_p2;
    sc_signal< sc_lv<32> > tmp_i_reg_1289;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<32> > grp_fu_286_p2;
    sc_signal< sc_lv<32> > tmp_5_reg_1299;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<32> > grp_fu_290_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_1304;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_280_ap_start;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_280_ap_idle;
    sc_signal< sc_lv<32> > grp_scaled_fixed2ieee_fu_280_ap_return;
    sc_signal< sc_lv<7> > idx_0_reg_268;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > grp_scaled_fixed2ieee_fu_280_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln498_fu_377_p1;
    sc_signal< sc_lv<64> > zext_ln498_1_fu_685_p1;
    sc_signal< sc_lv<32> > x_Addr_A_orig;
    sc_signal< sc_lv<32> > res_Addr_A_orig;
    sc_signal< sc_lv<32> > grp_fu_286_p0;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > p_Val2_s_fu_322_p1;
    sc_signal< sc_lv<8> > add_ln114_1_fu_353_p2;
    sc_signal< sc_lv<8> > addr_V_fu_359_p3;
    sc_signal< sc_lv<4> > tmp_7_fu_367_p4;
    sc_signal< sc_lv<100> > zext_ln744_fu_386_p1;
    sc_signal< sc_lv<100> > r_V_9_fu_389_p2;
    sc_signal< sc_lv<24> > p_Result_18_fu_405_p3;
    sc_signal< sc_lv<80> > grp_fu_419_p0;
    sc_signal< sc_lv<24> > grp_fu_419_p1;
    sc_signal< sc_lv<104> > grp_fu_419_p2;
    sc_signal< sc_lv<1> > trunc_ln745_fu_456_p1;
    sc_signal< sc_lv<58> > Mx_bits_V_1_fu_460_p2;
    sc_signal< sc_lv<29> > p_Result_i_i_i_fu_472_p4;
    sc_signal< sc_lv<30> > p_Result_19_fu_482_p3;
    sc_signal< sc_lv<30> > p_Result_s_fu_490_p4;
    sc_signal< sc_lv<32> > p_Result_20_fu_500_p3;
    sc_signal< sc_lv<32> > val_assign_fu_508_p3;
    sc_signal< sc_lv<8> > add_ln114_fu_520_p2;
    sc_signal< sc_lv<58> > zext_ln1253_fu_532_p1;
    sc_signal< sc_lv<58> > r_V_10_fu_535_p2;
    sc_signal< sc_lv<8> > select_ln482_fu_525_p3;
    sc_signal< sc_lv<8> > zext_ln655_fu_550_p1;
    sc_signal< sc_lv<9> > sext_ln1334_fu_559_p1;
    sc_signal< sc_lv<9> > sub_ln1311_fu_571_p2;
    sc_signal< sc_lv<29> > sext_ln1311_1_fu_598_p1;
    sc_signal< sc_lv<29> > lshr_ln1287_fu_604_p2;
    sc_signal< sc_lv<32> > zext_ln1287_fu_601_p1;
    sc_signal< sc_lv<32> > sext_ln1311_fu_595_p1;
    sc_signal< sc_lv<32> > zext_ln1287_1_fu_609_p1;
    sc_signal< sc_lv<32> > shl_ln1253_fu_613_p2;
    sc_signal< sc_lv<32> > select_ln1310_fu_619_p3;
    sc_signal< sc_lv<1> > sin_basis_fu_671_p2;
    sc_signal< sc_lv<7> > p_Result_i_i_fu_647_p4;
    sc_signal< sc_lv<8> > p_Result_21_fu_677_p3;
    sc_signal< sc_lv<30> > r_V_11_fu_1020_p2;
    sc_signal< sc_lv<23> > r_V_12_fu_720_p0;
    sc_signal< sc_lv<22> > r_V_12_fu_720_p1;
    sc_signal< sc_lv<45> > r_V_12_fu_720_p2;
    sc_signal< sc_lv<30> > r_V_13_fu_1027_p2;
    sc_signal< sc_lv<30> > lhs_V_1_fu_757_p1;
    sc_signal< sc_lv<30> > rhs_V_1_fu_760_p1;
    sc_signal< sc_lv<30> > ret_V_14_fu_763_p2;
    sc_signal< sc_lv<30> > sext_ln657_fu_769_p1;
    sc_signal< sc_lv<30> > r_V_14_fu_790_p0;
    sc_signal< sc_lv<29> > r_V_14_fu_790_p1;
    sc_signal< sc_lv<58> > r_V_14_fu_790_p2;
    sc_signal< sc_lv<8> > select_ln272_fu_778_p3;
    sc_signal< sc_lv<9> > rhs_V_2_fu_807_p1;
    sc_signal< sc_lv<32> > p_Val2_20_fu_818_p1;
    sc_signal< sc_lv<4> > p_Result_23_fu_844_p3;
    sc_signal< sc_lv<1> > tmp_fu_850_p18;
    sc_signal< sc_lv<1> > tmp_1_fu_888_p18;
    sc_signal< sc_lv<1> > select_ln271_fu_926_p3;
    sc_signal< sc_lv<1> > or_ln311_fu_942_p2;
    sc_signal< sc_lv<1> > xor_ln311_fu_937_p2;
    sc_signal< sc_lv<1> > p_Result_22_fu_822_p3;
    sc_signal< sc_lv<1> > and_ln300_1_fu_955_p2;
    sc_signal< sc_lv<1> > xor_ln300_fu_959_p2;
    sc_signal< sc_lv<1> > or_ln300_fu_973_p2;
    sc_signal< sc_lv<8> > select_ln300_1_fu_965_p3;
    sc_signal< sc_lv<8> > tmp_V_2_fu_830_p4;
    sc_signal< sc_lv<23> > select_ln300_3_fu_986_p3;
    sc_signal< sc_lv<23> > tmp_V_3_fu_840_p1;
    sc_signal< sc_lv<1> > p_Repl2_3_fu_1002_p3;
    sc_signal< sc_lv<32> > p_Result_24_fu_1007_p4;
    sc_signal< sc_lv<15> > r_V_11_fu_1020_p0;
    sc_signal< sc_lv<30> > r_V_fu_692_p1;
    sc_signal< sc_lv<15> > r_V_11_fu_1020_p1;
    sc_signal< sc_lv<15> > r_V_13_fu_1027_p0;
    sc_signal< sc_logic > grp_fu_295_ce;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > icmp_ln10_fu_305_p2;
    sc_signal< sc_lv<32> > ap_NS_fsm;
    sc_signal< sc_lv<104> > grp_fu_419_p00;
    sc_signal< sc_lv<104> > grp_fu_419_p10;
    sc_signal< sc_lv<45> > r_V_12_fu_720_p10;
    sc_signal< sc_lv<30> > r_V_13_fu_1027_p00;
    sc_signal< sc_lv<58> > r_V_14_fu_790_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<32> ap_ST_fsm_state1;
    static const sc_lv<32> ap_ST_fsm_state2;
    static const sc_lv<32> ap_ST_fsm_state3;
    static const sc_lv<32> ap_ST_fsm_state4;
    static const sc_lv<32> ap_ST_fsm_state5;
    static const sc_lv<32> ap_ST_fsm_state6;
    static const sc_lv<32> ap_ST_fsm_state7;
    static const sc_lv<32> ap_ST_fsm_state8;
    static const sc_lv<32> ap_ST_fsm_state9;
    static const sc_lv<32> ap_ST_fsm_state10;
    static const sc_lv<32> ap_ST_fsm_state11;
    static const sc_lv<32> ap_ST_fsm_state12;
    static const sc_lv<32> ap_ST_fsm_state13;
    static const sc_lv<32> ap_ST_fsm_state14;
    static const sc_lv<32> ap_ST_fsm_state15;
    static const sc_lv<32> ap_ST_fsm_state16;
    static const sc_lv<32> ap_ST_fsm_state17;
    static const sc_lv<32> ap_ST_fsm_state18;
    static const sc_lv<32> ap_ST_fsm_state19;
    static const sc_lv<32> ap_ST_fsm_state20;
    static const sc_lv<32> ap_ST_fsm_state21;
    static const sc_lv<32> ap_ST_fsm_state22;
    static const sc_lv<32> ap_ST_fsm_state23;
    static const sc_lv<32> ap_ST_fsm_state24;
    static const sc_lv<32> ap_ST_fsm_state25;
    static const sc_lv<32> ap_ST_fsm_state26;
    static const sc_lv<32> ap_ST_fsm_state27;
    static const sc_lv<32> ap_ST_fsm_state28;
    static const sc_lv<32> ap_ST_fsm_state29;
    static const sc_lv<32> ap_ST_fsm_state30;
    static const sc_lv<32> ap_ST_fsm_state31;
    static const sc_lv<32> ap_ST_fsm_state32;
    static const sc_lv<32> ap_const_lv32_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_3F000000;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_7E;
    static const sc_lv<8> ap_const_lv8_C2;
    static const sc_lv<8> ap_const_lv8_3F;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_63;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<32> ap_const_lv32_4C;
    static const sc_lv<32> ap_const_lv32_4D;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<58> ap_const_lv58_0;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<8> ap_const_lv8_83;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<29> ap_const_lv29_1FFFFFFF;
    static const sc_lv<23> ap_const_lv23_7FFFFF;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const4();
    void thread_ap_clk_no_reset_();
    void thread_B_V_fu_657_p1();
    void thread_Ex_V_fu_553_p2();
    void thread_Mx_bits_V_1_fu_460_p2();
    void thread_Mx_zeros_V_fu_516_p1();
    void thread_add_ln114_1_fu_353_p2();
    void thread_add_ln114_fu_520_p2();
    void thread_addr_V_fu_359_p3();
    void thread_and_ln300_1_fu_955_p2();
    void thread_and_ln300_fu_933_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_closepath_fu_347_p2();
    void thread_grp_fu_286_p0();
    void thread_grp_fu_295_ce();
    void thread_grp_fu_419_p0();
    void thread_grp_fu_419_p00();
    void thread_grp_fu_419_p1();
    void thread_grp_fu_419_p10();
    void thread_grp_scaled_fixed2ieee_fu_280_ap_start();
    void thread_icmp_ln10_fu_305_p2();
    void thread_icmp_ln833_1_fu_425_p2();
    void thread_icmp_ln833_2_fu_590_p2();
    void thread_icmp_ln833_fu_585_p2();
    void thread_idx_fu_311_p2();
    void thread_isNeg_fu_563_p3();
    void thread_lhs_V_1_fu_757_p1();
    void thread_lshr_ln1287_fu_604_p2();
    void thread_or_ln300_fu_973_p2();
    void thread_or_ln311_fu_942_p2();
    void thread_p_Repl2_3_fu_1002_p3();
    void thread_p_Result_18_fu_405_p3();
    void thread_p_Result_19_fu_482_p3();
    void thread_p_Result_20_fu_500_p3();
    void thread_p_Result_21_fu_677_p3();
    void thread_p_Result_22_fu_822_p3();
    void thread_p_Result_23_fu_844_p3();
    void thread_p_Result_24_fu_1007_p4();
    void thread_p_Result_i_i_fu_647_p4();
    void thread_p_Result_i_i_i_fu_472_p4();
    void thread_p_Result_s_fu_490_p4();
    void thread_p_Val2_20_fu_818_p1();
    void thread_p_Val2_25_fu_450_p3();
    void thread_p_Val2_7_fu_465_p3();
    void thread_p_Val2_s_fu_322_p1();
    void thread_r_V_10_fu_535_p2();
    void thread_r_V_11_fu_1020_p0();
    void thread_r_V_11_fu_1020_p1();
    void thread_r_V_12_fu_720_p0();
    void thread_r_V_12_fu_720_p1();
    void thread_r_V_12_fu_720_p10();
    void thread_r_V_12_fu_720_p2();
    void thread_r_V_13_fu_1027_p0();
    void thread_r_V_13_fu_1027_p00();
    void thread_r_V_14_fu_790_p0();
    void thread_r_V_14_fu_790_p1();
    void thread_r_V_14_fu_790_p10();
    void thread_r_V_14_fu_790_p2();
    void thread_r_V_9_fu_389_p2();
    void thread_r_V_fu_692_p1();
    void thread_ref_4oPi_table_100_V_address0();
    void thread_ref_4oPi_table_100_V_ce0();
    void thread_res_Addr_A();
    void thread_res_Addr_A_orig();
    void thread_res_Clk_A();
    void thread_res_Din_A();
    void thread_res_EN_A();
    void thread_res_Rst_A();
    void thread_res_WEN_A();
    void thread_ret_V_10_fu_811_p2();
    void thread_ret_V_11_fu_978_p3();
    void thread_ret_V_12_fu_994_p3();
    void thread_ret_V_14_fu_763_p2();
    void thread_ret_V_fu_772_p2();
    void thread_rhs_V_1_fu_760_p1();
    void thread_rhs_V_2_fu_807_p1();
    void thread_second_order_float_2_address0();
    void thread_second_order_float_2_ce0();
    void thread_second_order_float_3_address0();
    void thread_second_order_float_3_ce0();
    void thread_second_order_float_s_address0();
    void thread_second_order_float_s_ce0();
    void thread_select_ln1310_fu_619_p3();
    void thread_select_ln271_fu_926_p3();
    void thread_select_ln272_1_fu_751_p3();
    void thread_select_ln272_fu_778_p3();
    void thread_select_ln300_1_fu_965_p3();
    void thread_select_ln300_3_fu_986_p3();
    void thread_select_ln311_fu_947_p3();
    void thread_select_ln482_fu_525_p3();
    void thread_sext_ln1311_1_fu_598_p1();
    void thread_sext_ln1311_fu_595_p1();
    void thread_sext_ln1334_fu_559_p1();
    void thread_sext_ln657_fu_769_p1();
    void thread_shl_ln1253_fu_613_p2();
    void thread_sin_basis_fu_671_p2();
    void thread_sub_ln1311_fu_571_p2();
    void thread_tmp_7_fu_367_p4();
    void thread_tmp_V_1_fu_343_p1();
    void thread_tmp_V_2_fu_830_p4();
    void thread_tmp_V_3_fu_840_p1();
    void thread_tmp_V_fu_333_p4();
    void thread_trunc_ln601_fu_382_p1();
    void thread_trunc_ln745_fu_456_p1();
    void thread_ush_fu_577_p3();
    void thread_val_assign_fu_508_p3();
    void thread_x_Addr_A();
    void thread_x_Addr_A_orig();
    void thread_x_Clk_A();
    void thread_x_Din_A();
    void thread_x_EN_A();
    void thread_x_Rst_A();
    void thread_x_WEN_A();
    void thread_xor_ln300_fu_959_p2();
    void thread_xor_ln311_fu_937_p2();
    void thread_zext_ln1253_fu_532_p1();
    void thread_zext_ln1287_1_fu_609_p1();
    void thread_zext_ln1287_fu_601_p1();
    void thread_zext_ln12_fu_317_p1();
    void thread_zext_ln498_1_fu_685_p1();
    void thread_zext_ln498_fu_377_p1();
    void thread_zext_ln655_fu_550_p1();
    void thread_zext_ln744_fu_386_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif