-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Nov 26 16:05:26 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ctrl_logic_fsm_0_0_sim_netlist.vhdl
-- Design      : design_1_ctrl_logic_fsm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm is
  port (
    done_aux_reg_0 : out STD_LOGIC;
    valid : out STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 0 to 27 );
    u : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm is
  signal count : STD_LOGIC;
  signal \count[3]_i_10_n_0\ : STD_LOGIC;
  signal \count[3]_i_11_n_0\ : STD_LOGIC;
  signal \count[3]_i_12_n_0\ : STD_LOGIC;
  signal \count[3]_i_13_n_0\ : STD_LOGIC;
  signal \count[3]_i_14_n_0\ : STD_LOGIC;
  signal \count[3]_i_15_n_0\ : STD_LOGIC;
  signal \count[3]_i_16_n_0\ : STD_LOGIC;
  signal \count[3]_i_17_n_0\ : STD_LOGIC;
  signal \count[3]_i_3_n_0\ : STD_LOGIC;
  signal \count[3]_i_4_n_0\ : STD_LOGIC;
  signal \count[3]_i_5_n_0\ : STD_LOGIC;
  signal \count[3]_i_6_n_0\ : STD_LOGIC;
  signal \count[3]_i_7_n_0\ : STD_LOGIC;
  signal \count[3]_i_8_n_0\ : STD_LOGIC;
  signal \count[3]_i_9_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done_aux_i_10_n_0 : STD_LOGIC;
  signal done_aux_i_11_n_0 : STD_LOGIC;
  signal done_aux_i_1_n_0 : STD_LOGIC;
  signal done_aux_i_2_n_0 : STD_LOGIC;
  signal done_aux_i_3_n_0 : STD_LOGIC;
  signal done_aux_i_4_n_0 : STD_LOGIC;
  signal done_aux_i_5_n_0 : STD_LOGIC;
  signal done_aux_i_6_n_0 : STD_LOGIC;
  signal done_aux_i_7_n_0 : STD_LOGIC;
  signal done_aux_i_8_n_0 : STD_LOGIC;
  signal done_aux_i_9_n_0 : STD_LOGIC;
  signal \^done_aux_reg_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1_n_0\ : STD_LOGIC;
  signal \j[2]_i_1_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^valid\ : STD_LOGIC;
  signal valid_aux_i_1_n_0 : STD_LOGIC;
  signal valid_aux_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[3]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of done_aux_i_10 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of done_aux_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of done_aux_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of done_aux_i_8 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \j[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of valid_aux_i_2 : label is "soft_lutpair1";
begin
  done_aux_reg_0 <= \^done_aux_reg_0\;
  valid <= \^valid\;
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440000044404440"
    )
        port map (
      I0 => \^done_aux_reg_0\,
      I1 => \count[3]_i_3_n_0\,
      I2 => \count[3]_i_4_n_0\,
      I3 => \count[3]_i_5_n_0\,
      I4 => done_aux_i_4_n_0,
      I5 => done_aux_i_5_n_0,
      O => count
    );
\count[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFAB00"
    )
        port map (
      I0 => \count[3]_i_16_n_0\,
      I1 => j_reg(0),
      I2 => \count[3]_i_17_n_0\,
      I3 => \count[3]_i_3_n_0\,
      I4 => a(2),
      O => \count[3]_i_10_n_0\
    );
\count[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(0),
      O => \count[3]_i_11_n_0\
    );
\count[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => a(5),
      I1 => j_reg(2),
      I2 => a(21),
      I3 => j_reg(1),
      I4 => a(13),
      I5 => j_reg(0),
      O => \count[3]_i_12_n_0\
    );
\count[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a(17),
      I1 => a(1),
      I2 => \count[3]_i_11_n_0\,
      I3 => a(25),
      I4 => \j[2]_i_1_n_0\,
      I5 => a(9),
      O => \count[3]_i_13_n_0\
    );
\count[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a(19),
      I1 => a(3),
      I2 => \count[3]_i_11_n_0\,
      I3 => a(27),
      I4 => \j[2]_i_1_n_0\,
      I5 => a(11),
      O => \count[3]_i_14_n_0\
    );
\count[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C808C8C8C808080"
    )
        port map (
      I0 => a(15),
      I1 => j_reg(0),
      I2 => j_reg(1),
      I3 => a(23),
      I4 => j_reg(2),
      I5 => a(7),
      O => \count[3]_i_15_n_0\
    );
\count[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C8C8C8080808C80"
    )
        port map (
      I0 => a(14),
      I1 => j_reg(0),
      I2 => j_reg(1),
      I3 => a(6),
      I4 => j_reg(2),
      I5 => a(22),
      O => \count[3]_i_16_n_0\
    );
\count[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a(18),
      I1 => a(2),
      I2 => \count[3]_i_11_n_0\,
      I3 => a(26),
      I4 => \j[2]_i_1_n_0\,
      I5 => a(10),
      O => \count[3]_i_17_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      O => plusOp(3)
    );
\count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => j_reg(3),
      I1 => j_reg(1),
      I2 => j_reg(0),
      I3 => j_reg(2),
      O => \count[3]_i_3_n_0\
    );
\count[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56565656A6A6A656"
    )
        port map (
      I0 => u(3),
      I1 => a(0),
      I2 => \count[3]_i_3_n_0\,
      I3 => j_reg(0),
      I4 => \count[3]_i_6_n_0\,
      I5 => \count[3]_i_7_n_0\,
      O => \count[3]_i_4_n_0\
    );
\count[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => u(2),
      I1 => \count[3]_i_8_n_0\,
      I2 => \count[3]_i_9_n_0\,
      I3 => u(0),
      I4 => u(1),
      I5 => \count[3]_i_10_n_0\,
      O => \count[3]_i_5_n_0\
    );
\count[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a(16),
      I1 => a(0),
      I2 => \count[3]_i_11_n_0\,
      I3 => a(24),
      I4 => \j[2]_i_1_n_0\,
      I5 => a(8),
      O => \count[3]_i_6_n_0\
    );
\count[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => a(4),
      I1 => j_reg(2),
      I2 => a(20),
      I3 => j_reg(1),
      I4 => a(12),
      I5 => j_reg(0),
      O => \count[3]_i_7_n_0\
    );
\count[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFAB00"
    )
        port map (
      I0 => \count[3]_i_12_n_0\,
      I1 => \count[3]_i_13_n_0\,
      I2 => j_reg(0),
      I3 => \count[3]_i_3_n_0\,
      I4 => a(1),
      O => \count[3]_i_8_n_0\
    );
\count[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => j_reg(0),
      I1 => \count[3]_i_14_n_0\,
      I2 => \count[3]_i_15_n_0\,
      I3 => \count[3]_i_3_n_0\,
      I4 => a(3),
      O => \count[3]_i_9_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => plusOp(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => plusOp(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => plusOp(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => reset,
      D => plusOp(3),
      Q => count_reg(3)
    );
done_aux_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF54555454"
    )
        port map (
      I0 => j_reg(3),
      I1 => done_aux_i_2_n_0,
      I2 => done_aux_i_3_n_0,
      I3 => done_aux_i_4_n_0,
      I4 => done_aux_i_5_n_0,
      I5 => \^done_aux_reg_0\,
      O => done_aux_i_1_n_0
    );
done_aux_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \count[3]_i_9_n_0\,
      I1 => u(0),
      I2 => \count[3]_i_10_n_0\,
      I3 => u(1),
      O => done_aux_i_10_n_0
    );
done_aux_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E2EE"
    )
        port map (
      I0 => a(3),
      I1 => \count[3]_i_3_n_0\,
      I2 => \count[3]_i_15_n_0\,
      I3 => \count[3]_i_14_n_0\,
      I4 => j_reg(0),
      I5 => u(0),
      O => done_aux_i_11_n_0
    );
done_aux_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(1),
      O => done_aux_i_2_n_0
    );
done_aux_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count[3]_i_4_n_0\,
      I1 => \count[3]_i_5_n_0\,
      O => done_aux_i_3_n_0
    );
done_aux_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFB9DFB9DFB"
    )
        port map (
      I0 => j_reg(0),
      I1 => done_aux_i_6_n_0,
      I2 => done_aux_i_7_n_0,
      I3 => done_aux_i_8_n_0,
      I4 => \count[3]_i_5_n_0\,
      I5 => j_reg(3),
      O => done_aux_i_4_n_0
    );
done_aux_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C33CC383"
    )
        port map (
      I0 => j_reg(3),
      I1 => j_reg(2),
      I2 => done_aux_i_9_n_0,
      I3 => done_aux_i_7_n_0,
      I4 => done_aux_i_10_n_0,
      O => done_aux_i_5_n_0
    );
done_aux_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u(0),
      I1 => \count[3]_i_9_n_0\,
      O => done_aux_i_6_n_0
    );
done_aux_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A599A9A59599A59"
    )
        port map (
      I0 => \count[3]_i_4_n_0\,
      I1 => \count[3]_i_8_n_0\,
      I2 => u(2),
      I3 => \count[3]_i_10_n_0\,
      I4 => u(1),
      I5 => done_aux_i_11_n_0,
      O => done_aux_i_7_n_0
    );
done_aux_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \count[3]_i_10_n_0\,
      I1 => u(1),
      I2 => done_aux_i_11_n_0,
      I3 => j_reg(1),
      O => done_aux_i_8_n_0
    );
done_aux_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => \count[3]_i_10_n_0\,
      I1 => u(1),
      I2 => done_aux_i_11_n_0,
      I3 => \count[3]_i_8_n_0\,
      I4 => u(2),
      O => done_aux_i_9_n_0
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => done_aux_i_1_n_0,
      Q => \^done_aux_reg_0\
    );
\j[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_reg(0),
      O => \j[0]_i_1_n_0\
    );
\j[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(0),
      I1 => j_reg(1),
      O => p_0_in(1)
    );
\j[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(1),
      O => \j[2]_i_1_n_0\
    );
\j[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(1),
      I3 => j_reg(3),
      I4 => \^done_aux_reg_0\,
      O => j0
    );
\j[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(0),
      I2 => j_reg(2),
      O => p_0_in(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => reset,
      D => \j[0]_i_1_n_0\,
      Q => j_reg(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => reset,
      D => p_0_in(1),
      Q => j_reg(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => reset,
      D => \j[2]_i_1_n_0\,
      Q => j_reg(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => reset,
      D => p_0_in(3),
      Q => j_reg(3)
    );
valid_aux_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => valid_aux_i_2_n_0,
      I5 => \^valid\,
      O => valid_aux_i_1_n_0
    );
valid_aux_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(0),
      I2 => j_reg(2),
      I3 => j_reg(3),
      O => valid_aux_i_2_n_0
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => valid_aux_i_1_n_0,
      Q => \^valid\
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
    a : in STD_LOGIC_VECTOR ( 0 to 27 );
    u : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : out STD_LOGIC;
    done : out STD_LOGIC;
    output_state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ctrl_logic_fsm_0_0,ctrl_logic_fsm,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ctrl_logic_fsm,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  output_state(2) <= \<const0>\;
  output_state(1) <= \<const0>\;
  output_state(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm
     port map (
      a(0 to 27) => a(0 to 27),
      clk => clk,
      done_aux_reg_0 => done,
      reset => reset,
      u(3 downto 0) => u(3 downto 0),
      valid => valid
    );
end STRUCTURE;
