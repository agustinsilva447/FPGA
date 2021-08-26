-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity AESL_axi_slave_AXILiteS is
  generic (
      constant    TV_IN_a : STRING (1 to 26) := "./c.nqueens.autotvin_a.dat";
      constant    TV_OUT_a : STRING (1 to 34) := "./impl_rtl.nqueens.autotvout_a.dat";
      constant    TV_IN_k : STRING (1 to 26) := "./c.nqueens.autotvin_k.dat";
      constant    TV_OUT_k : STRING (1 to 34) := "./impl_rtl.nqueens.autotvout_k.dat";
      constant    TV_IN_u_0 : STRING (1 to 28) := "./c.nqueens.autotvin_u_0.dat";
      constant    TV_OUT_u_0 : STRING (1 to 36) := "./impl_rtl.nqueens.autotvout_u_0.dat";
      constant    TV_IN_sol_list : STRING (1 to 33) := "./c.nqueens.autotvin_sol_list.dat";
      constant    TV_OUT_sol_list : STRING (1 to 41) := "./impl_rtl.nqueens.autotvout_sol_list.dat";
      constant    TV_OUT_flag : STRING (1 to 37) := "./impl_rtl.nqueens.autotvout_flag.dat";
constant ADDR_WIDTH : INTEGER := 7;
constant DATA_WIDTH : INTEGER := 32;
constant a_DEPTH : INTEGER := 8;
constant a_c_bitwidth : INTEGER := 32;
constant k_DEPTH : INTEGER := 1;
constant k_c_bitwidth : INTEGER := 32;
constant u_0_DEPTH : INTEGER := 1;
constant u_0_c_bitwidth : INTEGER := 32;
constant sol_list_DEPTH : INTEGER := 1;
constant sol_list_c_bitwidth : INTEGER := 32;
constant flag_DEPTH : INTEGER := 1;
constant flag_c_bitwidth : INTEGER := 32;
constant START_ADDR : INTEGER := 0;
constant nqueens_continue_addr : INTEGER := 0;
constant nqueens_auto_start_addr : INTEGER := 0;
constant a_data_in_addr : INTEGER := 32;
constant k_data_in_addr : INTEGER := 64;
constant u_0_data_in_addr : INTEGER := 80;
constant sol_list_data_in_addr : INTEGER := 96;
constant a_data_out_addr : INTEGER := 32;
constant k_data_out_addr : INTEGER := 72;
constant k_valid_out_addr : INTEGER := 76;
constant u_0_data_out_addr : INTEGER := 88;
constant u_0_valid_out_addr : INTEGER := 92;
constant sol_list_data_out_addr : INTEGER := 104;
constant sol_list_valid_out_addr : INTEGER := 108;
constant flag_data_out_addr : INTEGER := 112;
constant flag_valid_out_addr : INTEGER := 116;
constant STATUS_ADDR : INTEGER := 0;
      constant    INTERFACE_TYPE : STRING (1 to 8) := "AXILiteS"

  );
  port (
clk   :   IN STD_LOGIC;
reset :   IN STD_LOGIC;
TRAN_s_axi_AXILiteS_AWADDR  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_AWVALID  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_AWREADY  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_WVALID  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_WREADY  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_WDATA  : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_WSTRB  : OUT STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0);
TRAN_s_axi_AXILiteS_ARADDR  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_ARVALID  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_ARREADY  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_RVALID  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_RREADY  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_RDATA  : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
TRAN_s_axi_AXILiteS_RRESP  : IN STD_LOGIC_VECTOR(2 - 1 downto 0);
TRAN_s_axi_AXILiteS_BVALID  : IN STD_LOGIC;
TRAN_s_axi_AXILiteS_BREADY  : OUT STD_LOGIC;
TRAN_s_axi_AXILiteS_BRESP  : IN STD_LOGIC_VECTOR(2 - 1 downto 0);
TRAN_AXILiteS_interrupt   : IN STD_LOGIC;
TRAN_AXILiteS_write_data_finish   : OUT STD_LOGIC;
TRAN_AXILiteS_read_data_finish   : OUT STD_LOGIC;
TRAN_AXILiteS_start_in   : IN STD_LOGIC;
TRAN_AXILiteS_done_out   : OUT STD_LOGIC;
TRAN_AXILiteS_ready_out   : OUT STD_LOGIC;
TRAN_AXILiteS_ready_in   : IN STD_LOGIC;
TRAN_AXILiteS_idle_out   : OUT STD_LOGIC;
TRAN_AXILiteS_write_start_in   : IN STD_LOGIC;
TRAN_AXILiteS_write_start_finish   : OUT STD_LOGIC;
TRAN_AXILiteS_transaction_done_in   : IN STD_LOGIC

  );
end AESL_axi_slave_AXILiteS;

architecture behav of AESL_axi_slave_AXILiteS is
------------------------Local signal-------------------
shared variable a_OPERATE_DEPTH : INTEGER;
shared variable k_OPERATE_DEPTH : INTEGER;
shared variable u_0_OPERATE_DEPTH : INTEGER;
shared variable sol_list_OPERATE_DEPTH : INTEGER;
shared variable flag_OPERATE_DEPTH : INTEGER;
signal AWADDR_reg : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_0_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_1_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_2_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_3_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_4_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_5_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_6_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_7_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_8_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_9_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_10_AWADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal AWVALID_reg : STD_LOGIC := '0';
signal process_0_AWVALID_var : STD_LOGIC := '0';
signal process_1_AWVALID_var : STD_LOGIC := '0';
signal process_2_AWVALID_var : STD_LOGIC := '0';
signal process_3_AWVALID_var : STD_LOGIC := '0';
signal process_4_AWVALID_var : STD_LOGIC := '0';
signal process_5_AWVALID_var : STD_LOGIC := '0';
signal process_6_AWVALID_var : STD_LOGIC := '0';
signal process_7_AWVALID_var : STD_LOGIC := '0';
signal process_8_AWVALID_var : STD_LOGIC := '0';
signal process_9_AWVALID_var : STD_LOGIC := '0';
signal process_10_AWVALID_var : STD_LOGIC := '0';
signal WVALID_reg : STD_LOGIC := '0';
signal process_0_WVALID_var : STD_LOGIC := '0';
signal process_1_WVALID_var : STD_LOGIC := '0';
signal process_2_WVALID_var : STD_LOGIC := '0';
signal process_3_WVALID_var : STD_LOGIC := '0';
signal process_4_WVALID_var : STD_LOGIC := '0';
signal process_5_WVALID_var : STD_LOGIC := '0';
signal process_6_WVALID_var : STD_LOGIC := '0';
signal process_7_WVALID_var : STD_LOGIC := '0';
signal process_8_WVALID_var : STD_LOGIC := '0';
signal process_9_WVALID_var : STD_LOGIC := '0';
signal process_10_WVALID_var : STD_LOGIC := '0';
signal WDATA_reg : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_0_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_1_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_2_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_3_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_4_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_5_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_6_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_7_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_8_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_9_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_10_WDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal WSTRB_reg : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_0_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_1_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_2_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_3_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_4_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_5_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_6_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_7_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_8_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_9_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal process_10_WSTRB_var : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0) := (others => '0');
signal ARADDR_reg : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_0_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_1_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_2_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_3_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_4_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_5_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_6_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_7_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_8_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_9_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal process_10_ARADDR_var : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 downto 0) := (others => '0');
signal ARVALID_reg : STD_LOGIC := '0';
signal process_0_ARVALID_var : STD_LOGIC := '0';
signal process_1_ARVALID_var : STD_LOGIC := '0';
signal process_2_ARVALID_var : STD_LOGIC := '0';
signal process_3_ARVALID_var : STD_LOGIC := '0';
signal process_4_ARVALID_var : STD_LOGIC := '0';
signal process_5_ARVALID_var : STD_LOGIC := '0';
signal process_6_ARVALID_var : STD_LOGIC := '0';
signal process_7_ARVALID_var : STD_LOGIC := '0';
signal process_8_ARVALID_var : STD_LOGIC := '0';
signal process_9_ARVALID_var : STD_LOGIC := '0';
signal process_10_ARVALID_var : STD_LOGIC := '0';
signal RREADY_reg : STD_LOGIC := '0';
signal process_0_RREADY_var : STD_LOGIC := '0';
signal process_1_RREADY_var : STD_LOGIC := '0';
signal process_2_RREADY_var : STD_LOGIC := '0';
signal process_3_RREADY_var : STD_LOGIC := '0';
signal process_4_RREADY_var : STD_LOGIC := '0';
signal process_5_RREADY_var : STD_LOGIC := '0';
signal process_6_RREADY_var : STD_LOGIC := '0';
signal process_7_RREADY_var : STD_LOGIC := '0';
signal process_8_RREADY_var : STD_LOGIC := '0';
signal process_9_RREADY_var : STD_LOGIC := '0';
signal process_10_RREADY_var : STD_LOGIC := '0';
signal RDATA_reg : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_0_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_1_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_2_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_3_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_4_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_5_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_6_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_7_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_8_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_9_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal process_10_RDATA_var : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
signal BREADY_reg : STD_LOGIC := '0';
signal process_0_BREADY_var : STD_LOGIC := '0';
signal process_1_BREADY_var : STD_LOGIC := '0';
signal process_2_BREADY_var : STD_LOGIC := '0';
signal process_3_BREADY_var : STD_LOGIC := '0';
signal process_4_BREADY_var : STD_LOGIC := '0';
signal process_5_BREADY_var : STD_LOGIC := '0';
signal process_6_BREADY_var : STD_LOGIC := '0';
signal process_7_BREADY_var : STD_LOGIC := '0';
signal process_8_BREADY_var : STD_LOGIC := '0';
signal process_9_BREADY_var : STD_LOGIC := '0';
signal process_10_BREADY_var : STD_LOGIC := '0';
  type    mem_a_arr2D is array(0 to a_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_a : mem_a_arr2D;
signal a_write_data_finish : STD_LOGIC := '0';
signal a_read_data_finish : STD_LOGIC := '0';
  type    mem_k_arr2D is array(0 to k_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_k : mem_k_arr2D;
signal k_write_data_finish : STD_LOGIC := '0';
signal k_read_data_finish : STD_LOGIC := '0';
  type    mem_u_0_arr2D is array(0 to u_0_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_u_0 : mem_u_0_arr2D;
signal u_0_write_data_finish : STD_LOGIC := '0';
signal u_0_read_data_finish : STD_LOGIC := '0';
  type    mem_sol_list_arr2D is array(0 to sol_list_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_sol_list : mem_sol_list_arr2D;
signal sol_list_write_data_finish : STD_LOGIC := '0';
signal sol_list_read_data_finish : STD_LOGIC := '0';
  type    mem_flag_arr2D is array(0 to flag_DEPTH - 1) of STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
shared variable mem_flag : mem_flag_arr2D;
signal flag_read_data_finish : STD_LOGIC := '0';
signal AESL_ready_out_index_reg : STD_LOGIC := '0';
signal AESL_write_start_finish : STD_LOGIC := '0';
signal AESL_ready_reg : STD_LOGIC;
signal ready_initial : STD_LOGIC;
signal AESL_done_index_reg : STD_LOGIC := '0';
signal AESL_idle_index_reg : STD_LOGIC := '0';
signal AESL_auto_restart_index_reg : STD_LOGIC;
signal process_0_finish : STD_LOGIC := '0';
signal process_1_finish : STD_LOGIC := '0';
signal process_2_finish : STD_LOGIC := '0';
signal process_3_finish : STD_LOGIC := '0';
signal process_4_finish : STD_LOGIC := '0';
signal process_5_finish : STD_LOGIC := '0';
signal process_6_finish : STD_LOGIC := '0';
signal process_7_finish : STD_LOGIC := '0';
signal process_8_finish : STD_LOGIC := '0';
signal process_9_finish : STD_LOGIC := '0';
signal process_10_finish : STD_LOGIC := '0';
--write a reg
shared variable write_a_count : INTEGER;
signal write_a_run_flag : STD_LOGIC := '0';
signal write_one_a_data_done : STD_LOGIC := '0';
--write k reg
shared variable write_k_count : INTEGER;
signal write_k_run_flag : STD_LOGIC := '0';
signal write_one_k_data_done : STD_LOGIC := '0';
--write u_0 reg
shared variable write_u_0_count : INTEGER;
signal write_u_0_run_flag : STD_LOGIC := '0';
signal write_one_u_0_data_done : STD_LOGIC := '0';
--write sol_list reg
shared variable write_sol_list_count : INTEGER;
signal write_sol_list_run_flag : STD_LOGIC := '0';
signal write_one_sol_list_data_done : STD_LOGIC := '0';
--read a reg
shared variable read_a_count : INTEGER;
signal read_a_run_flag : STD_LOGIC := '0';
signal read_one_a_data_done : STD_LOGIC := '0';
--read k reg
shared variable read_k_count : INTEGER;
signal read_k_run_flag : STD_LOGIC := '0';
signal read_one_k_data_done : STD_LOGIC := '0';
--read u_0 reg
shared variable read_u_0_count : INTEGER;
signal read_u_0_run_flag : STD_LOGIC := '0';
signal read_one_u_0_data_done : STD_LOGIC := '0';
--read sol_list reg
shared variable read_sol_list_count : INTEGER;
signal read_sol_list_run_flag : STD_LOGIC := '0';
signal read_one_sol_list_data_done : STD_LOGIC := '0';
--read flag reg
shared variable read_flag_count : INTEGER;
signal read_flag_run_flag : STD_LOGIC := '0';
signal read_one_flag_data_done : STD_LOGIC := '0';
shared variable write_start_count : INTEGER;
signal write_start_run_flag : STD_LOGIC := '0';

--===================process control=================
signal ongoing_process_number : INTEGER;
-- Process number depends on how much processes needed.
shared variable process_busy : STD_LOGIC := '0';

      function esl_icmp_eq(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if v1 = v2 then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;
      procedure esl_read_token (file textfile: TEXT; textline: inout LINE; token: out STRING; token_len: out INTEGER) is
          variable whitespace : CHARACTER;
          variable i : INTEGER;
          variable ok: BOOLEAN;
          variable buff: STRING(1 to token'length);
      begin
          ok := false;
          i := 1;
          loop_main: while not endfile(textfile) loop
              if textline = null or textline'length = 0 then
                  readline(textfile, textline);
              end if;
              loop_remove_whitespace: while textline'length > 0 loop
                  if textline(textline'left) = ' ' or
                      textline(textline'left) = HT or
                      textline(textline'left) = CR or
                      textline(textline'left) = LF then
                      read(textline, whitespace);
                  else 
                      exit loop_remove_whitespace;
                  end if;
              end loop;
              loop_aesl_read_token: while textline'length > 0 and i <= buff'length loop
                  if textline(textline'left) = ' ' or
                     textline(textline'left) = HT or
                     textline(textline'left) = CR or
                     textline(textline'left) = LF then
                      exit loop_aesl_read_token;
                  else 
                      read(textline, buff(i));
                      i := i + 1;
                  end if;
                  ok := true;
              end loop;
              if ok = true then
                  exit loop_main;
              end if;
          end loop;
          buff(i) := ' ';
          token := buff;
          token_len:= i-1;
      end procedure esl_read_token;

      procedure esl_read_token (file textfile: TEXT; 
                                textline: inout LINE; 
                                token: out STRING) is
          variable i : INTEGER;
      begin
          esl_read_token (textfile, textline, token, i);
      end procedure esl_read_token;

      function esl_add(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : unsigned(v1'length-1 downto 0);
      begin
          res := unsigned(v1) + unsigned(v2);
          return std_logic_vector(res);
      end function;

      function esl_icmp_ult(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if unsigned(v1) < unsigned(v2) then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;

      function esl_str2lv_hex (RHS : STRING; data_width : INTEGER) return STD_LOGIC_VECTOR is
          variable	ret	:   STD_LOGIC_VECTOR(data_width - 1 downto 0);
          variable	idx	:   integer := 3;
      begin
          ret := (others => '0');
          if(RHS(1) /= '0' and (RHS(2) /= 'x' or RHS(2) /= 'X')) then
     	        report "Error! The format of hex number is not initialed by 0x";
          end if;
          while true loop
              if (data_width > 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := ret(data_width - 5 downto 0) & "0000";
     	                when '1'    =>  ret := ret(data_width - 5 downto 0) & "0001";
                      when '2'    =>  ret := ret(data_width - 5 downto 0) & "0010";
                      when '3'    =>  ret := ret(data_width - 5 downto 0) & "0011";
                      when '4'    =>  ret := ret(data_width - 5 downto 0) & "0100";
                      when '5'    =>  ret := ret(data_width - 5 downto 0) & "0101";
                      when '6'    =>  ret := ret(data_width - 5 downto 0) & "0110";
                      when '7'    =>  ret := ret(data_width - 5 downto 0) & "0111";
                      when '8'    =>  ret := ret(data_width - 5 downto 0) & "1000";
                      when '9'    =>  ret := ret(data_width - 5 downto 0) & "1001";
                      when 'a' | 'A'  =>  ret := ret(data_width - 5 downto 0) & "1010";
                      when 'b' | 'B'  =>  ret := ret(data_width - 5 downto 0) & "1011";
                      when 'c' | 'C'  =>  ret := ret(data_width - 5 downto 0) & "1100";
                      when 'd' | 'D'  =>  ret := ret(data_width - 5 downto 0) & "1101";
                      when 'e' | 'E'  =>  ret := ret(data_width - 5 downto 0) & "1110";
                      when 'f' | 'F'  =>  ret := ret(data_width - 5 downto 0) & "1111";
                      when 'x' | 'X'  =>  ret := ret(data_width - 5 downto 0) & "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0000";
     	                when '1'    =>  ret := "0001";
                      when '2'    =>  ret := "0010";
                      when '3'    =>  ret := "0011";
                      when '4'    =>  ret := "0100";
                      when '5'    =>  ret := "0101";
                      when '6'    =>  ret := "0110";
                      when '7'    =>  ret := "0111";
                      when '8'    =>  ret := "1000";
                      when '9'    =>  ret := "1001";
                      when 'a' | 'A'  =>  ret := "1010";
                      when 'b' | 'B'  =>  ret := "1011";
                      when 'c' | 'C'  =>  ret := "1100";
                      when 'd' | 'D'  =>  ret := "1101";
                      when 'e' | 'E'  =>  ret := "1110";
                      when 'f' | 'F'  =>  ret := "1111";
                      when 'x' | 'X'  =>  ret := "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 3) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "000";
     	                when '1'    =>  ret := "001";
                      when '2'    =>  ret := "010";
                      when '3'    =>  ret := "011";
                      when '4'    =>  ret := "100";
                      when '5'    =>  ret := "101";
                      when '6'    =>  ret := "110";
                      when '7'    =>  ret := "111";
                      when 'x' | 'X'  =>  ret := "XXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 2) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "00";
     	                when '1'    =>  ret := "01";
                      when '2'    =>  ret := "10";
                      when '3'    =>  ret := "11";
                      when 'x' | 'X'  =>  ret := "XX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 1) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0";
     	                when '1'    =>  ret := "1";
                      when 'x' | 'X'  =>  ret := "X";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              else
                  report string'("Wrong data_width.");
                  return ret;
              end if;
              idx := idx + 1;
          end loop;
          return ret;
      end function;

      function esl_conv_string_hex (lv : STD_LOGIC_VECTOR) return STRING is
          constant str_len : integer := (lv'length + 3)/4;
          variable ret : STRING (1 to str_len);
          variable i, tmp: INTEGER;
          variable normal_lv : STD_LOGIC_VECTOR(lv'length - 1 downto 0);
          variable tmp_lv : STD_LOGIC_VECTOR(3 downto 0);
      begin
          normal_lv := lv;
          for i in 1 to str_len loop
              if(i = 1) then
                  if((lv'length mod 4) = 3) then
                      tmp_lv(2 downto 0) := normal_lv(lv'length - 1 downto lv'length - 3);
                      case tmp_lv(2 downto 0) is
                          when "000" => ret(i) := '0';
                          when "001" => ret(i) := '1';
                          when "010" => ret(i) := '2';
                          when "011" => ret(i) := '3';
                          when "100" => ret(i) := '4';
                          when "101" => ret(i) := '5';
                          when "110" => ret(i) := '6';
                          when "111" => ret(i) := '7';
                          when others  => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 2) then
                      tmp_lv(1 downto 0) := normal_lv(lv'length - 1 downto lv'length - 2);
                      case tmp_lv(1 downto 0) is
                          when "00" => ret(i) := '0';
                          when "01" => ret(i) := '1';
                          when "10" => ret(i) := '2';
                          when "11" => ret(i) := '3';
                          when others => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 1) then
                      tmp_lv(0 downto 0) := normal_lv(lv'length - 1 downto lv'length - 1);
                      case tmp_lv(0 downto 0) is
                          when "0" => ret(i) := '0';
                          when "1" => ret(i) := '1';
                          when others=> ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 0) then
                      tmp_lv(3 downto 0) := normal_lv(lv'length - 1 downto lv'length - 4);
                      case tmp_lv(3 downto 0) is
                          when "0000" => ret(i) := '0';
                          when "0001" => ret(i) := '1';
                          when "0010" => ret(i) := '2';
                          when "0011" => ret(i) := '3';
                          when "0100" => ret(i) := '4';
                          when "0101" => ret(i) := '5';
                          when "0110" => ret(i) := '6';
                          when "0111" => ret(i) := '7';
                          when "1000" => ret(i) := '8';
                          when "1001" => ret(i) := '9';
                          when "1010" => ret(i) := 'a';
                          when "1011" => ret(i) := 'b';
                          when "1100" => ret(i) := 'c';
                          when "1101" => ret(i) := 'd';
                          when "1110" => ret(i) := 'e';
                          when "1111" => ret(i) := 'f';
                          when others   => ret(i) := 'X';
                      end case;
                  end if;
              else
                  tmp_lv(3 downto 0) := normal_lv((str_len - i) * 4 + 3 downto (str_len - i) * 4);
                  case tmp_lv(3 downto 0) is
                      when "0000" => ret(i) := '0';
                      when "0001" => ret(i) := '1';
                      when "0010" => ret(i) := '2';
                      when "0011" => ret(i) := '3';
                      when "0100" => ret(i) := '4';
                      when "0101" => ret(i) := '5';
                      when "0110" => ret(i) := '6';
                      when "0111" => ret(i) := '7';
                      when "1000" => ret(i) := '8';
                      when "1001" => ret(i) := '9';
                      when "1010" => ret(i) := 'a';
                      when "1011" => ret(i) := 'b';
                      when "1100" => ret(i) := 'c';
                      when "1101" => ret(i) := 'd';
                      when "1110" => ret(i) := 'e';
                      when "1111" => ret(i) := 'f';
                      when others   => ret(i) := 'X';
                  end case;
              end if;
          end loop;
          return ret;
      end function;

procedure count_c_data_four_byte_num_by_bitwidth (constant bitwidth : IN INTEGER; variable num : OUT INTEGER) is
variable factor : INTEGER;
variable i : INTEGER;
begin
    factor := 32;
    for i in 1 to 32 loop
        if (bitwidth <= factor and bitwidth > factor - 32) then
            num := i;
        end if;
        factor := factor + 32;
    end loop;
end procedure; 

procedure count_seperate_factor_by_bitwidth(bitwidth : in INTEGER; factor : out INTEGER) is
begin
    if (bitwidth <= 8) then
        factor := 4;
    elsif (bitwidth <= 16 and bitwidth > 8 ) then
        factor := 2;
    elsif (bitwidth <= 32 and bitwidth > 16 ) then
        factor := 1;
    elsif (bitwidth <= 1024 and bitwidth > 32 ) then
        factor := 1;
    end if;
end procedure;

procedure count_operate_depth_by_bitwidth_and_depth(bitwidth : in INTEGER; depth : in INTEGER; operate_depth : out INTEGER) is
variable factor : INTEGER;
variable remain : INTEGER;
variable operate_depth_tmp : INTEGER;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth_tmp := depth / factor;
    remain := depth mod factor;
    if (remain > 0) then
        operate_depth_tmp := operate_depth_tmp + 1;
    end if;
    operate_depth := operate_depth_tmp;
end procedure;

begin
--=================== signal connection ==============
TRAN_s_axi_AXILiteS_AWADDR <= AWADDR_reg;
TRAN_s_axi_AXILiteS_AWVALID <= AWVALID_reg;
TRAN_s_axi_AXILiteS_WVALID <= WVALID_reg;
TRAN_s_axi_AXILiteS_WDATA <= WDATA_reg;
TRAN_s_axi_AXILiteS_WSTRB <= WSTRB_reg;
TRAN_s_axi_AXILiteS_ARADDR <= ARADDR_reg;
TRAN_s_axi_AXILiteS_ARVALID <= ARVALID_reg;
TRAN_s_axi_AXILiteS_RREADY <= RREADY_reg;
TRAN_s_axi_AXILiteS_BREADY <= BREADY_reg;
TRAN_AXILiteS_done_out <= AESL_done_index_reg;
TRAN_AXILiteS_ready_out <= AESL_ready_out_index_reg;
TRAN_AXILiteS_write_start_finish <= AESL_write_start_finish;
TRAN_AXILiteS_idle_out <= AESL_idle_index_reg;
TRAN_AXILiteS_read_data_finish <= '1' and a_read_data_finish and k_read_data_finish and u_0_read_data_finish and sol_list_read_data_finish and flag_read_data_finish;
TRAN_AXILiteS_write_data_finish <= '1' and a_write_data_finish and k_write_data_finish and u_0_write_data_finish and sol_list_write_data_finish;
AESL_ready_reg_proc : process(TRAN_AXILiteS_ready_in, ready_initial) 
begin
    AESL_ready_reg <= TRAN_AXILiteS_ready_in or ready_initial;
end process;
gen_ready_initial_proc : process
begin
    ready_initial <= '0';
    wait until reset = '1';
        wait until clk'event and clk = '1';
    ready_initial <= '1';
    wait until clk'event and clk = '1';
    ready_initial <= '0';
    wait;
end process;

ongoing_process_number_gen : process(reset , process_0_finish , process_1_finish , process_2_finish , process_3_finish , process_4_finish , process_5_finish , process_6_finish , process_7_finish , process_8_finish , process_9_finish , process_10_finish )
begin
    if (reset = '0') then
        ongoing_process_number <= 0;
    elsif (ongoing_process_number = 0 and process_0_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 1 and process_1_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 2 and process_2_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 3 and process_3_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 4 and process_4_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 5 and process_5_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 6 and process_6_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 7 and process_7_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 8 and process_8_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 9 and process_9_finish = '1') then
            ongoing_process_number <= ongoing_process_number + 1;
    elsif (ongoing_process_number = 10 and process_10_finish = '1') then
            ongoing_process_number <= 0;
    end if;
end process;

output_reg_write_value_function : process
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    while (true) loop
        if (ongoing_process_number = 0 ) then
            AWADDR_reg <= process_0_AWADDR_var;
            AWVALID_reg <= process_0_AWVALID_var;
            WVALID_reg <= process_0_WVALID_var;
            WDATA_reg <= process_0_WDATA_var;
            WSTRB_reg <= process_0_WSTRB_var;
            ARADDR_reg <= process_0_ARADDR_var;
            ARVALID_reg <= process_0_ARVALID_var;
            RREADY_reg <= process_0_RREADY_var;
            BREADY_reg <= process_0_BREADY_var;
        elsif (ongoing_process_number = 1 ) then
            AWADDR_reg <= process_1_AWADDR_var;
            AWVALID_reg <= process_1_AWVALID_var;
            WVALID_reg <= process_1_WVALID_var;
            WDATA_reg <= process_1_WDATA_var;
            WSTRB_reg <= process_1_WSTRB_var;
            ARADDR_reg <= process_1_ARADDR_var;
            ARVALID_reg <= process_1_ARVALID_var;
            RREADY_reg <= process_1_RREADY_var;
            BREADY_reg <= process_1_BREADY_var;
        elsif (ongoing_process_number = 2 ) then
            AWADDR_reg <= process_2_AWADDR_var;
            AWVALID_reg <= process_2_AWVALID_var;
            WVALID_reg <= process_2_WVALID_var;
            WDATA_reg <= process_2_WDATA_var;
            WSTRB_reg <= process_2_WSTRB_var;
            ARADDR_reg <= process_2_ARADDR_var;
            ARVALID_reg <= process_2_ARVALID_var;
            RREADY_reg <= process_2_RREADY_var;
            BREADY_reg <= process_2_BREADY_var;
        elsif (ongoing_process_number = 3 ) then
            AWADDR_reg <= process_3_AWADDR_var;
            AWVALID_reg <= process_3_AWVALID_var;
            WVALID_reg <= process_3_WVALID_var;
            WDATA_reg <= process_3_WDATA_var;
            WSTRB_reg <= process_3_WSTRB_var;
            ARADDR_reg <= process_3_ARADDR_var;
            ARVALID_reg <= process_3_ARVALID_var;
            RREADY_reg <= process_3_RREADY_var;
            BREADY_reg <= process_3_BREADY_var;
        elsif (ongoing_process_number = 4 ) then
            AWADDR_reg <= process_4_AWADDR_var;
            AWVALID_reg <= process_4_AWVALID_var;
            WVALID_reg <= process_4_WVALID_var;
            WDATA_reg <= process_4_WDATA_var;
            WSTRB_reg <= process_4_WSTRB_var;
            ARADDR_reg <= process_4_ARADDR_var;
            ARVALID_reg <= process_4_ARVALID_var;
            RREADY_reg <= process_4_RREADY_var;
            BREADY_reg <= process_4_BREADY_var;
        elsif (ongoing_process_number = 5 ) then
            AWADDR_reg <= process_5_AWADDR_var;
            AWVALID_reg <= process_5_AWVALID_var;
            WVALID_reg <= process_5_WVALID_var;
            WDATA_reg <= process_5_WDATA_var;
            WSTRB_reg <= process_5_WSTRB_var;
            ARADDR_reg <= process_5_ARADDR_var;
            ARVALID_reg <= process_5_ARVALID_var;
            RREADY_reg <= process_5_RREADY_var;
            BREADY_reg <= process_5_BREADY_var;
        elsif (ongoing_process_number = 6 ) then
            AWADDR_reg <= process_6_AWADDR_var;
            AWVALID_reg <= process_6_AWVALID_var;
            WVALID_reg <= process_6_WVALID_var;
            WDATA_reg <= process_6_WDATA_var;
            WSTRB_reg <= process_6_WSTRB_var;
            ARADDR_reg <= process_6_ARADDR_var;
            ARVALID_reg <= process_6_ARVALID_var;
            RREADY_reg <= process_6_RREADY_var;
            BREADY_reg <= process_6_BREADY_var;
        elsif (ongoing_process_number = 7 ) then
            AWADDR_reg <= process_7_AWADDR_var;
            AWVALID_reg <= process_7_AWVALID_var;
            WVALID_reg <= process_7_WVALID_var;
            WDATA_reg <= process_7_WDATA_var;
            WSTRB_reg <= process_7_WSTRB_var;
            ARADDR_reg <= process_7_ARADDR_var;
            ARVALID_reg <= process_7_ARVALID_var;
            RREADY_reg <= process_7_RREADY_var;
            BREADY_reg <= process_7_BREADY_var;
        elsif (ongoing_process_number = 8 ) then
            AWADDR_reg <= process_8_AWADDR_var;
            AWVALID_reg <= process_8_AWVALID_var;
            WVALID_reg <= process_8_WVALID_var;
            WDATA_reg <= process_8_WDATA_var;
            WSTRB_reg <= process_8_WSTRB_var;
            ARADDR_reg <= process_8_ARADDR_var;
            ARVALID_reg <= process_8_ARVALID_var;
            RREADY_reg <= process_8_RREADY_var;
            BREADY_reg <= process_8_BREADY_var;
        elsif (ongoing_process_number = 9 ) then
            AWADDR_reg <= process_9_AWADDR_var;
            AWVALID_reg <= process_9_AWVALID_var;
            WVALID_reg <= process_9_WVALID_var;
            WDATA_reg <= process_9_WDATA_var;
            WSTRB_reg <= process_9_WSTRB_var;
            ARADDR_reg <= process_9_ARADDR_var;
            ARVALID_reg <= process_9_ARVALID_var;
            RREADY_reg <= process_9_RREADY_var;
            BREADY_reg <= process_9_BREADY_var;
        elsif (ongoing_process_number = 10 ) then
            AWADDR_reg <= process_10_AWADDR_var;
            AWVALID_reg <= process_10_AWVALID_var;
            WVALID_reg <= process_10_WVALID_var;
            WDATA_reg <= process_10_WDATA_var;
            WSTRB_reg <= process_10_WSTRB_var;
            ARADDR_reg <= process_10_ARADDR_var;
            ARVALID_reg <= process_10_ARVALID_var;
            RREADY_reg <= process_10_RREADY_var;
            BREADY_reg <= process_10_BREADY_var;
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
update_status_proc : process
    variable process_num : INTEGER;
    variable read_status_resp : INTEGER;
    variable process_0_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    process_num := 0;
    while (true) loop
        process_0_finish <= '0';
        AESL_done_index_reg         <= '0';
        AESL_ready_out_index_reg        <= '0';
        if (ongoing_process_number = process_num and process_busy = '0') then
            process_busy := '1';
--=======================one single read operate======================
                read_status_resp := 0;
                process_0_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(STATUS_ADDR, ADDR_WIDTH));
                process_0_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_0_ARVALID_var <= '0';
                process_0_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_0_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_0_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_status_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                AESL_done_index_reg         <= process_0_RDATA_tmp(1);
                AESL_ready_out_index_reg        <= process_0_RDATA_tmp(1);
                AESL_idle_index_reg         <= process_0_RDATA_tmp(2);
            process_busy := '0';
            process_0_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_write_a_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        a_write_data_finish <= '0';
        write_a_run_flag <= '0'; 
        write_a_count := 0;
        count_operate_depth_by_bitwidth_and_depth (a_c_bitwidth, a_DEPTH, a_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            a_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_a_run_flag <= '1'; 
            write_a_count := 0;
        end if;
        if (write_one_a_data_done = '1') then
            write_a_count := write_a_count + 1;
            if (write_a_count = a_OPERATE_DEPTH) then
                write_a_run_flag <= '0'; 
                a_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_a_proc : process
    variable write_a_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_1_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable a_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := a_c_bitwidth;
    process_num := 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_1_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_a_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write a data 
                for i in 0 to four_byte_num - 1 loop
                    if (a_c_bitwidth < 32) then
                        a_data_tmp_reg := mem_a(write_a_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < a_c_bitwidth) then
                                a_data_tmp_reg(j) := mem_a(write_a_count)(i*32 + j);
                            else 
                                a_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_a_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_1_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(a_data_in_addr + write_a_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_1_AWVALID_var <= '1';
                process_1_WDATA_var   <= a_data_tmp_reg;
                process_1_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_1_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_1_AWVALID_var <= not aw_flag;
                    process_1_WVALID_var <= not w_flag;
                end loop;

                process_1_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_1_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_a_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_a_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_a_data_done <= '0';
            end if;
            process_1_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_k_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        k_write_data_finish <= '0';
        write_k_run_flag <= '0'; 
        write_k_count := 0;
        count_operate_depth_by_bitwidth_and_depth (k_c_bitwidth, k_DEPTH, k_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            k_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_k_run_flag <= '1'; 
            write_k_count := 0;
        end if;
        if (write_one_k_data_done = '1') then
            write_k_count := write_k_count + 1;
            if (write_k_count = k_OPERATE_DEPTH) then
                write_k_run_flag <= '0'; 
                k_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_k_proc : process
    variable write_k_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_2_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable k_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := k_c_bitwidth;
    process_num := 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_2_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_k_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write k data 
                for i in 0 to four_byte_num - 1 loop
                    if (k_c_bitwidth < 32) then
                        k_data_tmp_reg := mem_k(write_k_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < k_c_bitwidth) then
                                k_data_tmp_reg(j) := mem_k(write_k_count)(i*32 + j);
                            else 
                                k_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_k_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_2_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(k_data_in_addr + write_k_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_2_AWVALID_var <= '1';
                process_2_WDATA_var   <= k_data_tmp_reg;
                process_2_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_2_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_2_AWVALID_var <= not aw_flag;
                    process_2_WVALID_var <= not w_flag;
                end loop;

                process_2_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_2_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_k_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_k_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_k_data_done <= '0';
            end if;
            process_2_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_u_0_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        u_0_write_data_finish <= '0';
        write_u_0_run_flag <= '0'; 
        write_u_0_count := 0;
        count_operate_depth_by_bitwidth_and_depth (u_0_c_bitwidth, u_0_DEPTH, u_0_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            u_0_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_u_0_run_flag <= '1'; 
            write_u_0_count := 0;
        end if;
        if (write_one_u_0_data_done = '1') then
            write_u_0_count := write_u_0_count + 1;
            if (write_u_0_count = u_0_OPERATE_DEPTH) then
                write_u_0_run_flag <= '0'; 
                u_0_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_u_0_proc : process
    variable write_u_0_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_3_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable u_0_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := u_0_c_bitwidth;
    process_num := 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_3_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_u_0_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write u_0 data 
                for i in 0 to four_byte_num - 1 loop
                    if (u_0_c_bitwidth < 32) then
                        u_0_data_tmp_reg := mem_u_0(write_u_0_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < u_0_c_bitwidth) then
                                u_0_data_tmp_reg(j) := mem_u_0(write_u_0_count)(i*32 + j);
                            else 
                                u_0_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_u_0_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_3_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(u_0_data_in_addr + write_u_0_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_3_AWVALID_var <= '1';
                process_3_WDATA_var   <= u_0_data_tmp_reg;
                process_3_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_3_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_3_AWVALID_var <= not aw_flag;
                    process_3_WVALID_var <= not w_flag;
                end loop;

                process_3_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_3_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_u_0_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_u_0_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_u_0_data_done <= '0';
            end if;
            process_3_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;
gen_write_sol_list_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        sol_list_write_data_finish <= '0';
        write_sol_list_run_flag <= '0'; 
        write_sol_list_count := 0;
        count_operate_depth_by_bitwidth_and_depth (sol_list_c_bitwidth, sol_list_DEPTH, sol_list_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            sol_list_write_data_finish <= '0';
        end if;
        if (AESL_ready_reg = '1') then
            write_sol_list_run_flag <= '1'; 
            write_sol_list_count := 0;
        end if;
        if (write_one_sol_list_data_done = '1') then
            write_sol_list_count := write_sol_list_count + 1;
            if (write_sol_list_count = sol_list_OPERATE_DEPTH) then
                write_sol_list_run_flag <= '0'; 
                sol_list_write_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

write_sol_list_proc : process
    variable write_sol_list_resp : INTEGER;
    variable process_num  : INTEGER;
    variable get_ack : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable i : INTEGER;
    variable j : INTEGER;
    variable process_4_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
    variable sol_list_data_tmp_reg : STD_LOGIC_VECTOR(31 downto 0);
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := sol_list_c_bitwidth;
    process_num := 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_4_finish <= '0';

        if (ongoing_process_number = process_num and process_busy = '0' ) then
            get_ack := 1;
            if (write_sol_list_run_flag = '1' and get_ack = 1) then
                process_busy := '1';
                -- write sol_list data 
                for i in 0 to four_byte_num - 1 loop
                    if (sol_list_c_bitwidth < 32) then
                        sol_list_data_tmp_reg := mem_sol_list(write_sol_list_count);
                    else 
                        for j in 0 to 31 loop
                            if (i*32 + j < sol_list_c_bitwidth) then
                                sol_list_data_tmp_reg(j) := mem_sol_list(write_sol_list_count)(i*32 + j);
                            else 
                                sol_list_data_tmp_reg(j) := '0';
                            end if;
                        end loop;
                    end if;
--=======================one single write operate======================
                write_sol_list_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_4_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(sol_list_data_in_addr + write_sol_list_count * four_byte_num * 4 + i * 4, ADDR_WIDTH));
                process_4_AWVALID_var <= '1';
                process_4_WDATA_var   <= sol_list_data_tmp_reg;
                process_4_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_4_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_4_AWVALID_var <= not aw_flag;
                    process_4_WVALID_var <= not w_flag;
                end loop;

                process_4_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_4_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_sol_list_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                end loop;
                process_busy := '0';
                write_one_sol_list_data_done <= '1';
                wait until clk'event and clk = '1';
                write_one_sol_list_data_done <= '0';
            end if;
            process_4_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_write_start_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        write_start_run_flag <= '0'; 
        write_start_count := 0;
    elsif (clk'event and clk = '1') then
        if (write_start_count >= 93) then
            write_start_run_flag <= '0'; 
        elsif (TRAN_AXILiteS_write_start_in = '1') then
            write_start_run_flag <= '1'; 
        end if;
        if (AESL_write_start_finish = '1') then
            write_start_count := write_start_count + 1;
            write_start_run_flag <= '0'; 
        end if;
    end if;
end process;

write_start_proc : process
    variable process_num : INTEGER;
    variable write_start_resp : INTEGER;
    variable write_start_tmp : STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0) ;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 );
    variable i : INTEGER;
begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    process_num := 5;
    while (true) loop
        process_5_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (write_start_run_flag = '1') then
                process_busy := '1';
                write_start_tmp := (others => '0');
                write_start_tmp(0) := '1';
--=======================one single write operate======================
                write_start_resp := 0;
                aw_flag := '0';
                w_flag := '0';
                process_5_AWADDR_var <= STD_LOGIC_VECTOR(to_unsigned(START_ADDR, ADDR_WIDTH));
                process_5_AWVALID_var <= '1';
                process_5_WDATA_var   <= write_start_tmp;
                process_5_WVALID_var  <= '1';
                for i in 0 to DATA_WIDTH/8 - 1 loop
                    wstrb_tmp(i) := '1';
                end loop;
                process_5_WSTRB_var <= wstrb_tmp;
                while (aw_flag = '0' or w_flag = '0') loop
                    wait until clk'event and clk = '1';
                    if (aw_flag /= '1') then
                        aw_flag := TRAN_s_axi_AXILiteS_AWREADY and AWVALID_reg;
                    end if;
                    if (w_flag /= '1') then
                        w_flag := TRAN_s_axi_AXILiteS_WREADY and WVALID_reg;
                    end if;
                    process_5_AWVALID_var <= not aw_flag;
                    process_5_WVALID_var <= not w_flag;
                end loop;

                process_5_BREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_BVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_5_BREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_BRESP = (2 => '0')) then
                    write_start_resp := 1;
                    --input success. in fact BRESP is always 2'b00
                end if;
--=======================one single write operate======================

                process_busy := '0';
                AESL_write_start_finish <= '1';
                wait until clk'event and clk = '1';
                AESL_write_start_finish <= '0';
            end if;
            process_5_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
    wait;
end process;

gen_read_a_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        a_read_data_finish <= '0';
        read_a_run_flag <= '0'; 
        read_a_count := 0;
    elsif (clk'event and clk = '1') then
        if (AESL_done_index_reg = '1') then
            read_a_run_flag <= '1'; 
        end if;
        if (TRAN_AXILiteS_transaction_done_in = '1') then
            a_read_data_finish <= '0';
            read_a_count := 0; 
        end if;
        if (read_one_a_data_done = '1') then
            read_a_count := read_a_count + 1;
            if (read_a_count = a_OPERATE_DEPTH) then
                read_a_run_flag <= '0'; 
                a_read_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

read_a_proc : process
    variable read_a_resp : INTEGER;
    variable process_num : INTEGER;
    variable get_vld : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable process_6_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
    variable i : INTEGER;
    variable j : INTEGER;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 ) := (others => '0');

begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := a_c_bitwidth;
    process_num := 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_6_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (read_a_run_flag = '1') then
                process_busy := '1';
                get_vld := 1;
                if (get_vld = 1) then
                    --read a data 
                    for i in 0 to four_byte_num - 1 loop
--=======================one single read operate======================
                read_a_resp := 0;
                process_6_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(a_data_out_addr + read_a_count * four_byte_num * 4 + 4*i, ADDR_WIDTH));
                process_6_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_6_ARVALID_var <= '0';
                process_6_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_6_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_6_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_a_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                        if (a_c_bitwidth < 32) then
                            mem_a(read_a_count) := process_6_RDATA_tmp;
                        else
                            for j in 0 to 32 - 1 loop
                                if (i*32 + j < a_c_bitwidth) then
                                    mem_a(read_a_count)(i*32 + j) := process_6_RDATA_tmp(j);
                                end if;
                            end loop;
                        end if;
                    end loop;
                    
                    read_one_a_data_done <= '1';
                    wait until clk'event and clk = '1';
                    read_one_a_data_done <= '0';
                end if;
                process_busy := '0';
            end if;
            process_6_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
end process;
gen_read_k_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        k_read_data_finish <= '0';
        read_k_run_flag <= '0'; 
        read_k_count := 0;
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            read_k_run_flag <= '1'; 
        end if;
        if (TRAN_AXILiteS_transaction_done_in = '1') then
            k_read_data_finish <= '0';
            read_k_count := 0; 
        end if;
        if (read_one_k_data_done = '1') then
            read_k_count := read_k_count + 1;
            if (read_k_count = k_OPERATE_DEPTH) then
                read_k_run_flag <= '0'; 
                k_read_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

read_k_proc : process
    variable read_k_resp : INTEGER;
    variable process_num : INTEGER;
    variable get_vld : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable process_7_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
    variable i : INTEGER;
    variable j : INTEGER;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 ) := (others => '0');

begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := k_c_bitwidth;
    process_num := 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_7_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (read_k_run_flag = '1') then
                process_busy := '1';
                get_vld := 0;
                -- read k vld
--=======================one single read operate======================
                read_k_resp := 0;
                process_7_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(k_valid_out_addr, ADDR_WIDTH));
                process_7_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_7_ARVALID_var <= '0';
                process_7_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_7_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_7_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_k_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                if (process_7_RDATA_tmp(0) = '1') then
                    get_vld := 1;
                end if;
                if (get_vld = 1) then
                    --read k data 
                    for i in 0 to four_byte_num - 1 loop
--=======================one single read operate======================
                read_k_resp := 0;
                process_7_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(k_data_out_addr + read_k_count * four_byte_num * 4 + 4*i, ADDR_WIDTH));
                process_7_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_7_ARVALID_var <= '0';
                process_7_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_7_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_7_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_k_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                        if (k_c_bitwidth < 32) then
                            mem_k(read_k_count) := process_7_RDATA_tmp;
                        else
                            for j in 0 to 32 - 1 loop
                                if (i*32 + j < k_c_bitwidth) then
                                    mem_k(read_k_count)(i*32 + j) := process_7_RDATA_tmp(j);
                                end if;
                            end loop;
                        end if;
                    end loop;
                    
                    read_one_k_data_done <= '1';
                    wait until clk'event and clk = '1';
                    read_one_k_data_done <= '0';
                end if;
                process_busy := '0';
            end if;
            process_7_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
end process;
gen_read_u_0_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        u_0_read_data_finish <= '0';
        read_u_0_run_flag <= '0'; 
        read_u_0_count := 0;
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            read_u_0_run_flag <= '1'; 
        end if;
        if (TRAN_AXILiteS_transaction_done_in = '1') then
            u_0_read_data_finish <= '0';
            read_u_0_count := 0; 
        end if;
        if (read_one_u_0_data_done = '1') then
            read_u_0_count := read_u_0_count + 1;
            if (read_u_0_count = u_0_OPERATE_DEPTH) then
                read_u_0_run_flag <= '0'; 
                u_0_read_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

read_u_0_proc : process
    variable read_u_0_resp : INTEGER;
    variable process_num : INTEGER;
    variable get_vld : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable process_8_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
    variable i : INTEGER;
    variable j : INTEGER;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 ) := (others => '0');

begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := u_0_c_bitwidth;
    process_num := 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_8_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (read_u_0_run_flag = '1') then
                process_busy := '1';
                get_vld := 0;
                -- read u_0 vld
--=======================one single read operate======================
                read_u_0_resp := 0;
                process_8_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(u_0_valid_out_addr, ADDR_WIDTH));
                process_8_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_8_ARVALID_var <= '0';
                process_8_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_8_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_8_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_u_0_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                if (process_8_RDATA_tmp(0) = '1') then
                    get_vld := 1;
                end if;
                if (get_vld = 1) then
                    --read u_0 data 
                    for i in 0 to four_byte_num - 1 loop
--=======================one single read operate======================
                read_u_0_resp := 0;
                process_8_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(u_0_data_out_addr + read_u_0_count * four_byte_num * 4 + 4*i, ADDR_WIDTH));
                process_8_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_8_ARVALID_var <= '0';
                process_8_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_8_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_8_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_u_0_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                        if (u_0_c_bitwidth < 32) then
                            mem_u_0(read_u_0_count) := process_8_RDATA_tmp;
                        else
                            for j in 0 to 32 - 1 loop
                                if (i*32 + j < u_0_c_bitwidth) then
                                    mem_u_0(read_u_0_count)(i*32 + j) := process_8_RDATA_tmp(j);
                                end if;
                            end loop;
                        end if;
                    end loop;
                    
                    read_one_u_0_data_done <= '1';
                    wait until clk'event and clk = '1';
                    read_one_u_0_data_done <= '0';
                end if;
                process_busy := '0';
            end if;
            process_8_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
end process;
gen_read_sol_list_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        sol_list_read_data_finish <= '0';
        read_sol_list_run_flag <= '0'; 
        read_sol_list_count := 0;
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            read_sol_list_run_flag <= '1'; 
        end if;
        if (TRAN_AXILiteS_transaction_done_in = '1') then
            sol_list_read_data_finish <= '0';
            read_sol_list_count := 0; 
        end if;
        if (read_one_sol_list_data_done = '1') then
            read_sol_list_count := read_sol_list_count + 1;
            if (read_sol_list_count = sol_list_OPERATE_DEPTH) then
                read_sol_list_run_flag <= '0'; 
                sol_list_read_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

read_sol_list_proc : process
    variable read_sol_list_resp : INTEGER;
    variable process_num : INTEGER;
    variable get_vld : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable process_9_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
    variable i : INTEGER;
    variable j : INTEGER;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 ) := (others => '0');

begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := sol_list_c_bitwidth;
    process_num := 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_9_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (read_sol_list_run_flag = '1') then
                process_busy := '1';
                get_vld := 0;
                -- read sol_list vld
--=======================one single read operate======================
                read_sol_list_resp := 0;
                process_9_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(sol_list_valid_out_addr, ADDR_WIDTH));
                process_9_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_9_ARVALID_var <= '0';
                process_9_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_9_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_9_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_sol_list_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                if (process_9_RDATA_tmp(0) = '1') then
                    get_vld := 1;
                end if;
                if (get_vld = 1) then
                    --read sol_list data 
                    for i in 0 to four_byte_num - 1 loop
--=======================one single read operate======================
                read_sol_list_resp := 0;
                process_9_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(sol_list_data_out_addr + read_sol_list_count * four_byte_num * 4 + 4*i, ADDR_WIDTH));
                process_9_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_9_ARVALID_var <= '0';
                process_9_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_9_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_9_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_sol_list_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                        if (sol_list_c_bitwidth < 32) then
                            mem_sol_list(read_sol_list_count) := process_9_RDATA_tmp;
                        else
                            for j in 0 to 32 - 1 loop
                                if (i*32 + j < sol_list_c_bitwidth) then
                                    mem_sol_list(read_sol_list_count)(i*32 + j) := process_9_RDATA_tmp(j);
                                end if;
                            end loop;
                        end if;
                    end loop;
                    
                    read_one_sol_list_data_done <= '1';
                    wait until clk'event and clk = '1';
                    read_one_sol_list_data_done <= '0';
                end if;
                process_busy := '0';
            end if;
            process_9_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
end process;
gen_read_flag_run_flag : process (reset , clk)
begin
    if (reset = '0') then
        flag_read_data_finish <= '0';
        read_flag_run_flag <= '0'; 
        read_flag_count := 0;
        count_operate_depth_by_bitwidth_and_depth (flag_c_bitwidth, flag_DEPTH, flag_OPERATE_DEPTH);
    elsif (clk'event and clk = '1') then
        if (TRAN_AXILiteS_start_in = '1') then
            read_flag_run_flag <= '1'; 
        end if;
        if (TRAN_AXILiteS_transaction_done_in = '1') then
            flag_read_data_finish <= '0';
            read_flag_count := 0; 
        end if;
        if (read_one_flag_data_done = '1') then
            read_flag_count := read_flag_count + 1;
            if (read_flag_count = flag_OPERATE_DEPTH) then
                read_flag_run_flag <= '0'; 
                flag_read_data_finish <= '1';
            end if;
        end if;
    end if;
end process;

read_flag_proc : process
    variable read_flag_resp : INTEGER;
    variable process_num : INTEGER;
    variable get_vld : INTEGER;
    variable four_byte_num : INTEGER;
    variable c_bitwidth : INTEGER;
    variable process_10_RDATA_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0');
    variable i : INTEGER;
    variable j : INTEGER;
    variable aw_flag : STD_LOGIC;
    variable w_flag : STD_LOGIC;
    variable wstrb_tmp : STD_LOGIC_VECTOR(DATA_WIDTH/8 - 1 downto 0 ) := (others => '0');

begin
    wait until reset = '1';
        wait until clk'event and clk = '1';
    c_bitwidth := flag_c_bitwidth;
    process_num := 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (true) loop
        process_10_finish <= '0';
        if (ongoing_process_number = process_num and process_busy = '0' ) then
            if (read_flag_run_flag = '1') then
                process_busy := '1';
                get_vld := 0;
                -- read flag vld
--=======================one single read operate======================
                read_flag_resp := 0;
                process_10_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(flag_valid_out_addr, ADDR_WIDTH));
                process_10_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_10_ARVALID_var <= '0';
                process_10_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_10_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_10_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_flag_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                if (process_10_RDATA_tmp(0) = '1') then
                    get_vld := 1;
                end if;
                if (get_vld = 1) then
                    --read flag data 
                    for i in 0 to four_byte_num - 1 loop
--=======================one single read operate======================
                read_flag_resp := 0;
                process_10_ARADDR_var <= STD_LOGIC_VECTOR(to_unsigned(flag_data_out_addr + read_flag_count * four_byte_num * 4 + 4*i, ADDR_WIDTH));
                process_10_ARVALID_var <= '1';
                while (TRAN_s_axi_AXILiteS_ARREADY /= '1') loop
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_10_ARVALID_var <= '0';
                process_10_RREADY_var <= '1';
                while (TRAN_s_axi_AXILiteS_RVALID /= '1') loop
                    --wait for response 
                    wait until clk'event and clk = '1';
                end loop;
                wait until clk'event and clk = '1';
                process_10_RDATA_tmp := TRAN_s_axi_AXILiteS_RDATA;
                process_10_RREADY_var <= '0';
                if (TRAN_s_axi_AXILiteS_RRESP = (2 => '0') ) then
                    read_flag_resp := 1;
                    --output success. in fact RRESP is always 2'b00
                end if;
                wait until clk'event and clk = '1';

--=======================one single read operate end======================

                        if (flag_c_bitwidth < 32) then
                            mem_flag(read_flag_count) := process_10_RDATA_tmp;
                        else
                            for j in 0 to 32 - 1 loop
                                if (i*32 + j < flag_c_bitwidth) then
                                    mem_flag(read_flag_count)(i*32 + j) := process_10_RDATA_tmp(j);
                                end if;
                            end loop;
                        end if;
                    end loop;
                    
                    read_one_flag_data_done <= '1';
                    wait until clk'event and clk = '1';
                    read_one_flag_data_done <= '0';
                end if;
                process_busy := '0';
            end if;
            process_10_finish <= '1';
        end if;
        wait until clk'event and clk = '1';
    end loop;
end process;
--------------------------Read file------------------------ 
 
-- Read data from file 
read_a_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(a_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (a_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_a , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_a & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to a_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, a_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to a_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_a(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to a_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_a(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (a_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to a_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_a(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_a(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_a(a_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_a(a_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Write file----------------------- 
 
-- Write data to file 
 
write_a_file_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
  variable    transaction_idx :   INTEGER;
  variable    i               :   INTEGER; 
  variable    mem_tmp : STD_LOGIC_VECTOR(a_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    factor : INTEGER; 
  variable    remain : INTEGER; 
  variable    mem_page : INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (a_c_bitwidth , factor);
  while(true) loop
      wait until clk'event and clk = '1';
      while (a_read_data_finish /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
      wait for 0.1 ns;
      file_open(fstatus, fp, TV_OUT_a, APPEND_MODE);
      if(fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_OUT_a & " failed!!!" severity failure;
      end if;
      write(token_line, "[[transaction]]    " & integer'image(transaction_idx));
      writeline(fp, token_line);
      for i in 0 to (a_DEPTH - a_DEPTH mod factor) - 1 loop
          remain := i mod factor;
          if (factor = 4) then
              if (remain = 0) then
                  mem_tmp := mem_a(i/factor)(7 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_a(i/factor)(15 downto 8);
              elsif (remain = 2) then
                  mem_tmp := mem_a(i/factor)(23 downto 16);
              elsif (remain = 3) then
                  mem_tmp := mem_a(i/factor)(31 downto 24);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 2) then
              if (remain = 0) then
                  mem_tmp := mem_a(i/factor)(15 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_a(i/factor)(31 downto 16);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_a(i)));
              writeline(fp, token_line);
          end if;
      end loop;
      remain := (a_DEPTH - 1) mod factor;
      if (factor = 4) then
          if (remain = 2) then
              write(token_line, "0x" & esl_conv_string_hex(mem_a(a_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_a(a_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_a(a_DEPTH/factor)(23 downto 16)));
              writeline(fp, token_line);
          elsif (remain = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_a(a_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_a(a_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
          elsif (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_a(a_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
          end if;
      elsif (factor = 2) then
          if (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_a(a_DEPTH/factor)(15 downto 0)));
              writeline(fp, token_line);
          end if;
      end if;
      write(token_line, string'("[[/transaction]]"));
      writeline(fp, token_line);
      transaction_idx := transaction_idx + 1;
      file_close(fp);
      while (TRAN_AXILiteS_start_in /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
  end loop;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_k_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(k_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (k_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_k , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_k & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to k_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, k_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to k_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_k(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to k_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_k(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (k_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to k_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_k(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_k(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_k(k_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_k(k_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Write file----------------------- 
 
-- Write data to file 
 
write_k_file_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
  variable    transaction_idx :   INTEGER;
  variable    i               :   INTEGER; 
  variable    mem_tmp : STD_LOGIC_VECTOR(k_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    factor : INTEGER; 
  variable    remain : INTEGER; 
  variable    mem_page : INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (k_c_bitwidth , factor);
  while(true) loop
      wait until clk'event and clk = '1';
      while (k_read_data_finish /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
      wait for 0.1 ns;
      file_open(fstatus, fp, TV_OUT_k, APPEND_MODE);
      if(fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_OUT_k & " failed!!!" severity failure;
      end if;
      write(token_line, "[[transaction]]    " & integer'image(transaction_idx));
      writeline(fp, token_line);
      for i in 0 to (k_DEPTH - k_DEPTH mod factor) - 1 loop
          remain := i mod factor;
          if (factor = 4) then
              if (remain = 0) then
                  mem_tmp := mem_k(i/factor)(7 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_k(i/factor)(15 downto 8);
              elsif (remain = 2) then
                  mem_tmp := mem_k(i/factor)(23 downto 16);
              elsif (remain = 3) then
                  mem_tmp := mem_k(i/factor)(31 downto 24);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 2) then
              if (remain = 0) then
                  mem_tmp := mem_k(i/factor)(15 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_k(i/factor)(31 downto 16);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_k(i)));
              writeline(fp, token_line);
          end if;
      end loop;
      remain := (k_DEPTH - 1) mod factor;
      if (factor = 4) then
          if (remain = 2) then
              write(token_line, "0x" & esl_conv_string_hex(mem_k(k_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_k(k_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_k(k_DEPTH/factor)(23 downto 16)));
              writeline(fp, token_line);
          elsif (remain = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_k(k_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_k(k_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
          elsif (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_k(k_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
          end if;
      elsif (factor = 2) then
          if (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_k(k_DEPTH/factor)(15 downto 0)));
              writeline(fp, token_line);
          end if;
      end if;
      write(token_line, string'("[[/transaction]]"));
      writeline(fp, token_line);
      transaction_idx := transaction_idx + 1;
      file_close(fp);
      while (TRAN_AXILiteS_start_in /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
  end loop;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_u_0_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(u_0_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (u_0_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_u_0 , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_u_0 & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to u_0_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, u_0_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to u_0_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_u_0(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to u_0_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_u_0(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (u_0_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to u_0_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_u_0(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_u_0(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_u_0(u_0_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_u_0(u_0_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Write file----------------------- 
 
-- Write data to file 
 
write_u_0_file_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
  variable    transaction_idx :   INTEGER;
  variable    i               :   INTEGER; 
  variable    mem_tmp : STD_LOGIC_VECTOR(u_0_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    factor : INTEGER; 
  variable    remain : INTEGER; 
  variable    mem_page : INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (u_0_c_bitwidth , factor);
  while(true) loop
      wait until clk'event and clk = '1';
      while (u_0_read_data_finish /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
      wait for 0.1 ns;
      file_open(fstatus, fp, TV_OUT_u_0, APPEND_MODE);
      if(fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_OUT_u_0 & " failed!!!" severity failure;
      end if;
      write(token_line, "[[transaction]]    " & integer'image(transaction_idx));
      writeline(fp, token_line);
      for i in 0 to (u_0_DEPTH - u_0_DEPTH mod factor) - 1 loop
          remain := i mod factor;
          if (factor = 4) then
              if (remain = 0) then
                  mem_tmp := mem_u_0(i/factor)(7 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_u_0(i/factor)(15 downto 8);
              elsif (remain = 2) then
                  mem_tmp := mem_u_0(i/factor)(23 downto 16);
              elsif (remain = 3) then
                  mem_tmp := mem_u_0(i/factor)(31 downto 24);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 2) then
              if (remain = 0) then
                  mem_tmp := mem_u_0(i/factor)(15 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_u_0(i/factor)(31 downto 16);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(i)));
              writeline(fp, token_line);
          end if;
      end loop;
      remain := (u_0_DEPTH - 1) mod factor;
      if (factor = 4) then
          if (remain = 2) then
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(u_0_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(u_0_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(u_0_DEPTH/factor)(23 downto 16)));
              writeline(fp, token_line);
          elsif (remain = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(u_0_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(u_0_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
          elsif (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(u_0_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
          end if;
      elsif (factor = 2) then
          if (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_u_0(u_0_DEPTH/factor)(15 downto 0)));
              writeline(fp, token_line);
          end if;
      end if;
      write(token_line, string'("[[/transaction]]"));
      writeline(fp, token_line);
      transaction_idx := transaction_idx + 1;
      file_close(fp);
      while (TRAN_AXILiteS_start_in /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
  end loop;
end process;
 
--------------------------Read file------------------------ 
 
-- Read data from file 
read_sol_list_file_process : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 128);
  variable    token_tmp : STD_LOGIC_VECTOR(sol_list_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    mem_tmp : STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_8 : STD_LOGIC_VECTOR(8 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_16 : STD_LOGIC_VECTOR(16 - 1 downto 0) := (others => '0'); 
  variable    mem_tmp_32 : STD_LOGIC_VECTOR(32 - 1 downto 0) := (others => '0'); 
  variable    transaction_idx : INTEGER; 
  variable    i : INTEGER; 
  variable    j : INTEGER; 
  variable    factor : INTEGER; 
  variable    remain  :   INTEGER; 
  variable    read_counter :   INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (sol_list_c_bitwidth , factor);
  file_open(fstatus, fp, TV_IN_sol_list , READ_MODE);
  if(fstatus /= OPEN_OK) then
      assert false report "Open file " & TV_IN_sol_list & " failed!!!" severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  if(token(1 to 13) /= "[[[runtime]]]") then
      assert false report "ERROR: Simulation using HLS TB failed." severity failure;
  end if;
  esl_read_token(fp, token_line, token);
  while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
      wait until clk'event and clk = '1';
      wait for 0.2 ns;
      while(AESL_ready_reg /= '1') loop
          wait until clk'event and clk = '1';
          wait for 0.2 ns;
      end loop;
      read_counter := 0;
      for i in 0 to sol_list_DEPTH - 1 loop
          read_counter := read_counter + 1;
          esl_read_token(fp, token_line, token);
          token_tmp := esl_str2lv_hex(token, sol_list_c_bitwidth);
          remain := i mod factor;
          if (factor = 4) then
              mem_tmp_8 (7 downto 0) := (others => '0');
              for j in 0 to sol_list_c_bitwidth - 1 loop
                  mem_tmp_8 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (7 downto 0) := mem_tmp_8;
              elsif (remain = 1) then
                  mem_tmp (15 downto 8) := mem_tmp_8;
              elsif (remain = 2) then
                  mem_tmp (23 downto 16) := mem_tmp_8;
              elsif (remain = 3) then
                  mem_tmp (31 downto 24) := mem_tmp_8;
                  mem_sol_list(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 2) then
              mem_tmp_16 (15 downto 0) := (others => '0');
              for j in 0 to sol_list_c_bitwidth - 1 loop
                  mem_tmp_16 (j downto j) := token_tmp (j downto j);
              end loop;
              if (remain = 0) then
                  mem_tmp (15 downto 0) := mem_tmp_16;
              elsif (remain = 1) then
                  mem_tmp (31 downto 16) := mem_tmp_16;
                  mem_sol_list(i/factor)(31 downto 0) := mem_tmp;
                  mem_tmp (DATA_WIDTH - 1 downto 0) := (others => '0');
              end if;
          elsif (factor = 1) then
              if (sol_list_c_bitwidth < 32) then
                  mem_tmp_32 (31 downto 0) := (others => '0');
                  for j in 0 to sol_list_c_bitwidth - 1 loop
                      mem_tmp_32 (j downto j) := token_tmp (j downto j);
                  end loop;
                  mem_sol_list(i)(31 downto 0) := mem_tmp_32;
              else
                  mem_sol_list(i) := token_tmp;
              end if;
          end if;
      end loop;
      remain := read_counter mod factor;
      if (factor = 4) then
          if (remain /= 0) then
              mem_sol_list(sol_list_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      elsif (factor = 2) then
          if (remain /= 0) then
              mem_sol_list(sol_list_DEPTH/factor)(31 downto 0) := mem_tmp;
          end if;
      end if;
      esl_read_token(fp, token_line, token);
      if(token(1 to 16) /= "[[/transaction]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      transaction_idx := transaction_idx + 1; 
  end loop;
  file_close(fp);
end process;
 
--------------------------Write file----------------------- 
 
-- Write data to file 
 
write_sol_list_file_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
  variable    transaction_idx :   INTEGER;
  variable    i               :   INTEGER; 
  variable    mem_tmp : STD_LOGIC_VECTOR(sol_list_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    factor : INTEGER; 
  variable    remain : INTEGER; 
  variable    mem_page : INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (sol_list_c_bitwidth , factor);
  while(true) loop
      wait until clk'event and clk = '1';
      while (sol_list_read_data_finish /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
      wait for 0.1 ns;
      file_open(fstatus, fp, TV_OUT_sol_list, APPEND_MODE);
      if(fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_OUT_sol_list & " failed!!!" severity failure;
      end if;
      write(token_line, "[[transaction]]    " & integer'image(transaction_idx));
      writeline(fp, token_line);
      for i in 0 to (sol_list_DEPTH - sol_list_DEPTH mod factor) - 1 loop
          remain := i mod factor;
          if (factor = 4) then
              if (remain = 0) then
                  mem_tmp := mem_sol_list(i/factor)(7 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_sol_list(i/factor)(15 downto 8);
              elsif (remain = 2) then
                  mem_tmp := mem_sol_list(i/factor)(23 downto 16);
              elsif (remain = 3) then
                  mem_tmp := mem_sol_list(i/factor)(31 downto 24);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 2) then
              if (remain = 0) then
                  mem_tmp := mem_sol_list(i/factor)(15 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_sol_list(i/factor)(31 downto 16);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(i)));
              writeline(fp, token_line);
          end if;
      end loop;
      remain := (sol_list_DEPTH - 1) mod factor;
      if (factor = 4) then
          if (remain = 2) then
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(sol_list_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(sol_list_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(sol_list_DEPTH/factor)(23 downto 16)));
              writeline(fp, token_line);
          elsif (remain = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(sol_list_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(sol_list_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
          elsif (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(sol_list_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
          end if;
      elsif (factor = 2) then
          if (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_sol_list(sol_list_DEPTH/factor)(15 downto 0)));
              writeline(fp, token_line);
          end if;
      end if;
      write(token_line, string'("[[/transaction]]"));
      writeline(fp, token_line);
      transaction_idx := transaction_idx + 1;
      file_close(fp);
      while (TRAN_AXILiteS_start_in /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
  end loop;
end process;
 
--------------------------Write file----------------------- 
 
-- Write data to file 
 
write_flag_file_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
  variable    transaction_idx :   INTEGER;
  variable    i               :   INTEGER; 
  variable    mem_tmp : STD_LOGIC_VECTOR(flag_c_bitwidth - 1 downto 0) := (others => '0'); 
  variable    factor : INTEGER; 
  variable    remain : INTEGER; 
  variable    mem_page : INTEGER; 
begin
  transaction_idx := 0; 
  count_seperate_factor_by_bitwidth (flag_c_bitwidth , factor);
  while(true) loop
      wait until clk'event and clk = '1';
      while (flag_read_data_finish /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
      wait for 0.1 ns;
      file_open(fstatus, fp, TV_OUT_flag, APPEND_MODE);
      if(fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_OUT_flag & " failed!!!" severity failure;
      end if;
      write(token_line, "[[transaction]]    " & integer'image(transaction_idx));
      writeline(fp, token_line);
      for i in 0 to (flag_DEPTH - flag_DEPTH mod factor) - 1 loop
          remain := i mod factor;
          if (factor = 4) then
              if (remain = 0) then
                  mem_tmp := mem_flag(i/factor)(7 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_flag(i/factor)(15 downto 8);
              elsif (remain = 2) then
                  mem_tmp := mem_flag(i/factor)(23 downto 16);
              elsif (remain = 3) then
                  mem_tmp := mem_flag(i/factor)(31 downto 24);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 2) then
              if (remain = 0) then
                  mem_tmp := mem_flag(i/factor)(15 downto 0);
              elsif (remain = 1) then
                  mem_tmp := mem_flag(i/factor)(31 downto 16);
              end if;
              write(token_line, "0x" & esl_conv_string_hex(mem_tmp));
              writeline(fp, token_line);
          elsif (factor = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(i)));
              writeline(fp, token_line);
          end if;
      end loop;
      remain := (flag_DEPTH - 1) mod factor;
      if (factor = 4) then
          if (remain = 2) then
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(flag_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(flag_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(flag_DEPTH/factor)(23 downto 16)));
              writeline(fp, token_line);
          elsif (remain = 1) then
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(flag_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(flag_DEPTH/factor)(15 downto 8)));
              writeline(fp, token_line);
          elsif (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(flag_DEPTH/factor)(7 downto 0)));
              writeline(fp, token_line);
          end if;
      elsif (factor = 2) then
          if (remain = 0) then
              write(token_line, "0x" & esl_conv_string_hex(mem_flag(flag_DEPTH/factor)(15 downto 0)));
              writeline(fp, token_line);
          end if;
      end if;
      write(token_line, string'("[[/transaction]]"));
      writeline(fp, token_line);
      transaction_idx := transaction_idx + 1;
      file_close(fp);
      while (TRAN_AXILiteS_start_in /= '1') loop
          wait until clk'event and clk = '1';
      end loop;
  end loop;
end process;
 
end behav;
