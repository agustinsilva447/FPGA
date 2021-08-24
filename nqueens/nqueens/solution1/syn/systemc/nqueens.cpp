// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "nqueens.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic nqueens::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic nqueens::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> nqueens::ap_ST_fsm_state1 = "1";
const sc_lv<8> nqueens::ap_ST_fsm_state2 = "10";
const sc_lv<8> nqueens::ap_ST_fsm_state3 = "100";
const sc_lv<8> nqueens::ap_ST_fsm_state4 = "1000";
const sc_lv<8> nqueens::ap_ST_fsm_state5 = "10000";
const sc_lv<8> nqueens::ap_ST_fsm_state6 = "100000";
const sc_lv<8> nqueens::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> nqueens::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> nqueens::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> nqueens::ap_const_lv32_2 = "10";
const sc_lv<32> nqueens::ap_const_lv32_3 = "11";
const sc_lv<1> nqueens::ap_const_lv1_1 = "1";
const sc_lv<1> nqueens::ap_const_lv1_0 = "0";
const sc_lv<32> nqueens::ap_const_lv32_4 = "100";
const sc_lv<32> nqueens::ap_const_lv32_5 = "101";
const sc_lv<32> nqueens::ap_const_lv32_6 = "110";
const sc_lv<32> nqueens::ap_const_lv32_7 = "111";
const sc_lv<3> nqueens::ap_const_lv3_1 = "1";
const sc_lv<32> nqueens::ap_const_lv32_1 = "1";
const sc_lv<31> nqueens::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<3> nqueens::ap_const_lv3_0 = "000";
const sc_lv<3> nqueens::ap_const_lv3_6 = "110";
const sc_lv<31> nqueens::ap_const_lv31_1 = "1";
const sc_lv<32> nqueens::ap_const_lv32_FFFFFFFF = "11111111111111111111111111111111";
const sc_lv<32> nqueens::ap_const_lv32_FFFFFFFE = "11111111111111111111111111111110";
const bool nqueens::ap_const_boolean_1 = true;

nqueens::nqueens(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln10_fu_193_p2 );
    sensitive << ( icmp_ln15_fu_210_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( zext_ln11_fu_205_p1 );
    sensitive << ( sext_ln25_fu_227_p1 );
    sensitive << ( sext_ln27_fu_295_p1 );
    sensitive << ( sext_ln34_fu_317_p1 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln10_fu_193_p2 );
    sensitive << ( icmp_ln15_fu_210_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_a_d0);
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln10_fu_193_p2 );
    sensitive << ( icmp_ln15_fu_210_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( zext_ln25_fu_222_p1 );

    SC_METHOD(thread_a_we0);
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln10_fu_193_p2 );
    sensitive << ( icmp_ln15_fu_210_p2 );
    sensitive << ( icmp_ln27_fu_300_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln30_fu_311_p2 );

    SC_METHOD(thread_abs_i_fu_254_p3);
    sensitive << ( sub_ln11_fu_237_p2 );
    sensitive << ( abscond_i_fu_248_p2 );
    sensitive << ( neg_i_fu_242_p2 );

    SC_METHOD(thread_abscond_i_fu_248_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( sub_ln11_fu_237_p2 );

    SC_METHOD(thread_add_ln28_fu_306_p2);
    sensitive << ( n_0_assign_2_load_1_reg_403 );

    SC_METHOD(thread_add_ln36_fu_322_p2);
    sensitive << ( n_0_assign_2_load_1_reg_403 );

    SC_METHOD(thread_add_ln37_fu_327_p2);
    sensitive << ( k_assign_2_reg_104 );

    SC_METHOD(thread_add_ln39_fu_338_p2);
    sensitive << ( p_1_reg_161 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( icmp_ln27_reg_414 );
    sensitive << ( icmp_ln30_reg_418 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( icmp_ln40_fu_344_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_p_0_i_phi_fu_153_p4);
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln10_fu_193_p2 );
    sensitive << ( icmp_ln15_fu_210_p2 );
    sensitive << ( u_0_i_reg_114 );
    sensitive << ( p_0_i_reg_149 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( icmp_ln27_reg_414 );
    sensitive << ( icmp_ln30_reg_418 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( icmp_ln40_fu_344_p2 );

    SC_METHOD(thread_count_fu_273_p2);
    sensitive << ( count_0_i_reg_126 );

    SC_METHOD(thread_icmp_ln10_fu_193_p2);
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( zext_ln10_fu_189_p1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( n_0_assign_2_fu_50 );

    SC_METHOD(thread_icmp_ln11_1_fu_267_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( abs_i_fu_254_p3 );
    sensitive << ( sub_ln11_1_fu_262_p2 );

    SC_METHOD(thread_icmp_ln11_fu_232_p2);
    sensitive << ( a_q0 );
    sensitive << ( zext_ln8_reg_362 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_icmp_ln15_fu_210_p2);
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln10_fu_193_p2 );
    sensitive << ( k_assign_2_reg_104 );
    sensitive << ( count_0_i_reg_126 );

    SC_METHOD(thread_icmp_ln27_fu_300_p2);
    sensitive << ( a_q0 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_icmp_ln30_fu_311_p2);
    sensitive << ( icmp_ln27_fu_300_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( add_ln28_fu_306_p2 );

    SC_METHOD(thread_icmp_ln40_fu_344_p2);
    sensitive << ( icmp_ln27_reg_414 );
    sensitive << ( icmp_ln30_reg_418 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( n_0_assign_2_fu_50 );

    SC_METHOD(thread_icmp_ln8_fu_183_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( u_0_i_reg_114 );

    SC_METHOD(thread_j_fu_199_p2);
    sensitive << ( j_0_i_reg_138 );

    SC_METHOD(thread_neg_i_fu_242_p2);
    sensitive << ( sub_ln11_fu_237_p2 );

    SC_METHOD(thread_select_ln11_1_fu_287_p3);
    sensitive << ( count_0_i_reg_126 );
    sensitive << ( icmp_ln11_fu_232_p2 );
    sensitive << ( select_ln11_fu_279_p3 );

    SC_METHOD(thread_select_ln11_fu_279_p3);
    sensitive << ( count_0_i_reg_126 );
    sensitive << ( icmp_ln11_1_fu_267_p2 );
    sensitive << ( count_fu_273_p2 );

    SC_METHOD(thread_sext_ln25_fu_227_p1);
    sensitive << ( k_assign_2_reg_104 );

    SC_METHOD(thread_sext_ln27_fu_295_p0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( n_0_assign_2_fu_50 );

    SC_METHOD(thread_sext_ln27_fu_295_p1);
    sensitive << ( sext_ln27_fu_295_p0 );

    SC_METHOD(thread_sext_ln34_fu_317_p1);
    sensitive << ( add_ln28_fu_306_p2 );

    SC_METHOD(thread_sub_ln11_1_fu_262_p2);
    sensitive << ( zext_ln10_reg_372 );
    sensitive << ( k_assign_2_reg_104 );

    SC_METHOD(thread_sub_ln11_fu_237_p2);
    sensitive << ( a_q0 );
    sensitive << ( zext_ln8_reg_362 );

    SC_METHOD(thread_u_fu_216_p2);
    sensitive << ( u_0_i_reg_114 );

    SC_METHOD(thread_zext_ln10_fu_189_p1);
    sensitive << ( j_0_i_reg_138 );

    SC_METHOD(thread_zext_ln11_fu_205_p1);
    sensitive << ( j_0_i_reg_138 );

    SC_METHOD(thread_zext_ln25_fu_222_p1);
    sensitive << ( ap_phi_mux_p_0_i_phi_fu_153_p4 );

    SC_METHOD(thread_zext_ln8_fu_179_p1);
    sensitive << ( u_0_i_reg_114 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln8_reg_368 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln10_fu_193_p2 );
    sensitive << ( icmp_ln15_fu_210_p2 );
    sensitive << ( icmp_ln27_reg_414 );
    sensitive << ( icmp_ln30_reg_418 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( icmp_ln40_fu_344_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "00000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "nqueens_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a_address0, "(port)a_address0");
    sc_trace(mVcdFile, a_ce0, "(port)a_ce0");
    sc_trace(mVcdFile, a_we0, "(port)a_we0");
    sc_trace(mVcdFile, a_d0, "(port)a_d0");
    sc_trace(mVcdFile, a_q0, "(port)a_q0");
    sc_trace(mVcdFile, k, "(port)k");
    sc_trace(mVcdFile, n_0, "(port)n_0");
    sc_trace(mVcdFile, u_0, "(port)u_0");
    sc_trace(mVcdFile, sol_list, "(port)sol_list");
    sc_trace(mVcdFile, flag, "(port)flag");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, zext_ln8_fu_179_p1, "zext_ln8_fu_179_p1");
    sc_trace(mVcdFile, zext_ln8_reg_362, "zext_ln8_reg_362");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln8_fu_183_p2, "icmp_ln8_fu_183_p2");
    sc_trace(mVcdFile, icmp_ln8_reg_368, "icmp_ln8_reg_368");
    sc_trace(mVcdFile, zext_ln10_fu_189_p1, "zext_ln10_fu_189_p1");
    sc_trace(mVcdFile, zext_ln10_reg_372, "zext_ln10_reg_372");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, j_fu_199_p2, "j_fu_199_p2");
    sc_trace(mVcdFile, j_reg_380, "j_reg_380");
    sc_trace(mVcdFile, icmp_ln10_fu_193_p2, "icmp_ln10_fu_193_p2");
    sc_trace(mVcdFile, u_fu_216_p2, "u_fu_216_p2");
    sc_trace(mVcdFile, icmp_ln15_fu_210_p2, "icmp_ln15_fu_210_p2");
    sc_trace(mVcdFile, select_ln11_1_fu_287_p3, "select_ln11_1_fu_287_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, n_0_assign_2_load_1_reg_403, "n_0_assign_2_load_1_reg_403");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, icmp_ln27_fu_300_p2, "icmp_ln27_fu_300_p2");
    sc_trace(mVcdFile, icmp_ln27_reg_414, "icmp_ln27_reg_414");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, icmp_ln30_fu_311_p2, "icmp_ln30_fu_311_p2");
    sc_trace(mVcdFile, icmp_ln30_reg_418, "icmp_ln30_reg_418");
    sc_trace(mVcdFile, add_ln37_fu_327_p2, "add_ln37_fu_327_p2");
    sc_trace(mVcdFile, add_ln39_fu_338_p2, "add_ln39_fu_338_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, k_assign_2_reg_104, "k_assign_2_reg_104");
    sc_trace(mVcdFile, icmp_ln40_fu_344_p2, "icmp_ln40_fu_344_p2");
    sc_trace(mVcdFile, u_0_i_reg_114, "u_0_i_reg_114");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, count_0_i_reg_126, "count_0_i_reg_126");
    sc_trace(mVcdFile, j_0_i_reg_138, "j_0_i_reg_138");
    sc_trace(mVcdFile, ap_phi_mux_p_0_i_phi_fu_153_p4, "ap_phi_mux_p_0_i_phi_fu_153_p4");
    sc_trace(mVcdFile, p_0_i_reg_149, "p_0_i_reg_149");
    sc_trace(mVcdFile, p_1_reg_161, "p_1_reg_161");
    sc_trace(mVcdFile, zext_ln11_fu_205_p1, "zext_ln11_fu_205_p1");
    sc_trace(mVcdFile, sext_ln25_fu_227_p1, "sext_ln25_fu_227_p1");
    sc_trace(mVcdFile, sext_ln27_fu_295_p1, "sext_ln27_fu_295_p1");
    sc_trace(mVcdFile, sext_ln34_fu_317_p1, "sext_ln34_fu_317_p1");
    sc_trace(mVcdFile, n_0_assign_2_fu_50, "n_0_assign_2_fu_50");
    sc_trace(mVcdFile, add_ln36_fu_322_p2, "add_ln36_fu_322_p2");
    sc_trace(mVcdFile, zext_ln25_fu_222_p1, "zext_ln25_fu_222_p1");
    sc_trace(mVcdFile, sub_ln11_fu_237_p2, "sub_ln11_fu_237_p2");
    sc_trace(mVcdFile, abscond_i_fu_248_p2, "abscond_i_fu_248_p2");
    sc_trace(mVcdFile, neg_i_fu_242_p2, "neg_i_fu_242_p2");
    sc_trace(mVcdFile, abs_i_fu_254_p3, "abs_i_fu_254_p3");
    sc_trace(mVcdFile, sub_ln11_1_fu_262_p2, "sub_ln11_1_fu_262_p2");
    sc_trace(mVcdFile, icmp_ln11_1_fu_267_p2, "icmp_ln11_1_fu_267_p2");
    sc_trace(mVcdFile, count_fu_273_p2, "count_fu_273_p2");
    sc_trace(mVcdFile, icmp_ln11_fu_232_p2, "icmp_ln11_fu_232_p2");
    sc_trace(mVcdFile, select_ln11_fu_279_p3, "select_ln11_fu_279_p3");
    sc_trace(mVcdFile, sext_ln27_fu_295_p0, "sext_ln27_fu_295_p0");
    sc_trace(mVcdFile, add_ln28_fu_306_p2, "add_ln28_fu_306_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("nqueens.hdltvin.dat");
    mHdltvoutHandle.open("nqueens.hdltvout.dat");
}

nqueens::~nqueens() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void nqueens::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_fu_183_p2.read(), ap_const_lv1_1))) {
        count_0_i_reg_126 = ap_const_lv32_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        count_0_i_reg_126 = select_ln11_1_fu_287_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_fu_183_p2.read(), ap_const_lv1_1))) {
        j_0_i_reg_138 = ap_const_lv31_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        j_0_i_reg_138 = j_reg_380.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln30_reg_418.read()) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln40_fu_344_p2.read())) || 
          (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln27_reg_414.read()) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln40_fu_344_p2.read()))))) {
        k_assign_2_reg_104 = add_ln39_fu_338_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_assign_2_reg_104 = k.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln27_fu_300_p2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln30_fu_311_p2.read()))) {
        n_0_assign_2_fu_50 = add_ln36_fu_322_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        n_0_assign_2_fu_50 = n_0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln15_fu_210_p2.read()))) {
        p_0_i_reg_149 = u_0_i_reg_114.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(icmp_ln8_fu_183_p2.read(), ap_const_lv1_0))) {
        p_0_i_reg_149 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        if (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln27_fu_300_p2.read())) {
            p_1_reg_161 = k_assign_2_reg_104.read();
        } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln27_fu_300_p2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln30_fu_311_p2.read()))) {
            p_1_reg_161 = add_ln37_fu_327_p2.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln15_fu_210_p2.read()))) {
        u_0_i_reg_114 = u_fu_216_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        u_0_i_reg_114 = ap_const_lv3_1;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        icmp_ln27_reg_414 = icmp_ln27_fu_300_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln27_fu_300_p2.read()))) {
        icmp_ln30_reg_418 = icmp_ln30_fu_311_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        icmp_ln8_reg_368 = icmp_ln8_fu_183_p2.read();
        zext_ln8_reg_362 = zext_ln8_fu_179_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_1))) {
        j_reg_380 = j_fu_199_p2.read();
        zext_ln10_reg_372 = zext_ln10_fu_189_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        n_0_assign_2_load_1_reg_403 = n_0_assign_2_fu_50.read();
    }
}

void nqueens::thread_a_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        a_address0 =  (sc_lv<3>) (sext_ln34_fu_317_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        a_address0 =  (sc_lv<3>) (sext_ln27_fu_295_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                ((esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
                  esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln15_fu_210_p2.read())) || 
                 esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_0)))) {
        a_address0 =  (sc_lv<3>) (sext_ln25_fu_227_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln10_fu_193_p2.read()))) {
        a_address0 =  (sc_lv<3>) (zext_ln11_fu_205_p1.read());
    } else {
        a_address0 = "XXX";
    }
}

void nqueens::thread_a_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln10_fu_193_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          ((esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln15_fu_210_p2.read())) || 
           esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_0))))) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void nqueens::thread_a_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        a_d0 = ap_const_lv32_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                ((esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
                  esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln15_fu_210_p2.read())) || 
                 esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_0)))) {
        a_d0 = zext_ln25_fu_222_p1.read();
    } else {
        a_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void nqueens::thread_a_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln27_fu_300_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln30_fu_311_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          ((esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln15_fu_210_p2.read())) || 
           esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_0))))) {
        a_we0 = ap_const_logic_1;
    } else {
        a_we0 = ap_const_logic_0;
    }
}

void nqueens::thread_abs_i_fu_254_p3() {
    abs_i_fu_254_p3 = (!abscond_i_fu_248_p2.read()[0].is_01())? sc_lv<32>(): ((abscond_i_fu_248_p2.read()[0].to_bool())? sub_ln11_fu_237_p2.read(): neg_i_fu_242_p2.read());
}

void nqueens::thread_abscond_i_fu_248_p2() {
    abscond_i_fu_248_p2 = (!sub_ln11_fu_237_p2.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sub_ln11_fu_237_p2.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void nqueens::thread_add_ln28_fu_306_p2() {
    add_ln28_fu_306_p2 = (!n_0_assign_2_load_1_reg_403.read().is_01() || !ap_const_lv32_FFFFFFFF.is_01())? sc_lv<32>(): (sc_bigint<32>(n_0_assign_2_load_1_reg_403.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFF));
}

void nqueens::thread_add_ln36_fu_322_p2() {
    add_ln36_fu_322_p2 = (!n_0_assign_2_load_1_reg_403.read().is_01() || !ap_const_lv32_FFFFFFFE.is_01())? sc_lv<32>(): (sc_bigint<32>(n_0_assign_2_load_1_reg_403.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFE));
}

void nqueens::thread_add_ln37_fu_327_p2() {
    add_ln37_fu_327_p2 = (!k_assign_2_reg_104.read().is_01() || !ap_const_lv32_FFFFFFFE.is_01())? sc_lv<32>(): (sc_bigint<32>(k_assign_2_reg_104.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFE));
}

void nqueens::thread_add_ln39_fu_338_p2() {
    add_ln39_fu_338_p2 = (!p_1_reg_161.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(p_1_reg_161.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void nqueens::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void nqueens::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void nqueens::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void nqueens::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void nqueens::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void nqueens::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void nqueens::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void nqueens::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void nqueens::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln40_fu_344_p2.read()) || 
          (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln27_reg_414.read()) && 
           esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln30_reg_418.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void nqueens::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void nqueens::thread_ap_phi_mux_p_0_i_phi_fu_153_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln15_fu_210_p2.read()))) {
        ap_phi_mux_p_0_i_phi_fu_153_p4 = u_0_i_reg_114.read();
    } else {
        ap_phi_mux_p_0_i_phi_fu_153_p4 = p_0_i_reg_149.read();
    }
}

void nqueens::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln40_fu_344_p2.read()) || 
          (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln27_reg_414.read()) && 
           esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln30_reg_418.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void nqueens::thread_count_fu_273_p2() {
    count_fu_273_p2 = (!count_0_i_reg_126.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(count_0_i_reg_126.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void nqueens::thread_icmp_ln10_fu_193_p2() {
    icmp_ln10_fu_193_p2 = (!zext_ln10_fu_189_p1.read().is_01() || !n_0_assign_2_fu_50.read().is_01())? sc_lv<1>(): (sc_bigint<32>(zext_ln10_fu_189_p1.read()) < sc_bigint<32>(n_0_assign_2_fu_50.read()));
}

void nqueens::thread_icmp_ln11_1_fu_267_p2() {
    icmp_ln11_1_fu_267_p2 = (!abs_i_fu_254_p3.read().is_01() || !sub_ln11_1_fu_262_p2.read().is_01())? sc_lv<1>(): sc_lv<1>(abs_i_fu_254_p3.read() == sub_ln11_1_fu_262_p2.read());
}

void nqueens::thread_icmp_ln11_fu_232_p2() {
    icmp_ln11_fu_232_p2 = (!zext_ln8_reg_362.read().is_01() || !a_q0.read().is_01())? sc_lv<1>(): sc_lv<1>(zext_ln8_reg_362.read() == a_q0.read());
}

void nqueens::thread_icmp_ln15_fu_210_p2() {
    icmp_ln15_fu_210_p2 = (!count_0_i_reg_126.read().is_01() || !k_assign_2_reg_104.read().is_01())? sc_lv<1>(): sc_lv<1>(count_0_i_reg_126.read() == k_assign_2_reg_104.read());
}

void nqueens::thread_icmp_ln27_fu_300_p2() {
    icmp_ln27_fu_300_p2 = (!a_q0.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(a_q0.read() == ap_const_lv32_0);
}

void nqueens::thread_icmp_ln30_fu_311_p2() {
    icmp_ln30_fu_311_p2 = (!add_ln28_fu_306_p2.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(add_ln28_fu_306_p2.read() == ap_const_lv32_0);
}

void nqueens::thread_icmp_ln40_fu_344_p2() {
    icmp_ln40_fu_344_p2 = (!n_0_assign_2_fu_50.read().is_01() || !ap_const_lv32_6.is_01())? sc_lv<1>(): sc_lv<1>(n_0_assign_2_fu_50.read() == ap_const_lv32_6);
}

void nqueens::thread_icmp_ln8_fu_183_p2() {
    icmp_ln8_fu_183_p2 = (!u_0_i_reg_114.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): (sc_biguint<3>(u_0_i_reg_114.read()) < sc_biguint<3>(ap_const_lv3_6));
}

void nqueens::thread_j_fu_199_p2() {
    j_fu_199_p2 = (!j_0_i_reg_138.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(j_0_i_reg_138.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void nqueens::thread_neg_i_fu_242_p2() {
    neg_i_fu_242_p2 = (!ap_const_lv32_0.is_01() || !sub_ln11_fu_237_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_0) - sc_biguint<32>(sub_ln11_fu_237_p2.read()));
}

void nqueens::thread_select_ln11_1_fu_287_p3() {
    select_ln11_1_fu_287_p3 = (!icmp_ln11_fu_232_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln11_fu_232_p2.read()[0].to_bool())? count_0_i_reg_126.read(): select_ln11_fu_279_p3.read());
}

void nqueens::thread_select_ln11_fu_279_p3() {
    select_ln11_fu_279_p3 = (!icmp_ln11_1_fu_267_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln11_1_fu_267_p2.read()[0].to_bool())? count_0_i_reg_126.read(): count_fu_273_p2.read());
}

void nqueens::thread_sext_ln25_fu_227_p1() {
    sext_ln25_fu_227_p1 = esl_sext<64,32>(k_assign_2_reg_104.read());
}

void nqueens::thread_sext_ln27_fu_295_p0() {
    sext_ln27_fu_295_p0 = n_0_assign_2_fu_50.read();
}

void nqueens::thread_sext_ln27_fu_295_p1() {
    sext_ln27_fu_295_p1 = esl_sext<64,32>(sext_ln27_fu_295_p0.read());
}

void nqueens::thread_sext_ln34_fu_317_p1() {
    sext_ln34_fu_317_p1 = esl_sext<64,32>(add_ln28_fu_306_p2.read());
}

void nqueens::thread_sub_ln11_1_fu_262_p2() {
    sub_ln11_1_fu_262_p2 = (!k_assign_2_reg_104.read().is_01() || !zext_ln10_reg_372.read().is_01())? sc_lv<32>(): (sc_bigint<32>(k_assign_2_reg_104.read()) - sc_biguint<32>(zext_ln10_reg_372.read()));
}

void nqueens::thread_sub_ln11_fu_237_p2() {
    sub_ln11_fu_237_p2 = (!zext_ln8_reg_362.read().is_01() || !a_q0.read().is_01())? sc_lv<32>(): (sc_biguint<32>(zext_ln8_reg_362.read()) - sc_biguint<32>(a_q0.read()));
}

void nqueens::thread_u_fu_216_p2() {
    u_fu_216_p2 = (!u_0_i_reg_114.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(u_0_i_reg_114.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void nqueens::thread_zext_ln10_fu_189_p1() {
    zext_ln10_fu_189_p1 = esl_zext<32,31>(j_0_i_reg_138.read());
}

void nqueens::thread_zext_ln11_fu_205_p1() {
    zext_ln11_fu_205_p1 = esl_zext<64,31>(j_0_i_reg_138.read());
}

void nqueens::thread_zext_ln25_fu_222_p1() {
    zext_ln25_fu_222_p1 = esl_zext<32,3>(ap_phi_mux_p_0_i_phi_fu_153_p4.read());
}

void nqueens::thread_zext_ln8_fu_179_p1() {
    zext_ln8_fu_179_p1 = esl_zext<32,3>(u_0_i_reg_114.read());
}

void nqueens::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln15_fu_210_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && ((esl_seteq<1,1,1>(icmp_ln10_fu_193_p2.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln15_fu_210_p2.read())) || 
  esl_seteq<1,1,1>(icmp_ln8_reg_368.read(), ap_const_lv1_0)))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln40_fu_344_p2.read()) || 
  (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln27_reg_414.read()) && 
   esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln30_reg_418.read()))))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<8>) ("XXXXXXXX");
            break;
    }
}

void nqueens::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_address0\" :  \"" << a_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_ce0\" :  \"" << a_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_we0\" :  \"" << a_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_d0\" :  \"" << a_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_q0\" :  \"" << a_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"k\" :  \"" << k.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"n_0\" :  \"" << n_0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"u_0\" :  \"" << u_0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"sol_list\" :  \"" << sol_list.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"flag\" :  \"" << flag.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

