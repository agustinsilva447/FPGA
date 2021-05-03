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
-- Generated on "05/03/2021 10:51:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ej6a
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ej6a_vhd_vec_tst IS
END ej6a_vhd_vec_tst;
ARCHITECTURE ej6a_arch OF ej6a_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL areset : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ej6a
	PORT (
	areset : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ej6a
	PORT MAP (
-- list connections between master ports and signals
	areset => areset,
	clk => clk,
	salida => salida
	);

-- areset
t_prcs_areset: PROCESS
BEGIN
	areset <= '0';
WAIT;
END PROCESS t_prcs_areset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 12500 ps;
	clk <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END ej6a_arch;
