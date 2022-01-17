-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Jan 17 17:35:12 2022
-- Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fsm_block_0_3_stub.vhdl
-- Design      : design_1_fsm_block_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    nRst : in STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ack_in : in STD_LOGIC;
    next_in : in STD_LOGIC;
    a_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ack_out : out STD_LOGIC;
    next_out : out STD_LOGIC;
    output_state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,nRst,a_in[11:0],ack_in,next_in,a_out[15:0],ack_out,next_out,output_state[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fsm_block,Vivado 2021.2";
begin
end;
