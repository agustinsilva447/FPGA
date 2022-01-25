-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Jan 25 18:41:25 2022
-- Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fsm_block_0_4_sim_netlist.vhdl
-- Design      : design_1_fsm_block_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ack_out : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_in : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done : STD_LOGIC;
  signal done_aux_i_1_n_0 : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal valid : STD_LOGIC;
  signal valid_aux_i_1_n_0 : STD_LOGIC;
  signal valid_aux_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \j[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of valid_aux_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of valid_aux_i_2 : label is "soft_lutpair3";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => ack_out(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ack_out(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => ack_out(2),
      I1 => done,
      I2 => ack_out(3),
      I3 => next_in,
      I4 => ack_out(0),
      I5 => ack_out(1),
      O => E(0)
    );
acks_out_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => ack_out(2),
      I1 => valid,
      I2 => done,
      I3 => ack_out(1),
      I4 => ack_out(0),
      I5 => ack_out(4),
      O => \FSM_onehot_state_reg[2]\
    );
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
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005404"
    )
        port map (
      I0 => j_reg(2),
      I1 => \count_reg[0]_0\,
      I2 => \^q\(1),
      I3 => \count_reg[0]_1\,
      I4 => done,
      O => count
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => plusOp(3)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => plusOp(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => plusOp(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => plusOp(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => plusOp(3),
      Q => count_reg(3)
    );
done_aux_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF222E"
    )
        port map (
      I0 => done_aux_reg_0,
      I1 => j_reg(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => done,
      O => done_aux_i_1_n_0
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => done_aux_i_1_n_0,
      Q => done
    );
\j[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \j[0]_i_1_n_0\
    );
\j[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => p_0_in(1)
    );
\j[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_reg(2),
      I1 => done,
      O => j0
    );
\j[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => p_0_in(2)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(1),
      Q => \^q\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(2),
      Q => j_reg(2)
    );
valid_aux_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => j_reg(2),
      I1 => valid_aux_i_2_n_0,
      I2 => count_reg(1),
      I3 => valid,
      O => valid_aux_i_1_n_0
    );
valid_aux_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^q\(1),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(3),
      I4 => \^q\(0),
      O => valid_aux_i_2_n_0
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => valid_aux_i_1_n_0,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  port (
    \j_reg[1]\ : out STD_LOGIC;
    clk_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    nRst : in STD_LOGIC;
    ack_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count[3]_i_10_n_0\ : STD_LOGIC;
  signal \count[3]_i_11_n_0\ : STD_LOGIC;
  signal \count[3]_i_12_n_0\ : STD_LOGIC;
  signal \count[3]_i_13_n_0\ : STD_LOGIC;
  signal \count[3]_i_14_n_0\ : STD_LOGIC;
  signal \count[3]_i_15_n_0\ : STD_LOGIC;
  signal \count[3]_i_5_n_0\ : STD_LOGIC;
  signal \count[3]_i_6_n_0\ : STD_LOGIC;
  signal \count[3]_i_7_n_0\ : STD_LOGIC;
  signal \count[3]_i_8_n_0\ : STD_LOGIC;
  signal \count[3]_i_9_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal done_aux_i_10_n_0 : STD_LOGIC;
  signal done_aux_i_11_n_0 : STD_LOGIC;
  signal done_aux_i_12_n_0 : STD_LOGIC;
  signal done_aux_i_13_n_0 : STD_LOGIC;
  signal done_aux_i_14_n_0 : STD_LOGIC;
  signal done_aux_i_15_n_0 : STD_LOGIC;
  signal done_aux_i_5_n_0 : STD_LOGIC;
  signal done_aux_i_6_n_0 : STD_LOGIC;
  signal done_aux_i_7_n_0 : STD_LOGIC;
  signal done_aux_i_8_n_0 : STD_LOGIC;
  signal done_aux_i_9_n_0 : STD_LOGIC;
  signal done_aux_reg_i_3_n_0 : STD_LOGIC;
  signal done_aux_reg_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_9\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[0]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[1]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[2]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of done_aux_i_9 : label is "soft_lutpair2";
begin
  AR(0) <= \^ar\(0);
  clk_0(3 downto 0) <= \^clk_0\(3 downto 0);
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(2),
      I1 => \^clk_0\(2),
      I2 => \^clk_0\(1),
      I3 => \^clk_0\(0),
      I4 => \^clk_0\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^clk_0\(3),
      I1 => \^clk_0\(0),
      I2 => \^clk_0\(1),
      I3 => \^clk_0\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => nRst,
      I1 => ack_in,
      O => \^ar\(0)
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^clk_0\(3),
      I2 => \^clk_0\(1),
      I3 => \^clk_0\(0),
      I4 => \^clk_0\(2),
      I5 => \FSM_onehot_state_reg[4]\(2),
      O => D(1)
    );
\count[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFEFFBDFF7FDFF"
    )
        port map (
      I0 => a_in(10),
      I1 => \^clk_0\(0),
      I2 => \^clk_0\(1),
      I3 => a_in(8),
      I4 => a_in(9),
      I5 => \^clk_0\(2),
      O => \count[3]_i_10_n_0\
    );
\count[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FD6F6BDBD6F6BF6"
    )
        port map (
      I0 => a_in(10),
      I1 => \^clk_0\(2),
      I2 => a_in(9),
      I3 => a_in(8),
      I4 => \^clk_0\(1),
      I5 => \^clk_0\(0),
      O => \count[3]_i_11_n_0\
    );
\count[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in(6),
      I1 => a_in(5),
      I2 => a_in(4),
      I3 => \^clk_0\(0),
      I4 => \^clk_0\(1),
      I5 => \^clk_0\(2),
      O => \count[3]_i_12_n_0\
    );
\count[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in(6),
      I1 => \^clk_0\(1),
      I2 => a_in(5),
      I3 => \^clk_0\(2),
      I4 => a_in(4),
      I5 => \^clk_0\(0),
      O => \count[3]_i_13_n_0\
    );
\count[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => a_in(2),
      I1 => a_in(1),
      I2 => \^clk_0\(0),
      I3 => \^clk_0\(1),
      I4 => a_in(0),
      I5 => \^clk_0\(2),
      O => \count[3]_i_14_n_0\
    );
\count[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in(2),
      I1 => \^clk_0\(2),
      I2 => a_in(1),
      I3 => \^clk_0\(0),
      I4 => a_in(0),
      I5 => \^clk_0\(1),
      O => \count[3]_i_15_n_0\
    );
\count[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4182"
    )
        port map (
      I0 => a_in(15),
      I1 => a_in(14),
      I2 => \^clk_0\(2),
      I3 => \^clk_0\(3),
      I4 => \count[3]_i_9_n_0\,
      O => \count[3]_i_5_n_0\
    );
\count[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(11),
      I1 => \count[3]_i_10_n_0\,
      I2 => \^clk_0\(3),
      I3 => \count[3]_i_11_n_0\,
      O => \count[3]_i_6_n_0\
    );
\count[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(7),
      I1 => \count[3]_i_12_n_0\,
      I2 => \^clk_0\(3),
      I3 => \count[3]_i_13_n_0\,
      O => \count[3]_i_7_n_0\
    );
\count[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(3),
      I1 => \count[3]_i_14_n_0\,
      I2 => \^clk_0\(3),
      I3 => \count[3]_i_15_n_0\,
      O => \count[3]_i_8_n_0\
    );
\count[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7BDE"
    )
        port map (
      I0 => a_in(13),
      I1 => a_in(12),
      I2 => \^clk_0\(1),
      I3 => \^clk_0\(0),
      O => \count[3]_i_9_n_0\
    );
\count_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_5_n_0\,
      I1 => \count[3]_i_6_n_0\,
      O => \j_reg[0]_0\,
      S => Q(0)
    );
\count_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_7_n_0\,
      I1 => \count[3]_i_8_n_0\,
      O => \j_reg[0]\,
      S => Q(0)
    );
\count_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \^ar\(0),
      D => count_next(0),
      G => \count_reg_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^clk_0\(0)
    );
\count_reg_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^clk_0\(2),
      I1 => \^clk_0\(1),
      I2 => \^clk_0\(3),
      I3 => \^clk_0\(0),
      O => count_next(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \^ar\(0),
      D => count_next(1),
      G => \count_reg_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^clk_0\(1)
    );
\count_reg_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^clk_0\(1),
      I1 => \^clk_0\(0),
      O => count_next(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \^ar\(0),
      D => count_next(2),
      G => \count_reg_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^clk_0\(2)
    );
\count_reg_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^clk_0\(2),
      I1 => \^clk_0\(1),
      I2 => \^clk_0\(0),
      O => count_next(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \^ar\(0),
      D => count_next(3),
      G => \count_reg_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^clk_0\(3)
    );
\count_reg_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^clk_0\(3),
      I1 => \^clk_0\(1),
      I2 => \^clk_0\(0),
      I3 => \^clk_0\(2),
      O => count_next(3)
    );
\count_reg_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk,
      I1 => ce,
      O => \count_reg_reg[3]_i_2_n_0\
    );
done_aux_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041008200200"
    )
        port map (
      I0 => a_in(10),
      I1 => \^clk_0\(1),
      I2 => \^clk_0\(0),
      I3 => a_in(8),
      I4 => a_in(9),
      I5 => \^clk_0\(2),
      O => done_aux_i_10_n_0
    );
done_aux_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9029094242909409"
    )
        port map (
      I0 => a_in(10),
      I1 => \^clk_0\(2),
      I2 => a_in(9),
      I3 => a_in(8),
      I4 => \^clk_0\(1),
      I5 => \^clk_0\(0),
      O => done_aux_i_11_n_0
    );
done_aux_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in(6),
      I1 => a_in(5),
      I2 => a_in(4),
      I3 => \^clk_0\(1),
      I4 => \^clk_0\(0),
      I5 => \^clk_0\(2),
      O => done_aux_i_12_n_0
    );
done_aux_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in(6),
      I1 => \^clk_0\(1),
      I2 => a_in(5),
      I3 => \^clk_0\(2),
      I4 => a_in(4),
      I5 => \^clk_0\(0),
      O => done_aux_i_13_n_0
    );
done_aux_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => a_in(2),
      I1 => a_in(1),
      I2 => \^clk_0\(1),
      I3 => \^clk_0\(0),
      I4 => a_in(0),
      I5 => \^clk_0\(2),
      O => done_aux_i_14_n_0
    );
done_aux_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in(2),
      I1 => \^clk_0\(2),
      I2 => a_in(1),
      I3 => \^clk_0\(0),
      I4 => a_in(0),
      I5 => \^clk_0\(1),
      O => done_aux_i_15_n_0
    );
done_aux_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE7D0000"
    )
        port map (
      I0 => a_in(15),
      I1 => a_in(14),
      I2 => \^clk_0\(2),
      I3 => \^clk_0\(3),
      I4 => done_aux_i_9_n_0,
      O => done_aux_i_5_n_0
    );
done_aux_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(11),
      I1 => done_aux_i_10_n_0,
      I2 => \^clk_0\(3),
      I3 => done_aux_i_11_n_0,
      O => done_aux_i_6_n_0
    );
done_aux_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(7),
      I1 => done_aux_i_12_n_0,
      I2 => \^clk_0\(3),
      I3 => done_aux_i_13_n_0,
      O => done_aux_i_7_n_0
    );
done_aux_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(3),
      I1 => done_aux_i_14_n_0,
      I2 => \^clk_0\(3),
      I3 => done_aux_i_15_n_0,
      O => done_aux_i_8_n_0
    );
done_aux_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => a_in(13),
      I1 => a_in(12),
      I2 => \^clk_0\(0),
      I3 => \^clk_0\(1),
      O => done_aux_i_9_n_0
    );
done_aux_reg_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => done_aux_reg_i_3_n_0,
      I1 => done_aux_reg_i_4_n_0,
      O => \j_reg[1]\,
      S => Q(1)
    );
done_aux_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_5_n_0,
      I1 => done_aux_i_6_n_0,
      O => done_aux_reg_i_3_n_0,
      S => Q(0)
    );
done_aux_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_7_n_0,
      I1 => done_aux_i_8_n_0,
      O => done_aux_reg_i_4_n_0,
      S => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    ack_out : out STD_LOGIC;
    next_out : out STD_LOGIC;
    output_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    next_in : in STD_LOGIC;
    nRst : in STD_LOGIC;
    ack_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block is
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[4]_0\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal ce_reg_i_1_n_0 : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal logic_n_2 : STD_LOGIC;
  signal logic_n_3 : STD_LOGIC;
  signal logic_n_4 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal reset_control_reg_i_2_n_0 : STD_LOGIC;
  signal reset_counter : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of acks_out_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of acks_out_reg_i_1 : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of ce_reg_i_1 : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \output_state[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \output_state[1]_INST_0\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of reset_control_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of reset_control_reg_i_2 : label is "soft_lutpair9";
begin
  Q(0) <= \^q\(0);
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => reset_counter
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => logic_n_5,
      Q => \ce__0\,
      R => reset_counter
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => dut_n_8,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => reset_counter
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => logic_n_4,
      Q => \asout_array[4]_0\,
      R => reset_counter
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => dut_n_7,
      Q => \^q\(0),
      R => reset_counter
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acks_out,
      G => logic_n_3,
      GE => '1',
      Q => ack_out
    );
acks_out_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^q\(0),
      O => acks_out
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(1),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(2),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(3),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(0),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(1),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(2),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(3),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(7)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(4),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(8)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(5),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(9)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(6),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(10)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(7),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(11)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(8),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(12)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(9),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(13)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(10),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(14)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(11),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(15)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(12),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(16)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(13),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(17)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(14),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(18)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(15),
      G => \asout_array[4]_0\,
      GE => '1',
      Q => a_out(19)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => ce_reg_i_1_n_0,
      GE => '1',
      Q => ce
    );
ce_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => ce_reg_i_1_n_0
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter
     port map (
      AR(0) => reset_counter,
      D(1) => dut_n_7,
      D(0) => dut_n_8,
      \FSM_onehot_state_reg[3]\ => dut_n_9,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[4]_0\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(1 downto 0) => j_reg(1 downto 0),
      a_in(15 downto 0) => a_in(15 downto 0),
      ack_in => ack_in,
      ce => ce,
      clk => clk,
      clk_0(3 downto 0) => u_i(3 downto 0),
      \j_reg[0]\ => dut_n_5,
      \j_reg[0]_0\ => dut_n_6,
      \j_reg[1]\ => dut_n_0,
      nRst => nRst
    );
logic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_4,
      D(0) => logic_n_5,
      E(0) => logic_n_2,
      \FSM_onehot_state_reg[1]\ => dut_n_9,
      \FSM_onehot_state_reg[2]\ => logic_n_3,
      Q(1 downto 0) => j_reg(1 downto 0),
      ack_out(4) => \^q\(0),
      ack_out(3) => \asout_array[4]_0\,
      ack_out(2) => \FSM_onehot_state_reg_n_0_[2]\,
      ack_out(1) => \ce__0\,
      ack_out(0) => \FSM_onehot_state_reg_n_0_[0]\,
      clk => clk,
      \count_reg[0]_0\ => dut_n_6,
      \count_reg[0]_1\ => dut_n_5,
      done_aux_reg_0 => dut_n_0,
      next_in => next_in
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(0),
      G => acks_out,
      GE => '1',
      Q => next_out
    );
\output_state[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \asout_array[4]_0\,
      I1 => \ce__0\,
      O => output_state(0)
    );
\output_state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \asout_array[4]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => output_state(1)
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => reset_control_reg_i_2_n_0,
      GE => '1',
      Q => reset_control
    );
reset_control_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[4]_0\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
reset_control_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[4]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => reset_control_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    nRst : in STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ack_in : in STD_LOGIC;
    next_in : in STD_LOGIC;
    a_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    ack_out : out STD_LOGIC;
    next_out : out STD_LOGIC;
    output_state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_fsm_block_0_4,fsm_block,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fsm_block,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block
     port map (
      Q(0) => output_state(2),
      a_in(15 downto 0) => a_in(15 downto 0),
      a_out(19 downto 0) => a_out(19 downto 0),
      ack_in => ack_in,
      ack_out => ack_out,
      clk => clk,
      nRst => nRst,
      next_in => next_in,
      next_out => next_out,
      output_state(1 downto 0) => output_state(1 downto 0)
    );
end STRUCTURE;
