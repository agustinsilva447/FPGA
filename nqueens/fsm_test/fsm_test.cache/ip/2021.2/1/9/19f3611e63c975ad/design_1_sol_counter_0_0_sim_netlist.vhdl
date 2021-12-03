-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Mon Nov 29 15:09:55 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sol_counter_0_0_sim_netlist.vhdl
-- Design      : design_1_sol_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter is
  port (
    count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ce : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter is
  signal \^count\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_reg[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_reg[7]_i_2\ : label is "soft_lutpair1";
begin
  count(7 downto 0) <= \^count\(7 downto 0);
\count_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count\(0),
      O => plusOp(0)
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count\(0),
      I1 => \^count\(1),
      O => plusOp(1)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^count\(0),
      I1 => \^count\(1),
      I2 => \^count\(2),
      O => plusOp(2)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^count\(1),
      I1 => \^count\(0),
      I2 => \^count\(2),
      I3 => \^count\(3),
      O => plusOp(3)
    );
\count_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^count\(2),
      I1 => \^count\(0),
      I2 => \^count\(1),
      I3 => \^count\(3),
      I4 => \^count\(4),
      O => plusOp(4)
    );
\count_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^count\(3),
      I1 => \^count\(1),
      I2 => \^count\(0),
      I3 => \^count\(2),
      I4 => \^count\(4),
      I5 => \^count\(5),
      O => plusOp(5)
    );
\count_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg[7]_i_3_n_0\,
      I1 => \^count\(6),
      O => plusOp(6)
    );
\count_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ce,
      O => \count_reg[7]_i_1_n_0\
    );
\count_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg[7]_i_3_n_0\,
      I1 => \^count\(6),
      I2 => \^count\(7),
      O => plusOp(7)
    );
\count_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^count\(5),
      I1 => \^count\(3),
      I2 => \^count\(1),
      I3 => \^count\(0),
      I4 => \^count\(2),
      I5 => \^count\(4),
      O => \count_reg[7]_i_3_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(0),
      Q => \^count\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(1),
      Q => \^count\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(2),
      Q => \^count\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(3),
      Q => \^count\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(4),
      Q => \^count\(4)
    );
\count_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(5),
      Q => \^count\(5)
    );
\count_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(6),
      Q => \^count\(6)
    );
\count_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[7]_i_1_n_0\,
      CLR => reset,
      D => plusOp(7),
      Q => \^count\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    reset : in STD_LOGIC;
    next_sol : out STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_sol_counter_0_0,sol_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sol_counter,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  next_sol <= \<const1>\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter
     port map (
      ce => ce,
      clk => clk,
      count(7 downto 0) => count(7 downto 0),
      reset => reset
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
