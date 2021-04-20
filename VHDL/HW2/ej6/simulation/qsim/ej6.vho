-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/20/2021 12:19:02"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ej6 IS
    PORT (
	d : IN STD.STANDARD.integer range 0 TO 255;
	clk : IN std_logic;
	clear : IN std_logic;
	ld : IN std_logic;
	enable : IN std_logic;
	up_down : IN std_logic;
	qa : OUT STD.STANDARD.integer range 0 TO 255;
	qb : OUT STD.STANDARD.integer range 0 TO 255;
	qc : OUT STD.STANDARD.integer range 0 TO 255;
	qd : OUT STD.STANDARD.integer range 0 TO 255;
	qe : OUT STD.STANDARD.integer range 0 TO 255;
	qf : OUT STD.STANDARD.integer range 0 TO 255;
	qg : OUT STD.STANDARD.integer range 0 TO 255;
	qh : OUT STD.STANDARD.integer range 0 TO 255;
	qi : OUT STD.STANDARD.integer range 0 TO 255;
	qj : OUT STD.STANDARD.integer range 0 TO 255;
	qk : OUT STD.STANDARD.integer range 0 TO 255;
	ql : OUT STD.STANDARD.integer range 0 TO 255;
	qm : OUT STD.STANDARD.integer range 0 TO 255;
	qn : OUT STD.STANDARD.integer range 0 TO 255
	);
END ej6;

-- Design Ports Information
-- d[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_down	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[5]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qa[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[0]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qe[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qf[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qg[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[6]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qh[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qi[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[3]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qj[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[1]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qk[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[6]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ql[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[4]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qn[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ej6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_up_down : std_logic;
SIGNAL ww_qa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qe : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qf : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qh : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qi : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qj : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qk : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ql : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qm : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qn : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \up_down~input_o\ : std_logic;
SIGNAL \qa[0]~output_o\ : std_logic;
SIGNAL \qa[1]~output_o\ : std_logic;
SIGNAL \qa[2]~output_o\ : std_logic;
SIGNAL \qa[3]~output_o\ : std_logic;
SIGNAL \qa[4]~output_o\ : std_logic;
SIGNAL \qa[5]~output_o\ : std_logic;
SIGNAL \qa[6]~output_o\ : std_logic;
SIGNAL \qa[7]~output_o\ : std_logic;
SIGNAL \qb[0]~output_o\ : std_logic;
SIGNAL \qb[1]~output_o\ : std_logic;
SIGNAL \qb[2]~output_o\ : std_logic;
SIGNAL \qb[3]~output_o\ : std_logic;
SIGNAL \qb[4]~output_o\ : std_logic;
SIGNAL \qb[5]~output_o\ : std_logic;
SIGNAL \qb[6]~output_o\ : std_logic;
SIGNAL \qb[7]~output_o\ : std_logic;
SIGNAL \qc[0]~output_o\ : std_logic;
SIGNAL \qc[1]~output_o\ : std_logic;
SIGNAL \qc[2]~output_o\ : std_logic;
SIGNAL \qc[3]~output_o\ : std_logic;
SIGNAL \qc[4]~output_o\ : std_logic;
SIGNAL \qc[5]~output_o\ : std_logic;
SIGNAL \qc[6]~output_o\ : std_logic;
SIGNAL \qc[7]~output_o\ : std_logic;
SIGNAL \qd[0]~output_o\ : std_logic;
SIGNAL \qd[1]~output_o\ : std_logic;
SIGNAL \qd[2]~output_o\ : std_logic;
SIGNAL \qd[3]~output_o\ : std_logic;
SIGNAL \qd[4]~output_o\ : std_logic;
SIGNAL \qd[5]~output_o\ : std_logic;
SIGNAL \qd[6]~output_o\ : std_logic;
SIGNAL \qd[7]~output_o\ : std_logic;
SIGNAL \qe[0]~output_o\ : std_logic;
SIGNAL \qe[1]~output_o\ : std_logic;
SIGNAL \qe[2]~output_o\ : std_logic;
SIGNAL \qe[3]~output_o\ : std_logic;
SIGNAL \qe[4]~output_o\ : std_logic;
SIGNAL \qe[5]~output_o\ : std_logic;
SIGNAL \qe[6]~output_o\ : std_logic;
SIGNAL \qe[7]~output_o\ : std_logic;
SIGNAL \qf[0]~output_o\ : std_logic;
SIGNAL \qf[1]~output_o\ : std_logic;
SIGNAL \qf[2]~output_o\ : std_logic;
SIGNAL \qf[3]~output_o\ : std_logic;
SIGNAL \qf[4]~output_o\ : std_logic;
SIGNAL \qf[5]~output_o\ : std_logic;
SIGNAL \qf[6]~output_o\ : std_logic;
SIGNAL \qf[7]~output_o\ : std_logic;
SIGNAL \qg[0]~output_o\ : std_logic;
SIGNAL \qg[1]~output_o\ : std_logic;
SIGNAL \qg[2]~output_o\ : std_logic;
SIGNAL \qg[3]~output_o\ : std_logic;
SIGNAL \qg[4]~output_o\ : std_logic;
SIGNAL \qg[5]~output_o\ : std_logic;
SIGNAL \qg[6]~output_o\ : std_logic;
SIGNAL \qg[7]~output_o\ : std_logic;
SIGNAL \qh[0]~output_o\ : std_logic;
SIGNAL \qh[1]~output_o\ : std_logic;
SIGNAL \qh[2]~output_o\ : std_logic;
SIGNAL \qh[3]~output_o\ : std_logic;
SIGNAL \qh[4]~output_o\ : std_logic;
SIGNAL \qh[5]~output_o\ : std_logic;
SIGNAL \qh[6]~output_o\ : std_logic;
SIGNAL \qh[7]~output_o\ : std_logic;
SIGNAL \qi[0]~output_o\ : std_logic;
SIGNAL \qi[1]~output_o\ : std_logic;
SIGNAL \qi[2]~output_o\ : std_logic;
SIGNAL \qi[3]~output_o\ : std_logic;
SIGNAL \qi[4]~output_o\ : std_logic;
SIGNAL \qi[5]~output_o\ : std_logic;
SIGNAL \qi[6]~output_o\ : std_logic;
SIGNAL \qi[7]~output_o\ : std_logic;
SIGNAL \qj[0]~output_o\ : std_logic;
SIGNAL \qj[1]~output_o\ : std_logic;
SIGNAL \qj[2]~output_o\ : std_logic;
SIGNAL \qj[3]~output_o\ : std_logic;
SIGNAL \qj[4]~output_o\ : std_logic;
SIGNAL \qj[5]~output_o\ : std_logic;
SIGNAL \qj[6]~output_o\ : std_logic;
SIGNAL \qj[7]~output_o\ : std_logic;
SIGNAL \qk[0]~output_o\ : std_logic;
SIGNAL \qk[1]~output_o\ : std_logic;
SIGNAL \qk[2]~output_o\ : std_logic;
SIGNAL \qk[3]~output_o\ : std_logic;
SIGNAL \qk[4]~output_o\ : std_logic;
SIGNAL \qk[5]~output_o\ : std_logic;
SIGNAL \qk[6]~output_o\ : std_logic;
SIGNAL \qk[7]~output_o\ : std_logic;
SIGNAL \ql[0]~output_o\ : std_logic;
SIGNAL \ql[1]~output_o\ : std_logic;
SIGNAL \ql[2]~output_o\ : std_logic;
SIGNAL \ql[3]~output_o\ : std_logic;
SIGNAL \ql[4]~output_o\ : std_logic;
SIGNAL \ql[5]~output_o\ : std_logic;
SIGNAL \ql[6]~output_o\ : std_logic;
SIGNAL \ql[7]~output_o\ : std_logic;
SIGNAL \qm[0]~output_o\ : std_logic;
SIGNAL \qm[1]~output_o\ : std_logic;
SIGNAL \qm[2]~output_o\ : std_logic;
SIGNAL \qm[3]~output_o\ : std_logic;
SIGNAL \qm[4]~output_o\ : std_logic;
SIGNAL \qm[5]~output_o\ : std_logic;
SIGNAL \qm[6]~output_o\ : std_logic;
SIGNAL \qm[7]~output_o\ : std_logic;
SIGNAL \qn[0]~output_o\ : std_logic;
SIGNAL \qn[1]~output_o\ : std_logic;
SIGNAL \qn[2]~output_o\ : std_logic;
SIGNAL \qn[3]~output_o\ : std_logic;
SIGNAL \qn[4]~output_o\ : std_logic;
SIGNAL \qn[5]~output_o\ : std_logic;
SIGNAL \qn[6]~output_o\ : std_logic;
SIGNAL \qn[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \cnt[0]~7_combout\ : std_logic;
SIGNAL \cnt[1]~8_combout\ : std_logic;
SIGNAL \cnt[1]~9\ : std_logic;
SIGNAL \cnt[2]~10_combout\ : std_logic;
SIGNAL \cnt[2]~11\ : std_logic;
SIGNAL \cnt[3]~12_combout\ : std_logic;
SIGNAL \cnt[3]~13\ : std_logic;
SIGNAL \cnt[4]~14_combout\ : std_logic;
SIGNAL \cnt[4]~15\ : std_logic;
SIGNAL \cnt[5]~16_combout\ : std_logic;
SIGNAL \cnt[5]~17\ : std_logic;
SIGNAL \cnt[6]~18_combout\ : std_logic;
SIGNAL \cnt[6]~19\ : std_logic;
SIGNAL \cnt[7]~20_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_d <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(d, 8);
ww_clk <= clk;
ww_clear <= clear;
ww_ld <= ld;
ww_enable <= enable;
ww_up_down <= up_down;
qa <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qa));
qb <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qb));
qc <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qc));
qd <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qd));
qe <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qe));
qf <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qf));
qg <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qg));
qh <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qh));
qi <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qi));
qj <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qj));
qk <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qk));
ql <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ql));
qm <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qm));
qn <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_qn));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\qa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(0),
	devoe => ww_devoe,
	o => \qa[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\qa[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(1),
	devoe => ww_devoe,
	o => \qa[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\qa[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(2),
	devoe => ww_devoe,
	o => \qa[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\qa[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(3),
	devoe => ww_devoe,
	o => \qa[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\qa[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(4),
	devoe => ww_devoe,
	o => \qa[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\qa[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(5),
	devoe => ww_devoe,
	o => \qa[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\qa[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(6),
	devoe => ww_devoe,
	o => \qa[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\qa[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(7),
	devoe => ww_devoe,
	o => \qa[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\qb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[0]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\qb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\qb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[2]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\qb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\qb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\qb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\qb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[6]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\qb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qb[7]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\qc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\qc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[1]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\qc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\qc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\qc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\qc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\qc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[6]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\qc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qc[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\qd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\qd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\qd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\qd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\qd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\qd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\qd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\qd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qd[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\qe[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\qe[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\qe[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\qe[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\qe[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[4]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\qe[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\qe[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[6]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\qe[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qe[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\qf[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\qf[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\qf[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\qf[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[3]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\qf[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\qf[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\qf[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[6]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\qf[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qf[7]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\qg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\qg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\qg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\qg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\qg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\qg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\qg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\qg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qg[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\qh[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[0]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\qh[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[1]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\qh[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\qh[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\qh[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[4]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\qh[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\qh[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[6]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\qh[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qh[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\qi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\qi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\qi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[2]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\qi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\qi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\qi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\qi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\qi[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qi[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\qj[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[0]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\qj[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[1]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\qj[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\qj[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\qj[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[4]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\qj[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[5]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\qj[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\qj[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qj[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\qk[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\qk[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\qk[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\qk[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[3]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\qk[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\qk[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\qk[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[6]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\qk[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qk[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\ql[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\ql[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\ql[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[2]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\ql[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[3]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\ql[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\ql[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ql[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\ql[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ql[7]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\qm[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\qm[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\qm[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\qm[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\qm[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\qm[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\qm[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\qm[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qm[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\qn[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[0]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\qn[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\qn[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\qn[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[3]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\qn[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\qn[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\qn[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\qn[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \qn[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\cnt[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[0]~7_combout\ = cnt(0) $ (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(0),
	datad => \enable~input_o\,
	combout => \cnt[0]~7_combout\);

-- Location: FF_X1_Y4_N23
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X1_Y4_N0
\cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[1]~8_combout\ = (cnt(0) & (cnt(1) $ (VCC))) # (!cnt(0) & (cnt(1) & VCC))
-- \cnt[1]~9\ = CARRY((cnt(0) & cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(1),
	datad => VCC,
	combout => \cnt[1]~8_combout\,
	cout => \cnt[1]~9\);

-- Location: FF_X1_Y4_N1
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[1]~8_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X1_Y4_N2
\cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[2]~10_combout\ = (cnt(2) & (!\cnt[1]~9\)) # (!cnt(2) & ((\cnt[1]~9\) # (GND)))
-- \cnt[2]~11\ = CARRY((!\cnt[1]~9\) # (!cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~9\,
	combout => \cnt[2]~10_combout\,
	cout => \cnt[2]~11\);

-- Location: FF_X1_Y4_N3
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[2]~10_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X1_Y4_N4
\cnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[3]~12_combout\ = (cnt(3) & (\cnt[2]~11\ $ (GND))) # (!cnt(3) & (!\cnt[2]~11\ & VCC))
-- \cnt[3]~13\ = CARRY((cnt(3) & !\cnt[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~11\,
	combout => \cnt[3]~12_combout\,
	cout => \cnt[3]~13\);

-- Location: FF_X1_Y4_N5
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[3]~12_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X1_Y4_N6
\cnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[4]~14_combout\ = (cnt(4) & (!\cnt[3]~13\)) # (!cnt(4) & ((\cnt[3]~13\) # (GND)))
-- \cnt[4]~15\ = CARRY((!\cnt[3]~13\) # (!cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \cnt[3]~13\,
	combout => \cnt[4]~14_combout\,
	cout => \cnt[4]~15\);

-- Location: FF_X1_Y4_N7
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[4]~14_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X1_Y4_N8
\cnt[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[5]~16_combout\ = (cnt(5) & (\cnt[4]~15\ $ (GND))) # (!cnt(5) & (!\cnt[4]~15\ & VCC))
-- \cnt[5]~17\ = CARRY((cnt(5) & !\cnt[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~15\,
	combout => \cnt[5]~16_combout\,
	cout => \cnt[5]~17\);

-- Location: FF_X1_Y4_N9
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[5]~16_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X1_Y4_N10
\cnt[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[6]~18_combout\ = (cnt(6) & (!\cnt[5]~17\)) # (!cnt(6) & ((\cnt[5]~17\) # (GND)))
-- \cnt[6]~19\ = CARRY((!\cnt[5]~17\) # (!cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \cnt[5]~17\,
	combout => \cnt[6]~18_combout\,
	cout => \cnt[6]~19\);

-- Location: FF_X1_Y4_N11
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[6]~18_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X1_Y4_N12
\cnt[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt[7]~20_combout\ = \cnt[6]~19\ $ (!cnt(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(7),
	cin => \cnt[6]~19\,
	combout => \cnt[7]~20_combout\);

-- Location: FF_X1_Y4_N13
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[7]~20_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: IOIBUF_X0_Y23_N15
\d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\d[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\d[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\d[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\d[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\up_down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down,
	o => \up_down~input_o\);

ww_qa(0) <= \qa[0]~output_o\;

ww_qa(1) <= \qa[1]~output_o\;

ww_qa(2) <= \qa[2]~output_o\;

ww_qa(3) <= \qa[3]~output_o\;

ww_qa(4) <= \qa[4]~output_o\;

ww_qa(5) <= \qa[5]~output_o\;

ww_qa(6) <= \qa[6]~output_o\;

ww_qa(7) <= \qa[7]~output_o\;

ww_qb(0) <= \qb[0]~output_o\;

ww_qb(1) <= \qb[1]~output_o\;

ww_qb(2) <= \qb[2]~output_o\;

ww_qb(3) <= \qb[3]~output_o\;

ww_qb(4) <= \qb[4]~output_o\;

ww_qb(5) <= \qb[5]~output_o\;

ww_qb(6) <= \qb[6]~output_o\;

ww_qb(7) <= \qb[7]~output_o\;

ww_qc(0) <= \qc[0]~output_o\;

ww_qc(1) <= \qc[1]~output_o\;

ww_qc(2) <= \qc[2]~output_o\;

ww_qc(3) <= \qc[3]~output_o\;

ww_qc(4) <= \qc[4]~output_o\;

ww_qc(5) <= \qc[5]~output_o\;

ww_qc(6) <= \qc[6]~output_o\;

ww_qc(7) <= \qc[7]~output_o\;

ww_qd(0) <= \qd[0]~output_o\;

ww_qd(1) <= \qd[1]~output_o\;

ww_qd(2) <= \qd[2]~output_o\;

ww_qd(3) <= \qd[3]~output_o\;

ww_qd(4) <= \qd[4]~output_o\;

ww_qd(5) <= \qd[5]~output_o\;

ww_qd(6) <= \qd[6]~output_o\;

ww_qd(7) <= \qd[7]~output_o\;

ww_qe(0) <= \qe[0]~output_o\;

ww_qe(1) <= \qe[1]~output_o\;

ww_qe(2) <= \qe[2]~output_o\;

ww_qe(3) <= \qe[3]~output_o\;

ww_qe(4) <= \qe[4]~output_o\;

ww_qe(5) <= \qe[5]~output_o\;

ww_qe(6) <= \qe[6]~output_o\;

ww_qe(7) <= \qe[7]~output_o\;

ww_qf(0) <= \qf[0]~output_o\;

ww_qf(1) <= \qf[1]~output_o\;

ww_qf(2) <= \qf[2]~output_o\;

ww_qf(3) <= \qf[3]~output_o\;

ww_qf(4) <= \qf[4]~output_o\;

ww_qf(5) <= \qf[5]~output_o\;

ww_qf(6) <= \qf[6]~output_o\;

ww_qf(7) <= \qf[7]~output_o\;

ww_qg(0) <= \qg[0]~output_o\;

ww_qg(1) <= \qg[1]~output_o\;

ww_qg(2) <= \qg[2]~output_o\;

ww_qg(3) <= \qg[3]~output_o\;

ww_qg(4) <= \qg[4]~output_o\;

ww_qg(5) <= \qg[5]~output_o\;

ww_qg(6) <= \qg[6]~output_o\;

ww_qg(7) <= \qg[7]~output_o\;

ww_qh(0) <= \qh[0]~output_o\;

ww_qh(1) <= \qh[1]~output_o\;

ww_qh(2) <= \qh[2]~output_o\;

ww_qh(3) <= \qh[3]~output_o\;

ww_qh(4) <= \qh[4]~output_o\;

ww_qh(5) <= \qh[5]~output_o\;

ww_qh(6) <= \qh[6]~output_o\;

ww_qh(7) <= \qh[7]~output_o\;

ww_qi(0) <= \qi[0]~output_o\;

ww_qi(1) <= \qi[1]~output_o\;

ww_qi(2) <= \qi[2]~output_o\;

ww_qi(3) <= \qi[3]~output_o\;

ww_qi(4) <= \qi[4]~output_o\;

ww_qi(5) <= \qi[5]~output_o\;

ww_qi(6) <= \qi[6]~output_o\;

ww_qi(7) <= \qi[7]~output_o\;

ww_qj(0) <= \qj[0]~output_o\;

ww_qj(1) <= \qj[1]~output_o\;

ww_qj(2) <= \qj[2]~output_o\;

ww_qj(3) <= \qj[3]~output_o\;

ww_qj(4) <= \qj[4]~output_o\;

ww_qj(5) <= \qj[5]~output_o\;

ww_qj(6) <= \qj[6]~output_o\;

ww_qj(7) <= \qj[7]~output_o\;

ww_qk(0) <= \qk[0]~output_o\;

ww_qk(1) <= \qk[1]~output_o\;

ww_qk(2) <= \qk[2]~output_o\;

ww_qk(3) <= \qk[3]~output_o\;

ww_qk(4) <= \qk[4]~output_o\;

ww_qk(5) <= \qk[5]~output_o\;

ww_qk(6) <= \qk[6]~output_o\;

ww_qk(7) <= \qk[7]~output_o\;

ww_ql(0) <= \ql[0]~output_o\;

ww_ql(1) <= \ql[1]~output_o\;

ww_ql(2) <= \ql[2]~output_o\;

ww_ql(3) <= \ql[3]~output_o\;

ww_ql(4) <= \ql[4]~output_o\;

ww_ql(5) <= \ql[5]~output_o\;

ww_ql(6) <= \ql[6]~output_o\;

ww_ql(7) <= \ql[7]~output_o\;

ww_qm(0) <= \qm[0]~output_o\;

ww_qm(1) <= \qm[1]~output_o\;

ww_qm(2) <= \qm[2]~output_o\;

ww_qm(3) <= \qm[3]~output_o\;

ww_qm(4) <= \qm[4]~output_o\;

ww_qm(5) <= \qm[5]~output_o\;

ww_qm(6) <= \qm[6]~output_o\;

ww_qm(7) <= \qm[7]~output_o\;

ww_qn(0) <= \qn[0]~output_o\;

ww_qn(1) <= \qn[1]~output_o\;

ww_qn(2) <= \qn[2]~output_o\;

ww_qn(3) <= \qn[3]~output_o\;

ww_qn(4) <= \qn[4]~output_o\;

ww_qn(5) <= \qn[5]~output_o\;

ww_qn(6) <= \qn[6]~output_o\;

ww_qn(7) <= \qn[7]~output_o\;
END structure;


