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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/20/2021 12:19:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ej6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ej6_vhd_vec_tst IS
END ej6_vhd_vec_tst;
ARCHITECTURE ej6_arch OF ej6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL qa : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qb : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qd : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qe : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qf : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qg : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qh : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qi : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qj : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qk : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ql : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qm : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL up_down : STD_LOGIC;
COMPONENT ej6
	PORT (
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable : IN STD_LOGIC;
	ld : IN STD_LOGIC;
	qa : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qe : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qf : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qg : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qi : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qj : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qk : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ql : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qm : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	qn : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	up_down : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ej6
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	d => d,
	enable => enable,
	ld => ld,
	qa => qa,
	qb => qb,
	qc => qc,
	qd => qd,
	qe => qe,
	qf => qf,
	qg => qg,
	qh => qh,
	qi => qi,
	qj => qj,
	qk => qk,
	ql => ql,
	qm => qm,
	qn => qn,
	up_down => up_down
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- d[7]
t_prcs_d_7: PROCESS
BEGIN
	d(7) <= '0';
WAIT;
END PROCESS t_prcs_d_7;
-- d[6]
t_prcs_d_6: PROCESS
BEGIN
	d(6) <= '0';
WAIT;
END PROCESS t_prcs_d_6;
-- d[5]
t_prcs_d_5: PROCESS
BEGIN
	d(5) <= '0';
WAIT;
END PROCESS t_prcs_d_5;
-- d[4]
t_prcs_d_4: PROCESS
BEGIN
	d(4) <= '0';
WAIT;
END PROCESS t_prcs_d_4;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '0';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= '0';
WAIT;
END PROCESS t_prcs_d_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- ld
t_prcs_ld: PROCESS
BEGIN
	ld <= '0';
WAIT;
END PROCESS t_prcs_ld;

-- up_down
t_prcs_up_down: PROCESS
BEGIN
	up_down <= '0';
WAIT;
END PROCESS t_prcs_up_down;
END ej6_arch;
