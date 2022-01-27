-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Wed Jan 26 20:22:19 2022
-- Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/agustinsilva447/Escritorio/Github/FPGA/pynq/pynq_nqueens_4/pynq_nqueens_4.gen/sources_1/bd/design_1/ip/design_1_top_pynq_0_0/design_1_top_pynq_0_0_stub.vhdl
-- Design      : design_1_top_pynq_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_pynq_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    nRst : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    a_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    done : out STD_LOGIC
  );

end design_1_top_pynq_0_0;

architecture stub of design_1_top_pynq_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,nRst,count[9:0],a_in[3:0],done";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_pynq,Vivado 2021.2";
begin
end;
