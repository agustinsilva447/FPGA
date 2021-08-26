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


// wrapc file define: "a"
#define AUTOTB_TVIN_a  "../tv/cdatafile/c.nqueens.autotvin_a.dat"
#define AUTOTB_TVOUT_a  "../tv/cdatafile/c.nqueens.autotvout_a.dat"
// wrapc file define: "k"
#define AUTOTB_TVIN_k  "../tv/cdatafile/c.nqueens.autotvin_k.dat"
#define AUTOTB_TVOUT_k  "../tv/cdatafile/c.nqueens.autotvout_k.dat"
// wrapc file define: "u_0"
#define AUTOTB_TVIN_u_0  "../tv/cdatafile/c.nqueens.autotvin_u_0.dat"
#define AUTOTB_TVOUT_u_0  "../tv/cdatafile/c.nqueens.autotvout_u_0.dat"
// wrapc file define: "sol_list"
#define AUTOTB_TVIN_sol_list  "../tv/cdatafile/c.nqueens.autotvin_sol_list.dat"
#define AUTOTB_TVOUT_sol_list  "../tv/cdatafile/c.nqueens.autotvout_sol_list.dat"
// wrapc file define: "flag"
#define AUTOTB_TVOUT_flag  "../tv/cdatafile/c.nqueens.autotvout_flag.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "a"
#define AUTOTB_TVOUT_PC_a  "../tv/rtldatafile/rtl.nqueens.autotvout_a.dat"
// tvout file define: "k"
#define AUTOTB_TVOUT_PC_k  "../tv/rtldatafile/rtl.nqueens.autotvout_k.dat"
// tvout file define: "u_0"
#define AUTOTB_TVOUT_PC_u_0  "../tv/rtldatafile/rtl.nqueens.autotvout_u_0.dat"
// tvout file define: "sol_list"
#define AUTOTB_TVOUT_PC_sol_list  "../tv/rtldatafile/rtl.nqueens.autotvout_sol_list.dat"
// tvout file define: "flag"
#define AUTOTB_TVOUT_PC_flag  "../tv/rtldatafile/rtl.nqueens.autotvout_flag.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			a_depth = 0;
			k_depth = 0;
			u_0_depth = 0;
			sol_list_depth = 0;
			flag_depth = 0;
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
			total_list << "{a " << a_depth << "}\n";
			total_list << "{k " << k_depth << "}\n";
			total_list << "{u_0 " << u_0_depth << "}\n";
			total_list << "{sol_list " << sol_list_depth << "}\n";
			total_list << "{flag " << flag_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int a_depth;
		int k_depth;
		int u_0_depth;
		int sol_list_depth;
		int flag_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void nqueens (
int a[8],
int* k,
int* u_0,
int* sol_list,
int* flag);

void AESL_WRAP_nqueens (
int a[8],
int* k,
int* u_0,
int* sol_list,
int* flag)
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


		// output port post check: "a"
		aesl_fh.read(AUTOTB_TVOUT_PC_a, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_a, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_a, AESL_token); // data

			sc_bv<32> *a_pc_buffer = new sc_bv<32>[8];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'a', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'a', possible cause: There are uninitialized variables in the C design." << endl;
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
					a_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_a, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_a))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: a
				{
					// bitslice(31, 0)
					// {
						// celement: a(31, 0)
						// {
							sc_lv<32>* a_lv0_0_7_1 = new sc_lv<32>[8];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: a(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								if (&(a[0]) != NULL) // check the null address if the c port is array or others
								{
									a_lv0_0_7_1[hls_map_index].range(31, 0) = sc_bv<32>(a_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: a(31, 0)
						{
							// carray: (0) => (7) @ (1)
							for (int i_0 = 0; i_0 <= 7; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : a[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : a[0]
								// output_left_conversion : a[i_0]
								// output_type_conversion : (a_lv0_0_7_1[hls_map_index]).to_uint64()
								if (&(a[0]) != NULL) // check the null address if the c port is array or others
								{
									a[i_0] = (a_lv0_0_7_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] a_pc_buffer;
		}

		// output port post check: "k"
		aesl_fh.read(AUTOTB_TVOUT_PC_k, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_k, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_k, AESL_token); // data

			sc_bv<32> *k_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'k', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'k', possible cause: There are uninitialized variables in the C design." << endl;
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
					k_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_k, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_k))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: k
				{
					// bitslice(31, 0)
					// {
						// celement: k(31, 0)
						// {
							sc_lv<32>* k_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: k(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(k[0]) != NULL) // check the null address if the c port is array or others
								{
									k_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(k_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: k(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : k[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : k[0]
								// output_left_conversion : k[i_0]
								// output_type_conversion : (k_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(k[0]) != NULL) // check the null address if the c port is array or others
								{
									k[i_0] = (k_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] k_pc_buffer;
		}

		// output port post check: "u_0"
		aesl_fh.read(AUTOTB_TVOUT_PC_u_0, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_u_0, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_u_0, AESL_token); // data

			sc_bv<32> *u_0_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'u_0', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'u_0', possible cause: There are uninitialized variables in the C design." << endl;
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
					u_0_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_u_0, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_u_0))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: u_0
				{
					// bitslice(31, 0)
					// {
						// celement: u_0(31, 0)
						// {
							sc_lv<32>* u_0_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: u_0(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(u_0[0]) != NULL) // check the null address if the c port is array or others
								{
									u_0_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(u_0_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: u_0(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : u_0[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : u_0[0]
								// output_left_conversion : u_0[i_0]
								// output_type_conversion : (u_0_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(u_0[0]) != NULL) // check the null address if the c port is array or others
								{
									u_0[i_0] = (u_0_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] u_0_pc_buffer;
		}

		// output port post check: "sol_list"
		aesl_fh.read(AUTOTB_TVOUT_PC_sol_list, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_sol_list, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_sol_list, AESL_token); // data

			sc_bv<32> *sol_list_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sol_list', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sol_list', possible cause: There are uninitialized variables in the C design." << endl;
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
					sol_list_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_sol_list, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_sol_list))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: sol_list
				{
					// bitslice(31, 0)
					// {
						// celement: sol_list(31, 0)
						// {
							sc_lv<32>* sol_list_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: sol_list(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(sol_list[0]) != NULL) // check the null address if the c port is array or others
								{
									sol_list_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(sol_list_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: sol_list(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : sol_list[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : sol_list[0]
								// output_left_conversion : sol_list[i_0]
								// output_type_conversion : (sol_list_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(sol_list[0]) != NULL) // check the null address if the c port is array or others
								{
									sol_list[i_0] = (sol_list_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] sol_list_pc_buffer;
		}

		// output port post check: "flag"
		aesl_fh.read(AUTOTB_TVOUT_PC_flag, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_flag, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_flag, AESL_token); // data

			sc_bv<32> *flag_pc_buffer = new sc_bv<32>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'flag', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'flag', possible cause: There are uninitialized variables in the C design." << endl;
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
					flag_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_flag, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_flag))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: flag
				{
					// bitslice(31, 0)
					// {
						// celement: flag(31, 0)
						// {
							sc_lv<32>* flag_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: flag(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(flag[0]) != NULL) // check the null address if the c port is array or others
								{
									flag_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(flag_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: flag(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : flag[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : flag[0]
								// output_left_conversion : flag[i_0]
								// output_type_conversion : (flag_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(flag[0]) != NULL) // check the null address if the c port is array or others
								{
									flag[i_0] = (flag_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] flag_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "a"
		char* tvin_a = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a);
		char* tvout_a = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_a);

		// "k"
		char* tvin_k = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_k);
		char* tvout_k = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_k);

		// "u_0"
		char* tvin_u_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_u_0);
		char* tvout_u_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_u_0);

		// "sol_list"
		char* tvin_sol_list = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_sol_list);
		char* tvout_sol_list = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_sol_list);

		// "flag"
		char* tvout_flag = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_flag);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_a, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a, tvin_a);

		sc_bv<32>* a_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: a
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: a(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : a[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : a[0]
						// regulate_c_name       : a
						// input_type_conversion : a[i_0]
						if (&(a[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> a_tmp_mem;
							a_tmp_mem = a[i_0];
							a_tvin_wrapc_buffer[hls_map_index].range(31, 0) = a_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_a, "%s\n", (a_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a, tvin_a);
		}

		tcl_file.set_num(8, &tcl_file.a_depth);
		sprintf(tvin_a, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a, tvin_a);

		// release memory allocation
		delete [] a_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_k, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_k, tvin_k);

		sc_bv<32>* k_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: k
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: k(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : k[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : k[0]
						// regulate_c_name       : k
						// input_type_conversion : k[i_0]
						if (&(k[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> k_tmp_mem;
							k_tmp_mem = k[i_0];
							k_tvin_wrapc_buffer[hls_map_index].range(31, 0) = k_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_k, "%s\n", (k_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_k, tvin_k);
		}

		tcl_file.set_num(1, &tcl_file.k_depth);
		sprintf(tvin_k, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_k, tvin_k);

		// release memory allocation
		delete [] k_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_u_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_u_0, tvin_u_0);

		sc_bv<32>* u_0_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: u_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: u_0(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : u_0[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : u_0[0]
						// regulate_c_name       : u_0
						// input_type_conversion : u_0[i_0]
						if (&(u_0[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> u_0_tmp_mem;
							u_0_tmp_mem = u_0[i_0];
							u_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = u_0_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_u_0, "%s\n", (u_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_u_0, tvin_u_0);
		}

		tcl_file.set_num(1, &tcl_file.u_0_depth);
		sprintf(tvin_u_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_u_0, tvin_u_0);

		// release memory allocation
		delete [] u_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_sol_list, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_sol_list, tvin_sol_list);

		sc_bv<32>* sol_list_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: sol_list
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: sol_list(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sol_list[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sol_list[0]
						// regulate_c_name       : sol_list
						// input_type_conversion : sol_list[i_0]
						if (&(sol_list[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> sol_list_tmp_mem;
							sol_list_tmp_mem = sol_list[i_0];
							sol_list_tvin_wrapc_buffer[hls_map_index].range(31, 0) = sol_list_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_sol_list, "%s\n", (sol_list_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_sol_list, tvin_sol_list);
		}

		tcl_file.set_num(1, &tcl_file.sol_list_depth);
		sprintf(tvin_sol_list, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_sol_list, tvin_sol_list);

		// release memory allocation
		delete [] sol_list_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		nqueens(a, k, u_0, sol_list, flag);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_a, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_a, tvout_a);

		sc_bv<32>* a_tvout_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: a
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: a(31, 0)
				{
					// carray: (0) => (7) @ (1)
					for (int i_0 = 0; i_0 <= 7; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : a[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : a[0]
						// regulate_c_name       : a
						// input_type_conversion : a[i_0]
						if (&(a[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> a_tmp_mem;
							a_tmp_mem = a[i_0];
							a_tvout_wrapc_buffer[hls_map_index].range(31, 0) = a_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvout_a, "%s\n", (a_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_a, tvout_a);
		}

		tcl_file.set_num(8, &tcl_file.a_depth);
		sprintf(tvout_a, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_a, tvout_a);

		// release memory allocation
		delete [] a_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_k, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_k, tvout_k);

		sc_bv<32>* k_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: k
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: k(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : k[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : k[0]
						// regulate_c_name       : k
						// input_type_conversion : k[i_0]
						if (&(k[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> k_tmp_mem;
							k_tmp_mem = k[i_0];
							k_tvout_wrapc_buffer[hls_map_index].range(31, 0) = k_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_k, "%s\n", (k_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_k, tvout_k);
		}

		tcl_file.set_num(1, &tcl_file.k_depth);
		sprintf(tvout_k, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_k, tvout_k);

		// release memory allocation
		delete [] k_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_u_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_u_0, tvout_u_0);

		sc_bv<32>* u_0_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: u_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: u_0(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : u_0[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : u_0[0]
						// regulate_c_name       : u_0
						// input_type_conversion : u_0[i_0]
						if (&(u_0[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> u_0_tmp_mem;
							u_0_tmp_mem = u_0[i_0];
							u_0_tvout_wrapc_buffer[hls_map_index].range(31, 0) = u_0_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_u_0, "%s\n", (u_0_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_u_0, tvout_u_0);
		}

		tcl_file.set_num(1, &tcl_file.u_0_depth);
		sprintf(tvout_u_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_u_0, tvout_u_0);

		// release memory allocation
		delete [] u_0_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_sol_list, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_sol_list, tvout_sol_list);

		sc_bv<32>* sol_list_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: sol_list
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: sol_list(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sol_list[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sol_list[0]
						// regulate_c_name       : sol_list
						// input_type_conversion : sol_list[i_0]
						if (&(sol_list[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> sol_list_tmp_mem;
							sol_list_tmp_mem = sol_list[i_0];
							sol_list_tvout_wrapc_buffer[hls_map_index].range(31, 0) = sol_list_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_sol_list, "%s\n", (sol_list_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_sol_list, tvout_sol_list);
		}

		tcl_file.set_num(1, &tcl_file.sol_list_depth);
		sprintf(tvout_sol_list, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_sol_list, tvout_sol_list);

		// release memory allocation
		delete [] sol_list_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_flag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_flag, tvout_flag);

		sc_bv<32>* flag_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: flag
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: flag(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : flag[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : flag[0]
						// regulate_c_name       : flag
						// input_type_conversion : flag[i_0]
						if (&(flag[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> flag_tmp_mem;
							flag_tmp_mem = flag[i_0];
							flag_tvout_wrapc_buffer[hls_map_index].range(31, 0) = flag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_flag, "%s\n", (flag_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_flag, tvout_flag);
		}

		tcl_file.set_num(1, &tcl_file.flag_depth);
		sprintf(tvout_flag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_flag, tvout_flag);

		// release memory allocation
		delete [] flag_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "a"
		delete [] tvin_a;
		delete [] tvout_a;
		// release memory allocation: "k"
		delete [] tvin_k;
		delete [] tvout_k;
		// release memory allocation: "u_0"
		delete [] tvin_u_0;
		delete [] tvout_u_0;
		// release memory allocation: "sol_list"
		delete [] tvin_sol_list;
		delete [] tvout_sol_list;
		// release memory allocation: "flag"
		delete [] tvout_flag;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

