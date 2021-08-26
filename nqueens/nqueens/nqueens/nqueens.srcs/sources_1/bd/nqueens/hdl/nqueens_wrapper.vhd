--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Aug 26 12:28:44 2021
--Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
--Command     : generate_target nqueens_wrapper.bd
--Design      : nqueens_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nqueens_wrapper is
end nqueens_wrapper;

architecture STRUCTURE of nqueens_wrapper is
  component nqueens is
  end component nqueens;
begin
nqueens_i: component nqueens
 ;
end STRUCTURE;
