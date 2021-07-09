#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("V_address0", 6, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("V_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("V_we0", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("V_d0", 32, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("V_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("U_0_address0", 6, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("U_0_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("U_0_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("U_0_d0", 32, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("U_1_address0", 6, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("U_1_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("U_1_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("U_2_address0", 6, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("U_2_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("U_2_q0", 32, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("I_address0", 6, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("I_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("I_q0", 32, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("T_address0", 12, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("T_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("T_q0", 32, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("A", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("B", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("C", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("l", 32, hls_in, 9, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "hopfield_routing";