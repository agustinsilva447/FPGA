-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Nov 23 18:29:58 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_system_ila_0_0 -prefix
--               design_1_system_ila_0_0_ design_1_system_ila_0_0_stub.vhdl
-- Design      : design_1_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_system_ila_0_0;

architecture stub of design_1_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_f60c,Vivado 2019.2";
begin
end;