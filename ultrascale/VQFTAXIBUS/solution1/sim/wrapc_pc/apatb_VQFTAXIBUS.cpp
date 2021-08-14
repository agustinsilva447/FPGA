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


// wrapc file define: "E"
#define AUTOTB_TVIN_E  "../tv/cdatafile/c.VQFTAXIBUS.autotvin_E.dat"
// wrapc file define: "S"
#define AUTOTB_TVOUT_S  "../tv/cdatafile/c.VQFTAXIBUS.autotvout_S.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "S"
#define AUTOTB_TVOUT_PC_S  "../tv/rtldatafile/rtl.VQFTAXIBUS.autotvout_S.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			E_depth = 0;
			S_depth = 0;
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
			total_list << "{E " << E_depth << "}\n";
			total_list << "{S " << S_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int E_depth;
		int S_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void VQFTAXIBUS (
float E[32],
float S[32]);

extern "C" void AESL_WRAP_VQFTAXIBUS (
float E[32],
float S[32])
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


		// output port post check: "S"
		aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_token); // data

			sc_bv<32> *S_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'S', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'S', possible cause: There are uninitialized variables in the C design." << endl;
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
					S_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_S))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: S
				{
					// bitslice(31, 0)
					// {
						// celement: S(31, 0)
						// {
							sc_lv<32>* S_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: S(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(S[0]) != NULL) // check the null address if the c port is array or others
								{
									S_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(S_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: S(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : S[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : S[0]
								// output_left_conversion : *(int*)&S[i_0]
								// output_type_conversion : (S_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(S[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&S[i_0] = (S_lv0_0_31_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] S_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "E"
		char* tvin_E = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_E);

		// "S"
		char* tvout_S = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_S);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_E, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_E, tvin_E);

		sc_bv<32>* E_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: E
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: E(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : E[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : E[0]
						// regulate_c_name       : E
						// input_type_conversion : *(int*)&E[i_0]
						if (&(E[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> E_tmp_mem;
							E_tmp_mem = *(int*)&E[i_0];
							E_tvin_wrapc_buffer[hls_map_index].range(31, 0) = E_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_E, "%s\n", (E_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_E, tvin_E);
		}

		tcl_file.set_num(32, &tcl_file.E_depth);
		sprintf(tvin_E, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_E, tvin_E);

		// release memory allocation
		delete [] E_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		VQFTAXIBUS(E, S);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_S, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_S, tvout_S);

		sc_bv<32>* S_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: S
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: S(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : S[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : S[0]
						// regulate_c_name       : S
						// input_type_conversion : *(int*)&S[i_0]
						if (&(S[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> S_tmp_mem;
							S_tmp_mem = *(int*)&S[i_0];
							S_tvout_wrapc_buffer[hls_map_index].range(31, 0) = S_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_S, "%s\n", (S_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_S, tvout_S);
		}

		tcl_file.set_num(32, &tcl_file.S_depth);
		sprintf(tvout_S, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_S, tvout_S);

		// release memory allocation
		delete [] S_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "E"
		delete [] tvin_E;
		// release memory allocation: "S"
		delete [] tvout_S;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

