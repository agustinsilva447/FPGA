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
-- Generated on "04/20/2021 12:41:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ej8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ej8_vhd_vec_tst IS
END ej8_vhd_vec_tst;
ARCHITECTURE ej8_arch OF ej8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inclock : STD_LOGIC;
SIGNAL outclock : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT ej8
	PORT (
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	inclock : IN STD_LOGIC;
	outclock : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ej8
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	data => data,
	inclock => inclock,
	outclock => outclock,
	q => q,
	we => we
	);
-- address[7]
t_prcs_address_7: PROCESS
BEGIN
	address(7) <= '0';
WAIT;
END PROCESS t_prcs_address_7;
-- address[6]
t_prcs_address_6: PROCESS
BEGIN
	address(6) <= '0';
WAIT;
END PROCESS t_prcs_address_6;
-- address[5]
t_prcs_address_5: PROCESS
BEGIN
	address(5) <= '0';
WAIT;
END PROCESS t_prcs_address_5;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;

-- inclock
t_prcs_inclock: PROCESS
BEGIN
	inclock <= '0';
WAIT;
END PROCESS t_prcs_inclock;

-- outclock
t_prcs_outclock: PROCESS
BEGIN
	outclock <= '0';
WAIT;
END PROCESS t_prcs_outclock;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '0';
WAIT;
END PROCESS t_prcs_we;
END ej8_arch;
