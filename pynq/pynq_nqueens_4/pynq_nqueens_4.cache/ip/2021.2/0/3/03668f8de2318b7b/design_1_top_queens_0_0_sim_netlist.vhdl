-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Jan 25 20:24:34 2022
-- Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_queens_0_0_sim_netlist.vhdl
-- Design      : design_1_top_queens_0_0
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
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    acks_out_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC
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
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal valid : STD_LOGIC;
  signal valid_aux_i_1_n_0 : STD_LOGIC;
  signal valid_aux_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \count[0]_i_1__2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \j[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \j[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \j[3]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of valid_aux_i_1 : label is "soft_lutpair61";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => acks_out_reg(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => acks_out_reg(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => acks_out_reg(2),
      I1 => done,
      I2 => acks_out_reg(0),
      I3 => acks_out_reg(3),
      I4 => acks_out_reg(1),
      O => E(0)
    );
acks_out_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => acks_out_reg(2),
      I1 => valid,
      I2 => done,
      I3 => acks_out_reg(4),
      I4 => acks_out_reg(0),
      I5 => acks_out_reg(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__2\: unisim.vcomponents.LUT1
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
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => j_reg(3),
      I1 => \count_reg[0]_0\,
      I2 => j_reg(0),
      I3 => \count_reg[0]_1\,
      I4 => done,
      O => count
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
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
      INIT => X"FFFF4540"
    )
        port map (
      I0 => j_reg(3),
      I1 => done_aux_reg_0,
      I2 => j_reg(0),
      I3 => done_aux_reg_1,
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
      I0 => j_reg(0),
      O => \j[0]_i_1_n_0\
    );
\j[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(0),
      I1 => \^q\(0),
      O => p_0_in(1)
    );
\j[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => j_reg(0),
      I2 => \^q\(1),
      O => p_0_in(2)
    );
\j[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => j_reg(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => j_reg(0),
      I4 => done,
      O => j0
    );
\j[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => j_reg(0),
      O => p_0_in(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1_n_0\,
      Q => j_reg(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(1),
      Q => \^q\(0)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(2),
      Q => \^q\(1)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(3),
      Q => j_reg(3)
    );
valid_aux_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => j_reg(3),
      I1 => valid_aux_i_2_n_0,
      I2 => count_reg(3),
      I3 => valid,
      O => valid_aux_i_1_n_0
    );
valid_aux_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => \^q\(1),
      I5 => j_reg(0),
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized0\ is
  port (
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \j_reg[1]_2\ : out STD_LOGIC;
    \j_reg[1]_3\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in_7 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    done_aux_reg_i_7_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_7 : in STD_LOGIC;
    done_aux_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized0\ : entity is "ctrl_logic";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized0\ is
  signal count : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_10_n_0\ : STD_LOGIC;
  signal \count[3]_i_11_n_0\ : STD_LOGIC;
  signal \count[3]_i_12_n_0\ : STD_LOGIC;
  signal \count[3]_i_13_n_0\ : STD_LOGIC;
  signal \count[3]_i_14_n_0\ : STD_LOGIC;
  signal \count[3]_i_15_n_0\ : STD_LOGIC;
  signal \count[3]_i_16_n_0\ : STD_LOGIC;
  signal \count[3]_i_17_n_0\ : STD_LOGIC;
  signal \count[3]_i_18_n_0\ : STD_LOGIC;
  signal \count[3]_i_19_n_0\ : STD_LOGIC;
  signal \count[3]_i_20_n_0\ : STD_LOGIC;
  signal \count[3]_i_21_n_0\ : STD_LOGIC;
  signal \count[3]_i_22_n_0\ : STD_LOGIC;
  signal \count[3]_i_23_n_0\ : STD_LOGIC;
  signal \count[3]_i_24_n_0\ : STD_LOGIC;
  signal \count[3]_i_25_n_0\ : STD_LOGIC;
  signal \count[3]_i_26_n_0\ : STD_LOGIC;
  signal \count[3]_i_5_n_0\ : STD_LOGIC;
  signal \count[3]_i_6_n_0\ : STD_LOGIC;
  signal \count[3]_i_7_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux_i_10_n_0 : STD_LOGIC;
  signal done_aux_i_11_n_0 : STD_LOGIC;
  signal done_aux_i_12_n_0 : STD_LOGIC;
  signal done_aux_i_13_n_0 : STD_LOGIC;
  signal done_aux_i_14_n_0 : STD_LOGIC;
  signal done_aux_i_15_n_0 : STD_LOGIC;
  signal done_aux_i_16_n_0 : STD_LOGIC;
  signal done_aux_i_17_n_0 : STD_LOGIC;
  signal done_aux_i_18_n_0 : STD_LOGIC;
  signal done_aux_i_19_n_0 : STD_LOGIC;
  signal \done_aux_i_1__0_n_0\ : STD_LOGIC;
  signal done_aux_i_20_n_0 : STD_LOGIC;
  signal done_aux_i_21_n_0 : STD_LOGIC;
  signal done_aux_i_22_n_0 : STD_LOGIC;
  signal done_aux_i_23_n_0 : STD_LOGIC;
  signal done_aux_i_24_n_0 : STD_LOGIC;
  signal done_aux_i_25_n_0 : STD_LOGIC;
  signal \done_aux_i_2__0_n_0\ : STD_LOGIC;
  signal done_aux_i_4_n_0 : STD_LOGIC;
  signal done_aux_i_5_n_0 : STD_LOGIC;
  signal done_aux_i_6_n_0 : STD_LOGIC;
  signal done_aux_i_9_n_0 : STD_LOGIC;
  signal done_aux_reg_i_7_n_0 : STD_LOGIC;
  signal done_aux_reg_i_8_n_0 : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__0_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^j_reg[2]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__0_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count[1]_i_1__1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count[2]_i_1__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \count[3]_i_10\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \count[3]_i_2__2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \done_aux_i_2__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of done_aux_i_9 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \j[1]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \j[2]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \j[3]_i_2__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \valid_aux_i_1__0\ : label is "soft_lutpair53";
begin
  \j_reg[2]_0\(1 downto 0) <= \^j_reg[2]_0\(1 downto 0);
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => \count_reg_reg[0]\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => done,
      I2 => \count_reg_reg[0]\(3),
      I3 => next_out_7,
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => E(0)
    );
\acks_out_reg_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]\(1),
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(4),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__0\(1)
    );
\count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__0\(2)
    );
\count[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7BDE"
    )
        port map (
      I0 => a_in_7(13),
      I1 => a_in_7(12),
      I2 => done_aux_reg_i_7_0(1),
      I3 => done_aux_reg_i_7_0(0),
      O => \count[3]_i_10_n_0\
    );
\count[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in_7(6),
      I1 => a_in_7(5),
      I2 => a_in_7(4),
      I3 => done_aux_reg_i_7_0(0),
      I4 => done_aux_reg_i_7_0(1),
      I5 => done_aux_reg_i_7_0(2),
      O => \count[3]_i_11_n_0\
    );
\count[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in_7(6),
      I1 => done_aux_reg_i_7_0(1),
      I2 => a_in_7(5),
      I3 => done_aux_reg_i_7_0(2),
      I4 => a_in_7(4),
      I5 => done_aux_reg_i_7_0(0),
      O => \count[3]_i_12_n_0\
    );
\count[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFF42FFFFF2F"
    )
        port map (
      I0 => a_in_7(22),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(21),
      I3 => a_in_7(20),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(1),
      O => \count[3]_i_13_n_0\
    );
\count[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6BFFD6FFFF6BFFD6"
    )
        port map (
      I0 => a_in_7(22),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(21),
      I3 => a_in_7(20),
      I4 => done_aux_reg_i_7_0(1),
      I5 => done_aux_reg_i_7_0(0),
      O => \count[3]_i_14_n_0\
    );
\count[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => done_aux_reg_i_7_0(3),
      I1 => \count[3]_i_19_n_0\,
      I2 => a_in_7(27),
      I3 => \count[3]_i_20_n_0\,
      O => \count[3]_i_15_n_0\
    );
\count[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(11),
      I1 => \count[3]_i_21_n_0\,
      I2 => done_aux_reg_i_7_0(3),
      I3 => \count[3]_i_22_n_0\,
      O => \count[3]_i_16_n_0\
    );
\count[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(19),
      I1 => \count[3]_i_23_n_0\,
      I2 => done_aux_reg_i_7_0(3),
      I3 => \count[3]_i_24_n_0\,
      O => \count[3]_i_17_n_0\
    );
\count[3]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(3),
      I1 => \count[3]_i_25_n_0\,
      I2 => done_aux_reg_i_7_0(3),
      I3 => \count[3]_i_26_n_0\,
      O => \count[3]_i_18_n_0\
    );
\count[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6DFF6666FFB6FF"
    )
        port map (
      I0 => a_in_7(26),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(25),
      I3 => a_in_7(24),
      I4 => done_aux_reg_i_7_0(1),
      I5 => done_aux_reg_i_7_0(0),
      O => \count[3]_i_19_n_0\
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => j_reg(3),
      I1 => \count_reg[0]_0\,
      I2 => \^j_reg[2]_0\(1),
      I3 => j_reg(1),
      I4 => \count_reg[0]_1\,
      I5 => done,
      O => count
    );
\count[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFBF6FFFF6FDFF6"
    )
        port map (
      I0 => a_in_7(26),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(25),
      I3 => a_in_7(24),
      I4 => done_aux_reg_i_7_0(1),
      I5 => done_aux_reg_i_7_0(0),
      O => \count[3]_i_20_n_0\
    );
\count[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFEFFBDFF7FDFF"
    )
        port map (
      I0 => a_in_7(10),
      I1 => done_aux_reg_i_7_0(0),
      I2 => done_aux_reg_i_7_0(1),
      I3 => a_in_7(8),
      I4 => a_in_7(9),
      I5 => done_aux_reg_i_7_0(2),
      O => \count[3]_i_21_n_0\
    );
\count[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FD6BD6FF6BD6BF6"
    )
        port map (
      I0 => a_in_7(10),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(9),
      I3 => a_in_7(8),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(1),
      O => \count[3]_i_22_n_0\
    );
\count[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBD6BD6BDFFFF"
    )
        port map (
      I0 => a_in_7(18),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(17),
      I3 => done_aux_reg_i_7_0(1),
      I4 => done_aux_reg_i_7_0(0),
      I5 => a_in_7(16),
      O => \count[3]_i_23_n_0\
    );
\count[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FBFF6DBDB6FFDF6"
    )
        port map (
      I0 => a_in_7(18),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(17),
      I3 => a_in_7(16),
      I4 => done_aux_reg_i_7_0(1),
      I5 => done_aux_reg_i_7_0(0),
      O => \count[3]_i_24_n_0\
    );
\count[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => a_in_7(2),
      I1 => a_in_7(1),
      I2 => done_aux_reg_i_7_0(1),
      I3 => done_aux_reg_i_7_0(0),
      I4 => a_in_7(0),
      I5 => done_aux_reg_i_7_0(2),
      O => \count[3]_i_25_n_0\
    );
\count[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_7(2),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(1),
      I3 => done_aux_reg_i_7_0(0),
      I4 => a_in_7(0),
      I5 => done_aux_reg_i_7_0(1),
      O => \count[3]_i_26_n_0\
    );
\count[3]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__0\(3)
    );
\count[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \count[3]_i_5_n_0\,
      I1 => Q(0),
      I2 => \count[3]_i_6_n_0\,
      I3 => Q(1),
      I4 => \count[3]_i_7_n_0\,
      O => \j_reg[1]_2\
    );
\count[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAABEAAE"
    )
        port map (
      I0 => \count[3]_i_10_n_0\,
      I1 => done_aux_reg_i_7_0(3),
      I2 => done_aux_reg_i_7_0(2),
      I3 => a_in_7(14),
      I4 => a_in_7(15),
      I5 => Q(1),
      O => \count[3]_i_5_n_0\
    );
\count[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(7),
      I1 => \count[3]_i_11_n_0\,
      I2 => done_aux_reg_i_7_0(3),
      I3 => \count[3]_i_12_n_0\,
      O => \count[3]_i_6_n_0\
    );
\count[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(23),
      I1 => \count[3]_i_13_n_0\,
      I2 => done_aux_reg_i_7_0(3),
      I3 => \count[3]_i_14_n_0\,
      O => \count[3]_i_7_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \count[0]_i_1_n_0\,
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__0\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => count_reg(3)
    );
\count_reg[3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_reg[3]_i_8_n_0\,
      I1 => \count_reg[3]_i_9_n_0\,
      O => \j_reg[1]_1\,
      S => Q(0)
    );
\count_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_15_n_0\,
      I1 => \count[3]_i_16_n_0\,
      O => \count_reg[3]_i_8_n_0\,
      S => Q(1)
    );
\count_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_17_n_0\,
      I1 => \count[3]_i_18_n_0\,
      O => \count_reg[3]_i_9_n_0\,
      S => Q(1)
    );
done_aux_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in_7(6),
      I1 => a_in_7(5),
      I2 => a_in_7(4),
      I3 => done_aux_reg_i_7_0(1),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(2),
      O => done_aux_i_10_n_0
    );
done_aux_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in_7(6),
      I1 => done_aux_reg_i_7_0(1),
      I2 => a_in_7(5),
      I3 => done_aux_reg_i_7_0(2),
      I4 => a_in_7(4),
      I5 => done_aux_reg_i_7_0(0),
      O => done_aux_i_11_n_0
    );
done_aux_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B00D000000B00D0"
    )
        port map (
      I0 => a_in_7(22),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(21),
      I3 => a_in_7(20),
      I4 => done_aux_reg_i_7_0(1),
      I5 => done_aux_reg_i_7_0(0),
      O => done_aux_i_12_n_0
    );
done_aux_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9400009429000029"
    )
        port map (
      I0 => a_in_7(22),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(21),
      I3 => a_in_7(20),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(1),
      O => done_aux_i_13_n_0
    );
done_aux_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => done_aux_reg_i_7_0(3),
      I1 => done_aux_i_18_n_0,
      I2 => a_in_7(27),
      I3 => done_aux_i_19_n_0,
      O => done_aux_i_14_n_0
    );
done_aux_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(11),
      I1 => done_aux_i_20_n_0,
      I2 => done_aux_reg_i_7_0(3),
      I3 => done_aux_i_21_n_0,
      O => done_aux_i_15_n_0
    );
done_aux_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(19),
      I1 => done_aux_i_22_n_0,
      I2 => done_aux_reg_i_7_0(3),
      I3 => done_aux_i_23_n_0,
      O => done_aux_i_16_n_0
    );
done_aux_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(3),
      I1 => done_aux_i_24_n_0,
      I2 => done_aux_reg_i_7_0(3),
      I3 => done_aux_i_25_n_0,
      O => done_aux_i_17_n_0
    );
done_aux_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0092990000994900"
    )
        port map (
      I0 => a_in_7(26),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(25),
      I3 => a_in_7(24),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(1),
      O => done_aux_i_18_n_0
    );
done_aux_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9004009009002009"
    )
        port map (
      I0 => a_in_7(26),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(25),
      I3 => a_in_7(24),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(1),
      O => done_aux_i_19_n_0
    );
\done_aux_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4540"
    )
        port map (
      I0 => j_reg(3),
      I1 => \done_aux_i_2__0_n_0\,
      I2 => j_reg(1),
      I3 => done_aux_reg_2,
      I4 => done,
      O => \done_aux_i_1__0_n_0\
    );
done_aux_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => done_aux_i_4_n_0,
      I1 => Q(0),
      I2 => done_aux_i_5_n_0,
      I3 => Q(1),
      I4 => done_aux_i_6_n_0,
      O => \j_reg[1]_3\
    );
done_aux_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041008200200"
    )
        port map (
      I0 => a_in_7(10),
      I1 => done_aux_reg_i_7_0(1),
      I2 => done_aux_reg_i_7_0(0),
      I3 => a_in_7(8),
      I4 => a_in_7(9),
      I5 => done_aux_reg_i_7_0(2),
      O => done_aux_i_20_n_0
    );
done_aux_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9029429009429409"
    )
        port map (
      I0 => a_in_7(10),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(9),
      I3 => a_in_7(8),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(1),
      O => done_aux_i_21_n_0
    );
done_aux_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0042009429004200"
    )
        port map (
      I0 => a_in_7(18),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(17),
      I3 => done_aux_reg_i_7_0(0),
      I4 => done_aux_reg_i_7_0(1),
      I5 => a_in_7(16),
      O => done_aux_i_22_n_0
    );
done_aux_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9040249009240209"
    )
        port map (
      I0 => a_in_7(18),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(17),
      I3 => a_in_7(16),
      I4 => done_aux_reg_i_7_0(0),
      I5 => done_aux_reg_i_7_0(1),
      O => done_aux_i_23_n_0
    );
done_aux_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => a_in_7(2),
      I1 => a_in_7(1),
      I2 => done_aux_reg_i_7_0(0),
      I3 => done_aux_reg_i_7_0(1),
      I4 => a_in_7(0),
      I5 => done_aux_reg_i_7_0(2),
      O => done_aux_i_24_n_0
    );
done_aux_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_7(2),
      I1 => done_aux_reg_i_7_0(2),
      I2 => a_in_7(1),
      I3 => done_aux_reg_i_7_0(0),
      I4 => a_in_7(0),
      I5 => done_aux_reg_i_7_0(1),
      O => done_aux_i_25_n_0
    );
\done_aux_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F4A"
    )
        port map (
      I0 => \^j_reg[2]_0\(1),
      I1 => done_aux_reg_0,
      I2 => \^j_reg[2]_0\(0),
      I3 => done_aux_reg_1,
      O => \done_aux_i_2__0_n_0\
    );
done_aux_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8AA82AA2"
    )
        port map (
      I0 => done_aux_i_9_n_0,
      I1 => done_aux_reg_i_7_0(3),
      I2 => done_aux_reg_i_7_0(2),
      I3 => a_in_7(14),
      I4 => a_in_7(15),
      I5 => Q(1),
      O => done_aux_i_4_n_0
    );
done_aux_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(7),
      I1 => done_aux_i_10_n_0,
      I2 => done_aux_reg_i_7_0(3),
      I3 => done_aux_i_11_n_0,
      O => done_aux_i_5_n_0
    );
done_aux_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(23),
      I1 => done_aux_i_12_n_0,
      I2 => done_aux_reg_i_7_0(3),
      I3 => done_aux_i_13_n_0,
      O => done_aux_i_6_n_0
    );
done_aux_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => a_in_7(13),
      I1 => a_in_7(12),
      I2 => done_aux_reg_i_7_0(0),
      I3 => done_aux_reg_i_7_0(1),
      O => done_aux_i_9_n_0
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__0_n_0\,
      Q => done
    );
done_aux_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => done_aux_reg_i_7_n_0,
      I1 => done_aux_reg_i_8_n_0,
      O => \j_reg[1]_0\,
      S => Q(0)
    );
done_aux_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_14_n_0,
      I1 => done_aux_i_15_n_0,
      O => done_aux_reg_i_7_n_0,
      S => Q(1)
    );
done_aux_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_16_n_0,
      I1 => done_aux_i_17_n_0,
      O => done_aux_reg_i_8_n_0,
      S => Q(1)
    );
\j[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[2]_0\(0),
      O => \j[0]_i_1__0_n_0\
    );
\j[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(1),
      I1 => \^j_reg[2]_0\(0),
      O => \p_0_in__0\(1)
    );
\j[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^j_reg[2]_0\(0),
      I1 => j_reg(1),
      I2 => \^j_reg[2]_0\(1),
      O => \p_0_in__0\(2)
    );
\j[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => j_reg(3),
      I1 => \^j_reg[2]_0\(1),
      I2 => j_reg(1),
      I3 => done,
      O => j0
    );
\j[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^j_reg[2]_0\(1),
      I1 => \^j_reg[2]_0\(0),
      I2 => j_reg(1),
      O => \p_0_in__0\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__0_n_0\,
      Q => \^j_reg[2]_0\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => j_reg(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(2),
      Q => \^j_reg[2]_0\(1)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(3),
      Q => j_reg(3)
    );
\valid_aux_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => j_reg(3),
      I1 => \valid_aux_i_2__0_n_0\,
      I2 => j_reg(1),
      I3 => valid,
      O => \valid_aux_i_1__0_n_0\
    );
\valid_aux_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => \^j_reg[2]_0\(0),
      I4 => \^j_reg[2]_0\(1),
      I5 => count_reg(3),
      O => \valid_aux_i_2__0_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__0_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized1\ is
  port (
    \count_reg_reg[3]\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \j_reg[2]_1\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_6 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    done_aux_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_1 : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \count_reg[0]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_6 : in STD_LOGIC;
    done_aux_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized1\ : entity is "ctrl_logic";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized1\ is
  signal count : STD_LOGIC;
  signal \count[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_12__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_13__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_14__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_15__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_16__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_17__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_18__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_19__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_20__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_21__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_22__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_7__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_9__0_n_0\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_10__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_11__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_12__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_13__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_14__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_15__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_16__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_17__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_18__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_19__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_20__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_21__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_22__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_2__1_n_0\ : STD_LOGIC;
  signal done_aux_i_8_n_0 : STD_LOGIC;
  signal \done_aux_i_9__0_n_0\ : STD_LOGIC;
  signal done_aux_reg_i_6_n_0 : STD_LOGIC;
  signal \done_aux_reg_i_7__0_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__1_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^j_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__1_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count[0]_i_1__3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count[1]_i_1__3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count[2]_i_1__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count[3]_i_10__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count[3]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \done_aux_i_10__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \j[0]_i_1__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \j[1]_i_1__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \j[2]_i_1__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \j[3]_i_2__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \valid_aux_i_1__1\ : label is "soft_lutpair42";
begin
  \j_reg[1]_0\(1 downto 0) <= \^j_reg[1]_0\(1 downto 0);
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => \count_reg_reg[0]\(2),
      O => \FSM_onehot_state_reg[2]\(0)
    );
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => \FSM_onehot_state_reg[2]\(1)
    );
\FSM_onehot_state[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => done,
      I2 => \count_reg_reg[0]\(3),
      I3 => next_out_6,
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => E(0)
    );
\acks_out_reg_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]\(0),
      I4 => \count_reg_reg[0]\(4),
      I5 => \count_reg_reg[0]\(1),
      O => \FSM_onehot_state_reg[2]_0\
    );
\count[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__1\(0)
    );
\count[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__1\(1)
    );
\count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \plusOp__1\(2)
    );
\count[3]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7DBE"
    )
        port map (
      I0 => a_in_6(13),
      I1 => a_in_6(12),
      I2 => Q(0),
      I3 => Q(1),
      O => \count[3]_i_10__0_n_0\
    );
\count[3]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(23),
      I1 => \count[3]_i_15__0_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_16__0_n_0\,
      O => \count[3]_i_11__0_n_0\
    );
\count[3]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(19),
      I1 => \count[3]_i_17__0_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_18__0_n_0\,
      O => \count[3]_i_12__0_n_0\
    );
\count[3]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(7),
      I1 => \count[3]_i_19__0_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_20__0_n_0\,
      O => \count[3]_i_13__0_n_0\
    );
\count[3]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(3),
      I1 => \count[3]_i_21__0_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_22__0_n_0\,
      O => \count[3]_i_14__0_n_0\
    );
\count[3]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFF42FFFFF2F"
    )
        port map (
      I0 => a_in_6(22),
      I1 => Q(2),
      I2 => a_in_6(21),
      I3 => a_in_6(20),
      I4 => Q(0),
      I5 => Q(1),
      O => \count[3]_i_15__0_n_0\
    );
\count[3]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6BFFFF6BD6FFFFD6"
    )
        port map (
      I0 => a_in_6(22),
      I1 => Q(2),
      I2 => a_in_6(21),
      I3 => a_in_6(20),
      I4 => Q(0),
      I5 => Q(1),
      O => \count[3]_i_16__0_n_0\
    );
\count[3]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBDFF6BD6FFBDFF"
    )
        port map (
      I0 => a_in_6(18),
      I1 => Q(2),
      I2 => a_in_6(17),
      I3 => Q(0),
      I4 => Q(1),
      I5 => a_in_6(16),
      O => \count[3]_i_17__0_n_0\
    );
\count[3]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FBFDB6FF6DBFDF6"
    )
        port map (
      I0 => a_in_6(18),
      I1 => Q(2),
      I2 => a_in_6(17),
      I3 => a_in_6(16),
      I4 => Q(0),
      I5 => Q(1),
      O => \count[3]_i_18__0_n_0\
    );
\count[3]_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in_6(6),
      I1 => a_in_6(5),
      I2 => a_in_6(4),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[3]_i_19__0_n_0\
    );
\count[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => j_reg(3),
      I1 => \count[3]_i_3__1_n_0\,
      I2 => j_reg(2),
      I3 => \count_reg[0]_1\,
      I4 => done,
      O => count
    );
\count[3]_i_20__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in_6(6),
      I1 => Q(1),
      I2 => a_in_6(5),
      I3 => Q(2),
      I4 => a_in_6(4),
      I5 => Q(0),
      O => \count[3]_i_20__0_n_0\
    );
\count[3]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => a_in_6(2),
      I1 => a_in_6(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => a_in_6(0),
      I5 => Q(2),
      O => \count[3]_i_21__0_n_0\
    );
\count[3]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_6(2),
      I1 => Q(2),
      I2 => a_in_6(1),
      I3 => Q(0),
      I4 => a_in_6(0),
      I5 => Q(1),
      O => \count[3]_i_22__0_n_0\
    );
\count[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      O => \plusOp__1\(3)
    );
\count[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_6(11),
      I1 => \count[3]_i_5__0_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_6__0_n_0\,
      I4 => \count_reg[0]_0\(0),
      I5 => \count[3]_i_7__0_n_0\,
      O => \count_reg_reg[3]_0\
    );
\count[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054511040"
    )
        port map (
      I0 => \^j_reg[1]_0\(1),
      I1 => a_in_5(0),
      I2 => \count_reg[0]_2\,
      I3 => D(0),
      I4 => \count_reg[0]_3\,
      I5 => \^j_reg[1]_0\(0),
      O => \count[3]_i_3__1_n_0\
    );
\count[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFEFFBDFF7FDFF"
    )
        port map (
      I0 => a_in_6(10),
      I1 => Q(0),
      I2 => Q(1),
      I3 => a_in_6(8),
      I4 => a_in_6(9),
      I5 => Q(2),
      O => \count[3]_i_5__0_n_0\
    );
\count[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FD6F6BDBD6F6BF6"
    )
        port map (
      I0 => a_in_6(10),
      I1 => Q(2),
      I2 => a_in_6(9),
      I3 => a_in_6(8),
      I4 => Q(1),
      I5 => Q(0),
      O => \count[3]_i_6__0_n_0\
    );
\count[3]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4182"
    )
        port map (
      I0 => a_in_6(15),
      I1 => a_in_6(14),
      I2 => Q(2),
      I3 => Q(3),
      I4 => \count[3]_i_10__0_n_0\,
      O => \count[3]_i_7__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__1\(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__1\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__1\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__1\(3),
      Q => count_reg(3)
    );
\count_reg[3]_i_4__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_reg[3]_i_8__0_n_0\,
      I1 => \count_reg[3]_i_9__0_n_0\,
      O => \j_reg[2]_1\,
      S => \count_reg[0]_0\(1)
    );
\count_reg[3]_i_8__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_11__0_n_0\,
      I1 => \count[3]_i_12__0_n_0\,
      O => \count_reg[3]_i_8__0_n_0\,
      S => \count_reg[0]_0\(0)
    );
\count_reg[3]_i_9__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_13__0_n_0\,
      I1 => \count[3]_i_14__0_n_0\,
      O => \count_reg[3]_i_9__0_n_0\,
      S => \count_reg[0]_0\(0)
    );
\done_aux_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => a_in_6(13),
      I1 => a_in_6(12),
      I2 => Q(1),
      I3 => Q(0),
      O => \done_aux_i_10__0_n_0\
    );
\done_aux_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(23),
      I1 => \done_aux_i_15__0_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_16__0_n_0\,
      O => \done_aux_i_11__0_n_0\
    );
\done_aux_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(19),
      I1 => \done_aux_i_17__0_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_18__0_n_0\,
      O => \done_aux_i_12__0_n_0\
    );
\done_aux_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(7),
      I1 => \done_aux_i_19__0_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_20__0_n_0\,
      O => \done_aux_i_13__0_n_0\
    );
\done_aux_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(3),
      I1 => \done_aux_i_21__0_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_22__0_n_0\,
      O => \done_aux_i_14__0_n_0\
    );
\done_aux_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B00D000000B00D0"
    )
        port map (
      I0 => a_in_6(22),
      I1 => Q(2),
      I2 => a_in_6(21),
      I3 => a_in_6(20),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_15__0_n_0\
    );
\done_aux_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9400290000940029"
    )
        port map (
      I0 => a_in_6(22),
      I1 => Q(2),
      I2 => a_in_6(21),
      I3 => a_in_6(20),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_16__0_n_0\
    );
\done_aux_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000429429420000"
    )
        port map (
      I0 => a_in_6(18),
      I1 => Q(2),
      I2 => a_in_6(17),
      I3 => Q(1),
      I4 => Q(0),
      I5 => a_in_6(16),
      O => \done_aux_i_17__0_n_0\
    );
\done_aux_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9040092424900209"
    )
        port map (
      I0 => a_in_6(18),
      I1 => Q(2),
      I2 => a_in_6(17),
      I3 => a_in_6(16),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_18__0_n_0\
    );
\done_aux_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in_6(6),
      I1 => a_in_6(5),
      I2 => a_in_6(4),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_19__0_n_0\
    );
\done_aux_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4540"
    )
        port map (
      I0 => j_reg(3),
      I1 => \done_aux_i_2__1_n_0\,
      I2 => j_reg(2),
      I3 => done_aux_reg_2,
      I4 => done,
      O => \done_aux_i_1__2_n_0\
    );
\done_aux_i_20__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in_6(6),
      I1 => Q(1),
      I2 => a_in_6(5),
      I3 => Q(2),
      I4 => a_in_6(4),
      I5 => Q(0),
      O => \done_aux_i_20__0_n_0\
    );
\done_aux_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => a_in_6(2),
      I1 => a_in_6(1),
      I2 => Q(1),
      I3 => Q(0),
      I4 => a_in_6(0),
      I5 => Q(2),
      O => \done_aux_i_21__0_n_0\
    );
\done_aux_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_6(2),
      I1 => Q(2),
      I2 => a_in_6(1),
      I3 => Q(0),
      I4 => a_in_6(0),
      I5 => Q(1),
      O => \done_aux_i_22__0_n_0\
    );
\done_aux_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAFEAE"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      I1 => done_aux_reg_0,
      I2 => D(0),
      I3 => done_aux_reg_1,
      I4 => a_in_5(0),
      I5 => \^j_reg[1]_0\(1),
      O => \done_aux_i_2__1_n_0\
    );
\done_aux_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(11),
      I1 => done_aux_i_8_n_0,
      I2 => Q(3),
      I3 => \done_aux_i_9__0_n_0\,
      O => \count_reg_reg[3]\
    );
\done_aux_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE7D0000"
    )
        port map (
      I0 => a_in_6(15),
      I1 => a_in_6(14),
      I2 => Q(2),
      I3 => Q(3),
      I4 => \done_aux_i_10__0_n_0\,
      O => \count_reg_reg[2]\
    );
done_aux_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041008200200"
    )
        port map (
      I0 => a_in_6(10),
      I1 => Q(1),
      I2 => Q(0),
      I3 => a_in_6(8),
      I4 => a_in_6(9),
      I5 => Q(2),
      O => done_aux_i_8_n_0
    );
\done_aux_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9029094242909409"
    )
        port map (
      I0 => a_in_6(10),
      I1 => Q(2),
      I2 => a_in_6(9),
      I3 => a_in_6(8),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_9__0_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__2_n_0\,
      Q => done
    );
\done_aux_reg_i_3__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => done_aux_reg_i_6_n_0,
      I1 => \done_aux_reg_i_7__0_n_0\,
      O => \j_reg[2]_0\,
      S => \count_reg[0]_0\(1)
    );
done_aux_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_11__0_n_0\,
      I1 => \done_aux_i_12__0_n_0\,
      O => done_aux_reg_i_6_n_0,
      S => \count_reg[0]_0\(0)
    );
\done_aux_reg_i_7__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_13__0_n_0\,
      I1 => \done_aux_i_14__0_n_0\,
      O => \done_aux_reg_i_7__0_n_0\,
      S => \count_reg[0]_0\(0)
    );
\j[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      O => \j[0]_i_1__1_n_0\
    );
\j[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      I1 => \^j_reg[1]_0\(1),
      O => \p_0_in__1\(1)
    );
\j[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_reg(2),
      I1 => \^j_reg[1]_0\(0),
      I2 => \^j_reg[1]_0\(1),
      O => \p_0_in__1\(2)
    );
\j[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => j_reg(3),
      I1 => \^j_reg[1]_0\(0),
      I2 => \^j_reg[1]_0\(1),
      I3 => j_reg(2),
      I4 => done,
      O => j0
    );
\j[3]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      I1 => \^j_reg[1]_0\(1),
      I2 => j_reg(2),
      O => \p_0_in__1\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__1_n_0\,
      Q => \^j_reg[1]_0\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__1\(1),
      Q => \^j_reg[1]_0\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__1\(2),
      Q => j_reg(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__1\(3),
      Q => j_reg(3)
    );
\valid_aux_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => j_reg(3),
      I1 => \valid_aux_i_2__1_n_0\,
      I2 => j_reg(2),
      I3 => valid,
      O => \valid_aux_i_1__1_n_0\
    );
\valid_aux_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => \^j_reg[1]_0\(1),
      I5 => \^j_reg[1]_0\(0),
      O => \valid_aux_i_2__1_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__1_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized2\ is
  port (
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \done_aux_reg_i_7__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \done_aux_reg_i_3__1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_5 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized2\ : entity is "ctrl_logic";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized2\ is
  signal count : STD_LOGIC;
  signal \count[3]_i_10__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_11__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_12__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_13__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_14__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_15__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_16__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_17__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_18__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_19__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_9_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_8__1_n_0\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_10__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_11__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_12__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_13__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_14__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_15__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_16__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_17__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_18__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_8__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_9__1_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_6__0_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_7__1_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__2_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^j_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__2_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[1]_i_1__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[2]_i_1__3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count[3]_i_17__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[3]_i_2__3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \done_aux_i_16__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \j[0]_i_1__2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \j[1]_i_1__2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \j[2]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \valid_aux_i_1__2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \valid_aux_i_2__4\ : label is "soft_lutpair30";
begin
  \j_reg[1]_0\(1 downto 0) <= \^j_reg[1]_0\(1 downto 0);
\FSM_onehot_state[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => \count_reg_reg[0]_0\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(2),
      I1 => done,
      I2 => \count_reg_reg[0]_0\(3),
      I3 => next_out_5,
      I4 => \count_reg_reg[0]_0\(0),
      I5 => \count_reg_reg[0]_0\(1),
      O => E(0)
    );
\acks_out_reg_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]_0\(0),
      I4 => \count_reg_reg[0]_0\(4),
      I5 => \count_reg_reg[0]_0\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__2\(0)
    );
\count[1]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__2\(1)
    );
\count[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \plusOp__2\(2)
    );
\count[3]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(7),
      I1 => \count[3]_i_15__1_n_0\,
      I2 => \done_aux_reg_i_7__1_0\(3),
      I3 => \count[3]_i_16__1_n_0\,
      O => \count[3]_i_10__1_n_0\
    );
\count[3]_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4182"
    )
        port map (
      I0 => a_in_5(11),
      I1 => a_in_5(10),
      I2 => \done_aux_reg_i_7__1_0\(2),
      I3 => \done_aux_reg_i_7__1_0\(3),
      I4 => \count[3]_i_17__1_n_0\,
      O => \count[3]_i_11__1_n_0\
    );
\count[3]_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(3),
      I1 => \count[3]_i_18__1_n_0\,
      I2 => \done_aux_reg_i_7__1_0\(3),
      I3 => \count[3]_i_19__1_n_0\,
      O => \count[3]_i_12__1_n_0\
    );
\count[3]_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBDFF6BD6FFBDFF"
    )
        port map (
      I0 => a_in_5(14),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => a_in_5(13),
      I3 => \done_aux_reg_i_7__1_0\(0),
      I4 => \done_aux_reg_i_7__1_0\(1),
      I5 => a_in_5(12),
      O => \count[3]_i_13__1_n_0\
    );
\count[3]_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FBFDB6FF6DBFDF6"
    )
        port map (
      I0 => a_in_5(14),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => a_in_5(13),
      I3 => a_in_5(12),
      I4 => \done_aux_reg_i_7__1_0\(0),
      I5 => \done_aux_reg_i_7__1_0\(1),
      O => \count[3]_i_14__1_n_0\
    );
\count[3]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFEFFBDFF7FDFF"
    )
        port map (
      I0 => a_in_5(6),
      I1 => \done_aux_reg_i_7__1_0\(0),
      I2 => \done_aux_reg_i_7__1_0\(1),
      I3 => a_in_5(4),
      I4 => a_in_5(5),
      I5 => \done_aux_reg_i_7__1_0\(2),
      O => \count[3]_i_15__1_n_0\
    );
\count[3]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FD6F6BDBD6F6BF6"
    )
        port map (
      I0 => a_in_5(6),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => a_in_5(5),
      I3 => a_in_5(4),
      I4 => \done_aux_reg_i_7__1_0\(1),
      I5 => \done_aux_reg_i_7__1_0\(0),
      O => \count[3]_i_16__1_n_0\
    );
\count[3]_i_17__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7DBE"
    )
        port map (
      I0 => a_in_5(9),
      I1 => a_in_5(8),
      I2 => \done_aux_reg_i_7__1_0\(0),
      I3 => \done_aux_reg_i_7__1_0\(1),
      O => \count[3]_i_17__1_n_0\
    );
\count[3]_i_18__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in_5(2),
      I1 => a_in_5(1),
      I2 => a_in_5(0),
      I3 => \done_aux_reg_i_7__1_0\(0),
      I4 => \done_aux_reg_i_7__1_0\(1),
      I5 => \done_aux_reg_i_7__1_0\(2),
      O => \count[3]_i_18__1_n_0\
    );
\count[3]_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in_5(2),
      I1 => \done_aux_reg_i_7__1_0\(1),
      I2 => a_in_5(1),
      I3 => \done_aux_reg_i_7__1_0\(2),
      I4 => a_in_5(0),
      I5 => \done_aux_reg_i_7__1_0\(0),
      O => \count[3]_i_19__1_n_0\
    );
\count[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005404"
    )
        port map (
      I0 => j_reg(2),
      I1 => \count_reg[0]_0\,
      I2 => \^j_reg[1]_0\(1),
      I3 => \count_reg[0]_1\,
      I4 => done,
      O => count
    );
\count[3]_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \plusOp__2\(3)
    );
\count[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \done_aux_reg_i_7__1_0\(0),
      I3 => \done_aux_reg_i_7__1_0\(1),
      I4 => Q(0),
      I5 => \done_aux_reg_i_7__1_0\(2),
      O => \count_reg_reg[0]\
    );
\count[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => Q(2),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => Q(1),
      I3 => \done_aux_reg_i_7__1_0\(0),
      I4 => Q(0),
      I5 => \done_aux_reg_i_7__1_0\(1),
      O => \count_reg_reg[2]_0\
    );
\count[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(15),
      I1 => \count[3]_i_13__1_n_0\,
      I2 => \done_aux_reg_i_7__1_0\(3),
      I3 => \count[3]_i_14__1_n_0\,
      O => \count[3]_i_9_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__2\(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__2\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__2\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__2\(3),
      Q => count_reg(3)
    );
\count_reg[3]_i_4__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_reg[3]_i_7_n_0\,
      I1 => \count_reg[3]_i_8__1_n_0\,
      O => \j_reg[0]_1\,
      S => \done_aux_reg_i_3__1_0\(0)
    );
\count_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_9_n_0\,
      I1 => \count[3]_i_10__1_n_0\,
      O => \count_reg[3]_i_7_n_0\,
      S => \done_aux_reg_i_3__1_0\(1)
    );
\count_reg[3]_i_8__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[3]_i_11__1_n_0\,
      I1 => \count[3]_i_12__1_n_0\,
      O => \count_reg[3]_i_8__1_n_0\,
      S => \done_aux_reg_i_3__1_0\(1)
    );
\done_aux_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE7D0000"
    )
        port map (
      I0 => a_in_5(11),
      I1 => a_in_5(10),
      I2 => \done_aux_reg_i_7__1_0\(2),
      I3 => \done_aux_reg_i_7__1_0\(3),
      I4 => \done_aux_i_16__1_n_0\,
      O => \done_aux_i_10__1_n_0\
    );
\done_aux_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(3),
      I1 => \done_aux_i_17__1_n_0\,
      I2 => \done_aux_reg_i_7__1_0\(3),
      I3 => \done_aux_i_18__1_n_0\,
      O => \done_aux_i_11__1_n_0\
    );
\done_aux_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000429429420000"
    )
        port map (
      I0 => a_in_5(14),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => a_in_5(13),
      I3 => \done_aux_reg_i_7__1_0\(1),
      I4 => \done_aux_reg_i_7__1_0\(0),
      I5 => a_in_5(12),
      O => \done_aux_i_12__1_n_0\
    );
\done_aux_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9040092424900209"
    )
        port map (
      I0 => a_in_5(14),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => a_in_5(13),
      I3 => a_in_5(12),
      I4 => \done_aux_reg_i_7__1_0\(1),
      I5 => \done_aux_reg_i_7__1_0\(0),
      O => \done_aux_i_13__1_n_0\
    );
\done_aux_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041008200200"
    )
        port map (
      I0 => a_in_5(6),
      I1 => \done_aux_reg_i_7__1_0\(1),
      I2 => \done_aux_reg_i_7__1_0\(0),
      I3 => a_in_5(4),
      I4 => a_in_5(5),
      I5 => \done_aux_reg_i_7__1_0\(2),
      O => \done_aux_i_14__1_n_0\
    );
\done_aux_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9029094242909409"
    )
        port map (
      I0 => a_in_5(6),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => a_in_5(5),
      I3 => a_in_5(4),
      I4 => \done_aux_reg_i_7__1_0\(1),
      I5 => \done_aux_reg_i_7__1_0\(0),
      O => \done_aux_i_15__1_n_0\
    );
\done_aux_i_16__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => a_in_5(9),
      I1 => a_in_5(8),
      I2 => \done_aux_reg_i_7__1_0\(1),
      I3 => \done_aux_reg_i_7__1_0\(0),
      O => \done_aux_i_16__1_n_0\
    );
\done_aux_i_17__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in_5(2),
      I1 => a_in_5(1),
      I2 => a_in_5(0),
      I3 => \done_aux_reg_i_7__1_0\(1),
      I4 => \done_aux_reg_i_7__1_0\(0),
      I5 => \done_aux_reg_i_7__1_0\(2),
      O => \done_aux_i_17__1_n_0\
    );
\done_aux_i_18__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in_5(2),
      I1 => \done_aux_reg_i_7__1_0\(1),
      I2 => a_in_5(1),
      I3 => \done_aux_reg_i_7__1_0\(2),
      I4 => a_in_5(0),
      I5 => \done_aux_reg_i_7__1_0\(0),
      O => \done_aux_i_18__1_n_0\
    );
\done_aux_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF222E"
    )
        port map (
      I0 => done_aux_reg_0,
      I1 => j_reg(2),
      I2 => \^j_reg[1]_0\(0),
      I3 => \^j_reg[1]_0\(1),
      I4 => done,
      O => \done_aux_i_1__3_n_0\
    );
\done_aux_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => Q(2),
      I1 => \done_aux_reg_i_7__1_0\(2),
      I2 => Q(1),
      I3 => \done_aux_reg_i_7__1_0\(0),
      I4 => Q(0),
      I5 => \done_aux_reg_i_7__1_0\(1),
      O => \count_reg_reg[2]\
    );
\done_aux_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \done_aux_reg_i_7__1_0\(1),
      I3 => \done_aux_reg_i_7__1_0\(0),
      I4 => Q(0),
      I5 => \done_aux_reg_i_7__1_0\(2),
      O => \count_reg_reg[1]\
    );
\done_aux_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(15),
      I1 => \done_aux_i_12__1_n_0\,
      I2 => \done_aux_reg_i_7__1_0\(3),
      I3 => \done_aux_i_13__1_n_0\,
      O => \done_aux_i_8__0_n_0\
    );
\done_aux_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(7),
      I1 => \done_aux_i_14__1_n_0\,
      I2 => \done_aux_reg_i_7__1_0\(3),
      I3 => \done_aux_i_15__1_n_0\,
      O => \done_aux_i_9__1_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__3_n_0\,
      Q => done
    );
\done_aux_reg_i_3__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_reg_i_6__0_n_0\,
      I1 => \done_aux_reg_i_7__1_n_0\,
      O => \j_reg[0]_0\,
      S => \done_aux_reg_i_3__1_0\(0)
    );
\done_aux_reg_i_6__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_8__0_n_0\,
      I1 => \done_aux_i_9__1_n_0\,
      O => \done_aux_reg_i_6__0_n_0\,
      S => \done_aux_reg_i_3__1_0\(1)
    );
\done_aux_reg_i_7__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_10__1_n_0\,
      I1 => \done_aux_i_11__1_n_0\,
      O => \done_aux_reg_i_7__1_n_0\,
      S => \done_aux_reg_i_3__1_0\(1)
    );
\j[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      O => \j[0]_i_1__2_n_0\
    );
\j[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[1]_0\(1),
      I1 => \^j_reg[1]_0\(0),
      O => \p_0_in__2\(1)
    );
\j[2]_i_1__2\: unisim.vcomponents.LUT2
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
      I0 => \^j_reg[1]_0\(1),
      I1 => \^j_reg[1]_0\(0),
      O => \p_0_in__2\(2)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__2_n_0\,
      Q => \^j_reg[1]_0\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(1),
      Q => \^j_reg[1]_0\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(2),
      Q => j_reg(2)
    );
\valid_aux_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => j_reg(2),
      I1 => \valid_aux_i_2__4_n_0\,
      I2 => count_reg(1),
      I3 => valid,
      O => \valid_aux_i_1__2_n_0\
    );
\valid_aux_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^j_reg[1]_0\(1),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(3),
      I4 => \^j_reg[1]_0\(0),
      O => \valid_aux_i_2__4_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__2_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized3\ is
  port (
    \j_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_4 : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized3\ : entity is "ctrl_logic";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized3\ is
  signal count : STD_LOGIC;
  signal \count[3]_i_10__2_n_0\ : STD_LOGIC;
  signal \count[3]_i_11__2_n_0\ : STD_LOGIC;
  signal \count[3]_i_12__2_n_0\ : STD_LOGIC;
  signal \count[3]_i_13__2_n_0\ : STD_LOGIC;
  signal \count[3]_i_5__2_n_0\ : STD_LOGIC;
  signal \count[3]_i_6__2_n_0\ : STD_LOGIC;
  signal \count[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_8_n_0\ : STD_LOGIC;
  signal \count[3]_i_9__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done : STD_LOGIC;
  signal \done_aux_i_10__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_11__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_12__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_13__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_14__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_15__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_5__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_6__0_n_0\ : STD_LOGIC;
  signal done_aux_i_7_n_0 : STD_LOGIC;
  signal \done_aux_i_8__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_9__2_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_3__2_n_0\ : STD_LOGIC;
  signal done_aux_reg_i_4_n_0 : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__3_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^j_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__4_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[0]_i_1__4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count[1]_i_1__5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[3]_i_11__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[3]_i_2__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \done_aux_i_1__4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \done_aux_i_9__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \j[1]_i_1__3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \j[2]_i_2__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \valid_aux_i_1__4\ : label is "soft_lutpair23";
begin
  \j_reg[1]_1\(1 downto 0) <= \^j_reg[1]_1\(1 downto 0);
\FSM_onehot_state[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => \count_reg_reg[0]\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => done,
      I2 => \count_reg_reg[0]\(3),
      I3 => next_out_4,
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => E(0)
    );
\acks_out_reg_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]\(1),
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(4),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__3\(0)
    );
\count[1]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__3\(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__3\(2)
    );
\count[3]_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(7),
      I1 => \count[3]_i_12__2_n_0\,
      I2 => \count_reg[0]_0\(3),
      I3 => \count[3]_i_13__2_n_0\,
      O => \count[3]_i_10__2_n_0\
    );
\count[3]_i_11__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7DBE"
    )
        port map (
      I0 => a_in_4(13),
      I1 => a_in_4(12),
      I2 => \count_reg[0]_0\(0),
      I3 => \count_reg[0]_0\(1),
      O => \count[3]_i_11__2_n_0\
    );
\count[3]_i_12__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in_4(6),
      I1 => a_in_4(5),
      I2 => a_in_4(4),
      I3 => \count_reg[0]_0\(0),
      I4 => \count_reg[0]_0\(1),
      I5 => \count_reg[0]_0\(2),
      O => \count[3]_i_12__2_n_0\
    );
\count[3]_i_13__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in_4(6),
      I1 => \count_reg[0]_0\(1),
      I2 => a_in_4(5),
      I3 => \count_reg[0]_0\(2),
      I4 => a_in_4(4),
      I5 => \count_reg[0]_0\(0),
      O => \count[3]_i_13__2_n_0\
    );
\count[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005404"
    )
        port map (
      I0 => j_reg(2),
      I1 => \count_reg[0]_1\,
      I2 => \^j_reg[1]_1\(0),
      I3 => \count_reg[0]_2\,
      I4 => done,
      O => count
    );
\count[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__3\(3)
    );
\count[3]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_4(11),
      I1 => \count[3]_i_5__2_n_0\,
      I2 => \count_reg[0]_0\(3),
      I3 => \count[3]_i_6__2_n_0\,
      I4 => Q(0),
      I5 => \count[3]_i_7__1_n_0\,
      O => \count_reg_reg[3]_0\
    );
\count[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_4(3),
      I1 => \count[3]_i_8_n_0\,
      I2 => \count_reg[0]_0\(3),
      I3 => \count[3]_i_9__0_n_0\,
      I4 => Q(0),
      I5 => \count[3]_i_10__2_n_0\,
      O => \count_reg_reg[3]\
    );
\count[3]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFEFFBDFF7FDFF"
    )
        port map (
      I0 => a_in_4(10),
      I1 => \count_reg[0]_0\(0),
      I2 => \count_reg[0]_0\(1),
      I3 => a_in_4(8),
      I4 => a_in_4(9),
      I5 => \count_reg[0]_0\(2),
      O => \count[3]_i_5__2_n_0\
    );
\count[3]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FD6F6BDBD6F6BF6"
    )
        port map (
      I0 => a_in_4(10),
      I1 => \count_reg[0]_0\(2),
      I2 => a_in_4(9),
      I3 => a_in_4(8),
      I4 => \count_reg[0]_0\(1),
      I5 => \count_reg[0]_0\(0),
      O => \count[3]_i_6__2_n_0\
    );
\count[3]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4182"
    )
        port map (
      I0 => a_in_4(15),
      I1 => a_in_4(14),
      I2 => \count_reg[0]_0\(2),
      I3 => \count_reg[0]_0\(3),
      I4 => \count[3]_i_11__2_n_0\,
      O => \count[3]_i_7__1_n_0\
    );
\count[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => a_in_4(2),
      I1 => a_in_4(1),
      I2 => \count_reg[0]_0\(0),
      I3 => \count_reg[0]_0\(1),
      I4 => a_in_4(0),
      I5 => \count_reg[0]_0\(2),
      O => \count[3]_i_8_n_0\
    );
\count[3]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_4(2),
      I1 => \count_reg[0]_0\(2),
      I2 => a_in_4(1),
      I3 => \count_reg[0]_0\(0),
      I4 => a_in_4(0),
      I5 => \count_reg[0]_0\(1),
      O => \count[3]_i_9__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__3\(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__3\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__3\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__3\(3),
      Q => count_reg(3)
    );
\done_aux_i_10__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041008200200"
    )
        port map (
      I0 => a_in_4(10),
      I1 => \count_reg[0]_0\(1),
      I2 => \count_reg[0]_0\(0),
      I3 => a_in_4(8),
      I4 => a_in_4(9),
      I5 => \count_reg[0]_0\(2),
      O => \done_aux_i_10__2_n_0\
    );
\done_aux_i_11__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9029094242909409"
    )
        port map (
      I0 => a_in_4(10),
      I1 => \count_reg[0]_0\(2),
      I2 => a_in_4(9),
      I3 => a_in_4(8),
      I4 => \count_reg[0]_0\(1),
      I5 => \count_reg[0]_0\(0),
      O => \done_aux_i_11__2_n_0\
    );
\done_aux_i_12__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in_4(6),
      I1 => a_in_4(5),
      I2 => a_in_4(4),
      I3 => \count_reg[0]_0\(1),
      I4 => \count_reg[0]_0\(0),
      I5 => \count_reg[0]_0\(2),
      O => \done_aux_i_12__2_n_0\
    );
\done_aux_i_13__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in_4(6),
      I1 => \count_reg[0]_0\(1),
      I2 => a_in_4(5),
      I3 => \count_reg[0]_0\(2),
      I4 => a_in_4(4),
      I5 => \count_reg[0]_0\(0),
      O => \done_aux_i_13__2_n_0\
    );
\done_aux_i_14__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => a_in_4(2),
      I1 => a_in_4(1),
      I2 => \count_reg[0]_0\(1),
      I3 => \count_reg[0]_0\(0),
      I4 => a_in_4(0),
      I5 => \count_reg[0]_0\(2),
      O => \done_aux_i_14__2_n_0\
    );
\done_aux_i_15__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_4(2),
      I1 => \count_reg[0]_0\(2),
      I2 => a_in_4(1),
      I3 => \count_reg[0]_0\(0),
      I4 => a_in_4(0),
      I5 => \count_reg[0]_0\(1),
      O => \done_aux_i_15__2_n_0\
    );
\done_aux_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => j_reg(2),
      I1 => done_aux_reg_0,
      I2 => done,
      O => \done_aux_i_1__4_n_0\
    );
\done_aux_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE7D0000"
    )
        port map (
      I0 => a_in_4(15),
      I1 => a_in_4(14),
      I2 => \count_reg[0]_0\(2),
      I3 => \count_reg[0]_0\(3),
      I4 => \done_aux_i_9__2_n_0\,
      O => \done_aux_i_5__2_n_0\
    );
\done_aux_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(11),
      I1 => \done_aux_i_10__2_n_0\,
      I2 => \count_reg[0]_0\(3),
      I3 => \done_aux_i_11__2_n_0\,
      O => \done_aux_i_6__0_n_0\
    );
done_aux_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(7),
      I1 => \done_aux_i_12__2_n_0\,
      I2 => \count_reg[0]_0\(3),
      I3 => \done_aux_i_13__2_n_0\,
      O => done_aux_i_7_n_0
    );
\done_aux_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(3),
      I1 => \done_aux_i_14__2_n_0\,
      I2 => \count_reg[0]_0\(3),
      I3 => \done_aux_i_15__2_n_0\,
      O => \done_aux_i_8__1_n_0\
    );
\done_aux_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => a_in_4(13),
      I1 => a_in_4(12),
      I2 => \count_reg[0]_0\(1),
      I3 => \count_reg[0]_0\(0),
      O => \done_aux_i_9__2_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__4_n_0\,
      Q => done
    );
done_aux_reg_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_reg_i_3__2_n_0\,
      I1 => done_aux_reg_i_4_n_0,
      O => \j_reg[1]_0\,
      S => Q(1)
    );
\done_aux_reg_i_3__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_5__2_n_0\,
      I1 => \done_aux_i_6__0_n_0\,
      O => \done_aux_reg_i_3__2_n_0\,
      S => Q(0)
    );
done_aux_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_7_n_0,
      I1 => \done_aux_i_8__1_n_0\,
      O => done_aux_reg_i_4_n_0,
      S => Q(0)
    );
\j[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[1]_1\(0),
      O => \j[0]_i_1__3_n_0\
    );
\j[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[1]_1\(0),
      I1 => \^j_reg[1]_1\(1),
      O => \p_0_in__3\(1)
    );
\j[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => j_reg(2),
      I1 => \^j_reg[1]_1\(1),
      I2 => \^j_reg[1]_1\(0),
      I3 => done,
      O => j0
    );
\j[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^j_reg[1]_1\(0),
      I1 => \^j_reg[1]_1\(1),
      O => \p_0_in__3\(2)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__3_n_0\,
      Q => \^j_reg[1]_1\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(1),
      Q => \^j_reg[1]_1\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(2),
      Q => j_reg(2)
    );
\valid_aux_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => j_reg(2),
      I1 => \valid_aux_i_2__2_n_0\,
      I2 => valid,
      O => \valid_aux_i_1__4_n_0\
    );
\valid_aux_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \^j_reg[1]_1\(1),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      I5 => \^j_reg[1]_1\(0),
      O => \valid_aux_i_2__2_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__4_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized4\ is
  port (
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a_in_3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    done_aux_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_3 : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized4\ : entity is "ctrl_logic";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized4\ is
  signal count : STD_LOGIC;
  signal \count[3]_i_10__3_n_0\ : STD_LOGIC;
  signal \count[3]_i_11__3_n_0\ : STD_LOGIC;
  signal \count[3]_i_5__3_n_0\ : STD_LOGIC;
  signal \count[3]_i_6__3_n_0\ : STD_LOGIC;
  signal \count[3]_i_7__2_n_0\ : STD_LOGIC;
  signal \count[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_9__1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done : STD_LOGIC;
  signal \done_aux_i_10__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_11__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__1_n_0\ : STD_LOGIC;
  signal done_aux_i_3_n_0 : STD_LOGIC;
  signal \done_aux_i_4__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_5__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_6__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_7__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_8__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_9__3_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__4_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^j_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__3_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[1]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[2]_i_1__4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[3]_i_2__4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \valid_aux_i_2__3\ : label is "soft_lutpair13";
begin
  \j_reg[0]_0\(0) <= \^j_reg[0]_0\(0);
\FSM_onehot_state[1]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => \count_reg_reg[0]\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => done,
      I2 => \count_reg_reg[0]\(3),
      I3 => next_out_3,
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => E(0)
    );
\acks_out_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]\(0),
      I4 => \count_reg_reg[0]\(4),
      I5 => \count_reg_reg[0]\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__4\(0)
    );
\count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__4\(1)
    );
\count[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__4\(2)
    );
\count[3]_i_10__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFEFFBDFF7FDFF"
    )
        port map (
      I0 => a_in_3(10),
      I1 => Q(0),
      I2 => Q(1),
      I3 => a_in_3(8),
      I4 => a_in_3(9),
      I5 => Q(2),
      O => \count[3]_i_10__3_n_0\
    );
\count[3]_i_11__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FD6F6BDBD6F6BF6"
    )
        port map (
      I0 => a_in_3(10),
      I1 => Q(2),
      I2 => a_in_3(9),
      I3 => a_in_3(8),
      I4 => Q(1),
      I5 => Q(0),
      O => \count[3]_i_11__3_n_0\
    );
\count[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => j_reg(1),
      I2 => done,
      O => count
    );
\count[3]_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__4\(3)
    );
\count[3]_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_3(3),
      I1 => \count[3]_i_5__3_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_6__3_n_0\,
      I4 => done_aux_reg_0(1),
      I5 => \count[3]_i_7__2_n_0\,
      O => \count_reg_reg[3]_0\
    );
\count[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B8E2"
    )
        port map (
      I0 => \count[3]_i_8__0_n_0\,
      I1 => Q(3),
      I2 => \count[3]_i_9__1_n_0\,
      I3 => a_in_3(7),
      I4 => done_aux_reg_0(1),
      O => \count_reg_reg[3]\
    );
\count[3]_i_5__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => a_in_3(2),
      I1 => a_in_3(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => a_in_3(0),
      I5 => Q(2),
      O => \count[3]_i_5__3_n_0\
    );
\count[3]_i_6__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_3(2),
      I1 => Q(2),
      I2 => a_in_3(1),
      I3 => Q(0),
      I4 => a_in_3(0),
      I5 => Q(1),
      O => \count[3]_i_6__3_n_0\
    );
\count[3]_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_3(11),
      I1 => \count[3]_i_10__3_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_11__3_n_0\,
      O => \count[3]_i_7__2_n_0\
    );
\count[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in_3(6),
      I1 => Q(1),
      I2 => a_in_3(5),
      I3 => Q(2),
      I4 => a_in_3(4),
      I5 => Q(0),
      O => \count[3]_i_8__0_n_0\
    );
\count[3]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in_3(6),
      I1 => a_in_3(5),
      I2 => a_in_3(4),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[3]_i_9__1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__4\(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__4\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__4\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__4\(3),
      Q => count_reg(3)
    );
\done_aux_i_10__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in_3(6),
      I1 => Q(1),
      I2 => a_in_3(5),
      I3 => Q(2),
      I4 => a_in_3(4),
      I5 => Q(0),
      O => \done_aux_i_10__3_n_0\
    );
\done_aux_i_11__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in_3(6),
      I1 => a_in_3(5),
      I2 => a_in_3(4),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_11__3_n_0\
    );
\done_aux_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF74"
    )
        port map (
      I0 => \^j_reg[0]_0\(0),
      I1 => j_reg(1),
      I2 => done_aux_reg_1,
      I3 => done,
      O => \done_aux_i_1__1_n_0\
    );
\done_aux_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => done_aux_i_3_n_0,
      I1 => done_aux_reg_0(1),
      I2 => \done_aux_i_4__2_n_0\,
      I3 => done_aux_reg_0(0),
      I4 => \done_aux_i_5__3_n_0\,
      O => \j_reg[1]_0\
    );
done_aux_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_3(11),
      I1 => \done_aux_i_6__1_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_7__0_n_0\,
      O => done_aux_i_3_n_0
    );
\done_aux_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_3(3),
      I1 => \done_aux_i_8__2_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_9__3_n_0\,
      O => \done_aux_i_4__2_n_0\
    );
\done_aux_i_5__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB8E2"
    )
        port map (
      I0 => \done_aux_i_10__3_n_0\,
      I1 => Q(3),
      I2 => \done_aux_i_11__3_n_0\,
      I3 => a_in_3(7),
      I4 => done_aux_reg_0(1),
      O => \done_aux_i_5__3_n_0\
    );
\done_aux_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041008200200"
    )
        port map (
      I0 => a_in_3(10),
      I1 => Q(1),
      I2 => Q(0),
      I3 => a_in_3(8),
      I4 => a_in_3(9),
      I5 => Q(2),
      O => \done_aux_i_6__1_n_0\
    );
\done_aux_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9029094242909409"
    )
        port map (
      I0 => a_in_3(10),
      I1 => Q(2),
      I2 => a_in_3(9),
      I3 => a_in_3(8),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_7__0_n_0\
    );
\done_aux_i_8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => a_in_3(2),
      I1 => a_in_3(1),
      I2 => Q(1),
      I3 => Q(0),
      I4 => a_in_3(0),
      I5 => Q(2),
      O => \done_aux_i_8__2_n_0\
    );
\done_aux_i_9__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_3(2),
      I1 => Q(2),
      I2 => a_in_3(1),
      I3 => Q(0),
      I4 => a_in_3(0),
      I5 => Q(1),
      O => \done_aux_i_9__3_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__1_n_0\,
      Q => done
    );
\j[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[0]_0\(0),
      O => \j[0]_i_1__4_n_0\
    );
\j[1]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_reg(1),
      I1 => done,
      O => j0
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__4_n_0\,
      Q => \^j_reg[0]_0\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \^j_reg[0]_0\(0),
      Q => j_reg(1)
    );
\valid_aux_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \valid_aux_i_2__3_n_0\,
      I1 => j_reg(1),
      I2 => valid,
      O => \valid_aux_i_1__3_n_0\
    );
\valid_aux_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^j_reg[0]_0\(0),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      O => \valid_aux_i_2__3_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__3_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized5\ is
  port (
    j_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    done : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_0 : in STD_LOGIC;
    a_in_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_2 : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized5\ : entity is "ctrl_logic";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized5\ is
  signal \count[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \count[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[3]_i_5__4_n_0\ : STD_LOGIC;
  signal \count[3]_i_6__4_n_0\ : STD_LOGIC;
  signal \count[3]_i_7__3_n_0\ : STD_LOGIC;
  signal \count[3]_i_8__1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^done\ : STD_LOGIC;
  signal \done_aux_i_3__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_4__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_5__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_6__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_7__1_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \^j_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[0]_i_1__5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[2]_i_1__5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[3]_i_2__5\ : label is "soft_lutpair6";
begin
  done <= \^done\;
  j_reg(0) <= \^j_reg\(0);
\FSM_onehot_state[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => \count_reg_reg[0]\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => \^done\,
      I2 => \count_reg_reg[0]\(3),
      I3 => next_out_2,
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => E(0)
    );
acks_out_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      I2 => \^done\,
      I3 => \count_reg_reg[0]\(4),
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1__5_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__5\(1)
    );
\count[2]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \plusOp__5\(2)
    );
\count[3]_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \plusOp__5\(3)
    );
\count[3]_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_2(3),
      I1 => \count[3]_i_4__1_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_5__4_n_0\,
      I4 => \count_reg[0]_0\(0),
      I5 => \count[3]_i_6__4_n_0\,
      O => \count_reg_reg[3]_0\
    );
\count[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => a_in_2(2),
      I1 => a_in_2(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => a_in_2(0),
      I5 => Q(2),
      O => \count[3]_i_4__1_n_0\
    );
\count[3]_i_5__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_2(2),
      I1 => Q(2),
      I2 => a_in_2(1),
      I3 => Q(0),
      I4 => a_in_2(0),
      I5 => Q(1),
      O => \count[3]_i_5__4_n_0\
    );
\count[3]_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_2(7),
      I1 => \count[3]_i_7__3_n_0\,
      I2 => Q(3),
      I3 => \count[3]_i_8__1_n_0\,
      O => \count[3]_i_6__4_n_0\
    );
\count[3]_i_7__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in_2(6),
      I1 => a_in_2(5),
      I2 => a_in_2(4),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[3]_i_7__3_n_0\
    );
\count[3]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in_2(6),
      I1 => Q(1),
      I2 => a_in_2(5),
      I3 => Q(2),
      I4 => a_in_2(4),
      I5 => Q(0),
      O => \count[3]_i_8__1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[3]_0\(0),
      CLR => AR(0),
      D => \count[0]_i_1__5_n_0\,
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__5\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__5\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__5\(3),
      Q => count_reg(3)
    );
\done_aux_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_2(3),
      I1 => \done_aux_i_3__0_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_4__3_n_0\,
      I4 => \count_reg[0]_0\(0),
      I5 => \done_aux_i_5__4_n_0\,
      O => \count_reg_reg[3]\
    );
\done_aux_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => a_in_2(2),
      I1 => a_in_2(1),
      I2 => Q(1),
      I3 => Q(0),
      I4 => a_in_2(0),
      I5 => Q(2),
      O => \done_aux_i_3__0_n_0\
    );
\done_aux_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_2(2),
      I1 => Q(2),
      I2 => a_in_2(1),
      I3 => Q(0),
      I4 => a_in_2(0),
      I5 => Q(1),
      O => \done_aux_i_4__3_n_0\
    );
\done_aux_i_5__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_2(7),
      I1 => \done_aux_i_6__2_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_7__1_n_0\,
      O => \done_aux_i_5__4_n_0\
    );
\done_aux_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in_2(6),
      I1 => a_in_2(5),
      I2 => a_in_2(4),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_6__2_n_0\
    );
\done_aux_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in_2(6),
      I1 => Q(1),
      I2 => a_in_2(5),
      I3 => Q(2),
      I4 => a_in_2(4),
      I5 => Q(0),
      O => \done_aux_i_7__1_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => done_aux_reg_0,
      Q => \^done\
    );
\j[0]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg\(0),
      I1 => \^done\,
      O => j0
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => '1',
      Q => \^j_reg\(0)
    );
\valid_aux_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000400"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => \^j_reg\(0),
      I4 => count_reg(1),
      I5 => valid,
      O => \valid_aux_i_1__5_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__5_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter is
  port (
    count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    nRst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter is
  signal \^count\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_reg_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \count_reg_reg[0]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[0]\ : label is "VCC:GE";
  attribute OPT_MODIFIED of \count_reg_reg[1]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[1]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_reg_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute OPT_MODIFIED of \count_reg_reg[2]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[2]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[2]_i_1\ : label is "soft_lutpair3";
  attribute OPT_MODIFIED of \count_reg_reg[3]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute OPT_MODIFIED of \count_reg_reg[4]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[4]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[4]_i_1\ : label is "soft_lutpair1";
  attribute OPT_MODIFIED of \count_reg_reg[5]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[5]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[5]\ : label is "VCC:GE";
  attribute OPT_MODIFIED of \count_reg_reg[6]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[6]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[6]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[6]_i_1\ : label is "soft_lutpair2";
  attribute OPT_MODIFIED of \count_reg_reg[7]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[7]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[7]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[7]_i_1\ : label is "soft_lutpair2";
  attribute OPT_MODIFIED of \count_reg_reg[8]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[8]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[8]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[8]_i_1\ : label is "soft_lutpair0";
  attribute OPT_MODIFIED of \count_reg_reg[9]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \count_reg_reg[9]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg_reg[9]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \count_reg_reg[9]_i_1\ : label is "soft_lutpair0";
begin
  count(9 downto 0) <= \^count\(9 downto 0);
\count_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(0),
      G => E(0),
      GE => '1',
      Q => \^count\(0)
    );
\count_reg_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count\(0),
      O => plusOp(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(1),
      G => E(0),
      GE => '1',
      Q => \^count\(1)
    );
\count_reg_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count\(0),
      I1 => \^count\(1),
      O => plusOp(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(2),
      G => E(0),
      GE => '1',
      Q => \^count\(2)
    );
\count_reg_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^count\(0),
      I1 => \^count\(1),
      I2 => \^count\(2),
      O => plusOp(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(3),
      G => E(0),
      GE => '1',
      Q => \^count\(3)
    );
\count_reg_reg[3]_i_1\: unisim.vcomponents.LUT4
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
\count_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(4),
      G => E(0),
      GE => '1',
      Q => \^count\(4)
    );
\count_reg_reg[4]_i_1\: unisim.vcomponents.LUT5
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
\count_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(5),
      G => E(0),
      GE => '1',
      Q => \^count\(5)
    );
\count_reg_reg[5]_i_1\: unisim.vcomponents.LUT6
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
\count_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(6),
      G => E(0),
      GE => '1',
      Q => \^count\(6)
    );
\count_reg_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg_reg[9]_i_3_n_0\,
      I1 => \^count\(6),
      O => plusOp(6)
    );
\count_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(7),
      G => E(0),
      GE => '1',
      Q => \^count\(7)
    );
\count_reg_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg_reg[9]_i_3_n_0\,
      I1 => \^count\(6),
      I2 => \^count\(7),
      O => plusOp(7)
    );
\count_reg_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(8),
      G => E(0),
      GE => '1',
      Q => \^count\(8)
    );
\count_reg_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^count\(6),
      I1 => \count_reg_reg[9]_i_3_n_0\,
      I2 => \^count\(7),
      I3 => \^count\(8),
      O => plusOp(8)
    );
\count_reg_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => nRst,
      D => plusOp(9),
      G => E(0),
      GE => '1',
      Q => \^count\(9)
    );
\count_reg_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^count\(7),
      I1 => \count_reg_reg[9]_i_3_n_0\,
      I2 => \^count\(6),
      I3 => \^count\(8),
      I4 => \^count\(9),
      O => plusOp(9)
    );
\count_reg_reg[9]_i_3\: unisim.vcomponents.LUT6
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
      O => \count_reg_reg[9]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  signal count_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^count_reg_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1\ : label is "soft_lutpair58";
begin
  \count_reg_reg[3]_0\(3 downto 0) <= \^count_reg_reg[3]_0\(3 downto 0);
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => Q(2),
      I1 => \^count_reg_reg[3]_0\(2),
      I2 => \^count_reg_reg[3]_0\(1),
      I3 => \^count_reg_reg[3]_0\(0),
      I4 => \^count_reg_reg[3]_0\(3),
      I5 => Q(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\(3),
      I1 => \^count_reg_reg[3]_0\(0),
      I2 => \^count_reg_reg[3]_0\(1),
      I3 => \^count_reg_reg[3]_0\(2),
      I4 => Q(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => Q(1),
      I1 => \^count_reg_reg[3]_0\(3),
      I2 => \^count_reg_reg[3]_0\(1),
      I3 => \^count_reg_reg[3]_0\(0),
      I4 => \^count_reg_reg[3]_0\(2),
      I5 => Q(2),
      O => D(1)
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\(2),
      I1 => \^count_reg_reg[3]_0\(1),
      I2 => \^count_reg_reg[3]_0\(3),
      I3 => \^count_reg_reg[3]_0\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\(0),
      I1 => \^count_reg_reg[3]_0\(1),
      O => count_next(1)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\(2),
      I1 => \^count_reg_reg[3]_0\(0),
      I2 => \^count_reg_reg[3]_0\(1),
      O => count_next(2)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\(3),
      I1 => \^count_reg_reg[3]_0\(0),
      I2 => \^count_reg_reg[3]_0\(1),
      I3 => \^count_reg_reg[3]_0\(2),
      O => count_next(3)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(0),
      Q => \^count_reg_reg[3]_0\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(1),
      Q => \^count_reg_reg[3]_0\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(2),
      Q => \^count_reg_reg[3]_0\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(3),
      Q => \^count_reg_reg[3]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__0\ : label is "soft_lutpair49";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_onehot_state[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(2),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \FSM_onehot_state_reg[4]\(2),
      O => D(1)
    );
\count_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \count_reg[0]_i_1__0_n_0\
    );
\count_reg[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[1]_i_1__1_n_0\
    );
\count_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \count_reg[2]_i_1__0_n_0\
    );
\count_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \count_reg[3]_i_1__0_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[0]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[1]_i_1__1_n_0\,
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[2]_i_1__0_n_0\,
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[3]_i_1__0_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__1\ : label is "soft_lutpair39";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_onehot_state[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(2),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \FSM_onehot_state_reg[4]\(2),
      O => D(1)
    );
\count_reg[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \count_reg[0]_i_1__1_n_0\
    );
\count_reg[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[1]_i_1__2_n_0\
    );
\count_reg[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \count_reg[2]_i_1__1_n_0\
    );
\count_reg[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \count_reg[3]_i_1__1_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[0]_i_1__1_n_0\,
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[1]_i_1__2_n_0\,
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[2]_i_1__1_n_0\,
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[3]_i_1__1_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__2\ : label is "soft_lutpair29";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_onehot_state[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(2),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \FSM_onehot_state_reg[4]\(2),
      O => D(1)
    );
\count_reg[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \count_reg[0]_i_1__2_n_0\
    );
\count_reg[1]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[1]_i_1__4_n_0\
    );
\count_reg[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \count_reg[2]_i_1__2_n_0\
    );
\count_reg[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \count_reg[3]_i_1__2_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[0]_i_1__2_n_0\,
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[1]_i_1__4_n_0\,
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[2]_i_1__2_n_0\,
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[3]_i_1__2_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__3\ : label is "soft_lutpair19";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_onehot_state[1]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(2),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \FSM_onehot_state_reg[4]\(2),
      O => D(1)
    );
\count_reg[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \count_reg[0]_i_1__3_n_0\
    );
\count_reg[1]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[1]_i_1__5_n_0\
    );
\count_reg[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \count_reg[2]_i_1__3_n_0\
    );
\count_reg[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \count_reg[3]_i_1__3_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[0]_i_1__3_n_0\,
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[1]_i_1__5_n_0\,
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[2]_i_1__3_n_0\,
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[3]_i_1__3_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__4\ : label is "soft_lutpair12";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_onehot_state[1]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(2),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \FSM_onehot_state_reg[4]\(2),
      O => D(1)
    );
\count_reg[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \count_reg[0]_i_1__4_n_0\
    );
\count_reg[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[1]_i_1__3_n_0\
    );
\count_reg[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \count_reg[2]_i_1__4_n_0\
    );
\count_reg[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \count_reg[3]_i_1__4_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[0]_i_1__4_n_0\,
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[1]_i_1__3_n_0\,
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[2]_i_1__4_n_0\,
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => \count_reg[3]_i_1__4_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 is
  port (
    j_reg_0_sp_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    j_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    done : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ack_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count[3]_i_3__5_n_0\ : STD_LOGIC;
  signal \count[3]_i_4__2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__5_n_0\ : STD_LOGIC;
  signal \done_aux_i_2__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_3__1_n_0\ : STD_LOGIC;
  signal j_reg_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__5\ : label is "soft_lutpair5";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  j_reg_0_sp_1 <= j_reg_0_sn_1;
\FSM_onehot_state[1]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(2),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\FSM_onehot_state[2]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00000008"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \FSM_onehot_state_reg[4]\(2),
      O => D(1)
    );
\count[3]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054511040"
    )
        port map (
      I0 => j_reg(0),
      I1 => a_in(3),
      I2 => \count[3]_i_3__5_n_0\,
      I3 => \^q\(3),
      I4 => \count[3]_i_4__2_n_0\,
      I5 => done,
      O => E(0)
    );
\count[3]_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in(1),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in(0),
      I5 => a_in(2),
      O => \count[3]_i_3__5_n_0\
    );
\count[3]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666B6FF6D666F6"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in(2),
      I2 => a_in(1),
      I3 => \^q\(0),
      I4 => a_in(0),
      I5 => \^q\(1),
      O => \count[3]_i_4__2_n_0\
    );
\count_reg[0]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \count_reg[0]_i_1__5_n_0\
    );
\count_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[1]_i_1__0_n_0\
    );
\count_reg[2]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \count_reg[2]_i_1__5_n_0\
    );
\count_reg[3]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \count_reg[3]_i_1__5_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[3]_0\(0),
      CLR => ack_in,
      D => \count_reg[0]_i_1__5_n_0\,
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[3]_0\(0),
      CLR => ack_in,
      D => \count_reg[1]_i_1__0_n_0\,
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[3]_0\(0),
      CLR => ack_in,
      D => \count_reg[2]_i_1__5_n_0\,
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[3]_0\(0),
      CLR => ack_in,
      D => \count_reg[3]_i_1__5_n_0\,
      Q => \^q\(3)
    );
\done_aux_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFBBAEA"
    )
        port map (
      I0 => j_reg(0),
      I1 => a_in(3),
      I2 => \done_aux_i_2__3_n_0\,
      I3 => \^q\(3),
      I4 => \done_aux_i_3__1_n_0\,
      I5 => done,
      O => j_reg_0_sn_1
    );
\done_aux_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in(0),
      I5 => a_in(2),
      O => \done_aux_i_2__3_n_0\
    );
\done_aux_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099949009299909"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in(2),
      I2 => a_in(1),
      I3 => \^q\(0),
      I4 => a_in(0),
      I5 => \^q\(1),
      O => \done_aux_i_3__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block is
  port (
    next_out_7 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_7 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block is
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal ack_out_7 : STD_LOGIC;
  signal acks_out : STD_LOGIC;
  signal \asout_array[7]_0\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_1 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal logic_n_2 : STD_LOGIC;
  signal logic_n_3 : STD_LOGIC;
  signal logic_n_4 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal reset_control_reg_i_2_n_0 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__0\ : label is "soft_lutpair65";
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
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__0\ : label is "soft_lutpair65";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of reset_control_reg_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of reset_control_reg_i_2 : label is "soft_lutpair66";
begin
  E(0) <= ack_out_7;
  \count_reg_reg[3]\(3 downto 0) <= \^count_reg_reg[3]\(3 downto 0);
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => logic_n_3,
      Q => \ce__0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => dut_n_1,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => logic_n_2,
      Q => \asout_array[7]_0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => dut_n_0,
      Q => nexts_out,
      R => SR(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acks_out,
      G => logic_n_4,
      GE => '1',
      Q => ack_out_7
    );
\acks_out_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      O => acks_out
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(0),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(1),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(2),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(3),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(0),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(1),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(2),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(3),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(7)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(4),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(8)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(5),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(9)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(6),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(10)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(7),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(11)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(8),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(12)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(9),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(13)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(10),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(14)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(11),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(15)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(12),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(16)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(13),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(17)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(14),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(18)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(15),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(19)
    );
\asout_array_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(16),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(20)
    );
\asout_array_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(17),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(21)
    );
\asout_array_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(18),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(22)
    );
\asout_array_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(19),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(23)
    );
\asout_array_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(20),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(24)
    );
\asout_array_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(21),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(25)
    );
\asout_array_reg[6][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(22),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(26)
    );
\asout_array_reg[6][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(23),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(27)
    );
\asout_array_reg[7][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(24),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(28)
    );
\asout_array_reg[7][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(25),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(29)
    );
\asout_array_reg[7][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(26),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(30)
    );
\asout_array_reg[7][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(27),
      G => \asout_array[7]_0\,
      GE => '1',
      Q => a_out(31)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__0_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__0_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter
     port map (
      AR(0) => AR(0),
      D(1) => dut_n_0,
      D(0) => dut_n_1,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_6,
      Q(2) => \asout_array[7]_0\,
      Q(1) => \ce__0\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      clk => clk,
      \count_reg_reg[3]_0\(3 downto 0) => \^count_reg_reg[3]\(3 downto 0)
    );
logic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_2,
      D(0) => logic_n_3,
      E(0) => logic_n_5,
      \FSM_onehot_state_reg[1]\ => dut_n_6,
      \FSM_onehot_state_reg[2]\ => logic_n_4,
      Q(1 downto 0) => Q(1 downto 0),
      acks_out_reg(4) => nexts_out,
      acks_out_reg(3) => \asout_array[7]_0\,
      acks_out_reg(2) => \FSM_onehot_state_reg_n_0_[2]\,
      acks_out_reg(1) => \ce__0\,
      acks_out_reg(0) => \FSM_onehot_state_reg_n_0_[0]\,
      clk => clk,
      \count_reg[0]_0\ => \count_reg[0]\,
      \count_reg[0]_1\ => \count_reg[0]_0\,
      done_aux_reg_0 => done_aux_reg,
      done_aux_reg_1 => done_aux_reg_0
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => acks_out,
      GE => '1',
      Q => next_out_7
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
      I1 => \asout_array[7]_0\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
reset_control_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[7]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => reset_control_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized0\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_6 : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    a_in_7 : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \j_reg[1]_2\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    done_aux_reg_i_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    next_out_7 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_6 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized0\ : entity is "fsm_block";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized0\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_7\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[6]_1\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__2_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dut_n_4 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__0_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__2\ : label is "soft_lutpair56";
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
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__2\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__0\ : label is "soft_lutpair57";
begin
  AR(0) <= \^ar\(0);
  a_in_7(27 downto 0) <= \^a_in_7\(27 downto 0);
  \count_reg_reg[3]\(3 downto 0) <= \^count_reg_reg[3]\(3 downto 0);
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_8,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_8,
      D => logic_n_7,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_8,
      D => dut_n_5,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_8,
      D => logic_n_6,
      Q => \asout_array[6]_1\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_8,
      D => dut_n_4,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acks_out,
      G => logic_n_9,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      O => acks_out
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(0),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(1),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(2),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(3),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(0),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(1),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(2),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(3),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(7)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(4),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(8)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(5),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(9)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(6),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(10)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(7),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(11)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(8),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(12)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(9),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(13)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(10),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(14)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(11),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(15)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(12),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(16)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(13),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(17)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(14),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(18)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(15),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(19)
    );
\asout_array_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(16),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(20)
    );
\asout_array_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(17),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(21)
    );
\asout_array_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(18),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(22)
    );
\asout_array_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(19),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(23)
    );
\asout_array_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(20),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(24)
    );
\asout_array_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(21),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(25)
    );
\asout_array_reg[6][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(22),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(26)
    );
\asout_array_reg[6][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(23),
      G => \asout_array[6]_1\,
      GE => '1',
      Q => \^a_in_7\(27)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__2_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__2_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0
     port map (
      D(1) => dut_n_4,
      D(0) => dut_n_5,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_6,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[6]_1\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(3 downto 0) => \^count_reg_reg[3]\(3 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]\(0)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized0\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_6,
      D(0) => logic_n_7,
      E(0) => logic_n_8,
      \FSM_onehot_state_reg[1]\ => dut_n_6,
      \FSM_onehot_state_reg[2]\ => logic_n_9,
      Q(1 downto 0) => Q(1 downto 0),
      a_in_7(27 downto 0) => \^a_in_7\(27 downto 0),
      clk => clk,
      \count_reg[0]_0\ => \count_reg[0]\,
      \count_reg[0]_1\ => \count_reg[0]_0\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[6]_1\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      done_aux_reg_0 => done_aux_reg,
      done_aux_reg_1 => done_aux_reg_0,
      done_aux_reg_2 => done_aux_reg_1,
      done_aux_reg_i_7_0(3 downto 0) => done_aux_reg_i_7(3 downto 0),
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[1]_1\ => \j_reg[1]_0\,
      \j_reg[1]_2\ => \j_reg[1]_1\,
      \j_reg[1]_3\ => \j_reg[1]_2\,
      \j_reg[2]_0\(1 downto 0) => \j_reg[2]\(1 downto 0),
      next_out_7 => next_out_7
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => acks_out,
      GE => '1',
      Q => next_out_6
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => \reset_control_reg_i_2__0_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[6]_1\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[6]_1\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_5 : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    a_in_6 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \j_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    next_out_6 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized1\ : entity is "fsm_block";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized1\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_6\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[5]_2\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__3_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[3]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dut_n_4 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__1_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__3\ : label is "soft_lutpair46";
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
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__3\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__1\ : label is "soft_lutpair47";
begin
  AR(0) <= \^ar\(0);
  a_in_6(23 downto 0) <= \^a_in_6\(23 downto 0);
  \count_reg_reg[3]_1\(3 downto 0) <= \^count_reg_reg[3]_1\(3 downto 0);
\FSM_onehot_state[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_10,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_10,
      D => logic_n_8,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_10,
      D => dut_n_5,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_10,
      D => logic_n_7,
      Q => \asout_array[5]_2\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_10,
      D => dut_n_4,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acks_out,
      G => logic_n_9,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => nexts_out,
      I2 => \ce__0\,
      O => acks_out
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(0),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(1),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(2),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(3),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(0),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(1),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(2),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(3),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(7)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(4),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(8)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(5),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(9)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(6),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(10)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(7),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(11)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(8),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(12)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(9),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(13)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(10),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(14)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(11),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(15)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(12),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(16)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(13),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(17)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(14),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(18)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(15),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(19)
    );
\asout_array_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(16),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(20)
    );
\asout_array_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(17),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(21)
    );
\asout_array_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(18),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(22)
    );
\asout_array_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(19),
      G => \asout_array[5]_2\,
      GE => '1',
      Q => \^a_in_6\(23)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__3_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => nexts_out,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__3_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1
     port map (
      D(1) => dut_n_4,
      D(0) => dut_n_5,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_6,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[5]_2\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(3 downto 0) => \^count_reg_reg[3]_1\(3 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]\(0)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized1\
     port map (
      AR(0) => reset_control,
      D(0) => \^count_reg_reg[3]_1\(3),
      E(0) => logic_n_10,
      \FSM_onehot_state_reg[1]\ => dut_n_6,
      \FSM_onehot_state_reg[2]\(1) => logic_n_7,
      \FSM_onehot_state_reg[2]\(0) => logic_n_8,
      \FSM_onehot_state_reg[2]_0\ => logic_n_9,
      Q(3 downto 0) => Q(3 downto 0),
      a_in_5(0) => a_in_5(3),
      a_in_6(23 downto 0) => \^a_in_6\(23 downto 0),
      clk => clk,
      \count_reg[0]_0\(1 downto 0) => \count_reg[0]\(1 downto 0),
      \count_reg[0]_1\ => \count_reg[0]_0\,
      \count_reg[0]_2\ => \count_reg[0]_1\,
      \count_reg[0]_3\ => \count_reg[0]_2\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[5]_2\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      \count_reg_reg[3]_0\ => \count_reg_reg[3]_0\,
      done_aux_reg_0 => done_aux_reg,
      done_aux_reg_1 => done_aux_reg_0,
      done_aux_reg_2 => done_aux_reg_1,
      \j_reg[1]_0\(1 downto 0) => \j_reg[1]\(1 downto 0),
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[2]_1\ => \j_reg[2]_0\,
      next_out_6 => next_out_6
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => acks_out,
      GE => '1',
      Q => next_out_5
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => \reset_control_reg_i_2__1_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[5]_2\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[5]_2\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized2\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_4 : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    a_in_5 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \done_aux_reg_i_3__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    next_out_5 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized2\ : entity is "fsm_block";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized2\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_5\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[4]_3\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__5_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dut_n_4 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__5\ : label is "soft_lutpair36";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__5\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__2\ : label is "soft_lutpair37";
begin
  AR(0) <= \^ar\(0);
  a_in_5(19 downto 0) <= \^a_in_5\(19 downto 0);
  \count_reg_reg[3]\(3 downto 0) <= \^count_reg_reg[3]\(3 downto 0);
\FSM_onehot_state[4]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => logic_n_7,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => dut_n_5,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => logic_n_6,
      Q => \asout_array[4]_3\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => dut_n_4,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acks_out,
      G => logic_n_10,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => nexts_out,
      I2 => \ce__0\,
      O => acks_out
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(0),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(1),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(2),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]\(3),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(0),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(1),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(2),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(3),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(7)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(4),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(8)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(5),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(9)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(6),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(10)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(7),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(11)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(8),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(12)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(9),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(13)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(10),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(14)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(11),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(15)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(12),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(16)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(13),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(17)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(14),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(18)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(15),
      G => \asout_array[4]_3\,
      GE => '1',
      Q => \^a_in_5\(19)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__5_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => nexts_out,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__5_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2
     port map (
      D(1) => dut_n_4,
      D(0) => dut_n_5,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_6,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[4]_3\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(3 downto 0) => \^count_reg_reg[3]\(3 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]_0\(0)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized2\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_6,
      D(0) => logic_n_7,
      E(0) => logic_n_11,
      \FSM_onehot_state_reg[1]\ => dut_n_6,
      \FSM_onehot_state_reg[2]\ => logic_n_10,
      Q(2 downto 0) => \^a_in_5\(2 downto 0),
      a_in_5(15 downto 0) => \^a_in_5\(19 downto 4),
      clk => clk,
      \count_reg[0]_0\ => \count_reg[0]\,
      \count_reg[0]_1\ => \count_reg[0]_0\,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\(4) => nexts_out,
      \count_reg_reg[0]_0\(3) => \asout_array[4]_3\,
      \count_reg_reg[0]_0\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_0\(1) => \ce__0\,
      \count_reg_reg[0]_0\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      done_aux_reg_0 => done_aux_reg,
      \done_aux_reg_i_3__1_0\(1 downto 0) => \done_aux_reg_i_3__1\(1 downto 0),
      \done_aux_reg_i_7__1_0\(3 downto 0) => Q(3 downto 0),
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      \j_reg[1]_0\(1 downto 0) => \j_reg[1]\(1 downto 0),
      next_out_5 => next_out_5
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => acks_out,
      GE => '1',
      Q => next_out_4
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => \reset_control_reg_i_2__2_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[4]_3\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[4]_3\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized3\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_3 : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    a_in_4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    next_out_4 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized3\ : entity is "fsm_block";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized3\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_4\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \acks_out_reg_i_1__4_n_0\ : STD_LOGIC;
  signal \asout_array[3]_4\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__4_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[3]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dut_n_4 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__3_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__4\ : label is "soft_lutpair26";
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
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__4\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__3\ : label is "soft_lutpair27";
begin
  AR(0) <= \^ar\(0);
  a_in_4(15 downto 0) <= \^a_in_4\(15 downto 0);
  \count_reg_reg[3]_1\(3 downto 0) <= \^count_reg_reg[3]_1\(3 downto 0);
\FSM_onehot_state[4]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => logic_n_8,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => dut_n_5,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => logic_n_7,
      Q => \asout_array[3]_4\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => dut_n_4,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \acks_out_reg_i_1__4_n_0\,
      G => logic_n_6,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      O => \acks_out_reg_i_1__4_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(0),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(1),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(2),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(3),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(0),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(1),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(2),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(3),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(7)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(4),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(8)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(5),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(9)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(6),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(10)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(7),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(11)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(8),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(12)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(9),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(13)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(10),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(14)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(11),
      G => \asout_array[3]_4\,
      GE => '1',
      Q => \^a_in_4\(15)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__4_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__4_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3
     port map (
      D(1) => dut_n_4,
      D(0) => dut_n_5,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_6,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[3]_4\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(3 downto 0) => \^count_reg_reg[3]_1\(3 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]\(0)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized3\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_7,
      D(0) => logic_n_8,
      E(0) => logic_n_5,
      \FSM_onehot_state_reg[1]\ => dut_n_6,
      \FSM_onehot_state_reg[2]\ => logic_n_6,
      Q(1 downto 0) => Q(1 downto 0),
      a_in_4(15 downto 0) => \^a_in_4\(15 downto 0),
      clk => clk,
      \count_reg[0]_0\(3 downto 0) => \count_reg[0]\(3 downto 0),
      \count_reg[0]_1\ => \count_reg[0]_0\,
      \count_reg[0]_2\ => \count_reg[0]_1\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[3]_4\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      \count_reg_reg[3]_0\ => \count_reg_reg[3]_0\,
      done_aux_reg_0 => done_aux_reg,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[1]_1\(1 downto 0) => \j_reg[1]_0\(1 downto 0),
      next_out_4 => next_out_4
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => \acks_out_reg_i_1__4_n_0\,
      GE => '1',
      Q => next_out_3
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => \reset_control_reg_i_2__3_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[3]_4\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[3]_4\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized4\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_2 : out STD_LOGIC;
    a_in_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    done_aux_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    next_out_3 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized4\ : entity is "fsm_block";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized4\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_3\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \acks_out_reg_i_1__1_n_0\ : STD_LOGIC;
  signal \asout_array[2]_5\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__1_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[3]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dut_n_4 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal logic_n_3 : STD_LOGIC;
  signal logic_n_4 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__4_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__1\ : label is "soft_lutpair16";
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
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__4\ : label is "soft_lutpair17";
begin
  AR(0) <= \^ar\(0);
  a_in_3(11 downto 0) <= \^a_in_3\(11 downto 0);
  \count_reg_reg[3]_1\(3 downto 0) <= \^count_reg_reg[3]_1\(3 downto 0);
\FSM_onehot_state[4]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_4,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_4,
      D => logic_n_6,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_4,
      D => dut_n_5,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_4,
      D => logic_n_5,
      Q => \asout_array[2]_5\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_4,
      D => dut_n_4,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \acks_out_reg_i_1__1_n_0\,
      G => logic_n_3,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => nexts_out,
      I2 => \ce__0\,
      O => \acks_out_reg_i_1__1_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(0),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(1),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(2),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[3]_1\(3),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(0),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(1),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(2),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(3),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(7)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(4),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(8)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(5),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(9)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(6),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(10)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(7),
      G => \asout_array[2]_5\,
      GE => '1',
      Q => \^a_in_3\(11)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__1_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => nexts_out,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__1_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4
     port map (
      D(1) => dut_n_4,
      D(0) => dut_n_5,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_6,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[2]_5\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(3 downto 0) => \^count_reg_reg[3]_1\(3 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]\(0)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized4\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_5,
      D(0) => logic_n_6,
      E(0) => logic_n_4,
      \FSM_onehot_state_reg[1]\ => dut_n_6,
      \FSM_onehot_state_reg[2]\ => logic_n_3,
      Q(3 downto 0) => Q(3 downto 0),
      a_in_3(11 downto 0) => \^a_in_3\(11 downto 0),
      clk => clk,
      \count_reg[0]_0\ => \count_reg[0]\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[2]_5\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      \count_reg_reg[3]_0\ => \count_reg_reg[3]_0\,
      done_aux_reg_0(1 downto 0) => done_aux_reg(1 downto 0),
      done_aux_reg_1 => done_aux_reg_0,
      \j_reg[0]_0\(0) => \j_reg[0]\(0),
      \j_reg[1]_0\ => \j_reg[1]\,
      next_out_3 => next_out_3
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => \acks_out_reg_i_1__1_n_0\,
      GE => '1',
      Q => next_out_2
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => \reset_control_reg_i_2__4_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[2]_5\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[2]_5\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized5\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    a_in_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_2 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    ack_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized5\ : entity is "fsm_block";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized5\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state[4]_i_1__5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \asout_array[1]_6\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal ce_reg_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC;
  signal done : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal logic_n_4 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal nexts_out_reg_i_1_n_0 : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__5_n_0\ : STD_LOGIC;
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
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ce_reg_i_1 : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of nexts_out_reg_i_1 : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__5\ : label is "soft_lutpair10";
begin
  AR(0) <= \^ar\(0);
  a_in_2(7 downto 0) <= \^a_in_2\(7 downto 0);
\FSM_onehot_state[4]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state[4]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ack_in,
      I1 => nRst,
      O => \FSM_onehot_state[4]_i_1__5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state[4]_i_1__5_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => logic_n_7,
      Q => \ce__0\,
      R => \FSM_onehot_state[4]_i_1__5_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => dut_n_7,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state[4]_i_1__5_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => logic_n_6,
      Q => \asout_array[1]_6\,
      R => \FSM_onehot_state[4]_i_1__5_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_5,
      D => dut_n_6,
      Q => nexts_out,
      R => \FSM_onehot_state[4]_i_1__5_n_0\
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out_reg_i_1_n_0,
      G => logic_n_4,
      GE => '1',
      Q => \^ar\(0)
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(1),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(2),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(3),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(3)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(0),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(4)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(1),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(5)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(2),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(6)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in(3),
      G => \asout_array[1]_6\,
      GE => '1',
      Q => \^a_in_2\(7)
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
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => ce_reg_i_1_n_0
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5
     port map (
      D(1) => dut_n_6,
      D(0) => dut_n_7,
      E(0) => count,
      \FSM_onehot_state_reg[3]\ => dut_n_8,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[1]_6\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(3 downto 0) => u_i(3 downto 0),
      a_in(3 downto 0) => a_in(3 downto 0),
      ack_in => ack_in,
      clk => clk,
      \count_reg_reg[3]_0\(0) => ce,
      done => done,
      j_reg(0) => j_reg(0),
      j_reg_0_sp_1 => dut_n_0
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic__parameterized5\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_6,
      D(0) => logic_n_7,
      E(0) => logic_n_5,
      \FSM_onehot_state_reg[1]\ => dut_n_8,
      \FSM_onehot_state_reg[2]\ => logic_n_4,
      Q(3 downto 0) => Q(3 downto 0),
      a_in_2(7 downto 0) => \^a_in_2\(7 downto 0),
      clk => clk,
      \count_reg[0]_0\(0) => \count_reg[0]\(0),
      \count_reg[3]_0\(0) => count,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[1]_6\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      \count_reg_reg[3]_0\ => \count_reg_reg[3]_0\,
      done => done,
      done_aux_reg_0 => dut_n_0,
      j_reg(0) => j_reg(0),
      next_out_2 => next_out_2
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => nexts_out_reg_i_1_n_0,
      GE => '1',
      Q => next_out
    );
nexts_out_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      O => nexts_out_reg_i_1_n_0
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => \reset_control_reg_i_2__5_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[1]_6\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[1]_6\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_queens is
  port (
    count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    a_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    next_out : out STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    nRst : in STD_LOGIC;
    clk : in STD_LOGIC;
    ack_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_queens;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_queens is
  signal a_in_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal a_in_3 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal a_in_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal a_in_5 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal a_in_6 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal a_in_7 : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal ack_in_2 : STD_LOGIC;
  signal ack_in_3 : STD_LOGIC;
  signal ack_in_4 : STD_LOGIC;
  signal ack_in_5 : STD_LOGIC;
  signal ack_in_6 : STD_LOGIC;
  signal ack_in_7 : STD_LOGIC;
  signal fsm_1_n_11 : STD_LOGIC;
  signal fsm_1_n_12 : STD_LOGIC;
  signal fsm_1_n_2 : STD_LOGIC;
  signal fsm_2_n_14 : STD_LOGIC;
  signal fsm_2_n_15 : STD_LOGIC;
  signal fsm_2_n_21 : STD_LOGIC;
  signal fsm_2_n_22 : STD_LOGIC;
  signal fsm_3_n_19 : STD_LOGIC;
  signal fsm_3_n_2 : STD_LOGIC;
  signal fsm_3_n_20 : STD_LOGIC;
  signal fsm_3_n_27 : STD_LOGIC;
  signal fsm_4_n_2 : STD_LOGIC;
  signal fsm_4_n_23 : STD_LOGIC;
  signal fsm_4_n_24 : STD_LOGIC;
  signal fsm_4_n_25 : STD_LOGIC;
  signal fsm_4_n_26 : STD_LOGIC;
  signal fsm_4_n_27 : STD_LOGIC;
  signal fsm_4_n_34 : STD_LOGIC;
  signal fsm_5_n_2 : STD_LOGIC;
  signal fsm_5_n_27 : STD_LOGIC;
  signal fsm_5_n_28 : STD_LOGIC;
  signal fsm_5_n_29 : STD_LOGIC;
  signal fsm_5_n_30 : STD_LOGIC;
  signal fsm_5_n_37 : STD_LOGIC;
  signal fsm_6_n_2 : STD_LOGIC;
  signal fsm_6_n_31 : STD_LOGIC;
  signal fsm_6_n_32 : STD_LOGIC;
  signal fsm_6_n_33 : STD_LOGIC;
  signal fsm_6_n_40 : STD_LOGIC;
  signal fsm_7_n_7 : STD_LOGIC;
  signal \logic/j_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \logic/j_reg_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_reg_2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_reg_5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_reg_7\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \logic/j_reg_9\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal next_out_2 : STD_LOGIC;
  signal next_out_3 : STD_LOGIC;
  signal next_out_4 : STD_LOGIC;
  signal next_out_5 : STD_LOGIC;
  signal next_out_6 : STD_LOGIC;
  signal next_out_7 : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_i_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_i_3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_i_4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_i_6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_i_8 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
counter_sol: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sol_counter
     port map (
      E(0) => fsm_7_n_7,
      count(9 downto 0) => count(9 downto 0),
      nRst => nRst
    );
fsm_1: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized5\
     port map (
      AR(0) => ack_in_2,
      Q(3 downto 0) => u_i(3 downto 0),
      SR(0) => fsm_1_n_12,
      a_in(3 downto 0) => a_in(3 downto 0),
      a_in_2(7 downto 0) => a_in_2(7 downto 0),
      ack_in => ack_in,
      clk => clk,
      \count_reg[0]\(0) => \logic/j_reg\(0),
      \count_reg_reg[3]\ => fsm_1_n_2,
      \count_reg_reg[3]_0\ => fsm_1_n_11,
      nRst => nRst,
      next_out => next_out,
      next_out_2 => next_out_2
    );
fsm_2: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized4\
     port map (
      AR(0) => ack_in_3,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_1_n_12,
      Q(3 downto 0) => u_i_1(3 downto 0),
      SR(0) => fsm_2_n_22,
      a_in_2(7 downto 0) => a_in_2(7 downto 0),
      a_in_3(11 downto 0) => a_in_3(11 downto 0),
      clk => clk,
      \count_reg[0]\ => fsm_1_n_11,
      \count_reg_reg[0]\(0) => ack_in_2,
      \count_reg_reg[3]\ => fsm_2_n_14,
      \count_reg_reg[3]_0\ => fsm_2_n_15,
      \count_reg_reg[3]_1\(3 downto 0) => u_i(3 downto 0),
      done_aux_reg(1 downto 0) => \logic/j_reg_0\(1 downto 0),
      done_aux_reg_0 => fsm_1_n_2,
      \j_reg[0]\(0) => \logic/j_reg\(0),
      \j_reg[1]\ => fsm_2_n_21,
      nRst => nRst,
      next_out_2 => next_out_2,
      next_out_3 => next_out_3
    );
fsm_3: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized3\
     port map (
      AR(0) => ack_in_4,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_2_n_22,
      Q(1 downto 0) => \logic/j_reg_2\(1 downto 0),
      SR(0) => fsm_3_n_27,
      a_in_3(11 downto 0) => a_in_3(11 downto 0),
      a_in_4(15 downto 0) => a_in_4(15 downto 0),
      clk => clk,
      \count_reg[0]\(3 downto 0) => u_i_3(3 downto 0),
      \count_reg[0]_0\ => fsm_2_n_15,
      \count_reg[0]_1\ => fsm_2_n_14,
      \count_reg_reg[0]\(0) => ack_in_3,
      \count_reg_reg[3]\ => fsm_3_n_19,
      \count_reg_reg[3]_0\ => fsm_3_n_20,
      \count_reg_reg[3]_1\(3 downto 0) => u_i_1(3 downto 0),
      done_aux_reg => fsm_2_n_21,
      \j_reg[1]\ => fsm_3_n_2,
      \j_reg[1]_0\(1 downto 0) => \logic/j_reg_0\(1 downto 0),
      nRst => nRst,
      next_out_3 => next_out_3,
      next_out_4 => next_out_4
    );
fsm_4: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized2\
     port map (
      AR(0) => ack_in_5,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_3_n_27,
      Q(3 downto 0) => u_i_4(3 downto 0),
      SR(0) => fsm_4_n_34,
      a_in_4(15 downto 0) => a_in_4(15 downto 0),
      a_in_5(19 downto 0) => a_in_5(19 downto 0),
      clk => clk,
      \count_reg[0]\ => fsm_3_n_20,
      \count_reg[0]_0\ => fsm_3_n_19,
      \count_reg_reg[0]\ => fsm_4_n_26,
      \count_reg_reg[0]_0\(0) => ack_in_4,
      \count_reg_reg[1]\ => fsm_4_n_27,
      \count_reg_reg[2]\ => fsm_4_n_2,
      \count_reg_reg[2]_0\ => fsm_4_n_23,
      \count_reg_reg[3]\(3 downto 0) => u_i_3(3 downto 0),
      done_aux_reg => fsm_3_n_2,
      \done_aux_reg_i_3__1\(1 downto 0) => \logic/j_reg_5\(1 downto 0),
      \j_reg[0]\ => fsm_4_n_24,
      \j_reg[0]_0\ => fsm_4_n_25,
      \j_reg[1]\(1 downto 0) => \logic/j_reg_2\(1 downto 0),
      nRst => nRst,
      next_out_4 => next_out_4,
      next_out_5 => next_out_5
    );
fsm_5: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized1\
     port map (
      AR(0) => ack_in_6,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_4_n_34,
      Q(3 downto 0) => u_i_6(3 downto 0),
      SR(0) => fsm_5_n_37,
      a_in_5(19 downto 0) => a_in_5(19 downto 0),
      a_in_6(23 downto 0) => a_in_6(23 downto 0),
      clk => clk,
      \count_reg[0]\(1) => \logic/j_reg_7\(2),
      \count_reg[0]\(0) => \logic/j_reg_7\(0),
      \count_reg[0]_0\ => fsm_4_n_25,
      \count_reg[0]_1\ => fsm_4_n_26,
      \count_reg[0]_2\ => fsm_4_n_23,
      \count_reg_reg[0]\(0) => ack_in_5,
      \count_reg_reg[2]\ => fsm_5_n_29,
      \count_reg_reg[3]\ => fsm_5_n_2,
      \count_reg_reg[3]_0\ => fsm_5_n_28,
      \count_reg_reg[3]_1\(3 downto 0) => u_i_4(3 downto 0),
      done_aux_reg => fsm_4_n_2,
      done_aux_reg_0 => fsm_4_n_27,
      done_aux_reg_1 => fsm_4_n_24,
      \j_reg[1]\(1 downto 0) => \logic/j_reg_5\(1 downto 0),
      \j_reg[2]\ => fsm_5_n_27,
      \j_reg[2]_0\ => fsm_5_n_30,
      nRst => nRst,
      next_out_5 => next_out_5,
      next_out_6 => next_out_6
    );
fsm_6: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block__parameterized0\
     port map (
      AR(0) => ack_in_7,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_5_n_37,
      Q(1 downto 0) => \logic/j_reg_9\(2 downto 1),
      SR(0) => fsm_6_n_40,
      a_in_6(23 downto 0) => a_in_6(23 downto 0),
      a_in_7(27 downto 0) => a_in_7(27 downto 0),
      clk => clk,
      \count_reg[0]\ => fsm_5_n_28,
      \count_reg[0]_0\ => fsm_5_n_30,
      \count_reg_reg[0]\(0) => ack_in_6,
      \count_reg_reg[3]\(3 downto 0) => u_i_6(3 downto 0),
      done_aux_reg => fsm_5_n_2,
      done_aux_reg_0 => fsm_5_n_29,
      done_aux_reg_1 => fsm_5_n_27,
      done_aux_reg_i_7(3 downto 0) => u_i_8(3 downto 0),
      \j_reg[1]\ => fsm_6_n_2,
      \j_reg[1]_0\ => fsm_6_n_31,
      \j_reg[1]_1\ => fsm_6_n_32,
      \j_reg[1]_2\ => fsm_6_n_33,
      \j_reg[2]\(1) => \logic/j_reg_7\(2),
      \j_reg[2]\(0) => \logic/j_reg_7\(0),
      nRst => nRst,
      next_out_6 => next_out_6,
      next_out_7 => next_out_7
    );
fsm_7: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_block
     port map (
      AR(0) => ack_in_7,
      E(0) => fsm_7_n_7,
      Q(1 downto 0) => \logic/j_reg_9\(2 downto 1),
      SR(0) => fsm_6_n_40,
      a_in_7(27 downto 0) => a_in_7(27 downto 0),
      a_out(31 downto 0) => a_out(31 downto 0),
      clk => clk,
      \count_reg[0]\ => fsm_6_n_32,
      \count_reg[0]_0\ => fsm_6_n_31,
      \count_reg_reg[3]\(3 downto 0) => u_i_8(3 downto 0),
      done_aux_reg => fsm_6_n_33,
      done_aux_reg_0 => fsm_6_n_2,
      next_out_7 => next_out_7
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
    count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ack_in : in STD_LOGIC;
    next_out : out STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_queens_0_0,top_queens,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_queens,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_queens
     port map (
      a_in(3 downto 0) => a_in(3 downto 0),
      a_out(31 downto 0) => a_out(31 downto 0),
      ack_in => ack_in,
      clk => clk,
      count(9 downto 0) => count(9 downto 0),
      nRst => nRst,
      next_out => next_out
    );
end STRUCTURE;
