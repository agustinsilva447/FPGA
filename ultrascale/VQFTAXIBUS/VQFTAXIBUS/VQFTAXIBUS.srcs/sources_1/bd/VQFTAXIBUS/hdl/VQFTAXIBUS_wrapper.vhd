--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Aug 14 11:25:04 2021
--Host        : DESKTOP-UCL1PSP running 64-bit major release  (build 9200)
--Command     : generate_target VQFTAXIBUS_wrapper.bd
--Design      : VQFTAXIBUS_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VQFTAXIBUS_wrapper is
end VQFTAXIBUS_wrapper;

architecture STRUCTURE of VQFTAXIBUS_wrapper is
  component VQFTAXIBUS is
  end component VQFTAXIBUS;
begin
VQFTAXIBUS_i: component VQFTAXIBUS
 ;
end STRUCTURE;
