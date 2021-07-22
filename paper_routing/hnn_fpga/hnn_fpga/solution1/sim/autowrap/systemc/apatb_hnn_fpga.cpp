// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "U"
#define AUTOTB_TVIN_U  "../tv/cdatafile/c.hnn_fpga.autotvin_U.dat"
// wrapc file define: "l"
#define AUTOTB_TVIN_l  "../tv/cdatafile/c.hnn_fpga.autotvin_l.dat"
// wrapc file define: "V"
#define AUTOTB_TVOUT_V  "../tv/cdatafile/c.hnn_fpga.autotvout_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "V"
#define AUTOTB_TVOUT_PC_V  "../tv/rtldatafile/rtl.hnn_fpga.autotvout_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			U_depth = 0;
			l_depth = 0;
			V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{U " << U_depth << "}\n";
			total_list << "{l " << l_depth << "}\n";
			total_list << "{V " << V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int U_depth;
		int l_depth;
		int V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void hnn_fpga (
float U[64],
float l,
float V[64]);

extern "C" void AESL_WRAP_hnn_fpga (
float U[64],
float l,
float V[64])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "V"
		aesl_fh.read(AUTOTB_TVOUT_PC_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_V, AESL_token); // data

			sc_bv<32> *V_pc_buffer = new sc_bv<32>[64];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: V
				{
					// bitslice(31, 0)
					// {
						// celement: V(31, 0)
						// {
							sc_lv<32>* V_lv0_0_63_1 = new sc_lv<32>[64];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: V(31, 0)
						{
							// carray: (0) => (63) @ (1)
							for (int i_0 = 0; i_0 <= 63; i_0 += 1)
							{
								if (&(V[0]) != NULL) // check the null address if the c port is array or others
								{
									V_lv0_0_63_1[hls_map_index].range(31, 0) = sc_bv<32>(V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: V(31, 0)
						{
							// carray: (0) => (63) @ (1)
							for (int i_0 = 0; i_0 <= 63; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : V[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : V[0]
								// output_left_conversion : *(int*)&V[i_0]
								// output_type_conversion : (V_lv0_0_63_1[hls_map_index]).to_uint64()
								if (&(V[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&V[i_0] = (V_lv0_0_63_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] V_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "U"
		char* tvin_U = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_U);

		// "l"
		char* tvin_l = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_l);

		// "V"
		char* tvout_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_U, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_U, tvin_U);

		sc_bv<32>* U_tvin_wrapc_buffer = new sc_bv<32>[64];

		// RTL Name: U
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: U(31, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : U[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : U[0]
						// regulate_c_name       : U
						// input_type_conversion : *(int*)&U[i_0]
						if (&(U[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> U_tmp_mem;
							U_tmp_mem = *(int*)&U[i_0];
							U_tvin_wrapc_buffer[hls_map_index].range(31, 0) = U_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 64; i++)
		{
			sprintf(tvin_U, "%s\n", (U_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_U, tvin_U);
		}

		tcl_file.set_num(64, &tcl_file.U_depth);
		sprintf(tvin_U, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_U, tvin_U);

		// release memory allocation
		delete [] U_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_l, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_l, tvin_l);

		sc_bv<32> l_tvin_wrapc_buffer;

		// RTL Name: l
		{
			// bitslice(31, 0)
			{
				// celement: l(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : l
						// sub_1st_elem          : 
						// ori_name_1st_elem     : l
						// regulate_c_name       : l
						// input_type_conversion : *(int*)&l
						if (&(l) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> l_tmp_mem;
							l_tmp_mem = *(int*)&l;
							l_tvin_wrapc_buffer.range(31, 0) = l_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_l, "%s\n", (l_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_l, tvin_l);
		}

		tcl_file.set_num(1, &tcl_file.l_depth);
		sprintf(tvin_l, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_l, tvin_l);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		hnn_fpga(U, l, V);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_V, tvout_V);

		sc_bv<32>* V_tvout_wrapc_buffer = new sc_bv<32>[64];

		// RTL Name: V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: V(31, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : V[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : V[0]
						// regulate_c_name       : V
						// input_type_conversion : *(int*)&V[i_0]
						if (&(V[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> V_tmp_mem;
							V_tmp_mem = *(int*)&V[i_0];
							V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 64; i++)
		{
			sprintf(tvout_V, "%s\n", (V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_V, tvout_V);
		}

		tcl_file.set_num(64, &tcl_file.V_depth);
		sprintf(tvout_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_V, tvout_V);

		// release memory allocation
		delete [] V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "U"
		delete [] tvin_U;
		// release memory allocation: "l"
		delete [] tvin_l;
		// release memory allocation: "V"
		delete [] tvout_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

