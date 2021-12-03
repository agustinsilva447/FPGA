-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Nov 24 17:43:32 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_nqueens_0_0_sim_netlist.vhdl
-- Design      : design_1_top_nqueens_0_0
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
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    acks_out_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal count : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal done : STD_LOGIC;
  signal \done_aux_i_1__3_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal valid : STD_LOGIC;
  signal valid_aux_i_1_n_0 : STD_LOGIC;
  signal valid_aux_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \j[2]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \j[3]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \j[4]_i_2\ : label is "soft_lutpair135";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => acks_out_reg(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => acks_out_reg(3),
      I4 => acks_out_reg(2),
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
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT5
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
\acks_out_reg_i_2__0\: unisim.vcomponents.LUT6
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
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1_n_0\
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
\count[3]_i_1\: unisim.vcomponents.LUT4
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
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => j_reg(4),
      I1 => \count_reg[0]_0\,
      I2 => \^q\(2),
      I3 => j_reg(3),
      I4 => \count_reg[0]_1\,
      I5 => done,
      O => count
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => plusOp(4)
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
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => plusOp(4),
      Q => count_reg(4)
    );
\done_aux_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF020F0200"
    )
        port map (
      I0 => done_aux_reg_0,
      I1 => \^q\(2),
      I2 => j_reg(4),
      I3 => j_reg(3),
      I4 => done_aux_reg_1,
      I5 => done,
      O => \done_aux_i_1__3_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__3_n_0\,
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
\j[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => p_0_in(2)
    );
\j[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => j_reg(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => p_0_in(3)
    );
\j[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000015555"
    )
        port map (
      I0 => j_reg(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => j_reg(3),
      I5 => done,
      O => j0
    );
\j[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => j_reg(3),
      O => p_0_in(4)
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
      Q => \^q\(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(3),
      Q => j_reg(3)
    );
\j_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(4),
      Q => j_reg(4)
    );
valid_aux_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => j_reg(4),
      I1 => count_reg(4),
      I2 => valid_aux_i_2_n_0,
      I3 => count_reg(3),
      I4 => j_reg(3),
      I5 => valid,
      O => valid_aux_i_1_n_0
    );
valid_aux_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => count_reg(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => count_reg(0),
      I5 => count_reg(2),
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[2]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    done_aux_reg_i_6_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    a_in_9 : in STD_LOGIC_VECTOR ( 33 downto 0 );
    done_aux_reg_i_13_0 : in STD_LOGIC;
    done_aux_i_22_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count[4]_i_29_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg[4]_i_17_0\ : in STD_LOGIC;
    \count_reg[4]_i_17_1\ : in STD_LOGIC;
    \count_reg[4]_i_14_0\ : in STD_LOGIC;
    done_aux_reg_i_16_0 : in STD_LOGIC;
    done_aux_reg_i_16_1 : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \done_aux_i_2__0_0\ : in STD_LOGIC;
    \done_aux_i_2__0_1\ : in STD_LOGIC;
    \done_aux_i_2__0_2\ : in STD_LOGIC;
    \done_aux_i_2__0_3\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    next_out_9 : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC;
  signal \count[4]_i_10_n_0\ : STD_LOGIC;
  signal \count[4]_i_20_n_0\ : STD_LOGIC;
  signal \count[4]_i_21_n_0\ : STD_LOGIC;
  signal \count[4]_i_22_n_0\ : STD_LOGIC;
  signal \count[4]_i_23_n_0\ : STD_LOGIC;
  signal \count[4]_i_24_n_0\ : STD_LOGIC;
  signal \count[4]_i_25_n_0\ : STD_LOGIC;
  signal \count[4]_i_26_n_0\ : STD_LOGIC;
  signal \count[4]_i_27_n_0\ : STD_LOGIC;
  signal \count[4]_i_28_n_0\ : STD_LOGIC;
  signal \count[4]_i_29_n_0\ : STD_LOGIC;
  signal \count[4]_i_30_n_0\ : STD_LOGIC;
  signal \count[4]_i_31_n_0\ : STD_LOGIC;
  signal \count[4]_i_32_n_0\ : STD_LOGIC;
  signal \count[4]_i_33_n_0\ : STD_LOGIC;
  signal \count[4]_i_34_n_0\ : STD_LOGIC;
  signal \count[4]_i_35_n_0\ : STD_LOGIC;
  signal \count[4]_i_36_n_0\ : STD_LOGIC;
  signal \count[4]_i_37_n_0\ : STD_LOGIC;
  signal \count[4]_i_38_n_0\ : STD_LOGIC;
  signal \count[4]_i_39_n_0\ : STD_LOGIC;
  signal \count[4]_i_41_n_0\ : STD_LOGIC;
  signal \count[4]_i_42_n_0\ : STD_LOGIC;
  signal \count[4]_i_43_n_0\ : STD_LOGIC;
  signal \count[4]_i_44_n_0\ : STD_LOGIC;
  signal \count[4]_i_45_n_0\ : STD_LOGIC;
  signal \count[4]_i_46_n_0\ : STD_LOGIC;
  signal \count[4]_i_47_n_0\ : STD_LOGIC;
  signal \count[4]_i_48_n_0\ : STD_LOGIC;
  signal \count[4]_i_51_n_0\ : STD_LOGIC;
  signal \count[4]_i_52_n_0\ : STD_LOGIC;
  signal \count[4]_i_53_n_0\ : STD_LOGIC;
  signal \count[4]_i_54_n_0\ : STD_LOGIC;
  signal \count[4]_i_55_n_0\ : STD_LOGIC;
  signal \count[4]_i_56_n_0\ : STD_LOGIC;
  signal \count[4]_i_57_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_15_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_16_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_17_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_18_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_19_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux_i_19_n_0 : STD_LOGIC;
  signal \done_aux_i_1__4_n_0\ : STD_LOGIC;
  signal done_aux_i_20_n_0 : STD_LOGIC;
  signal done_aux_i_21_n_0 : STD_LOGIC;
  signal done_aux_i_22_n_0 : STD_LOGIC;
  signal done_aux_i_23_n_0 : STD_LOGIC;
  signal done_aux_i_24_n_0 : STD_LOGIC;
  signal done_aux_i_25_n_0 : STD_LOGIC;
  signal done_aux_i_26_n_0 : STD_LOGIC;
  signal done_aux_i_27_n_0 : STD_LOGIC;
  signal done_aux_i_28_n_0 : STD_LOGIC;
  signal done_aux_i_29_n_0 : STD_LOGIC;
  signal \done_aux_i_2__0_n_0\ : STD_LOGIC;
  signal done_aux_i_30_n_0 : STD_LOGIC;
  signal done_aux_i_31_n_0 : STD_LOGIC;
  signal done_aux_i_32_n_0 : STD_LOGIC;
  signal done_aux_i_33_n_0 : STD_LOGIC;
  signal done_aux_i_34_n_0 : STD_LOGIC;
  signal done_aux_i_35_n_0 : STD_LOGIC;
  signal done_aux_i_36_n_0 : STD_LOGIC;
  signal done_aux_i_37_n_0 : STD_LOGIC;
  signal done_aux_i_38_n_0 : STD_LOGIC;
  signal \done_aux_i_40__2_n_0\ : STD_LOGIC;
  signal done_aux_i_41_n_0 : STD_LOGIC;
  signal done_aux_i_42_n_0 : STD_LOGIC;
  signal \done_aux_i_43__1_n_0\ : STD_LOGIC;
  signal done_aux_i_44_n_0 : STD_LOGIC;
  signal done_aux_i_45_n_0 : STD_LOGIC;
  signal done_aux_i_46_n_0 : STD_LOGIC;
  signal done_aux_i_47_n_0 : STD_LOGIC;
  signal done_aux_i_50_n_0 : STD_LOGIC;
  signal done_aux_i_51_n_0 : STD_LOGIC;
  signal done_aux_i_52_n_0 : STD_LOGIC;
  signal done_aux_i_53_n_0 : STD_LOGIC;
  signal done_aux_i_54_n_0 : STD_LOGIC;
  signal done_aux_i_55_n_0 : STD_LOGIC;
  signal done_aux_i_56_n_0 : STD_LOGIC;
  signal done_aux_i_9_n_0 : STD_LOGIC;
  signal done_aux_reg_i_13_n_0 : STD_LOGIC;
  signal done_aux_reg_i_14_n_0 : STD_LOGIC;
  signal done_aux_reg_i_15_n_0 : STD_LOGIC;
  signal done_aux_reg_i_16_n_0 : STD_LOGIC;
  signal done_aux_reg_i_17_n_0 : STD_LOGIC;
  signal done_aux_reg_i_18_n_0 : STD_LOGIC;
  signal done_aux_reg_i_3_n_0 : STD_LOGIC;
  signal done_aux_reg_i_4_n_0 : STD_LOGIC;
  signal done_aux_reg_i_6_n_0 : STD_LOGIC;
  signal done_aux_reg_i_7_n_0 : STD_LOGIC;
  signal done_aux_reg_i_8_n_0 : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__0_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__1_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \count[1]_i_1__1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count[4]_i_2__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count[4]_i_51\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of done_aux_i_50 : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \j[0]_i_1__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \j[1]_i_1__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \j[2]_i_1__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \j[3]_i_2\ : label is "soft_lutpair123";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => \count_reg_reg[0]\(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \count_reg_reg[0]\(3),
      I4 => \count_reg_reg[0]\(2),
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
\FSM_onehot_state[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => done,
      I2 => \count_reg_reg[0]\(3),
      I3 => next_out_9,
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
      I3 => \count_reg_reg[0]\(4),
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__0\(0)
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
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \plusOp__0\(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \plusOp__0\(3)
    );
\count[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BB8B8B88B888"
    )
        port map (
      I0 => \count[4]_i_20_n_0\,
      I1 => \count_reg[0]_0\(0),
      I2 => done_aux_reg_i_6_0(4),
      I3 => \count[4]_i_21_n_0\,
      I4 => a_in_9(33),
      I5 => \count[4]_i_22_n_0\,
      O => \count[4]_i_10_n_0\
    );
\count[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => \count[4]_i_29_0\(2),
      I1 => done_aux_reg_i_6_0(2),
      I2 => \count[4]_i_29_0\(1),
      I3 => done_aux_reg_i_6_0(0),
      I4 => \count[4]_i_29_0\(0),
      I5 => done_aux_reg_i_6_0(1),
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \count_reg[0]_1\,
      I1 => j_reg(2),
      I2 => \count_reg[0]_2\,
      I3 => j_reg(3),
      I4 => done,
      O => count
    );
\count[4]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4182"
    )
        port map (
      I0 => done_aux_reg_i_6_0(4),
      I1 => done_aux_reg_i_6_0(3),
      I2 => a_in_9(27),
      I3 => a_in_9(28),
      I4 => \count[4]_i_35_n_0\,
      O => \count[4]_i_20_n_0\
    );
\count[4]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_36_n_0\,
      I1 => done_aux_reg_i_6_0(3),
      I2 => \count[4]_i_37_n_0\,
      I3 => a_in_9(32),
      I4 => \count[4]_i_38_n_0\,
      O => \count[4]_i_21_n_0\
    );
\count[4]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_37_n_0\,
      I1 => done_aux_reg_i_6_0(3),
      I2 => \count[4]_i_36_n_0\,
      I3 => a_in_9(32),
      I4 => \count[4]_i_39_n_0\,
      O => \count[4]_i_22_n_0\
    );
\count[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF8EF4FADA8EA4A"
    )
        port map (
      I0 => a_in_9(6),
      I1 => \count_reg[4]_i_14_0\,
      I2 => a_in_9(5),
      I3 => \count[4]_i_41_n_0\,
      I4 => done_aux_reg_i_6_0(3),
      I5 => \count[4]_i_42_n_0\,
      O => \count[4]_i_23_n_0\
    );
\count[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF3BBC0FCBB30BB"
    )
        port map (
      I0 => \count[4]_i_42_n_0\,
      I1 => a_in_9(6),
      I2 => \count[4]_i_41_n_0\,
      I3 => a_in_9(5),
      I4 => \count_reg[4]_i_14_0\,
      I5 => done_aux_reg_i_6_0(3),
      O => \count[4]_i_24_n_0\
    );
\count[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF8EF4FADA8EA4A"
    )
        port map (
      I0 => a_in_9(4),
      I1 => \count[4]_i_43_n_0\,
      I2 => a_in_9(3),
      I3 => \count[4]_i_44_n_0\,
      I4 => done_aux_reg_i_6_0(3),
      I5 => \count[4]_i_45_n_0\,
      O => \count[4]_i_25_n_0\
    );
\count[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF3BBC0FCBB30BB"
    )
        port map (
      I0 => \count[4]_i_45_n_0\,
      I1 => a_in_9(4),
      I2 => \count[4]_i_44_n_0\,
      I3 => a_in_9(3),
      I4 => \count[4]_i_43_n_0\,
      I5 => done_aux_reg_i_6_0(3),
      O => \count[4]_i_26_n_0\
    );
\count[4]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF8EF4FADA8EA4A"
    )
        port map (
      I0 => a_in_9(13),
      I1 => \count[4]_i_46_n_0\,
      I2 => a_in_9(12),
      I3 => \count[4]_i_47_n_0\,
      I4 => done_aux_reg_i_6_0(3),
      I5 => \count[4]_i_48_n_0\,
      O => \count[4]_i_27_n_0\
    );
\count[4]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF3BBC0FCBB30BB"
    )
        port map (
      I0 => \count[4]_i_48_n_0\,
      I1 => a_in_9(13),
      I2 => \count[4]_i_47_n_0\,
      I3 => a_in_9(12),
      I4 => \count[4]_i_46_n_0\,
      I5 => done_aux_reg_i_6_0(3),
      O => \count[4]_i_28_n_0\
    );
\count[4]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF8EF4FADA8EA4A"
    )
        port map (
      I0 => a_in_9(8),
      I1 => \count_reg[4]_i_17_0\,
      I2 => a_in_9(7),
      I3 => \count_reg[4]_i_17_1\,
      I4 => done_aux_reg_i_6_0(3),
      I5 => \count[4]_i_51_n_0\,
      O => \count[4]_i_29_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(3),
      I3 => count_reg(1),
      I4 => count_reg(4),
      O => \plusOp__0\(4)
    );
\count[4]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF3BBC0FCBB30BB"
    )
        port map (
      I0 => \count[4]_i_51_n_0\,
      I1 => a_in_9(8),
      I2 => \count_reg[4]_i_17_1\,
      I3 => a_in_9(7),
      I4 => \count_reg[4]_i_17_0\,
      I5 => done_aux_reg_i_6_0(3),
      O => \count[4]_i_30_n_0\
    );
\count[4]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF8EF4FADA8EA4A"
    )
        port map (
      I0 => a_in_9(23),
      I1 => \count[4]_i_52_n_0\,
      I2 => done_aux_reg_i_6_0(3),
      I3 => \count[4]_i_53_n_0\,
      I4 => a_in_9(22),
      I5 => \count[4]_i_54_n_0\,
      O => \count[4]_i_31_n_0\
    );
\count[4]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF3BBC0FCBB30BB"
    )
        port map (
      I0 => \count[4]_i_54_n_0\,
      I1 => a_in_9(23),
      I2 => \count[4]_i_53_n_0\,
      I3 => done_aux_reg_i_6_0(3),
      I4 => \count[4]_i_52_n_0\,
      I5 => a_in_9(22),
      O => \count[4]_i_32_n_0\
    );
\count[4]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDF8EF4FADA8EA4A"
    )
        port map (
      I0 => a_in_9(18),
      I1 => \count[4]_i_55_n_0\,
      I2 => done_aux_reg_i_6_0(3),
      I3 => \count[4]_i_56_n_0\,
      I4 => a_in_9(17),
      I5 => \count[4]_i_57_n_0\,
      O => \count[4]_i_33_n_0\
    );
\count[4]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF3BBC0FCBB30BB"
    )
        port map (
      I0 => \count[4]_i_57_n_0\,
      I1 => a_in_9(18),
      I2 => \count[4]_i_56_n_0\,
      I3 => done_aux_reg_i_6_0(3),
      I4 => \count[4]_i_55_n_0\,
      I5 => a_in_9(17),
      O => \count[4]_i_34_n_0\
    );
\count[4]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FDFF7FDBFEFFBFE"
    )
        port map (
      I0 => a_in_9(26),
      I1 => a_in_9(25),
      I2 => a_in_9(24),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => \count[4]_i_35_n_0\
    );
\count[4]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7BFFDEFDFF7BFF"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(30),
      I2 => done_aux_reg_i_6_0(2),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => a_in_9(29),
      O => \count[4]_i_36_n_0\
    );
\count[4]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7DFFDBFFBEFFEFF"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(30),
      I2 => a_in_9(29),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(2),
      O => \count[4]_i_37_n_0\
    );
\count[4]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7EFFFFFFF"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(29),
      I2 => done_aux_reg_i_6_0(1),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(30),
      O => \count[4]_i_38_n_0\
    );
\count[4]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FDFF7FDBFEFFBFE"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(30),
      I2 => a_in_9(29),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => \count[4]_i_39_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \count_reg[4]_i_7_n_0\,
      I1 => \count_reg[4]_i_8_n_0\,
      I2 => \count_reg[0]_0\(2),
      I3 => \count_reg[4]_i_9_n_0\,
      I4 => \count_reg[0]_0\(1),
      I5 => \count[4]_i_10_n_0\,
      O => \j_reg[2]_1\
    );
\count[4]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE7FFFDFFFFFFFF"
    )
        port map (
      I0 => done_aux_i_22_0(0),
      I1 => done_aux_reg_i_6_0(1),
      I2 => done_aux_reg_i_6_0(0),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_i_22_0(1),
      I5 => done_aux_i_22_0(2),
      O => \count[4]_i_41_n_0\
    );
\count[4]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DDBB76DB6EDDBBE"
    )
        port map (
      I0 => done_aux_i_22_0(2),
      I1 => done_aux_i_22_0(1),
      I2 => done_aux_i_22_0(0),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => \count[4]_i_42_n_0\
    );
\count[4]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFEFFFFF"
    )
        port map (
      I0 => a_in_9(1),
      I1 => a_in_9(0),
      I2 => done_aux_reg_i_6_0(1),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(2),
      O => \count[4]_i_43_n_0\
    );
\count[4]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FDFFFFFFFF"
    )
        port map (
      I0 => a_in_9(1),
      I1 => a_in_9(0),
      I2 => done_aux_reg_i_6_0(1),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(2),
      O => \count[4]_i_44_n_0\
    );
\count[4]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFA2FFFF45FFA2"
    )
        port map (
      I0 => a_in_9(2),
      I1 => done_aux_reg_i_6_0(1),
      I2 => a_in_9(1),
      I3 => a_in_9(0),
      I4 => done_aux_reg_i_6_0(2),
      I5 => done_aux_reg_i_6_0(0),
      O => \count[4]_i_45_n_0\
    );
\count[4]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFBBFEFFEFFFFFF"
    )
        port map (
      I0 => a_in_9(11),
      I1 => a_in_9(10),
      I2 => a_in_9(9),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => \count[4]_i_46_n_0\
    );
\count[4]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7DFFBFFFFFD7F"
    )
        port map (
      I0 => a_in_9(11),
      I1 => a_in_9(9),
      I2 => done_aux_reg_i_6_0(1),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(10),
      O => \count[4]_i_47_n_0\
    );
\count[4]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BBFE77BDEE7FDDE"
    )
        port map (
      I0 => a_in_9(11),
      I1 => a_in_9(10),
      I2 => a_in_9(9),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(1),
      O => \count[4]_i_48_n_0\
    );
\count[4]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7DBE"
    )
        port map (
      I0 => \count[4]_i_29_0\(4),
      I1 => \count[4]_i_29_0\(3),
      I2 => done_aux_reg_i_6_0(0),
      I3 => done_aux_reg_i_6_0(1),
      O => \count[4]_i_51_n_0\
    );
\count[4]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7BFFDEFDFF7BFF"
    )
        port map (
      I0 => a_in_9(21),
      I1 => a_in_9(20),
      I2 => done_aux_reg_i_6_0(2),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => a_in_9(19),
      O => \count[4]_i_52_n_0\
    );
\count[4]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7DFFDBFFBEFFEFF"
    )
        port map (
      I0 => a_in_9(21),
      I1 => a_in_9(20),
      I2 => a_in_9(19),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(2),
      O => \count[4]_i_53_n_0\
    );
\count[4]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EBFF7FBDFEFFD7E"
    )
        port map (
      I0 => a_in_9(21),
      I1 => a_in_9(20),
      I2 => a_in_9(19),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(1),
      O => \count[4]_i_54_n_0\
    );
\count[4]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6FFFF6DFFFFDFF"
    )
        port map (
      I0 => a_in_9(16),
      I1 => done_aux_reg_i_6_0(2),
      I2 => done_aux_reg_i_6_0(0),
      I3 => done_aux_reg_i_6_0(1),
      I4 => a_in_9(14),
      I5 => a_in_9(15),
      O => \count[4]_i_55_n_0\
    );
\count[4]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFBFFDFBEFFFFEFF"
    )
        port map (
      I0 => a_in_9(16),
      I1 => a_in_9(15),
      I2 => a_in_9(14),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => \count[4]_i_56_n_0\
    );
\count[4]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FBFF6FBDF6FFDF6"
    )
        port map (
      I0 => a_in_9(16),
      I1 => a_in_9(15),
      I2 => a_in_9(14),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(1),
      O => \count[4]_i_57_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__0\(0),
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
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__0\(4),
      Q => count_reg(4)
    );
\count_reg[4]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[4]_i_23_n_0\,
      I1 => \count[4]_i_24_n_0\,
      O => \count_reg[4]_i_14_n_0\,
      S => done_aux_reg_i_6_0(4)
    );
\count_reg[4]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[4]_i_25_n_0\,
      I1 => \count[4]_i_26_n_0\,
      O => \count_reg[4]_i_15_n_0\,
      S => done_aux_reg_i_6_0(4)
    );
\count_reg[4]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[4]_i_27_n_0\,
      I1 => \count[4]_i_28_n_0\,
      O => \count_reg[4]_i_16_n_0\,
      S => done_aux_reg_i_6_0(4)
    );
\count_reg[4]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[4]_i_29_n_0\,
      I1 => \count[4]_i_30_n_0\,
      O => \count_reg[4]_i_17_n_0\,
      S => done_aux_reg_i_6_0(4)
    );
\count_reg[4]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[4]_i_31_n_0\,
      I1 => \count[4]_i_32_n_0\,
      O => \count_reg[4]_i_18_n_0\,
      S => done_aux_reg_i_6_0(4)
    );
\count_reg[4]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count[4]_i_33_n_0\,
      I1 => \count[4]_i_34_n_0\,
      O => \count_reg[4]_i_19_n_0\,
      S => done_aux_reg_i_6_0(4)
    );
\count_reg[4]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_reg[4]_i_14_n_0\,
      I1 => \count_reg[4]_i_15_n_0\,
      O => \count_reg[4]_i_7_n_0\,
      S => \count_reg[0]_0\(0)
    );
\count_reg[4]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_reg[4]_i_16_n_0\,
      I1 => \count_reg[4]_i_17_n_0\,
      O => \count_reg[4]_i_8_n_0\,
      S => \count_reg[0]_0\(0)
    );
\count_reg[4]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_reg[4]_i_18_n_0\,
      I1 => \count_reg[4]_i_19_n_0\,
      O => \count_reg[4]_i_9_n_0\,
      S => \count_reg[0]_0\(0)
    );
done_aux_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => \count[4]_i_29_0\(2),
      I1 => done_aux_reg_i_6_0(2),
      I2 => \count[4]_i_29_0\(1),
      I3 => done_aux_reg_i_6_0(0),
      I4 => \count[4]_i_29_0\(0),
      I5 => done_aux_reg_i_6_0(1),
      O => \count_reg_reg[2]\
    );
done_aux_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE7D0000"
    )
        port map (
      I0 => done_aux_reg_i_6_0(4),
      I1 => done_aux_reg_i_6_0(3),
      I2 => a_in_9(27),
      I3 => a_in_9(28),
      I4 => done_aux_i_34_n_0,
      O => done_aux_i_19_n_0
    );
\done_aux_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01FF0100"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => j_reg(2),
      I3 => j_reg(3),
      I4 => \done_aux_i_2__0_n_0\,
      I5 => done,
      O => \done_aux_i_1__4_n_0\
    );
done_aux_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => done_aux_i_35_n_0,
      I1 => done_aux_reg_i_6_0(3),
      I2 => done_aux_i_36_n_0,
      I3 => a_in_9(32),
      I4 => done_aux_i_37_n_0,
      O => done_aux_i_20_n_0
    );
done_aux_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => done_aux_i_36_n_0,
      I1 => done_aux_reg_i_6_0(3),
      I2 => done_aux_i_35_n_0,
      I3 => a_in_9(32),
      I4 => done_aux_i_38_n_0,
      O => done_aux_i_21_n_0
    );
done_aux_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => a_in_9(6),
      I1 => done_aux_reg_i_13_0,
      I2 => a_in_9(5),
      I3 => \done_aux_i_40__2_n_0\,
      I4 => done_aux_reg_i_6_0(3),
      I5 => done_aux_i_41_n_0,
      O => done_aux_i_22_n_0
    );
done_aux_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => done_aux_i_41_n_0,
      I1 => a_in_9(6),
      I2 => \done_aux_i_40__2_n_0\,
      I3 => a_in_9(5),
      I4 => done_aux_reg_i_13_0,
      I5 => done_aux_reg_i_6_0(3),
      O => done_aux_i_23_n_0
    );
done_aux_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => a_in_9(4),
      I1 => done_aux_i_42_n_0,
      I2 => a_in_9(3),
      I3 => \done_aux_i_43__1_n_0\,
      I4 => done_aux_reg_i_6_0(3),
      I5 => done_aux_i_44_n_0,
      O => done_aux_i_24_n_0
    );
done_aux_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => done_aux_i_44_n_0,
      I1 => a_in_9(4),
      I2 => \done_aux_i_43__1_n_0\,
      I3 => a_in_9(3),
      I4 => done_aux_i_42_n_0,
      I5 => done_aux_reg_i_6_0(3),
      O => done_aux_i_25_n_0
    );
done_aux_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => a_in_9(13),
      I1 => done_aux_i_45_n_0,
      I2 => a_in_9(12),
      I3 => done_aux_i_46_n_0,
      I4 => done_aux_reg_i_6_0(3),
      I5 => done_aux_i_47_n_0,
      O => done_aux_i_26_n_0
    );
done_aux_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => done_aux_i_47_n_0,
      I1 => a_in_9(13),
      I2 => done_aux_i_46_n_0,
      I3 => a_in_9(12),
      I4 => done_aux_i_45_n_0,
      I5 => done_aux_reg_i_6_0(3),
      O => done_aux_i_27_n_0
    );
done_aux_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => a_in_9(8),
      I1 => done_aux_reg_i_16_0,
      I2 => a_in_9(7),
      I3 => done_aux_reg_i_16_1,
      I4 => done_aux_reg_i_6_0(3),
      I5 => done_aux_i_50_n_0,
      O => done_aux_i_28_n_0
    );
done_aux_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => done_aux_i_50_n_0,
      I1 => a_in_9(8),
      I2 => done_aux_reg_i_16_1,
      I3 => a_in_9(7),
      I4 => done_aux_reg_i_16_0,
      I5 => done_aux_reg_i_6_0(3),
      O => done_aux_i_29_n_0
    );
\done_aux_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => done_aux_reg_i_3_n_0,
      I1 => done_aux_reg_i_4_n_0,
      I2 => j_reg(2),
      I3 => done_aux_reg_0,
      I4 => \^q\(1),
      I5 => done_aux_reg_1,
      O => \done_aux_i_2__0_n_0\
    );
done_aux_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => done_aux_reg_i_6_n_0,
      I1 => done_aux_reg_i_7_n_0,
      I2 => \count_reg[0]_0\(2),
      I3 => done_aux_reg_i_8_n_0,
      I4 => \count_reg[0]_0\(1),
      I5 => done_aux_i_9_n_0,
      O => \j_reg[2]_0\
    );
done_aux_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => a_in_9(23),
      I1 => done_aux_i_51_n_0,
      I2 => done_aux_reg_i_6_0(3),
      I3 => done_aux_i_52_n_0,
      I4 => a_in_9(22),
      I5 => done_aux_i_53_n_0,
      O => done_aux_i_30_n_0
    );
done_aux_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => done_aux_i_53_n_0,
      I1 => a_in_9(23),
      I2 => done_aux_i_52_n_0,
      I3 => done_aux_reg_i_6_0(3),
      I4 => done_aux_i_51_n_0,
      I5 => a_in_9(22),
      O => done_aux_i_31_n_0
    );
done_aux_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => a_in_9(18),
      I1 => done_aux_i_54_n_0,
      I2 => done_aux_reg_i_6_0(3),
      I3 => done_aux_i_55_n_0,
      I4 => a_in_9(17),
      I5 => done_aux_i_56_n_0,
      O => done_aux_i_32_n_0
    );
done_aux_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => done_aux_i_56_n_0,
      I1 => a_in_9(18),
      I2 => done_aux_i_55_n_0,
      I3 => done_aux_reg_i_6_0(3),
      I4 => done_aux_i_54_n_0,
      I5 => a_in_9(17),
      O => done_aux_i_33_n_0
    );
done_aux_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => a_in_9(26),
      I1 => a_in_9(25),
      I2 => a_in_9(24),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_34_n_0
    );
done_aux_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842102840000"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(30),
      I2 => done_aux_reg_i_6_0(2),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => a_in_9(29),
      O => done_aux_i_35_n_0
    );
done_aux_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0802204004011000"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(30),
      I2 => a_in_9(29),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_36_n_0
    );
done_aux_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000810000000"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(29),
      I2 => done_aux_reg_i_6_0(0),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(30),
      O => done_aux_i_37_n_0
    );
done_aux_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => a_in_9(31),
      I1 => a_in_9(30),
      I2 => a_in_9(29),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_38_n_0
    );
\done_aux_i_40__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0024000200000000"
    )
        port map (
      I0 => done_aux_i_22_0(0),
      I1 => done_aux_reg_i_6_0(0),
      I2 => done_aux_reg_i_6_0(1),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_i_22_0(1),
      I5 => done_aux_i_22_0(2),
      O => \done_aux_i_40__2_n_0\
    );
done_aux_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8224489249122441"
    )
        port map (
      I0 => done_aux_i_22_0(2),
      I1 => done_aux_i_22_0(1),
      I2 => done_aux_i_22_0(0),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_41_n_0
    );
done_aux_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000000"
    )
        port map (
      I0 => a_in_9(1),
      I1 => a_in_9(0),
      I2 => done_aux_reg_i_6_0(0),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(2),
      O => done_aux_i_42_n_0
    );
\done_aux_i_43__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008200000000"
    )
        port map (
      I0 => a_in_9(1),
      I1 => a_in_9(0),
      I2 => done_aux_reg_i_6_0(0),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(2),
      O => \done_aux_i_43__1_n_0\
    );
done_aux_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA0000BA5D00005D"
    )
        port map (
      I0 => a_in_9(2),
      I1 => done_aux_reg_i_6_0(1),
      I2 => a_in_9(1),
      I3 => a_in_9(0),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_44_n_0
    );
done_aux_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0240041001000000"
    )
        port map (
      I0 => a_in_9(11),
      I1 => a_in_9(10),
      I2 => a_in_9(9),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_45_n_0
    );
done_aux_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008200400000820"
    )
        port map (
      I0 => a_in_9(11),
      I1 => a_in_9(9),
      I2 => done_aux_reg_i_6_0(0),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(2),
      I5 => a_in_9(10),
      O => done_aux_i_46_n_0
    );
done_aux_i_47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8440211818840221"
    )
        port map (
      I0 => a_in_9(11),
      I1 => a_in_9(10),
      I2 => a_in_9(9),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(0),
      O => done_aux_i_47_n_0
    );
done_aux_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \count[4]_i_29_0\(4),
      I1 => \count[4]_i_29_0\(3),
      I2 => done_aux_reg_i_6_0(1),
      I3 => done_aux_reg_i_6_0(0),
      O => done_aux_i_50_n_0
    );
done_aux_i_51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842102840000"
    )
        port map (
      I0 => a_in_9(21),
      I1 => a_in_9(20),
      I2 => done_aux_reg_i_6_0(2),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => a_in_9(19),
      O => done_aux_i_51_n_0
    );
done_aux_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0802204004011000"
    )
        port map (
      I0 => a_in_9(21),
      I1 => a_in_9(20),
      I2 => a_in_9(19),
      I3 => done_aux_reg_i_6_0(1),
      I4 => done_aux_reg_i_6_0(0),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_52_n_0
    );
done_aux_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8140201008040281"
    )
        port map (
      I0 => a_in_9(21),
      I1 => a_in_9(20),
      I2 => a_in_9(19),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(0),
      O => done_aux_i_53_n_0
    );
done_aux_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000920000020"
    )
        port map (
      I0 => a_in_9(16),
      I1 => done_aux_reg_i_6_0(2),
      I2 => done_aux_reg_i_6_0(1),
      I3 => done_aux_reg_i_6_0(0),
      I4 => a_in_9(14),
      I5 => a_in_9(15),
      O => done_aux_i_54_n_0
    );
done_aux_i_55: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002400410010000"
    )
        port map (
      I0 => a_in_9(16),
      I1 => a_in_9(15),
      I2 => a_in_9(14),
      I3 => done_aux_reg_i_6_0(0),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(2),
      O => done_aux_i_55_n_0
    );
done_aux_i_56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9040209009040209"
    )
        port map (
      I0 => a_in_9(16),
      I1 => a_in_9(15),
      I2 => a_in_9(14),
      I3 => done_aux_reg_i_6_0(2),
      I4 => done_aux_reg_i_6_0(1),
      I5 => done_aux_reg_i_6_0(0),
      O => done_aux_i_56_n_0
    );
done_aux_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BB8B8B88B888"
    )
        port map (
      I0 => done_aux_i_19_n_0,
      I1 => \count_reg[0]_0\(0),
      I2 => done_aux_reg_i_6_0(4),
      I3 => done_aux_i_20_n_0,
      I4 => a_in_9(33),
      I5 => done_aux_i_21_n_0,
      O => done_aux_i_9_n_0
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__4_n_0\,
      Q => done
    );
done_aux_reg_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_22_n_0,
      I1 => done_aux_i_23_n_0,
      O => done_aux_reg_i_13_n_0,
      S => done_aux_reg_i_6_0(4)
    );
done_aux_reg_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_24_n_0,
      I1 => done_aux_i_25_n_0,
      O => done_aux_reg_i_14_n_0,
      S => done_aux_reg_i_6_0(4)
    );
done_aux_reg_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_26_n_0,
      I1 => done_aux_i_27_n_0,
      O => done_aux_reg_i_15_n_0,
      S => done_aux_reg_i_6_0(4)
    );
done_aux_reg_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_28_n_0,
      I1 => done_aux_i_29_n_0,
      O => done_aux_reg_i_16_n_0,
      S => done_aux_reg_i_6_0(4)
    );
done_aux_reg_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_30_n_0,
      I1 => done_aux_i_31_n_0,
      O => done_aux_reg_i_17_n_0,
      S => done_aux_reg_i_6_0(4)
    );
done_aux_reg_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_32_n_0,
      I1 => done_aux_i_33_n_0,
      O => done_aux_reg_i_18_n_0,
      S => done_aux_reg_i_6_0(4)
    );
done_aux_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_i_2__0_2\,
      I1 => \done_aux_i_2__0_3\,
      O => done_aux_reg_i_3_n_0,
      S => \^q\(0)
    );
done_aux_reg_i_4: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_i_2__0_0\,
      I1 => \done_aux_i_2__0_1\,
      O => done_aux_reg_i_4_n_0,
      S => \^q\(0)
    );
done_aux_reg_i_6: unisim.vcomponents.MUXF8
     port map (
      I0 => done_aux_reg_i_13_n_0,
      I1 => done_aux_reg_i_14_n_0,
      O => done_aux_reg_i_6_n_0,
      S => \count_reg[0]_0\(0)
    );
done_aux_reg_i_7: unisim.vcomponents.MUXF8
     port map (
      I0 => done_aux_reg_i_15_n_0,
      I1 => done_aux_reg_i_16_n_0,
      O => done_aux_reg_i_7_n_0,
      S => \count_reg[0]_0\(0)
    );
done_aux_reg_i_8: unisim.vcomponents.MUXF8
     port map (
      I0 => done_aux_reg_i_17_n_0,
      I1 => done_aux_reg_i_18_n_0,
      O => done_aux_reg_i_8_n_0,
      S => \count_reg[0]_0\(0)
    );
\j[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \j[0]_i_1__0_n_0\
    );
\j[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \p_0_in__0\(1)
    );
\j[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_reg(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \p_0_in__0\(2)
    );
\j[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_reg(3),
      I1 => done,
      O => j0
    );
\j[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => j_reg(2),
      O => \p_0_in__0\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => \^q\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(2),
      Q => j_reg(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(3),
      Q => j_reg(3)
    );
\valid_aux_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => j_reg(3),
      I1 => \valid_aux_i_2__0_n_0\,
      I2 => count_reg(4),
      I3 => count_reg(1),
      I4 => valid,
      O => \valid_aux_i_1__1_n_0\
    );
\valid_aux_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^q\(1),
      I1 => count_reg(3),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => \^q\(0),
      I5 => j_reg(2),
      O => \valid_aux_i_2__0_n_0\
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\ is
  port (
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_8 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    done_aux_reg_i_4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_i_10_0 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count[4]_i_10__0_0\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    done_aux_reg_2 : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \count_reg[0]_3\ : in STD_LOGIC;
    \count_reg[0]_4\ : in STD_LOGIC;
    \count_reg[0]_5\ : in STD_LOGIC;
    \count_reg[0]_6\ : in STD_LOGIC;
    \count_reg[0]_7\ : in STD_LOGIC;
    \done_aux_i_2__1_0\ : in STD_LOGIC;
    \done_aux_i_2__1_1\ : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    next_out_8 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\ is
  signal count : STD_LOGIC;
  signal \count[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_14_n_0\ : STD_LOGIC;
  signal \count[4]_i_15_n_0\ : STD_LOGIC;
  signal \count[4]_i_16_n_0\ : STD_LOGIC;
  signal \count[4]_i_17_n_0\ : STD_LOGIC;
  signal \count[4]_i_18_n_0\ : STD_LOGIC;
  signal \count[4]_i_21__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_23__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_24__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_27__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_28__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_29__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_30__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_31__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_32__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_33__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_34__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_35__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_36__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_40__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_41__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_42__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_43__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_45__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_7_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux_i_13_n_0 : STD_LOGIC;
  signal done_aux_i_14_n_0 : STD_LOGIC;
  signal done_aux_i_15_n_0 : STD_LOGIC;
  signal done_aux_i_16_n_0 : STD_LOGIC;
  signal done_aux_i_17_n_0 : STD_LOGIC;
  signal done_aux_i_1_n_0 : STD_LOGIC;
  signal \done_aux_i_23__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_24__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_25__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_26__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_27__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_28__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_29__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_2__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_30__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_31__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_32__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_33__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_34__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_44__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_45__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_46__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_47__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_48__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_49__0_n_0\ : STD_LOGIC;
  signal done_aux_reg_i_11_n_0 : STD_LOGIC;
  signal done_aux_reg_i_12_n_0 : STD_LOGIC;
  signal \done_aux_reg_i_5__0_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__1_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^j_reg[0]_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__3_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \count[1]_i_1__3\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \count[2]_i_1__1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \count[3]_i_1__1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \count[4]_i_12__0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \count[4]_i_13__0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \count[4]_i_14\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \count[4]_i_15\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \count[4]_i_16\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \count[4]_i_17\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \count[4]_i_21__0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \count[4]_i_22__0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \count[4]_i_23__0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \count[4]_i_24__0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \count[4]_i_2__1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \count[4]_i_48__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \count[4]_i_4__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of done_aux_i_13 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of done_aux_i_14 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of done_aux_i_40 : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \j[1]_i_1__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \j[2]_i_1__1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \j[3]_i_2__0\ : label is "soft_lutpair112";
begin
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
  \j_reg[0]_2\(0) <= \^j_reg[0]_2\(0);
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => \count_reg_reg[0]_1\(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \count_reg_reg[0]_1\(3),
      I4 => \count_reg_reg[0]_1\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => done,
      I2 => \count_reg_reg[0]_1\(3),
      I3 => next_out_8,
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => E(0)
    );
\acks_out_reg_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]_1\(4),
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__1\: unisim.vcomponents.LUT1
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
\count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__1\(2)
    );
\count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__1\(3)
    );
\count[4]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_8(12),
      I1 => \count[4]_i_23__0_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_24__0_n_0\,
      O => \count_reg_reg[4]\
    );
\count[4]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_27__0_n_0\,
      I1 => a_in_8(18),
      I2 => \count[4]_i_28__0_n_0\,
      I3 => Q(3),
      O => \count[4]_i_12__0_n_0\
    );
\count[4]_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_28__0_n_0\,
      I1 => a_in_8(18),
      I2 => \count[4]_i_27__0_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_29__0_n_0\,
      O => \count[4]_i_13__0_n_0\
    );
\count[4]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_30__0_n_0\,
      I1 => a_in_8(23),
      I2 => \count[4]_i_31__0_n_0\,
      I3 => Q(3),
      O => \count[4]_i_14_n_0\
    );
\count[4]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_31__0_n_0\,
      I1 => a_in_8(23),
      I2 => \count[4]_i_30__0_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_32__0_n_0\,
      O => \count[4]_i_15_n_0\
    );
\count[4]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_33__0_n_0\,
      I1 => a_in_8(28),
      I2 => \count[4]_i_34__0_n_0\,
      I3 => Q(3),
      O => \count[4]_i_16_n_0\
    );
\count[4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_34__0_n_0\,
      I1 => a_in_8(28),
      I2 => \count[4]_i_33__0_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_35__0_n_0\,
      O => \count[4]_i_17_n_0\
    );
\count[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4182"
    )
        port map (
      I0 => Q(4),
      I1 => a_in_8(33),
      I2 => Q(3),
      I3 => a_in_8(34),
      I4 => \count[4]_i_36__0_n_0\,
      O => \count[4]_i_18_n_0\
    );
\count[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005404"
    )
        port map (
      I0 => j_reg(3),
      I1 => \count[4]_i_3__1_n_0\,
      I2 => j_reg(2),
      I3 => \count[4]_i_4__1_n_0\,
      I4 => done,
      O => count
    );
\count[4]_i_21__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_40__0_n_0\,
      I1 => a_in_8(6),
      I2 => \count[4]_i_41__0_n_0\,
      I3 => Q(3),
      O => \count[4]_i_21__0_n_0\
    );
\count[4]_i_22__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_41__0_n_0\,
      I1 => a_in_8(6),
      I2 => \count[4]_i_40__0_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_42__0_n_0\,
      O => \count[4]_i_22__0_n_0\
    );
\count[4]_i_23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_43__0_n_0\,
      I1 => a_in_8(11),
      I2 => \count[4]_i_10__0_0\,
      I3 => Q(3),
      O => \count[4]_i_23__0_n_0\
    );
\count[4]_i_24__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_10__0_0\,
      I1 => a_in_8(11),
      I2 => \count[4]_i_43__0_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_45__0_n_0\,
      O => \count[4]_i_24__0_n_0\
    );
\count[4]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7DFFBFFFFFD7F"
    )
        port map (
      I0 => a_in_8(17),
      I1 => a_in_8(15),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_8(16),
      O => \count[4]_i_27__0_n_0\
    );
\count[4]_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFBBFEFFEFFFFFF"
    )
        port map (
      I0 => a_in_8(17),
      I1 => a_in_8(16),
      I2 => a_in_8(15),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \count[4]_i_28__0_n_0\
    );
\count[4]_i_29__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BBFE77BDEE7FDDE"
    )
        port map (
      I0 => a_in_8(17),
      I1 => a_in_8(16),
      I2 => a_in_8(15),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \count[4]_i_29__0_n_0\
    );
\count[4]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => \plusOp__1\(4)
    );
\count[4]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6FFFF6DFFFFDFF"
    )
        port map (
      I0 => a_in_8(22),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => a_in_8(20),
      I5 => a_in_8(21),
      O => \count[4]_i_30__0_n_0\
    );
\count[4]_i_31__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFBFFDFBEFFFFEFF"
    )
        port map (
      I0 => a_in_8(22),
      I1 => a_in_8(21),
      I2 => a_in_8(20),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \count[4]_i_31__0_n_0\
    );
\count[4]_i_32__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FBFF6FBDF6FFDF6"
    )
        port map (
      I0 => a_in_8(22),
      I1 => a_in_8(21),
      I2 => a_in_8(20),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \count[4]_i_32__0_n_0\
    );
\count[4]_i_33__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7BFFDEFDFF7BFF"
    )
        port map (
      I0 => a_in_8(27),
      I1 => a_in_8(26),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => a_in_8(25),
      O => \count[4]_i_33__0_n_0\
    );
\count[4]_i_34__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7DFFDBFFBEFFEFF"
    )
        port map (
      I0 => a_in_8(27),
      I1 => a_in_8(26),
      I2 => a_in_8(25),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_34__0_n_0\
    );
\count[4]_i_35__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EBFF7FBDFEFFD7E"
    )
        port map (
      I0 => a_in_8(27),
      I1 => a_in_8(26),
      I2 => a_in_8(25),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \count[4]_i_35__0_n_0\
    );
\count[4]_i_36__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FDFF7FDBFEFFBFE"
    )
        port map (
      I0 => a_in_8(32),
      I1 => a_in_8(31),
      I2 => a_in_8(30),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \count[4]_i_36__0_n_0\
    );
\count[4]_i_39__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_8(2),
      I1 => Q(2),
      I2 => a_in_8(1),
      I3 => Q(0),
      I4 => a_in_8(0),
      I5 => Q(1),
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \count[4]_i_5__0_n_0\,
      I1 => \count_reg[0]_0\(0),
      I2 => \count[4]_i_6__0_n_0\,
      I3 => \count_reg[0]_0\(1),
      I4 => \count[4]_i_7_n_0\,
      O => \j_reg[0]_0\
    );
\count[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \count_reg[0]_4\,
      I1 => \count_reg[0]_5\,
      I2 => j_reg(1),
      I3 => \count_reg[0]_6\,
      I4 => \^j_reg[0]_2\(0),
      I5 => \count_reg[0]_7\,
      O => \count[4]_i_3__1_n_0\
    );
\count[4]_i_40__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FDFFFFFFFF"
    )
        port map (
      I0 => a_in_8(4),
      I1 => a_in_8(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_8(5),
      O => \count[4]_i_40__0_n_0\
    );
\count[4]_i_41__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFEFFFFF"
    )
        port map (
      I0 => a_in_8(4),
      I1 => a_in_8(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_8(5),
      O => \count[4]_i_41__0_n_0\
    );
\count[4]_i_42__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFA2FFFF45FFA2"
    )
        port map (
      I0 => a_in_8(5),
      I1 => Q(1),
      I2 => a_in_8(4),
      I3 => a_in_8(3),
      I4 => Q(2),
      I5 => Q(0),
      O => \count[4]_i_42__0_n_0\
    );
\count[4]_i_43__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE7FFFDFFFFFFFF"
    )
        port map (
      I0 => a_in_8(8),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => a_in_8(9),
      I5 => a_in_8(10),
      O => \count[4]_i_43__0_n_0\
    );
\count[4]_i_45__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DDBB76DB6EDDBBE"
    )
        port map (
      I0 => a_in_8(10),
      I1 => a_in_8(9),
      I2 => a_in_8(8),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \count[4]_i_45__0_n_0\
    );
\count[4]_i_48__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7DBE"
    )
        port map (
      I0 => a_in_8(14),
      I1 => a_in_8(13),
      I2 => Q(0),
      I3 => Q(1),
      O => \count_reg_reg[0]_0\
    );
\count[4]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \count_reg[0]_1\,
      I1 => j_reg(1),
      I2 => \count_reg[0]_2\,
      I3 => \^j_reg[0]_2\(0),
      I4 => \count_reg[0]_3\,
      O => \count[4]_i_4__1_n_0\
    );
\count[4]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_8(19),
      I1 => \count[4]_i_12__0_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_13__0_n_0\,
      O => \count[4]_i_5__0_n_0\
    );
\count[4]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_8(24),
      I1 => \count[4]_i_14_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_15_n_0\,
      O => \count[4]_i_6__0_n_0\
    );
\count[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_8(29),
      I1 => \count[4]_i_16_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_17_n_0\,
      I4 => \count_reg[0]_0\(0),
      I5 => \count[4]_i_18_n_0\,
      O => \count[4]_i_7_n_0\
    );
\count[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_8(7),
      I1 => \count[4]_i_21__0_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_22__0_n_0\,
      O => \count_reg_reg[4]_0\
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
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__1\(4),
      Q => count_reg(4)
    );
done_aux_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => j_reg(3),
      I1 => \done_aux_i_2__1_n_0\,
      I2 => done,
      O => done_aux_i_1_n_0
    );
done_aux_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_28__0_n_0\,
      I1 => a_in_8(28),
      I2 => \done_aux_i_29__0_n_0\,
      I3 => Q(3),
      O => done_aux_i_13_n_0
    );
done_aux_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_29__0_n_0\,
      I1 => a_in_8(28),
      I2 => \done_aux_i_28__0_n_0\,
      I3 => Q(3),
      I4 => \done_aux_i_30__0_n_0\,
      O => done_aux_i_14_n_0
    );
done_aux_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE7D0000"
    )
        port map (
      I0 => Q(4),
      I1 => a_in_8(33),
      I2 => Q(3),
      I3 => a_in_8(34),
      I4 => \done_aux_i_31__0_n_0\,
      O => done_aux_i_15_n_0
    );
done_aux_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_32__0_n_0\,
      I2 => a_in_8(6),
      I3 => \done_aux_i_33__3_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_34__0_n_0\,
      O => done_aux_i_16_n_0
    );
done_aux_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_34__0_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_33__3_n_0\,
      I3 => a_in_8(6),
      I4 => \done_aux_i_32__0_n_0\,
      I5 => Q(3),
      O => done_aux_i_17_n_0
    );
\done_aux_i_23__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \^count_reg_reg[1]\,
      I1 => Q(4),
      I2 => \^count_reg_reg[0]\,
      I3 => a_in_8(11),
      I4 => done_aux_reg_i_10_0,
      I5 => Q(3),
      O => \done_aux_i_23__0_n_0\
    );
\done_aux_i_24__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_44__0_n_0\,
      I2 => a_in_8(23),
      I3 => \done_aux_i_45__0_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_46__0_n_0\,
      O => \done_aux_i_24__0_n_0\
    );
\done_aux_i_25__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_46__0_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_45__0_n_0\,
      I3 => a_in_8(23),
      I4 => \done_aux_i_44__0_n_0\,
      I5 => Q(3),
      O => \done_aux_i_25__0_n_0\
    );
\done_aux_i_26__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_47__0_n_0\,
      I2 => a_in_8(18),
      I3 => \done_aux_i_48__0_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_49__0_n_0\,
      O => \done_aux_i_26__0_n_0\
    );
\done_aux_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_49__0_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_48__0_n_0\,
      I3 => a_in_8(18),
      I4 => \done_aux_i_47__0_n_0\,
      I5 => Q(3),
      O => \done_aux_i_27__0_n_0\
    );
\done_aux_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000842102840000"
    )
        port map (
      I0 => a_in_8(27),
      I1 => a_in_8(26),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => a_in_8(25),
      O => \done_aux_i_28__0_n_0\
    );
\done_aux_i_29__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0802204004011000"
    )
        port map (
      I0 => a_in_8(27),
      I1 => a_in_8(26),
      I2 => a_in_8(25),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_29__0_n_0\
    );
\done_aux_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => done_aux_reg_0,
      I1 => done_aux_reg_1,
      I2 => j_reg(2),
      I3 => \done_aux_reg_i_5__0_n_0\,
      I4 => j_reg(1),
      I5 => done_aux_reg_2,
      O => \done_aux_i_2__1_n_0\
    );
\done_aux_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8140201008040281"
    )
        port map (
      I0 => a_in_8(27),
      I1 => a_in_8(26),
      I2 => a_in_8(25),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_30__0_n_0\
    );
\done_aux_i_31__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => a_in_8(32),
      I1 => a_in_8(31),
      I2 => a_in_8(30),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \done_aux_i_31__0_n_0\
    );
\done_aux_i_32__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000000"
    )
        port map (
      I0 => a_in_8(4),
      I1 => a_in_8(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_8(5),
      O => \done_aux_i_32__0_n_0\
    );
\done_aux_i_33__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008200000000"
    )
        port map (
      I0 => a_in_8(4),
      I1 => a_in_8(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_8(5),
      O => \done_aux_i_33__3_n_0\
    );
\done_aux_i_34__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA0000BA5D00005D"
    )
        port map (
      I0 => a_in_8(5),
      I1 => Q(1),
      I2 => a_in_8(4),
      I3 => a_in_8(3),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_34__0_n_0\
    );
\done_aux_i_37__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_8(2),
      I1 => Q(2),
      I2 => a_in_8(1),
      I3 => Q(0),
      I4 => a_in_8(0),
      I5 => Q(1),
      O => \count_reg_reg[2]\
    );
done_aux_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => a_in_8(14),
      I1 => a_in_8(13),
      I2 => Q(1),
      I3 => Q(0),
      O => \count_reg_reg[1]_0\
    );
\done_aux_i_42__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0024000200000000"
    )
        port map (
      I0 => a_in_8(8),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => a_in_8(9),
      I5 => a_in_8(10),
      O => \^count_reg_reg[0]\
    );
done_aux_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8224489249122441"
    )
        port map (
      I0 => a_in_8(10),
      I1 => a_in_8(9),
      I2 => a_in_8(8),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \^count_reg_reg[1]\
    );
\done_aux_i_44__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002400410010000"
    )
        port map (
      I0 => a_in_8(22),
      I1 => a_in_8(21),
      I2 => a_in_8(20),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \done_aux_i_44__0_n_0\
    );
\done_aux_i_45__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000920000020"
    )
        port map (
      I0 => a_in_8(22),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => a_in_8(20),
      I5 => a_in_8(21),
      O => \done_aux_i_45__0_n_0\
    );
\done_aux_i_46__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9040209009040209"
    )
        port map (
      I0 => a_in_8(22),
      I1 => a_in_8(21),
      I2 => a_in_8(20),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_46__0_n_0\
    );
\done_aux_i_47__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0240041001000000"
    )
        port map (
      I0 => a_in_8(17),
      I1 => a_in_8(16),
      I2 => a_in_8(15),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \done_aux_i_47__0_n_0\
    );
\done_aux_i_48__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008200400000820"
    )
        port map (
      I0 => a_in_8(17),
      I1 => a_in_8(15),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_8(16),
      O => \done_aux_i_48__0_n_0\
    );
\done_aux_i_49__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8440211818840221"
    )
        port map (
      I0 => a_in_8(17),
      I1 => a_in_8(16),
      I2 => a_in_8(15),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \done_aux_i_49__0_n_0\
    );
done_aux_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_8(29),
      I1 => done_aux_i_13_n_0,
      I2 => Q(4),
      I3 => done_aux_i_14_n_0,
      I4 => \count_reg[0]_0\(0),
      I5 => done_aux_i_15_n_0,
      O => \count_reg_reg[4]_1\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => done_aux_i_1_n_0,
      Q => done
    );
done_aux_reg_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_reg_i_4,
      I1 => \done_aux_i_23__0_n_0\,
      O => \FSM_onehot_state_reg[3]\,
      S => a_in_8(12)
    );
done_aux_reg_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_24__0_n_0\,
      I1 => \done_aux_i_25__0_n_0\,
      O => done_aux_reg_i_11_n_0,
      S => a_in_8(24)
    );
done_aux_reg_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_26__0_n_0\,
      I1 => \done_aux_i_27__0_n_0\,
      O => done_aux_reg_i_12_n_0,
      S => a_in_8(19)
    );
done_aux_reg_i_5: unisim.vcomponents.MUXF8
     port map (
      I0 => done_aux_reg_i_11_n_0,
      I1 => done_aux_reg_i_12_n_0,
      O => \j_reg[0]_1\,
      S => \count_reg[0]_0\(0)
    );
\done_aux_reg_i_5__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_i_2__1_0\,
      I1 => \done_aux_i_2__1_1\,
      O => \done_aux_reg_i_5__0_n_0\,
      S => \^j_reg[0]_2\(0)
    );
\done_aux_reg_i_7__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_16_n_0,
      I1 => done_aux_i_17_n_0,
      O => \FSM_onehot_state_reg[3]_0\,
      S => a_in_8(7)
    );
\j[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[0]_2\(0),
      O => \j[0]_i_1__1_n_0\
    );
\j[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(1),
      I1 => \^j_reg[0]_2\(0),
      O => \p_0_in__1\(1)
    );
\j[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(1),
      I2 => \^j_reg[0]_2\(0),
      O => \p_0_in__1\(2)
    );
\j[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => j_reg(3),
      I1 => j_reg(2),
      I2 => j_reg(1),
      I3 => \^j_reg[0]_2\(0),
      I4 => done,
      O => j0
    );
\j[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => j_reg(1),
      I1 => \^j_reg[0]_2\(0),
      I2 => j_reg(2),
      O => \p_0_in__1\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__1_n_0\,
      Q => \^j_reg[0]_2\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__1\(1),
      Q => j_reg(1)
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
\valid_aux_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => j_reg(3),
      I1 => j_reg(2),
      I2 => \valid_aux_i_2__1_n_0\,
      I3 => j_reg(1),
      I4 => valid,
      O => \valid_aux_i_1__3_n_0\
    );
\valid_aux_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      I5 => \^j_reg[0]_2\(0),
      O => \valid_aux_i_2__1_n_0\
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\ is
  port (
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_3\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_7 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \done_aux_i_2__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \done_aux_reg_i_4__0_0\ : in STD_LOGIC;
    \done_aux_reg_i_9__0_0\ : in STD_LOGIC;
    \count[4]_i_11__1_0\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \done_aux_i_2__2_0\ : in STD_LOGIC;
    \done_aux_i_2__2_1\ : in STD_LOGIC;
    \done_aux_i_2__2_2\ : in STD_LOGIC;
    \done_aux_i_2__2_3\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \count_reg[0]_3\ : in STD_LOGIC;
    \count_reg[0]_4\ : in STD_LOGIC;
    \count_reg[0]_5\ : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    next_out_7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\ is
  signal count : STD_LOGIC;
  signal \count[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_17__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_19__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_23__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_24__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_25__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_29__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_30__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_31__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_32__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_33__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_34__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_35__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_36__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_37__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_41__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_42__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_43__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_44__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_46__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_19__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_20__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_21__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_22__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_23__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_26__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_27__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_28__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_29__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_2__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_33__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_34__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_35__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_36__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_37__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_38__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_42__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_43__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_44__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_45__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_46__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_47__1_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_10__0_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_13__0_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_14__0_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_3__0_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_4__1_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_9__0_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__2_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^j_reg[0]_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__5_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \count[1]_i_1__5\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \count[2]_i_1__2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \count[3]_i_1__2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \count[4]_i_14__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \count[4]_i_15__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \count[4]_i_16__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \count[4]_i_17__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \count[4]_i_18__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \count[4]_i_19__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \count[4]_i_22__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \count[4]_i_23__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \count[4]_i_24__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \count[4]_i_25__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \count[4]_i_28__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \count[4]_i_2__2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \count[4]_i_4__2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \done_aux_i_41__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \j[1]_i_1__3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \j[2]_i_1__2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \j[3]_i_2__1\ : label is "soft_lutpair92";
begin
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
  \j_reg[0]_2\(0) <= \^j_reg[0]_2\(0);
\FSM_onehot_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => \count_reg_reg[0]_1\(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \count_reg_reg[0]_1\(3),
      I4 => \count_reg_reg[0]_1\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => done,
      I2 => \count_reg_reg[0]_1\(3),
      I3 => next_out_7,
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => E(0)
    );
\acks_out_reg_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]_1\(4),
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__2\(0)
    );
\count[1]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__2\(1)
    );
\count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__2\(2)
    );
\count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__2\(3)
    );
\count[4]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(7),
      I1 => \count[4]_i_22__1_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_23__1_n_0\,
      O => \count_reg_reg[4]\
    );
\count[4]_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(12),
      I1 => \count[4]_i_24__1_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_25__1_n_0\,
      O => \count_reg_reg[4]_3\
    );
\count[4]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_29__1_n_0\,
      I1 => a_in_7(18),
      I2 => \count[4]_i_30__1_n_0\,
      I3 => Q(3),
      O => \count[4]_i_14__0_n_0\
    );
\count[4]_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_30__1_n_0\,
      I1 => a_in_7(18),
      I2 => \count[4]_i_29__1_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_31__1_n_0\,
      O => \count[4]_i_15__0_n_0\
    );
\count[4]_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_32__1_n_0\,
      I1 => a_in_7(23),
      I2 => \count[4]_i_33__1_n_0\,
      I3 => Q(3),
      O => \count[4]_i_16__0_n_0\
    );
\count[4]_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_33__1_n_0\,
      I1 => a_in_7(23),
      I2 => \count[4]_i_32__1_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_34__1_n_0\,
      O => \count[4]_i_17__0_n_0\
    );
\count[4]_i_18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_35__1_n_0\,
      I1 => a_in_7(28),
      I2 => \count[4]_i_36__1_n_0\,
      I3 => Q(3),
      O => \count[4]_i_18__0_n_0\
    );
\count[4]_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_36__1_n_0\,
      I1 => a_in_7(28),
      I2 => \count[4]_i_35__1_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_37__1_n_0\,
      O => \count[4]_i_19__0_n_0\
    );
\count[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \count[4]_i_3__2_n_0\,
      I1 => j_reg(1),
      I2 => \count[4]_i_4__2_n_0\,
      I3 => j_reg(3),
      I4 => done,
      O => count
    );
\count[4]_i_22__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_41__1_n_0\,
      I1 => a_in_7(6),
      I2 => \count[4]_i_42__1_n_0\,
      I3 => Q(3),
      O => \count[4]_i_22__1_n_0\
    );
\count[4]_i_23__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_42__1_n_0\,
      I1 => a_in_7(6),
      I2 => \count[4]_i_41__1_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_43__1_n_0\,
      O => \count[4]_i_23__1_n_0\
    );
\count[4]_i_24__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_44__1_n_0\,
      I1 => a_in_7(11),
      I2 => \count[4]_i_11__1_0\,
      I3 => Q(3),
      O => \count[4]_i_24__1_n_0\
    );
\count[4]_i_25__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_11__1_0\,
      I1 => a_in_7(11),
      I2 => \count[4]_i_44__1_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_46__1_n_0\,
      O => \count[4]_i_25__1_n_0\
    );
\count[4]_i_28__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7BDE"
    )
        port map (
      I0 => a_in_7(14),
      I1 => a_in_7(13),
      I2 => Q(1),
      I3 => Q(0),
      O => \count_reg_reg[1]_0\
    );
\count[4]_i_29__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7DFFBFFFFF7DF"
    )
        port map (
      I0 => a_in_7(17),
      I1 => a_in_7(15),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_7(16),
      O => \count[4]_i_29__1_n_0\
    );
\count[4]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => \plusOp__2\(4)
    );
\count[4]_i_30__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDBFFBEFFEFFFFFF"
    )
        port map (
      I0 => a_in_7(17),
      I1 => a_in_7(16),
      I2 => a_in_7(15),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_30__1_n_0\
    );
\count[4]_i_31__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BBFDEE7E77BFDDE"
    )
        port map (
      I0 => a_in_7(17),
      I1 => a_in_7(16),
      I2 => a_in_7(15),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \count[4]_i_31__1_n_0\
    );
\count[4]_i_32__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFF6DFFFFFDF"
    )
        port map (
      I0 => a_in_7(22),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => a_in_7(20),
      I5 => a_in_7(21),
      O => \count[4]_i_32__1_n_0\
    );
\count[4]_i_33__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFBFFDFBEFFFFEFF"
    )
        port map (
      I0 => a_in_7(22),
      I1 => a_in_7(21),
      I2 => a_in_7(20),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \count[4]_i_33__1_n_0\
    );
\count[4]_i_34__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FBFDF6FF6FBFDF6"
    )
        port map (
      I0 => a_in_7(22),
      I1 => a_in_7(21),
      I2 => a_in_7(20),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \count[4]_i_34__1_n_0\
    );
\count[4]_i_35__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7BDEFD7BFFFF"
    )
        port map (
      I0 => a_in_7(27),
      I1 => a_in_7(26),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => a_in_7(25),
      O => \count[4]_i_35__1_n_0\
    );
\count[4]_i_36__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7DFFDBFFBEFFEFF"
    )
        port map (
      I0 => a_in_7(27),
      I1 => a_in_7(26),
      I2 => a_in_7(25),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_36__1_n_0\
    );
\count[4]_i_37__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EBFDFEFF7FBFD7E"
    )
        port map (
      I0 => a_in_7(27),
      I1 => a_in_7(26),
      I2 => a_in_7(25),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \count[4]_i_37__1_n_0\
    );
\count[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count_reg[0]_1\,
      I2 => j_reg(2),
      I3 => \count_reg[0]_2\,
      I4 => \^j_reg[0]_2\(0),
      I5 => \count_reg[0]_3\,
      O => \count[4]_i_3__2_n_0\
    );
\count[4]_i_40__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_7(2),
      I1 => Q(2),
      I2 => a_in_7(1),
      I3 => Q(0),
      I4 => a_in_7(0),
      I5 => Q(1),
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_41__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7DFFFFFFFF"
    )
        port map (
      I0 => a_in_7(4),
      I1 => a_in_7(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_7(5),
      O => \count[4]_i_41__1_n_0\
    );
\count[4]_i_42__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFEFFFFF"
    )
        port map (
      I0 => a_in_7(4),
      I1 => a_in_7(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_7(5),
      O => \count[4]_i_42__1_n_0\
    );
\count[4]_i_43__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFA2FFFF45FFA2"
    )
        port map (
      I0 => a_in_7(5),
      I1 => Q(1),
      I2 => a_in_7(4),
      I3 => a_in_7(3),
      I4 => Q(2),
      I5 => Q(0),
      O => \count[4]_i_43__1_n_0\
    );
\count[4]_i_44__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDBFFFDFFFFFFFF"
    )
        port map (
      I0 => a_in_7(8),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => a_in_7(9),
      I5 => a_in_7(10),
      O => \count[4]_i_44__1_n_0\
    );
\count[4]_i_46__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DB7DB6DB6DBEDBE"
    )
        port map (
      I0 => a_in_7(10),
      I1 => a_in_7(9),
      I2 => a_in_7(8),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_46__1_n_0\
    );
\count[4]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \count_reg[0]_4\,
      I1 => \^j_reg[0]_2\(0),
      I2 => \count_reg[0]_5\,
      I3 => j_reg(2),
      O => \count[4]_i_4__2_n_0\
    );
\count[4]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(19),
      I1 => \count[4]_i_14__0_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_15__0_n_0\,
      O => \count_reg_reg[4]_2\
    );
\count[4]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(24),
      I1 => \count[4]_i_16__0_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_17__0_n_0\,
      O => \count_reg_reg[4]_1\
    );
\count[4]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(29),
      I1 => \count[4]_i_18__0_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_19__0_n_0\,
      O => \count_reg_reg[4]_0\
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
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__2\(4),
      Q => count_reg(4)
    );
\done_aux_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_7(2),
      I1 => Q(2),
      I2 => a_in_7(1),
      I3 => Q(0),
      I4 => a_in_7(0),
      I5 => Q(1),
      O => \count_reg_reg[2]\
    );
\done_aux_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \^count_reg_reg[0]\,
      I1 => Q(4),
      I2 => \^count_reg_reg[1]\,
      I3 => a_in_7(11),
      I4 => \done_aux_reg_i_9__0_0\,
      I5 => Q(3),
      O => \done_aux_i_19__1_n_0\
    );
\done_aux_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \done_aux_i_2__2_n_0\,
      I1 => j_reg(3),
      I2 => done,
      O => \done_aux_i_1__1_n_0\
    );
\done_aux_i_20__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_33__0_n_0\,
      I2 => a_in_7(6),
      I3 => \done_aux_i_34__1_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_35__1_n_0\,
      O => \done_aux_i_20__1_n_0\
    );
\done_aux_i_21__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_35__1_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_34__1_n_0\,
      I3 => a_in_7(6),
      I4 => \done_aux_i_33__0_n_0\,
      I5 => Q(3),
      O => \done_aux_i_21__1_n_0\
    );
\done_aux_i_22__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_36__0_n_0\,
      I2 => a_in_7(18),
      I3 => \done_aux_i_37__1_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_38__1_n_0\,
      O => \done_aux_i_22__1_n_0\
    );
\done_aux_i_23__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_38__1_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_37__1_n_0\,
      I3 => a_in_7(18),
      I4 => \done_aux_i_36__0_n_0\,
      I5 => Q(3),
      O => \done_aux_i_23__1_n_0\
    );
\done_aux_i_26__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_42__0_n_0\,
      I2 => a_in_7(28),
      I3 => \done_aux_i_43__0_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_44__1_n_0\,
      O => \done_aux_i_26__1_n_0\
    );
\done_aux_i_27__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_44__1_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_43__0_n_0\,
      I3 => a_in_7(28),
      I4 => \done_aux_i_42__0_n_0\,
      I5 => Q(3),
      O => \done_aux_i_27__1_n_0\
    );
\done_aux_i_28__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_45__1_n_0\,
      I2 => a_in_7(23),
      I3 => \done_aux_i_46__1_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_47__1_n_0\,
      O => \done_aux_i_28__1_n_0\
    );
\done_aux_i_29__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_47__1_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_46__1_n_0\,
      I3 => a_in_7(23),
      I4 => \done_aux_i_45__1_n_0\,
      I5 => Q(3),
      O => \done_aux_i_29__1_n_0\
    );
\done_aux_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => \^j_reg[0]_2\(0),
      I1 => \done_aux_reg_i_3__0_n_0\,
      I2 => j_reg(1),
      I3 => \done_aux_reg_i_4__1_n_0\,
      I4 => j_reg(2),
      I5 => done_aux_reg_0,
      O => \done_aux_i_2__2_n_0\
    );
\done_aux_i_31__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018000200000000"
    )
        port map (
      I0 => a_in_7(8),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => a_in_7(9),
      I5 => a_in_7(10),
      O => \^count_reg_reg[1]\
    );
\done_aux_i_32__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8248249249241241"
    )
        port map (
      I0 => a_in_7(10),
      I1 => a_in_7(9),
      I2 => a_in_7(8),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \^count_reg_reg[0]\
    );
\done_aux_i_33__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000000"
    )
        port map (
      I0 => a_in_7(4),
      I1 => a_in_7(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_7(5),
      O => \done_aux_i_33__0_n_0\
    );
\done_aux_i_34__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080200000000"
    )
        port map (
      I0 => a_in_7(4),
      I1 => a_in_7(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_7(5),
      O => \done_aux_i_34__1_n_0\
    );
\done_aux_i_35__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA0000BA5D00005D"
    )
        port map (
      I0 => a_in_7(5),
      I1 => Q(1),
      I2 => a_in_7(4),
      I3 => a_in_7(3),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_35__1_n_0\
    );
\done_aux_i_36__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0204401001000000"
    )
        port map (
      I0 => a_in_7(17),
      I1 => a_in_7(16),
      I2 => a_in_7(15),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_36__0_n_0\
    );
\done_aux_i_37__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008200400000280"
    )
        port map (
      I0 => a_in_7(17),
      I1 => a_in_7(15),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_7(16),
      O => \done_aux_i_37__1_n_0\
    );
\done_aux_i_38__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8440188421180221"
    )
        port map (
      I0 => a_in_7(17),
      I1 => a_in_7(16),
      I2 => a_in_7(15),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \done_aux_i_38__1_n_0\
    );
\done_aux_i_41__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => a_in_7(14),
      I1 => a_in_7(13),
      I2 => Q(0),
      I3 => Q(1),
      O => \count_reg_reg[0]_0\
    );
\done_aux_i_42__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0802204004011000"
    )
        port map (
      I0 => a_in_7(27),
      I1 => a_in_7(26),
      I2 => a_in_7(25),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_42__0_n_0\
    );
\done_aux_i_43__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0084002102008400"
    )
        port map (
      I0 => a_in_7(27),
      I1 => a_in_7(26),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => a_in_7(25),
      O => \done_aux_i_43__0_n_0\
    );
\done_aux_i_44__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8140080420100281"
    )
        port map (
      I0 => a_in_7(27),
      I1 => a_in_7(26),
      I2 => a_in_7(25),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \done_aux_i_44__1_n_0\
    );
\done_aux_i_45__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002400410010000"
    )
        port map (
      I0 => a_in_7(22),
      I1 => a_in_7(21),
      I2 => a_in_7(20),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \done_aux_i_45__1_n_0\
    );
\done_aux_i_46__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090000920000200"
    )
        port map (
      I0 => a_in_7(22),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => a_in_7(20),
      I5 => a_in_7(21),
      O => \done_aux_i_46__1_n_0\
    );
\done_aux_i_47__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9040090420900209"
    )
        port map (
      I0 => a_in_7(22),
      I1 => a_in_7(21),
      I2 => a_in_7(20),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \done_aux_i_47__1_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__1_n_0\,
      Q => done
    );
\done_aux_reg_i_10__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_20__1_n_0\,
      I1 => \done_aux_i_21__1_n_0\,
      O => \done_aux_reg_i_10__0_n_0\,
      S => a_in_7(7)
    );
\done_aux_reg_i_11__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_22__1_n_0\,
      I1 => \done_aux_i_23__1_n_0\,
      O => \FSM_onehot_state_reg[3]\,
      S => a_in_7(19)
    );
\done_aux_reg_i_13__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_26__1_n_0\,
      I1 => \done_aux_i_27__1_n_0\,
      O => \done_aux_reg_i_13__0_n_0\,
      S => a_in_7(29)
    );
\done_aux_reg_i_14__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_28__1_n_0\,
      I1 => \done_aux_i_29__1_n_0\,
      O => \done_aux_reg_i_14__0_n_0\,
      S => a_in_7(24)
    );
\done_aux_reg_i_3__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_i_2__2_0\,
      I1 => \done_aux_i_2__2_1\,
      O => \done_aux_reg_i_3__0_n_0\,
      S => \^j_reg[0]_2\(0)
    );
\done_aux_reg_i_4__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_reg_i_9__0_n_0\,
      I1 => \done_aux_reg_i_10__0_n_0\,
      O => \j_reg[0]_0\,
      S => \done_aux_i_2__1\(0)
    );
\done_aux_reg_i_4__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_i_2__2_2\,
      I1 => \done_aux_i_2__2_3\,
      O => \done_aux_reg_i_4__1_n_0\,
      S => \^j_reg[0]_2\(0)
    );
\done_aux_reg_i_6__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_reg_i_13__0_n_0\,
      I1 => \done_aux_reg_i_14__0_n_0\,
      O => \j_reg[0]_1\,
      S => \done_aux_i_2__1\(0)
    );
\done_aux_reg_i_9__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_reg_i_4__0_0\,
      I1 => \done_aux_i_19__1_n_0\,
      O => \done_aux_reg_i_9__0_n_0\,
      S => a_in_7(12)
    );
\j[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[0]_2\(0),
      O => \j[0]_i_1__2_n_0\
    );
\j[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(1),
      I1 => \^j_reg[0]_2\(0),
      O => \p_0_in__2\(1)
    );
\j[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^j_reg[0]_2\(0),
      I1 => j_reg(1),
      I2 => j_reg(2),
      O => \p_0_in__2\(2)
    );
\j[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(2),
      I2 => j_reg(3),
      I3 => done,
      O => j0
    );
\j[3]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => j_reg(2),
      I1 => \^j_reg[0]_2\(0),
      I2 => j_reg(1),
      O => \p_0_in__2\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__2_n_0\,
      Q => \^j_reg[0]_2\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(1),
      Q => j_reg(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(2),
      Q => j_reg(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(3),
      Q => j_reg(3)
    );
\valid_aux_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => j_reg(1),
      I1 => \valid_aux_i_2__2_n_0\,
      I2 => j_reg(2),
      I3 => j_reg(3),
      I4 => valid,
      O => \valid_aux_i_1__5_n_0\
    );
\valid_aux_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      I5 => \^j_reg[0]_2\(0),
      O => \valid_aux_i_2__2_n_0\
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\ is
  port (
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_6 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \done_aux_reg_i_3__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \done_aux_reg_i_7__1_0\ : in STD_LOGIC;
    \count[4]_i_10__2_0\ : in STD_LOGIC;
    \done_aux_i_2__2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    next_out_6 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\ is
  signal count : STD_LOGIC;
  signal \count[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_14__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_15__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_17__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_18__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_21__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_26__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_27__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_28__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_29__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_30__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_31__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_32__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_33__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_34__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_38__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_40__2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_15__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_16__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_17__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_20__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_21__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_22__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_23__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_30__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_31__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_32__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_36__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_37__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_38__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_39__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_40__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_41__2_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_10__1_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_11__1_n_0\ : STD_LOGIC;
  signal done_aux_reg_i_2_n_0 : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__3_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^j_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__6_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \count[1]_i_1__6\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \count[2]_i_1__3\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \count[3]_i_1__3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \count[4]_i_13__2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count[4]_i_14__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count[4]_i_15__1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count[4]_i_16__1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count[4]_i_17__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count[4]_i_18__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count[4]_i_21__2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \count[4]_i_22__2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \count[4]_i_2__3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \count[4]_i_37__2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \done_aux_i_26__2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \j[0]_i_1__3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \j[1]_i_1__4\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \j[2]_i_1__3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \j[3]_i_2__2\ : label is "soft_lutpair72";
begin
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
  \j_reg[1]_0\(1 downto 0) <= \^j_reg[1]_0\(1 downto 0);
\FSM_onehot_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => \count_reg_reg[0]_1\(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \count_reg_reg[0]_1\(3),
      I4 => \count_reg_reg[0]_1\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => done,
      I2 => \count_reg_reg[0]_1\(3),
      I3 => next_out_6,
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => E(0)
    );
\acks_out_reg_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]_1\(4),
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1__3_n_0\
    );
\count[1]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__3\(1)
    );
\count[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \plusOp__3\(2)
    );
\count[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      O => \plusOp__3\(3)
    );
\count[4]_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(12),
      I1 => \count[4]_i_21__2_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_22__2_n_0\,
      O => \count_reg_reg[4]_0\
    );
\count[4]_i_13__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_26__2_n_0\,
      I1 => a_in_6(6),
      I2 => \count[4]_i_27__2_n_0\,
      I3 => Q(3),
      O => \count[4]_i_13__2_n_0\
    );
\count[4]_i_14__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_27__2_n_0\,
      I1 => a_in_6(6),
      I2 => \count[4]_i_26__2_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_28__2_n_0\,
      O => \count[4]_i_14__1_n_0\
    );
\count[4]_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_29__2_n_0\,
      I1 => a_in_6(18),
      I2 => \count[4]_i_30__2_n_0\,
      I3 => Q(3),
      O => \count[4]_i_15__1_n_0\
    );
\count[4]_i_16__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_30__2_n_0\,
      I1 => a_in_6(18),
      I2 => \count[4]_i_29__2_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_31__2_n_0\,
      O => \count[4]_i_16__1_n_0\
    );
\count[4]_i_17__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_32__2_n_0\,
      I1 => Q(3),
      I2 => \count[4]_i_33__2_n_0\,
      I3 => a_in_6(23),
      O => \count[4]_i_17__1_n_0\
    );
\count[4]_i_18__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_33__2_n_0\,
      I1 => Q(3),
      I2 => \count[4]_i_32__2_n_0\,
      I3 => a_in_6(23),
      I4 => \count[4]_i_34__2_n_0\,
      O => \count[4]_i_18__1_n_0\
    );
\count[4]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => j_reg(2),
      I2 => \count_reg[0]_1\,
      I3 => j_reg(3),
      I4 => done,
      O => count
    );
\count[4]_i_21__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_38__2_n_0\,
      I1 => a_in_6(11),
      I2 => \count[4]_i_10__2_0\,
      I3 => Q(3),
      O => \count[4]_i_21__2_n_0\
    );
\count[4]_i_22__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_10__2_0\,
      I1 => a_in_6(11),
      I2 => \count[4]_i_38__2_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_40__2_n_0\,
      O => \count[4]_i_22__2_n_0\
    );
\count[4]_i_25__2\: unisim.vcomponents.LUT6
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
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_26__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7DFFFFFFFF"
    )
        port map (
      I0 => a_in_6(4),
      I1 => a_in_6(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_6(5),
      O => \count[4]_i_26__2_n_0\
    );
\count[4]_i_27__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFEFFFFF"
    )
        port map (
      I0 => a_in_6(4),
      I1 => a_in_6(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_6(5),
      O => \count[4]_i_27__2_n_0\
    );
\count[4]_i_28__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFA2FFFF45FFA2"
    )
        port map (
      I0 => a_in_6(5),
      I1 => Q(1),
      I2 => a_in_6(4),
      I3 => a_in_6(3),
      I4 => Q(2),
      I5 => Q(0),
      O => \count[4]_i_28__2_n_0\
    );
\count[4]_i_29__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7DFFBFFFFF7DF"
    )
        port map (
      I0 => a_in_6(17),
      I1 => a_in_6(15),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_6(16),
      O => \count[4]_i_29__2_n_0\
    );
\count[4]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => \plusOp__3\(4)
    );
\count[4]_i_30__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDBFFBEFFEFFFFFF"
    )
        port map (
      I0 => a_in_6(17),
      I1 => a_in_6(16),
      I2 => a_in_6(15),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_30__2_n_0\
    );
\count[4]_i_31__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BBFDEE7E77BFDDE"
    )
        port map (
      I0 => a_in_6(17),
      I1 => a_in_6(16),
      I2 => a_in_6(15),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \count[4]_i_31__2_n_0\
    );
\count[4]_i_32__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBFFFFDBEFFFFFEF"
    )
        port map (
      I0 => a_in_6(22),
      I1 => a_in_6(21),
      I2 => Q(1),
      I3 => Q(0),
      I4 => a_in_6(20),
      I5 => Q(2),
      O => \count[4]_i_32__2_n_0\
    );
\count[4]_i_33__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6FFFF6DFFFFDFF"
    )
        port map (
      I0 => a_in_6(22),
      I1 => Q(2),
      I2 => a_in_6(20),
      I3 => Q(1),
      I4 => Q(0),
      I5 => a_in_6(21),
      O => \count[4]_i_33__2_n_0\
    );
\count[4]_i_34__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6BFFD6FFFF6BFFD6"
    )
        port map (
      I0 => a_in_6(22),
      I1 => a_in_6(21),
      I2 => Q(2),
      I3 => a_in_6(20),
      I4 => Q(1),
      I5 => Q(0),
      O => \count[4]_i_34__2_n_0\
    );
\count[4]_i_37__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7BDE"
    )
        port map (
      I0 => a_in_6(14),
      I1 => a_in_6(13),
      I2 => Q(1),
      I3 => Q(0),
      O => \count_reg_reg[1]_0\
    );
\count[4]_i_38__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDBFFFDFFFFFFFF"
    )
        port map (
      I0 => a_in_6(8),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => a_in_6(9),
      I5 => a_in_6(10),
      O => \count[4]_i_38__2_n_0\
    );
\count[4]_i_40__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DB7DB6DB6DBEDBE"
    )
        port map (
      I0 => a_in_6(10),
      I1 => a_in_6(9),
      I2 => a_in_6(8),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_40__2_n_0\
    );
\count[4]_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(7),
      I1 => \count[4]_i_13__2_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_14__1_n_0\,
      O => \count_reg_reg[4]\
    );
\count[4]_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(19),
      I1 => \count[4]_i_15__1_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_16__1_n_0\,
      O => \count_reg_reg[4]_2\
    );
\count[4]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(24),
      I1 => \count[4]_i_17__1_n_0\,
      I2 => Q(4),
      I3 => \count[4]_i_18__1_n_0\,
      O => \count_reg_reg[4]_1\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \count[0]_i_1__3_n_0\,
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
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__3\(4),
      Q => count_reg(4)
    );
\done_aux_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \^count_reg_reg[0]\,
      I1 => Q(4),
      I2 => \^count_reg_reg[1]\,
      I3 => a_in_6(11),
      I4 => \done_aux_reg_i_7__1_0\,
      I5 => Q(3),
      O => \done_aux_i_15__1_n_0\
    );
\done_aux_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_30__2_n_0\,
      I2 => a_in_6(6),
      I3 => \done_aux_i_31__3_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_32__2_n_0\,
      O => \done_aux_i_16__0_n_0\
    );
\done_aux_i_17__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_32__2_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_31__3_n_0\,
      I3 => a_in_6(6),
      I4 => \done_aux_i_30__2_n_0\,
      I5 => Q(3),
      O => \done_aux_i_17__1_n_0\
    );
\done_aux_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => done_aux_reg_i_2_n_0,
      I1 => j_reg(3),
      I2 => done,
      O => \done_aux_i_1__2_n_0\
    );
\done_aux_i_20__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_36__1_n_0\,
      I2 => Q(3),
      I3 => \done_aux_i_37__2_n_0\,
      I4 => a_in_6(23),
      I5 => \done_aux_i_38__2_n_0\,
      O => \done_aux_i_20__2_n_0\
    );
\done_aux_i_21__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_38__2_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_37__2_n_0\,
      I3 => Q(3),
      I4 => \done_aux_i_36__1_n_0\,
      I5 => a_in_6(23),
      O => \done_aux_i_21__2_n_0\
    );
\done_aux_i_22__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => Q(4),
      I1 => \done_aux_i_39__2_n_0\,
      I2 => a_in_6(18),
      I3 => \done_aux_i_40__1_n_0\,
      I4 => Q(3),
      I5 => \done_aux_i_41__2_n_0\,
      O => \done_aux_i_22__2_n_0\
    );
\done_aux_i_23__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_41__2_n_0\,
      I1 => Q(4),
      I2 => \done_aux_i_40__1_n_0\,
      I3 => a_in_6(18),
      I4 => \done_aux_i_39__2_n_0\,
      I5 => Q(3),
      O => \done_aux_i_23__2_n_0\
    );
\done_aux_i_26__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => a_in_6(14),
      I1 => a_in_6(13),
      I2 => Q(0),
      I3 => Q(1),
      O => \count_reg_reg[0]_0\
    );
\done_aux_i_28__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018000200000000"
    )
        port map (
      I0 => a_in_6(8),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => a_in_6(9),
      I5 => a_in_6(10),
      O => \^count_reg_reg[1]\
    );
\done_aux_i_29__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8248249249241241"
    )
        port map (
      I0 => a_in_6(10),
      I1 => a_in_6(9),
      I2 => a_in_6(8),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \^count_reg_reg[0]\
    );
\done_aux_i_30__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000000"
    )
        port map (
      I0 => a_in_6(4),
      I1 => a_in_6(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => a_in_6(5),
      O => \done_aux_i_30__2_n_0\
    );
\done_aux_i_31__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080200000000"
    )
        port map (
      I0 => a_in_6(4),
      I1 => a_in_6(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_6(5),
      O => \done_aux_i_31__3_n_0\
    );
\done_aux_i_32__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA0000BA5D00005D"
    )
        port map (
      I0 => a_in_6(5),
      I1 => Q(1),
      I2 => a_in_6(4),
      I3 => a_in_6(3),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_32__2_n_0\
    );
\done_aux_i_35__2\: unisim.vcomponents.LUT6
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
      O => \count_reg_reg[2]\
    );
\done_aux_i_36__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900920020000"
    )
        port map (
      I0 => a_in_6(22),
      I1 => Q(2),
      I2 => a_in_6(20),
      I3 => Q(0),
      I4 => Q(1),
      I5 => a_in_6(21),
      O => \done_aux_i_36__1_n_0\
    );
\done_aux_i_37__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2040020410000100"
    )
        port map (
      I0 => a_in_6(22),
      I1 => a_in_6(21),
      I2 => Q(0),
      I3 => Q(1),
      I4 => a_in_6(20),
      I5 => Q(2),
      O => \done_aux_i_37__2_n_0\
    );
\done_aux_i_38__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9400009429000029"
    )
        port map (
      I0 => a_in_6(22),
      I1 => a_in_6(21),
      I2 => Q(2),
      I3 => a_in_6(20),
      I4 => Q(0),
      I5 => Q(1),
      O => \done_aux_i_38__2_n_0\
    );
\done_aux_i_39__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0204401001000000"
    )
        port map (
      I0 => a_in_6(17),
      I1 => a_in_6(16),
      I2 => a_in_6(15),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \done_aux_i_39__2_n_0\
    );
\done_aux_i_40__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008200400000280"
    )
        port map (
      I0 => a_in_6(17),
      I1 => a_in_6(15),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => a_in_6(16),
      O => \done_aux_i_40__1_n_0\
    );
\done_aux_i_41__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8440188421180221"
    )
        port map (
      I0 => a_in_6(17),
      I1 => a_in_6(16),
      I2 => a_in_6(15),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \done_aux_i_41__2_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__2_n_0\,
      Q => done
    );
\done_aux_reg_i_10__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_20__2_n_0\,
      I1 => \done_aux_i_21__2_n_0\,
      O => \done_aux_reg_i_10__1_n_0\,
      S => a_in_6(24)
    );
\done_aux_reg_i_11__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_22__2_n_0\,
      I1 => \done_aux_i_23__2_n_0\,
      O => \done_aux_reg_i_11__1_n_0\,
      S => a_in_6(19)
    );
done_aux_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_reg_0,
      I1 => done_aux_reg_1,
      O => done_aux_reg_i_2_n_0,
      S => j_reg(2)
    );
\done_aux_reg_i_5__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \done_aux_reg_i_10__1_n_0\,
      I1 => \done_aux_reg_i_11__1_n_0\,
      O => \j_reg[0]_0\,
      S => \done_aux_i_2__2\(0)
    );
\done_aux_reg_i_7__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_reg_i_3__0\,
      I1 => \done_aux_i_15__1_n_0\,
      O => \FSM_onehot_state_reg[3]\,
      S => a_in_6(12)
    );
\done_aux_reg_i_8__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_16__0_n_0\,
      I1 => \done_aux_i_17__1_n_0\,
      O => \FSM_onehot_state_reg[3]_0\,
      S => a_in_6(7)
    );
\j[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      O => \j[0]_i_1__3_n_0\
    );
\j[1]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      I1 => \^j_reg[1]_0\(1),
      O => \p_0_in__3\(1)
    );
\j[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_reg(2),
      I1 => \^j_reg[1]_0\(0),
      I2 => \^j_reg[1]_0\(1),
      O => \p_0_in__3\(2)
    );
\j[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000057"
    )
        port map (
      I0 => j_reg(2),
      I1 => \^j_reg[1]_0\(1),
      I2 => \^j_reg[1]_0\(0),
      I3 => j_reg(3),
      I4 => done,
      O => j0
    );
\j[3]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^j_reg[1]_0\(0),
      I1 => \^j_reg[1]_0\(1),
      I2 => j_reg(2),
      O => \p_0_in__3\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__3_n_0\,
      Q => \^j_reg[1]_0\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(1),
      Q => \^j_reg[1]_0\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(2),
      Q => j_reg(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(3),
      Q => j_reg(3)
    );
\valid_aux_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => j_reg(2),
      I1 => \valid_aux_i_2__3_n_0\,
      I2 => \^j_reg[1]_0\(0),
      I3 => j_reg(3),
      I4 => valid,
      O => \valid_aux_i_1__6_n_0\
    );
\valid_aux_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      I5 => \^j_reg[1]_0\(1),
      O => \valid_aux_i_2__3_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__6_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_0 : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \done_aux_reg_i_7__2_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_i_2 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \done_aux_i_3__1_0\ : in STD_LOGIC;
    \done_aux_reg_i_7__2_1\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count[4]_i_7__2_0\ : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    next_out_5 : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC;
  signal \count[4]_i_11__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_12__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_15__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_16__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_17__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_18__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_23__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_24__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_28__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_30__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_31__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_32__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_33__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_11__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_12__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_16__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_17__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_18__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__7_n_0\ : STD_LOGIC;
  signal \done_aux_i_22__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_23__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_24__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_31__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_32__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_33__2_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_5__2_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_7__2_n_0\ : STD_LOGIC;
  signal \done_aux_reg_i_8__2_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__4_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__7_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__4\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__4\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \count[1]_i_1__7\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count[2]_i_1__4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count[3]_i_1__4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \count[4]_i_11__3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count[4]_i_12__3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count[4]_i_15__2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \count[4]_i_16__2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \count[4]_i_17__2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \count[4]_i_18__2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \count[4]_i_27__3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \count[4]_i_2__4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \done_aux_i_27__3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \j[1]_i_1__5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \j[2]_i_2\ : label is "soft_lutpair56";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
\FSM_onehot_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => \count_reg_reg[0]_1\(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \count_reg_reg[0]_1\(3),
      I4 => \count_reg_reg[0]_1\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => done,
      I2 => \count_reg_reg[0]_1\(3),
      I3 => next_out_5,
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => E(0)
    );
\acks_out_reg_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]_1\(4),
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__4\(0)
    );
\count[1]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \plusOp__4\(1)
    );
\count[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      O => \plusOp__4\(2)
    );
\count[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      O => \plusOp__4\(3)
    );
\count[4]_i_11__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_22__3_n_0\,
      I1 => a_in_5(6),
      I2 => \count[4]_i_23__3_n_0\,
      I3 => \done_aux_reg_i_7__2_0\(3),
      O => \count[4]_i_11__3_n_0\
    );
\count[4]_i_12__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_23__3_n_0\,
      I1 => a_in_5(6),
      I2 => \count[4]_i_22__3_n_0\,
      I3 => \done_aux_reg_i_7__2_0\(3),
      I4 => \count[4]_i_24__3_n_0\,
      O => \count[4]_i_12__3_n_0\
    );
\count[4]_i_15__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_28__3_n_0\,
      I1 => a_in_5(11),
      I2 => \count[4]_i_7__2_0\,
      I3 => \done_aux_reg_i_7__2_0\(3),
      O => \count[4]_i_15__2_n_0\
    );
\count[4]_i_16__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_7__2_0\,
      I1 => a_in_5(11),
      I2 => \count[4]_i_28__3_n_0\,
      I3 => \done_aux_reg_i_7__2_0\(3),
      I4 => \count[4]_i_30__3_n_0\,
      O => \count[4]_i_16__2_n_0\
    );
\count[4]_i_17__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_31__3_n_0\,
      I1 => \done_aux_reg_i_7__2_0\(3),
      I2 => \count[4]_i_32__3_n_0\,
      I3 => a_in_5(18),
      O => \count[4]_i_17__2_n_0\
    );
\count[4]_i_18__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_32__3_n_0\,
      I1 => \done_aux_reg_i_7__2_0\(3),
      I2 => \count[4]_i_31__3_n_0\,
      I3 => a_in_5(18),
      I4 => \count[4]_i_33__3_n_0\,
      O => \count[4]_i_18__2_n_0\
    );
\count[4]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => j_reg(2),
      I1 => \count_reg[0]_2\,
      I2 => done,
      O => count
    );
\count[4]_i_21__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_5(2),
      I1 => \done_aux_reg_i_7__2_0\(2),
      I2 => a_in_5(1),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => a_in_5(0),
      I5 => \done_aux_reg_i_7__2_0\(1),
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_22__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7DFFFFFFFF"
    )
        port map (
      I0 => a_in_5(4),
      I1 => a_in_5(3),
      I2 => \done_aux_reg_i_7__2_0\(0),
      I3 => \done_aux_reg_i_7__2_0\(1),
      I4 => \done_aux_reg_i_7__2_0\(2),
      I5 => a_in_5(5),
      O => \count[4]_i_22__3_n_0\
    );
\count[4]_i_23__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFEFFFFF"
    )
        port map (
      I0 => a_in_5(4),
      I1 => a_in_5(3),
      I2 => \done_aux_reg_i_7__2_0\(1),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => \done_aux_reg_i_7__2_0\(2),
      I5 => a_in_5(5),
      O => \count[4]_i_23__3_n_0\
    );
\count[4]_i_24__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFA2FFFF45FFA2"
    )
        port map (
      I0 => a_in_5(5),
      I1 => \done_aux_reg_i_7__2_0\(1),
      I2 => a_in_5(4),
      I3 => a_in_5(3),
      I4 => \done_aux_reg_i_7__2_0\(2),
      I5 => \done_aux_reg_i_7__2_0\(0),
      O => \count[4]_i_24__3_n_0\
    );
\count[4]_i_27__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7BDE"
    )
        port map (
      I0 => a_in_5(14),
      I1 => a_in_5(13),
      I2 => \done_aux_reg_i_7__2_0\(1),
      I3 => \done_aux_reg_i_7__2_0\(0),
      O => \count_reg_reg[1]_0\
    );
\count[4]_i_28__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDBFFFDFFFFFFFF"
    )
        port map (
      I0 => a_in_5(8),
      I1 => \done_aux_reg_i_7__2_0\(0),
      I2 => \done_aux_reg_i_7__2_0\(1),
      I3 => \done_aux_reg_i_7__2_0\(2),
      I4 => a_in_5(9),
      I5 => a_in_5(10),
      O => \count[4]_i_28__3_n_0\
    );
\count[4]_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      O => \plusOp__4\(4)
    );
\count[4]_i_30__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DB7DB6DB6DBEDBE"
    )
        port map (
      I0 => a_in_5(10),
      I1 => a_in_5(9),
      I2 => a_in_5(8),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => \done_aux_reg_i_7__2_0\(1),
      I5 => \done_aux_reg_i_7__2_0\(2),
      O => \count[4]_i_30__3_n_0\
    );
\count[4]_i_31__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFEFDEFFBFFF"
    )
        port map (
      I0 => a_in_5(17),
      I1 => a_in_5(16),
      I2 => \done_aux_reg_i_7__2_0\(2),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => \done_aux_reg_i_7__2_0\(1),
      I5 => a_in_5(15),
      O => \count[4]_i_31__3_n_0\
    );
\count[4]_i_32__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF6DFFFFDFFFFDF"
    )
        port map (
      I0 => a_in_5(17),
      I1 => \done_aux_reg_i_7__2_0\(2),
      I2 => \done_aux_reg_i_7__2_0\(0),
      I3 => \done_aux_reg_i_7__2_0\(1),
      I4 => a_in_5(15),
      I5 => a_in_5(16),
      O => \count[4]_i_32__3_n_0\
    );
\count[4]_i_33__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BBFDEE7E77BFDDE"
    )
        port map (
      I0 => a_in_5(17),
      I1 => a_in_5(16),
      I2 => \done_aux_reg_i_7__2_0\(2),
      I3 => a_in_5(15),
      I4 => \done_aux_reg_i_7__2_0\(1),
      I5 => \done_aux_reg_i_7__2_0\(0),
      O => \count[4]_i_33__3_n_0\
    );
\count[4]_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \count[4]_i_5__3_n_0\,
      I1 => \count_reg[0]_1\,
      I2 => \count_reg[0]_0\(0),
      I3 => \count[4]_i_7__2_n_0\,
      I4 => \count_reg[0]_0\(1),
      I5 => \count[4]_i_8__2_n_0\,
      O => \j_reg[0]_1\
    );
\count[4]_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(7),
      I1 => \count[4]_i_11__3_n_0\,
      I2 => \done_aux_reg_i_7__2_0\(4),
      I3 => \count[4]_i_12__3_n_0\,
      O => \count[4]_i_5__3_n_0\
    );
\count[4]_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(12),
      I1 => \count[4]_i_15__2_n_0\,
      I2 => \done_aux_reg_i_7__2_0\(4),
      I3 => \count[4]_i_16__2_n_0\,
      O => \count[4]_i_7__2_n_0\
    );
\count[4]_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(19),
      I1 => \count[4]_i_17__2_n_0\,
      I2 => \done_aux_reg_i_7__2_0\(4),
      I3 => \count[4]_i_18__2_n_0\,
      O => \count[4]_i_8__2_n_0\
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
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__4\(4),
      Q => count_reg(4)
    );
\done_aux_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \done_aux_reg_i_7__2_0\(4),
      I1 => \done_aux_i_22__3_n_0\,
      I2 => a_in_5(6),
      I3 => \done_aux_i_23__4_n_0\,
      I4 => \done_aux_reg_i_7__2_0\(3),
      I5 => \done_aux_i_24__3_n_0\,
      O => \done_aux_i_11__0_n_0\
    );
\done_aux_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_24__3_n_0\,
      I1 => \done_aux_reg_i_7__2_0\(4),
      I2 => \done_aux_i_23__4_n_0\,
      I3 => a_in_5(6),
      I4 => \done_aux_i_22__3_n_0\,
      I5 => \done_aux_reg_i_7__2_0\(3),
      O => \done_aux_i_12__1_n_0\
    );
\done_aux_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \^count_reg_reg[0]\,
      I1 => \done_aux_reg_i_7__2_0\(4),
      I2 => \^count_reg_reg[1]\,
      I3 => a_in_5(11),
      I4 => \done_aux_reg_i_7__2_1\,
      I5 => \done_aux_reg_i_7__2_0\(3),
      O => \done_aux_i_16__1_n_0\
    );
\done_aux_i_17__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \done_aux_reg_i_7__2_0\(4),
      I1 => \done_aux_i_31__2_n_0\,
      I2 => \done_aux_reg_i_7__2_0\(3),
      I3 => \done_aux_i_32__3_n_0\,
      I4 => a_in_5(18),
      I5 => \done_aux_i_33__2_n_0\,
      O => \done_aux_i_17__2_n_0\
    );
\done_aux_i_18__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_i_33__2_n_0\,
      I1 => \done_aux_reg_i_7__2_0\(4),
      I2 => \done_aux_i_32__3_n_0\,
      I3 => \done_aux_reg_i_7__2_0\(3),
      I4 => \done_aux_i_31__2_n_0\,
      I5 => a_in_5(18),
      O => \done_aux_i_18__2_n_0\
    );
\done_aux_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF11F0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => done_aux_reg_0,
      I3 => j_reg(2),
      I4 => done,
      O => \done_aux_i_1__7_n_0\
    );
\done_aux_i_21__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_5(2),
      I1 => \done_aux_reg_i_7__2_0\(2),
      I2 => a_in_5(1),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => a_in_5(0),
      I5 => \done_aux_reg_i_7__2_0\(1),
      O => \count_reg_reg[2]\
    );
\done_aux_i_22__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000000"
    )
        port map (
      I0 => a_in_5(4),
      I1 => a_in_5(3),
      I2 => \done_aux_reg_i_7__2_0\(0),
      I3 => \done_aux_reg_i_7__2_0\(1),
      I4 => \done_aux_reg_i_7__2_0\(2),
      I5 => a_in_5(5),
      O => \done_aux_i_22__3_n_0\
    );
\done_aux_i_23__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080200000000"
    )
        port map (
      I0 => a_in_5(4),
      I1 => a_in_5(3),
      I2 => \done_aux_reg_i_7__2_0\(1),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => \done_aux_reg_i_7__2_0\(2),
      I5 => a_in_5(5),
      O => \done_aux_i_23__4_n_0\
    );
\done_aux_i_24__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA0000BA5D00005D"
    )
        port map (
      I0 => a_in_5(5),
      I1 => \done_aux_reg_i_7__2_0\(1),
      I2 => a_in_5(4),
      I3 => a_in_5(3),
      I4 => \done_aux_reg_i_7__2_0\(0),
      I5 => \done_aux_reg_i_7__2_0\(2),
      O => \done_aux_i_24__3_n_0\
    );
\done_aux_i_27__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => a_in_5(14),
      I1 => a_in_5(13),
      I2 => \done_aux_reg_i_7__2_0\(0),
      I3 => \done_aux_reg_i_7__2_0\(1),
      O => \count_reg_reg[0]_0\
    );
\done_aux_i_29__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018000200000000"
    )
        port map (
      I0 => a_in_5(8),
      I1 => \done_aux_reg_i_7__2_0\(1),
      I2 => \done_aux_reg_i_7__2_0\(0),
      I3 => \done_aux_reg_i_7__2_0\(2),
      I4 => a_in_5(9),
      I5 => a_in_5(10),
      O => \^count_reg_reg[1]\
    );
\done_aux_i_30__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8248249249241241"
    )
        port map (
      I0 => a_in_5(10),
      I1 => a_in_5(9),
      I2 => a_in_5(8),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => \done_aux_reg_i_7__2_0\(1),
      I5 => \done_aux_reg_i_7__2_0\(2),
      O => \^count_reg_reg[0]\
    );
\done_aux_i_31__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009200000200200"
    )
        port map (
      I0 => a_in_5(17),
      I1 => \done_aux_reg_i_7__2_0\(2),
      I2 => \done_aux_reg_i_7__2_0\(1),
      I3 => \done_aux_reg_i_7__2_0\(0),
      I4 => a_in_5(15),
      I5 => a_in_5(16),
      O => \done_aux_i_31__2_n_0\
    );
\done_aux_i_32__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000401021400000"
    )
        port map (
      I0 => a_in_5(17),
      I1 => a_in_5(16),
      I2 => \done_aux_reg_i_7__2_0\(2),
      I3 => \done_aux_reg_i_7__2_0\(1),
      I4 => \done_aux_reg_i_7__2_0\(0),
      I5 => a_in_5(15),
      O => \done_aux_i_32__3_n_0\
    );
\done_aux_i_33__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8440188421180221"
    )
        port map (
      I0 => a_in_5(17),
      I1 => a_in_5(16),
      I2 => \done_aux_reg_i_7__2_0\(2),
      I3 => a_in_5(15),
      I4 => \done_aux_reg_i_7__2_0\(0),
      I5 => \done_aux_reg_i_7__2_0\(1),
      O => \done_aux_i_33__2_n_0\
    );
\done_aux_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \done_aux_reg_i_5__2_n_0\,
      I1 => done_aux_reg_i_2,
      I2 => \count_reg[0]_0\(0),
      I3 => \done_aux_reg_i_7__2_n_0\,
      I4 => \count_reg[0]_0\(1),
      I5 => \done_aux_reg_i_8__2_n_0\,
      O => \j_reg[0]_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__7_n_0\,
      Q => done
    );
\done_aux_reg_i_5__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_11__0_n_0\,
      I1 => \done_aux_i_12__1_n_0\,
      O => \done_aux_reg_i_5__2_n_0\,
      S => a_in_5(7)
    );
\done_aux_reg_i_7__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_3__1_0\,
      I1 => \done_aux_i_16__1_n_0\,
      O => \done_aux_reg_i_7__2_n_0\,
      S => a_in_5(12)
    );
\done_aux_reg_i_8__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_17__2_n_0\,
      I1 => \done_aux_i_18__2_n_0\,
      O => \done_aux_reg_i_8__2_n_0\,
      S => a_in_5(19)
    );
\j[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \j[0]_i_1__4_n_0\
    );
\j[1]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__4\(1)
    );
\j[2]_i_1__5\: unisim.vcomponents.LUT2
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
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__4\(2)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__4_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__4\(1),
      Q => \^q\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__4\(2),
      Q => j_reg(2)
    );
\valid_aux_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => j_reg(2),
      I1 => \valid_aux_i_2__4_n_0\,
      I2 => \^q\(0),
      I3 => valid,
      O => \valid_aux_i_1__7_n_0\
    );
\valid_aux_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \^q\(1),
      I4 => count_reg(2),
      I5 => count_reg(4),
      O => \valid_aux_i_2__4_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__7_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\ is
  port (
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_4 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \done_aux_i_2__3\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \done_aux_i_2__3_0\ : in STD_LOGIC;
    \done_aux_i_4__1_0\ : in STD_LOGIC;
    \count[4]_i_3__4\ : in STD_LOGIC;
    \count[4]_i_5__4_0\ : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_4 : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC;
  signal \count[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_11__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_12__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_21__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_23__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_24__4_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_10__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_11__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_12__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_20__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_21__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_22__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_23__3_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__5_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__4_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \count[1]_i_1__4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count[2]_i_1__5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count[3]_i_1__5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count[4]_i_12__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[4]_i_13__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count[4]_i_27__4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \count[4]_i_2__5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \done_aux_i_11__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \done_aux_i_12__2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \done_aux_i_26__4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \j[1]_i_1__2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \j[2]_i_2__0\ : label is "soft_lutpair39";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
\FSM_onehot_state[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => \count_reg_reg[0]_1\(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \count_reg_reg[0]_1\(3),
      I4 => \count_reg_reg[0]_1\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => done,
      I2 => \count_reg_reg[0]_1\(3),
      I3 => next_out_4,
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
      O => E(0)
    );
\acks_out_reg_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]_1\(4),
      I4 => \count_reg_reg[0]_1\(0),
      I5 => \count_reg_reg[0]_1\(1),
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
\count[1]_i_1__4\: unisim.vcomponents.LUT2
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
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__5\(2)
    );
\count[3]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__5\(3)
    );
\count[4]_i_11__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \^count_reg_reg[0]\,
      I1 => \done_aux_i_2__3\(3),
      I2 => \count[4]_i_5__4_0\,
      I3 => a_in_4(11),
      I4 => \count[4]_i_21__4_n_0\,
      O => \count[4]_i_11__4_n_0\
    );
\count[4]_i_12__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_22__4_n_0\,
      I1 => \done_aux_i_2__3\(3),
      I2 => \count[4]_i_23__4_n_0\,
      I3 => a_in_4(6),
      O => \count[4]_i_12__4_n_0\
    );
\count[4]_i_13__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_23__4_n_0\,
      I1 => \done_aux_i_2__3\(3),
      I2 => \count[4]_i_22__4_n_0\,
      I3 => a_in_4(6),
      I4 => \count[4]_i_24__4_n_0\,
      O => \count[4]_i_13__4_n_0\
    );
\count[4]_i_18__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_4(2),
      I1 => \done_aux_i_2__3\(2),
      I2 => a_in_4(1),
      I3 => \done_aux_i_2__3\(0),
      I4 => a_in_4(0),
      I5 => \done_aux_i_2__3\(1),
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => j_reg(2),
      I2 => done,
      O => count
    );
\count[4]_i_20__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDBFFFDFFFFFFFF"
    )
        port map (
      I0 => a_in_4(8),
      I1 => \done_aux_i_2__3\(0),
      I2 => \done_aux_i_2__3\(1),
      I3 => \done_aux_i_2__3\(2),
      I4 => a_in_4(9),
      I5 => a_in_4(10),
      O => \^count_reg_reg[0]\
    );
\count[4]_i_21__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DB7DB6DB6DBEDBE"
    )
        port map (
      I0 => a_in_4(10),
      I1 => a_in_4(9),
      I2 => a_in_4(8),
      I3 => \done_aux_i_2__3\(0),
      I4 => \done_aux_i_2__3\(1),
      I5 => \done_aux_i_2__3\(2),
      O => \count[4]_i_21__4_n_0\
    );
\count[4]_i_22__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFEFFFFF"
    )
        port map (
      I0 => a_in_4(4),
      I1 => a_in_4(3),
      I2 => \done_aux_i_2__3\(1),
      I3 => \done_aux_i_2__3\(0),
      I4 => \done_aux_i_2__3\(2),
      I5 => a_in_4(5),
      O => \count[4]_i_22__4_n_0\
    );
\count[4]_i_23__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7DFFFFFFFF"
    )
        port map (
      I0 => a_in_4(4),
      I1 => a_in_4(3),
      I2 => \done_aux_i_2__3\(0),
      I3 => \done_aux_i_2__3\(1),
      I4 => \done_aux_i_2__3\(2),
      I5 => a_in_4(5),
      O => \count[4]_i_23__4_n_0\
    );
\count[4]_i_24__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFA2FFFF45FFA2"
    )
        port map (
      I0 => a_in_4(5),
      I1 => \done_aux_i_2__3\(1),
      I2 => a_in_4(4),
      I3 => a_in_4(3),
      I4 => \done_aux_i_2__3\(2),
      I5 => \done_aux_i_2__3\(0),
      O => \count[4]_i_24__4_n_0\
    );
\count[4]_i_27__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7BDE"
    )
        port map (
      I0 => a_in_4(14),
      I1 => a_in_4(13),
      I2 => \done_aux_i_2__3\(1),
      I3 => \done_aux_i_2__3\(0),
      O => \count_reg_reg[1]_0\
    );
\count[4]_i_2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => \plusOp__5\(4)
    );
\count[4]_i_5__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(12),
      I1 => \count[4]_i_3__4\,
      I2 => \done_aux_i_2__3\(4),
      I3 => \count[4]_i_11__4_n_0\,
      O => \count_reg_reg[4]_2\
    );
\count[4]_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(7),
      I1 => \count[4]_i_12__4_n_0\,
      I2 => \done_aux_i_2__3\(4),
      I3 => \count[4]_i_13__4_n_0\,
      O => \count_reg_reg[4]_1\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \count[0]_i_1__5_n_0\,
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__5\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__5\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__5\(3),
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__5\(4),
      Q => count_reg(4)
    );
\done_aux_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \^count_reg_reg[1]\,
      I1 => \done_aux_i_2__3\(3),
      I2 => \done_aux_i_4__1_0\,
      I3 => a_in_4(11),
      I4 => \done_aux_i_20__3_n_0\,
      O => \done_aux_i_10__0_n_0\
    );
\done_aux_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_21__4_n_0\,
      I1 => \done_aux_i_2__3\(3),
      I2 => \done_aux_i_22__4_n_0\,
      I3 => a_in_4(6),
      O => \done_aux_i_11__1_n_0\
    );
\done_aux_i_12__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_22__4_n_0\,
      I1 => \done_aux_i_2__3\(3),
      I2 => \done_aux_i_21__4_n_0\,
      I3 => a_in_4(6),
      I4 => \done_aux_i_23__3_n_0\,
      O => \done_aux_i_12__2_n_0\
    );
\done_aux_i_17__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_4(2),
      I1 => \done_aux_i_2__3\(2),
      I2 => a_in_4(1),
      I3 => \done_aux_i_2__3\(0),
      I4 => a_in_4(0),
      I5 => \done_aux_i_2__3\(1),
      O => \count_reg_reg[2]\
    );
\done_aux_i_19__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018000200000000"
    )
        port map (
      I0 => a_in_4(8),
      I1 => \done_aux_i_2__3\(1),
      I2 => \done_aux_i_2__3\(0),
      I3 => \done_aux_i_2__3\(2),
      I4 => a_in_4(9),
      I5 => a_in_4(10),
      O => \^count_reg_reg[1]\
    );
\done_aux_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => done_aux_reg_0,
      I1 => j_reg(2),
      I2 => done,
      O => \done_aux_i_1__0_n_0\
    );
\done_aux_i_20__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8248249249241241"
    )
        port map (
      I0 => a_in_4(10),
      I1 => a_in_4(9),
      I2 => a_in_4(8),
      I3 => \done_aux_i_2__3\(0),
      I4 => \done_aux_i_2__3\(1),
      I5 => \done_aux_i_2__3\(2),
      O => \done_aux_i_20__3_n_0\
    );
\done_aux_i_21__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000000"
    )
        port map (
      I0 => a_in_4(4),
      I1 => a_in_4(3),
      I2 => \done_aux_i_2__3\(0),
      I3 => \done_aux_i_2__3\(1),
      I4 => \done_aux_i_2__3\(2),
      I5 => a_in_4(5),
      O => \done_aux_i_21__4_n_0\
    );
\done_aux_i_22__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080200000000"
    )
        port map (
      I0 => a_in_4(4),
      I1 => a_in_4(3),
      I2 => \done_aux_i_2__3\(1),
      I3 => \done_aux_i_2__3\(0),
      I4 => \done_aux_i_2__3\(2),
      I5 => a_in_4(5),
      O => \done_aux_i_22__4_n_0\
    );
\done_aux_i_23__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA0000BA5D00005D"
    )
        port map (
      I0 => a_in_4(5),
      I1 => \done_aux_i_2__3\(1),
      I2 => a_in_4(4),
      I3 => a_in_4(3),
      I4 => \done_aux_i_2__3\(0),
      I5 => \done_aux_i_2__3\(2),
      O => \done_aux_i_23__3_n_0\
    );
\done_aux_i_26__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => a_in_4(14),
      I1 => a_in_4(13),
      I2 => \done_aux_i_2__3\(0),
      I3 => \done_aux_i_2__3\(1),
      O => \count_reg_reg[0]_0\
    );
\done_aux_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(12),
      I1 => \done_aux_i_2__3_0\,
      I2 => \done_aux_i_2__3\(4),
      I3 => \done_aux_i_10__0_n_0\,
      O => \count_reg_reg[4]\
    );
\done_aux_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(7),
      I1 => \done_aux_i_11__1_n_0\,
      I2 => \done_aux_i_2__3\(4),
      I3 => \done_aux_i_12__2_n_0\,
      O => \count_reg_reg[4]_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__0_n_0\,
      Q => done
    );
\j[0]_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \j[0]_i_1__5_n_0\
    );
\j[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \p_0_in__5\(1)
    );
\j[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => j_reg(2),
      I3 => done,
      O => j0
    );
\j[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \p_0_in__5\(2)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__5_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__5\(1),
      Q => \^q\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__5\(2),
      Q => j_reg(2)
    );
\valid_aux_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \valid_aux_i_2__5_n_0\,
      I1 => \^q\(1),
      I2 => j_reg(2),
      I3 => valid,
      O => \valid_aux_i_1__4_n_0\
    );
\valid_aux_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(4),
      I5 => \^q\(0),
      O => \valid_aux_i_2__5_n_0\
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    a_in_3 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \done_aux_i_2__6\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_3 : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count : STD_LOGIC;
  signal \count[4]_i_10__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_16__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_17__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_18__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_9__4_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal done : STD_LOGIC;
  signal \done_aux_i_15__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_16__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_17__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_1__6_n_0\ : STD_LOGIC;
  signal \done_aux_i_8__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_9__2_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__6_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__2_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count[1]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[2]_i_1__6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count[3]_i_1__6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[4]_i_10__5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count[4]_i_2__6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count[4]_i_9__4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \done_aux_i_8__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \done_aux_i_9__2\ : label is "soft_lutpair19";
begin
  Q(0) <= \^q\(0);
\FSM_onehot_state[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => \count_reg_reg[0]\(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => \count_reg_reg[0]\(3),
      I4 => \count_reg_reg[0]\(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__6\: unisim.vcomponents.LUT6
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
\acks_out_reg_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      I2 => done,
      I3 => \count_reg_reg[0]\(4),
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__6\(0)
    );
\count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__6\(1)
    );
\count[2]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__6\(2)
    );
\count[3]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__6\(3)
    );
\count[4]_i_10__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_17__4_n_0\,
      I1 => \done_aux_i_2__6\(3),
      I2 => \count[4]_i_16__4_n_0\,
      I3 => a_in_3(6),
      I4 => \count[4]_i_18__4_n_0\,
      O => \count[4]_i_10__5_n_0\
    );
\count[4]_i_15__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BD6DEBDBD7B6BDE"
    )
        port map (
      I0 => a_in_3(10),
      I1 => a_in_3(9),
      I2 => \done_aux_i_2__6\(2),
      I3 => a_in_3(8),
      I4 => \done_aux_i_2__6\(1),
      I5 => \done_aux_i_2__6\(0),
      O => \count_reg_reg[2]_2\
    );
\count[4]_i_16__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFBFFFF"
    )
        port map (
      I0 => a_in_3(4),
      I1 => \done_aux_i_2__6\(1),
      I2 => \done_aux_i_2__6\(0),
      I3 => a_in_3(3),
      I4 => \done_aux_i_2__6\(2),
      I5 => a_in_3(5),
      O => \count[4]_i_16__4_n_0\
    );
\count[4]_i_17__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FDFFFFFFFF"
    )
        port map (
      I0 => a_in_3(4),
      I1 => \done_aux_i_2__6\(0),
      I2 => \done_aux_i_2__6\(1),
      I3 => a_in_3(3),
      I4 => \done_aux_i_2__6\(2),
      I5 => a_in_3(5),
      O => \count[4]_i_17__4_n_0\
    );
\count[4]_i_18__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFFF45A2FFFFA2"
    )
        port map (
      I0 => a_in_3(5),
      I1 => \done_aux_i_2__6\(1),
      I2 => a_in_3(4),
      I3 => \done_aux_i_2__6\(0),
      I4 => a_in_3(3),
      I5 => \done_aux_i_2__6\(2),
      O => \count[4]_i_18__4_n_0\
    );
\count[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => j_reg(1),
      I2 => done,
      O => count
    );
\count[4]_i_21__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_3(2),
      I1 => \done_aux_i_2__6\(2),
      I2 => a_in_3(1),
      I3 => \done_aux_i_2__6\(0),
      I4 => a_in_3(0),
      I5 => \done_aux_i_2__6\(1),
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => \plusOp__6\(4)
    );
\count[4]_i_5__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_3(7),
      I1 => \count[4]_i_9__4_n_0\,
      I2 => \done_aux_i_2__6\(4),
      I3 => \count[4]_i_10__5_n_0\,
      O => \count_reg_reg[4]_0\
    );
\count[4]_i_9__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_16__4_n_0\,
      I1 => \done_aux_i_2__6\(3),
      I2 => \count[4]_i_17__4_n_0\,
      I3 => a_in_3(6),
      O => \count[4]_i_9__4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__6\(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__6\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__6\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__6\(3),
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__6\(4),
      Q => count_reg(4)
    );
\done_aux_i_14__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8429214242849421"
    )
        port map (
      I0 => a_in_3(10),
      I1 => a_in_3(9),
      I2 => \done_aux_i_2__6\(2),
      I3 => a_in_3(8),
      I4 => \done_aux_i_2__6\(1),
      I5 => \done_aux_i_2__6\(0),
      O => \count_reg_reg[2]_1\
    );
\done_aux_i_15__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040100000"
    )
        port map (
      I0 => a_in_3(4),
      I1 => \done_aux_i_2__6\(0),
      I2 => \done_aux_i_2__6\(1),
      I3 => a_in_3(3),
      I4 => \done_aux_i_2__6\(2),
      I5 => a_in_3(5),
      O => \done_aux_i_15__4_n_0\
    );
\done_aux_i_16__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200200000000"
    )
        port map (
      I0 => a_in_3(4),
      I1 => \done_aux_i_2__6\(1),
      I2 => \done_aux_i_2__6\(0),
      I3 => a_in_3(3),
      I4 => \done_aux_i_2__6\(2),
      I5 => a_in_3(5),
      O => \done_aux_i_16__4_n_0\
    );
\done_aux_i_17__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA0000BA5D00005D"
    )
        port map (
      I0 => a_in_3(5),
      I1 => \done_aux_i_2__6\(1),
      I2 => a_in_3(4),
      I3 => \done_aux_i_2__6\(0),
      I4 => a_in_3(3),
      I5 => \done_aux_i_2__6\(2),
      O => \done_aux_i_17__4_n_0\
    );
\done_aux_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F4A"
    )
        port map (
      I0 => j_reg(1),
      I1 => done_aux_reg_0,
      I2 => \^q\(0),
      I3 => done_aux_reg_1,
      I4 => done,
      O => \done_aux_i_1__6_n_0\
    );
\done_aux_i_20__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_3(2),
      I1 => \done_aux_i_2__6\(2),
      I2 => a_in_3(1),
      I3 => \done_aux_i_2__6\(0),
      I4 => a_in_3(0),
      I5 => \done_aux_i_2__6\(1),
      O => \count_reg_reg[2]\
    );
\done_aux_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_3(7),
      I1 => \done_aux_i_8__1_n_0\,
      I2 => \done_aux_i_2__6\(4),
      I3 => \done_aux_i_9__2_n_0\,
      O => \count_reg_reg[4]\
    );
\done_aux_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_15__4_n_0\,
      I1 => \done_aux_i_2__6\(3),
      I2 => \done_aux_i_16__4_n_0\,
      I3 => a_in_3(6),
      O => \done_aux_i_8__1_n_0\
    );
\done_aux_i_9__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_16__4_n_0\,
      I1 => \done_aux_i_2__6\(3),
      I2 => \done_aux_i_15__4_n_0\,
      I3 => a_in_3(6),
      I4 => \done_aux_i_17__4_n_0\,
      O => \done_aux_i_9__2_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__6_n_0\,
      Q => done
    );
\j[0]_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \j[0]_i_1__6_n_0\
    );
\j[1]_i_1__6\: unisim.vcomponents.LUT2
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
      D => \j[0]_i_1__6_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \^q\(0),
      Q => j_reg(1)
    );
\valid_aux_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \valid_aux_i_2__6_n_0\,
      I1 => j_reg(1),
      I2 => valid,
      O => \valid_aux_i_1__2_n_0\
    );
\valid_aux_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      I5 => \^q\(0),
      O => \valid_aux_i_2__6_n_0\
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\ is
  port (
    j_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    done : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_0 : in STD_LOGIC;
    a_in_2 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \done_aux_i_5__2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_2 : in STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \count_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\ is
  signal \count[0]_i_1__7_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^done\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \^j_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp__7\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal valid : STD_LOGIC;
  signal \valid_aux_i_1__0_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[2]_i_1__7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[3]_i_1__7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[4]_i_2__7\ : label is "soft_lutpair5";
begin
  done <= \^done\;
  j_reg(0) <= \^j_reg\(0);
\FSM_onehot_state[1]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDFCCC"
    )
        port map (
      I0 => valid,
      I1 => Q(0),
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => Q(3),
      I4 => Q(2),
      O => D(0)
    );
\FSM_onehot_state[3]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => Q(2),
      I1 => \^done\,
      I2 => Q(3),
      I3 => next_out_2,
      I4 => Q(0),
      I5 => Q(1),
      O => E(0)
    );
acks_out_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => Q(2),
      I1 => valid,
      I2 => \^done\,
      I3 => Q(4),
      I4 => Q(0),
      I5 => Q(1),
      O => \FSM_onehot_state_reg[2]\
    );
\count[0]_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1__7_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \plusOp__7\(1)
    );
\count[2]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__7\(2)
    );
\count[3]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => \plusOp__7\(3)
    );
\count[4]_i_14__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in_2(5),
      I1 => \done_aux_i_5__2\(1),
      I2 => a_in_2(4),
      I3 => \done_aux_i_5__2\(2),
      I4 => a_in_2(3),
      I5 => \done_aux_i_5__2\(0),
      O => \count_reg_reg[1]_0\
    );
\count[4]_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => \plusOp__7\(4)
    );
\count[4]_i_9__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in_2(2),
      I1 => \done_aux_i_5__2\(2),
      I2 => a_in_2(1),
      I3 => \done_aux_i_5__2\(0),
      I4 => a_in_2(0),
      I5 => \done_aux_i_5__2\(1),
      O => \count_reg_reg[2]_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[4]_0\(0),
      CLR => AR(0),
      D => \count[0]_i_1__7_n_0\,
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__7\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__7\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__7\(3),
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__7\(4),
      Q => count_reg(4)
    );
\done_aux_i_10__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in_2(2),
      I1 => \done_aux_i_5__2\(2),
      I2 => a_in_2(1),
      I3 => \done_aux_i_5__2\(0),
      I4 => a_in_2(0),
      I5 => \done_aux_i_5__2\(1),
      O => \count_reg_reg[2]\
    );
\done_aux_i_13__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in_2(5),
      I1 => \done_aux_i_5__2\(1),
      I2 => a_in_2(4),
      I3 => \done_aux_i_5__2\(2),
      I4 => a_in_2(3),
      I5 => \done_aux_i_5__2\(0),
      O => \count_reg_reg[1]\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => done_aux_reg_0,
      Q => \^done\
    );
\j[0]_i_1__7\: unisim.vcomponents.LUT2
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
\valid_aux_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \valid_aux_i_2__7_n_0\,
      I1 => valid,
      O => \valid_aux_i_1__0_n_0\
    );
\valid_aux_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      I5 => \^j_reg\(0),
      O => \valid_aux_i_2__7_n_0\
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    \count_reg_reg[2]_3\ : out STD_LOGIC;
    \count_reg_reg[2]_4\ : out STD_LOGIC;
    \count_reg_reg[2]_5\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count[4]_i_29\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    done_aux_i_2_0 : in STD_LOGIC;
    \count[4]_i_3_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  signal \FSM_onehot_state[4]_i_4__3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count[4]_i_11_n_0\ : STD_LOGIC;
  signal \count[4]_i_12_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_6_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \done_aux_i_10__3_n_0\ : STD_LOGIC;
  signal done_aux_i_11_n_0 : STD_LOGIC;
  signal done_aux_i_4_n_0 : STD_LOGIC;
  signal done_aux_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \count[4]_i_5\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \count[4]_i_6\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of done_aux_i_4 : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of done_aux_i_5 : label is "soft_lutpair128";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000000020000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state[4]_i_4__3_n_0\,
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_state[4]_i_4__3_n_0\
    );
\count[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count[4]_i_29\(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \count[4]_i_29\(1),
      I5 => \count[4]_i_29\(2),
      O => \count[4]_i_11_n_0\
    );
\count[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count[4]_i_29\(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \count[4]_i_29\(1),
      I5 => \count[4]_i_29\(2),
      O => \count[4]_i_12_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054511040"
    )
        port map (
      I0 => \count_reg[0]\(0),
      I1 => \count[4]_i_29\(4),
      I2 => \count[4]_i_5_n_0\,
      I3 => \^q\(4),
      I4 => \count[4]_i_6_n_0\,
      I5 => \count_reg[0]\(1),
      O => \j_reg[0]_0\
    );
\count[4]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FF7DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \count[4]_i_29\(5),
      I4 => \count[4]_i_29\(6),
      I5 => \count[4]_i_29\(7),
      O => \count_reg_reg[2]_2\
    );
\count[4]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FDFF7FD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \count[4]_i_29\(8),
      I4 => \count[4]_i_29\(9),
      I5 => \count[4]_i_29\(10),
      O => \count_reg_reg[2]_1\
    );
\count[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_11_n_0\,
      I1 => \count[4]_i_29\(3),
      I2 => \count[4]_i_12_n_0\,
      I3 => \^q\(3),
      O => \count[4]_i_5_n_0\
    );
\count[4]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFEFFBFEFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \count[4]_i_29\(8),
      I4 => \count[4]_i_29\(9),
      I5 => \count[4]_i_29\(10),
      O => \count_reg_reg[2]_0\
    );
\count[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_12_n_0\,
      I1 => \count[4]_i_29\(3),
      I2 => \count[4]_i_11_n_0\,
      I3 => \^q\(3),
      I4 => \count[4]_i_3_0\,
      O => \count[4]_i_6_n_0\
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EFFF00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => count_next(1)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => count_next(2)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCC8CC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(4),
      Q => \^q\(4)
    );
\done_aux_i_10__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count[4]_i_29\(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \count[4]_i_29\(1),
      I5 => \count[4]_i_29\(2),
      O => \done_aux_i_10__3_n_0\
    );
done_aux_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count[4]_i_29\(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \count[4]_i_29\(1),
      I5 => \count[4]_i_29\(2),
      O => done_aux_i_11_n_0
    );
done_aux_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFBBAEA"
    )
        port map (
      I0 => \count_reg[0]\(0),
      I1 => \count[4]_i_29\(4),
      I2 => done_aux_i_4_n_0,
      I3 => \^q\(4),
      I4 => done_aux_i_5_n_0,
      I5 => \count_reg[0]\(1),
      O => \j_reg[0]\
    );
done_aux_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000802008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \count[4]_i_29\(5),
      I4 => \count[4]_i_29\(6),
      I5 => \count[4]_i_29\(7),
      O => \count_reg_reg[2]_5\
    );
done_aux_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_10__3_n_0\,
      I1 => \count[4]_i_29\(3),
      I2 => done_aux_i_11_n_0,
      I3 => \^q\(3),
      O => done_aux_i_4_n_0
    );
done_aux_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080082002"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \count[4]_i_29\(8),
      I4 => \count[4]_i_29\(9),
      I5 => \count[4]_i_29\(10),
      O => \count_reg_reg[2]_4\
    );
done_aux_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004100100000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \count[4]_i_29\(8),
      I4 => \count[4]_i_29\(9),
      I5 => \count[4]_i_29\(10),
      O => \count_reg_reg[2]_3\
    );
done_aux_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => done_aux_i_11_n_0,
      I1 => \count[4]_i_29\(3),
      I2 => \done_aux_i_10__3_n_0\,
      I3 => \^q\(3),
      I4 => done_aux_i_2_0,
      O => done_aux_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    a_in_8 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    done_aux_reg_i_10 : in STD_LOGIC;
    done_aux_reg_i_10_0 : in STD_LOGIC;
    \done_aux_reg_i_8__0_0\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]_1\ : in STD_LOGIC;
    \count[4]_i_8_0\ : in STD_LOGIC;
    \count[4]_i_11__0_0\ : in STD_LOGIC;
    done_aux_reg_i_9_0 : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 is
  signal \FSM_onehot_state[4]_i_4__4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_19_n_0\ : STD_LOGIC;
  signal \count[4]_i_20__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_25__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_26__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_37__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_38__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_46__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_47__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_8_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal done_aux_i_18_n_0 : STD_LOGIC;
  signal \done_aux_i_19__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_20__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_21__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_35__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_36__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_38__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_39__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \count[4]_i_19\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \count[4]_i_20__0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \count[4]_i_25__0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \count[4]_i_26__0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__0\ : label is "soft_lutpair116";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
\FSM_onehot_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000000020000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state[4]_i_4__4_n_0\,
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_state[4]_i_4__4_n_0\
    );
\count[4]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_8(13),
      I1 => \count[4]_i_25__0_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_26__0_n_0\,
      O => \count[4]_i_11__0_n_0\
    );
\count[4]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_37__0_n_0\,
      I1 => a_in_8(3),
      I2 => \count[4]_i_38__0_n_0\,
      I3 => \^q\(3),
      O => \count[4]_i_19_n_0\
    );
\count[4]_i_20__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_38__0_n_0\,
      I1 => a_in_8(3),
      I2 => \count[4]_i_37__0_n_0\,
      I3 => \^q\(3),
      I4 => \count[4]_i_8_0\,
      O => \count[4]_i_20__0_n_0\
    );
\count[4]_i_25__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_46__0_n_0\,
      I1 => a_in_8(12),
      I2 => \count[4]_i_47__0_n_0\,
      I3 => \^q\(3),
      O => \count[4]_i_25__0_n_0\
    );
\count[4]_i_26__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_47__0_n_0\,
      I1 => a_in_8(12),
      I2 => \count[4]_i_46__0_n_0\,
      I3 => \^q\(3),
      I4 => \count[4]_i_11__0_0\,
      O => \count[4]_i_26__0_n_0\
    );
\count[4]_i_37__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_8(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_8(1),
      I5 => a_in_8(2),
      O => \count[4]_i_37__0_n_0\
    );
\count[4]_i_38__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_8(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_8(1),
      I5 => a_in_8(2),
      O => \count[4]_i_38__0_n_0\
    );
\count[4]_i_44__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FF7DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_8(5),
      I4 => a_in_8(6),
      I5 => a_in_8(7),
      O => \count_reg_reg[2]_1\
    );
\count[4]_i_46__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFEFFBFEFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_8(9),
      I4 => a_in_8(10),
      I5 => a_in_8(11),
      O => \count[4]_i_46__0_n_0\
    );
\count[4]_i_47__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FDFF7FD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_8(9),
      I4 => a_in_8(10),
      I5 => a_in_8(11),
      O => \count[4]_i_47__0_n_0\
    );
\count[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \count[4]_i_8_n_0\,
      I1 => \count_reg[0]\,
      I2 => \count_reg[0]_0\(1),
      I3 => \count_reg[0]_1\,
      I4 => \count_reg[0]_0\(0),
      I5 => \count[4]_i_11__0_n_0\,
      O => \j_reg[1]\
    );
\count[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_8(4),
      I1 => \count[4]_i_19_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_20__0_n_0\,
      O => \count[4]_i_8_n_0\
    );
\count_reg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EFFF00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => count_next(1)
    );
\count_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => count_next(2)
    );
\count_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCC8CC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
done_aux_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \done_aux_i_35__0_n_0\,
      I2 => a_in_8(3),
      I3 => \done_aux_i_36__2_n_0\,
      I4 => \^q\(3),
      I5 => \done_aux_reg_i_8__0_0\,
      O => done_aux_i_18_n_0
    );
\done_aux_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_reg_i_8__0_0\,
      I1 => \^q\(4),
      I2 => \done_aux_i_36__2_n_0\,
      I3 => a_in_8(3),
      I4 => \done_aux_i_35__0_n_0\,
      I5 => \^q\(3),
      O => \done_aux_i_19__0_n_0\
    );
\done_aux_i_20__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \done_aux_i_38__0_n_0\,
      I2 => a_in_8(12),
      I3 => \done_aux_i_39__0_n_0\,
      I4 => \^q\(3),
      I5 => done_aux_reg_i_9_0,
      O => \done_aux_i_20__0_n_0\
    );
\done_aux_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => done_aux_reg_i_9_0,
      I1 => \^q\(4),
      I2 => \done_aux_i_39__0_n_0\,
      I3 => a_in_8(12),
      I4 => \done_aux_i_38__0_n_0\,
      I5 => \^q\(3),
      O => \done_aux_i_21__0_n_0\
    );
\done_aux_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^count_reg_reg[2]_0\,
      I2 => a_in_8(8),
      I3 => done_aux_reg_i_10,
      I4 => \^q\(3),
      I5 => done_aux_reg_i_10_0,
      O => \count_reg_reg[4]_0\
    );
\done_aux_i_35__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_8(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_8(1),
      I5 => a_in_8(2),
      O => \done_aux_i_35__0_n_0\
    );
\done_aux_i_36__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_8(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_8(1),
      I5 => a_in_8(2),
      O => \done_aux_i_36__2_n_0\
    );
\done_aux_i_38__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080082002"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_8(9),
      I4 => a_in_8(10),
      I5 => a_in_8(11),
      O => \done_aux_i_38__0_n_0\
    );
\done_aux_i_39__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004100100000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_8(9),
      I4 => a_in_8(10),
      I5 => a_in_8(11),
      O => \done_aux_i_39__0_n_0\
    );
\done_aux_i_41__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000802008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_8(5),
      I4 => a_in_8(6),
      I5 => a_in_8(7),
      O => \^count_reg_reg[2]_0\
    );
\done_aux_reg_i_8__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => done_aux_i_18_n_0,
      I1 => \done_aux_i_19__0_n_0\,
      O => \count_reg_reg[4]_1\,
      S => a_in_8(4)
    );
done_aux_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_20__0_n_0\,
      I1 => \done_aux_i_21__0_n_0\,
      O => \FSM_onehot_state_reg[3]\,
      S => a_in_8(13)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 is
  port (
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_3\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    a_in_7 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \done_aux_i_2__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \done_aux_i_3__0_0\ : in STD_LOGIC;
    \count[4]_i_9__0_0\ : in STD_LOGIC;
    \done_aux_reg_i_9__0\ : in STD_LOGIC;
    \done_aux_reg_i_9__0_0\ : in STD_LOGIC;
    \count[4]_i_5__1_0\ : in STD_LOGIC;
    \done_aux_reg_i_12__0_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 is
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_20__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_21__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_26__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_27__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_38__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_39__1_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal \done_aux_i_15__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_16__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_24__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_25__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_39__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_40__0_n_0\ : STD_LOGIC;
  signal done_aux_i_7_n_0 : STD_LOGIC;
  signal done_aux_i_8_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \count[4]_i_12__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \count[4]_i_13__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \count[4]_i_20__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \count[4]_i_21__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of done_aux_i_7 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of done_aux_i_8 : label is "soft_lutpair95";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
\FSM_onehot_state[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000000020000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state[4]_i_4_n_0\,
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\count[4]_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_26__1_n_0\,
      I1 => a_in_7(12),
      I2 => \count[4]_i_27__1_n_0\,
      I3 => \^q\(3),
      O => \count[4]_i_12__1_n_0\
    );
\count[4]_i_13__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_27__1_n_0\,
      I1 => a_in_7(12),
      I2 => \count[4]_i_26__1_n_0\,
      I3 => \^q\(3),
      I4 => \count[4]_i_5__1_0\,
      O => \count[4]_i_13__1_n_0\
    );
\count[4]_i_20__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_38__1_n_0\,
      I1 => a_in_7(3),
      I2 => \count[4]_i_39__1_n_0\,
      I3 => \^q\(3),
      I4 => \count[4]_i_9__0_0\,
      O => \count[4]_i_20__1_n_0\
    );
\count[4]_i_21__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_39__1_n_0\,
      I1 => a_in_7(3),
      I2 => \count[4]_i_38__1_n_0\,
      I3 => \^q\(3),
      O => \count[4]_i_21__1_n_0\
    );
\count[4]_i_26__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFBEFFEFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_7(9),
      I4 => a_in_7(10),
      I5 => a_in_7(11),
      O => \count[4]_i_26__1_n_0\
    );
\count[4]_i_27__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FF7DFFD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_7(9),
      I4 => a_in_7(10),
      I5 => a_in_7(11),
      O => \count[4]_i_27__1_n_0\
    );
\count[4]_i_38__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_7(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_7(1),
      I5 => a_in_7(2),
      O => \count[4]_i_38__1_n_0\
    );
\count[4]_i_39__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_7(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_7(1),
      I5 => a_in_7(2),
      O => \count[4]_i_39__1_n_0\
    );
\count[4]_i_45__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FF7DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_7(5),
      I4 => a_in_7(6),
      I5 => a_in_7(7),
      O => \count_reg_reg[2]_1\
    );
\count[4]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_7(13),
      I1 => \count[4]_i_12__1_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_13__1_n_0\,
      O => \count_reg_reg[4]_3\
    );
\count[4]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B8E2"
    )
        port map (
      I0 => \count[4]_i_20__1_n_0\,
      I1 => \^q\(4),
      I2 => \count[4]_i_21__1_n_0\,
      I3 => a_in_7(4),
      I4 => \done_aux_i_2__1\(0),
      O => \count_reg_reg[4]_1\
    );
\count_reg[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
\done_aux_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_7(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_7(1),
      I5 => a_in_7(2),
      O => \done_aux_i_15__0_n_0\
    );
\done_aux_i_16__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_7(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_7(1),
      I5 => a_in_7(2),
      O => \done_aux_i_16__2_n_0\
    );
\done_aux_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^count_reg_reg[2]_0\,
      I2 => a_in_7(8),
      I3 => \done_aux_reg_i_9__0\,
      I4 => \^q\(3),
      I5 => \done_aux_reg_i_9__0_0\,
      O => \count_reg_reg[4]_2\
    );
\done_aux_i_24__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \done_aux_i_39__1_n_0\,
      I2 => a_in_7(12),
      I3 => \done_aux_i_40__0_n_0\,
      I4 => \^q\(3),
      I5 => \done_aux_reg_i_12__0_0\,
      O => \done_aux_i_24__1_n_0\
    );
\done_aux_i_25__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_reg_i_12__0_0\,
      I1 => \^q\(4),
      I2 => \done_aux_i_40__0_n_0\,
      I3 => a_in_7(12),
      I4 => \done_aux_i_39__1_n_0\,
      I5 => \^q\(3),
      O => \done_aux_i_25__1_n_0\
    );
\done_aux_i_30__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000802008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_7(5),
      I4 => a_in_7(6),
      I5 => a_in_7(7),
      O => \^count_reg_reg[2]_0\
    );
\done_aux_i_39__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080200802"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_7(9),
      I4 => a_in_7(10),
      I5 => a_in_7(11),
      O => \done_aux_i_39__1_n_0\
    );
\done_aux_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB8E2"
    )
        port map (
      I0 => done_aux_i_7_n_0,
      I1 => \^q\(4),
      I2 => done_aux_i_8_n_0,
      I3 => a_in_7(4),
      I4 => \done_aux_i_2__1\(0),
      O => \count_reg_reg[4]_0\
    );
\done_aux_i_40__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010040100000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_7(9),
      I4 => a_in_7(10),
      I5 => a_in_7(11),
      O => \done_aux_i_40__0_n_0\
    );
done_aux_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_15__0_n_0\,
      I1 => a_in_7(3),
      I2 => \done_aux_i_16__2_n_0\,
      I3 => \^q\(3),
      I4 => \done_aux_i_3__0_0\,
      O => done_aux_i_7_n_0
    );
done_aux_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_16__2_n_0\,
      I1 => a_in_7(3),
      I2 => \done_aux_i_15__0_n_0\,
      I3 => \^q\(3),
      O => done_aux_i_8_n_0
    );
\done_aux_reg_i_12__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_24__1_n_0\,
      I1 => \done_aux_i_25__1_n_0\,
      O => \FSM_onehot_state_reg[3]\,
      S => a_in_7(13)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 is
  port (
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[4]_3\ : out STD_LOGIC;
    a_in_6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \done_aux_reg_i_7__1\ : in STD_LOGIC;
    \done_aux_reg_i_7__1_0\ : in STD_LOGIC;
    \done_aux_reg_i_6__1_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count[4]_i_9__1_0\ : in STD_LOGIC;
    \done_aux_reg_i_9__1_0\ : in STD_LOGIC;
    \count[4]_i_5__2_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 is
  signal \FSM_onehot_state[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count[4]_i_11__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_12__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_19__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_20__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_23__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_24__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_35__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_36__2_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal \done_aux_i_12__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_13__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_18__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_19__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_24__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_25__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_33__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_34__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \count[4]_i_11__2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \count[4]_i_12__2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \count[4]_i_19__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \count[4]_i_20__2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__2\ : label is "soft_lutpair79";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
\FSM_onehot_state[1]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000000020000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state[4]_i_4__0_n_0\,
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_state[4]_i_4__0_n_0\
    );
\count[4]_i_11__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_23__2_n_0\,
      I1 => a_in_6(3),
      I2 => \count[4]_i_24__2_n_0\,
      I3 => \^q\(3),
      O => \count[4]_i_11__2_n_0\
    );
\count[4]_i_12__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_24__2_n_0\,
      I1 => a_in_6(3),
      I2 => \count[4]_i_23__2_n_0\,
      I3 => \^q\(3),
      I4 => \count[4]_i_5__2_0\,
      O => \count[4]_i_12__2_n_0\
    );
\count[4]_i_19__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_35__2_n_0\,
      I1 => a_in_6(12),
      I2 => \count[4]_i_36__2_n_0\,
      I3 => \^q\(3),
      O => \count[4]_i_19__1_n_0\
    );
\count[4]_i_20__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_36__2_n_0\,
      I1 => a_in_6(12),
      I2 => \count[4]_i_35__2_n_0\,
      I3 => \^q\(3),
      I4 => \count[4]_i_9__1_0\,
      O => \count[4]_i_20__2_n_0\
    );
\count[4]_i_23__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_6(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_6(1),
      I5 => a_in_6(2),
      O => \count[4]_i_23__2_n_0\
    );
\count[4]_i_24__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_6(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_6(1),
      I5 => a_in_6(2),
      O => \count[4]_i_24__2_n_0\
    );
\count[4]_i_35__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFBEFFEFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_6(9),
      I4 => a_in_6(10),
      I5 => a_in_6(11),
      O => \count[4]_i_35__2_n_0\
    );
\count[4]_i_36__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FF7DFFD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_6(9),
      I4 => a_in_6(10),
      I5 => a_in_6(11),
      O => \count[4]_i_36__2_n_0\
    );
\count[4]_i_39__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FF7DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_6(5),
      I4 => a_in_6(6),
      I5 => a_in_6(7),
      O => \count_reg_reg[2]_1\
    );
\count[4]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(4),
      I1 => \count[4]_i_11__2_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_12__2_n_0\,
      O => \count_reg_reg[4]_3\
    );
\count[4]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_6(13),
      I1 => \count[4]_i_19__1_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_20__2_n_0\,
      O => \count_reg_reg[4]_1\
    );
\count_reg[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
\done_aux_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \done_aux_i_24__2_n_0\,
      I2 => a_in_6(12),
      I3 => \done_aux_i_25__2_n_0\,
      I4 => \^q\(3),
      I5 => \done_aux_reg_i_6__1_0\,
      O => \done_aux_i_12__0_n_0\
    );
\done_aux_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_reg_i_6__1_0\,
      I1 => \^q\(4),
      I2 => \done_aux_i_25__2_n_0\,
      I3 => a_in_6(12),
      I4 => \done_aux_i_24__2_n_0\,
      I5 => \^q\(3),
      O => \done_aux_i_13__0_n_0\
    );
\done_aux_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^count_reg_reg[2]_0\,
      I2 => a_in_6(8),
      I3 => \done_aux_reg_i_7__1\,
      I4 => \^q\(3),
      I5 => \done_aux_reg_i_7__1_0\,
      O => \count_reg_reg[4]_0\
    );
\done_aux_i_18__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^q\(4),
      I1 => \done_aux_i_33__1_n_0\,
      I2 => a_in_6(3),
      I3 => \done_aux_i_34__2_n_0\,
      I4 => \^q\(3),
      I5 => \done_aux_reg_i_9__1_0\,
      O => \done_aux_i_18__1_n_0\
    );
\done_aux_i_19__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_reg_i_9__1_0\,
      I1 => \^q\(4),
      I2 => \done_aux_i_34__2_n_0\,
      I3 => a_in_6(3),
      I4 => \done_aux_i_33__1_n_0\,
      I5 => \^q\(3),
      O => \done_aux_i_19__2_n_0\
    );
\done_aux_i_24__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080200802"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_6(9),
      I4 => a_in_6(10),
      I5 => a_in_6(11),
      O => \done_aux_i_24__2_n_0\
    );
\done_aux_i_25__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010040100000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_6(9),
      I4 => a_in_6(10),
      I5 => a_in_6(11),
      O => \done_aux_i_25__2_n_0\
    );
\done_aux_i_27__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000802008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_6(5),
      I4 => a_in_6(6),
      I5 => a_in_6(7),
      O => \^count_reg_reg[2]_0\
    );
\done_aux_i_33__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_6(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_6(1),
      I5 => a_in_6(2),
      O => \done_aux_i_33__1_n_0\
    );
\done_aux_i_34__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_6(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_6(1),
      I5 => a_in_6(2),
      O => \done_aux_i_34__2_n_0\
    );
\done_aux_reg_i_6__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_12__0_n_0\,
      I1 => \done_aux_i_13__0_n_0\,
      O => \FSM_onehot_state_reg[3]\,
      S => a_in_6(13)
    );
\done_aux_reg_i_9__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_18__1_n_0\,
      I1 => \done_aux_i_19__2_n_0\,
      O => \count_reg_reg[4]_2\,
      S => a_in_6(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 is
  port (
    \j_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in_5 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \done_aux_i_4__0_0\ : in STD_LOGIC;
    \count[4]_i_4__3_0\ : in STD_LOGIC;
    \done_aux_reg_i_7__2\ : in STD_LOGIC;
    \done_aux_reg_i_7__2_0\ : in STD_LOGIC;
    \count[4]_i_6__3_0\ : in STD_LOGIC;
    \done_aux_reg_i_6__2_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 is
  signal \FSM_onehot_state[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_10__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_14__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_19__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_20__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_25__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_26__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_9__2_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal \^count_reg_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal done_aux_i_10_n_0 : STD_LOGIC;
  signal \done_aux_i_13__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_14__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_19__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_20__5_n_0\ : STD_LOGIC;
  signal \done_aux_i_25__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_26__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_9__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \count[4]_i_10__3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \count[4]_i_13__3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \count[4]_i_14__2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \count[4]_i_9__2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of done_aux_i_10 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \done_aux_i_9__0\ : label is "soft_lutpair59";
begin
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
  \count_reg_reg[4]_0\(4 downto 0) <= \^count_reg_reg[4]_0\(4 downto 0);
\FSM_onehot_state[1]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(3),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000000020000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^count_reg_reg[4]_0\(4),
      I2 => \^count_reg_reg[4]_0\(2),
      I3 => \FSM_onehot_state[4]_i_4__1_n_0\,
      I4 => \^count_reg_reg[4]_0\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(0),
      I1 => \^count_reg_reg[4]_0\(1),
      O => \FSM_onehot_state[4]_i_4__1_n_0\
    );
\count[4]_i_10__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_20__3_n_0\,
      I1 => a_in_5(3),
      I2 => \count[4]_i_19__2_n_0\,
      I3 => \^count_reg_reg[4]_0\(3),
      I4 => \count[4]_i_4__3_0\,
      O => \count[4]_i_10__3_n_0\
    );
\count[4]_i_13__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_25__3_n_0\,
      I1 => a_in_5(12),
      I2 => \count[4]_i_26__3_n_0\,
      I3 => \^count_reg_reg[4]_0\(3),
      O => \count[4]_i_13__3_n_0\
    );
\count[4]_i_14__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_26__3_n_0\,
      I1 => a_in_5(12),
      I2 => \count[4]_i_25__3_n_0\,
      I3 => \^count_reg_reg[4]_0\(3),
      I4 => \count[4]_i_6__3_0\,
      O => \count[4]_i_14__2_n_0\
    );
\count[4]_i_19__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => a_in_5(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => a_in_5(1),
      I5 => a_in_5(2),
      O => \count[4]_i_19__2_n_0\
    );
\count[4]_i_20__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => a_in_5(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => a_in_5(1),
      I5 => a_in_5(2),
      O => \count[4]_i_20__3_n_0\
    );
\count[4]_i_25__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFBEFFEFFFFFFFF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => a_in_5(9),
      I4 => a_in_5(10),
      I5 => a_in_5(11),
      O => \count[4]_i_25__3_n_0\
    );
\count[4]_i_26__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FF7DFFD"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => a_in_5(9),
      I4 => a_in_5(10),
      I5 => a_in_5(11),
      O => \count[4]_i_26__3_n_0\
    );
\count[4]_i_29__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FF7DF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => a_in_5(5),
      I4 => a_in_5(6),
      I5 => a_in_5(7),
      O => \count_reg_reg[2]_1\
    );
\count[4]_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054511040"
    )
        port map (
      I0 => Q(1),
      I1 => a_in_5(4),
      I2 => \count[4]_i_9__2_n_0\,
      I3 => \^count_reg_reg[4]_0\(4),
      I4 => \count[4]_i_10__3_n_0\,
      I5 => Q(0),
      O => \j_reg[1]\
    );
\count[4]_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_5(13),
      I1 => \count[4]_i_13__3_n_0\,
      I2 => \^count_reg_reg[4]_0\(4),
      I3 => \count[4]_i_14__2_n_0\,
      O => \count_reg_reg[4]_2\
    );
\count[4]_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_19__2_n_0\,
      I1 => a_in_5(3),
      I2 => \count[4]_i_20__3_n_0\,
      I3 => \^count_reg_reg[4]_0\(3),
      O => \count[4]_i_9__2_n_0\
    );
\count_reg[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(3),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(3),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => \^count_reg_reg[4]_0\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(0),
      Q => \^count_reg_reg[4]_0\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(1),
      Q => \^count_reg_reg[4]_0\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(2),
      Q => \^count_reg_reg[4]_0\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(3),
      Q => \^count_reg_reg[4]_0\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(4),
      Q => \^count_reg_reg[4]_0\(4)
    );
done_aux_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_20__5_n_0\,
      I1 => a_in_5(3),
      I2 => \done_aux_i_19__3_n_0\,
      I3 => \^count_reg_reg[4]_0\(3),
      O => done_aux_i_10_n_0
    );
\done_aux_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \done_aux_i_25__3_n_0\,
      I2 => a_in_5(12),
      I3 => \done_aux_i_26__3_n_0\,
      I4 => \^count_reg_reg[4]_0\(3),
      I5 => \done_aux_reg_i_6__2_0\,
      O => \done_aux_i_13__1_n_0\
    );
\done_aux_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F388C0FC883088"
    )
        port map (
      I0 => \done_aux_reg_i_6__2_0\,
      I1 => \^count_reg_reg[4]_0\(4),
      I2 => \done_aux_i_26__3_n_0\,
      I3 => a_in_5(12),
      I4 => \done_aux_i_25__3_n_0\,
      I5 => \^count_reg_reg[4]_0\(3),
      O => \done_aux_i_14__1_n_0\
    );
\done_aux_i_15__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D58E5450D08E040"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[2]_0\,
      I2 => a_in_5(8),
      I3 => \done_aux_reg_i_7__2\,
      I4 => \^count_reg_reg[4]_0\(3),
      I5 => \done_aux_reg_i_7__2_0\,
      O => \count_reg_reg[4]_1\
    );
\done_aux_i_19__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => a_in_5(0),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => a_in_5(1),
      I5 => a_in_5(2),
      O => \done_aux_i_19__3_n_0\
    );
\done_aux_i_20__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => a_in_5(0),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => a_in_5(1),
      I5 => a_in_5(2),
      O => \done_aux_i_20__5_n_0\
    );
\done_aux_i_25__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080200802"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => a_in_5(9),
      I4 => a_in_5(10),
      I5 => a_in_5(11),
      O => \done_aux_i_25__3_n_0\
    );
\done_aux_i_26__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010040100000000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => a_in_5(9),
      I4 => a_in_5(10),
      I5 => a_in_5(11),
      O => \done_aux_i_26__3_n_0\
    );
\done_aux_i_28__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000802008"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => a_in_5(5),
      I4 => a_in_5(6),
      I5 => a_in_5(7),
      O => \^count_reg_reg[2]_0\
    );
\done_aux_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEAFEAE"
    )
        port map (
      I0 => Q(0),
      I1 => \done_aux_i_9__0_n_0\,
      I2 => \^count_reg_reg[4]_0\(4),
      I3 => done_aux_i_10_n_0,
      I4 => a_in_5(4),
      I5 => Q(1),
      O => \j_reg[0]\
    );
\done_aux_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_19__3_n_0\,
      I1 => a_in_5(3),
      I2 => \done_aux_i_20__5_n_0\,
      I3 => \^count_reg_reg[4]_0\(3),
      I4 => \done_aux_i_4__0_0\,
      O => \done_aux_i_9__0_n_0\
    );
\done_aux_reg_i_6__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \done_aux_i_13__1_n_0\,
      I1 => \done_aux_i_14__1_n_0\,
      O => \FSM_onehot_state_reg[3]\,
      S => a_in_5(13)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[3]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_2\ : out STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    done_aux_reg_1 : in STD_LOGIC;
    a_in_4 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \done_aux_i_3__2_0\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count[4]_i_4__4_0\ : in STD_LOGIC;
    \count[4]_i_7__3_0\ : in STD_LOGIC;
    \count[4]_i_5__4\ : in STD_LOGIC;
    \done_aux_i_6__0_0\ : in STD_LOGIC;
    \done_aux_i_4__1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 is
  signal \FSM_onehot_state[4]_i_4__5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count[4]_i_14__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_15__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_16__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_17__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_25__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_26__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_9__3_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal \^count_reg_reg[2]_1\ : STD_LOGIC;
  signal \done_aux_i_13__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_14__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_15__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_16__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_24__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_25__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_3__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_6__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_7__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_8__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \count[4]_i_14__3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count[4]_i_15__3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count[4]_i_8__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count[4]_i_9__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \done_aux_i_13__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \done_aux_i_14__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \done_aux_i_7__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \done_aux_i_8__0\ : label is "soft_lutpair42";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
  \count_reg_reg[2]_1\ <= \^count_reg_reg[2]_1\;
\FSM_onehot_state[1]_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_2\
    );
\FSM_onehot_state[2]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000002000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state[4]_i_4__5_n_0\,
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \FSM_onehot_state[4]_i_4__5_n_0\
    );
\count[4]_i_10__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \^count_reg_reg[2]_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_5__4\,
      I3 => a_in_4(8),
      O => \count_reg_reg[3]_0\
    );
\count[4]_i_14__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_25__4_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_26__4_n_0\,
      I3 => a_in_4(12),
      O => \count[4]_i_14__3_n_0\
    );
\count[4]_i_15__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_26__4_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_25__4_n_0\,
      I3 => a_in_4(12),
      I4 => \count[4]_i_7__3_0\,
      O => \count[4]_i_15__3_n_0\
    );
\count[4]_i_16__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_4(1),
      I5 => a_in_4(2),
      O => \count[4]_i_16__3_n_0\
    );
\count[4]_i_17__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_4(1),
      I5 => a_in_4(2),
      O => \count[4]_i_17__3_n_0\
    );
\count[4]_i_19__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FF7DF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_4(5),
      I4 => a_in_4(6),
      I5 => a_in_4(7),
      O => \^count_reg_reg[2]_0\
    );
\count[4]_i_25__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FDFF7FD"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(9),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_4(10),
      I5 => a_in_4(11),
      O => \count[4]_i_25__4_n_0\
    );
\count[4]_i_26__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFEFFBFEFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(9),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_4(10),
      I5 => a_in_4(11),
      O => \count[4]_i_26__4_n_0\
    );
\count[4]_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \count[4]_i_4__4_n_0\,
      I1 => \count_reg[0]\,
      I2 => done_aux_reg_0(0),
      I3 => \count_reg[0]_0\,
      I4 => done_aux_reg_0(1),
      I5 => \count[4]_i_7__3_n_0\,
      O => \j_reg[0]_0\
    );
\count[4]_i_4__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(4),
      I1 => \count[4]_i_8__3_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_9__3_n_0\,
      O => \count[4]_i_4__4_n_0\
    );
\count[4]_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(13),
      I1 => \count[4]_i_14__3_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_15__3_n_0\,
      O => \count[4]_i_7__3_n_0\
    );
\count[4]_i_8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_16__3_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_17__3_n_0\,
      I3 => a_in_4(3),
      O => \count[4]_i_8__3_n_0\
    );
\count[4]_i_9__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_17__3_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_16__3_n_0\,
      I3 => a_in_4(3),
      I4 => \count[4]_i_4__4_0\,
      O => \count[4]_i_9__3_n_0\
    );
\count_reg[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
\done_aux_i_13__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_24__4_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_25__4_n_0\,
      I3 => a_in_4(12),
      O => \done_aux_i_13__2_n_0\
    );
\done_aux_i_14__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_25__4_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_24__4_n_0\,
      I3 => a_in_4(12),
      I4 => \done_aux_i_6__0_0\,
      O => \done_aux_i_14__2_n_0\
    );
\done_aux_i_15__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_4(1),
      I5 => a_in_4(2),
      O => \done_aux_i_15__3_n_0\
    );
\done_aux_i_16__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_4(1),
      I5 => a_in_4(2),
      O => \done_aux_i_16__3_n_0\
    );
\done_aux_i_18__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000802008"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_4(5),
      I4 => a_in_4(6),
      I5 => a_in_4(7),
      O => \^count_reg_reg[2]_1\
    );
\done_aux_i_24__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000082000082"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(9),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_4(10),
      I5 => a_in_4(11),
      O => \done_aux_i_24__4_n_0\
    );
\done_aux_i_25__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100004100000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(9),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_4(10),
      I5 => a_in_4(11),
      O => \done_aux_i_25__4_n_0\
    );
\done_aux_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \done_aux_i_3__2_n_0\,
      I1 => done_aux_reg,
      I2 => done_aux_reg_0(0),
      I3 => done_aux_reg_1,
      I4 => done_aux_reg_0(1),
      I5 => \done_aux_i_6__0_n_0\,
      O => \j_reg[0]\
    );
\done_aux_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(4),
      I1 => \done_aux_i_7__0_n_0\,
      I2 => \^q\(4),
      I3 => \done_aux_i_8__0_n_0\,
      O => \done_aux_i_3__2_n_0\
    );
\done_aux_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_4(13),
      I1 => \done_aux_i_13__2_n_0\,
      I2 => \^q\(4),
      I3 => \done_aux_i_14__2_n_0\,
      O => \done_aux_i_6__0_n_0\
    );
\done_aux_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_15__3_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_16__3_n_0\,
      I3 => a_in_4(3),
      O => \done_aux_i_7__0_n_0\
    );
\done_aux_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_16__3_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_15__3_n_0\,
      I3 => a_in_4(3),
      I4 => \done_aux_i_3__2_0\,
      O => \done_aux_i_8__0_n_0\
    );
\done_aux_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \^count_reg_reg[2]_1\,
      I1 => \^q\(3),
      I2 => \done_aux_i_4__1\,
      I3 => a_in_4(8),
      O => \count_reg_reg[3]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    a_in_3 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    done_aux_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \done_aux_i_5__1_0\ : in STD_LOGIC;
    \count[4]_i_6__5_0\ : in STD_LOGIC;
    \done_aux_i_3__3_0\ : in STD_LOGIC;
    \count[4]_i_4__5_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    done_aux_reg_0 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 is
  signal \FSM_onehot_state[4]_i_4__6_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count[4]_i_11__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_12__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_14__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_19__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_20__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__4_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \done_aux_i_10__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_11__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_12__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_13__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_18__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_19__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_3__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_5__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_6__1_n_0\ : STD_LOGIC;
  signal \done_aux_i_7__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[4]_i_11__5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count[4]_i_12__5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count[4]_i_7__4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[4]_i_8__4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \done_aux_i_10__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \done_aux_i_11__2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \done_aux_i_6__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \done_aux_i_7__1\ : label is "soft_lutpair28";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000002000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state[4]_i_4__6_n_0\,
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \FSM_onehot_state[4]_i_4__6_n_0\
    );
\count[4]_i_11__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_19__4_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_20__5_n_0\,
      I3 => a_in_3(3),
      I4 => \count[4]_i_6__5_0\,
      O => \count[4]_i_11__5_n_0\
    );
\count[4]_i_12__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_20__5_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_19__4_n_0\,
      I3 => a_in_3(3),
      O => \count[4]_i_12__5_n_0\
    );
\count[4]_i_13__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDFFFFD7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_3(5),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_3(6),
      I5 => a_in_3(7),
      O => \count[4]_i_13__5_n_0\
    );
\count[4]_i_14__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFBFEFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_3(5),
      I4 => a_in_3(6),
      I5 => a_in_3(7),
      O => \count[4]_i_14__4_n_0\
    );
\count[4]_i_19__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_3(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_3(1),
      I5 => a_in_3(2),
      O => \count[4]_i_19__4_n_0\
    );
\count[4]_i_20__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_3(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_3(1),
      I5 => a_in_3(2),
      O => \count[4]_i_20__5_n_0\
    );
\count[4]_i_3__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \count[4]_i_4__5_n_0\,
      I1 => done_aux_reg(0),
      I2 => \count_reg[0]\,
      I3 => done_aux_reg(1),
      I4 => \count[4]_i_6__5_n_0\,
      O => \j_reg[0]_0\
    );
\count[4]_i_4__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_3(9),
      I1 => \count[4]_i_7__4_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_8__4_n_0\,
      O => \count[4]_i_4__5_n_0\
    );
\count[4]_i_6__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B8E2"
    )
        port map (
      I0 => \count[4]_i_11__5_n_0\,
      I1 => \^q\(4),
      I2 => \count[4]_i_12__5_n_0\,
      I3 => a_in_3(4),
      I4 => done_aux_reg(0),
      O => \count[4]_i_6__5_n_0\
    );
\count[4]_i_7__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_13__5_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_14__4_n_0\,
      I3 => a_in_3(8),
      O => \count[4]_i_7__4_n_0\
    );
\count[4]_i_8__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_14__4_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_13__5_n_0\,
      I3 => a_in_3(8),
      I4 => \count[4]_i_4__5_0\,
      O => \count[4]_i_8__4_n_0\
    );
\count_reg[0]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
\done_aux_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_18__4_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_19__4_n_0\,
      I3 => a_in_3(3),
      I4 => \done_aux_i_5__1_0\,
      O => \done_aux_i_10__1_n_0\
    );
\done_aux_i_11__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_19__4_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_18__4_n_0\,
      I3 => a_in_3(3),
      O => \done_aux_i_11__2_n_0\
    );
\done_aux_i_12__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000820"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_3(5),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_3(6),
      I5 => a_in_3(7),
      O => \done_aux_i_12__3_n_0\
    );
\done_aux_i_13__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410010000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_3(5),
      I4 => a_in_3(6),
      I5 => a_in_3(7),
      O => \done_aux_i_13__4_n_0\
    );
\done_aux_i_18__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_3(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_3(1),
      I5 => a_in_3(2),
      O => \done_aux_i_18__4_n_0\
    );
\done_aux_i_19__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_3(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_3(1),
      I5 => a_in_3(2),
      O => \done_aux_i_19__4_n_0\
    );
\done_aux_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \done_aux_i_3__3_n_0\,
      I1 => done_aux_reg(0),
      I2 => done_aux_reg_0,
      I3 => done_aux_reg(1),
      I4 => \done_aux_i_5__1_n_0\,
      O => \j_reg[0]\
    );
\done_aux_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_3(9),
      I1 => \done_aux_i_6__1_n_0\,
      I2 => \^q\(4),
      I3 => \done_aux_i_7__1_n_0\,
      O => \done_aux_i_3__3_n_0\
    );
\done_aux_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB8E2"
    )
        port map (
      I0 => \done_aux_i_10__1_n_0\,
      I1 => \^q\(4),
      I2 => \done_aux_i_11__2_n_0\,
      I3 => a_in_3(4),
      I4 => done_aux_reg(0),
      O => \done_aux_i_5__1_n_0\
    );
\done_aux_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_12__3_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_13__4_n_0\,
      I3 => a_in_3(8),
      O => \done_aux_i_6__1_n_0\
    );
\done_aux_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_13__4_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_12__3_n_0\,
      I3 => a_in_3(8),
      I4 => \done_aux_i_3__3_0\,
      O => \done_aux_i_7__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    a_in_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \done_aux_i_2__4_0\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count[4]_i_3__5_0\ : in STD_LOGIC;
    \done_aux_i_3__4_0\ : in STD_LOGIC;
    \count[4]_i_6__6_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 is
  signal \FSM_onehot_state[4]_i_4__7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count[4]_i_10__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_11__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_12__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__5_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \done_aux_i_11__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_12__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_4__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_5__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_6__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_7__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_8__2_n_0\ : STD_LOGIC;
  signal \done_aux_i_9__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[4]_i_10__6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[4]_i_11__6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[4]_i_4__6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[4]_i_5__6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \done_aux_i_4__3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \done_aux_i_5__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \done_aux_i_6__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \done_aux_i_7__2\ : label is "soft_lutpair14";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300000002000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state[4]_i_4__7_n_0\,
      I4 => \^q\(3),
      I5 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \FSM_onehot_state[4]_i_4__7_n_0\
    );
\count[4]_i_10__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_12__6_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_13__6_n_0\,
      I3 => a_in_2(8),
      O => \count[4]_i_10__6_n_0\
    );
\count[4]_i_11__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_13__6_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_12__6_n_0\,
      I3 => a_in_2(8),
      I4 => \count[4]_i_6__6_0\,
      O => \count[4]_i_11__6_n_0\
    );
\count[4]_i_12__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FF7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_2(5),
      I4 => a_in_2(6),
      I5 => a_in_2(7),
      O => \count[4]_i_12__6_n_0\
    );
\count[4]_i_13__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_2(5),
      I4 => a_in_2(6),
      I5 => a_in_2(7),
      O => \count[4]_i_13__6_n_0\
    );
\count[4]_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in_2(4),
      I1 => \count[4]_i_4__6_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_5__6_n_0\,
      I4 => \count_reg[0]\(0),
      I5 => \count[4]_i_6__6_n_0\,
      O => \count_reg_reg[4]_1\
    );
\count[4]_i_4__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_7__5_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_8__5_n_0\,
      I3 => a_in_2(3),
      O => \count[4]_i_4__6_n_0\
    );
\count[4]_i_5__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_8__5_n_0\,
      I1 => \^q\(3),
      I2 => \count[4]_i_7__5_n_0\,
      I3 => a_in_2(3),
      I4 => \count[4]_i_3__5_0\,
      O => \count[4]_i_5__6_n_0\
    );
\count[4]_i_6__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_2(9),
      I1 => \count[4]_i_10__6_n_0\,
      I2 => \^q\(4),
      I3 => \count[4]_i_11__6_n_0\,
      O => \count[4]_i_6__6_n_0\
    );
\count[4]_i_7__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_2(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_2(1),
      I5 => a_in_2(2),
      O => \count[4]_i_7__5_n_0\
    );
\count[4]_i_8__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_2(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_2(1),
      I5 => a_in_2(2),
      O => \count[4]_i_8__5_n_0\
    );
\count_reg[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_0\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
\done_aux_i_11__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008020"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in_2(5),
      I4 => a_in_2(6),
      I5 => a_in_2(7),
      O => \done_aux_i_11__3_n_0\
    );
\done_aux_i_12__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in_2(5),
      I4 => a_in_2(6),
      I5 => a_in_2(7),
      O => \done_aux_i_12__4_n_0\
    );
\done_aux_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_2(4),
      I1 => \done_aux_i_4__3_n_0\,
      I2 => \^q\(4),
      I3 => \done_aux_i_5__2_n_0\,
      O => \count_reg_reg[4]_0\
    );
\done_aux_i_3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in_2(9),
      I1 => \done_aux_i_6__2_n_0\,
      I2 => \^q\(4),
      I3 => \done_aux_i_7__2_n_0\,
      O => \count_reg_reg[4]_2\
    );
\done_aux_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_8__2_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_9__3_n_0\,
      I3 => a_in_2(3),
      O => \done_aux_i_4__3_n_0\
    );
\done_aux_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_9__3_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_8__2_n_0\,
      I3 => a_in_2(3),
      I4 => \done_aux_i_2__4_0\,
      O => \done_aux_i_5__2_n_0\
    );
\done_aux_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_11__3_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_12__4_n_0\,
      I3 => a_in_2(8),
      O => \done_aux_i_6__2_n_0\
    );
\done_aux_i_7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_12__4_n_0\,
      I1 => \^q\(3),
      I2 => \done_aux_i_11__3_n_0\,
      I3 => a_in_2(8),
      I4 => \done_aux_i_3__4_0\,
      O => \done_aux_i_7__2_n_0\
    );
\done_aux_i_8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_2(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_2(1),
      I5 => a_in_2(2),
      O => \done_aux_i_8__2_n_0\
    );
\done_aux_i_9__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_2(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_2(1),
      I5 => a_in_2(2),
      O => \done_aux_i_9__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 is
  port (
    j_reg_0_sp_1 : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    j_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ack_in_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 is
  signal \FSM_onehot_state[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__7_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__7_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__7_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__6_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \done_aux_i_2__5_n_0\ : STD_LOGIC;
  signal \done_aux_i_3__5_n_0\ : STD_LOGIC;
  signal \done_aux_i_4__4_n_0\ : STD_LOGIC;
  signal \done_aux_i_5__3_n_0\ : STD_LOGIC;
  signal \done_aux_i_6__3_n_0\ : STD_LOGIC;
  signal j_reg_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[4]_i_3__6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[4]_i_4__7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \done_aux_i_2__5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \done_aux_i_3__5\ : label is "soft_lutpair0";
begin
  \count_reg_reg[4]_0\(4 downto 0) <= \^count_reg_reg[4]_0\(4 downto 0);
  j_reg_0_sp_1 <= j_reg_0_sn_1;
\FSM_onehot_state[1]_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(3),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[2]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(3),
      I5 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_3__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \FSM_onehot_state[4]_i_4__2_n_0\,
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(3),
      I1 => \^count_reg_reg[4]_0\(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(4),
      O => \FSM_onehot_state[4]_i_4__2_n_0\
    );
\count[4]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054511040"
    )
        port map (
      I0 => j_reg(0),
      I1 => Q(4),
      I2 => \count[4]_i_3__6_n_0\,
      I3 => \^count_reg_reg[4]_0\(4),
      I4 => \count[4]_i_4__7_n_0\,
      I5 => done,
      O => E(0)
    );
\count[4]_i_3__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \count[4]_i_5__7_n_0\,
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \count[4]_i_6__7_n_0\,
      I3 => Q(3),
      O => \count[4]_i_3__6_n_0\
    );
\count[4]_i_4__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \count[4]_i_6__7_n_0\,
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \count[4]_i_5__7_n_0\,
      I3 => Q(3),
      I4 => \count[4]_i_7__6_n_0\,
      O => \count[4]_i_4__7_n_0\
    );
\count[4]_i_5__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => Q(0),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_5__7_n_0\
    );
\count[4]_i_6__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => Q(0),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => Q(1),
      I5 => Q(2),
      O => \count[4]_i_6__7_n_0\
    );
\count[4]_i_7__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => Q(2),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => Q(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => Q(0),
      I5 => \^count_reg_reg[4]_0\(1),
      O => \count[4]_i_7__6_n_0\
    );
\count_reg[0]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(3),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(3),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(0),
      I2 => \^count_reg_reg[4]_0\(1),
      O => count_next(2)
    );
\count_reg[3]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCC8CC"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(0),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(2),
      O => count_next(3)
    );
\count_reg[4]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => \^count_reg_reg[4]_0\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[4]_1\(0),
      CLR => ack_in_1,
      D => count_next(0),
      Q => \^count_reg_reg[4]_0\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[4]_1\(0),
      CLR => ack_in_1,
      D => count_next(1),
      Q => \^count_reg_reg[4]_0\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[4]_1\(0),
      CLR => ack_in_1,
      D => count_next(2),
      Q => \^count_reg_reg[4]_0\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[4]_1\(0),
      CLR => ack_in_1,
      D => count_next(3),
      Q => \^count_reg_reg[4]_0\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \count_reg_reg[4]_1\(0),
      CLR => ack_in_1,
      D => count_next(4),
      Q => \^count_reg_reg[4]_0\(4)
    );
\done_aux_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFBBAEA"
    )
        port map (
      I0 => j_reg(0),
      I1 => Q(4),
      I2 => \done_aux_i_2__5_n_0\,
      I3 => \^count_reg_reg[4]_0\(4),
      I4 => \done_aux_i_3__5_n_0\,
      I5 => done,
      O => j_reg_0_sn_1
    );
\done_aux_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \done_aux_i_4__4_n_0\,
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \done_aux_i_5__3_n_0\,
      I3 => Q(3),
      O => \done_aux_i_2__5_n_0\
    );
\done_aux_i_3__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => \done_aux_i_5__3_n_0\,
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \done_aux_i_4__4_n_0\,
      I3 => Q(3),
      I4 => \done_aux_i_6__3_n_0\,
      O => \done_aux_i_3__5_n_0\
    );
\done_aux_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => Q(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \done_aux_i_4__4_n_0\
    );
\done_aux_i_5__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => Q(0),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \done_aux_i_5__3_n_0\
    );
\done_aux_i_6__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => Q(2),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => Q(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => Q(0),
      I5 => \^count_reg_reg[4]_0\(1),
      O => \done_aux_i_6__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm is
  port (
    next_out_9 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    \count_reg_reg[2]_3\ : out STD_LOGIC;
    \count_reg_reg[2]_4\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \count[4]_i_29\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    done_aux_i_2 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count[4]_i_3\ : in STD_LOGIC;
    \counter[31]\ : in STD_LOGIC;
    \counter[31]_0\ : in STD_LOGIC;
    \counter[31]_1\ : in STD_LOGIC;
    \counter[31]_2\ : in STD_LOGIC;
    plusOp_9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm is
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal ack_out_9 : STD_LOGIC;
  signal acks_out : STD_LOGIC;
  signal \asout_array[9]_0\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__0_n_0\ : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_15 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal \^j_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal logic_n_3 : STD_LOGIC;
  signal logic_n_4 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__0\ : label is "soft_lutpair138";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \counter_s_reg[0]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \counter_s_reg[10]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \counter_s_reg[11]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \counter_s_reg[12]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \counter_s_reg[13]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \counter_s_reg[14]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \counter_s_reg[15]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \counter_s_reg[16]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \counter_s_reg[17]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \counter_s_reg[18]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \counter_s_reg[19]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \counter_s_reg[1]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \counter_s_reg[20]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \counter_s_reg[21]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \counter_s_reg[22]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \counter_s_reg[23]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \counter_s_reg[24]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \counter_s_reg[25]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \counter_s_reg[26]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \counter_s_reg[27]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \counter_s_reg[28]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \counter_s_reg[29]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \counter_s_reg[2]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \counter_s_reg[30]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \counter_s_reg[31]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \counter_s_reg[3]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \counter_s_reg[4]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \counter_s_reg[5]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \counter_s_reg[6]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \counter_s_reg[7]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \counter_s_reg[8]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \counter_s_reg[9]_i_1\ : label is "soft_lutpair151";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of reset_control_reg_i_1 : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of reset_control_reg_i_2 : label is "soft_lutpair139";
begin
  \j_reg[2]\(2 downto 0) <= \^j_reg[2]\(2 downto 0);
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_6,
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
      CE => logic_n_6,
      D => logic_n_4,
      Q => \ce__0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_6,
      D => dut_n_14,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_6,
      D => logic_n_3,
      Q => \asout_array[9]_0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_6,
      D => dut_n_13,
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
      G => logic_n_5,
      GE => '1',
      Q => ack_out_9
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
\counter_s_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(0),
      I1 => ack_out_9,
      O => D(0)
    );
\counter_s_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(10),
      I1 => ack_out_9,
      O => D(10)
    );
\counter_s_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(11),
      I1 => ack_out_9,
      O => D(11)
    );
\counter_s_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(12),
      I1 => ack_out_9,
      O => D(12)
    );
\counter_s_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(13),
      I1 => ack_out_9,
      O => D(13)
    );
\counter_s_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(14),
      I1 => ack_out_9,
      O => D(14)
    );
\counter_s_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(15),
      I1 => ack_out_9,
      O => D(15)
    );
\counter_s_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(16),
      I1 => ack_out_9,
      O => D(16)
    );
\counter_s_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(17),
      I1 => ack_out_9,
      O => D(17)
    );
\counter_s_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(18),
      I1 => ack_out_9,
      O => D(18)
    );
\counter_s_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(19),
      I1 => ack_out_9,
      O => D(19)
    );
\counter_s_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(1),
      I1 => ack_out_9,
      O => D(1)
    );
\counter_s_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(20),
      I1 => ack_out_9,
      O => D(20)
    );
\counter_s_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(21),
      I1 => ack_out_9,
      O => D(21)
    );
\counter_s_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(22),
      I1 => ack_out_9,
      O => D(22)
    );
\counter_s_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(23),
      I1 => ack_out_9,
      O => D(23)
    );
\counter_s_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(24),
      I1 => ack_out_9,
      O => D(24)
    );
\counter_s_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(25),
      I1 => ack_out_9,
      O => D(25)
    );
\counter_s_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(26),
      I1 => ack_out_9,
      O => D(26)
    );
\counter_s_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(27),
      I1 => ack_out_9,
      O => D(27)
    );
\counter_s_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(28),
      I1 => ack_out_9,
      O => D(28)
    );
\counter_s_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(29),
      I1 => ack_out_9,
      O => D(29)
    );
\counter_s_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(2),
      I1 => ack_out_9,
      O => D(2)
    );
\counter_s_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(30),
      I1 => ack_out_9,
      O => D(30)
    );
\counter_s_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(31),
      I1 => ack_out_9,
      O => D(31)
    );
\counter_s_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1111111"
    )
        port map (
      I0 => \counter[31]\,
      I1 => ack_out_9,
      I2 => \counter[31]_0\,
      I3 => \counter[31]_1\,
      I4 => \counter[31]_2\,
      O => E(0)
    );
\counter_s_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(3),
      I1 => ack_out_9,
      O => D(3)
    );
\counter_s_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(4),
      I1 => ack_out_9,
      O => D(4)
    );
\counter_s_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(5),
      I1 => ack_out_9,
      O => D(5)
    );
\counter_s_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(6),
      I1 => ack_out_9,
      O => D(6)
    );
\counter_s_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(7),
      I1 => ack_out_9,
      O => D(7)
    );
\counter_s_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(8),
      I1 => ack_out_9,
      O => D(8)
    );
\counter_s_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_9(9),
      I1 => ack_out_9,
      O => D(9)
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter
     port map (
      AR(0) => AR(0),
      D(1) => dut_n_13,
      D(0) => dut_n_14,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[9]_0\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => Q(4 downto 0),
      clk => clk,
      \count[4]_i_29\(10 downto 0) => \count[4]_i_29\(10 downto 0),
      \count[4]_i_3_0\ => \count[4]_i_3\,
      \count_reg[0]\(1 downto 0) => \^j_reg[2]\(1 downto 0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_1\ => \count_reg_reg[2]_0\,
      \count_reg_reg[2]_2\ => \count_reg_reg[2]_1\,
      \count_reg_reg[2]_3\ => \count_reg_reg[2]_2\,
      \count_reg_reg[2]_4\ => \count_reg_reg[2]_3\,
      \count_reg_reg[2]_5\ => \count_reg_reg[2]_4\,
      \count_reg_reg[3]_0\ => dut_n_15,
      done_aux_i_2_0 => done_aux_i_2,
      \j_reg[0]\ => dut_n_5,
      \j_reg[0]_0\ => dut_n_6
    );
logic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_3,
      D(0) => logic_n_4,
      E(0) => logic_n_6,
      \FSM_onehot_state_reg[1]\ => dut_n_15,
      \FSM_onehot_state_reg[2]\ => logic_n_5,
      Q(2 downto 0) => \^j_reg[2]\(2 downto 0),
      acks_out_reg(4) => nexts_out,
      acks_out_reg(3) => \asout_array[9]_0\,
      acks_out_reg(2) => \FSM_onehot_state_reg_n_0_[2]\,
      acks_out_reg(1) => \ce__0\,
      acks_out_reg(0) => \FSM_onehot_state_reg_n_0_[0]\,
      clk => clk,
      \count_reg[0]_0\ => dut_n_6,
      \count_reg[0]_1\ => \count_reg[0]\,
      done_aux_reg_0 => dut_n_5,
      done_aux_reg_1 => done_aux_reg
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
      Q => next_out_9
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
      I1 => \asout_array[9]_0\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
reset_control_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[9]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => reset_control_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_8 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    done_aux_reg_i_6 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_i_13 : in STD_LOGIC;
    \count_reg[4]_i_17\ : in STD_LOGIC;
    \count_reg[4]_i_17_0\ : in STD_LOGIC;
    \count_reg[4]_i_14\ : in STD_LOGIC;
    done_aux_reg_i_16 : in STD_LOGIC;
    done_aux_reg_i_16_0 : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \done_aux_i_2__0\ : in STD_LOGIC;
    a_in_8 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    done_aux_reg_i_10 : in STD_LOGIC;
    done_aux_reg_i_10_0 : in STD_LOGIC;
    \done_aux_i_2__0_0\ : in STD_LOGIC;
    \done_aux_reg_i_8__0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count[4]_i_8\ : in STD_LOGIC;
    \count[4]_i_11__0\ : in STD_LOGIC;
    done_aux_reg_i_9 : in STD_LOGIC;
    next_out_9 : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_onehot_state_reg[3]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal a_in_9 : STD_LOGIC_VECTOR ( 44 downto 5 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[8]_1\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__2_n_0\ : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal \^j_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__2\ : label is "soft_lutpair126";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[8][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[8][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[8][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[8][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[8][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__2\ : label is "soft_lutpair126";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__0\ : label is "soft_lutpair127";
begin
  AR(0) <= \^ar\(0);
  \FSM_onehot_state_reg[3]_0\(10 downto 0) <= \^fsm_onehot_state_reg[3]_0\(10 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  \j_reg[1]\(1 downto 0) <= \^j_reg[1]\(1 downto 0);
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
      CE => logic_n_9,
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
      CE => logic_n_9,
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
      CE => logic_n_9,
      D => dut_n_12,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_9,
      D => logic_n_6,
      Q => \asout_array[8]_1\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_9,
      D => dut_n_11,
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
      G => logic_n_8,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__2\: unisim.vcomponents.LUT3
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
      D => \^q\(0),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(1),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(2),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(3),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(4),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(0),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(1),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(2),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(3),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(4),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(9)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(5),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(5)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(6),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(6)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(7),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(7)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(8),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(13)
    );
\asout_array_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(9),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(14)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(10),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(8)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(11),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(9)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(12),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(10)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(13),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(18)
    );
\asout_array_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(14),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(19)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(15),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(20)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(16),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(21)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(17),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(22)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(18),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(23)
    );
\asout_array_reg[4][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(19),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(24)
    );
\asout_array_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(20),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(25)
    );
\asout_array_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(21),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(26)
    );
\asout_array_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(22),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(27)
    );
\asout_array_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(23),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(28)
    );
\asout_array_reg[5][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(24),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(29)
    );
\asout_array_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(25),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(30)
    );
\asout_array_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(26),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(31)
    );
\asout_array_reg[6][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(27),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(32)
    );
\asout_array_reg[6][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(28),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(33)
    );
\asout_array_reg[6][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(29),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(34)
    );
\asout_array_reg[7][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(30),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(35)
    );
\asout_array_reg[7][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(31),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(36)
    );
\asout_array_reg[7][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(32),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(37)
    );
\asout_array_reg[7][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(33),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(38)
    );
\asout_array_reg[7][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(34),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(39)
    );
\asout_array_reg[8][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(35),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(40)
    );
\asout_array_reg[8][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(36),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(41)
    );
\asout_array_reg[8][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(37),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(42)
    );
\asout_array_reg[8][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(38),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(43)
    );
\asout_array_reg[8][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_8(39),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(44)
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
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__2_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0
     port map (
      D(1) => dut_n_11,
      D(0) => dut_n_12,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_10,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[8]_1\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => \^q\(4 downto 0),
      a_in_8(13 downto 9) => a_in_8(19 downto 15),
      a_in_8(8 downto 5) => a_in_8(13 downto 10),
      a_in_8(4 downto 0) => a_in_8(4 downto 0),
      clk => clk,
      \count[4]_i_11__0_0\ => \count[4]_i_11__0\,
      \count[4]_i_8_0\ => \count[4]_i_8\,
      \count_reg[0]\ => \count_reg[0]_0\,
      \count_reg[0]_0\(1 downto 0) => \^j_reg[1]\(1 downto 0),
      \count_reg[0]_1\ => \count_reg[0]_1\,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_1\,
      \count_reg_reg[2]_1\ => \count_reg_reg[2]_2\,
      \count_reg_reg[3]_0\ => dut_n_13,
      \count_reg_reg[4]_0\ => \count_reg_reg[4]\,
      \count_reg_reg[4]_1\ => dut_n_7,
      done_aux_reg_i_10 => done_aux_reg_i_10,
      done_aux_reg_i_10_0 => done_aux_reg_i_10_0,
      \done_aux_reg_i_8__0_0\ => \done_aux_reg_i_8__0\,
      done_aux_reg_i_9_0 => done_aux_reg_i_9,
      \j_reg[1]\ => dut_n_8
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_6,
      D(0) => logic_n_7,
      E(0) => logic_n_9,
      \FSM_onehot_state_reg[1]\ => dut_n_13,
      \FSM_onehot_state_reg[2]\ => logic_n_8,
      Q(1 downto 0) => \^j_reg[1]\(1 downto 0),
      a_in_9(33 downto 7) => a_in_9(44 downto 18),
      a_in_9(6 downto 5) => a_in_9(14 downto 13),
      a_in_9(4 downto 0) => a_in_9(9 downto 5),
      clk => clk,
      \count[4]_i_29_0\(4 downto 3) => \^fsm_onehot_state_reg[3]_0\(9 downto 8),
      \count[4]_i_29_0\(2 downto 0) => \^fsm_onehot_state_reg[3]_0\(2 downto 0),
      \count_reg[0]_0\(2 downto 0) => \count_reg[0]\(2 downto 0),
      \count_reg[0]_1\ => \count_reg[0]_2\,
      \count_reg[0]_2\ => dut_n_8,
      \count_reg[4]_i_14_0\ => \count_reg[4]_i_14\,
      \count_reg[4]_i_17_0\ => \count_reg[4]_i_17\,
      \count_reg[4]_i_17_1\ => \count_reg[4]_i_17_0\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[8]_1\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      done_aux_i_22_0(2 downto 0) => \^fsm_onehot_state_reg[3]_0\(7 downto 5),
      \done_aux_i_2__0_0\ => dut_n_10,
      \done_aux_i_2__0_1\ => \done_aux_i_2__0\,
      \done_aux_i_2__0_2\ => \done_aux_i_2__0_0\,
      \done_aux_i_2__0_3\ => dut_n_7,
      done_aux_reg_0 => done_aux_reg,
      done_aux_reg_1 => done_aux_reg_0,
      done_aux_reg_i_13_0 => done_aux_reg_i_13,
      done_aux_reg_i_16_0 => done_aux_reg_i_16,
      done_aux_reg_i_16_1 => done_aux_reg_i_16_0,
      done_aux_reg_i_6_0(4 downto 0) => done_aux_reg_i_6(4 downto 0),
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[2]_1\ => \j_reg[2]_0\,
      next_out_9 => next_out_9
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
      Q => next_out_8
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
      I1 => \asout_array[8]_1\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[8]_1\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_7 : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    a_in_8 : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[4]_2\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[4]_3\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    done_aux_reg_i_4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_i_10 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count[4]_i_10__0\ : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    a_in_7 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \done_aux_i_3__0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count[4]_i_9__0\ : in STD_LOGIC;
    \done_aux_reg_i_9__0\ : in STD_LOGIC;
    \done_aux_reg_i_9__0_0\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \count_reg[0]_3\ : in STD_LOGIC;
    \count_reg[0]_4\ : in STD_LOGIC;
    \count[4]_i_5__1\ : in STD_LOGIC;
    \done_aux_i_2__1\ : in STD_LOGIC;
    \done_aux_reg_i_12__0\ : in STD_LOGIC;
    next_out_8 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_8\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[7]_2\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__4_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[4]_2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal \^j_reg[0]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__4\ : label is "soft_lutpair113";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[7][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__4\ : label is "soft_lutpair113";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__1\ : label is "soft_lutpair114";
begin
  AR(0) <= \^ar\(0);
  a_in_8(39 downto 0) <= \^a_in_8\(39 downto 0);
  \count_reg_reg[4]_2\(4 downto 0) <= \^count_reg_reg[4]_2\(4 downto 0);
  \j_reg[0]_1\(0) <= \^j_reg[0]_1\(0);
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
      CE => logic_n_17,
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
      CE => logic_n_17,
      D => logic_n_15,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_17,
      D => dut_n_13,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_17,
      D => logic_n_14,
      Q => \asout_array[7]_2\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_17,
      D => dut_n_12,
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
      G => logic_n_16,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__4\: unisim.vcomponents.LUT3
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
      D => \^count_reg_reg[4]_2\(0),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_2\(1),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_2\(2),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_2\(3),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_2\(4),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(0),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(1),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(2),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(3),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(4),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(9)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(5),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(10)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(6),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(11)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(7),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(12)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(8),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(13)
    );
\asout_array_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(9),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(14)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(10),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(15)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(11),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(16)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(12),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(17)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(13),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(18)
    );
\asout_array_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(14),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(19)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(15),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(20)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(16),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(21)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(17),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(22)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(18),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(23)
    );
\asout_array_reg[4][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(19),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(24)
    );
\asout_array_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(20),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(25)
    );
\asout_array_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(21),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(26)
    );
\asout_array_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(22),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(27)
    );
\asout_array_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(23),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(28)
    );
\asout_array_reg[5][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(24),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(29)
    );
\asout_array_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(25),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(30)
    );
\asout_array_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(26),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(31)
    );
\asout_array_reg[6][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(27),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(32)
    );
\asout_array_reg[6][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(28),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(33)
    );
\asout_array_reg[6][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(29),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(34)
    );
\asout_array_reg[7][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(30),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(35)
    );
\asout_array_reg[7][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(31),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(36)
    );
\asout_array_reg[7][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(32),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(37)
    );
\asout_array_reg[7][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(33),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(38)
    );
\asout_array_reg[7][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_7(34),
      G => \asout_array[7]_2\,
      GE => '1',
      Q => \^a_in_8\(39)
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
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__4_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1
     port map (
      D(1) => dut_n_12,
      D(0) => dut_n_13,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_11,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[7]_2\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => \^count_reg_reg[4]_2\(4 downto 0),
      a_in_7(13 downto 9) => a_in_7(19 downto 15),
      a_in_7(8 downto 5) => a_in_7(13 downto 10),
      a_in_7(4 downto 0) => a_in_7(4 downto 0),
      clk => clk,
      \count[4]_i_5__1_0\ => \count[4]_i_5__1\,
      \count[4]_i_9__0_0\ => \count[4]_i_9__0\,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]_1\(0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_1\,
      \count_reg_reg[2]_1\ => \count_reg_reg[2]_2\,
      \count_reg_reg[3]_0\ => dut_n_14,
      \count_reg_reg[4]_0\ => dut_n_0,
      \count_reg_reg[4]_1\ => dut_n_6,
      \count_reg_reg[4]_2\ => \count_reg_reg[4]_3\,
      \count_reg_reg[4]_3\ => dut_n_9,
      \done_aux_i_2__1\(0) => \^j_reg[0]_1\(0),
      \done_aux_i_3__0_0\ => \done_aux_i_3__0\,
      \done_aux_reg_i_12__0_0\ => \done_aux_reg_i_12__0\,
      \done_aux_reg_i_9__0\ => \done_aux_reg_i_9__0\,
      \done_aux_reg_i_9__0_0\ => \done_aux_reg_i_9__0_0\
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_14,
      D(0) => logic_n_15,
      E(0) => logic_n_17,
      \FSM_onehot_state_reg[1]\ => dut_n_14,
      \FSM_onehot_state_reg[2]\ => logic_n_16,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      Q(4 downto 0) => Q(4 downto 0),
      a_in_8(34 downto 15) => \^a_in_8\(39 downto 20),
      a_in_8(14 downto 3) => \^a_in_8\(16 downto 5),
      a_in_8(2 downto 0) => \^a_in_8\(2 downto 0),
      clk => clk,
      \count[4]_i_10__0_0\ => \count[4]_i_10__0\,
      \count_reg[0]_0\(1 downto 0) => \count_reg[0]\(1 downto 0),
      \count_reg[0]_1\ => dut_n_6,
      \count_reg[0]_2\ => \count_reg[0]_0\,
      \count_reg[0]_3\ => \count_reg[0]_1\,
      \count_reg[0]_4\ => dut_n_9,
      \count_reg[0]_5\ => \count_reg[0]_2\,
      \count_reg[0]_6\ => \count_reg[0]_3\,
      \count_reg[0]_7\ => \count_reg[0]_4\,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\ => \count_reg_reg[0]_0\,
      \count_reg_reg[0]_1\(4) => nexts_out,
      \count_reg_reg[0]_1\(3) => \asout_array[7]_2\,
      \count_reg_reg[0]_1\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_1\(1) => \ce__0\,
      \count_reg_reg[0]_1\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[1]_0\ => \count_reg_reg[1]_0\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      \count_reg_reg[4]_0\ => \count_reg_reg[4]_0\,
      \count_reg_reg[4]_1\ => \count_reg_reg[4]_1\,
      \done_aux_i_2__1_0\ => \done_aux_i_2__1\,
      \done_aux_i_2__1_1\ => dut_n_11,
      done_aux_reg_0 => dut_n_0,
      done_aux_reg_1 => done_aux_reg,
      done_aux_reg_2 => done_aux_reg_0,
      done_aux_reg_i_10_0 => done_aux_reg_i_10,
      done_aux_reg_i_4 => done_aux_reg_i_4,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      \j_reg[0]_2\(0) => \^j_reg[0]_1\(0),
      next_out_8 => next_out_8
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
      I1 => \asout_array[7]_2\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[7]_2\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_6 : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    a_in_7 : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_3\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[4]_4\ : out STD_LOGIC;
    \count_reg_reg[4]_5\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \done_aux_i_2__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \done_aux_reg_i_4__0\ : in STD_LOGIC;
    \done_aux_reg_i_9__0\ : in STD_LOGIC;
    \count[4]_i_11__1\ : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \done_aux_i_2__2\ : in STD_LOGIC;
    a_in_6 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \done_aux_reg_i_7__1\ : in STD_LOGIC;
    \done_aux_reg_i_7__1_0\ : in STD_LOGIC;
    \done_aux_i_2__2_0\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \done_aux_reg_i_6__1\ : in STD_LOGIC;
    \count[4]_i_9__1\ : in STD_LOGIC;
    \done_aux_reg_i_9__1\ : in STD_LOGIC;
    \count[4]_i_5__2\ : in STD_LOGIC;
    next_out_7 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_7\ : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[6]_3\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__5_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[4]_5\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
  signal logic_n_18 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__5\ : label is "soft_lutpair93";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[6][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__5\ : label is "soft_lutpair93";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__2\ : label is "soft_lutpair94";
begin
  AR(0) <= \^ar\(0);
  a_in_7(34 downto 0) <= \^a_in_7\(34 downto 0);
  \count_reg_reg[4]_5\(4 downto 0) <= \^count_reg_reg[4]_5\(4 downto 0);
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
      CE => logic_n_18,
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
      CE => logic_n_18,
      D => logic_n_16,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_18,
      D => dut_n_9,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_18,
      D => logic_n_15,
      Q => \asout_array[6]_3\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_18,
      D => dut_n_8,
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
      G => logic_n_17,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__5\: unisim.vcomponents.LUT3
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
      D => \^count_reg_reg[4]_5\(0),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_5\(1),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_5\(2),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_5\(3),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_5\(4),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(0),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(1),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(2),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(3),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(4),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(9)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(5),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(10)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(6),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(11)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(7),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(12)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(8),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(13)
    );
\asout_array_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(9),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(14)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(10),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(15)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(11),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(16)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(12),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(17)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(13),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(18)
    );
\asout_array_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(14),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(19)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(15),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(20)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(16),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(21)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(17),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(22)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(18),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(23)
    );
\asout_array_reg[4][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(19),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(24)
    );
\asout_array_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(20),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(25)
    );
\asout_array_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(21),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(26)
    );
\asout_array_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(22),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(27)
    );
\asout_array_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(23),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(28)
    );
\asout_array_reg[5][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(24),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(29)
    );
\asout_array_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(25),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(30)
    );
\asout_array_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(26),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(31)
    );
\asout_array_reg[6][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(27),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(32)
    );
\asout_array_reg[6][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(28),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(33)
    );
\asout_array_reg[6][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_6(29),
      G => \asout_array[6]_3\,
      GE => '1',
      Q => \^a_in_7\(34)
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
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__5_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2
     port map (
      D(1) => dut_n_8,
      D(0) => dut_n_9,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_7,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[6]_3\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => \^count_reg_reg[4]_5\(4 downto 0),
      a_in_6(13 downto 9) => a_in_6(19 downto 15),
      a_in_6(8 downto 5) => a_in_6(13 downto 10),
      a_in_6(4 downto 0) => a_in_6(4 downto 0),
      clk => clk,
      \count[4]_i_5__2_0\ => \count[4]_i_5__2\,
      \count[4]_i_9__1_0\ => \count[4]_i_9__1\,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]_1\(0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_1\,
      \count_reg_reg[2]_1\ => \count_reg_reg[2]_2\,
      \count_reg_reg[3]_0\ => dut_n_11,
      \count_reg_reg[4]_0\ => \count_reg_reg[4]_4\,
      \count_reg_reg[4]_1\ => dut_n_10,
      \count_reg_reg[4]_2\ => dut_n_13,
      \count_reg_reg[4]_3\ => dut_n_14,
      \done_aux_reg_i_6__1_0\ => \done_aux_reg_i_6__1\,
      \done_aux_reg_i_7__1\ => \done_aux_reg_i_7__1\,
      \done_aux_reg_i_7__1_0\ => \done_aux_reg_i_7__1_0\,
      \done_aux_reg_i_9__1_0\ => \done_aux_reg_i_9__1\
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_15,
      D(0) => logic_n_16,
      E(0) => logic_n_18,
      \FSM_onehot_state_reg[1]\ => dut_n_11,
      \FSM_onehot_state_reg[2]\ => logic_n_17,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      Q(4 downto 0) => Q(4 downto 0),
      a_in_7(29 downto 15) => \^a_in_7\(34 downto 20),
      a_in_7(14 downto 3) => \^a_in_7\(16 downto 5),
      a_in_7(2 downto 0) => \^a_in_7\(2 downto 0),
      clk => clk,
      \count[4]_i_11__1_0\ => \count[4]_i_11__1\,
      \count_reg[0]_0\ => dut_n_14,
      \count_reg[0]_1\ => \count_reg[0]\,
      \count_reg[0]_2\ => \count_reg[0]_0\,
      \count_reg[0]_3\ => \count_reg[0]_1\,
      \count_reg[0]_4\ => dut_n_10,
      \count_reg[0]_5\ => \count_reg[0]_2\,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\ => \count_reg_reg[0]_0\,
      \count_reg_reg[0]_1\(4) => nexts_out,
      \count_reg_reg[0]_1\(3) => \asout_array[6]_3\,
      \count_reg_reg[0]_1\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_1\(1) => \ce__0\,
      \count_reg_reg[0]_1\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[1]_0\ => \count_reg_reg[1]_0\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      \count_reg_reg[4]_0\ => \count_reg_reg[4]_0\,
      \count_reg_reg[4]_1\ => \count_reg_reg[4]_1\,
      \count_reg_reg[4]_2\ => \count_reg_reg[4]_2\,
      \count_reg_reg[4]_3\ => \count_reg_reg[4]_3\,
      \done_aux_i_2__1\(0) => \done_aux_i_2__1\(0),
      \done_aux_i_2__2_0\ => dut_n_7,
      \done_aux_i_2__2_1\ => \done_aux_i_2__2\,
      \done_aux_i_2__2_2\ => \done_aux_i_2__2_0\,
      \done_aux_i_2__2_3\ => dut_n_13,
      done_aux_reg_0 => done_aux_reg,
      \done_aux_reg_i_4__0_0\ => \done_aux_reg_i_4__0\,
      \done_aux_reg_i_9__0_0\ => \done_aux_reg_i_9__0\,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      \j_reg[0]_2\(0) => \j_reg[0]_1\(0),
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
      I1 => \asout_array[6]_3\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[6]_3\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_5 : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    a_in_6 : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[4]_3\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[4]_4\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[4]_5\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \done_aux_reg_i_3__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \done_aux_reg_i_7__1\ : in STD_LOGIC;
    \count[4]_i_10__2\ : in STD_LOGIC;
    \done_aux_i_2__2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \done_aux_i_4__0\ : in STD_LOGIC;
    \count[4]_i_4__3\ : in STD_LOGIC;
    \done_aux_reg_i_7__2\ : in STD_LOGIC;
    \done_aux_reg_i_7__2_0\ : in STD_LOGIC;
    \count[4]_i_6__3\ : in STD_LOGIC;
    \done_aux_reg_i_6__2\ : in STD_LOGIC;
    next_out_6 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_6\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[5]_4\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__7_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[4]_3\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal \^j_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
  signal logic_n_18 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__7\ : label is "soft_lutpair75";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[5][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__7\ : label is "soft_lutpair75";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__3\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__3\ : label is "soft_lutpair76";
begin
  AR(0) <= \^ar\(0);
  a_in_6(29 downto 0) <= \^a_in_6\(29 downto 0);
  \count_reg_reg[4]_3\(4 downto 0) <= \^count_reg_reg[4]_3\(4 downto 0);
  \j_reg[1]\(1 downto 0) <= \^j_reg[1]\(1 downto 0);
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
      CE => logic_n_18,
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
      CE => logic_n_18,
      D => logic_n_14,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_18,
      D => dut_n_13,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_18,
      D => logic_n_13,
      Q => \asout_array[5]_4\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_18,
      D => dut_n_12,
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
      G => logic_n_17,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__7\: unisim.vcomponents.LUT3
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
      D => \^count_reg_reg[4]_3\(0),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_3\(1),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_3\(2),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_3\(3),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^count_reg_reg[4]_3\(4),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(0),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(1),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(2),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(3),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(4),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(9)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(5),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(10)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(6),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(11)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(7),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(12)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(8),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(13)
    );
\asout_array_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(9),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(14)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(10),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(15)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(11),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(16)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(12),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(17)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(13),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(18)
    );
\asout_array_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(14),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(19)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(15),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(20)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(16),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(21)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(17),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(22)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(18),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(23)
    );
\asout_array_reg[4][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(19),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(24)
    );
\asout_array_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(20),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(25)
    );
\asout_array_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(21),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(26)
    );
\asout_array_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(22),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(27)
    );
\asout_array_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(23),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(28)
    );
\asout_array_reg[5][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_5(24),
      G => \asout_array[5]_4\,
      GE => '1',
      Q => \^a_in_6\(29)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__7_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__7_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3
     port map (
      D(1) => dut_n_12,
      D(0) => dut_n_13,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_2\,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[5]_4\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(1 downto 0) => \^j_reg[1]\(1 downto 0),
      a_in_5(13 downto 9) => a_in_5(19 downto 15),
      a_in_5(8 downto 5) => a_in_5(13 downto 10),
      a_in_5(4 downto 0) => a_in_5(4 downto 0),
      clk => clk,
      \count[4]_i_4__3_0\ => \count[4]_i_4__3\,
      \count[4]_i_6__3_0\ => \count[4]_i_6__3\,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]_1\(0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_1\,
      \count_reg_reg[2]_1\ => \count_reg_reg[2]_2\,
      \count_reg_reg[3]_0\ => dut_n_14,
      \count_reg_reg[4]_0\(4 downto 0) => \^count_reg_reg[4]_3\(4 downto 0),
      \count_reg_reg[4]_1\ => \count_reg_reg[4]_4\,
      \count_reg_reg[4]_2\ => \count_reg_reg[4]_5\,
      \done_aux_i_4__0_0\ => \done_aux_i_4__0\,
      \done_aux_reg_i_6__2_0\ => \done_aux_reg_i_6__2\,
      \done_aux_reg_i_7__2\ => \done_aux_reg_i_7__2\,
      \done_aux_reg_i_7__2_0\ => \done_aux_reg_i_7__2_0\,
      \j_reg[0]\ => dut_n_0,
      \j_reg[1]\ => dut_n_6
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_13,
      D(0) => logic_n_14,
      E(0) => logic_n_18,
      \FSM_onehot_state_reg[1]\ => dut_n_14,
      \FSM_onehot_state_reg[2]\ => logic_n_17,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      Q(4 downto 0) => Q(4 downto 0),
      a_in_6(24 downto 15) => \^a_in_6\(29 downto 20),
      a_in_6(14 downto 3) => \^a_in_6\(16 downto 5),
      a_in_6(2 downto 0) => \^a_in_6\(2 downto 0),
      clk => clk,
      \count[4]_i_10__2_0\ => \count[4]_i_10__2\,
      \count_reg[0]_0\ => \count_reg[0]\,
      \count_reg[0]_1\ => dut_n_6,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\ => \count_reg_reg[0]_0\,
      \count_reg_reg[0]_1\(4) => nexts_out,
      \count_reg_reg[0]_1\(3) => \asout_array[5]_4\,
      \count_reg_reg[0]_1\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_1\(1) => \ce__0\,
      \count_reg_reg[0]_1\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[1]_0\ => \count_reg_reg[1]_0\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      \count_reg_reg[4]_0\ => \count_reg_reg[4]_0\,
      \count_reg_reg[4]_1\ => \count_reg_reg[4]_1\,
      \count_reg_reg[4]_2\ => \count_reg_reg[4]_2\,
      \done_aux_i_2__2\(0) => \done_aux_i_2__2\(0),
      done_aux_reg_0 => done_aux_reg,
      done_aux_reg_1 => dut_n_0,
      \done_aux_reg_i_3__0\ => \done_aux_reg_i_3__0\,
      \done_aux_reg_i_7__1_0\ => \done_aux_reg_i_7__1\,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[1]_0\(1 downto 0) => \^j_reg[1]\(1 downto 0),
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
      I1 => \asout_array[5]_4\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[5]_4\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_4 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    a_in_5 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \done_aux_reg_i_7__2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_i_2 : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \done_aux_i_3__1\ : in STD_LOGIC;
    \done_aux_reg_i_7__2_0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count[4]_i_7__2\ : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    a_in_4 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \done_aux_i_3__2\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \count[4]_i_4__4\ : in STD_LOGIC;
    \count[4]_i_7__3\ : in STD_LOGIC;
    \count[4]_i_5__4\ : in STD_LOGIC;
    \done_aux_i_6__0\ : in STD_LOGIC;
    \done_aux_i_4__1\ : in STD_LOGIC;
    next_out_5 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^a_in_5\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \acks_out_reg_i_1__6_n_0\ : STD_LOGIC;
  signal \asout_array[4]_5\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__6_n_0\ : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal j_reg_0_sn_1 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__6\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[4][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__6\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__4\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__4\ : label is "soft_lutpair58";
begin
  AR(0) <= \^ar\(0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  a_in_5(24 downto 0) <= \^a_in_5\(24 downto 0);
  \j_reg[0]\ <= j_reg_0_sn_1;
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
      CE => logic_n_13,
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
      CE => logic_n_13,
      D => logic_n_11,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_13,
      D => dut_n_12,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_13,
      D => logic_n_10,
      Q => \asout_array[4]_5\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_13,
      D => dut_n_11,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \acks_out_reg_i_1__6_n_0\,
      G => logic_n_12,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      O => \acks_out_reg_i_1__6_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(0),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(1),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(2),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(3),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(4),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(0),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(1),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(2),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(3),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(4),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(9)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(5),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(10)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(6),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(11)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(7),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(12)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(8),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(13)
    );
\asout_array_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(9),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(14)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(10),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(15)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(11),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(16)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(12),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(17)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(13),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(18)
    );
\asout_array_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(14),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(19)
    );
\asout_array_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(15),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(20)
    );
\asout_array_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(16),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(21)
    );
\asout_array_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(17),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(22)
    );
\asout_array_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(18),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(23)
    );
\asout_array_reg[4][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_4(19),
      G => \asout_array[4]_5\,
      GE => '1',
      Q => \^a_in_5\(24)
    );
ce_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \ce_reg_i_1__6_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__6_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4
     port map (
      D(1) => dut_n_11,
      D(0) => dut_n_12,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[4]_5\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => \^q\(4 downto 0),
      a_in_4(13 downto 9) => a_in_4(19 downto 15),
      a_in_4(8 downto 5) => a_in_4(13 downto 10),
      a_in_4(4 downto 0) => a_in_4(4 downto 0),
      clk => clk,
      \count[4]_i_4__4_0\ => \count[4]_i_4__4\,
      \count[4]_i_5__4\ => \count[4]_i_5__4\,
      \count[4]_i_7__3_0\ => \count[4]_i_7__3\,
      \count_reg[0]\ => \count_reg[0]_1\,
      \count_reg[0]_0\ => \count_reg[0]_2\,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]_1\(0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_1\,
      \count_reg_reg[2]_1\ => \count_reg_reg[2]_2\,
      \count_reg_reg[3]_0\ => \count_reg_reg[3]\,
      \count_reg_reg[3]_1\ => \count_reg_reg[3]_0\,
      \count_reg_reg[3]_2\ => dut_n_13,
      \done_aux_i_3__2_0\ => \done_aux_i_3__2\,
      \done_aux_i_4__1\ => \done_aux_i_4__1\,
      \done_aux_i_6__0_0\ => \done_aux_i_6__0\,
      done_aux_reg => done_aux_reg,
      done_aux_reg_0(1 downto 0) => j_reg(1 downto 0),
      done_aux_reg_1 => done_aux_reg_0,
      \j_reg[0]\ => dut_n_5,
      \j_reg[0]_0\ => dut_n_6
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_10,
      D(0) => logic_n_11,
      E(0) => logic_n_13,
      \FSM_onehot_state_reg[1]\ => dut_n_13,
      \FSM_onehot_state_reg[2]\ => logic_n_12,
      Q(1 downto 0) => j_reg(1 downto 0),
      a_in_5(19 downto 15) => \^a_in_5\(24 downto 20),
      a_in_5(14 downto 3) => \^a_in_5\(16 downto 5),
      a_in_5(2 downto 0) => \^a_in_5\(2 downto 0),
      clk => clk,
      \count[4]_i_7__2_0\ => \count[4]_i_7__2\,
      \count_reg[0]_0\(1 downto 0) => \count_reg[0]\(1 downto 0),
      \count_reg[0]_1\ => \count_reg[0]_0\,
      \count_reg[0]_2\ => dut_n_6,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\ => \count_reg_reg[0]_0\,
      \count_reg_reg[0]_1\(4) => nexts_out,
      \count_reg_reg[0]_1\(3) => \asout_array[4]_5\,
      \count_reg_reg[0]_1\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_1\(1) => \ce__0\,
      \count_reg_reg[0]_1\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[1]_0\ => \count_reg_reg[1]_0\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      \done_aux_i_3__1_0\ => \done_aux_i_3__1\,
      done_aux_reg_0 => dut_n_5,
      done_aux_reg_i_2 => done_aux_reg_i_2,
      \done_aux_reg_i_7__2_0\(4 downto 0) => \done_aux_reg_i_7__2\(4 downto 0),
      \done_aux_reg_i_7__2_1\ => \done_aux_reg_i_7__2_0\,
      \j_reg[0]_0\ => j_reg_0_sn_1,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      next_out_5 => next_out_5
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => \acks_out_reg_i_1__6_n_0\,
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
      I1 => \asout_array[4]_5\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[4]_5\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_3 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    a_in_4 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_2\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \done_aux_i_2__3\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \done_aux_i_2__3_0\ : in STD_LOGIC;
    \done_aux_i_4__1\ : in STD_LOGIC;
    \count[4]_i_3__4\ : in STD_LOGIC;
    \count[4]_i_5__4\ : in STD_LOGIC;
    a_in_3 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \done_aux_i_5__1\ : in STD_LOGIC;
    \count[4]_i_6__5\ : in STD_LOGIC;
    \done_aux_i_3__3\ : in STD_LOGIC;
    \count[4]_i_4__5\ : in STD_LOGIC;
    next_out_4 : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^a_in_4\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \acks_out_reg_i_1__3_n_0\ : STD_LOGIC;
  signal \asout_array[3]_6\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__3_n_0\ : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__5_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__3\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[3][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__3\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__5\ : label is "soft_lutpair41";
begin
  AR(0) <= \^ar\(0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  a_in_4(19 downto 0) <= \^a_in_4\(19 downto 0);
\FSM_onehot_state[4]_i_1__4\: unisim.vcomponents.LUT2
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
      CE => logic_n_13,
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
      CE => logic_n_13,
      D => logic_n_15,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_13,
      D => dut_n_6,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_13,
      D => logic_n_14,
      Q => \asout_array[3]_6\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_13,
      D => dut_n_5,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \acks_out_reg_i_1__3_n_0\,
      G => logic_n_12,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      O => \acks_out_reg_i_1__3_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(0),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(1),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(2),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(3),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(4),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(0),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(1),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(2),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(3),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(4),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(9)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(5),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(10)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(6),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(11)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(7),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(12)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(8),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(13)
    );
\asout_array_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(9),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(14)
    );
\asout_array_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(10),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(15)
    );
\asout_array_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(11),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(16)
    );
\asout_array_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(12),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(17)
    );
\asout_array_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(13),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(18)
    );
\asout_array_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_3(14),
      G => \asout_array[3]_6\,
      GE => '1',
      Q => \^a_in_4\(19)
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
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__3_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5
     port map (
      D(1) => dut_n_5,
      D(0) => dut_n_6,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[3]_6\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => \^q\(4 downto 0),
      a_in_3(9 downto 5) => a_in_3(14 downto 10),
      a_in_3(4 downto 0) => a_in_3(4 downto 0),
      clk => clk,
      \count[4]_i_4__5_0\ => \count[4]_i_4__5\,
      \count[4]_i_6__5_0\ => \count[4]_i_6__5\,
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]_1\(0),
      \count_reg_reg[3]_0\ => dut_n_7,
      \done_aux_i_3__3_0\ => \done_aux_i_3__3\,
      \done_aux_i_5__1_0\ => \done_aux_i_5__1\,
      done_aux_reg(1 downto 0) => j_reg(1 downto 0),
      done_aux_reg_0 => done_aux_reg,
      \j_reg[0]\ => dut_n_8,
      \j_reg[0]_0\ => dut_n_9
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_14,
      D(0) => logic_n_15,
      E(0) => logic_n_13,
      \FSM_onehot_state_reg[1]\ => dut_n_7,
      \FSM_onehot_state_reg[2]\ => logic_n_12,
      Q(1 downto 0) => j_reg(1 downto 0),
      a_in_4(14 downto 3) => \^a_in_4\(16 downto 5),
      a_in_4(2 downto 0) => \^a_in_4\(2 downto 0),
      clk => clk,
      \count[4]_i_3__4\ => \count[4]_i_3__4\,
      \count[4]_i_5__4_0\ => \count[4]_i_5__4\,
      \count_reg[0]_0\ => dut_n_9,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\ => \count_reg_reg[0]_0\,
      \count_reg_reg[0]_1\(4) => nexts_out,
      \count_reg_reg[0]_1\(3) => \asout_array[3]_6\,
      \count_reg_reg[0]_1\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_1\(1) => \ce__0\,
      \count_reg_reg[0]_1\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[1]_0\ => \count_reg_reg[1]_0\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      \count_reg_reg[4]_0\ => \count_reg_reg[4]_0\,
      \count_reg_reg[4]_1\ => \count_reg_reg[4]_1\,
      \count_reg_reg[4]_2\ => \count_reg_reg[4]_2\,
      \done_aux_i_2__3\(4 downto 0) => \done_aux_i_2__3\(4 downto 0),
      \done_aux_i_2__3_0\ => \done_aux_i_2__3_0\,
      \done_aux_i_4__1_0\ => \done_aux_i_4__1\,
      done_aux_reg_0 => dut_n_8,
      next_out_4 => next_out_4
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => \acks_out_reg_i_1__3_n_0\,
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
      I1 => \asout_array[3]_6\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[3]_6\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    a_in_3 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \done_aux_i_2__6\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    a_in_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \done_aux_i_2__4\ : in STD_LOGIC;
    \count[4]_i_3__5\ : in STD_LOGIC;
    \done_aux_i_3__4\ : in STD_LOGIC;
    \count[4]_i_6__6\ : in STD_LOGIC;
    next_out_3 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^a_in_3\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \acks_out_reg_i_1__1_n_0\ : STD_LOGIC;
  signal \asout_array[2]_7\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__1_n_0\ : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__6_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 3 );
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[2][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \ce_reg_i_1__1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__6\ : label is "soft_lutpair25";
begin
  AR(0) <= \^ar\(0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  a_in_3(14 downto 0) <= \^a_in_3\(14 downto 0);
\FSM_onehot_state[4]_i_1__5\: unisim.vcomponents.LUT2
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
      D => logic_n_10,
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
      D => dut_n_9,
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
      D => logic_n_9,
      Q => \asout_array[2]_7\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_8,
      D => dut_n_8,
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
      G => logic_n_7,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      O => \acks_out_reg_i_1__1_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(0),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(1),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(2),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(3),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(4),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(0),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(1),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(2),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(3),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(4),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(9)
    );
\asout_array_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(5),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(10)
    );
\asout_array_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(6),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(11)
    );
\asout_array_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(7),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(12)
    );
\asout_array_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(8),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(13)
    );
\asout_array_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => a_in_2(9),
      G => \asout_array[2]_7\,
      GE => '1',
      Q => \^a_in_3\(14)
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
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ce_reg_i_1__1_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6
     port map (
      D(1) => dut_n_8,
      D(0) => dut_n_9,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[2]_7\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 3) => u_i(4 downto 3),
      Q(2 downto 0) => \^q\(2 downto 0),
      a_in_2(9 downto 0) => a_in_2(9 downto 0),
      clk => clk,
      \count[4]_i_3__5_0\ => \count[4]_i_3__5\,
      \count[4]_i_6__6_0\ => \count[4]_i_6__6\,
      \count_reg[0]\(0) => j_reg(0),
      \count_reg_reg[0]_0\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[3]_0\ => dut_n_10,
      \count_reg_reg[4]_0\ => dut_n_5,
      \count_reg_reg[4]_1\ => dut_n_6,
      \count_reg_reg[4]_2\ => dut_n_7,
      \done_aux_i_2__4_0\ => \done_aux_i_2__4\,
      \done_aux_i_3__4_0\ => \done_aux_i_3__4\
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_9,
      D(0) => logic_n_10,
      E(0) => logic_n_8,
      \FSM_onehot_state_reg[1]\ => dut_n_10,
      \FSM_onehot_state_reg[2]\ => logic_n_7,
      Q(0) => j_reg(0),
      a_in_3(10 downto 3) => \^a_in_3\(12 downto 5),
      a_in_3(2 downto 0) => \^a_in_3\(2 downto 0),
      clk => clk,
      \count_reg[0]_0\ => dut_n_6,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[2]_7\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      \count_reg_reg[2]_1\ => \count_reg_reg[2]_1\,
      \count_reg_reg[2]_2\ => \count_reg_reg[2]_2\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      \count_reg_reg[4]_0\ => \count_reg_reg[4]_0\,
      \done_aux_i_2__6\(4 downto 0) => \done_aux_i_2__6\(4 downto 0),
      done_aux_reg_0 => dut_n_5,
      done_aux_reg_1 => dut_n_7,
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
      G => \reset_control_reg_i_2__6_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[2]_7\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[2]_7\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[2]\ : out STD_LOGIC;
    a_in_2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_s7_out : out STD_LOGIC;
    \ack_in_1__0\ : out STD_LOGIC;
    nRst_0 : out STD_LOGIC;
    ack_in_14_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \done_aux_i_5__2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    next_out_2 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    ack_in_1 : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state[4]_i_1__7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal acks_out_reg_i_1_n_0 : STD_LOGIC;
  signal \asout_array[1]_8\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal ce_reg_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC;
  signal done : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal next_out_1 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__7_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack_in_1_reg_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ack_in_1_reg_i_2 : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of acks_out_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of acks_out_reg_i_1 : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[0][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \asout_array_reg[1][4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of ce_reg_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of done_s_reg_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of done_s_reg_i_2 : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__7\ : label is "soft_lutpair9";
begin
  AR(0) <= \^ar\(0);
  a_in_2(9 downto 0) <= \^a_in_2\(9 downto 0);
\FSM_onehot_state[4]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state[4]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ack_in_1,
      I1 => nRst,
      O => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => logic_n_9,
      Q => \ce__0\,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => dut_n_8,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => logic_n_8,
      Q => \asout_array[1]_8\,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => dut_n_7,
      Q => nexts_out,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
ack_in_1_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => next_out_1,
      I1 => ack_in_1,
      O => \ack_in_1__0\
    );
ack_in_1_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \count_reg_reg[0]\,
      I1 => \count_reg_reg[0]_0\,
      I2 => ack_in_1,
      I3 => next_out_1,
      O => ack_in_14_out
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acks_out_reg_i_1_n_0,
      G => logic_n_6,
      GE => '1',
      Q => \^ar\(0)
    );
acks_out_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      O => acks_out_reg_i_1_n_0
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
      G => \asout_array[1]_8\,
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
      G => \asout_array[1]_8\,
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
      G => \asout_array[1]_8\,
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
      G => \asout_array[1]_8\,
      GE => '1',
      Q => \^a_in_2\(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(4),
      G => \asout_array[1]_8\,
      GE => '1',
      Q => \^a_in_2\(4)
    );
\asout_array_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(0),
      G => \asout_array[1]_8\,
      GE => '1',
      Q => \^a_in_2\(5)
    );
\asout_array_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(1),
      G => \asout_array[1]_8\,
      GE => '1',
      Q => \^a_in_2\(6)
    );
\asout_array_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(2),
      G => \asout_array[1]_8\,
      GE => '1',
      Q => \^a_in_2\(7)
    );
\asout_array_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(3),
      G => \asout_array[1]_8\,
      GE => '1',
      Q => \^a_in_2\(8)
    );
\asout_array_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => Q(4),
      G => \asout_array[1]_8\,
      GE => '1',
      Q => \^a_in_2\(9)
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
done_s_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \count_reg_reg[0]\,
      I1 => nRst,
      I2 => next_out_1,
      O => done_s7_out
    );
done_s_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => nRst,
      I1 => \count_reg_reg[0]\,
      I2 => next_out_1,
      I3 => \count_reg_reg[0]_0\,
      O => nRst_0
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7
     port map (
      D(1) => dut_n_7,
      D(0) => dut_n_8,
      E(0) => count,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[1]_8\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => Q(4 downto 0),
      ack_in_1 => ack_in_1,
      clk => clk,
      \count_reg_reg[3]_0\ => dut_n_9,
      \count_reg_reg[4]_0\(4 downto 0) => u_i(4 downto 0),
      \count_reg_reg[4]_1\(0) => ce,
      done => done,
      j_reg(0) => j_reg(0),
      j_reg_0_sp_1 => dut_n_0
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_8,
      D(0) => logic_n_9,
      E(0) => logic_n_7,
      \FSM_onehot_state_reg[1]\ => dut_n_9,
      \FSM_onehot_state_reg[2]\ => logic_n_6,
      Q(4) => nexts_out,
      Q(3) => \asout_array[1]_8\,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \ce__0\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      a_in_2(5 downto 3) => \^a_in_2\(7 downto 5),
      a_in_2(2 downto 0) => \^a_in_2\(2 downto 0),
      clk => clk,
      \count_reg[4]_0\(0) => count,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[1]_0\ => \count_reg_reg[1]_0\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_0\ => \count_reg_reg[2]_0\,
      done => done,
      \done_aux_i_5__2\(2 downto 0) => \done_aux_i_5__2\(2 downto 0),
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
      G => acks_out_reg_i_1_n_0,
      GE => '1',
      Q => next_out_1
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \reset_control__0\,
      G => \reset_control_reg_i_2__7_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \asout_array[1]_8\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[1]_8\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \reset_control_reg_i_2__7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens is
  port (
    a : out STD_LOGIC_VECTOR ( 4 downto 0 );
    flag : out STD_LOGIC;
    done : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    nRst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens is
  signal \^a\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal a_in_1 : STD_LOGIC;
  signal \a_in_1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal a_in_2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal a_in_3 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal a_in_4 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal a_in_5 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal a_in_6 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal a_in_7 : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal a_in_8 : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal a_in_9 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal ack_in_1 : STD_LOGIC;
  signal ack_in_14_out : STD_LOGIC;
  signal \ack_in_1__0\ : STD_LOGIC;
  signal ack_in_2 : STD_LOGIC;
  signal ack_in_3 : STD_LOGIC;
  signal ack_in_4 : STD_LOGIC;
  signal ack_in_5 : STD_LOGIC;
  signal ack_in_6 : STD_LOGIC;
  signal ack_in_7 : STD_LOGIC;
  signal ack_in_8 : STD_LOGIC;
  signal ack_in_9 : STD_LOGIC;
  signal \^counter\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counter_s : STD_LOGIC;
  signal \counter_s_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter_s_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter_s_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter_s_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter_s_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter_s_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_s7_out : STD_LOGIC;
  signal \^flag\ : STD_LOGIC;
  signal flag_s_reg_i_1_n_0 : STD_LOGIC;
  signal fsm_1_n_1 : STD_LOGIC;
  signal fsm_1_n_12 : STD_LOGIC;
  signal fsm_1_n_13 : STD_LOGIC;
  signal fsm_1_n_14 : STD_LOGIC;
  signal fsm_1_n_15 : STD_LOGIC;
  signal fsm_1_n_18 : STD_LOGIC;
  signal fsm_2_n_21 : STD_LOGIC;
  signal fsm_2_n_22 : STD_LOGIC;
  signal fsm_2_n_23 : STD_LOGIC;
  signal fsm_2_n_24 : STD_LOGIC;
  signal fsm_2_n_25 : STD_LOGIC;
  signal fsm_2_n_26 : STD_LOGIC;
  signal fsm_2_n_5 : STD_LOGIC;
  signal fsm_3_n_28 : STD_LOGIC;
  signal fsm_3_n_29 : STD_LOGIC;
  signal fsm_3_n_30 : STD_LOGIC;
  signal fsm_3_n_31 : STD_LOGIC;
  signal fsm_3_n_32 : STD_LOGIC;
  signal fsm_3_n_33 : STD_LOGIC;
  signal fsm_3_n_34 : STD_LOGIC;
  signal fsm_3_n_35 : STD_LOGIC;
  signal fsm_3_n_36 : STD_LOGIC;
  signal fsm_3_n_37 : STD_LOGIC;
  signal fsm_3_n_7 : STD_LOGIC;
  signal fsm_4_n_33 : STD_LOGIC;
  signal fsm_4_n_34 : STD_LOGIC;
  signal fsm_4_n_35 : STD_LOGIC;
  signal fsm_4_n_36 : STD_LOGIC;
  signal fsm_4_n_37 : STD_LOGIC;
  signal fsm_4_n_38 : STD_LOGIC;
  signal fsm_4_n_39 : STD_LOGIC;
  signal fsm_4_n_40 : STD_LOGIC;
  signal fsm_4_n_41 : STD_LOGIC;
  signal fsm_4_n_42 : STD_LOGIC;
  signal fsm_4_n_43 : STD_LOGIC;
  signal fsm_4_n_44 : STD_LOGIC;
  signal fsm_4_n_7 : STD_LOGIC;
  signal fsm_5_n_2 : STD_LOGIC;
  signal fsm_5_n_33 : STD_LOGIC;
  signal fsm_5_n_34 : STD_LOGIC;
  signal fsm_5_n_35 : STD_LOGIC;
  signal fsm_5_n_36 : STD_LOGIC;
  signal fsm_5_n_37 : STD_LOGIC;
  signal fsm_5_n_38 : STD_LOGIC;
  signal fsm_5_n_39 : STD_LOGIC;
  signal fsm_5_n_40 : STD_LOGIC;
  signal fsm_5_n_41 : STD_LOGIC;
  signal fsm_5_n_42 : STD_LOGIC;
  signal fsm_5_n_43 : STD_LOGIC;
  signal fsm_5_n_44 : STD_LOGIC;
  signal fsm_5_n_52 : STD_LOGIC;
  signal fsm_5_n_53 : STD_LOGIC;
  signal fsm_5_n_54 : STD_LOGIC;
  signal fsm_5_n_55 : STD_LOGIC;
  signal fsm_5_n_56 : STD_LOGIC;
  signal fsm_5_n_57 : STD_LOGIC;
  signal fsm_6_n_2 : STD_LOGIC;
  signal fsm_6_n_38 : STD_LOGIC;
  signal fsm_6_n_39 : STD_LOGIC;
  signal fsm_6_n_40 : STD_LOGIC;
  signal fsm_6_n_41 : STD_LOGIC;
  signal fsm_6_n_42 : STD_LOGIC;
  signal fsm_6_n_43 : STD_LOGIC;
  signal fsm_6_n_44 : STD_LOGIC;
  signal fsm_6_n_45 : STD_LOGIC;
  signal fsm_6_n_46 : STD_LOGIC;
  signal fsm_6_n_47 : STD_LOGIC;
  signal fsm_6_n_48 : STD_LOGIC;
  signal fsm_6_n_49 : STD_LOGIC;
  signal fsm_6_n_50 : STD_LOGIC;
  signal fsm_6_n_52 : STD_LOGIC;
  signal fsm_6_n_58 : STD_LOGIC;
  signal fsm_6_n_59 : STD_LOGIC;
  signal fsm_6_n_60 : STD_LOGIC;
  signal fsm_7_n_2 : STD_LOGIC;
  signal fsm_7_n_43 : STD_LOGIC;
  signal fsm_7_n_44 : STD_LOGIC;
  signal fsm_7_n_45 : STD_LOGIC;
  signal fsm_7_n_46 : STD_LOGIC;
  signal fsm_7_n_47 : STD_LOGIC;
  signal fsm_7_n_48 : STD_LOGIC;
  signal fsm_7_n_49 : STD_LOGIC;
  signal fsm_7_n_50 : STD_LOGIC;
  signal fsm_7_n_51 : STD_LOGIC;
  signal fsm_7_n_52 : STD_LOGIC;
  signal fsm_7_n_53 : STD_LOGIC;
  signal fsm_7_n_54 : STD_LOGIC;
  signal fsm_7_n_61 : STD_LOGIC;
  signal fsm_7_n_62 : STD_LOGIC;
  signal fsm_7_n_63 : STD_LOGIC;
  signal fsm_7_n_64 : STD_LOGIC;
  signal fsm_8_n_21 : STD_LOGIC;
  signal fsm_8_n_22 : STD_LOGIC;
  signal fsm_8_n_23 : STD_LOGIC;
  signal fsm_8_n_24 : STD_LOGIC;
  signal fsm_8_n_25 : STD_LOGIC;
  signal fsm_8_n_26 : STD_LOGIC;
  signal fsm_8_n_27 : STD_LOGIC;
  signal fsm_8_n_9 : STD_LOGIC;
  signal fsm_9_n_10 : STD_LOGIC;
  signal fsm_9_n_11 : STD_LOGIC;
  signal fsm_9_n_12 : STD_LOGIC;
  signal fsm_9_n_13 : STD_LOGIC;
  signal fsm_9_n_14 : STD_LOGIC;
  signal fsm_9_n_16 : STD_LOGIC;
  signal fsm_9_n_17 : STD_LOGIC;
  signal fsm_9_n_18 : STD_LOGIC;
  signal fsm_9_n_19 : STD_LOGIC;
  signal fsm_9_n_20 : STD_LOGIC;
  signal fsm_9_n_21 : STD_LOGIC;
  signal fsm_9_n_22 : STD_LOGIC;
  signal fsm_9_n_23 : STD_LOGIC;
  signal fsm_9_n_24 : STD_LOGIC;
  signal fsm_9_n_25 : STD_LOGIC;
  signal fsm_9_n_26 : STD_LOGIC;
  signal fsm_9_n_27 : STD_LOGIC;
  signal fsm_9_n_28 : STD_LOGIC;
  signal fsm_9_n_29 : STD_LOGIC;
  signal fsm_9_n_30 : STD_LOGIC;
  signal fsm_9_n_31 : STD_LOGIC;
  signal fsm_9_n_32 : STD_LOGIC;
  signal fsm_9_n_33 : STD_LOGIC;
  signal fsm_9_n_34 : STD_LOGIC;
  signal fsm_9_n_35 : STD_LOGIC;
  signal fsm_9_n_36 : STD_LOGIC;
  signal fsm_9_n_37 : STD_LOGIC;
  signal fsm_9_n_38 : STD_LOGIC;
  signal fsm_9_n_39 : STD_LOGIC;
  signal fsm_9_n_40 : STD_LOGIC;
  signal fsm_9_n_41 : STD_LOGIC;
  signal fsm_9_n_42 : STD_LOGIC;
  signal fsm_9_n_43 : STD_LOGIC;
  signal fsm_9_n_44 : STD_LOGIC;
  signal fsm_9_n_45 : STD_LOGIC;
  signal fsm_9_n_46 : STD_LOGIC;
  signal fsm_9_n_47 : STD_LOGIC;
  signal fsm_9_n_9 : STD_LOGIC;
  signal \logic/j_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_reg_4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \logic/j_reg_6\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \logic/j_reg_7\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_reg_9\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_out_2 : STD_LOGIC;
  signal next_out_3 : STD_LOGIC;
  signal next_out_4 : STD_LOGIC;
  signal next_out_5 : STD_LOGIC;
  signal next_out_6 : STD_LOGIC;
  signal next_out_7 : STD_LOGIC;
  signal next_out_8 : STD_LOGIC;
  signal next_out_9 : STD_LOGIC;
  signal plusOp_9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_n_1\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal u_i_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal u_i_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal u_i_10 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal u_i_2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal u_i_3 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal u_i_5 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal u_i_8 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[0]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_in_1_reg[0]_i_1\ : label is "soft_lutpair158";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[1]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[1]_i_1\ : label is "soft_lutpair158";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[2]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[2]_i_1\ : label is "soft_lutpair157";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[3]_i_1\ : label is "soft_lutpair157";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[4]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[4]_i_1\ : label is "soft_lutpair156";
  attribute XILINX_LEGACY_PRIM of ack_in_1_reg : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP of ack_in_1_reg : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[0]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[10]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[10]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[11]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[11]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[12]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[12]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[13]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[13]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[14]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[14]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[15]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[15]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[16]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[16]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[17]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[17]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[18]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[18]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[19]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[19]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[1]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[20]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[20]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[21]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[21]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[22]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[22]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[23]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[23]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[24]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[24]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[25]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[25]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[26]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[26]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[27]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[27]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[28]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[28]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[29]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[29]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[2]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[30]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[30]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[31]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[31]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[3]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[4]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[5]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[5]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[6]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[6]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[7]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[7]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[8]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[8]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[9]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \counter_s_reg[9]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of done_s_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_s_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of flag_s_reg : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of flag_s_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM of flag_s_reg_i_1 : label is "soft_lutpair156";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__6\ : label is 35;
begin
  a(4 downto 0) <= \^a\(4 downto 0);
  counter(31 downto 0) <= \^counter\(31 downto 0);
  done <= \^done\;
  flag <= \^flag\;
\a_in_1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => \a_in_1_reg[0]_i_1_n_0\,
      G => a_in_1,
      GE => '1',
      Q => \^a\(0)
    );
\a_in_1_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^a\(0),
      O => \a_in_1_reg[0]_i_1_n_0\
    );
\a_in_1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => \a_in_1_reg[1]_i_1_n_0\,
      G => a_in_1,
      GE => '1',
      Q => \^a\(1)
    );
\a_in_1_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(1),
      I1 => \^a\(0),
      O => \a_in_1_reg[1]_i_1_n_0\
    );
\a_in_1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => \a_in_1_reg[2]_i_1_n_0\,
      G => a_in_1,
      GE => '1',
      Q => \^a\(2)
    );
\a_in_1_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^a\(2),
      I1 => \^a\(1),
      I2 => \^a\(0),
      O => \a_in_1_reg[2]_i_1_n_0\
    );
\a_in_1_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => \a_in_1_reg[3]_i_1_n_0\,
      G => a_in_1,
      GE => '1',
      Q => \^a\(3)
    );
\a_in_1_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^a\(3),
      I1 => \^a\(1),
      I2 => \^a\(0),
      I3 => \^a\(2),
      O => \a_in_1_reg[3]_i_1_n_0\
    );
\a_in_1_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => \a_in_1_reg[4]_i_1_n_0\,
      G => a_in_1,
      GE => '1',
      Q => \^a\(4)
    );
\a_in_1_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^a\(4),
      I1 => \^a\(2),
      I2 => \^a\(0),
      I3 => \^a\(1),
      I4 => \^a\(3),
      O => \a_in_1_reg[4]_i_1_n_0\
    );
\a_in_1_reg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^done\,
      I1 => ack_in_1,
      I2 => \^flag\,
      O => a_in_1
    );
ack_in_1_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => \ack_in_1__0\,
      G => ack_in_14_out,
      GE => '1',
      PRE => nRst,
      Q => ack_in_1
    );
\counter_s_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_47,
      G => counter_s,
      GE => '1',
      Q => \^counter\(0)
    );
\counter_s_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_37,
      G => counter_s,
      GE => '1',
      Q => \^counter\(10)
    );
\counter_s_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_36,
      G => counter_s,
      GE => '1',
      Q => \^counter\(11)
    );
\counter_s_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_35,
      G => counter_s,
      GE => '1',
      Q => \^counter\(12)
    );
\counter_s_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_34,
      G => counter_s,
      GE => '1',
      Q => \^counter\(13)
    );
\counter_s_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_33,
      G => counter_s,
      GE => '1',
      Q => \^counter\(14)
    );
\counter_s_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_32,
      G => counter_s,
      GE => '1',
      Q => \^counter\(15)
    );
\counter_s_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_31,
      G => counter_s,
      GE => '1',
      Q => \^counter\(16)
    );
\counter_s_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_30,
      G => counter_s,
      GE => '1',
      Q => \^counter\(17)
    );
\counter_s_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_29,
      G => counter_s,
      GE => '1',
      Q => \^counter\(18)
    );
\counter_s_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_28,
      G => counter_s,
      GE => '1',
      Q => \^counter\(19)
    );
\counter_s_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_46,
      G => counter_s,
      GE => '1',
      Q => \^counter\(1)
    );
\counter_s_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_27,
      G => counter_s,
      GE => '1',
      Q => \^counter\(20)
    );
\counter_s_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_26,
      G => counter_s,
      GE => '1',
      Q => \^counter\(21)
    );
\counter_s_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_25,
      G => counter_s,
      GE => '1',
      Q => \^counter\(22)
    );
\counter_s_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_24,
      G => counter_s,
      GE => '1',
      Q => \^counter\(23)
    );
\counter_s_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_23,
      G => counter_s,
      GE => '1',
      Q => \^counter\(24)
    );
\counter_s_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_22,
      G => counter_s,
      GE => '1',
      Q => \^counter\(25)
    );
\counter_s_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_21,
      G => counter_s,
      GE => '1',
      Q => \^counter\(26)
    );
\counter_s_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_20,
      G => counter_s,
      GE => '1',
      Q => \^counter\(27)
    );
\counter_s_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_19,
      G => counter_s,
      GE => '1',
      Q => \^counter\(28)
    );
\counter_s_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_18,
      G => counter_s,
      GE => '1',
      Q => \^counter\(29)
    );
\counter_s_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_45,
      G => counter_s,
      GE => '1',
      Q => \^counter\(2)
    );
\counter_s_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_17,
      G => counter_s,
      GE => '1',
      Q => \^counter\(30)
    );
\counter_s_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_16,
      G => counter_s,
      GE => '1',
      Q => \^counter\(31)
    );
\counter_s_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \counter_s_reg[31]_i_6_n_0\,
      I1 => \counter_s_reg[31]_i_7_n_0\,
      I2 => \counter_s_reg[31]_i_8_n_0\,
      I3 => \^done\,
      I4 => \^counter\(1),
      I5 => \^counter\(0),
      O => \counter_s_reg[31]_i_3_n_0\
    );
\counter_s_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(28),
      I1 => \^counter\(29),
      I2 => \^counter\(26),
      I3 => \^counter\(27),
      I4 => \^counter\(31),
      I5 => \^counter\(30),
      O => \counter_s_reg[31]_i_4_n_0\
    );
\counter_s_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(22),
      I1 => \^counter\(23),
      I2 => \^counter\(20),
      I3 => \^counter\(21),
      I4 => \^counter\(25),
      I5 => \^counter\(24),
      O => \counter_s_reg[31]_i_5_n_0\
    );
\counter_s_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(10),
      I1 => \^counter\(11),
      I2 => \^counter\(8),
      I3 => \^counter\(9),
      I4 => \^counter\(13),
      I5 => \^counter\(12),
      O => \counter_s_reg[31]_i_6_n_0\
    );
\counter_s_reg[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(16),
      I1 => \^counter\(17),
      I2 => \^counter\(14),
      I3 => \^counter\(15),
      I4 => \^counter\(19),
      I5 => \^counter\(18),
      O => \counter_s_reg[31]_i_7_n_0\
    );
\counter_s_reg[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(4),
      I1 => \^counter\(5),
      I2 => \^counter\(2),
      I3 => \^counter\(3),
      I4 => \^counter\(7),
      I5 => \^counter\(6),
      O => \counter_s_reg[31]_i_8_n_0\
    );
\counter_s_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_44,
      G => counter_s,
      GE => '1',
      Q => \^counter\(3)
    );
\counter_s_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_43,
      G => counter_s,
      GE => '1',
      Q => \^counter\(4)
    );
\counter_s_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_42,
      G => counter_s,
      GE => '1',
      Q => \^counter\(5)
    );
\counter_s_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_41,
      G => counter_s,
      GE => '1',
      Q => \^counter\(6)
    );
\counter_s_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_40,
      G => counter_s,
      GE => '1',
      Q => \^counter\(7)
    );
\counter_s_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_39,
      G => counter_s,
      GE => '1',
      Q => \^counter\(8)
    );
\counter_s_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => fsm_9_n_38,
      G => counter_s,
      GE => '1',
      Q => \^counter\(9)
    );
done_s_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => done_s7_out,
      G => fsm_1_n_18,
      GE => '1',
      Q => \^done\
    );
flag_s_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => nRst,
      D => '1',
      G => flag_s_reg_i_1_n_0,
      GE => '1',
      Q => \^flag\
    );
flag_s_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^a\(3),
      I1 => \^a\(1),
      I2 => \^a\(0),
      I3 => \^a\(2),
      I4 => \^a\(4),
      O => flag_s_reg_i_1_n_0
    );
fsm_1: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\
     port map (
      AR(0) => ack_in_2,
      Q(4 downto 0) => \^a\(4 downto 0),
      SR(0) => fsm_1_n_15,
      a_in_2(9 downto 0) => a_in_2(9 downto 0),
      ack_in_1 => ack_in_1,
      ack_in_14_out => ack_in_14_out,
      \ack_in_1__0\ => \ack_in_1__0\,
      clk => clk,
      \count_reg_reg[0]\ => \^done\,
      \count_reg_reg[0]_0\ => \^flag\,
      \count_reg_reg[1]\ => fsm_1_n_13,
      \count_reg_reg[1]_0\ => fsm_1_n_14,
      \count_reg_reg[2]\ => fsm_1_n_1,
      \count_reg_reg[2]_0\ => fsm_1_n_12,
      \done_aux_i_5__2\(2 downto 0) => u_i(2 downto 0),
      done_s7_out => done_s7_out,
      nRst => nRst,
      nRst_0 => fsm_1_n_18,
      next_out_2 => next_out_2
    );
fsm_2: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6\
     port map (
      AR(0) => ack_in_3,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_1_n_15,
      Q(2 downto 0) => u_i(2 downto 0),
      SR(0) => fsm_2_n_26,
      a_in_2(9 downto 0) => a_in_2(9 downto 0),
      a_in_3(14 downto 0) => a_in_3(14 downto 0),
      clk => clk,
      \count[4]_i_3__5\ => fsm_1_n_12,
      \count[4]_i_6__6\ => fsm_1_n_14,
      \count_reg_reg[0]\(0) => ack_in_2,
      \count_reg_reg[2]\ => fsm_2_n_5,
      \count_reg_reg[2]_0\ => fsm_2_n_21,
      \count_reg_reg[2]_1\ => fsm_2_n_23,
      \count_reg_reg[2]_2\ => fsm_2_n_24,
      \count_reg_reg[4]\ => fsm_2_n_22,
      \count_reg_reg[4]_0\ => fsm_2_n_25,
      \done_aux_i_2__4\ => fsm_1_n_1,
      \done_aux_i_2__6\(4 downto 0) => u_i_0(4 downto 0),
      \done_aux_i_3__4\ => fsm_1_n_13,
      nRst => nRst,
      next_out_2 => next_out_2,
      next_out_3 => next_out_3
    );
fsm_3: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\
     port map (
      AR(0) => ack_in_4,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_2_n_26,
      Q(4 downto 0) => u_i_0(4 downto 0),
      SR(0) => fsm_3_n_37,
      a_in_3(14 downto 0) => a_in_3(14 downto 0),
      a_in_4(19 downto 0) => a_in_4(19 downto 0),
      clk => clk,
      \count[4]_i_3__4\ => fsm_4_n_40,
      \count[4]_i_4__5\ => fsm_2_n_24,
      \count[4]_i_5__4\ => fsm_4_n_41,
      \count[4]_i_6__5\ => fsm_2_n_21,
      \count_reg[0]\ => fsm_2_n_25,
      \count_reg_reg[0]\ => fsm_3_n_35,
      \count_reg_reg[0]_0\ => fsm_3_n_36,
      \count_reg_reg[0]_1\(0) => ack_in_3,
      \count_reg_reg[1]\ => fsm_3_n_30,
      \count_reg_reg[1]_0\ => fsm_3_n_33,
      \count_reg_reg[2]\ => fsm_3_n_7,
      \count_reg_reg[2]_0\ => fsm_3_n_28,
      \count_reg_reg[4]\ => fsm_3_n_29,
      \count_reg_reg[4]_0\ => fsm_3_n_31,
      \count_reg_reg[4]_1\ => fsm_3_n_32,
      \count_reg_reg[4]_2\ => fsm_3_n_34,
      \done_aux_i_2__3\(4 downto 0) => u_i_1(4 downto 0),
      \done_aux_i_2__3_0\ => fsm_4_n_42,
      \done_aux_i_3__3\ => fsm_2_n_23,
      \done_aux_i_4__1\ => fsm_4_n_43,
      \done_aux_i_5__1\ => fsm_2_n_5,
      done_aux_reg => fsm_2_n_22,
      nRst => nRst,
      next_out_3 => next_out_3,
      next_out_4 => next_out_4
    );
fsm_4: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\
     port map (
      AR(0) => ack_in_5,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_3_n_37,
      Q(4 downto 0) => u_i_1(4 downto 0),
      SR(0) => fsm_4_n_44,
      a_in_4(19 downto 0) => a_in_4(19 downto 0),
      a_in_5(24 downto 0) => a_in_5(24 downto 0),
      clk => clk,
      \count[4]_i_4__4\ => fsm_3_n_28,
      \count[4]_i_5__4\ => fsm_3_n_35,
      \count[4]_i_7__2\ => fsm_5_n_55,
      \count[4]_i_7__3\ => fsm_3_n_33,
      \count_reg[0]\(1 downto 0) => \logic/j_reg\(1 downto 0),
      \count_reg[0]_0\ => fsm_5_n_54,
      \count_reg[0]_1\ => fsm_3_n_34,
      \count_reg[0]_2\ => fsm_3_n_32,
      \count_reg_reg[0]\ => fsm_4_n_35,
      \count_reg_reg[0]_0\ => fsm_4_n_39,
      \count_reg_reg[0]_1\(0) => ack_in_4,
      \count_reg_reg[1]\ => fsm_4_n_36,
      \count_reg_reg[1]_0\ => fsm_4_n_38,
      \count_reg_reg[2]\ => fsm_4_n_7,
      \count_reg_reg[2]_0\ => fsm_4_n_33,
      \count_reg_reg[2]_1\ => fsm_4_n_41,
      \count_reg_reg[2]_2\ => fsm_4_n_43,
      \count_reg_reg[3]\ => fsm_4_n_40,
      \count_reg_reg[3]_0\ => fsm_4_n_42,
      \done_aux_i_3__1\ => fsm_5_n_52,
      \done_aux_i_3__2\ => fsm_3_n_7,
      \done_aux_i_4__1\ => fsm_3_n_30,
      \done_aux_i_6__0\ => fsm_3_n_36,
      done_aux_reg => fsm_3_n_29,
      done_aux_reg_0 => fsm_3_n_31,
      done_aux_reg_i_2 => fsm_5_n_56,
      \done_aux_reg_i_7__2\(4 downto 0) => u_i_2(4 downto 0),
      \done_aux_reg_i_7__2_0\ => fsm_5_n_53,
      \j_reg[0]\ => fsm_4_n_34,
      \j_reg[0]_0\ => fsm_4_n_37,
      nRst => nRst,
      next_out_4 => next_out_4,
      next_out_5 => next_out_5
    );
fsm_5: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\
     port map (
      AR(0) => ack_in_6,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_4_n_44,
      \FSM_onehot_state_reg[3]_0\ => fsm_5_n_2,
      \FSM_onehot_state_reg[3]_1\ => fsm_5_n_35,
      \FSM_onehot_state_reg[3]_2\ => fsm_5_n_56,
      Q(4 downto 0) => u_i_3(4 downto 0),
      SR(0) => fsm_5_n_57,
      a_in_5(24 downto 0) => a_in_5(24 downto 0),
      a_in_6(29 downto 0) => a_in_6(29 downto 0),
      clk => clk,
      \count[4]_i_10__2\ => fsm_6_n_59,
      \count[4]_i_4__3\ => fsm_4_n_33,
      \count[4]_i_6__3\ => fsm_4_n_38,
      \count_reg[0]\ => fsm_4_n_37,
      \count_reg_reg[0]\ => fsm_5_n_33,
      \count_reg_reg[0]_0\ => fsm_5_n_39,
      \count_reg_reg[0]_1\(0) => ack_in_5,
      \count_reg_reg[1]\ => fsm_5_n_34,
      \count_reg_reg[1]_0\ => fsm_5_n_42,
      \count_reg_reg[2]\ => fsm_5_n_43,
      \count_reg_reg[2]_0\ => fsm_5_n_44,
      \count_reg_reg[2]_1\ => fsm_5_n_53,
      \count_reg_reg[2]_2\ => fsm_5_n_55,
      \count_reg_reg[4]\ => fsm_5_n_36,
      \count_reg_reg[4]_0\ => fsm_5_n_37,
      \count_reg_reg[4]_1\ => fsm_5_n_40,
      \count_reg_reg[4]_2\ => fsm_5_n_41,
      \count_reg_reg[4]_3\(4 downto 0) => u_i_2(4 downto 0),
      \count_reg_reg[4]_4\ => fsm_5_n_52,
      \count_reg_reg[4]_5\ => fsm_5_n_54,
      \done_aux_i_2__2\(0) => \logic/j_reg_4\(0),
      \done_aux_i_4__0\ => fsm_4_n_7,
      done_aux_reg => fsm_4_n_34,
      \done_aux_reg_i_3__0\ => fsm_6_n_52,
      \done_aux_reg_i_6__2\ => fsm_4_n_39,
      \done_aux_reg_i_7__1\ => fsm_6_n_58,
      \done_aux_reg_i_7__2\ => fsm_4_n_36,
      \done_aux_reg_i_7__2_0\ => fsm_4_n_35,
      \j_reg[0]\ => fsm_5_n_38,
      \j_reg[1]\(1 downto 0) => \logic/j_reg\(1 downto 0),
      nRst => nRst,
      next_out_5 => next_out_5,
      next_out_6 => next_out_6
    );
fsm_6: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2\
     port map (
      AR(0) => ack_in_7,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_5_n_57,
      \FSM_onehot_state_reg[3]_0\ => fsm_6_n_49,
      Q(4 downto 0) => u_i_5(4 downto 0),
      SR(0) => fsm_6_n_60,
      a_in_6(29 downto 0) => a_in_6(29 downto 0),
      a_in_7(34 downto 0) => a_in_7(34 downto 0),
      clk => clk,
      \count[4]_i_11__1\ => fsm_7_n_63,
      \count[4]_i_5__2\ => fsm_5_n_44,
      \count[4]_i_9__1\ => fsm_5_n_42,
      \count_reg[0]\ => fsm_5_n_36,
      \count_reg[0]_0\ => fsm_5_n_41,
      \count_reg[0]_1\ => fsm_5_n_40,
      \count_reg[0]_2\ => fsm_5_n_37,
      \count_reg_reg[0]\ => fsm_6_n_40,
      \count_reg_reg[0]_0\ => fsm_6_n_50,
      \count_reg_reg[0]_1\(0) => ack_in_6,
      \count_reg_reg[1]\ => fsm_6_n_41,
      \count_reg_reg[1]_0\ => fsm_6_n_46,
      \count_reg_reg[2]\ => fsm_6_n_2,
      \count_reg_reg[2]_0\ => fsm_6_n_38,
      \count_reg_reg[2]_1\ => fsm_6_n_58,
      \count_reg_reg[2]_2\ => fsm_6_n_59,
      \count_reg_reg[4]\ => fsm_6_n_42,
      \count_reg_reg[4]_0\ => fsm_6_n_43,
      \count_reg_reg[4]_1\ => fsm_6_n_44,
      \count_reg_reg[4]_2\ => fsm_6_n_45,
      \count_reg_reg[4]_3\ => fsm_6_n_47,
      \count_reg_reg[4]_4\ => fsm_6_n_52,
      \count_reg_reg[4]_5\(4 downto 0) => u_i_3(4 downto 0),
      \done_aux_i_2__1\(0) => \logic/j_reg_6\(0),
      \done_aux_i_2__2\ => fsm_5_n_2,
      \done_aux_i_2__2_0\ => fsm_5_n_35,
      done_aux_reg => fsm_5_n_38,
      \done_aux_reg_i_4__0\ => fsm_7_n_61,
      \done_aux_reg_i_6__1\ => fsm_5_n_39,
      \done_aux_reg_i_7__1\ => fsm_5_n_34,
      \done_aux_reg_i_7__1_0\ => fsm_5_n_33,
      \done_aux_reg_i_9__0\ => fsm_7_n_62,
      \done_aux_reg_i_9__1\ => fsm_5_n_43,
      \j_reg[0]\ => fsm_6_n_39,
      \j_reg[0]_0\ => fsm_6_n_48,
      \j_reg[0]_1\(0) => \logic/j_reg_4\(0),
      nRst => nRst,
      next_out_6 => next_out_6,
      next_out_7 => next_out_7
    );
fsm_7: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1\
     port map (
      AR(0) => ack_in_8,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_6_n_60,
      \FSM_onehot_state_reg[3]_0\ => fsm_7_n_2,
      \FSM_onehot_state_reg[3]_1\ => fsm_7_n_54,
      Q(4 downto 0) => u_i_8(4 downto 0),
      SR(0) => fsm_7_n_64,
      a_in_7(34 downto 0) => a_in_7(34 downto 0),
      a_in_8(39 downto 0) => a_in_8(39 downto 0),
      clk => clk,
      \count[4]_i_10__0\ => fsm_8_n_26,
      \count[4]_i_5__1\ => fsm_6_n_46,
      \count[4]_i_9__0\ => fsm_6_n_38,
      \count_reg[0]\(1 downto 0) => \logic/j_reg_7\(1 downto 0),
      \count_reg[0]_0\ => fsm_6_n_42,
      \count_reg[0]_1\ => fsm_6_n_47,
      \count_reg[0]_2\ => fsm_6_n_45,
      \count_reg[0]_3\ => fsm_6_n_44,
      \count_reg[0]_4\ => fsm_6_n_43,
      \count_reg_reg[0]\ => fsm_7_n_44,
      \count_reg_reg[0]_0\ => fsm_7_n_48,
      \count_reg_reg[0]_1\(0) => ack_in_7,
      \count_reg_reg[1]\ => fsm_7_n_43,
      \count_reg_reg[1]_0\ => fsm_7_n_53,
      \count_reg_reg[2]\ => fsm_7_n_45,
      \count_reg_reg[2]_0\ => fsm_7_n_46,
      \count_reg_reg[2]_1\ => fsm_7_n_62,
      \count_reg_reg[2]_2\ => fsm_7_n_63,
      \count_reg_reg[4]\ => fsm_7_n_49,
      \count_reg_reg[4]_0\ => fsm_7_n_50,
      \count_reg_reg[4]_1\ => fsm_7_n_51,
      \count_reg_reg[4]_2\(4 downto 0) => u_i_5(4 downto 0),
      \count_reg_reg[4]_3\ => fsm_7_n_61,
      \done_aux_i_2__1\ => fsm_6_n_49,
      \done_aux_i_3__0\ => fsm_6_n_2,
      done_aux_reg => fsm_6_n_39,
      done_aux_reg_0 => fsm_6_n_48,
      done_aux_reg_i_10 => fsm_8_n_25,
      \done_aux_reg_i_12__0\ => fsm_6_n_50,
      done_aux_reg_i_4 => fsm_8_n_24,
      \done_aux_reg_i_9__0\ => fsm_6_n_41,
      \done_aux_reg_i_9__0_0\ => fsm_6_n_40,
      \j_reg[0]\ => fsm_7_n_47,
      \j_reg[0]_0\ => fsm_7_n_52,
      \j_reg[0]_1\(0) => \logic/j_reg_6\(0),
      nRst => nRst,
      next_out_7 => next_out_7,
      next_out_8 => next_out_8
    );
fsm_8: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\
     port map (
      AR(0) => ack_in_9,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_7_n_64,
      \FSM_onehot_state_reg[3]_0\(10 downto 8) => a_in_9(17 downto 15),
      \FSM_onehot_state_reg[3]_0\(7 downto 5) => a_in_9(12 downto 10),
      \FSM_onehot_state_reg[3]_0\(4 downto 0) => a_in_9(4 downto 0),
      Q(4 downto 0) => u_i_8(4 downto 0),
      SR(0) => fsm_8_n_27,
      a_in_8(39 downto 0) => a_in_8(39 downto 0),
      clk => clk,
      \count[4]_i_11__0\ => fsm_7_n_48,
      \count[4]_i_8\ => fsm_7_n_46,
      \count_reg[0]\(2 downto 0) => \logic/j_reg_9\(2 downto 0),
      \count_reg[0]_0\ => fsm_7_n_50,
      \count_reg[0]_1\ => fsm_7_n_49,
      \count_reg[0]_2\ => fsm_7_n_47,
      \count_reg[4]_i_14\ => fsm_9_n_11,
      \count_reg[4]_i_17\ => fsm_9_n_10,
      \count_reg[4]_i_17_0\ => fsm_9_n_9,
      \count_reg_reg[0]\(0) => ack_in_8,
      \count_reg_reg[2]\ => fsm_8_n_21,
      \count_reg_reg[2]_0\ => fsm_8_n_22,
      \count_reg_reg[2]_1\ => fsm_8_n_25,
      \count_reg_reg[2]_2\ => fsm_8_n_26,
      \count_reg_reg[4]\ => fsm_8_n_24,
      \done_aux_i_2__0\ => fsm_7_n_2,
      \done_aux_i_2__0_0\ => fsm_7_n_54,
      done_aux_reg => fsm_7_n_52,
      done_aux_reg_0 => fsm_7_n_51,
      done_aux_reg_i_10 => fsm_7_n_44,
      done_aux_reg_i_10_0 => fsm_7_n_43,
      done_aux_reg_i_13 => fsm_9_n_14,
      done_aux_reg_i_16 => fsm_9_n_13,
      done_aux_reg_i_16_0 => fsm_9_n_12,
      done_aux_reg_i_6(4 downto 0) => u_i_10(4 downto 0),
      \done_aux_reg_i_8__0\ => fsm_7_n_45,
      done_aux_reg_i_9 => fsm_7_n_53,
      \j_reg[1]\(1 downto 0) => \logic/j_reg_7\(1 downto 0),
      \j_reg[2]\ => fsm_8_n_9,
      \j_reg[2]_0\ => fsm_8_n_23,
      nRst => nRst,
      next_out_8 => next_out_8,
      next_out_9 => next_out_9
    );
fsm_9: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm
     port map (
      AR(0) => ack_in_9,
      D(31) => fsm_9_n_16,
      D(30) => fsm_9_n_17,
      D(29) => fsm_9_n_18,
      D(28) => fsm_9_n_19,
      D(27) => fsm_9_n_20,
      D(26) => fsm_9_n_21,
      D(25) => fsm_9_n_22,
      D(24) => fsm_9_n_23,
      D(23) => fsm_9_n_24,
      D(22) => fsm_9_n_25,
      D(21) => fsm_9_n_26,
      D(20) => fsm_9_n_27,
      D(19) => fsm_9_n_28,
      D(18) => fsm_9_n_29,
      D(17) => fsm_9_n_30,
      D(16) => fsm_9_n_31,
      D(15) => fsm_9_n_32,
      D(14) => fsm_9_n_33,
      D(13) => fsm_9_n_34,
      D(12) => fsm_9_n_35,
      D(11) => fsm_9_n_36,
      D(10) => fsm_9_n_37,
      D(9) => fsm_9_n_38,
      D(8) => fsm_9_n_39,
      D(7) => fsm_9_n_40,
      D(6) => fsm_9_n_41,
      D(5) => fsm_9_n_42,
      D(4) => fsm_9_n_43,
      D(3) => fsm_9_n_44,
      D(2) => fsm_9_n_45,
      D(1) => fsm_9_n_46,
      D(0) => fsm_9_n_47,
      E(0) => counter_s,
      Q(4 downto 0) => u_i_10(4 downto 0),
      SR(0) => fsm_8_n_27,
      clk => clk,
      \count[4]_i_29\(10 downto 8) => a_in_9(17 downto 15),
      \count[4]_i_29\(7 downto 5) => a_in_9(12 downto 10),
      \count[4]_i_29\(4 downto 0) => a_in_9(4 downto 0),
      \count[4]_i_3\ => fsm_8_n_22,
      \count_reg[0]\ => fsm_8_n_23,
      \count_reg_reg[2]\ => fsm_9_n_9,
      \count_reg_reg[2]_0\ => fsm_9_n_10,
      \count_reg_reg[2]_1\ => fsm_9_n_11,
      \count_reg_reg[2]_2\ => fsm_9_n_12,
      \count_reg_reg[2]_3\ => fsm_9_n_13,
      \count_reg_reg[2]_4\ => fsm_9_n_14,
      \counter[31]\ => \^done\,
      \counter[31]_0\ => \counter_s_reg[31]_i_3_n_0\,
      \counter[31]_1\ => \counter_s_reg[31]_i_4_n_0\,
      \counter[31]_2\ => \counter_s_reg[31]_i_5_n_0\,
      done_aux_i_2 => fsm_8_n_21,
      done_aux_reg => fsm_8_n_9,
      \j_reg[2]\(2 downto 0) => \logic/j_reg_9\(2 downto 0),
      next_out_9 => next_out_9,
      plusOp_9(31 downto 0) => plusOp_9(31 downto 0)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^counter\(1),
      DI(0) => '0',
      O(3 downto 0) => plusOp_9(3 downto 0),
      S(3 downto 2) => \^counter\(3 downto 2),
      S(1) => plusOp_carry_i_1_n_0,
      S(0) => \^counter\(0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_9(7 downto 4),
      S(3 downto 0) => \^counter\(7 downto 4)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_9(11 downto 8),
      S(3 downto 0) => \^counter\(11 downto 8)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_9(15 downto 12),
      S(3 downto 0) => \^counter\(15 downto 12)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_9(19 downto 16),
      S(3 downto 0) => \^counter\(19 downto 16)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_9(23 downto 20),
      S(3 downto 0) => \^counter\(23 downto 20)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_9(27 downto 24),
      S(3 downto 0) => \^counter\(27 downto 24)
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__6_n_1\,
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_9(31 downto 28),
      S(3 downto 0) => \^counter\(31 downto 28)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter\(1),
      O => plusOp_carry_i_1_n_0
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
    flag : out STD_LOGIC;
    done : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_nqueens_0_0,top_nqueens,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_nqueens,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_nqueens
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      counter(31 downto 0) => counter(31 downto 0),
      done => done,
      flag => flag,
      nRst => nRst
    );
end STRUCTURE;
