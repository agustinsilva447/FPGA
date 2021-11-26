-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Nov 25 19:47:16 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_slice_reg_0_0_sim_netlist.vhdl
-- Design      : design_1_slice_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slice_reg is
  port (
    u : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slice_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slice_reg is
  signal \j[0]_i_1_n_0\ : STD_LOGIC;
  signal \j[1]_i_1_n_0\ : STD_LOGIC;
  signal \j[2]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg_n_0_[0]\ : STD_LOGIC;
  signal \j_reg_n_0_[1]\ : STD_LOGIC;
  signal \j_reg_n_0_[2]\ : STD_LOGIC;
  signal \u[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \u[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \u[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \u[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \u[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \u[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \u[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \u[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \j[2]_i_1\ : label is "soft_lutpair0";
begin
\j[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \j_reg_n_0_[1]\,
      I1 => \j_reg_n_0_[2]\,
      I2 => \j_reg_n_0_[0]\,
      O => \j[0]_i_1_n_0\
    );
\j[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \j_reg_n_0_[1]\,
      I2 => \j_reg_n_0_[0]\,
      O => \j[1]_i_1_n_0\
    );
\j[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \j_reg_n_0_[0]\,
      I2 => \j_reg_n_0_[1]\,
      O => \j[2]_i_1_n_0\
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \j[0]_i_1_n_0\,
      Q => \j_reg_n_0_[0]\
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \j[1]_i_1_n_0\,
      Q => \j_reg_n_0_[1]\
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \j[2]_i_1_n_0\,
      Q => \j_reg_n_0_[2]\
    );
\u[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \u[0]_INST_0_i_1_n_0\,
      I1 => \u[0]_INST_0_i_2_n_0\,
      O => u(0),
      S => \j_reg_n_0_[2]\
    );
\u[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(12),
      I1 => a(8),
      I2 => \j_reg_n_0_[1]\,
      I3 => a(4),
      I4 => \j_reg_n_0_[0]\,
      I5 => a(0),
      O => \u[0]_INST_0_i_1_n_0\
    );
\u[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(24),
      I1 => \j_reg_n_0_[1]\,
      I2 => a(20),
      I3 => \j_reg_n_0_[0]\,
      I4 => a(16),
      O => \u[0]_INST_0_i_2_n_0\
    );
\u[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \u[1]_INST_0_i_1_n_0\,
      I1 => \u[1]_INST_0_i_2_n_0\,
      O => u(1),
      S => \j_reg_n_0_[2]\
    );
\u[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(13),
      I1 => a(9),
      I2 => \j_reg_n_0_[1]\,
      I3 => a(5),
      I4 => \j_reg_n_0_[0]\,
      I5 => a(1),
      O => \u[1]_INST_0_i_1_n_0\
    );
\u[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(25),
      I1 => \j_reg_n_0_[1]\,
      I2 => a(21),
      I3 => \j_reg_n_0_[0]\,
      I4 => a(17),
      O => \u[1]_INST_0_i_2_n_0\
    );
\u[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \u[2]_INST_0_i_1_n_0\,
      I1 => \u[2]_INST_0_i_2_n_0\,
      O => u(2),
      S => \j_reg_n_0_[2]\
    );
\u[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(14),
      I1 => a(10),
      I2 => \j_reg_n_0_[1]\,
      I3 => a(6),
      I4 => \j_reg_n_0_[0]\,
      I5 => a(2),
      O => \u[2]_INST_0_i_1_n_0\
    );
\u[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(26),
      I1 => \j_reg_n_0_[1]\,
      I2 => a(22),
      I3 => \j_reg_n_0_[0]\,
      I4 => a(18),
      O => \u[2]_INST_0_i_2_n_0\
    );
\u[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \u[3]_INST_0_i_1_n_0\,
      I1 => \u[3]_INST_0_i_2_n_0\,
      O => u(3),
      S => \j_reg_n_0_[2]\
    );
\u[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(15),
      I1 => a(11),
      I2 => \j_reg_n_0_[1]\,
      I3 => a(7),
      I4 => \j_reg_n_0_[0]\,
      I5 => a(3),
      O => \u[3]_INST_0_i_1_n_0\
    );
\u[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(27),
      I1 => \j_reg_n_0_[1]\,
      I2 => a(23),
      I3 => \j_reg_n_0_[0]\,
      I4 => a(19),
      O => \u[3]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 27 downto 0 );
    u : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_slice_reg_0_0,slice_reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "slice_reg,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slice_reg
     port map (
      a(27 downto 0) => a(27 downto 0),
      clk => clk,
      reset => reset,
      u(3 downto 0) => u(3 downto 0)
    );
end STRUCTURE;
