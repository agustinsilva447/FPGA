-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Nov 26 16:05:26 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_ctrl_logic_fsm_0_1 -prefix
--               design_1_ctrl_logic_fsm_0_1_ design_1_ctrl_logic_fsm_0_0_stub.vhdl
-- Design      : design_1_ctrl_logic_fsm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ctrl_logic_fsm_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 0 to 27 );
    u : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : out STD_LOGIC;
    done : out STD_LOGIC;
    output_state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end design_1_ctrl_logic_fsm_0_1;

architecture stub of design_1_ctrl_logic_fsm_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,a[0:27],u[3:0],valid,done,output_state[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ctrl_logic_fsm,Vivado 2021.2";
begin
end;
