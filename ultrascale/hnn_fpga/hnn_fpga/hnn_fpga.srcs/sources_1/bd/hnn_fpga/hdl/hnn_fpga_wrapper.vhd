--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri Aug 13 19:24:03 2021
--Host        : DESKTOP-UCL1PSP running 64-bit major release  (build 9200)
--Command     : generate_target hnn_fpga_wrapper.bd
--Design      : hnn_fpga_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hnn_fpga_wrapper is
end hnn_fpga_wrapper;

architecture STRUCTURE of hnn_fpga_wrapper is
  component hnn_fpga is
  end component hnn_fpga;
begin
hnn_fpga_i: component hnn_fpga
 ;
end STRUCTURE;
