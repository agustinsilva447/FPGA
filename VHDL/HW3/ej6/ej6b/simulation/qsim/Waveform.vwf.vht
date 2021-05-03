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
-- Generated on "05/03/2021 10:54:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ej6b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ej6b_vhd_vec_tst IS
END ej6b_vhd_vec_tst;
ARCHITECTURE ej6b_arch OF ej6b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL areset : STD_LOGIC;
SIGNAL carga : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ce : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL l : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ej6b
	PORT (
	areset : IN STD_LOGIC;
	carga : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ce : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	l : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ej6b
	PORT MAP (
-- list connections between master ports and signals
	areset => areset,
	carga => carga,
	ce => ce,
	clk => clk,
	l => l,
	salida => salida
	);

-- areset
t_prcs_areset: PROCESS
BEGIN
	areset <= '0';
WAIT;
END PROCESS t_prcs_areset;
-- carga[3]
t_prcs_carga_3: PROCESS
BEGIN
	carga(3) <= '0';
WAIT;
END PROCESS t_prcs_carga_3;
-- carga[2]
t_prcs_carga_2: PROCESS
BEGIN
	carga(2) <= '0';
WAIT;
END PROCESS t_prcs_carga_2;
-- carga[1]
t_prcs_carga_1: PROCESS
BEGIN
	carga(1) <= '0';
WAIT;
END PROCESS t_prcs_carga_1;
-- carga[0]
t_prcs_carga_0: PROCESS
BEGIN
	carga(0) <= '0';
WAIT;
END PROCESS t_prcs_carga_0;

-- ce
t_prcs_ce: PROCESS
BEGIN
	ce <= '1';
WAIT;
END PROCESS t_prcs_ce;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- l
t_prcs_l: PROCESS
BEGIN
	l <= '0';
WAIT;
END PROCESS t_prcs_l;
END ej6b_arch;
