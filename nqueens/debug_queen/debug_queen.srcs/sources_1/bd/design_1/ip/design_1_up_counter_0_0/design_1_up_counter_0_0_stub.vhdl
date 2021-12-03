-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Nov 23 15:45:11 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mlabadm/Desktop/Github/FPGA/nqueens/debug_queen/debug_queen.srcs/sources_1/bd/design_1/ip/design_1_up_counter_0_0/design_1_up_counter_0_0_stub.vhdl
-- Design      : design_1_up_counter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_up_counter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    reset : in STD_LOGIC;
    complete_tick : out STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_up_counter_0_0;

architecture stub of design_1_up_counter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ce,reset,complete_tick,count[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "up_counter,Vivado 2019.2";
begin
end;
