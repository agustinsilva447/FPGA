-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Nov 24 18:42:43 2021
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
    valid : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[2]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[4]_0\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state[4]_i_5_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC;
    acks_out_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_2__0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm is
  signal \FSM_onehot_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_8__6_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal a_j : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__15_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \j__0\ : STD_LOGIC;
  signal \j_reg[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^valid\ : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  signal valid_aux_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__0\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_12\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__16\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9\ : label is "soft_lutpair167";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_10__3\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_24\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_25\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_8__4\ : label is "soft_lutpair169";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__15\ : label is "soft_lutpair171";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair171";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair165";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1\ : label is "soft_lutpair165";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of done_aux_reg_i_1 : label is "soft_lutpair173";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[0]_i_1__6\ : label is "soft_lutpair172";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1\ : label is "soft_lutpair172";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1\ : label is "soft_lutpair169";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1\ : label is "soft_lutpair166";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2\ : label is "soft_lutpair173";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of valid_aux_reg_i_1 : label is "soft_lutpair174";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  valid <= \^valid\;
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA2AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_5_n_0\,
      I2 => \FSM_onehot_state[4]_i_4__16_n_0\,
      I3 => \FSM_onehot_state[4]_i_3__0_n_0\,
      I4 => \FSM_onehot_state_reg[4]_1\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => acks_out_reg(2),
      I1 => \^valid\,
      O => D(0)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55570000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_1\,
      I1 => \FSM_onehot_state[4]_i_3__0_n_0\,
      I2 => \FSM_onehot_state[4]_i_4__16_n_0\,
      I3 => \FSM_onehot_state[4]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state[4]_i_6_n_0\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_15_n_0\,
      I1 => \FSM_onehot_state[4]_i_5_0\(3),
      I2 => \^fsm_onehot_state_reg[1]_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5_0\(4),
      O => next_state6(4)
    );
\FSM_onehot_state[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5_0\(0),
      I2 => \^fsm_onehot_state_reg[1]_0\(1),
      I3 => \FSM_onehot_state[4]_i_5_0\(1),
      O => next_state6(1)
    );
\FSM_onehot_state[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \FSM_onehot_state[4]_i_5_0\(2),
      I2 => \FSM_onehot_state[4]_i_5_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5_0\(1),
      I5 => \^fsm_onehot_state_reg[1]_0\(1),
      O => \FSM_onehot_state[4]_i_15_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => acks_out_reg(0),
      I1 => acks_out_reg(1),
      I2 => acks_out_reg(3),
      I3 => acks_out_reg(2),
      I4 => done,
      O => E(0)
    );
\FSM_onehot_state[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB7DBEFBFBBEFBBE"
    )
        port map (
      I0 => j(4),
      I1 => \FSM_onehot_state[4]_i_8__6_n_0\,
      I2 => j(3),
      I3 => next_state6(3),
      I4 => \FSM_onehot_state_reg[3]_2\,
      I5 => next_state6(4),
      O => \FSM_onehot_state[4]_i_3__0_n_0\
    );
\FSM_onehot_state[4]_i_4__16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_onehot_state_reg[1]_0\(0),
      I2 => \FSM_onehot_state[4]_i_5_0\(0),
      O => \FSM_onehot_state[4]_i_4__16_n_0\
    );
\FSM_onehot_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF5BDAFF65FDBFA"
    )
        port map (
      I0 => next_state6(1),
      I1 => \FSM_onehot_state_reg[3]_1\,
      I2 => \FSM_onehot_state_reg[3]_0\(0),
      I3 => next_state6(4),
      I4 => \^q\(1),
      I5 => j(2),
      O => \FSM_onehot_state[4]_i_5_n_0\
    );
\FSM_onehot_state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[0]\,
      O => \FSM_onehot_state[4]_i_6_n_0\
    );
\FSM_onehot_state[4]_i_8__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j(2),
      I1 => \^q\(1),
      O => \FSM_onehot_state[4]_i_8__6_n_0\
    );
\FSM_onehot_state[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_15_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5_0\(3),
      O => next_state6(3)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__0_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__0\(0),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__0\(1),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__0\(2),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__0\(3),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__0\(4),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_10__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"699A"
    )
        port map (
      I0 => j(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => j(2),
      O => \j_reg[2]_1\
    );
\a_j_reg[4]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E0781F8"
    )
        port map (
      I0 => \^q\(0),
      I1 => j(3),
      I2 => \^q\(1),
      I3 => j(2),
      I4 => j(4),
      O => \j_reg[4]_0\
    );
\a_j_reg[4]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8011FFA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => j(4),
      I3 => j(2),
      I4 => j(3),
      O => \j_reg[3]_0\
    );
\a_j_reg[4]_i_8__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => j(2),
      O => \j_reg[2]_0\
    );
acks_out_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => acks_out_reg(4),
      I1 => acks_out_reg(0),
      I2 => acks_out_reg(2),
      I3 => \^valid\,
      I4 => done,
      I5 => acks_out_reg(1),
      O => \FSM_onehot_state_reg[4]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__15_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__15_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      O => \count_reg[1]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      O => \count_reg[2]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      O => \count_reg[3]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[2]\,
      O => \count_reg[4]_i_1_n_0\
    );
\count_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg[4]_1\,
      I2 => \FSM_onehot_state[4]_i_3__0_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__16_n_0\,
      I4 => \FSM_onehot_state[4]_i_5_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
done_aux_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__6_n_0\,
      G => \j__0\,
      GE => '1',
      Q => \^q\(0)
    );
\j_reg[0]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(0),
      O => \j_reg[0]_i_1__6_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => \^q\(1)
    );
\j_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \j_reg[1]_i_1_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(2)
    );
\j_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => j(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \j_reg[2]_i_1_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(3)
    );
\j_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => j(3),
      I2 => j(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \j_reg[3]_i_1_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(4)
    );
\j_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => j(4),
      I2 => j(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => j(2),
      O => \j_reg[4]_i_1_n_0\
    );
\j_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j__0\
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => \^valid\
    );
valid_aux_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => valid_aux_reg_i_2_n_0,
      O => valid_aux
    );
valid_aux_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[4]\,
      O => valid_aux_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\ is
  port (
    valid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[4]_0\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \a_j_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[0]_i_1_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1_1\ : in STD_LOGIC;
    a_in_9 : in STD_LOGIC_VECTOR ( 44 downto 0 );
    \a_j_reg[0]_i_2_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_2_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_9 : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_5__0_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_2__2\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\ is
  signal \FSM_onehot_state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_12__7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_16__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_8__7_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_15_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_16_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_17_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_18_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_19_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_20_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_21_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_22_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_23_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__16_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \j__0\ : STD_LOGIC;
  signal \j_reg[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^valid\ : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_12__7\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_13\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_16__2\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_8__7\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__0\ : label is "soft_lutpair151";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_3\ : label is "soft_lutpair145";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_3\ : label is "soft_lutpair146";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_3\ : label is "soft_lutpair147";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_3\ : label is "soft_lutpair148";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_10\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_13\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_15\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_17\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_19\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_21\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_24__0\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_25__0\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_7\ : label is "soft_lutpair148";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__16\ : label is "soft_lutpair157";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__1\ : label is "soft_lutpair157";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__1\ : label is "soft_lutpair149";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__1\ : label is "soft_lutpair149";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__0\ : label is "soft_lutpair159";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[0]_i_1__7\ : label is "soft_lutpair158";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__0\ : label is "soft_lutpair158";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__0\ : label is "soft_lutpair150";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__0\ : label is "soft_lutpair150";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__0\ : label is "soft_lutpair159";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  valid <= \^valid\;
\FSM_onehot_state[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[1]_i_2__0_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_1__2_n_0\
    );
\FSM_onehot_state[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[4]\,
      O => \FSM_onehot_state[1]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_5__0_n_0\,
      I2 => \FSM_onehot_state[4]_i_4__1_n_0\,
      I3 => \FSM_onehot_state[4]_i_3__2_n_0\,
      I4 => \FSM_onehot_state_reg[4]_1\,
      O => \FSM_onehot_state[3]_i_1__1_n_0\
    );
\FSM_onehot_state[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => \^valid\,
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state[4]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_17_n_0\,
      I1 => \FSM_onehot_state[4]_i_5__0_0\(3),
      I2 => \^fsm_onehot_state_reg[1]_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__0_0\(4),
      O => next_state6(4)
    );
\FSM_onehot_state[4]_i_12__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_state[4]_i_12__7_n_0\
    );
\FSM_onehot_state[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5__0_0\(0),
      I2 => \^fsm_onehot_state_reg[1]_0\(1),
      I3 => \FSM_onehot_state[4]_i_5__0_0\(1),
      O => next_state6(1)
    );
\FSM_onehot_state[4]_i_16__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => j(2),
      O => \FSM_onehot_state[4]_i_16__2_n_0\
    );
\FSM_onehot_state[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \FSM_onehot_state[4]_i_5__0_0\(2),
      I2 => \FSM_onehot_state[4]_i_5__0_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__0_0\(1),
      I5 => \^fsm_onehot_state_reg[1]_0\(1),
      O => \FSM_onehot_state[4]_i_17_n_0\
    );
\FSM_onehot_state[4]_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55570000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_1\,
      I1 => \FSM_onehot_state[4]_i_3__2_n_0\,
      I2 => \FSM_onehot_state[4]_i_4__1_n_0\,
      I3 => \FSM_onehot_state[4]_i_5__0_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state[4]_i_6__0_n_0\,
      O => \FSM_onehot_state[4]_i_1__9_n_0\
    );
\FSM_onehot_state[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \count_reg_reg[0]\(0),
      I1 => \count_reg_reg[0]\(1),
      I2 => \count_reg_reg[0]\(3),
      I3 => next_out_9,
      I4 => \count_reg_reg[0]\(2),
      I5 => done,
      O => E(0)
    );
\FSM_onehot_state[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB7DBEFBFBBEFBBE"
    )
        port map (
      I0 => j(4),
      I1 => \FSM_onehot_state[4]_i_8__7_n_0\,
      I2 => j(3),
      I3 => next_state6(3),
      I4 => \FSM_onehot_state_reg[3]_2\,
      I5 => next_state6(4),
      O => \FSM_onehot_state[4]_i_3__2_n_0\
    );
\FSM_onehot_state[4]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_onehot_state_reg[1]_0\(0),
      I2 => \FSM_onehot_state[4]_i_5__0_0\(0),
      O => \FSM_onehot_state[4]_i_4__1_n_0\
    );
\FSM_onehot_state[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF7966FF79EFFF66"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_12__7_n_0\,
      I1 => next_state6(1),
      I2 => \FSM_onehot_state_reg[3]_1\,
      I3 => \FSM_onehot_state_reg[3]_0\(0),
      I4 => next_state6(4),
      I5 => \FSM_onehot_state[4]_i_16__2_n_0\,
      O => \FSM_onehot_state[4]_i_5__0_n_0\
    );
\FSM_onehot_state[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_6__0_n_0\
    );
\FSM_onehot_state[4]_i_8__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => j(2),
      O => \FSM_onehot_state[4]_i_8__7_n_0\
    );
\FSM_onehot_state[4]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_17_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__0_0\(3),
      O => next_state6(3)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__2_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__9_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__2\(0),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \a_j_reg[3]_i_2_n_0\,
      I1 => \a_j_reg[1]_i_2_n_0\,
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[2]_i_2_n_0\,
      I4 => \a_j_reg[0]_0\(1),
      I5 => \a_j_reg[0]_i_2_n_0\,
      O => D(0)
    );
\a_j_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_22_n_0\,
      I1 => \a_j_reg[4]_i_23_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[0]_i_3_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_20_n_0\,
      O => \a_j_reg[0]_i_2_n_0\
    );
\a_j_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(16),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(0),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(32),
      O => \a_j_reg[0]_i_3_n_0\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__2\(1),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \a_j_reg[4]_i_5_n_0\,
      I1 => \a_j_reg[2]_i_2_n_0\,
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[3]_i_2_n_0\,
      I4 => \a_j_reg[0]_0\(1),
      I5 => \a_j_reg[1]_i_2_n_0\,
      O => D(1)
    );
\a_j_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_14_n_0\,
      I1 => \a_j_reg[4]_i_15_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[1]_i_3_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_12_n_0\,
      O => \a_j_reg[1]_i_2_n_0\
    );
\a_j_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(17),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(1),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(33),
      O => \a_j_reg[1]_i_3_n_0\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__2\(2),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \a_j_reg[4]_i_3_n_0\,
      I1 => \a_j_reg[3]_i_2_n_0\,
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[4]_i_5_n_0\,
      I4 => \a_j_reg[0]_0\(1),
      I5 => \a_j_reg[2]_i_2_n_0\,
      O => D(2)
    );
\a_j_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_18_n_0\,
      I1 => \a_j_reg[4]_i_19_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[2]_i_3_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_16_n_0\,
      O => \a_j_reg[2]_i_2_n_0\
    );
\a_j_reg[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(18),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(2),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(34),
      O => \a_j_reg[2]_i_3_n_0\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__2\(3),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \a_j_reg[4]_i_4_n_0\,
      I1 => \a_j_reg[4]_i_5_n_0\,
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[4]_i_3_n_0\,
      I4 => \a_j_reg[0]_0\(1),
      I5 => \a_j_reg[3]_i_2_n_0\,
      O => D(3)
    );
\a_j_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_9_n_0\,
      I1 => \a_j_reg[4]_i_11_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[3]_i_3_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_6_n_0\,
      O => \a_j_reg[3]_i_2_n_0\
    );
\a_j_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(19),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(3),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(35),
      O => \a_j_reg[3]_i_3_n_0\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__2\(4),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \a_j_reg[4]_i_2_n_0\,
      I1 => \a_j_reg[4]_i_3_n_0\,
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[4]_i_4_n_0\,
      I4 => \a_j_reg[0]_0\(1),
      I5 => \a_j_reg[4]_i_5_n_0\,
      O => D(4)
    );
\a_j_reg[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => j(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => j(3),
      O => \j_reg[3]_1\
    );
\a_j_reg[4]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(31),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(15),
      O => \a_j_reg[4]_i_11_n_0\
    );
\a_j_reg[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(25),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(9),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(41),
      O => \a_j_reg[4]_i_12_n_0\
    );
\a_j_reg[4]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_9(33),
      I1 => \a_j_reg[0]_i_2_1\,
      I2 => a_in_9(1),
      I3 => \a_j_reg[0]_i_2_0\,
      I4 => a_in_9(17),
      O => \a_j_reg[4]_i_13_n_0\
    );
\a_j_reg[4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(21),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(5),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(37),
      O => \a_j_reg[4]_i_14_n_0\
    );
\a_j_reg[4]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(29),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(13),
      O => \a_j_reg[4]_i_15_n_0\
    );
\a_j_reg[4]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(26),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(10),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(42),
      O => \a_j_reg[4]_i_16_n_0\
    );
\a_j_reg[4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_9(34),
      I1 => \a_j_reg[0]_i_2_1\,
      I2 => a_in_9(2),
      I3 => \a_j_reg[0]_i_2_0\,
      I4 => a_in_9(18),
      O => \a_j_reg[4]_i_17_n_0\
    );
\a_j_reg[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(22),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(6),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(38),
      O => \a_j_reg[4]_i_18_n_0\
    );
\a_j_reg[4]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(30),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(14),
      O => \a_j_reg[4]_i_19_n_0\
    );
\a_j_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_6_n_0\,
      I1 => \a_j_reg[4]_i_7_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[4]_i_9_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_11_n_0\,
      O => \a_j_reg[4]_i_2_n_0\
    );
\a_j_reg[4]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(24),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(8),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(40),
      O => \a_j_reg[4]_i_20_n_0\
    );
\a_j_reg[4]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_9(32),
      I1 => \a_j_reg[0]_i_2_1\,
      I2 => a_in_9(0),
      I3 => \a_j_reg[0]_i_2_0\,
      I4 => a_in_9(16),
      O => \a_j_reg[4]_i_21_n_0\
    );
\a_j_reg[4]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(20),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(4),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(36),
      O => \a_j_reg[4]_i_22_n_0\
    );
\a_j_reg[4]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(28),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(12),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(44),
      O => \a_j_reg[4]_i_23_n_0\
    );
\a_j_reg[4]_i_24__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA800FFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => j(4),
      I3 => j(2),
      I4 => j(3),
      O => \j_reg[3]_0\
    );
\a_j_reg[4]_i_25__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F81C07E"
    )
        port map (
      I0 => \^q\(0),
      I1 => j(3),
      I2 => \^q\(1),
      I3 => j(2),
      I4 => j(4),
      O => \j_reg[4]_0\
    );
\a_j_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_12_n_0\,
      I1 => \a_j_reg[4]_i_13_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[4]_i_14_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_15_n_0\,
      O => \a_j_reg[4]_i_3_n_0\
    );
\a_j_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_16_n_0\,
      I1 => \a_j_reg[4]_i_17_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[4]_i_18_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_19_n_0\,
      O => \a_j_reg[4]_i_4_n_0\
    );
\a_j_reg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_20_n_0\,
      I1 => \a_j_reg[4]_i_21_n_0\,
      I2 => \a_j_reg[0]_i_1_0\,
      I3 => \a_j_reg[4]_i_22_n_0\,
      I4 => \a_j_reg[0]_i_1_1\,
      I5 => \a_j_reg[4]_i_23_n_0\,
      O => \a_j_reg[4]_i_5_n_0\
    );
\a_j_reg[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(27),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(11),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(43),
      O => \a_j_reg[4]_i_6_n_0\
    );
\a_j_reg[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_9(35),
      I1 => \a_j_reg[0]_i_2_1\,
      I2 => a_in_9(3),
      I3 => \a_j_reg[0]_i_2_0\,
      I4 => a_in_9(19),
      O => \a_j_reg[4]_i_7_n_0\
    );
\a_j_reg[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j(2),
      I1 => \^q\(0),
      O => \j_reg[0]_0\
    );
\a_j_reg[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(23),
      I1 => \a_j_reg[0]_i_2_0\,
      I2 => a_in_9(7),
      I3 => \a_j_reg[0]_i_2_1\,
      I4 => a_in_9(39),
      O => \a_j_reg[4]_i_9_n_0\
    );
\acks_out_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => \count_reg_reg[0]\(4),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(2),
      I3 => \^valid\,
      I4 => done,
      I5 => \count_reg_reg[0]\(1),
      O => \FSM_onehot_state_reg[4]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__16_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__16_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      O => \count_reg[1]_i_1__1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      O => \count_reg[2]_i_1__1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      O => \count_reg[3]_i_1__1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[2]\,
      O => \count_reg[4]_i_1__1_n_0\
    );
\count_reg[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg[4]_1\,
      I2 => \FSM_onehot_state[4]_i_3__2_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__1_n_0\,
      I4 => \FSM_onehot_state[4]_i_5__0_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__7_n_0\,
      G => \j__0\,
      GE => '1',
      Q => \^q\(0)
    );
\j_reg[0]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(0),
      O => \j_reg[0]_i_1__7_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__0_n_0\,
      G => \j__0\,
      GE => '1',
      Q => \^q\(1)
    );
\j_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \j_reg[1]_i_1__0_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__0_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(2)
    );
\j_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => j(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \j_reg[2]_i_1__0_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__0_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(3)
    );
\j_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => j(3),
      I2 => j(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \j_reg[3]_i_1__0_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__0_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(4)
    );
\j_reg[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => j(4),
      I2 => j(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => j(2),
      O => \j_reg[4]_i_1__0_n_0\
    );
\j_reg[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j__0\
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => \^valid\
    );
\valid_aux_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[1]_i_2__0_n_0\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[3]_i_3__1\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[4]_0\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[0]_i_1__0_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__0_1\ : in STD_LOGIC;
    a_in_8 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    \a_j_reg[0]_i_2__0_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_2__0_1\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_8 : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_2\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_5__1_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state[4]_i_4__2_0\ : in STD_LOGIC;
    \a_j_reg[2]_0\ : in STD_LOGIC;
    \a_j_reg[2]_1\ : in STD_LOGIC;
    \a_j_reg[2]_2\ : in STD_LOGIC;
    \a_j_reg[4]_0\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__1_0\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__1_1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__1\ : in STD_LOGIC;
    complete_tick : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_7__1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\ is
  signal \FSM_onehot_state[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^fsm_onehot_state_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \^a_j_reg[3]_i_3__1\ : STD_LOGIC;
  signal \a_j_reg[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_17__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_19__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_20__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_21__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_22__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_23__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_9__0_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \j__0\ : STD_LOGIC;
  signal \j_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal next_state30_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal next_state6 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal valid : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__4\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__4\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_10\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__1\ : label is "soft_lutpair127";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_3__0\ : label is "soft_lutpair123";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_3__0\ : label is "soft_lutpair124";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_3__0\ : label is "soft_lutpair125";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_3__0\ : label is "soft_lutpair126";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_11__1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_12__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_12__1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_13__0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_14__0\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_16__0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_17__0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_18__0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_19__1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_20__0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_20__1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_21__0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_22__0\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_2__1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_6__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_7__0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_9__0\ : label is "soft_lutpair136";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair138";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__3\ : label is "soft_lutpair138";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__3\ : label is "soft_lutpair128";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__3\ : label is "soft_lutpair128";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__1\ : label is "soft_lutpair139";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__1\ : label is "soft_lutpair133";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__1\ : label is "soft_lutpair129";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__1\ : label is "soft_lutpair129";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__1\ : label is "soft_lutpair139";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  \FSM_onehot_state_reg[3]_0\(1 downto 0) <= \^fsm_onehot_state_reg[3]_0\(1 downto 0);
  \a_j_reg[3]_i_3__1\ <= \^a_j_reg[3]_i_3__1\;
\FSM_onehot_state[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEF0000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \FSM_onehot_state[1]_i_2__1_n_0\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1__3_n_0\
    );
\FSM_onehot_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \count_reg_reg[0]\(0),
      I1 => \count_reg_reg[0]\(2),
      I2 => valid,
      I3 => complete_tick,
      I4 => \count_reg_reg[0]\(3),
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_2__1_n_0\
    );
\FSM_onehot_state[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_6__1_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__1_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__2_n_0\,
      I4 => \FSM_onehot_state_reg[3]_1\,
      O => \FSM_onehot_state[3]_i_1__3_n_0\
    );
\FSM_onehot_state[3]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => \FSM_onehot_state_reg[2]_0\(1)
    );
\FSM_onehot_state[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5__1_0\(3),
      I1 => \FSM_onehot_state[4]_i_14__0_n_0\,
      I2 => \^fsm_onehot_state_reg[1]_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__1_0\(4),
      O => p_0_in(4)
    );
\FSM_onehot_state[4]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5__1_0\(0),
      I2 => \^fsm_onehot_state_reg[1]_0\(1),
      I3 => \FSM_onehot_state[4]_i_5__1_0\(1),
      O => next_state6(1)
    );
\FSM_onehot_state[4]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF757751551011"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => \FSM_onehot_state[4]_i_5__1_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__1_0\(1),
      I5 => \FSM_onehot_state[4]_i_5__1_0\(2),
      O => \FSM_onehot_state[4]_i_14__0_n_0\
    );
\FSM_onehot_state[4]_i_1__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__4_n_0\,
      I1 => \FSM_onehot_state_reg[3]_1\,
      I2 => \FSM_onehot_state[4]_i_4__2_n_0\,
      I3 => \FSM_onehot_state[4]_i_5__1_n_0\,
      I4 => \FSM_onehot_state[4]_i_6__1_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1__10_n_0\
    );
\FSM_onehot_state[4]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \count_reg_reg[0]\(1),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(2),
      I3 => done,
      I4 => next_out_8,
      I5 => \count_reg_reg[0]\(3),
      O => E(0)
    );
\FSM_onehot_state[4]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_2__4_n_0\
    );
\FSM_onehot_state[4]_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D6"
    )
        port map (
      I0 => next_state30_in(4),
      I1 => j(3),
      I2 => j(4),
      O => \FSM_onehot_state[4]_i_4__2_n_0\
    );
\FSM_onehot_state[4]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F9F69F6F6F6FF9"
    )
        port map (
      I0 => next_state6(3),
      I1 => j(3),
      I2 => j(2),
      I3 => p_0_in(4),
      I4 => \FSM_onehot_state_reg[4]_2\,
      I5 => \FSM_onehot_state_reg[4]_1\(0),
      O => \FSM_onehot_state[4]_i_5__1_n_0\
    );
\FSM_onehot_state[4]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5FFFF96FF96A5FF"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_0\(1),
      I1 => p_0_in(4),
      I2 => next_state6(1),
      I3 => \^fsm_onehot_state_reg[3]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__1_0\(0),
      I5 => \^fsm_onehot_state_reg[1]_0\(0),
      O => \FSM_onehot_state[4]_i_6__1_n_0\
    );
\FSM_onehot_state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0492920400000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_14__0_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__1_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__1_0\(4),
      I5 => \FSM_onehot_state[4]_i_4__2_0\,
      O => next_state30_in(4)
    );
\FSM_onehot_state[4]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_14__0_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__1_0\(3),
      O => next_state6(3)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__3_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__10_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__1\(0),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[0]_i_2__0_n_0\,
      I1 => \a_j_reg[2]_i_2__0_n_0\,
      I2 => Q(0),
      I3 => \a_j_reg[1]_i_2__0_n_0\,
      I4 => Q(1),
      I5 => \a_j_reg[3]_i_2__0_n_0\,
      O => D(0)
    );
\a_j_reg[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_9__0_n_0\,
      I1 => \a_j_reg[4]_i_11__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_7__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[0]_i_3__0_n_0\,
      O => \a_j_reg[0]_i_2__0_n_0\
    );
\a_j_reg[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(16),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(0),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(32),
      O => \a_j_reg[0]_i_3__0_n_0\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__1\(1),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[1]_i_2__0_n_0\,
      I1 => \a_j_reg[3]_i_2__0_n_0\,
      I2 => Q(0),
      I3 => \a_j_reg[2]_i_2__0_n_0\,
      I4 => Q(1),
      I5 => \a_j_reg[4]_i_2__0_n_0\,
      O => D(1)
    );
\a_j_reg[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_18__0_n_0\,
      I1 => \a_j_reg[4]_i_19__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_17__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[1]_i_3__0_n_0\,
      O => \a_j_reg[1]_i_2__0_n_0\
    );
\a_j_reg[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(17),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(1),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(33),
      O => \a_j_reg[1]_i_3__0_n_0\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[2]_i_1__1_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[2]_i_2__0_n_0\,
      I1 => \a_j_reg[4]_i_2__0_n_0\,
      I2 => Q(0),
      I3 => \a_j_reg[3]_i_2__0_n_0\,
      I4 => Q(1),
      I5 => \a_j_reg[4]_i_4__0_n_0\,
      O => D(2)
    );
\a_j_reg[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^a_j_reg[3]_i_3__1\,
      I1 => \a_j_reg[2]_0\,
      I2 => \^fsm_onehot_state_reg[3]_0\(0),
      I3 => \a_j_reg[2]_1\,
      I4 => \^fsm_onehot_state_reg[3]_0\(1),
      I5 => \a_j_reg[2]_2\,
      O => \a_j_reg[2]_i_1__1_n_0\
    );
\a_j_reg[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_14__0_n_0\,
      I1 => \a_j_reg[4]_i_15__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_13__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[2]_i_3__0_n_0\,
      O => \a_j_reg[2]_i_2__0_n_0\
    );
\a_j_reg[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(18),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(2),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(34),
      O => \a_j_reg[2]_i_3__0_n_0\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__1\(2),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[3]_i_2__0_n_0\,
      I1 => \a_j_reg[4]_i_4__0_n_0\,
      I2 => Q(0),
      I3 => \a_j_reg[4]_i_2__0_n_0\,
      I4 => Q(1),
      I5 => \a_j_reg[4]_i_3__0_n_0\,
      O => D(3)
    );
\a_j_reg[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_22__0_n_0\,
      I1 => \a_j_reg[4]_i_23__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_21__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[3]_i_3__0_n_0\,
      O => \a_j_reg[3]_i_2__0_n_0\
    );
\a_j_reg[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEBE2282"
    )
        port map (
      I0 => \a_j_reg[4]_i_1__1_1\,
      I1 => j(2),
      I2 => \^fsm_onehot_state_reg[3]_0\(0),
      I3 => \^fsm_onehot_state_reg[3]_0\(1),
      I4 => \a_j_reg[0]_i_1__1\,
      O => \^a_j_reg[3]_i_3__1\
    );
\a_j_reg[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(19),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(3),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(35),
      O => \a_j_reg[3]_i_3__0_n_0\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[4]_i_1__1_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(20),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(4),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(36),
      O => \a_j_reg[4]_i_11__0_n_0\
    );
\a_j_reg[4]_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38C7"
    )
        port map (
      I0 => j(2),
      I1 => \^fsm_onehot_state_reg[3]_0\(0),
      I2 => \^fsm_onehot_state_reg[3]_0\(1),
      I3 => j(3),
      O => \j_reg[3]_0\
    );
\a_j_reg[4]_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_8(34),
      I1 => \a_j_reg[0]_i_2__0_1\,
      I2 => a_in_8(2),
      I3 => \a_j_reg[0]_i_2__0_0\,
      I4 => a_in_8(18),
      O => \a_j_reg[4]_i_12__0_n_0\
    );
\a_j_reg[4]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => j(2),
      I1 => \^fsm_onehot_state_reg[3]_0\(0),
      I2 => \^fsm_onehot_state_reg[3]_0\(1),
      O => \j_reg[1]_0\
    );
\a_j_reg[4]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(26),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(10),
      O => \a_j_reg[4]_i_13__0_n_0\
    );
\a_j_reg[4]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(30),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(14),
      O => \a_j_reg[4]_i_14__0_n_0\
    );
\a_j_reg[4]_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(22),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(6),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(38),
      O => \a_j_reg[4]_i_15__0_n_0\
    );
\a_j_reg[4]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_8(33),
      I1 => \a_j_reg[0]_i_2__0_1\,
      I2 => a_in_8(1),
      I3 => \a_j_reg[0]_i_2__0_0\,
      I4 => a_in_8(17),
      O => \a_j_reg[4]_i_16__0_n_0\
    );
\a_j_reg[4]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(25),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(9),
      O => \a_j_reg[4]_i_17__0_n_0\
    );
\a_j_reg[4]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(29),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(13),
      O => \a_j_reg[4]_i_18__0_n_0\
    );
\a_j_reg[4]_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(21),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(5),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(37),
      O => \a_j_reg[4]_i_19__0_n_0\
    );
\a_j_reg[4]_i_19__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17C8E837"
    )
        port map (
      I0 => j(3),
      I1 => \^fsm_onehot_state_reg[3]_0\(1),
      I2 => \^fsm_onehot_state_reg[3]_0\(0),
      I3 => j(2),
      I4 => j(4),
      O => \j_reg[4]_0\
    );
\a_j_reg[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__0_n_0\,
      I1 => \a_j_reg[4]_i_3__0_n_0\,
      I2 => Q(0),
      I3 => \a_j_reg[4]_i_4__0_n_0\,
      I4 => Q(1),
      I5 => \a_j_reg[4]_i_5__0_n_0\,
      O => D(4)
    );
\a_j_reg[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0EFEFAFA0E0E0"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__1_n_0\,
      I1 => \a_j_reg[2]_0\,
      I2 => \^fsm_onehot_state_reg[3]_0\(0),
      I3 => \a_j_reg[2]_2\,
      I4 => \^fsm_onehot_state_reg[3]_0\(1),
      I5 => \a_j_reg[4]_0\,
      O => \a_j_reg[4]_i_1__1_n_0\
    );
\a_j_reg[4]_i_20__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_8(35),
      I1 => \a_j_reg[0]_i_2__0_1\,
      I2 => a_in_8(3),
      I3 => \a_j_reg[0]_i_2__0_0\,
      I4 => a_in_8(19),
      O => \a_j_reg[4]_i_20__0_n_0\
    );
\a_j_reg[4]_i_20__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1137E888"
    )
        port map (
      I0 => j(4),
      I1 => j(2),
      I2 => \^fsm_onehot_state_reg[3]_0\(0),
      I3 => \^fsm_onehot_state_reg[3]_0\(1),
      I4 => j(3),
      O => \j_reg[3]_1\
    );
\a_j_reg[4]_i_21__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(27),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(11),
      O => \a_j_reg[4]_i_21__0_n_0\
    );
\a_j_reg[4]_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(31),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(15),
      O => \a_j_reg[4]_i_22__0_n_0\
    );
\a_j_reg[4]_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(23),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(7),
      I3 => \a_j_reg[0]_i_2__0_1\,
      I4 => a_in_8(39),
      O => \a_j_reg[4]_i_23__0_n_0\
    );
\a_j_reg[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_6__0_n_0\,
      I1 => \a_j_reg[4]_i_7__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_9__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[4]_i_11__0_n_0\,
      O => \a_j_reg[4]_i_2__0_n_0\
    );
\a_j_reg[4]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0000CA"
    )
        port map (
      I0 => \a_j_reg[4]_i_1__1_0\,
      I1 => \a_j_reg[4]_i_1__1_1\,
      I2 => j(2),
      I3 => \^fsm_onehot_state_reg[3]_0\(0),
      I4 => \^fsm_onehot_state_reg[3]_0\(1),
      O => \a_j_reg[4]_i_2__1_n_0\
    );
\a_j_reg[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_12__0_n_0\,
      I1 => \a_j_reg[4]_i_13__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_14__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[4]_i_15__0_n_0\,
      O => \a_j_reg[4]_i_3__0_n_0\
    );
\a_j_reg[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_16__0_n_0\,
      I1 => \a_j_reg[4]_i_17__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_18__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[4]_i_19__0_n_0\,
      O => \a_j_reg[4]_i_4__0_n_0\
    );
\a_j_reg[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_20__0_n_0\,
      I1 => \a_j_reg[4]_i_21__0_n_0\,
      I2 => \a_j_reg[0]_i_1__0_0\,
      I3 => \a_j_reg[4]_i_22__0_n_0\,
      I4 => \a_j_reg[0]_i_1__0_1\,
      I5 => \a_j_reg[4]_i_23__0_n_0\,
      O => \a_j_reg[4]_i_5__0_n_0\
    );
\a_j_reg[4]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_8(32),
      I1 => \a_j_reg[0]_i_2__0_1\,
      I2 => a_in_8(0),
      I3 => \a_j_reg[0]_i_2__0_0\,
      I4 => a_in_8(16),
      O => \a_j_reg[4]_i_6__0_n_0\
    );
\a_j_reg[4]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(24),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(8),
      O => \a_j_reg[4]_i_7__0_n_0\
    );
\a_j_reg[4]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(28),
      I1 => \a_j_reg[0]_i_2__0_0\,
      I2 => a_in_8(12),
      O => \a_j_reg[4]_i_9__0_n_0\
    );
\acks_out_reg_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(4),
      I1 => \count_reg_reg[0]\(1),
      I2 => \count_reg_reg[0]\(0),
      I3 => \count_reg_reg[0]\(2),
      I4 => done,
      I5 => valid,
      O => \FSM_onehot_state_reg[4]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__3_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      O => \count_reg[1]_i_1__3_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__3_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count_reg[2]_i_1__3_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__3_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[3]\,
      O => \count_reg[3]_i_1__3_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__3_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count_reg[4]_i_1__3_n_0\
    );
\count_reg[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_1\,
      I1 => \FSM_onehot_state[4]_i_4__2_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__1_n_0\,
      I3 => \FSM_onehot_state[4]_i_6__1_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(0)
    );
\j_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_0\(0),
      O => \j_reg[0]_i_1_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_0\(1)
    );
\j_reg[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_0\(0),
      I1 => \^fsm_onehot_state_reg[3]_0\(1),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[1]_i_1__1_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(2)
    );
\j_reg[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_0\(1),
      I1 => \^fsm_onehot_state_reg[3]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => j(2),
      O => \j_reg[2]_i_1__1_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(3)
    );
\j_reg[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => j(2),
      I1 => \^fsm_onehot_state_reg[3]_0\(0),
      I2 => \^fsm_onehot_state_reg[3]_0\(1),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => j(3),
      O => \j_reg[3]_i_1__1_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__1_n_0\,
      G => \j__0\,
      GE => '1',
      Q => j(4)
    );
\j_reg[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => j(3),
      I1 => \^fsm_onehot_state_reg[3]_0\(1),
      I2 => \^fsm_onehot_state_reg[3]_0\(0),
      I3 => j(2),
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => j(4),
      O => \j_reg[4]_i_1__1_n_0\
    );
\j_reg[4]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j__0\
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => valid
    );
\valid_aux_reg_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \FSM_onehot_state[1]_i_2__1_n_0\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[4]_i_16__1_0\ : out STD_LOGIC;
    \a_j_reg[4]_i_12__1\ : out STD_LOGIC;
    \a_j_reg[4]_i_12__1_0\ : out STD_LOGIC;
    \a_j_reg[4]_i_12__1_1\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[4]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[0]_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__1_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__1_1\ : in STD_LOGIC;
    a_in_7 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \a_j_reg[3]_i_2__1\ : in STD_LOGIC;
    \a_j_reg[0]_i_2__1_0\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_7 : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_2\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_5__2_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state[4]_i_4__4_0\ : in STD_LOGIC;
    \a_j_reg[0]_1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2_1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2_2\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2_3\ : in STD_LOGIC;
    complete_tick : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_7__2\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\ is
  signal \FSM_onehot_state[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2__6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^fsm_onehot_state_reg[3]_2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_3__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \^a_j_reg[4]_i_12__1\ : STD_LOGIC;
  signal \^a_j_reg[4]_i_12__1_0\ : STD_LOGIC;
  signal \^a_j_reg[4]_i_12__1_1\ : STD_LOGIC;
  signal \a_j_reg[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_14__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_15__1_n_0\ : STD_LOGIC;
  signal \^a_j_reg[4]_i_16__1_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_17__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_18__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_9__1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC;
  signal \j_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \j_reg_n_0_[3]\ : STD_LOGIC;
  signal \j_reg_n_0_[4]\ : STD_LOGIC;
  signal next_state3 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal next_state30_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal next_state6 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal valid : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__5\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__6\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__6\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_10__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_14__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__2\ : label is "soft_lutpair105";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_2__2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_3__1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_3__2\ : label is "soft_lutpair108";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_3__1\ : label is "soft_lutpair103";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_3__1\ : label is "soft_lutpair104";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_10__0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_13__2\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_14__2\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_15__1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_17__1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_18__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_9__1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_9__2\ : label is "soft_lutpair108";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__1\ : label is "soft_lutpair115";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__5\ : label is "soft_lutpair115";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__5\ : label is "soft_lutpair110";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__5\ : label is "soft_lutpair110";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__2\ : label is "soft_lutpair116";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__2\ : label is "soft_lutpair112";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__2\ : label is "soft_lutpair106";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__2\ : label is "soft_lutpair106";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__2\ : label is "soft_lutpair114";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \valid_aux_reg_i_1__2\ : label is "soft_lutpair116";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  \FSM_onehot_state_reg[3]_2\(2 downto 0) <= \^fsm_onehot_state_reg[3]_2\(2 downto 0);
  \a_j_reg[4]_i_12__1\ <= \^a_j_reg[4]_i_12__1\;
  \a_j_reg[4]_i_12__1_0\ <= \^a_j_reg[4]_i_12__1_0\;
  \a_j_reg[4]_i_12__1_1\ <= \^a_j_reg[4]_i_12__1_1\;
  \a_j_reg[4]_i_16__1_0\ <= \^a_j_reg[4]_i_16__1_0\;
\FSM_onehot_state[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_2__2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1__5_n_0\
    );
\FSM_onehot_state[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \count_reg_reg[0]\(0),
      I1 => \count_reg_reg[0]\(2),
      I2 => valid,
      I3 => complete_tick,
      I4 => \count_reg_reg[0]\(3),
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state[1]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      O => \FSM_onehot_state[1]_i_2__2_n_0\
    );
\FSM_onehot_state[3]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_6__2_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__2_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__4_n_0\,
      I4 => \FSM_onehot_state_reg[3]_3\,
      O => \FSM_onehot_state[3]_i_1__5_n_0\
    );
\FSM_onehot_state[3]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => \FSM_onehot_state_reg[2]_0\(1)
    );
\FSM_onehot_state[4]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(2),
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \j_reg_n_0_[3]\,
      O => next_state3(3)
    );
\FSM_onehot_state[4]_i_11__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5__2_0\(3),
      I1 => \FSM_onehot_state[4]_i_16_n_0\,
      I2 => \^fsm_onehot_state_reg[1]_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__2_0\(4),
      O => p_0_in(4)
    );
\FSM_onehot_state[4]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(0),
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(2),
      O => next_state3(2)
    );
\FSM_onehot_state[4]_i_15__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5__2_0\(0),
      I2 => \^fsm_onehot_state_reg[1]_0\(1),
      I3 => \FSM_onehot_state[4]_i_5__2_0\(1),
      O => next_state6(1)
    );
\FSM_onehot_state[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF757751551011"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => \FSM_onehot_state[4]_i_5__2_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__2_0\(1),
      I5 => \FSM_onehot_state[4]_i_5__2_0\(2),
      O => \FSM_onehot_state[4]_i_16_n_0\
    );
\FSM_onehot_state[4]_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__6_n_0\,
      I1 => \FSM_onehot_state_reg[3]_3\,
      I2 => \FSM_onehot_state[4]_i_4__4_n_0\,
      I3 => \FSM_onehot_state[4]_i_5__2_n_0\,
      I4 => \FSM_onehot_state[4]_i_6__2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1__11_n_0\
    );
\FSM_onehot_state[4]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \count_reg_reg[0]\(1),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(2),
      I3 => done,
      I4 => next_out_7,
      I5 => \count_reg_reg[0]\(3),
      O => E(0)
    );
\FSM_onehot_state[4]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_2__6_n_0\
    );
\FSM_onehot_state[4]_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDDDDD56666666"
    )
        port map (
      I0 => next_state30_in(4),
      I1 => \j_reg_n_0_[3]\,
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \^fsm_onehot_state_reg[3]_2\(1),
      I4 => \^fsm_onehot_state_reg[3]_2\(2),
      I5 => \j_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_4__4_n_0\
    );
\FSM_onehot_state[4]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"696FFFF9FFF9666F"
    )
        port map (
      I0 => next_state6(3),
      I1 => next_state3(3),
      I2 => p_0_in(4),
      I3 => \FSM_onehot_state_reg[4]_2\,
      I4 => \FSM_onehot_state_reg[4]_1\(0),
      I5 => next_state3(2),
      O => \FSM_onehot_state[4]_i_5__2_n_0\
    );
\FSM_onehot_state[4]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6969FFA5FFFFA5"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(1),
      I1 => p_0_in(4),
      I2 => next_state6(1),
      I3 => \FSM_onehot_state[4]_i_5__2_0\(0),
      I4 => \^fsm_onehot_state_reg[1]_0\(0),
      I5 => \^fsm_onehot_state_reg[3]_2\(0),
      O => \FSM_onehot_state[4]_i_6__2_n_0\
    );
\FSM_onehot_state[4]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0492920400000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_16_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__2_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__2_0\(4),
      I5 => \FSM_onehot_state[4]_i_4__4_0\,
      O => next_state30_in(4)
    );
\FSM_onehot_state[4]_i_9__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_16_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__2_0\(3),
      O => next_state6(3)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__5_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__5_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__11_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[0]_i_1__2_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFA0A0C0CFA0A"
    )
        port map (
      I0 => \^a_j_reg[4]_i_16__1_0\,
      I1 => \a_j_reg[0]_i_2__1_n_0\,
      I2 => Q(0),
      I3 => \a_j_reg[1]_i_2__1_n_0\,
      I4 => Q(1),
      I5 => \a_j_reg[0]_0\,
      O => D(0)
    );
\a_j_reg[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \a_j_reg[0]_i_2__2_n_0\,
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \a_j_reg[0]_i_3__2_n_0\,
      I3 => \^fsm_onehot_state_reg[3]_2\(0),
      I4 => \a_j_reg[0]_1\,
      O => \a_j_reg[0]_i_1__2_n_0\
    );
\a_j_reg[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__1_0\,
      I1 => \a_j_reg[0]_i_3__1_n_0\,
      I2 => \a_j_reg[4]_i_14__1_n_0\,
      I3 => \a_j_reg[0]_i_1__1_1\,
      I4 => \a_j_reg[4]_i_13__1_n_0\,
      O => \a_j_reg[0]_i_2__1_n_0\
    );
\a_j_reg[0]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CA00AC"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__2_0\,
      I1 => \a_j_reg[0]_i_1__2_1\,
      I2 => \^fsm_onehot_state_reg[3]_2\(2),
      I3 => \^fsm_onehot_state_reg[3]_2\(1),
      I4 => \^fsm_onehot_state_reg[3]_2\(0),
      O => \a_j_reg[0]_i_2__2_n_0\
    );
\a_j_reg[0]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => a_in_7(0),
      I1 => \a_j_reg[0]_i_2__1_0\,
      I2 => a_in_7(32),
      I3 => \a_j_reg[3]_i_2__1\,
      I4 => a_in_7(16),
      O => \a_j_reg[0]_i_3__1_n_0\
    );
\a_j_reg[0]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__2_2\,
      I1 => \^fsm_onehot_state_reg[3]_2\(2),
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \^fsm_onehot_state_reg[3]_2\(1),
      I4 => \a_j_reg[0]_i_1__2_3\,
      O => \a_j_reg[0]_i_3__2_n_0\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__2\(0),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^a_j_reg[4]_i_16__1_0\,
      I1 => \^a_j_reg[4]_i_12__1\,
      I2 => Q(0),
      I3 => \a_j_reg[1]_i_2__1_n_0\,
      I4 => Q(1),
      I5 => \a_j_reg[0]_0\,
      O => D(1)
    );
\a_j_reg[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__1_0\,
      I1 => \a_j_reg[1]_i_3__1_n_0\,
      I2 => \a_j_reg[4]_i_9__1_n_0\,
      I3 => \a_j_reg[0]_i_1__1_1\,
      I4 => \a_j_reg[4]_i_8__0_n_0\,
      O => \a_j_reg[1]_i_2__1_n_0\
    );
\a_j_reg[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => a_in_7(1),
      I1 => \a_j_reg[0]_i_2__1_0\,
      I2 => a_in_7(33),
      I3 => \a_j_reg[3]_i_2__1\,
      I4 => a_in_7(17),
      O => \a_j_reg[1]_i_3__1_n_0\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__2\(1),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__1_0\,
      I1 => \a_j_reg[2]_i_3__1_n_0\,
      I2 => \a_j_reg[4]_i_17__1_n_0\,
      I3 => \a_j_reg[0]_i_1__1_1\,
      I4 => \a_j_reg[4]_i_16__1_n_0\,
      O => \^a_j_reg[4]_i_16__1_0\
    );
\a_j_reg[2]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => a_in_7(2),
      I1 => \a_j_reg[0]_i_2__1_0\,
      I2 => a_in_7(34),
      I3 => \a_j_reg[3]_i_2__1\,
      I4 => a_in_7(18),
      O => \a_j_reg[2]_i_3__1_n_0\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__2\(2),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^a_j_reg[4]_i_12__1\,
      I1 => \^a_j_reg[4]_i_12__1_0\,
      I2 => Q(0),
      I3 => \a_j_reg[0]_0\,
      I4 => Q(1),
      I5 => \^a_j_reg[4]_i_12__1_1\,
      O => D(2)
    );
\a_j_reg[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_7(3),
      I1 => a_in_7(19),
      I2 => \a_j_reg[0]_i_1__1_0\,
      I3 => a_in_7(27),
      I4 => \a_j_reg[3]_i_2__1\,
      I5 => a_in_7(11),
      O => \count_reg_reg[3]\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__2\(3),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAA0CAA"
    )
        port map (
      I0 => a_in_7(17),
      I1 => a_in_7(33),
      I2 => \a_j_reg[0]_i_2__1_0\,
      I3 => \a_j_reg[3]_i_2__1\,
      I4 => a_in_7(1),
      O => \a_j_reg[4]_i_10__0_n_0\
    );
\a_j_reg[4]_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => a_in_7(20),
      I1 => a_in_7(28),
      I2 => \a_j_reg[3]_i_2__1\,
      I3 => \a_j_reg[0]_i_1__1_0\,
      I4 => a_in_7(4),
      I5 => a_in_7(12),
      O => \a_j_reg[4]_i_13__1_n_0\
    );
\a_j_reg[4]_i_13__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(2),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \^fsm_onehot_state_reg[3]_2\(1),
      I3 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_0\
    );
\a_j_reg[4]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_7(24),
      I1 => \a_j_reg[3]_i_2__1\,
      I2 => a_in_7(8),
      O => \a_j_reg[4]_i_14__1_n_0\
    );
\a_j_reg[4]_i_14__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"91EC6E13"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \^fsm_onehot_state_reg[3]_2\(2),
      I4 => \j_reg_n_0_[4]\,
      O => \j_reg[4]_0\
    );
\a_j_reg[4]_i_15__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAA0CAA"
    )
        port map (
      I0 => a_in_7(16),
      I1 => a_in_7(32),
      I2 => \a_j_reg[0]_i_2__1_0\,
      I3 => \a_j_reg[3]_i_2__1\,
      I4 => a_in_7(0),
      O => \a_j_reg[4]_i_15__1_n_0\
    );
\a_j_reg[4]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => a_in_7(22),
      I1 => a_in_7(30),
      I2 => \a_j_reg[3]_i_2__1\,
      I3 => \a_j_reg[0]_i_1__1_0\,
      I4 => a_in_7(6),
      I5 => a_in_7(14),
      O => \a_j_reg[4]_i_16__1_n_0\
    );
\a_j_reg[4]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_7(26),
      I1 => \a_j_reg[3]_i_2__1\,
      I2 => a_in_7(10),
      O => \a_j_reg[4]_i_17__1_n_0\
    );
\a_j_reg[4]_i_18__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAA0CAA"
    )
        port map (
      I0 => a_in_7(18),
      I1 => a_in_7(34),
      I2 => \a_j_reg[0]_i_2__1_0\,
      I3 => \a_j_reg[3]_i_2__1\,
      I4 => a_in_7(2),
      O => \a_j_reg[4]_i_18__1_n_0\
    );
\a_j_reg[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => \a_j_reg[4]_i_8__0_n_0\,
      I1 => \a_j_reg[4]_i_9__1_n_0\,
      I2 => \a_j_reg[4]_i_10__0_n_0\,
      I3 => \a_j_reg[0]_i_1__1_0\,
      I4 => \a_j_reg[0]_i_1__1_1\,
      O => \^a_j_reg[4]_i_12__1_1\
    );
\a_j_reg[4]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => \a_j_reg[4]_i_13__1_n_0\,
      I1 => \a_j_reg[4]_i_14__1_n_0\,
      I2 => \a_j_reg[4]_i_15__1_n_0\,
      I3 => \a_j_reg[0]_i_1__1_0\,
      I4 => \a_j_reg[0]_i_1__1_1\,
      O => \^a_j_reg[4]_i_12__1\
    );
\a_j_reg[4]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => \a_j_reg[4]_i_16__1_n_0\,
      I1 => \a_j_reg[4]_i_17__1_n_0\,
      I2 => \a_j_reg[4]_i_18__1_n_0\,
      I3 => \a_j_reg[0]_i_1__1_0\,
      I4 => \a_j_reg[0]_i_1__1_1\,
      O => \^a_j_reg[4]_i_12__1_0\
    );
\a_j_reg[4]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_7(11),
      I1 => a_in_7(27),
      I2 => a_in_7(19),
      I3 => a_in_7(3),
      I4 => \a_j_reg[0]_i_1__1_0\,
      I5 => \a_j_reg[3]_i_2__1\,
      O => \FSM_onehot_state_reg[3]_0\
    );
\a_j_reg[4]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => a_in_7(23),
      I1 => a_in_7(31),
      I2 => \a_j_reg[3]_i_2__1\,
      I3 => \a_j_reg[0]_i_1__1_0\,
      I4 => a_in_7(7),
      I5 => a_in_7(15),
      O => \FSM_onehot_state_reg[3]_1\
    );
\a_j_reg[4]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => a_in_7(21),
      I1 => a_in_7(29),
      I2 => \a_j_reg[3]_i_2__1\,
      I3 => \a_j_reg[0]_i_1__1_0\,
      I4 => a_in_7(5),
      I5 => a_in_7(13),
      O => \a_j_reg[4]_i_8__0_n_0\
    );
\a_j_reg[4]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_7(25),
      I1 => \a_j_reg[3]_i_2__1\,
      I2 => a_in_7(9),
      O => \a_j_reg[4]_i_9__1_n_0\
    );
\a_j_reg[4]_i_9__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(2),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \^fsm_onehot_state_reg[3]_2\(1),
      O => \j_reg[1]_0\
    );
\acks_out_reg_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(4),
      I1 => \count_reg_reg[0]\(1),
      I2 => \count_reg_reg[0]\(0),
      I3 => \count_reg_reg[0]\(2),
      I4 => done,
      I5 => valid,
      O => \FSM_onehot_state_reg[4]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__1_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__5_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      O => \count_reg[1]_i_1__5_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__5_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count_reg[2]_i_1__5_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__5_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[3]\,
      O => \count_reg[3]_i_1__5_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__5_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count_reg[4]_i_1__5_n_0\
    );
\count_reg[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_3\,
      I1 => \FSM_onehot_state[4]_i_4__4_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__2_n_0\,
      I3 => \FSM_onehot_state[4]_i_6__2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__0_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_2\(0)
    );
\j_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      O => \j_reg[0]_i_1__0_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__2_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_2\(1)
    );
\j_reg[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(0),
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[1]_i_1__2_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__2_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_2\(2)
    );
\j_reg[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(1),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^fsm_onehot_state_reg[3]_2\(2),
      O => \j_reg[2]_i_1__2_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__2_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[3]\
    );
\j_reg[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(2),
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_i_1__2_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__2_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[4]\
    );
\j_reg[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \^fsm_onehot_state_reg[3]_2\(1),
      I3 => \^fsm_onehot_state_reg[3]_2\(2),
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \j_reg_n_0_[4]\,
      O => \j_reg[4]_i_1__2_n_0\
    );
\j_reg[4]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => j
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => valid
    );
\valid_aux_reg_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__6_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\ is
  port (
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \a_j_reg[3]_i_3__2_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[4]_0\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[3]_i_1__2_0\ : in STD_LOGIC;
    a_in_6 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \a_j_reg[0]_i_2__2\ : in STD_LOGIC;
    \a_j_reg[0]_i_2__2_0\ : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_6 : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_5__3_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \a_j_reg[0]_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_2\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_7__3\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\ is
  signal \FSM_onehot_state[1]_i_1__7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2__8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^fsm_onehot_state_reg[3]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_1\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_2__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_3__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_3__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2__7_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_2__6_n_0\ : STD_LOGIC;
  signal \^a_j_reg[3]_i_3__2_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_3__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_11__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_12__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__7_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_3__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_6__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_8__1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__7_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__7_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__7_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__7_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \^count_reg_reg[2]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC;
  signal \j_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \j_reg_n_0_[3]\ : STD_LOGIC;
  signal \j_reg_n_0_[4]\ : STD_LOGIC;
  signal next_state3 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal next_state30_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal next_state6 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal valid : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__7\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__8\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__8\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_10__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_14__2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__6\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__3\ : label is "soft_lutpair84";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_1__3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_2__3\ : label is "soft_lutpair88";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_1__2\ : label is "soft_lutpair91";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_1__2\ : label is "soft_lutpair91";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_14__3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_15__2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_8__2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_9__3\ : label is "soft_lutpair89";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__3\ : label is "soft_lutpair93";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__7\ : label is "soft_lutpair93";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__7\ : label is "soft_lutpair85";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__7\ : label is "soft_lutpair85";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__3\ : label is "soft_lutpair95";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[0]_i_1__1\ : label is "soft_lutpair94";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__3\ : label is "soft_lutpair94";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__3\ : label is "soft_lutpair86";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__3\ : label is "soft_lutpair86";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__3\ : label is "soft_lutpair92";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \valid_aux_reg_i_1__3\ : label is "soft_lutpair95";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  \FSM_onehot_state_reg[3]_0\ <= \^fsm_onehot_state_reg[3]_0\;
  \FSM_onehot_state_reg[3]_1\ <= \^fsm_onehot_state_reg[3]_1\;
  \FSM_onehot_state_reg[3]_2\(2 downto 0) <= \^fsm_onehot_state_reg[3]_2\(2 downto 0);
  \a_j_reg[3]_i_3__2_0\ <= \^a_j_reg[3]_i_3__2_0\;
  \count_reg_reg[2]\ <= \^count_reg_reg[2]\;
\FSM_onehot_state[1]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_2__3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1__7_n_0\
    );
\FSM_onehot_state[1]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(0),
      I1 => \count_reg_reg[0]_0\(2),
      I2 => valid,
      I3 => \FSM_onehot_state_reg[1]_1\,
      I4 => \count_reg_reg[0]_0\(3),
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state[1]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      O => \FSM_onehot_state[1]_i_2__3_n_0\
    );
\FSM_onehot_state[3]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_6__3_n_0\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \FSM_onehot_state[4]_i_4__6_n_0\,
      I5 => \FSM_onehot_state_reg[3]_3\,
      O => \FSM_onehot_state[3]_i_1__7_n_0\
    );
\FSM_onehot_state[3]_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(2),
      I1 => valid,
      O => \FSM_onehot_state_reg[2]_0\(1)
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A956A956A6A95"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_2\(2),
      I2 => \^fsm_onehot_state_reg[3]_2\(1),
      I3 => next_state6(3),
      I4 => \FSM_onehot_state_reg[3]_4\,
      I5 => p_0_in(4),
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69696996"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(1),
      I1 => \^fsm_onehot_state_reg[3]_2\(2),
      I2 => \FSM_onehot_state_reg[4]_1\(0),
      I3 => \FSM_onehot_state_reg[4]_2\,
      I4 => p_0_in(4),
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(1),
      I1 => \^fsm_onehot_state_reg[3]_2\(2),
      I2 => \j_reg_n_0_[3]\,
      O => next_state3(3)
    );
\FSM_onehot_state[4]_i_11__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5__3_0\(3),
      I1 => \FSM_onehot_state[4]_i_16__0_n_0\,
      I2 => \^fsm_onehot_state_reg[1]_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__3_0\(4),
      O => p_0_in(4)
    );
\FSM_onehot_state[4]_i_14__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(2),
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      O => next_state3(2)
    );
\FSM_onehot_state[4]_i_15__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5__3_0\(0),
      I2 => \^fsm_onehot_state_reg[1]_0\(1),
      I3 => \FSM_onehot_state[4]_i_5__3_0\(1),
      O => next_state6(1)
    );
\FSM_onehot_state[4]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF757751551011"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => \FSM_onehot_state[4]_i_5__3_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__3_0\(1),
      I5 => \FSM_onehot_state[4]_i_5__3_0\(2),
      O => \FSM_onehot_state[4]_i_16__0_n_0\
    );
\FSM_onehot_state[4]_i_1__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__8_n_0\,
      I1 => \FSM_onehot_state_reg[3]_3\,
      I2 => \FSM_onehot_state[4]_i_4__6_n_0\,
      I3 => \FSM_onehot_state[4]_i_5__3_n_0\,
      I4 => \FSM_onehot_state[4]_i_6__3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1__12_n_0\
    );
\FSM_onehot_state[4]_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(1),
      I1 => \count_reg_reg[0]_0\(0),
      I2 => \count_reg_reg[0]_0\(2),
      I3 => done,
      I4 => next_out_6,
      I5 => \count_reg_reg[0]_0\(3),
      O => E(0)
    );
\FSM_onehot_state[4]_i_2__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_2__8_n_0\
    );
\FSM_onehot_state[4]_i_4__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD5666"
    )
        port map (
      I0 => next_state30_in(4),
      I1 => \j_reg_n_0_[3]\,
      I2 => \^fsm_onehot_state_reg[3]_2\(2),
      I3 => \^fsm_onehot_state_reg[3]_2\(1),
      I4 => \j_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_4__6_n_0\
    );
\FSM_onehot_state[4]_i_5__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"696FFFF9FFF9666F"
    )
        port map (
      I0 => next_state6(3),
      I1 => next_state3(3),
      I2 => p_0_in(4),
      I3 => \FSM_onehot_state_reg[4]_2\,
      I4 => \FSM_onehot_state_reg[4]_1\(0),
      I5 => next_state3(2),
      O => \FSM_onehot_state[4]_i_5__3_n_0\
    );
\FSM_onehot_state[4]_i_6__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CFFFF69FF693CFF"
    )
        port map (
      I0 => p_0_in(4),
      I1 => next_state6(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(1),
      I3 => \^fsm_onehot_state_reg[3]_2\(0),
      I4 => \FSM_onehot_state[4]_i_5__3_0\(0),
      I5 => \^fsm_onehot_state_reg[1]_0\(0),
      O => \FSM_onehot_state[4]_i_6__3_n_0\
    );
\FSM_onehot_state[4]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0492920400000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_16__0_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__3_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__3_0\(4),
      I5 => \FSM_onehot_state_reg[3]_4\,
      O => next_state30_in(4)
    );
\FSM_onehot_state[4]_i_9__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_16__0_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__3_0\(3),
      O => next_state6(3)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__7_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__7_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__12_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[0]_i_1__3_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \a_j_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \a_j_reg[0]_i_2__3_n_0\,
      I3 => \^fsm_onehot_state_reg[3]_2\(1),
      I4 => \a_j_reg[0]_i_3__3_n_0\,
      O => \a_j_reg[0]_i_1__3_n_0\
    );
\a_j_reg[0]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC0000AC"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__3_0\,
      I1 => \a_j_reg[0]_i_1__3_1\,
      I2 => \^fsm_onehot_state_reg[3]_2\(2),
      I3 => \^fsm_onehot_state_reg[3]_2\(0),
      I4 => \^fsm_onehot_state_reg[3]_2\(1),
      O => \a_j_reg[0]_i_2__3_n_0\
    );
\a_j_reg[0]_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFBA208"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__3_2\,
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \^fsm_onehot_state_reg[3]_2\(2),
      I4 => \a_j_reg[0]_i_1__3_3\,
      O => \a_j_reg[0]_i_3__3_n_0\
    );
\a_j_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_6(0),
      I1 => a_in_6(16),
      I2 => \a_j_reg[0]_i_2__2\,
      I3 => a_in_6(24),
      I4 => \a_j_reg[0]_i_2__2_0\,
      I5 => a_in_6(8),
      O => \count_reg_reg[0]\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__3\(0),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^a_j_reg[3]_i_3__2_0\,
      I1 => Q(0),
      I2 => \a_j_reg[2]_i_2__7_n_0\,
      O => D(0)
    );
\a_j_reg[1]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA50EEEEFA504444"
    )
        port map (
      I0 => Q(1),
      I1 => \a_j_reg[1]_i_3__2_n_0\,
      I2 => \a_j_reg[4]_i_12__2_n_0\,
      I3 => \a_j_reg[4]_i_10__1_n_0\,
      I4 => \a_j_reg[3]_i_1__2_0\,
      I5 => \a_j_reg[3]_i_3__2_n_0\,
      O => \^a_j_reg[3]_i_3__2_0\
    );
\a_j_reg[1]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_6(1),
      I1 => a_in_6(17),
      I2 => \a_j_reg[0]_i_2__2\,
      I3 => a_in_6(25),
      I4 => \a_j_reg[0]_i_2__2_0\,
      I5 => a_in_6(9),
      O => \a_j_reg[1]_i_3__2_n_0\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__3\(1),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[2]_i_2__7_n_0\,
      I1 => Q(0),
      I2 => \a_j_reg[3]_i_2__6_n_0\,
      O => D(1)
    );
\a_j_reg[2]_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => Q(1),
      I1 => \a_j_reg[4]_i_6__2_n_0\,
      I2 => \^fsm_onehot_state_reg[3]_0\,
      I3 => \^fsm_onehot_state_reg[3]_1\,
      I4 => \a_j_reg[3]_i_1__2_0\,
      I5 => \^count_reg_reg[2]\,
      O => \a_j_reg[2]_i_2__7_n_0\
    );
\a_j_reg[2]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_6(2),
      I1 => a_in_6(18),
      I2 => \a_j_reg[0]_i_2__2\,
      I3 => a_in_6(26),
      I4 => \a_j_reg[0]_i_2__2_0\,
      I5 => a_in_6(10),
      O => \^count_reg_reg[2]\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__3\(2),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[3]_i_2__6_n_0\,
      I1 => Q(0),
      I2 => \a_j_reg[4]_i_2__7_n_0\,
      O => D(2)
    );
\a_j_reg[3]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD88F5F5DD88A0A0"
    )
        port map (
      I0 => Q(1),
      I1 => \a_j_reg[4]_i_11__2_n_0\,
      I2 => \a_j_reg[4]_i_12__2_n_0\,
      I3 => \a_j_reg[4]_i_10__1_n_0\,
      I4 => \a_j_reg[3]_i_1__2_0\,
      I5 => \a_j_reg[3]_i_3__2_n_0\,
      O => \a_j_reg[3]_i_2__6_n_0\
    );
\a_j_reg[3]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_6(3),
      I1 => a_in_6(19),
      I2 => \a_j_reg[0]_i_2__2\,
      I3 => a_in_6(27),
      I4 => \a_j_reg[0]_i_2__2_0\,
      I5 => a_in_6(11),
      O => \a_j_reg[3]_i_3__2_n_0\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__3\(3),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[0]_i_2__2_0\,
      I1 => a_in_6(7),
      I2 => a_in_6(23),
      I3 => \a_j_reg[0]_i_2__2\,
      I4 => a_in_6(15),
      O => \a_j_reg[4]_i_10__1_n_0\
    );
\a_j_reg[4]_i_11__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_6(9),
      I1 => a_in_6(25),
      I2 => a_in_6(17),
      I3 => a_in_6(1),
      I4 => \a_j_reg[0]_i_2__2\,
      I5 => \a_j_reg[0]_i_2__2_0\,
      O => \a_j_reg[4]_i_11__2_n_0\
    );
\a_j_reg[4]_i_12__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => a_in_6(21),
      I1 => a_in_6(29),
      I2 => \a_j_reg[0]_i_2__2_0\,
      I3 => \a_j_reg[0]_i_2__2\,
      I4 => a_in_6(5),
      I5 => a_in_6(13),
      O => \a_j_reg[4]_i_12__2_n_0\
    );
\a_j_reg[4]_i_14__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(0),
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      O => \j_reg[1]_0\
    );
\a_j_reg[4]_i_15__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(1),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \^fsm_onehot_state_reg[3]_2\(2),
      O => \j_reg[2]_0\
    );
\a_j_reg[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BBB8B8B8B8B8"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__7_n_0\,
      I1 => Q(0),
      I2 => \a_j_reg[4]_i_3__2_n_0\,
      I3 => \a_j_reg[4]_i_4__2_n_0\,
      I4 => Q(2),
      I5 => Q(1),
      O => D(3)
    );
\a_j_reg[4]_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFA5050EE44EE44"
    )
        port map (
      I0 => Q(1),
      I1 => \^fsm_onehot_state_reg[3]_0\,
      I2 => \a_j_reg[4]_i_6__2_n_0\,
      I3 => \^fsm_onehot_state_reg[3]_1\,
      I4 => \a_j_reg[4]_i_8__1_n_0\,
      I5 => \a_j_reg[3]_i_1__2_0\,
      O => \a_j_reg[4]_i_2__7_n_0\
    );
\a_j_reg[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2C8F8323208C80"
    )
        port map (
      I0 => \a_j_reg[4]_i_10__1_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \a_j_reg[4]_i_11__2_n_0\,
      I4 => Q(2),
      I5 => \a_j_reg[4]_i_12__2_n_0\,
      O => \a_j_reg[4]_i_3__2_n_0\
    );
\a_j_reg[4]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_6(11),
      I1 => a_in_6(27),
      I2 => a_in_6(19),
      I3 => a_in_6(3),
      I4 => \a_j_reg[0]_i_2__2\,
      I5 => \a_j_reg[0]_i_2__2_0\,
      O => \a_j_reg[4]_i_4__2_n_0\
    );
\a_j_reg[4]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => a_in_6(20),
      I1 => a_in_6(28),
      I2 => \a_j_reg[0]_i_2__2_0\,
      I3 => \a_j_reg[0]_i_2__2\,
      I4 => a_in_6(4),
      I5 => a_in_6(12),
      O => \^fsm_onehot_state_reg[3]_0\
    );
\a_j_reg[4]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_6(8),
      I1 => a_in_6(24),
      I2 => a_in_6(16),
      I3 => a_in_6(0),
      I4 => \a_j_reg[0]_i_2__2\,
      I5 => \a_j_reg[0]_i_2__2_0\,
      O => \a_j_reg[4]_i_6__2_n_0\
    );
\a_j_reg[4]_i_7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[0]_i_2__2_0\,
      I1 => a_in_6(6),
      I2 => a_in_6(22),
      I3 => \a_j_reg[0]_i_2__2\,
      I4 => a_in_6(14),
      O => \^fsm_onehot_state_reg[3]_1\
    );
\a_j_reg[4]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_6(10),
      I1 => a_in_6(26),
      I2 => a_in_6(18),
      I3 => a_in_6(2),
      I4 => \a_j_reg[0]_i_2__2\,
      I5 => \a_j_reg[0]_i_2__2_0\,
      O => \a_j_reg[4]_i_8__1_n_0\
    );
\a_j_reg[4]_i_8__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"897E7681"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \^fsm_onehot_state_reg[3]_2\(2),
      I4 => \j_reg_n_0_[4]\,
      O => \j_reg[4]_0\
    );
\a_j_reg[4]_i_9__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E31C"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(2),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \^fsm_onehot_state_reg[3]_2\(1),
      I3 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_0\
    );
\acks_out_reg_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(4),
      I1 => \count_reg_reg[0]_0\(1),
      I2 => \count_reg_reg[0]_0\(0),
      I3 => \count_reg_reg[0]_0\(2),
      I4 => done,
      I5 => valid,
      O => \FSM_onehot_state_reg[4]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__3_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__3_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__7_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \count_reg[1]_i_1__7_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__7_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count_reg[2]_i_1__7_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__7_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[3]\,
      O => \count_reg[3]_i_1__7_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__7_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count_reg[4]_i_1__7_n_0\
    );
\count_reg[4]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_3\,
      I1 => \FSM_onehot_state[4]_i_4__6_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__3_n_0\,
      I3 => \FSM_onehot_state[4]_i_6__3_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__1_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_2\(0)
    );
\j_reg[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      O => \j_reg[0]_i_1__1_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__3_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_2\(1)
    );
\j_reg[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(1),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[1]_i_1__3_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__3_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_2\(2)
    );
\j_reg[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(1),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^fsm_onehot_state_reg[3]_2\(2),
      O => \j_reg[2]_i_1__3_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__3_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[3]\
    );
\j_reg[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_2\(2),
      I1 => \^fsm_onehot_state_reg[3]_2\(0),
      I2 => \^fsm_onehot_state_reg[3]_2\(1),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_i_1__3_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__3_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[4]\
    );
\j_reg[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_2\(1),
      I2 => \^fsm_onehot_state_reg[3]_2\(0),
      I3 => \^fsm_onehot_state_reg[3]_2\(2),
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \j_reg_n_0_[4]\,
      O => \j_reg[4]_i_1__3_n_0\
    );
\j_reg[4]_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => j
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => valid
    );
\valid_aux_reg_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__8_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\ is
  port (
    valid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \a_j_reg[4]_i_3__3_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_j_reg[4]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[0]_i_1__3\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_0\ : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \a_j_reg[4]_i_2__2_0\ : in STD_LOGIC;
    \a_j_reg[4]_i_2__2_1\ : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_5 : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_5__4_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[3]_3\ : in STD_LOGIC;
    \a_j_reg[4]_1\ : in STD_LOGIC;
    \a_j_reg[4]_2\ : in STD_LOGIC;
    \a_j_reg[3]_i_1__4_0\ : in STD_LOGIC;
    \a_j_reg[3]_i_1__4_1\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__4_0\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__4_1\ : in STD_LOGIC;
    \a_j_reg[2]_i_1__4_0\ : in STD_LOGIC;
    \a_j_reg[0]_0\ : in STD_LOGIC;
    \a_j_reg[0]_1\ : in STD_LOGIC;
    \a_j_reg[1]_i_1__4_0\ : in STD_LOGIC;
    a_in_4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\ is
  signal \FSM_onehot_state[1]_i_1__9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_10__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_11__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_13__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_14__3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_15__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3__9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_8__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_9__4_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^fsm_onehot_state_reg[3]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_2__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_3__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_2__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_3__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_10__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_12__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__2_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__3_n_0\ : STD_LOGIC;
  signal \^a_j_reg[4]_i_3__3_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_3__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_4__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_5__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_5__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_6__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_7__3_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_7__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_8__3_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__15_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__9_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__15_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__9_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \^count_reg_reg[2]\ : STD_LOGIC;
  signal \^count_reg_reg[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC;
  signal \j_reg[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__6_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \j_reg_n_0_[1]\ : STD_LOGIC;
  signal \j_reg_n_0_[3]\ : STD_LOGIC;
  signal \j_reg_n_0_[4]\ : STD_LOGIC;
  signal \^valid\ : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__9\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_10__2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_13__3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__8\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_8__2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__4\ : label is "soft_lutpair64";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_1__3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_1__4\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_3__3\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_1__3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_1__4\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_3__3\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_1__4\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_3__3\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_10__4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_12__3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_13__4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_1__4\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_5__3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_7__3\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__5\ : label is "soft_lutpair70";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__15\ : label is "soft_lutpair70";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__9\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__15\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__4\ : label is "soft_lutpair75";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[0]_i_1__2\ : label is "soft_lutpair69";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__6\ : label is "soft_lutpair69";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__4\ : label is "soft_lutpair67";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__4\ : label is "soft_lutpair67";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__4\ : label is "soft_lutpair72";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \valid_aux_reg_i_1__4\ : label is "soft_lutpair75";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  \FSM_onehot_state_reg[3]_0\ <= \^fsm_onehot_state_reg[3]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  \a_j_reg[4]_i_3__3_0\ <= \^a_j_reg[4]_i_3__3_0\;
  \count_reg_reg[2]\ <= \^count_reg_reg[2]\;
  \count_reg_reg[4]\ <= \^count_reg_reg[4]\;
  valid <= \^valid\;
\FSM_onehot_state[1]_i_1__9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[1]_i_2__4_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_1__9_n_0\
    );
\FSM_onehot_state[1]_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_2__4_n_0\
    );
\FSM_onehot_state[3]_i_1__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]_0\(2),
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state[3]_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008AA8AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_5__4_n_0\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_state_reg[3]_1\,
      I4 => \FSM_onehot_state[4]_i_3__9_n_0\,
      I5 => \FSM_onehot_state_reg[4]_0\,
      O => \FSM_onehot_state[3]_i_1__9_n_0\
    );
\FSM_onehot_state[4]_i_10__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \j_reg_n_0_[1]\,
      I2 => \^q\(0),
      O => \FSM_onehot_state[4]_i_10__2_n_0\
    );
\FSM_onehot_state[4]_i_11__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A9"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_15__4_n_0\,
      I1 => \^q\(0),
      I2 => \j_reg_n_0_[1]\,
      I3 => \^q\(1),
      O => \FSM_onehot_state[4]_i_11__4_n_0\
    );
\FSM_onehot_state[4]_i_13__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \j_reg_n_0_[1]\,
      O => \FSM_onehot_state[4]_i_13__3_n_0\
    );
\FSM_onehot_state[4]_i_14__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F020000FFFF2F02"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5__4_0\(0),
      I2 => \FSM_onehot_state[4]_i_5__4_0\(1),
      I3 => \^fsm_onehot_state_reg[1]_0\(1),
      I4 => \^fsm_onehot_state_reg[1]_0\(2),
      I5 => \FSM_onehot_state[4]_i_5__4_0\(2),
      O => \FSM_onehot_state[4]_i_14__3_n_0\
    );
\FSM_onehot_state[4]_i_15__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B22D4DDD4DD2B22"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(1),
      I1 => \FSM_onehot_state[4]_i_5__4_0\(1),
      I2 => \FSM_onehot_state[4]_i_5__4_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \^fsm_onehot_state_reg[1]_0\(2),
      I5 => \FSM_onehot_state[4]_i_5__4_0\(2),
      O => \FSM_onehot_state[4]_i_15__4_n_0\
    );
\FSM_onehot_state[4]_i_1__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF888888A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg[4]_0\,
      I2 => \FSM_onehot_state[4]_i_3__9_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__8_n_0\,
      I4 => \FSM_onehot_state[4]_i_5__4_n_0\,
      I5 => \FSM_onehot_state[4]_i_6__6_n_0\,
      O => \FSM_onehot_state[4]_i_1__13_n_0\
    );
\FSM_onehot_state[4]_i_2__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(2),
      I1 => done,
      I2 => next_out_5,
      I3 => \count_reg_reg[0]_0\(3),
      I4 => \count_reg_reg[0]_0\(0),
      I5 => \count_reg_reg[0]_0\(1),
      O => E(0)
    );
\FSM_onehot_state[4]_i_3__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008080000C1"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_3\,
      I1 => \FSM_onehot_state[4]_i_8__2_n_0\,
      I2 => \FSM_onehot_state[4]_i_9__4_n_0\,
      I3 => \j_reg_n_0_[3]\,
      I4 => \FSM_onehot_state[4]_i_10__2_n_0\,
      I5 => \j_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_3__9_n_0\
    );
\FSM_onehot_state[4]_i_4__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_onehot_state_reg[1]_0\(0),
      I2 => \FSM_onehot_state[4]_i_5__4_0\(0),
      O => \FSM_onehot_state[4]_i_4__8_n_0\
    );
\FSM_onehot_state[4]_i_5__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FBDDB9FFADBBDFA"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_11__4_n_0\,
      I1 => \FSM_onehot_state[4]_i_9__4_n_0\,
      I2 => \FSM_onehot_state_reg[3]_2\,
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__4_0\(0),
      I5 => \FSM_onehot_state[4]_i_13__3_n_0\,
      O => \FSM_onehot_state[4]_i_5__4_n_0\
    );
\FSM_onehot_state[4]_i_6__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_6__6_n_0\
    );
\FSM_onehot_state[4]_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_14__3_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__4_0\(3),
      O => \FSM_onehot_state[4]_i_8__2_n_0\
    );
\FSM_onehot_state[4]_i_9__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69996669"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(4),
      I1 => \FSM_onehot_state[4]_i_5__4_0\(4),
      I2 => \FSM_onehot_state[4]_i_14__3_n_0\,
      I3 => \^fsm_onehot_state_reg[1]_0\(3),
      I4 => \FSM_onehot_state[4]_i_5__4_0\(3),
      O => \FSM_onehot_state[4]_i_9__4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__9_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__9_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__13_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[0]_i_1__4_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \a_j_reg[0]_0\,
      I1 => \j_reg_n_0_[1]\,
      I2 => \a_j_reg[0]_1\,
      I3 => \^q\(0),
      I4 => \a_j_reg[1]_i_2__3_n_0\,
      O => \a_j_reg[0]_i_1__4_n_0\
    );
\a_j_reg[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_5(0),
      I1 => a_in_5(16),
      I2 => \a_j_reg[4]_i_2__2_0\,
      I3 => a_in_5(24),
      I4 => \a_j_reg[4]_i_2__2_1\,
      I5 => a_in_5(8),
      O => \count_reg_reg[0]\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[1]_i_1__4_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[2]_i_2__2_n_0\,
      I1 => \a_j_reg[4]_0\(0),
      I2 => \^a_j_reg[4]_i_3__3_0\,
      O => D(0)
    );
\a_j_reg[1]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[1]_i_2__3_n_0\,
      I1 => \^q\(0),
      I2 => \a_j_reg[2]_i_2__3_n_0\,
      O => \a_j_reg[1]_i_1__4_n_0\
    );
\a_j_reg[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \a_j_reg[4]_i_6__3_n_0\,
      I1 => \a_j_reg[1]_i_3__3_n_0\,
      I2 => \a_j_reg[0]_i_1__3\,
      I3 => \a_j_reg[3]_i_3__3_n_0\,
      I4 => \a_j_reg[0]_i_1__3_0\,
      I5 => \a_j_reg[4]_i_3__3_n_0\,
      O => \^a_j_reg[4]_i_3__3_0\
    );
\a_j_reg[1]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[1]_i_1__4_0\,
      I1 => \a_j_reg[3]_i_5_n_0\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \a_j_reg[3]_i_1__4_0\,
      I4 => \a_j_reg[4]_i_8__3_n_0\,
      I5 => \a_j_reg[3]_i_4_n_0\,
      O => \a_j_reg[1]_i_2__3_n_0\
    );
\a_j_reg[1]_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_1\,
      I1 => a_in_5(1),
      I2 => a_in_5(17),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => a_in_5(9),
      O => \a_j_reg[1]_i_3__3_n_0\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[2]_i_1__4_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[3]_i_2__2_n_0\,
      I1 => \a_j_reg[4]_0\(0),
      I2 => \a_j_reg[2]_i_2__2_n_0\,
      O => D(1)
    );
\a_j_reg[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[2]_i_2__3_n_0\,
      I1 => \^q\(0),
      I2 => \a_j_reg[3]_i_2__3_n_0\,
      O => \a_j_reg[2]_i_1__4_n_0\
    );
\a_j_reg[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^count_reg_reg[4]\,
      I1 => \a_j_reg[4]_i_10__2_n_0\,
      I2 => \a_j_reg[0]_i_1__3\,
      I3 => \^count_reg_reg[2]\,
      I4 => \a_j_reg[0]_i_1__3_0\,
      I5 => \^fsm_onehot_state_reg[3]_0\,
      O => \a_j_reg[2]_i_2__2_n_0\
    );
\a_j_reg[2]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[2]_i_1__4_0\,
      I1 => \a_j_reg[4]_i_7__4_n_0\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \a_j_reg[4]_i_5__4_n_0\,
      I4 => \a_j_reg[4]_i_8__3_n_0\,
      I5 => \a_j_reg[4]_i_1__4_0\,
      O => \a_j_reg[2]_i_2__3_n_0\
    );
\a_j_reg[2]_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_1\,
      I1 => a_in_5(2),
      I2 => a_in_5(18),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => a_in_5(10),
      O => \^count_reg_reg[2]\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[3]_i_1__4_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[4]_i_4__3_n_0\,
      I1 => \a_j_reg[4]_0\(0),
      I2 => \a_j_reg[3]_i_2__2_n_0\,
      O => D(2)
    );
\a_j_reg[3]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[3]_i_2__3_n_0\,
      I1 => \^q\(0),
      I2 => \a_j_reg[4]_i_2__3_n_0\,
      O => \a_j_reg[3]_i_1__4_n_0\
    );
\a_j_reg[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_6__3_n_0\,
      I1 => \a_j_reg[4]_i_7__3_n_0\,
      I2 => \a_j_reg[0]_i_1__3\,
      I3 => \a_j_reg[3]_i_3__3_n_0\,
      I4 => \a_j_reg[0]_i_1__3_0\,
      I5 => \a_j_reg[4]_i_3__3_n_0\,
      O => \a_j_reg[3]_i_2__2_n_0\
    );
\a_j_reg[3]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[3]_i_1__4_0\,
      I1 => \a_j_reg[3]_i_4_n_0\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \a_j_reg[3]_i_5_n_0\,
      I4 => \a_j_reg[4]_i_8__3_n_0\,
      I5 => \a_j_reg[3]_i_1__4_1\,
      O => \a_j_reg[3]_i_2__3_n_0\
    );
\a_j_reg[3]_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_1\,
      I1 => a_in_5(3),
      I2 => a_in_5(19),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => a_in_5(11),
      O => \a_j_reg[3]_i_3__3_n_0\
    );
\a_j_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABFBFEA2A80802A"
    )
        port map (
      I0 => a_in_4(7),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \j_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[1]\,
      I5 => a_in_4(3),
      O => \a_j_reg[3]_i_4_n_0\
    );
\a_j_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABFBFEA2A80802A"
    )
        port map (
      I0 => a_in_4(5),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \j_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[1]\,
      I5 => a_in_4(1),
      O => \a_j_reg[3]_i_5_n_0\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[4]_i_1__4_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_10__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_5(8),
      I1 => a_in_5(24),
      I2 => a_in_5(16),
      I3 => a_in_5(0),
      I4 => \a_j_reg[4]_i_2__2_0\,
      I5 => \a_j_reg[4]_i_2__2_1\,
      O => \a_j_reg[4]_i_10__2_n_0\
    );
\a_j_reg[4]_i_10__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \j_reg_n_0_[3]\,
      I3 => \j_reg_n_0_[1]\,
      O => \j_reg[1]_0\
    );
\a_j_reg[4]_i_11__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_1\,
      I1 => a_in_5(4),
      I2 => a_in_5(20),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => a_in_5(12),
      O => \^count_reg_reg[4]\
    );
\a_j_reg[4]_i_12__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => a_in_5(10),
      I1 => a_in_5(18),
      I2 => a_in_5(2),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => \a_j_reg[4]_i_2__2_1\,
      O => \a_j_reg[4]_i_12__3_n_0\
    );
\a_j_reg[4]_i_13__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_1\,
      I1 => a_in_5(6),
      I2 => a_in_5(22),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => a_in_5(14),
      O => \^fsm_onehot_state_reg[3]_0\
    );
\a_j_reg[4]_i_13__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8175FA0"
    )
        port map (
      I0 => \j_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \j_reg_n_0_[3]\,
      I3 => \j_reg_n_0_[4]\,
      I4 => \^q\(1),
      O => \j_reg[2]_0\
    );
\a_j_reg[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFFFFAAEA0000"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_n_0\,
      I1 => \a_j_reg[4]_i_3__3_n_0\,
      I2 => \a_j_reg[4]_0\(2),
      I3 => \a_j_reg[4]_0\(1),
      I4 => \a_j_reg[4]_0\(0),
      I5 => \a_j_reg[4]_i_4__3_n_0\,
      O => D(3)
    );
\a_j_reg[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__3_n_0\,
      I1 => \^q\(0),
      I2 => \a_j_reg[4]_1\,
      I3 => \j_reg_n_0_[1]\,
      I4 => \a_j_reg[4]_2\,
      O => \a_j_reg[4]_i_1__4_n_0\
    );
\a_j_reg[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E320CBCBE3200808"
    )
        port map (
      I0 => \a_j_reg[4]_i_5__3_n_0\,
      I1 => \a_j_reg[4]_0\(0),
      I2 => \a_j_reg[4]_0\(1),
      I3 => \a_j_reg[4]_i_6__3_n_0\,
      I4 => \a_j_reg[4]_0\(2),
      I5 => \a_j_reg[4]_i_7__3_n_0\,
      O => \a_j_reg[4]_i_2__2_n_0\
    );
\a_j_reg[4]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \a_j_reg[4]_i_5__4_n_0\,
      I1 => \a_j_reg[4]_i_1__4_0\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \a_j_reg[4]_i_7__4_n_0\,
      I4 => \a_j_reg[4]_i_8__3_n_0\,
      I5 => \a_j_reg[4]_i_1__4_1\,
      O => \a_j_reg[4]_i_2__3_n_0\
    );
\a_j_reg[4]_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_1\,
      I1 => a_in_5(7),
      I2 => a_in_5(23),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => a_in_5(15),
      O => \a_j_reg[4]_i_3__3_n_0\
    );
\a_j_reg[4]_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => \a_j_reg[4]_i_10__2_n_0\,
      I1 => \^count_reg_reg[4]\,
      I2 => \a_j_reg[4]_i_12__3_n_0\,
      I3 => \^fsm_onehot_state_reg[3]_0\,
      I4 => \a_j_reg[0]_i_1__3\,
      I5 => \a_j_reg[0]_i_1__3_0\,
      O => \a_j_reg[4]_i_4__3_n_0\
    );
\a_j_reg[4]_i_5__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => a_in_5(11),
      I1 => a_in_5(19),
      I2 => a_in_5(3),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => \a_j_reg[4]_i_2__2_1\,
      O => \a_j_reg[4]_i_5__3_n_0\
    );
\a_j_reg[4]_i_5__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABFBFEA2A80802A"
    )
        port map (
      I0 => a_in_4(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \j_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[1]\,
      I5 => a_in_4(0),
      O => \a_j_reg[4]_i_5__4_n_0\
    );
\a_j_reg[4]_i_6__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__2_1\,
      I1 => a_in_5(5),
      I2 => a_in_5(21),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => a_in_5(13),
      O => \a_j_reg[4]_i_6__3_n_0\
    );
\a_j_reg[4]_i_7__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => a_in_5(9),
      I1 => a_in_5(17),
      I2 => a_in_5(1),
      I3 => \a_j_reg[4]_i_2__2_0\,
      I4 => \a_j_reg[4]_i_2__2_1\,
      O => \a_j_reg[4]_i_7__3_n_0\
    );
\a_j_reg[4]_i_7__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABFBFEA2A80802A"
    )
        port map (
      I0 => a_in_4(6),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \j_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[1]\,
      I5 => a_in_4(2),
      O => \a_j_reg[4]_i_7__4_n_0\
    );
\a_j_reg[4]_i_8__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \a_j_reg[4]_i_8__3_n_0\
    );
\acks_out_reg_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(0),
      I1 => \count_reg_reg[0]_0\(1),
      I2 => \count_reg_reg[0]_0\(4),
      I3 => \^valid\,
      I4 => \count_reg_reg[0]_0\(2),
      I5 => done,
      O => \FSM_onehot_state_reg[0]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__5_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__5_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__15_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \count_reg[1]_i_1__15_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__9_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count_reg[2]_i_1__9_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__15_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \count_reg[3]_i_1__15_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__9_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count_reg[4]_i_1__9_n_0\
    );
\count_reg[4]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBABAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg[4]_0\,
      I2 => \FSM_onehot_state[4]_i_3__9_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__8_n_0\,
      I4 => \FSM_onehot_state[4]_i_5__4_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__2_n_0\,
      G => j,
      GE => '1',
      Q => \^q\(0)
    );
\j_reg[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(0),
      O => \j_reg[0]_i_1__2_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__6_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[1]\
    );
\j_reg[1]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \j_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[1]_i_1__6_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__4_n_0\,
      G => j,
      GE => '1',
      Q => \^q\(1)
    );
\j_reg[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \j_reg_n_0_[1]\,
      I3 => \^q\(1),
      O => \j_reg[2]_i_1__4_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__4_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[3]\
    );
\j_reg[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \j_reg_n_0_[1]\,
      I4 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_i_1__4_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__4_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[4]\
    );
\j_reg[4]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \j_reg_n_0_[3]\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \j_reg_n_0_[4]\,
      O => \j_reg[4]_i_1__4_n_0\
    );
\j_reg[4]_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => j
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => \^valid\
    );
\valid_aux_reg_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[4]_i_6__6_n_0\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\ is
  port (
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_5\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_6\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[3]_7\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in_4 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \a_j_reg[4]_i_1__4\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[4]_i_4__4_0\ : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_4 : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_8\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_2\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_5__5_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state[4]_i_4__10_0\ : in STD_LOGIC;
    complete_tick : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_7__5\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\ is
  signal \FSM_onehot_state[1]_i_1__11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_14__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2__12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5__5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__4_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^fsm_onehot_state_reg[3]_3\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_7\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_12__4_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__10_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__11_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__10_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__11_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC;
  signal \j_reg[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__5_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__5_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__5_n_0\ : STD_LOGIC;
  signal \j_reg_n_0_[2]\ : STD_LOGIC;
  signal \j_reg_n_0_[3]\ : STD_LOGIC;
  signal \j_reg_n_0_[4]\ : STD_LOGIC;
  signal next_state30_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal next_state6 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal valid : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__12\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__12\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_10__3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__5\ : label is "soft_lutpair47";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_4__1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_3__4\ : label is "soft_lutpair44";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_3__4\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_3__4\ : label is "soft_lutpair43";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_11__4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_12__4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_6__4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_6__5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_7__5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_9__4\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__7\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__10\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__11\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__10\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__5\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[0]_i_1__3\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__4\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__5\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__5\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__5\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  \FSM_onehot_state_reg[3]_3\ <= \^fsm_onehot_state_reg[3]_3\;
  \FSM_onehot_state_reg[3]_7\(1 downto 0) <= \^fsm_onehot_state_reg[3]_7\(1 downto 0);
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
\FSM_onehot_state[1]_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[1]_i_2__5_n_0\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1__11_n_0\
    );
\FSM_onehot_state[1]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(0),
      I1 => \count_reg_reg[0]_0\(2),
      I2 => valid,
      I3 => complete_tick,
      I4 => \count_reg_reg[0]_0\(3),
      O => D(0)
    );
\FSM_onehot_state[1]_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_2__5_n_0\
    );
\FSM_onehot_state[3]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_6__4_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__5_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__10_n_0\,
      I4 => \FSM_onehot_state_reg[3]_8\,
      O => \FSM_onehot_state[3]_i_1__11_n_0\
    );
\FSM_onehot_state[3]_i_1__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(2),
      I1 => valid,
      O => D(1)
    );
\FSM_onehot_state[4]_i_10__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5__5_0\(3),
      I1 => \FSM_onehot_state[4]_i_14__4_n_0\,
      I2 => \^fsm_onehot_state_reg[1]_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__5_0\(4),
      O => p_0_in(4)
    );
\FSM_onehot_state[4]_i_13__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5__5_0\(0),
      I2 => \^fsm_onehot_state_reg[1]_0\(1),
      I3 => \FSM_onehot_state[4]_i_5__5_0\(1),
      O => next_state6(1)
    );
\FSM_onehot_state[4]_i_14__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF757751551011"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => \FSM_onehot_state[4]_i_5__5_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__5_0\(1),
      I5 => \FSM_onehot_state[4]_i_5__5_0\(2),
      O => \FSM_onehot_state[4]_i_14__4_n_0\
    );
\FSM_onehot_state[4]_i_1__14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__12_n_0\,
      I1 => \FSM_onehot_state_reg[3]_8\,
      I2 => \FSM_onehot_state[4]_i_4__10_n_0\,
      I3 => \FSM_onehot_state[4]_i_5__5_n_0\,
      I4 => \FSM_onehot_state[4]_i_6__4_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1__14_n_0\
    );
\FSM_onehot_state[4]_i_2__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(1),
      I1 => \count_reg_reg[0]_0\(0),
      I2 => \count_reg_reg[0]_0\(2),
      I3 => done,
      I4 => next_out_4,
      I5 => \count_reg_reg[0]_0\(3),
      O => E(0)
    );
\FSM_onehot_state[4]_i_2__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => \count_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_2__12_n_0\
    );
\FSM_onehot_state[4]_i_4__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD56"
    )
        port map (
      I0 => next_state30_in(4),
      I1 => \j_reg_n_0_[3]\,
      I2 => \j_reg_n_0_[2]\,
      I3 => \j_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_4__10_n_0\
    );
\FSM_onehot_state[4]_i_5__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"969FFFF6FFF9666F"
    )
        port map (
      I0 => next_state6(3),
      I1 => \j_reg_n_0_[3]\,
      I2 => p_0_in(4),
      I3 => \FSM_onehot_state_reg[4]_2\,
      I4 => \FSM_onehot_state_reg[4]_1\(0),
      I5 => \j_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_5__5_n_0\
    );
\FSM_onehot_state[4]_i_6__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5FFFF96FF96A5FF"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_7\(1),
      I1 => p_0_in(4),
      I2 => next_state6(1),
      I3 => \^fsm_onehot_state_reg[3]_7\(0),
      I4 => \FSM_onehot_state[4]_i_5__5_0\(0),
      I5 => \^fsm_onehot_state_reg[1]_0\(0),
      O => \FSM_onehot_state[4]_i_6__4_n_0\
    );
\FSM_onehot_state[4]_i_8__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0492920400000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_14__4_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__5_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__5_0\(4),
      I5 => \FSM_onehot_state[4]_i_4__10_0\,
      O => next_state30_in(4)
    );
\FSM_onehot_state[4]_i_9__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_14__4_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__5_0\(3),
      O => next_state6(3)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__11_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__11_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__14_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__5\(0),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB28EBEBEB282828"
    )
        port map (
      I0 => \a_j_reg[0]_i_4__1_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => a_in_4(12),
      I4 => \a_j_reg[4]_i_1__4\,
      I5 => a_in_4(4),
      O => \FSM_onehot_state_reg[3]_4\
    );
\a_j_reg[0]_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB28EBEBEB282828"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_3\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => a_in_4(14),
      I4 => \a_j_reg[4]_i_1__4\,
      I5 => a_in_4(6),
      O => \FSM_onehot_state_reg[3]_2\
    );
\a_j_reg[0]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_4(8),
      I1 => \a_j_reg[4]_i_1__4\,
      I2 => a_in_4(16),
      I3 => \a_j_reg[4]_i_4__4_0\,
      I4 => a_in_4(0),
      O => \a_j_reg[0]_i_4__1_n_0\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__5\(1),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_4(9),
      I1 => \a_j_reg[4]_i_1__4\,
      I2 => a_in_4(17),
      I3 => \a_j_reg[4]_i_4__4_0\,
      I4 => a_in_4(1),
      O => \FSM_onehot_state_reg[3]_6\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__5\(2),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_4(10),
      I1 => \a_j_reg[4]_i_1__4\,
      I2 => a_in_4(18),
      I3 => \a_j_reg[4]_i_4__4_0\,
      I4 => a_in_4(2),
      O => \^fsm_onehot_state_reg[3]_3\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__5\(3),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_4(11),
      I1 => \a_j_reg[4]_i_1__4\,
      I2 => a_in_4(19),
      I3 => \a_j_reg[4]_i_4__4_0\,
      I4 => a_in_4(3),
      O => \FSM_onehot_state_reg[3]_5\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_7__5\(4),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_11__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_4(1),
      I1 => \a_j_reg[4]_i_4__4_0\,
      I2 => a_in_4(17),
      I3 => \a_j_reg[4]_i_1__4\,
      I4 => a_in_4(9),
      O => \^count_reg_reg[1]\
    );
\a_j_reg[4]_i_12__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_4(3),
      I1 => \a_j_reg[4]_i_4__4_0\,
      I2 => a_in_4(19),
      I3 => \a_j_reg[4]_i_1__4\,
      I4 => a_in_4(11),
      O => \a_j_reg[4]_i_12__4_n_0\
    );
\a_j_reg[4]_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8B8FF00B8B800"
    )
        port map (
      I0 => a_in_4(13),
      I1 => \a_j_reg[4]_i_1__4\,
      I2 => a_in_4(5),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \^count_reg_reg[1]\,
      O => \FSM_onehot_state_reg[3]_1\
    );
\a_j_reg[4]_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8B8FF00B8B800"
    )
        port map (
      I0 => a_in_4(15),
      I1 => \a_j_reg[4]_i_1__4\,
      I2 => a_in_4(7),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \a_j_reg[4]_i_12__4_n_0\,
      O => \FSM_onehot_state_reg[3]_0\
    );
\a_j_reg[4]_i_6__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_4(0),
      I1 => \a_j_reg[4]_i_4__4_0\,
      I2 => a_in_4(16),
      I3 => \a_j_reg[4]_i_1__4\,
      I4 => a_in_4(8),
      O => \count_reg_reg[0]\
    );
\a_j_reg[4]_i_6__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \^fsm_onehot_state_reg[3]_7\(0),
      I2 => \^fsm_onehot_state_reg[3]_7\(1),
      O => \j_reg[1]_0\
    );
\a_j_reg[4]_i_7__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9E61"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \^fsm_onehot_state_reg[3]_7\(0),
      I2 => \^fsm_onehot_state_reg[3]_7\(1),
      I3 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_0\
    );
\a_j_reg[4]_i_9__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_4(2),
      I1 => \a_j_reg[4]_i_4__4_0\,
      I2 => a_in_4(18),
      I3 => \a_j_reg[4]_i_1__4\,
      I4 => a_in_4(10),
      O => \count_reg_reg[2]\
    );
\acks_out_reg_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(4),
      I1 => \count_reg_reg[0]_0\(1),
      I2 => \count_reg_reg[0]_0\(0),
      I3 => \count_reg_reg[0]_0\(2),
      I4 => done,
      I5 => valid,
      O => \FSM_onehot_state_reg[4]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__7_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__7_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__10_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      O => \count_reg[1]_i_1__10_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__11_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count_reg[2]_i_1__11_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__10_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[3]\,
      O => \count_reg[3]_i_1__10_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__11_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count_reg[4]_i_1__11_n_0\
    );
\count_reg[4]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_8\,
      I1 => \FSM_onehot_state[4]_i_4__10_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__5_n_0\,
      I3 => \FSM_onehot_state[4]_i_6__4_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__3_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_7\(0)
    );
\j_reg[0]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_7\(0),
      O => \j_reg[0]_i_1__3_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__4_n_0\,
      G => j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[3]_7\(1)
    );
\j_reg[1]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_7\(0),
      I1 => \^fsm_onehot_state_reg[3]_7\(1),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[1]_i_1__4_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__5_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[2]\
    );
\j_reg[2]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_7\(1),
      I1 => \^fsm_onehot_state_reg[3]_7\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \j_reg_n_0_[2]\,
      O => \j_reg[2]_i_1__5_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__5_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[3]\
    );
\j_reg[3]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \^fsm_onehot_state_reg[3]_7\(0),
      I2 => \^fsm_onehot_state_reg[3]_7\(1),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_i_1__5_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__5_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[4]\
    );
\j_reg[4]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[3]_7\(1),
      I2 => \^fsm_onehot_state_reg[3]_7\(0),
      I3 => \j_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \j_reg_n_0_[4]\,
      O => \j_reg[4]_i_1__5_n_0\
    );
\j_reg[4]_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => j
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => valid
    );
\valid_aux_reg_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[1]_i_2__5_n_0\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\ is
  port (
    valid : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \j_reg[0]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_j_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in_3 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \a_j_reg[0]_i_1__7_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__7_1\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_3 : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : in STD_LOGIC;
    \a_j_reg[0]_1\ : in STD_LOGIC;
    \a_j_reg[0]_2\ : in STD_LOGIC;
    a_in_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_reg[3]_2\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_9__6_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[3]_3\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_2__14\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\ is
  signal \FSM_onehot_state[1]_i_1__13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_14__5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3__13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_8__4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_9__6_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_2__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_3__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_2__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_2__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__4_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_3__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_4__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_5__5_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__9_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__16_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__13_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__16_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__13_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC;
  signal \j_reg[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__7_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__7_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__6_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__6_n_0\ : STD_LOGIC;
  signal \^valid\ : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__13\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_13__6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3__13\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_8__4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__6\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_1__5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_3__5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \a_j_reg[0]_i_4__2\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_4\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_2__4\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_4__5\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__9\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__16\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__13\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__16\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__6\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[0]_i_1__4\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__7\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__7\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__6\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__6\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \valid_aux_reg_i_1__6\ : label is "soft_lutpair36";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  valid <= \^valid\;
\FSM_onehot_state[1]_i_1__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[1]_i_2__6_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_1__13_n_0\
    );
\FSM_onehot_state[1]_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_2__6_n_0\
    );
\FSM_onehot_state[3]_i_1__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A2AAAAA2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg[4]_1\,
      I2 => \FSM_onehot_state[4]_i_4__12_n_0\,
      I3 => \^q\(0),
      I4 => \FSM_onehot_state_reg[3]_1\,
      I5 => \FSM_onehot_state_reg[4]_0\,
      O => \FSM_onehot_state[3]_i_1__13_n_0\
    );
\FSM_onehot_state[3]_i_1__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]\(2),
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state[4]_i_13__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \j_reg[0]_0\
    );
\FSM_onehot_state[4]_i_14__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966666699996966"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \FSM_onehot_state[4]_i_9__6_0\(2),
      I2 => \FSM_onehot_state[4]_i_9__6_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \^fsm_onehot_state_reg[1]_0\(1),
      I5 => \FSM_onehot_state[4]_i_9__6_0\(1),
      O => \FSM_onehot_state[4]_i_14__5_n_0\
    );
\FSM_onehot_state[4]_i_1__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF888A8888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg[4]_0\,
      I2 => \FSM_onehot_state[4]_i_3__13_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__12_n_0\,
      I4 => \FSM_onehot_state_reg[4]_1\,
      I5 => \FSM_onehot_state[4]_i_6__7_n_0\,
      O => \FSM_onehot_state[4]_i_1__15_n_0\
    );
\FSM_onehot_state[4]_i_2__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => done,
      I2 => next_out_3,
      I3 => \count_reg_reg[0]\(3),
      I4 => \count_reg_reg[0]\(0),
      I5 => \count_reg_reg[0]\(1),
      O => E(0)
    );
\FSM_onehot_state[4]_i_3__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^fsm_onehot_state_reg[1]_0\(0),
      I2 => \FSM_onehot_state[4]_i_9__6_0\(0),
      O => \FSM_onehot_state[4]_i_3__13_n_0\
    );
\FSM_onehot_state[4]_i_4__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDDEEDEDBDB77BBD"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_8__4_n_0\,
      I1 => \FSM_onehot_state[4]_i_9__6_n_0\,
      I2 => \FSM_onehot_state_reg[3]_2\,
      I3 => \FSM_onehot_state[4]_i_9__6_0\(0),
      I4 => \^fsm_onehot_state_reg[1]_0\(0),
      I5 => \FSM_onehot_state_reg[3]_3\,
      O => \FSM_onehot_state[4]_i_4__12_n_0\
    );
\FSM_onehot_state[4]_i_6__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[4]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_6__7_n_0\
    );
\FSM_onehot_state[4]_i_8__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \FSM_onehot_state[4]_i_8__4_n_0\
    );
\FSM_onehot_state[4]_i_9__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_14__5_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \FSM_onehot_state[4]_i_9__6_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__13_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__13_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__15_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[0]_i_1__5_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \a_j_reg[0]_1\,
      I1 => \a_j_reg[0]_i_3__5_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \a_j_reg[0]_2\,
      O => \a_j_reg[0]_i_1__5_n_0\
    );
\a_j_reg[0]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF2FEC2CE323E020"
    )
        port map (
      I0 => \a_j_reg[1]_i_2__4_n_0\,
      I1 => \a_j_reg[0]_0\(1),
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[3]_i_2__4_n_0\,
      I4 => \a_j_reg[2]_i_2__4_n_0\,
      I5 => \a_j_reg[0]_i_2__5_n_0\,
      O => D(0)
    );
\a_j_reg[0]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_3(0),
      I1 => a_in_3(8),
      I2 => \a_j_reg[0]_i_1__7_0\,
      I3 => a_in_3(12),
      I4 => \a_j_reg[0]_i_1__7_1\,
      I5 => a_in_3(4),
      O => \a_j_reg[0]_i_2__5_n_0\
    );
\a_j_reg[0]_i_3__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41147DD7"
    )
        port map (
      I0 => a_in_2(1),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in_2(2),
      O => \a_j_reg[0]_i_3__5_n_0\
    );
\a_j_reg[0]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A69A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \j_reg[2]_0\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__14\(0),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF2FE323EC2CE020"
    )
        port map (
      I0 => \a_j_reg[2]_i_2__4_n_0\,
      I1 => \a_j_reg[0]_0\(1),
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[4]_i_2__4_n_0\,
      I4 => \a_j_reg[1]_i_2__4_n_0\,
      I5 => \a_j_reg[3]_i_2__4_n_0\,
      O => D(1)
    );
\a_j_reg[1]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_3(1),
      I1 => a_in_3(9),
      I2 => \a_j_reg[0]_i_1__7_0\,
      I3 => a_in_3(13),
      I4 => \a_j_reg[0]_i_1__7_1\,
      I5 => a_in_3(5),
      O => \a_j_reg[1]_i_2__4_n_0\
    );
\a_j_reg[1]_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBEBBEBB88288288"
    )
        port map (
      I0 => a_in_2(3),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => a_in_2(0),
      O => \FSM_onehot_state_reg[3]_0\
    );
\a_j_reg[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \j_reg[0]_1\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__14\(1),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF2FE323EC2CE020"
    )
        port map (
      I0 => \a_j_reg[3]_i_2__4_n_0\,
      I1 => \a_j_reg[0]_0\(1),
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[4]_i_5__5_n_0\,
      I4 => \a_j_reg[2]_i_2__4_n_0\,
      I5 => \a_j_reg[4]_i_2__4_n_0\,
      O => D(2)
    );
\a_j_reg[2]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a_in_3(2),
      I1 => a_in_3(10),
      I2 => \a_j_reg[0]_i_1__7_0\,
      I3 => a_in_3(14),
      I4 => \a_j_reg[0]_i_1__7_1\,
      I5 => a_in_3(6),
      O => \a_j_reg[2]_i_2__4_n_0\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__14\(2),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF2FE323EC2CE020"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__4_n_0\,
      I1 => \a_j_reg[0]_0\(1),
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[4]_i_3__5_n_0\,
      I4 => \a_j_reg[3]_i_2__4_n_0\,
      I5 => \a_j_reg[4]_i_5__5_n_0\,
      O => D(3)
    );
\a_j_reg[3]_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \a_j_reg[0]_i_1__7_1\,
      I1 => a_in_3(3),
      I2 => a_in_3(11),
      I3 => \a_j_reg[0]_i_1__7_0\,
      I4 => a_in_3(7),
      O => \a_j_reg[3]_i_2__4_n_0\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state[4]_i_2__14\(3),
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF83B38CBC80B08"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__4_n_0\,
      I1 => \a_j_reg[0]_0\(1),
      I2 => \a_j_reg[0]_0\(0),
      I3 => \a_j_reg[4]_i_3__5_n_0\,
      I4 => \a_j_reg[4]_i_4__5_n_0\,
      I5 => \a_j_reg[4]_i_5__5_n_0\,
      O => D(4)
    );
\a_j_reg[4]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_3(4),
      I1 => a_in_3(12),
      I2 => a_in_3(8),
      I3 => a_in_3(0),
      I4 => \a_j_reg[0]_i_1__7_0\,
      I5 => \a_j_reg[0]_i_1__7_1\,
      O => \a_j_reg[4]_i_2__4_n_0\
    );
\a_j_reg[4]_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_3(6),
      I1 => a_in_3(14),
      I2 => a_in_3(10),
      I3 => a_in_3(2),
      I4 => \a_j_reg[0]_i_1__7_0\,
      I5 => \a_j_reg[0]_i_1__7_1\,
      O => \a_j_reg[4]_i_3__5_n_0\
    );
\a_j_reg[4]_i_4__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => a_in_3(7),
      I1 => a_in_3(11),
      I2 => a_in_3(3),
      I3 => \a_j_reg[0]_i_1__7_0\,
      I4 => \a_j_reg[0]_i_1__7_1\,
      O => \a_j_reg[4]_i_4__5_n_0\
    );
\a_j_reg[4]_i_5__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
        port map (
      I0 => a_in_3(5),
      I1 => a_in_3(13),
      I2 => a_in_3(9),
      I3 => a_in_3(1),
      I4 => \a_j_reg[0]_i_1__7_0\,
      I5 => \a_j_reg[0]_i_1__7_1\,
      O => \a_j_reg[4]_i_5__5_n_0\
    );
\acks_out_reg_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(0),
      I1 => \count_reg_reg[0]\(1),
      I2 => \count_reg_reg[0]\(4),
      I3 => \^valid\,
      I4 => \count_reg_reg[0]\(2),
      I5 => done,
      O => \FSM_onehot_state_reg[0]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__9_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__9_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__16_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \count_reg[1]_i_1__16_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__13_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count_reg[2]_i_1__13_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__16_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \count_reg[3]_i_1__16_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__13_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count_reg[4]_i_1__13_n_0\
    );
\count_reg[4]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg[4]_0\,
      I2 => \FSM_onehot_state[4]_i_3__13_n_0\,
      I3 => \FSM_onehot_state[4]_i_4__12_n_0\,
      I4 => \FSM_onehot_state_reg[4]_1\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__4_n_0\,
      G => j,
      GE => '1',
      Q => \^q\(0)
    );
\j_reg[0]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(0),
      O => \j_reg[0]_i_1__4_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__7_n_0\,
      G => j,
      GE => '1',
      Q => \^q\(1)
    );
\j_reg[1]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[1]_i_1__7_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__7_n_0\,
      G => j,
      GE => '1',
      Q => \^q\(2)
    );
\j_reg[2]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[2]_i_1__7_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__6_n_0\,
      G => j,
      GE => '1',
      Q => \^q\(3)
    );
\j_reg[3]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \j_reg[3]_i_1__6_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__6_n_0\,
      G => j,
      GE => '1',
      Q => \^q\(4)
    );
\j_reg[4]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(4),
      O => \j_reg[4]_i_1__6_n_0\
    );
\j_reg[4]_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => j
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => \^valid\
    );
\valid_aux_reg_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[4]_i_6__7_n_0\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\ is
  port (
    \count_reg_reg[4]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    a_in_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \a_j_reg[0]_i_1__5\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__5_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[0]_i_1__5_1\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_2 : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : in STD_LOGIC;
    \FSM_onehot_state[4]_i_5__7_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \a_j_reg[3]_i_1__6_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    complete_tick : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\ : entity is "ctrl_logic_fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\ is
  signal \FSM_onehot_state[1]_i_1__15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1__16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2__16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5__7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6__5_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal a_j : STD_LOGIC;
  signal \a_j_reg[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[0]_i_2__7_n_0\ : STD_LOGIC;
  signal \a_j_reg[1]_i_1__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_1__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[2]_i_2__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_1__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[3]_i_2__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_1__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__5_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_2__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_3__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_4__6_n_0\ : STD_LOGIC;
  signal \a_j_reg[4]_i_5__6_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count_reg[0]_i_1__11_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1__13_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1__15_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1__13_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__15_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \^count_reg_reg[3]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux : STD_LOGIC;
  signal j : STD_LOGIC;
  signal \j_reg[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1__6_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1__7_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_1__7_n_0\ : STD_LOGIC;
  signal \j_reg_n_0_[0]\ : STD_LOGIC;
  signal \j_reg_n_0_[1]\ : STD_LOGIC;
  signal \j_reg_n_0_[2]\ : STD_LOGIC;
  signal \j_reg_n_0_[3]\ : STD_LOGIC;
  signal \j_reg_n_0_[4]\ : STD_LOGIC;
  signal next_state3 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal next_state30_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal next_state6 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal valid : STD_LOGIC;
  signal valid_aux : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__15\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__16\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__16\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_10__5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_14__6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__14\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_9__7\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st3_compare:00100,st4_count:01000,st1_aument_j:00010,st2_done:10000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_1__5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \a_j_reg[1]_i_1__6\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_1__5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \a_j_reg[2]_i_1__6\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_1__5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \a_j_reg[3]_i_1__6\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \a_j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \a_j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_1__5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \a_j_reg[4]_i_1__6\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__11\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__13\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__15\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__13\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \count_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of done_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of done_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \done_aux_reg_i_1__7\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \j_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[0]_i_1__5\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \j_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[1]_i_1__5\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \j_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[2]_i_1__6\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \j_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[3]_i_1__7\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \j_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \j_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \j_reg[4]_i_2__7\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of valid_aux_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of valid_aux_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \valid_aux_reg_i_1__7\ : label is "soft_lutpair17";
begin
  \FSM_onehot_state_reg[1]_0\(4 downto 0) <= \^fsm_onehot_state_reg[1]_0\(4 downto 0);
  \count_reg_reg[3]\ <= \^count_reg_reg[3]\;
\FSM_onehot_state[1]_i_1__15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_2__7_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1__15_n_0\
    );
\FSM_onehot_state[1]_i_1__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \count_reg_reg[0]\(0),
      I1 => \count_reg_reg[0]\(2),
      I2 => valid,
      I3 => complete_tick,
      I4 => \count_reg_reg[0]\(3),
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state[1]_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      O => \FSM_onehot_state[1]_i_2__7_n_0\
    );
\FSM_onehot_state[3]_i_1__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[4]_i_6__5_n_0\,
      I2 => \FSM_onehot_state[3]_i_2__2_n_0\,
      I3 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I4 => \FSM_onehot_state[4]_i_4__14_n_0\,
      I5 => \FSM_onehot_state_reg[3]_0\,
      O => \FSM_onehot_state[3]_i_1__15_n_0\
    );
\FSM_onehot_state[3]_i_1__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]\(2),
      I1 => valid,
      O => \FSM_onehot_state_reg[2]_0\(1)
    );
\FSM_onehot_state[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A956A956A95656A9"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \j_reg_n_0_[1]\,
      I2 => \j_reg_n_0_[2]\,
      I3 => next_state6(3),
      I4 => \FSM_onehot_state_reg[3]_1\,
      I5 => p_0_in(4),
      O => \FSM_onehot_state[3]_i_2__2_n_0\
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969669"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \j_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg[4]_1\(0),
      I3 => \FSM_onehot_state_reg[4]_2\,
      I4 => p_0_in(4),
      O => \FSM_onehot_state[3]_i_3__0_n_0\
    );
\FSM_onehot_state[4]_i_10__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \j_reg_n_0_[1]\,
      I2 => \j_reg_n_0_[3]\,
      O => next_state3(3)
    );
\FSM_onehot_state[4]_i_11__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5__7_0\(3),
      I1 => \FSM_onehot_state[4]_i_16__1_n_0\,
      I2 => \^fsm_onehot_state_reg[1]_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__7_0\(4),
      O => p_0_in(4)
    );
\FSM_onehot_state[4]_i_14__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \j_reg_n_0_[1]\,
      I1 => \j_reg_n_0_[2]\,
      O => next_state3(2)
    );
\FSM_onehot_state[4]_i_15__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => \FSM_onehot_state[4]_i_5__7_0\(0),
      I2 => \^fsm_onehot_state_reg[1]_0\(1),
      I3 => \FSM_onehot_state[4]_i_5__7_0\(1),
      O => next_state6(1)
    );
\FSM_onehot_state[4]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF757751551011"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(2),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => \FSM_onehot_state[4]_i_5__7_0\(0),
      I3 => \^fsm_onehot_state_reg[1]_0\(0),
      I4 => \FSM_onehot_state[4]_i_5__7_0\(1),
      I5 => \FSM_onehot_state[4]_i_5__7_0\(2),
      O => \FSM_onehot_state[4]_i_16__1_n_0\
    );
\FSM_onehot_state[4]_i_1__16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__16_n_0\,
      I1 => \FSM_onehot_state_reg[3]_0\,
      I2 => \FSM_onehot_state[4]_i_4__14_n_0\,
      I3 => \FSM_onehot_state[4]_i_5__7_n_0\,
      I4 => \FSM_onehot_state[4]_i_6__5_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1__16_n_0\
    );
\FSM_onehot_state[4]_i_2__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \count_reg_reg[0]\(1),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(2),
      I3 => done,
      I4 => next_out_2,
      I5 => \count_reg_reg[0]\(3),
      O => E(0)
    );
\FSM_onehot_state[4]_i_2__16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[1]\,
      I5 => \count_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_2__16_n_0\
    );
\FSM_onehot_state[4]_i_4__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD5556"
    )
        port map (
      I0 => next_state30_in(4),
      I1 => \j_reg_n_0_[3]\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \j_reg_n_0_[2]\,
      I4 => \j_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_4__14_n_0\
    );
\FSM_onehot_state[4]_i_5__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"696FFFF9FFF9666F"
    )
        port map (
      I0 => next_state6(3),
      I1 => next_state3(3),
      I2 => p_0_in(4),
      I3 => \FSM_onehot_state_reg[4]_2\,
      I4 => \FSM_onehot_state_reg[4]_1\(0),
      I5 => next_state3(2),
      O => \FSM_onehot_state[4]_i_5__7_n_0\
    );
\FSM_onehot_state[4]_i_6__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CFFFF69FF693CFF"
    )
        port map (
      I0 => p_0_in(4),
      I1 => next_state6(1),
      I2 => \j_reg_n_0_[1]\,
      I3 => \j_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[4]_i_5__7_0\(0),
      I5 => \^fsm_onehot_state_reg[1]_0\(0),
      O => \FSM_onehot_state[4]_i_6__5_n_0\
    );
\FSM_onehot_state[4]_i_8__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0492920400000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_16__1_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__7_0\(3),
      I3 => \^fsm_onehot_state_reg[1]_0\(4),
      I4 => \FSM_onehot_state[4]_i_5__7_0\(4),
      I5 => \FSM_onehot_state_reg[3]_1\,
      O => next_state30_in(4)
    );
\FSM_onehot_state[4]_i_9__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_16__1_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\(3),
      I2 => \FSM_onehot_state[4]_i_5__7_0\(3),
      O => next_state6(3)
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__15_n_0\,
      Q => a_j,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a_j,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__15_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1__16_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\a_j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[0]_i_1__6_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(0)
    );
\a_j_reg[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => \a_j_reg[3]_i_1__6_0\(3),
      I1 => \j_reg_n_0_[1]\,
      I2 => \a_j_reg[3]_i_1__6_0\(1),
      I3 => \j_reg_n_0_[0]\,
      I4 => \a_j_reg[0]_i_2__7_n_0\,
      O => \a_j_reg[0]_i_1__6_n_0\
    );
\a_j_reg[0]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => a_in_2(4),
      I1 => \a_j_reg[0]_i_1__5_0\,
      I2 => a_in_2(0),
      I3 => \a_j_reg[0]_i_1__5\,
      I4 => a_in_2(8),
      I5 => Q(1),
      O => \count_reg_reg[4]\
    );
\a_j_reg[0]_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4FFFFE4E40000E4"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \a_j_reg[3]_i_1__6_0\(0),
      I2 => \a_j_reg[3]_i_1__6_0\(4),
      I3 => \j_reg_n_0_[0]\,
      I4 => \j_reg_n_0_[1]\,
      I5 => \a_j_reg[3]_i_1__6_0\(2),
      O => \a_j_reg[0]_i_2__7_n_0\
    );
\a_j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[1]_i_1__6_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(1)
    );
\a_j_reg[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^count_reg_reg[3]\,
      I1 => Q(0),
      I2 => \a_j_reg[2]_i_2__5_n_0\,
      O => D(0)
    );
\a_j_reg[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \a_j_reg[2]_i_2__6_n_0\,
      I1 => \j_reg_n_0_[0]\,
      I2 => \a_j_reg[3]_i_1__6_0\(3),
      I3 => \j_reg_n_0_[1]\,
      I4 => \a_j_reg[3]_i_1__6_0\(1),
      O => \a_j_reg[1]_i_1__6_n_0\
    );
\a_j_reg[1]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_2(3),
      I1 => a_in_2(7),
      I2 => Q(1),
      I3 => \a_j_reg[0]_i_1__5_1\,
      I4 => \a_j_reg[0]_i_1__5_0\,
      I5 => a_in_2(5),
      O => \^count_reg_reg[3]\
    );
\a_j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[2]_i_1__6_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(2)
    );
\a_j_reg[2]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[2]_i_2__5_n_0\,
      I1 => Q(0),
      I2 => \a_j_reg[3]_i_2__5_n_0\,
      O => D(1)
    );
\a_j_reg[2]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => \a_j_reg[3]_i_1__6_0\(1),
      I1 => \j_reg_n_0_[1]\,
      I2 => \a_j_reg[3]_i_1__6_0\(3),
      I3 => \j_reg_n_0_[0]\,
      I4 => \a_j_reg[2]_i_2__6_n_0\,
      O => \a_j_reg[2]_i_1__6_n_0\
    );
\a_j_reg[2]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFCAACFAA0CAAC0"
    )
        port map (
      I0 => \a_j_reg[4]_i_4__6_n_0\,
      I1 => a_in_2(2),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => a_in_2(6),
      O => \a_j_reg[2]_i_2__5_n_0\
    );
\a_j_reg[2]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE2B8FF00E2B800"
    )
        port map (
      I0 => \a_j_reg[3]_i_1__6_0\(0),
      I1 => \j_reg_n_0_[2]\,
      I2 => \a_j_reg[3]_i_1__6_0\(4),
      I3 => \j_reg_n_0_[0]\,
      I4 => \j_reg_n_0_[1]\,
      I5 => \a_j_reg[3]_i_1__6_0\(2),
      O => \a_j_reg[2]_i_2__6_n_0\
    );
\a_j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[3]_i_1__6_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(3)
    );
\a_j_reg[3]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[3]_i_2__5_n_0\,
      I1 => Q(0),
      I2 => \a_j_reg[4]_i_2__5_n_0\,
      O => D(2)
    );
\a_j_reg[3]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__6_n_0\,
      I1 => \j_reg_n_0_[0]\,
      I2 => \a_j_reg[3]_i_1__6_0\(1),
      I3 => \j_reg_n_0_[1]\,
      I4 => \a_j_reg[3]_i_1__6_0\(3),
      O => \a_j_reg[3]_i_1__6_n_0\
    );
\a_j_reg[3]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => \a_j_reg[4]_i_5__6_n_0\,
      I1 => Q(1),
      I2 => a_in_2(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => a_in_2(7),
      O => \a_j_reg[3]_i_2__5_n_0\
    );
\a_j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_j_reg[4]_i_1__6_n_0\,
      G => a_j,
      GE => '1',
      Q => \^fsm_onehot_state_reg[1]_0\(4)
    );
\a_j_reg[4]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_j_reg[4]_i_2__5_n_0\,
      I1 => Q(0),
      I2 => \a_j_reg[4]_i_3__6_n_0\,
      O => D(3)
    );
\a_j_reg[4]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => \a_j_reg[3]_i_1__6_0\(3),
      I1 => \j_reg_n_0_[1]\,
      I2 => \a_j_reg[3]_i_1__6_0\(1),
      I3 => \j_reg_n_0_[0]\,
      I4 => \a_j_reg[4]_i_2__6_n_0\,
      O => \a_j_reg[4]_i_1__6_n_0\
    );
\a_j_reg[4]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE82BE82FFFF0000"
    )
        port map (
      I0 => a_in_2(6),
      I1 => Q(2),
      I2 => Q(0),
      I3 => a_in_2(2),
      I4 => \a_j_reg[4]_i_4__6_n_0\,
      I5 => Q(1),
      O => \a_j_reg[4]_i_2__5_n_0\
    );
\a_j_reg[4]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB28EBEBEB282828"
    )
        port map (
      I0 => \a_j_reg[3]_i_1__6_0\(2),
      I1 => \j_reg_n_0_[0]\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \a_j_reg[3]_i_1__6_0\(0),
      I4 => \j_reg_n_0_[2]\,
      I5 => \a_j_reg[3]_i_1__6_0\(4),
      O => \a_j_reg[4]_i_2__6_n_0\
    );
\a_j_reg[4]_i_3__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE82FFFFBE820000"
    )
        port map (
      I0 => a_in_2(7),
      I1 => Q(2),
      I2 => Q(0),
      I3 => a_in_2(3),
      I4 => Q(1),
      I5 => \a_j_reg[4]_i_5__6_n_0\,
      O => \a_j_reg[4]_i_3__6_n_0\
    );
\a_j_reg[4]_i_4__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_2(4),
      I1 => \a_j_reg[0]_i_1__5_0\,
      I2 => a_in_2(0),
      I3 => \a_j_reg[0]_i_1__5\,
      I4 => a_in_2(8),
      O => \a_j_reg[4]_i_4__6_n_0\
    );
\a_j_reg[4]_i_5__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => a_in_2(1),
      I1 => \a_j_reg[0]_i_1__5\,
      I2 => a_in_2(9),
      I3 => \a_j_reg[0]_i_1__5_0\,
      I4 => a_in_2(5),
      O => \a_j_reg[4]_i_5__6_n_0\
    );
\acks_out_reg_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(4),
      I1 => \count_reg_reg[0]\(1),
      I2 => \count_reg_reg[0]\(0),
      I3 => \count_reg_reg[0]\(2),
      I4 => done,
      I5 => valid,
      O => \FSM_onehot_state_reg[4]_0\
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1__11_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[0]\
    );
\count_reg[0]_i_1__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      O => \count_reg[0]_i_1__11_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1__13_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[1]\
    );
\count_reg[1]_i_1__13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \count_reg[1]_i_1__13_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1__15_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[2]\
    );
\count_reg[2]_i_1__15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count_reg[2]_i_1__15_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1__13_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[3]\
    );
\count_reg[3]_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[3]\,
      O => \count_reg[3]_i_1__13_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1__15_n_0\,
      G => count,
      GE => '1',
      Q => \count_reg_n_0_[4]\
    );
\count_reg[4]_i_1__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count_reg[4]_i_1__15_n_0\
    );
\count_reg[4]_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]_0\,
      I1 => \FSM_onehot_state[4]_i_4__14_n_0\,
      I2 => \FSM_onehot_state[4]_i_5__7_n_0\,
      I3 => \FSM_onehot_state[4]_i_6__5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => count
    );
done_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      G => done_aux,
      GE => '1',
      Q => done
    );
\done_aux_reg_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => done_aux
    );
\j_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[0]_i_1__5_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[0]\
    );
\j_reg[0]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \j_reg_n_0_[0]\,
      O => \j_reg[0]_i_1__5_n_0\
    );
\j_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[1]_i_1__5_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[1]\
    );
\j_reg[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \j_reg_n_0_[1]\,
      I1 => \j_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \j_reg[1]_i_1__5_n_0\
    );
\j_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[2]_i_1__6_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[2]\
    );
\j_reg[2]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \j_reg_n_0_[1]\,
      I1 => \j_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \j_reg_n_0_[2]\,
      O => \j_reg[2]_i_1__6_n_0\
    );
\j_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[3]_i_1__7_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[3]\
    );
\j_reg[3]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      I1 => \j_reg_n_0_[0]\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \j_reg_n_0_[3]\,
      O => \j_reg[3]_i_1__7_n_0\
    );
\j_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \j_reg[4]_i_1__7_n_0\,
      G => j,
      GE => '1',
      Q => \j_reg_n_0_[4]\
    );
\j_reg[4]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      I1 => \j_reg_n_0_[1]\,
      I2 => \j_reg_n_0_[0]\,
      I3 => \j_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \j_reg_n_0_[4]\,
      O => \j_reg[4]_i_1__7_n_0\
    );
\j_reg[4]_i_2__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => j
    );
valid_aux_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      G => valid_aux,
      GE => '1',
      Q => valid
    );
\valid_aux_reg_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2__16_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => valid_aux
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    next_state6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter is
  signal \FSM_onehot_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal complete_tick : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \count_reg[0]_i_1__13_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__13\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__0\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__0\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__0\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__0\ : label is "soft_lutpair163";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(0),
      I1 => \FSM_onehot_state_reg[4]_0\(3),
      I2 => complete_tick,
      I3 => \FSM_onehot_state_reg[4]_0\(2),
      I4 => valid,
      O => D(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(1),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_10__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state_reg[4]\(2),
      I2 => \FSM_onehot_state_reg[4]\(1),
      I3 => \^q\(1),
      I4 => \FSM_onehot_state_reg[4]\(0),
      I5 => \^q\(0),
      O => \count_reg_reg[2]_0\
    );
\FSM_onehot_state[4]_i_13__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg[4]\(0),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \FSM_onehot_state_reg[4]\(1),
      I4 => \FSM_onehot_state_reg[4]\(2),
      I5 => \^q\(2),
      O => next_state6(0)
    );
\FSM_onehot_state[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state[4]_i_7_n_0\,
      I3 => \FSM_onehot_state_reg[4]\(4),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(1),
      I1 => complete_tick,
      I2 => \FSM_onehot_state_reg[4]_0\(3),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => complete_tick
    );
\FSM_onehot_state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg[4]\(0),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      I5 => \^q\(1),
      O => \FSM_onehot_state[4]_i_7_n_0\
    );
\count_reg[0]_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F07"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg[0]_i_1__13_n_0\
    );
\count_reg[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C3C3C34"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => count_next(1)
    );
\count_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => count_next(2)
    );
\count_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA6AA2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => count_next(3)
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \count_reg[0]_i_1__13_n_0\,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    next_state6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0 is
  signal \FSM_onehot_state[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal complete_tick : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \count_reg[0]_i_1__14_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__14\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__2\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__2\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__2\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__2\ : label is "soft_lutpair143";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(0),
      I1 => \FSM_onehot_state_reg[4]_0\(3),
      I2 => complete_tick,
      I3 => \FSM_onehot_state_reg[4]_0\(2),
      I4 => valid,
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(1),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => D(1)
    );
\FSM_onehot_state[4]_i_10__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state_reg[4]\(2),
      I2 => \FSM_onehot_state_reg[4]\(1),
      I3 => \^q\(1),
      I4 => \FSM_onehot_state_reg[4]\(0),
      I5 => \^q\(0),
      O => \count_reg_reg[2]_0\
    );
\FSM_onehot_state[4]_i_14__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg[4]\(0),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \FSM_onehot_state_reg[4]\(1),
      I4 => \FSM_onehot_state_reg[4]\(2),
      I5 => \^q\(2),
      O => next_state6(0)
    );
\FSM_onehot_state[4]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state[4]_i_7__0_n_0\,
      I3 => \FSM_onehot_state_reg[4]\(4),
      I4 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[4]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_0\(1),
      I1 => complete_tick,
      I2 => \FSM_onehot_state_reg[4]_0\(3),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => complete_tick
    );
\FSM_onehot_state[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg[4]\(0),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => \^q\(2),
      I4 => \FSM_onehot_state_reg[4]\(1),
      I5 => \^q\(1),
      O => \FSM_onehot_state[4]_i_7__0_n_0\
    );
\count_reg[0]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F07"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_reg[0]_i_1__14_n_0\
    );
\count_reg[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C3C3C34"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => count_next(1)
    );
\count_reg[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => count_next(2)
    );
\count_reg[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA6AA2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => count_next(3)
    );
\count_reg[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => \count_reg[0]_i_1__14_n_0\,
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    next_state6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    complete_tick : out STD_LOGIC;
    \FSM_onehot_state[4]_i_3__3_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1 is
  signal \FSM_onehot_state[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^complete_tick\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3__3\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__3\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__4\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__4\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__4\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__4\ : label is "soft_lutpair120";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  complete_tick <= \^complete_tick\;
\FSM_onehot_state[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__3_0\(1),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__3_0\(0),
      O => \count_reg_reg[1]_0\
    );
\FSM_onehot_state[4]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__3_0\(0),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__3_0\(1),
      I4 => \FSM_onehot_state[4]_i_3__3_0\(2),
      I5 => \^q\(2),
      O => next_state6(0)
    );
\FSM_onehot_state[4]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009009000009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state[4]_i_3__3_0\(2),
      I2 => \FSM_onehot_state[4]_i_3__3_0\(1),
      I3 => \^q\(0),
      I4 => \FSM_onehot_state[4]_i_3__3_0\(0),
      I5 => \^q\(1),
      O => \count_reg_reg[2]_0\
    );
\FSM_onehot_state[4]_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_7__1_n_0\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state[4]_i_3__3_0\(0),
      I3 => \^q\(1),
      I4 => \FSM_onehot_state[4]_i_3__3_0\(1),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^complete_tick\,
      I2 => \FSM_onehot_state_reg[4]\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^complete_tick\
    );
\FSM_onehot_state[4]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_state[4]_i_3__3_0\(3),
      I2 => \^q\(4),
      I3 => \FSM_onehot_state[4]_i_3__3_0\(4),
      I4 => \FSM_onehot_state[4]_i_3__3_0\(2),
      I5 => \^q\(2),
      O => \FSM_onehot_state[4]_i_7__1_n_0\
    );
\count_reg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66626666"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(1)
    );
\count_reg[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => count_next(2)
    );
\count_reg[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7B8080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(3)
    );
\count_reg[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    next_state6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    complete_tick : out STD_LOGIC;
    \FSM_onehot_state[4]_i_3__5_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2 is
  signal \FSM_onehot_state[4]_i_7__2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^complete_tick\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_12__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3__5\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__5\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__6\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__6\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__6\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__6\ : label is "soft_lutpair99";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  complete_tick <= \^complete_tick\;
\FSM_onehot_state[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__5_0\(1),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__5_0\(0),
      O => \count_reg_reg[1]_0\
    );
\FSM_onehot_state[4]_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__5_0\(0),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__5_0\(1),
      I4 => \FSM_onehot_state[4]_i_3__5_0\(2),
      I5 => \^q\(2),
      O => next_state6(0)
    );
\FSM_onehot_state[4]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009009000009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state[4]_i_3__5_0\(2),
      I2 => \FSM_onehot_state[4]_i_3__5_0\(1),
      I3 => \^q\(0),
      I4 => \FSM_onehot_state[4]_i_3__5_0\(0),
      I5 => \^q\(1),
      O => \count_reg_reg[2]_0\
    );
\FSM_onehot_state[4]_i_3__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_7__2_n_0\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state[4]_i_3__5_0\(0),
      I3 => \^q\(1),
      I4 => \FSM_onehot_state[4]_i_3__5_0\(1),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_3__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^complete_tick\,
      I2 => \FSM_onehot_state_reg[4]\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^complete_tick\
    );
\FSM_onehot_state[4]_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_state[4]_i_3__5_0\(3),
      I2 => \^q\(4),
      I3 => \FSM_onehot_state[4]_i_3__5_0\(4),
      I4 => \FSM_onehot_state[4]_i_3__5_0\(2),
      I5 => \^q\(2),
      O => \FSM_onehot_state[4]_i_7__2_n_0\
    );
\count_reg[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66626666"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(1)
    );
\count_reg[2]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => count_next(2)
    );
\count_reg[3]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7B8080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(3)
    );
\count_reg[4]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    next_state6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[0]_1\ : out STD_LOGIC;
    \FSM_onehot_state[4]_i_3__7_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3 is
  signal \FSM_onehot_state[4]_i_7__3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_12__2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3__7\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__7\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__4\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__8\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__8\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__8\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__8\ : label is "soft_lutpair80";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[0]_1\ <= \^count_reg_reg[0]_1\;
\FSM_onehot_state[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => D(0)
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009009000009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state[4]_i_3__7_0\(2),
      I2 => \FSM_onehot_state[4]_i_3__7_0\(1),
      I3 => \^q\(0),
      I4 => \FSM_onehot_state[4]_i_3__7_0\(0),
      I5 => \^q\(1),
      O => \count_reg_reg[2]_0\
    );
\FSM_onehot_state[4]_i_12__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__7_0\(1),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__7_0\(0),
      O => \count_reg_reg[1]_0\
    );
\FSM_onehot_state[4]_i_13__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__7_0\(0),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__7_0\(1),
      I4 => \FSM_onehot_state[4]_i_3__7_0\(2),
      I5 => \^q\(2),
      O => next_state6(0)
    );
\FSM_onehot_state[4]_i_3__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_7__3_n_0\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state[4]_i_3__7_0\(0),
      I3 => \^q\(1),
      I4 => \FSM_onehot_state[4]_i_3__7_0\(1),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_3__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^count_reg_reg[0]_1\,
      I2 => \FSM_onehot_state_reg[4]\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^count_reg_reg[0]_1\
    );
\FSM_onehot_state[4]_i_7__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_state[4]_i_3__7_0\(3),
      I2 => \^q\(4),
      I3 => \FSM_onehot_state[4]_i_3__7_0\(4),
      I4 => \FSM_onehot_state[4]_i_3__7_0\(2),
      I5 => \^q\(2),
      O => \FSM_onehot_state[4]_i_7__3_n_0\
    );
\count_reg[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66626666"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(1)
    );
\count_reg[2]_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => count_next(2)
    );
\count_reg[3]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7B8080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(3)
    );
\count_reg[4]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_2\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_2\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_2\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_2\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_2\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 is
  port (
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4 is
  signal \FSM_onehot_state[4]_i_4__9_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal \^count_reg_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__9\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__6\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__9\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__10\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__9\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__10\ : label is "soft_lutpair59";
begin
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
  \count_reg_reg[4]_0\(4 downto 0) <= \^count_reg_reg[4]_0\(4 downto 0);
\FSM_onehot_state[1]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__9_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^count_reg_reg[4]_0\(4),
      I2 => \^count_reg_reg[4]_0\(3),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(2),
      I5 => \^count_reg_reg[4]_0\(0),
      O => D(1)
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(0),
      I1 => Q(0),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_12__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(1),
      I1 => Q(1),
      O => \count_reg_reg[1]_0\
    );
\FSM_onehot_state[4]_i_2__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => Q(3),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[2]_0\,
      I3 => \^count_reg_reg[4]_0\(4),
      I4 => Q(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[4]_i_3__10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(3),
      I1 => \FSM_onehot_state_reg[4]\(1),
      I2 => \FSM_onehot_state[4]_i_4__9_n_0\,
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(0),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(3),
      I4 => \^count_reg_reg[4]_0\(4),
      O => \FSM_onehot_state[4]_i_4__9_n_0\
    );
\FSM_onehot_state[4]_i_7__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => \^count_reg_reg[4]_0\(1),
      I5 => Q(1),
      O => \^count_reg_reg[2]_0\
    );
\count_reg[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => \^count_reg_reg[4]_0\(2),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(0),
      Q => \^count_reg_reg[4]_0\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(1),
      Q => \^count_reg_reg[4]_0\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(2),
      Q => \^count_reg_reg[4]_0\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(3),
      Q => \^count_reg_reg[4]_0\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(4),
      Q => \^count_reg_reg[4]_0\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    next_state6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    complete_tick : out STD_LOGIC;
    \FSM_onehot_state[4]_i_3__11_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5 is
  signal \FSM_onehot_state[4]_i_7__5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^complete_tick\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3__11\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__11\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__8\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__11\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__12\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__11\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__12\ : label is "soft_lutpair40";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  complete_tick <= \^complete_tick\;
\FSM_onehot_state[2]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => D(0)
    );
\FSM_onehot_state[4]_i_11__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__11_0\(1),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__11_0\(0),
      O => \count_reg_reg[1]_0\
    );
\FSM_onehot_state[4]_i_12__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__11_0\(0),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__11_0\(1),
      I4 => \FSM_onehot_state[4]_i_3__11_0\(2),
      I5 => \^q\(2),
      O => next_state6(0)
    );
\FSM_onehot_state[4]_i_15__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009009000009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state[4]_i_3__11_0\(2),
      I2 => \FSM_onehot_state[4]_i_3__11_0\(1),
      I3 => \^q\(0),
      I4 => \FSM_onehot_state[4]_i_3__11_0\(0),
      I5 => \^q\(1),
      O => \count_reg_reg[2]_0\
    );
\FSM_onehot_state[4]_i_3__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_7__5_n_0\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state[4]_i_3__11_0\(0),
      I3 => \^q\(1),
      I4 => \FSM_onehot_state[4]_i_3__11_0\(1),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_3__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^complete_tick\,
      I2 => \FSM_onehot_state_reg[4]\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^complete_tick\
    );
\FSM_onehot_state[4]_i_7__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_state[4]_i_3__11_0\(3),
      I2 => \^q\(4),
      I3 => \FSM_onehot_state[4]_i_3__11_0\(4),
      I4 => \FSM_onehot_state[4]_i_3__11_0\(2),
      I5 => \^q\(2),
      O => \FSM_onehot_state[4]_i_7__5_n_0\
    );
\count_reg[0]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66626666"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(1)
    );
\count_reg[2]_i_1__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => count_next(2)
    );
\count_reg[3]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7B8080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(3)
    );
\count_reg[4]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 is
  port (
    \count_reg_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[4]_1\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[1]_1\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6 is
  signal \FSM_onehot_state[4]_i_12__6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_15__6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4__13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_7__6_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[4]_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_11__6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_12__6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__13\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__12\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__14\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__12\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__14\ : label is "soft_lutpair25";
begin
  \count_reg_reg[4]_0\(4 downto 0) <= \^count_reg_reg[4]_0\(4 downto 0);
  \count_reg_reg[4]_1\ <= \^count_reg_reg[4]_1\;
\FSM_onehot_state[1]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__13_n_0\,
      I1 => \FSM_onehot_state_reg[4]_1\(3),
      I2 => \FSM_onehot_state_reg[4]_1\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]_1\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_1\(1),
      I1 => \^count_reg_reg[4]_0\(4),
      I2 => \^count_reg_reg[4]_0\(3),
      I3 => \^count_reg_reg[4]_0\(1),
      I4 => \^count_reg_reg[4]_0\(2),
      I5 => \^count_reg_reg[4]_0\(0),
      O => D(1)
    );
\FSM_onehot_state[3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(0),
      I1 => Q(0),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_10__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(1),
      I1 => Q(1),
      O => \count_reg_reg[1]_1\
    );
\FSM_onehot_state[4]_i_11__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => Q(4),
      I1 => \^count_reg_reg[4]_0\(4),
      I2 => \^count_reg_reg[4]_0\(3),
      I3 => Q(3),
      I4 => \FSM_onehot_state[4]_i_15__6_n_0\,
      O => \^count_reg_reg[4]_1\
    );
\FSM_onehot_state[4]_i_12__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(3),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \FSM_onehot_state[4]_i_15__6_n_0\,
      O => \FSM_onehot_state[4]_i_12__6_n_0\
    );
\FSM_onehot_state[4]_i_15__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2BFFFF0000BB2B"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => Q(2),
      I5 => \^count_reg_reg[4]_0\(2),
      O => \FSM_onehot_state[4]_i_15__6_n_0\
    );
\FSM_onehot_state[4]_i_2__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => Q(3),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \FSM_onehot_state[4]_i_7__6_n_0\,
      I3 => \^count_reg_reg[4]_0\(4),
      I4 => Q(4),
      O => \count_reg_reg[3]_0\
    );
\FSM_onehot_state[4]_i_3__14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]_1\(3),
      I1 => \FSM_onehot_state_reg[4]_1\(1),
      I2 => \FSM_onehot_state[4]_i_4__13_n_0\,
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(0),
      I1 => \^count_reg_reg[4]_0\(2),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(3),
      I4 => \^count_reg_reg[4]_0\(4),
      O => \FSM_onehot_state[4]_i_4__13_n_0\
    );
\FSM_onehot_state[4]_i_5__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004000004C200"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_7__6_n_0\,
      I1 => \FSM_onehot_state[4]_i_12__6_n_0\,
      I2 => \^count_reg_reg[4]_1\,
      I3 => \FSM_onehot_state_reg[4]\,
      I4 => \FSM_onehot_state_reg[4]_0\(0),
      I5 => \FSM_onehot_state_reg[4]_0\(1),
      O => \count_reg_reg[1]_0\
    );
\FSM_onehot_state[4]_i_7__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => \^count_reg_reg[4]_0\(2),
      I5 => Q(2),
      O => \FSM_onehot_state[4]_i_7__6_n_0\
    );
\count_reg[0]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(2),
      I1 => \^count_reg_reg[4]_0\(1),
      I2 => \^count_reg_reg[4]_0\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(2),
      I4 => \^count_reg_reg[4]_0\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^count_reg_reg[4]_0\(4),
      I1 => \^count_reg_reg[4]_0\(3),
      I2 => \^count_reg_reg[4]_0\(1),
      I3 => \^count_reg_reg[4]_0\(0),
      I4 => \^count_reg_reg[4]_0\(2),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(0),
      Q => \^count_reg_reg[4]_0\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(1),
      Q => \^count_reg_reg[4]_0\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(2),
      Q => \^count_reg_reg[4]_0\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(3),
      Q => \^count_reg_reg[4]_0\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => count_next(4),
      Q => \^count_reg_reg[4]_0\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    next_state6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    complete_tick : out STD_LOGIC;
    \FSM_onehot_state[4]_i_3__15_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ack_in_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 : entity is "up_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_7 is
  signal \FSM_onehot_state[4]_i_7__7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^complete_tick\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_12__5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_3__15\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__12\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__14\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__16\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__16\ : label is "soft_lutpair1";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  complete_tick <= \^complete_tick\;
\FSM_onehot_state[2]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA2AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => D(0)
    );
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009009000009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state[4]_i_3__15_0\(2),
      I2 => \FSM_onehot_state[4]_i_3__15_0\(1),
      I3 => \^q\(0),
      I4 => \FSM_onehot_state[4]_i_3__15_0\(0),
      I5 => \^q\(1),
      O => \count_reg_reg[2]_0\
    );
\FSM_onehot_state[4]_i_12__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__15_0\(1),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__15_0\(0),
      O => \count_reg_reg[1]_0\
    );
\FSM_onehot_state[4]_i_13__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_state[4]_i_3__15_0\(0),
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[4]_i_3__15_0\(1),
      I4 => \FSM_onehot_state[4]_i_3__15_0\(2),
      I5 => \^q\(2),
      O => next_state6(0)
    );
\FSM_onehot_state[4]_i_3__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_7__7_n_0\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state[4]_i_3__15_0\(0),
      I3 => \^q\(1),
      I4 => \FSM_onehot_state[4]_i_3__15_0\(1),
      O => \count_reg_reg[0]_0\
    );
\FSM_onehot_state[4]_i_3__16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^complete_tick\,
      I2 => \FSM_onehot_state_reg[4]\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_4__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => \^complete_tick\
    );
\FSM_onehot_state[4]_i_7__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \FSM_onehot_state[4]_i_3__15_0\(3),
      I2 => \^q\(4),
      I3 => \FSM_onehot_state[4]_i_3__15_0\(4),
      I4 => \FSM_onehot_state[4]_i_3__15_0\(2),
      I5 => \^q\(2),
      O => \FSM_onehot_state[4]_i_7__7_n_0\
    );
\count_reg[0]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66626666"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(1)
    );
\count_reg[2]_i_1__16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => count_next(2)
    );
\count_reg[3]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7B8080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(3)
    );
\count_reg[4]_i_1__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in_1,
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in_1,
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in_1,
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in_1,
      D => count_next(3),
      Q => \^q\(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in_1,
      D => count_next(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm is
  port (
    next_out_9 : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[4]\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \counter[31]\ : in STD_LOGIC;
    \counter[31]_0\ : in STD_LOGIC;
    \counter[31]_1\ : in STD_LOGIC;
    \counter[31]_2\ : in STD_LOGIC;
    plusOp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_2__0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
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
  signal ce_reg_i_1_n_0 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal reset_control_reg_i_2_n_0 : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
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
  attribute SOFT_HLUTNM of acks_out_reg_i_1 : label is "soft_lutpair175";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ce_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of ce_reg_i_1 : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \counter_s_reg[0]_i_1\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \counter_s_reg[10]_i_1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \counter_s_reg[11]_i_1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \counter_s_reg[12]_i_1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \counter_s_reg[13]_i_1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \counter_s_reg[14]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \counter_s_reg[15]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \counter_s_reg[16]_i_1\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \counter_s_reg[17]_i_1\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \counter_s_reg[18]_i_1\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \counter_s_reg[19]_i_1\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \counter_s_reg[1]_i_1\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \counter_s_reg[20]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \counter_s_reg[21]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \counter_s_reg[22]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \counter_s_reg[23]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \counter_s_reg[24]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \counter_s_reg[25]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \counter_s_reg[26]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \counter_s_reg[27]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \counter_s_reg[28]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \counter_s_reg[29]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \counter_s_reg[2]_i_1\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \counter_s_reg[30]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \counter_s_reg[31]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \counter_s_reg[3]_i_1\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \counter_s_reg[4]_i_1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \counter_s_reg[5]_i_1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \counter_s_reg[6]_i_1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \counter_s_reg[7]_i_1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \counter_s_reg[8]_i_1\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \counter_s_reg[9]_i_1\ : label is "soft_lutpair188";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of reset_control_reg_i_1 : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of reset_control_reg_i_2 : label is "soft_lutpair176";
begin
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_11,
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
      CE => logic_n_11,
      D => dut_n_9,
      Q => \ce__0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => dut_n_8,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => logic_n_12,
      Q => \asout_array[9]_0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => dut_n_7,
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
      G => logic_n_10,
      GE => '1',
      Q => ack_out_9
    );
acks_out_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      O => acks_out
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
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
      O => ce_reg_i_1_n_0
    );
\counter_s_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(0),
      I1 => ack_out_9,
      O => D(0)
    );
\counter_s_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(10),
      I1 => ack_out_9,
      O => D(10)
    );
\counter_s_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(11),
      I1 => ack_out_9,
      O => D(11)
    );
\counter_s_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(12),
      I1 => ack_out_9,
      O => D(12)
    );
\counter_s_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(13),
      I1 => ack_out_9,
      O => D(13)
    );
\counter_s_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(14),
      I1 => ack_out_9,
      O => D(14)
    );
\counter_s_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(15),
      I1 => ack_out_9,
      O => D(15)
    );
\counter_s_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(16),
      I1 => ack_out_9,
      O => D(16)
    );
\counter_s_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(17),
      I1 => ack_out_9,
      O => D(17)
    );
\counter_s_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(18),
      I1 => ack_out_9,
      O => D(18)
    );
\counter_s_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(19),
      I1 => ack_out_9,
      O => D(19)
    );
\counter_s_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(1),
      I1 => ack_out_9,
      O => D(1)
    );
\counter_s_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(20),
      I1 => ack_out_9,
      O => D(20)
    );
\counter_s_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(21),
      I1 => ack_out_9,
      O => D(21)
    );
\counter_s_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(22),
      I1 => ack_out_9,
      O => D(22)
    );
\counter_s_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(23),
      I1 => ack_out_9,
      O => D(23)
    );
\counter_s_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(24),
      I1 => ack_out_9,
      O => D(24)
    );
\counter_s_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(25),
      I1 => ack_out_9,
      O => D(25)
    );
\counter_s_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(26),
      I1 => ack_out_9,
      O => D(26)
    );
\counter_s_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(27),
      I1 => ack_out_9,
      O => D(27)
    );
\counter_s_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(28),
      I1 => ack_out_9,
      O => D(28)
    );
\counter_s_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(29),
      I1 => ack_out_9,
      O => D(29)
    );
\counter_s_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(2),
      I1 => ack_out_9,
      O => D(2)
    );
\counter_s_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(30),
      I1 => ack_out_9,
      O => D(30)
    );
\counter_s_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(31),
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
      I0 => plusOp(3),
      I1 => ack_out_9,
      O => D(3)
    );
\counter_s_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(4),
      I1 => ack_out_9,
      O => D(4)
    );
\counter_s_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(5),
      I1 => ack_out_9,
      O => D(5)
    );
\counter_s_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(6),
      I1 => ack_out_9,
      O => D(6)
    );
\counter_s_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(7),
      I1 => ack_out_9,
      O => D(7)
    );
\counter_s_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(8),
      I1 => ack_out_9,
      O => D(8)
    );
\counter_s_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp(9),
      I1 => ack_out_9,
      O => D(9)
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter
     port map (
      AR(0) => AR(0),
      D(2) => dut_n_7,
      D(1) => dut_n_8,
      D(0) => dut_n_9,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(4) => logic_n_5,
      \FSM_onehot_state_reg[4]\(3) => logic_n_6,
      \FSM_onehot_state_reg[4]\(2) => logic_n_7,
      \FSM_onehot_state_reg[4]\(1) => logic_n_8,
      \FSM_onehot_state_reg[4]\(0) => logic_n_9,
      \FSM_onehot_state_reg[4]_0\(3) => \asout_array[9]_0\,
      \FSM_onehot_state_reg[4]_0\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]_0\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]_0\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\ => dut_n_6,
      \count_reg_reg[2]_0\ => dut_n_5,
      \count_reg_reg[3]_0\ => dut_n_11,
      next_state6(0) => next_state6(2),
      valid => valid
    );
logic: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm
     port map (
      D(0) => logic_n_12,
      E(0) => logic_n_11,
      \FSM_onehot_state[4]_i_2__0\(4 downto 0) => \FSM_onehot_state[4]_i_2__0\(4 downto 0),
      \FSM_onehot_state[4]_i_5_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_5,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_6,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_7,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_8,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_9,
      \FSM_onehot_state_reg[3]_0\(0) => next_state6(2),
      \FSM_onehot_state_reg[3]_1\ => dut_n_6,
      \FSM_onehot_state_reg[3]_2\ => dut_n_5,
      \FSM_onehot_state_reg[4]_0\ => logic_n_10,
      \FSM_onehot_state_reg[4]_1\ => dut_n_11,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => reset_control,
      acks_out_reg(4) => nexts_out,
      acks_out_reg(3) => \asout_array[9]_0\,
      acks_out_reg(2) => \FSM_onehot_state_reg_n_0_[2]\,
      acks_out_reg(1) => \ce__0\,
      acks_out_reg(0) => \FSM_onehot_state_reg_n_0_[0]\,
      clk => clk,
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[2]_1\ => \j_reg[2]_0\,
      \j_reg[3]_0\ => \j_reg[3]\,
      \j_reg[4]_0\ => \j_reg[4]\,
      valid => valid
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
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \asout_array[9]_0\,
      O => \reset_control__0\
    );
reset_control_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \asout_array[9]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
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
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[3]\ : out STD_LOGIC;
    \j_reg[4]\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \a_j_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[0]_i_1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_2\ : in STD_LOGIC;
    \a_j_reg[0]_i_2_0\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    next_out_9 : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_2__2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_8 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal a_in_9 : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[8]_1\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__0_n_0\ : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__0_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__0\ : label is "soft_lutpair160";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__0\ : label is "soft_lutpair160";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__0\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__0\ : label is "soft_lutpair161";
begin
  AR(0) <= \^ar\(0);
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
      D => dut_n_9,
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
      D => dut_n_8,
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
      D => logic_n_10,
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
      D => dut_n_7,
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
\acks_out_reg_i_1__0\: unisim.vcomponents.LUT3
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
      D => u_i(0),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(0)
    );
\asout_array_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(1),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(1)
    );
\asout_array_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(2),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(2)
    );
\asout_array_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(3),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(3)
    );
\asout_array_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(4),
      G => \asout_array[8]_1\,
      GE => '1',
      Q => a_in_9(4)
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
      Q => a_in_9(10)
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
      Q => a_in_9(11)
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
      Q => a_in_9(12)
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
      Q => a_in_9(15)
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
      Q => a_in_9(16)
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
      Q => a_in_9(17)
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
      G => \ce_reg_i_1__0_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
      O => \ce_reg_i_1__0_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_0
     port map (
      D(2) => dut_n_7,
      D(1) => dut_n_8,
      D(0) => dut_n_9,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(4) => logic_n_11,
      \FSM_onehot_state_reg[4]\(3) => logic_n_12,
      \FSM_onehot_state_reg[4]\(2) => logic_n_13,
      \FSM_onehot_state_reg[4]\(1) => logic_n_14,
      \FSM_onehot_state_reg[4]\(0) => logic_n_15,
      \FSM_onehot_state_reg[4]_0\(3) => \asout_array[8]_1\,
      \FSM_onehot_state_reg[4]_0\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]_0\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]_0\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\ => dut_n_6,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[2]_0\ => dut_n_5,
      \count_reg_reg[3]_0\ => dut_n_11,
      next_state6(0) => next_state6(2),
      valid => valid
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized0\
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => logic_n_9,
      \FSM_onehot_state[4]_i_2__2\(4 downto 0) => \FSM_onehot_state[4]_i_2__2\(4 downto 0),
      \FSM_onehot_state[4]_i_5__0_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_11,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_12,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_13,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_14,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_15,
      \FSM_onehot_state_reg[2]_0\(0) => logic_n_10,
      \FSM_onehot_state_reg[3]_0\(0) => next_state6(2),
      \FSM_onehot_state_reg[3]_1\ => dut_n_6,
      \FSM_onehot_state_reg[3]_2\ => dut_n_5,
      \FSM_onehot_state_reg[4]_0\ => logic_n_8,
      \FSM_onehot_state_reg[4]_1\ => dut_n_11,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => reset_control,
      a_in_9(44 downto 0) => a_in_9(44 downto 0),
      \a_j_reg[0]_0\(1 downto 0) => \a_j_reg[0]\(1 downto 0),
      \a_j_reg[0]_i_1_0\ => \a_j_reg[0]_i_1\,
      \a_j_reg[0]_i_1_1\ => \a_j_reg[0]_i_1_0\,
      \a_j_reg[0]_i_2_0\ => \a_j_reg[0]_i_2\,
      \a_j_reg[0]_i_2_1\ => \a_j_reg[0]_i_2_0\,
      clk => clk,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[8]_1\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[3]_0\ => \j_reg[3]\,
      \j_reg[3]_1\ => \j_reg[3]_0\,
      \j_reg[4]_0\ => \j_reg[4]\,
      next_out_9 => next_out_9,
      valid => valid
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
      I0 => \ce__0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \asout_array[8]_1\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \asout_array[8]_1\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
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
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    a_in_8 : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[3]_i_3__1\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC;
    \j_reg[4]\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    nRst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[0]_i_1__0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__0_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_2__0\ : in STD_LOGIC;
    \a_j_reg[0]_i_2__0_0\ : in STD_LOGIC;
    next_out_8 : in STD_LOGIC;
    \a_j_reg[2]\ : in STD_LOGIC;
    \a_j_reg[2]_0\ : in STD_LOGIC;
    \a_j_reg[2]_1\ : in STD_LOGIC;
    \a_j_reg[4]\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__1\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__1_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__1\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_7__1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_7 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
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
  signal \ce_reg_i_1__1_n_0\ : STD_LOGIC;
  signal complete_tick : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_19 : STD_LOGIC;
  signal logic_n_20 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__1_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__1\ : label is "soft_lutpair141";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__1\ : label is "soft_lutpair141";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__1\ : label is "soft_lutpair140";
begin
  AR(0) <= \^ar\(0);
  a_in_8(39 downto 0) <= \^a_in_8\(39 downto 0);
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
      CE => logic_n_6,
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
      CE => logic_n_6,
      D => logic_n_20,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_6,
      D => dut_n_10,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_6,
      D => logic_n_19,
      Q => \asout_array[7]_2\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_6,
      D => dut_n_9,
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
      G => logic_n_5,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \ce__0\,
      I2 => nexts_out,
      O => acks_out
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
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
      D => u_i(1),
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
      D => u_i(2),
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
      D => u_i(3),
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
      D => u_i(4),
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
      G => \ce_reg_i_1__1_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
      O => \ce_reg_i_1__1_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_1
     port map (
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state[4]_i_3__3_0\(4) => logic_n_7,
      \FSM_onehot_state[4]_i_3__3_0\(3) => logic_n_8,
      \FSM_onehot_state[4]_i_3__3_0\(2) => logic_n_9,
      \FSM_onehot_state[4]_i_3__3_0\(1) => logic_n_10,
      \FSM_onehot_state[4]_i_3__3_0\(0) => logic_n_11,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[7]_2\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]_0\ => dut_n_0,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[1]_0\ => dut_n_8,
      \count_reg_reg[2]_0\ => dut_n_6,
      next_state6(0) => next_state6(2)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized1\
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => logic_n_6,
      \FSM_onehot_state[4]_i_4__2_0\ => dut_n_6,
      \FSM_onehot_state[4]_i_5__1_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state[4]_i_7__1\(2 downto 0) => \FSM_onehot_state[4]_i_7__1\(2 downto 0),
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_7,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_8,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_9,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_10,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_11,
      \FSM_onehot_state_reg[2]_0\(1) => logic_n_19,
      \FSM_onehot_state_reg[2]_0\(0) => logic_n_20,
      \FSM_onehot_state_reg[3]_0\(1 downto 0) => \FSM_onehot_state_reg[3]_0\(1 downto 0),
      \FSM_onehot_state_reg[3]_1\ => dut_n_0,
      \FSM_onehot_state_reg[4]_0\ => logic_n_5,
      \FSM_onehot_state_reg[4]_1\(0) => next_state6(2),
      \FSM_onehot_state_reg[4]_2\ => dut_n_8,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => reset_control,
      a_in_8(39 downto 0) => \^a_in_8\(39 downto 0),
      \a_j_reg[0]_i_1__0_0\ => \a_j_reg[0]_i_1__0\,
      \a_j_reg[0]_i_1__0_1\ => \a_j_reg[0]_i_1__0_0\,
      \a_j_reg[0]_i_1__1\ => \a_j_reg[0]_i_1__1\,
      \a_j_reg[0]_i_2__0_0\ => \a_j_reg[0]_i_2__0\,
      \a_j_reg[0]_i_2__0_1\ => \a_j_reg[0]_i_2__0_0\,
      \a_j_reg[2]_0\ => \a_j_reg[2]\,
      \a_j_reg[2]_1\ => \a_j_reg[2]_0\,
      \a_j_reg[2]_2\ => \a_j_reg[2]_1\,
      \a_j_reg[3]_i_3__1\ => \a_j_reg[3]_i_3__1\,
      \a_j_reg[4]_0\ => \a_j_reg[4]\,
      \a_j_reg[4]_i_1__1_0\ => \a_j_reg[4]_i_1__1\,
      \a_j_reg[4]_i_1__1_1\ => \a_j_reg[4]_i_1__1_0\,
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[7]_2\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[3]_0\ => \j_reg[3]\,
      \j_reg[3]_1\ => \j_reg[3]_0\,
      \j_reg[4]_0\ => \j_reg[4]\,
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
      I1 => \ce__0\,
      I2 => \asout_array[7]_2\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \asout_array[7]_2\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
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
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[4]_i_16__1\ : out STD_LOGIC;
    \a_j_reg[4]_i_12__1\ : out STD_LOGIC;
    \a_j_reg[4]_i_12__1_0\ : out STD_LOGIC;
    \a_j_reg[4]_i_12__1_1\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    a_in_7 : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC;
    \j_reg[4]\ : out STD_LOGIC;
    nRst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[0]\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__1_0\ : in STD_LOGIC;
    \a_j_reg[3]_i_2__1\ : in STD_LOGIC;
    \a_j_reg[0]_i_2__1\ : in STD_LOGIC;
    next_out_7 : in STD_LOGIC;
    \a_j_reg[0]_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2_1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__2_2\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_7__2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_6 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
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
  signal \ce_reg_i_1__2_n_0\ : STD_LOGIC;
  signal complete_tick : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
  signal logic_n_18 : STD_LOGIC;
  signal logic_n_19 : STD_LOGIC;
  signal logic_n_23 : STD_LOGIC;
  signal logic_n_24 : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__2_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__2\ : label is "soft_lutpair118";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__2\ : label is "soft_lutpair118";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__2\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__2\ : label is "soft_lutpair117";
begin
  AR(0) <= \^ar\(0);
  a_in_7(34 downto 0) <= \^a_in_7\(34 downto 0);
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
      D => logic_n_24,
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
      D => dut_n_10,
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
      D => logic_n_23,
      Q => \asout_array[6]_3\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => dut_n_9,
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
\acks_out_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \ce__0\,
      I2 => nexts_out,
      O => acks_out
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
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
      D => u_i(1),
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
      D => u_i(2),
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
      D => u_i(3),
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
      D => u_i(4),
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
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
      O => \ce_reg_i_1__2_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_2
     port map (
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state[4]_i_3__5_0\(4) => logic_n_15,
      \FSM_onehot_state[4]_i_3__5_0\(3) => logic_n_16,
      \FSM_onehot_state[4]_i_3__5_0\(2) => logic_n_17,
      \FSM_onehot_state[4]_i_3__5_0\(1) => logic_n_18,
      \FSM_onehot_state[4]_i_3__5_0\(0) => logic_n_19,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[6]_3\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]_0\ => dut_n_0,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[1]_0\ => dut_n_8,
      \count_reg_reg[2]_0\ => dut_n_6,
      next_state6(0) => next_state6(2)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized2\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => logic_n_11,
      \FSM_onehot_state[4]_i_4__4_0\ => dut_n_6,
      \FSM_onehot_state[4]_i_5__2_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state[4]_i_7__2\(3 downto 0) => \FSM_onehot_state[4]_i_7__2\(3 downto 0),
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_15,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_16,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_17,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_18,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_19,
      \FSM_onehot_state_reg[2]_0\(1) => logic_n_23,
      \FSM_onehot_state_reg[2]_0\(0) => logic_n_24,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_2\(2 downto 0) => \FSM_onehot_state_reg[3]_2\(2 downto 0),
      \FSM_onehot_state_reg[3]_3\ => dut_n_0,
      \FSM_onehot_state_reg[4]_0\ => logic_n_10,
      \FSM_onehot_state_reg[4]_1\(0) => next_state6(2),
      \FSM_onehot_state_reg[4]_2\ => dut_n_8,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => reset_control,
      a_in_7(34 downto 0) => \^a_in_7\(34 downto 0),
      \a_j_reg[0]_0\ => \a_j_reg[0]\,
      \a_j_reg[0]_1\ => \a_j_reg[0]_0\,
      \a_j_reg[0]_i_1__1_0\ => \a_j_reg[0]_i_1__1\,
      \a_j_reg[0]_i_1__1_1\ => \a_j_reg[0]_i_1__1_0\,
      \a_j_reg[0]_i_1__2_0\ => \a_j_reg[0]_i_1__2\,
      \a_j_reg[0]_i_1__2_1\ => \a_j_reg[0]_i_1__2_0\,
      \a_j_reg[0]_i_1__2_2\ => \a_j_reg[0]_i_1__2_1\,
      \a_j_reg[0]_i_1__2_3\ => \a_j_reg[0]_i_1__2_2\,
      \a_j_reg[0]_i_2__1_0\ => \a_j_reg[0]_i_2__1\,
      \a_j_reg[3]_i_2__1\ => \a_j_reg[3]_i_2__1\,
      \a_j_reg[4]_i_12__1\ => \a_j_reg[4]_i_12__1\,
      \a_j_reg[4]_i_12__1_0\ => \a_j_reg[4]_i_12__1_0\,
      \a_j_reg[4]_i_12__1_1\ => \a_j_reg[4]_i_12__1_1\,
      \a_j_reg[4]_i_16__1_0\ => \a_j_reg[4]_i_16__1\,
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[6]_3\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[3]_0\ => \j_reg[3]\,
      \j_reg[4]_0\ => \j_reg[4]\,
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
      I1 => \ce__0\,
      I2 => \asout_array[6]_3\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \asout_array[6]_3\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
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
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \a_j_reg[3]_i_3__2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    a_in_6 : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[4]\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[3]_i_1__2\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \a_j_reg[0]_i_2__2\ : in STD_LOGIC;
    \a_j_reg[0]_i_2__2_0\ : in STD_LOGIC;
    next_out_6 : in STD_LOGIC;
    \a_j_reg[0]\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_0\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_1\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_2\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_7__3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_5 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_6\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \acks_out_reg_i_1__3_n_0\ : STD_LOGIC;
  signal \asout_array[5]_4\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__3_n_0\ : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
  signal logic_n_18 : STD_LOGIC;
  signal logic_n_23 : STD_LOGIC;
  signal logic_n_24 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__3_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__3\ : label is "soft_lutpair97";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__3\ : label is "soft_lutpair97";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__3\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__3\ : label is "soft_lutpair96";
begin
  AR(0) <= \^ar\(0);
  a_in_6(29 downto 0) <= \^a_in_6\(29 downto 0);
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
      D => logic_n_24,
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
      D => dut_n_10,
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
      D => logic_n_23,
      Q => \asout_array[5]_4\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_10,
      D => dut_n_9,
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
      I1 => \ce__0\,
      I2 => nexts_out,
      O => \acks_out_reg_i_1__3_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
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
      D => u_i(1),
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
      D => u_i(2),
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
      D => u_i(3),
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
      D => u_i(4),
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
      G => \ce_reg_i_1__3_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
      O => \ce_reg_i_1__3_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_3
     port map (
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state[4]_i_3__7_0\(4) => logic_n_14,
      \FSM_onehot_state[4]_i_3__7_0\(3) => logic_n_15,
      \FSM_onehot_state[4]_i_3__7_0\(2) => logic_n_16,
      \FSM_onehot_state[4]_i_3__7_0\(1) => logic_n_17,
      \FSM_onehot_state[4]_i_3__7_0\(0) => logic_n_18,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[5]_4\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      \count_reg_reg[0]_0\ => dut_n_0,
      \count_reg_reg[0]_1\ => dut_n_11,
      \count_reg_reg[0]_2\(0) => \count_reg_reg[0]_0\(0),
      \count_reg_reg[1]_0\ => dut_n_8,
      \count_reg_reg[2]_0\ => dut_n_6,
      next_state6(0) => next_state6(2)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized3\
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => logic_n_10,
      \FSM_onehot_state[4]_i_5__3_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state[4]_i_7__3\(3 downto 0) => \FSM_onehot_state[4]_i_7__3\(3 downto 0),
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_14,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_15,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_16,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_17,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_18,
      \FSM_onehot_state_reg[1]_1\ => dut_n_11,
      \FSM_onehot_state_reg[2]_0\(1) => logic_n_23,
      \FSM_onehot_state_reg[2]_0\(0) => logic_n_24,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_2\(2 downto 0) => \FSM_onehot_state_reg[3]_2\(2 downto 0),
      \FSM_onehot_state_reg[3]_3\ => dut_n_0,
      \FSM_onehot_state_reg[3]_4\ => dut_n_6,
      \FSM_onehot_state_reg[4]_0\ => logic_n_9,
      \FSM_onehot_state_reg[4]_1\(0) => next_state6(2),
      \FSM_onehot_state_reg[4]_2\ => dut_n_8,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => reset_control,
      a_in_6(29 downto 0) => \^a_in_6\(29 downto 0),
      \a_j_reg[0]_0\ => \a_j_reg[0]\,
      \a_j_reg[0]_i_1__3_0\ => \a_j_reg[0]_i_1__3\,
      \a_j_reg[0]_i_1__3_1\ => \a_j_reg[0]_i_1__3_0\,
      \a_j_reg[0]_i_1__3_2\ => \a_j_reg[0]_i_1__3_1\,
      \a_j_reg[0]_i_1__3_3\ => \a_j_reg[0]_i_1__3_2\,
      \a_j_reg[0]_i_2__2\ => \a_j_reg[0]_i_2__2\,
      \a_j_reg[0]_i_2__2_0\ => \a_j_reg[0]_i_2__2_0\,
      \a_j_reg[3]_i_1__2_0\ => \a_j_reg[3]_i_1__2\,
      \a_j_reg[3]_i_3__2_0\ => \a_j_reg[3]_i_3__2\,
      clk => clk,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\(4) => nexts_out,
      \count_reg_reg[0]_0\(3) => \asout_array[5]_4\,
      \count_reg_reg[0]_0\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_0\(1) => \ce__0\,
      \count_reg_reg[0]_0\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[3]_0\ => \j_reg[3]\,
      \j_reg[4]_0\ => \j_reg[4]\,
      next_out_6 => next_out_6
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
      I1 => \ce__0\,
      I2 => \asout_array[5]_4\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \asout_array[5]_4\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
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
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \a_j_reg[4]_i_3__3\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    a_in_5 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    nRst : in STD_LOGIC;
    \a_j_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[0]_i_1__3\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__3_0\ : in STD_LOGIC;
    \a_j_reg[4]_i_2__2\ : in STD_LOGIC;
    \a_j_reg[4]_i_2__2_0\ : in STD_LOGIC;
    next_out_5 : in STD_LOGIC;
    \a_j_reg[4]_0\ : in STD_LOGIC;
    \a_j_reg[4]_1\ : in STD_LOGIC;
    \a_j_reg[3]_i_1__4\ : in STD_LOGIC;
    \a_j_reg[3]_i_1__4_0\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__4\ : in STD_LOGIC;
    \a_j_reg[4]_i_1__4_0\ : in STD_LOGIC;
    \a_j_reg[2]_i_1__4\ : in STD_LOGIC;
    \a_j_reg[0]\ : in STD_LOGIC;
    \a_j_reg[0]_0\ : in STD_LOGIC;
    \a_j_reg[1]_i_1__4\ : in STD_LOGIC;
    a_in_4 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_5\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \acks_out_reg_i_1__4_n_0\ : STD_LOGIC;
  signal \asout_array[4]_5\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__4_n_0\ : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
  signal logic_n_18 : STD_LOGIC;
  signal logic_n_19 : STD_LOGIC;
  signal logic_n_21 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__4_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__4\ : label is "soft_lutpair77";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__4\ : label is "soft_lutpair76";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__4\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__4\ : label is "soft_lutpair76";
begin
  AR(0) <= \^ar\(0);
  a_in_5(24 downto 0) <= \^a_in_5\(24 downto 0);
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
      D => dut_n_11,
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
      D => dut_n_10,
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
      D => logic_n_21,
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
      D => dut_n_9,
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
      G => logic_n_14,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \acks_out_reg_i_1__4_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
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
      D => u_i(1),
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
      D => u_i(2),
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
      D => u_i(3),
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
      D => u_i(4),
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
      G => \ce_reg_i_1__4_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      I3 => nexts_out,
      O => \ce_reg_i_1__4_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_4
     port map (
      D(2) => dut_n_9,
      D(1) => dut_n_10,
      D(0) => dut_n_11,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[4]_5\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4) => logic_n_15,
      Q(3) => logic_n_16,
      Q(2) => logic_n_17,
      Q(1) => logic_n_18,
      Q(0) => logic_n_19,
      clk => clk,
      \count_reg_reg[0]_0\ => dut_n_8,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]_0\(0),
      \count_reg_reg[1]_0\ => dut_n_7,
      \count_reg_reg[2]_0\ => dut_n_6,
      \count_reg_reg[3]_0\ => dut_n_0,
      \count_reg_reg[4]_0\(4 downto 0) => u_i(4 downto 0),
      valid => valid
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized4\
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => logic_n_13,
      \FSM_onehot_state[4]_i_5__4_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state_reg[0]_0\ => logic_n_14,
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_15,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_16,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_17,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_18,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_19,
      \FSM_onehot_state_reg[2]_0\(0) => logic_n_21,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_1\ => dut_n_8,
      \FSM_onehot_state_reg[3]_2\ => dut_n_7,
      \FSM_onehot_state_reg[3]_3\ => dut_n_6,
      \FSM_onehot_state_reg[4]_0\ => dut_n_0,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => reset_control,
      a_in_4(7 downto 4) => a_in_4(15 downto 12),
      a_in_4(3 downto 0) => a_in_4(7 downto 4),
      a_in_5(24 downto 0) => \^a_in_5\(24 downto 0),
      \a_j_reg[0]_0\ => \a_j_reg[0]\,
      \a_j_reg[0]_1\ => \a_j_reg[0]_0\,
      \a_j_reg[0]_i_1__3\ => \a_j_reg[0]_i_1__3\,
      \a_j_reg[0]_i_1__3_0\ => \a_j_reg[0]_i_1__3_0\,
      \a_j_reg[1]_i_1__4_0\ => \a_j_reg[1]_i_1__4\,
      \a_j_reg[2]_i_1__4_0\ => \a_j_reg[2]_i_1__4\,
      \a_j_reg[3]_i_1__4_0\ => \a_j_reg[3]_i_1__4\,
      \a_j_reg[3]_i_1__4_1\ => \a_j_reg[3]_i_1__4_0\,
      \a_j_reg[4]_0\(2 downto 0) => \a_j_reg[4]\(2 downto 0),
      \a_j_reg[4]_1\ => \a_j_reg[4]_0\,
      \a_j_reg[4]_2\ => \a_j_reg[4]_1\,
      \a_j_reg[4]_i_1__4_0\ => \a_j_reg[4]_i_1__4\,
      \a_j_reg[4]_i_1__4_1\ => \a_j_reg[4]_i_1__4_0\,
      \a_j_reg[4]_i_2__2_0\ => \a_j_reg[4]_i_2__2\,
      \a_j_reg[4]_i_2__2_1\ => \a_j_reg[4]_i_2__2_0\,
      \a_j_reg[4]_i_3__3_0\ => \a_j_reg[4]_i_3__3\,
      clk => clk,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\(4) => nexts_out,
      \count_reg_reg[0]_0\(3) => \asout_array[4]_5\,
      \count_reg_reg[0]_0\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_0\(1) => \ce__0\,
      \count_reg_reg[0]_0\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[2]_0\ => \j_reg[2]\,
      next_out_5 => next_out_5,
      valid => valid
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
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \asout_array[4]_5\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
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
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    a_in_4 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_5\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_6\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_7\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC;
    nRst : in STD_LOGIC;
    \a_j_reg[4]_i_1__4\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \a_j_reg[4]_i_4__4\ : in STD_LOGIC;
    next_out_4 : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_3 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_4\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \acks_out_reg_i_1__5_n_0\ : STD_LOGIC;
  signal \asout_array[3]_6\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__5_n_0\ : STD_LOGIC;
  signal complete_tick : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_21 : STD_LOGIC;
  signal logic_n_22 : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__5_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__5\ : label is "soft_lutpair56";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__5\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__5\ : label is "soft_lutpair55";
begin
  AR(0) <= \^ar\(0);
  a_in_4(19 downto 0) <= \^a_in_4\(19 downto 0);
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
      D => logic_n_22,
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
      D => dut_n_10,
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
      D => logic_n_21,
      Q => \asout_array[3]_6\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_11,
      D => dut_n_9,
      Q => nexts_out,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \acks_out_reg_i_1__5_n_0\,
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
      I1 => \ce__0\,
      I2 => nexts_out,
      O => \acks_out_reg_i_1__5_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
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
      D => u_i(1),
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
      D => u_i(2),
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
      D => u_i(3),
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
      D => u_i(4),
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
      G => \ce_reg_i_1__5_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
      O => \ce_reg_i_1__5_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_5
     port map (
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state[4]_i_3__11_0\(4) => logic_n_12,
      \FSM_onehot_state[4]_i_3__11_0\(3) => logic_n_13,
      \FSM_onehot_state[4]_i_3__11_0\(2) => logic_n_14,
      \FSM_onehot_state[4]_i_3__11_0\(1) => logic_n_15,
      \FSM_onehot_state[4]_i_3__11_0\(0) => logic_n_16,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[3]_6\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]_0\ => dut_n_0,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]_0\(0),
      \count_reg_reg[1]_0\ => dut_n_8,
      \count_reg_reg[2]_0\ => dut_n_6,
      next_state6(0) => next_state6(2)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized5\
     port map (
      D(1) => logic_n_21,
      D(0) => logic_n_22,
      E(0) => logic_n_11,
      \FSM_onehot_state[4]_i_4__10_0\ => dut_n_6,
      \FSM_onehot_state[4]_i_5__5_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state[4]_i_7__5\(4 downto 0) => D(4 downto 0),
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_12,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_13,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_14,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_15,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_16,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_2\ => \FSM_onehot_state_reg[3]_2\,
      \FSM_onehot_state_reg[3]_3\ => \FSM_onehot_state_reg[3]_3\,
      \FSM_onehot_state_reg[3]_4\ => \FSM_onehot_state_reg[3]_4\,
      \FSM_onehot_state_reg[3]_5\ => \FSM_onehot_state_reg[3]_5\,
      \FSM_onehot_state_reg[3]_6\ => \FSM_onehot_state_reg[3]_6\,
      \FSM_onehot_state_reg[3]_7\(1 downto 0) => \FSM_onehot_state_reg[3]_7\(1 downto 0),
      \FSM_onehot_state_reg[3]_8\ => dut_n_0,
      \FSM_onehot_state_reg[4]_0\ => logic_n_10,
      \FSM_onehot_state_reg[4]_1\(0) => next_state6(2),
      \FSM_onehot_state_reg[4]_2\ => dut_n_8,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => reset_control,
      a_in_4(19 downto 0) => \^a_in_4\(19 downto 0),
      \a_j_reg[4]_i_1__4\ => \a_j_reg[4]_i_1__4\,
      \a_j_reg[4]_i_4__4_0\ => \a_j_reg[4]_i_4__4\,
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\(4) => nexts_out,
      \count_reg_reg[0]_0\(3) => \asout_array[3]_6\,
      \count_reg_reg[0]_0\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_0\(1) => \ce__0\,
      \count_reg_reg[0]_0\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[3]_0\ => \j_reg[3]\,
      next_out_4 => next_out_4
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => \acks_out_reg_i_1__5_n_0\,
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
      I1 => \ce__0\,
      I2 => \asout_array[3]_6\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \asout_array[3]_6\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
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
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_3 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \a_j_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    nRst : in STD_LOGIC;
    \a_j_reg[0]_i_1__7\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__7_0\ : in STD_LOGIC;
    next_out_3 : in STD_LOGIC;
    \a_j_reg[0]_0\ : in STD_LOGIC;
    \a_j_reg[0]_1\ : in STD_LOGIC;
    a_in_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    \FSM_onehot_state[4]_i_2__14\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal \^a_in_3\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \acks_out_reg_i_1__6_n_0\ : STD_LOGIC;
  signal \asout_array[2]_7\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__6_n_0\ : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_1 : STD_LOGIC;
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
  signal logic_n_18 : STD_LOGIC;
  signal logic_n_19 : STD_LOGIC;
  signal logic_n_2 : STD_LOGIC;
  signal logic_n_20 : STD_LOGIC;
  signal logic_n_22 : STD_LOGIC;
  signal logic_n_3 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control__0\ : STD_LOGIC;
  signal \reset_control_reg_i_2__6_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__6\ : label is "soft_lutpair38";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__6\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__6\ : label is "soft_lutpair37";
begin
  AR(0) <= \^ar\(0);
  a_in_3(14 downto 0) <= \^a_in_3\(14 downto 0);
\FSM_onehot_state[4]_i_1__6\: unisim.vcomponents.LUT2
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
      CE => logic_n_12,
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
      CE => logic_n_12,
      D => dut_n_12,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_12,
      D => dut_n_11,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_12,
      D => logic_n_22,
      Q => \asout_array[2]_7\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_12,
      D => dut_n_10,
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
      G => logic_n_13,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => nexts_out,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \acks_out_reg_i_1__6_n_0\
    );
\asout_array_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => u_i(0),
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
      D => u_i(1),
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
      D => u_i(2),
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
      G => \ce_reg_i_1__6_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \ce__0\,
      I3 => nexts_out,
      O => \ce_reg_i_1__6_n_0\
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_counter_6
     port map (
      D(2) => dut_n_10,
      D(1) => dut_n_11,
      D(0) => dut_n_12,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\ => logic_n_1,
      \FSM_onehot_state_reg[4]_0\(1) => logic_n_2,
      \FSM_onehot_state_reg[4]_0\(0) => logic_n_3,
      \FSM_onehot_state_reg[4]_1\(3) => \asout_array[2]_7\,
      \FSM_onehot_state_reg[4]_1\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]_1\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]_1\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4) => logic_n_16,
      Q(3) => logic_n_17,
      Q(2) => logic_n_18,
      Q(1) => logic_n_19,
      Q(0) => logic_n_20,
      clk => clk,
      \count_reg_reg[0]_0\ => dut_n_9,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[1]_0\ => dut_n_5,
      \count_reg_reg[1]_1\ => dut_n_8,
      \count_reg_reg[3]_0\ => dut_n_7,
      \count_reg_reg[4]_0\(4 downto 0) => u_i(4 downto 0),
      \count_reg_reg[4]_1\ => dut_n_6,
      valid => valid
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized6\
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => logic_n_12,
      \FSM_onehot_state[4]_i_2__14\(3 downto 0) => \FSM_onehot_state[4]_i_2__14\(3 downto 0),
      \FSM_onehot_state[4]_i_9__6_0\(2 downto 0) => u_i(2 downto 0),
      \FSM_onehot_state_reg[0]_0\ => logic_n_13,
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_16,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_17,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_18,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_19,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_20,
      \FSM_onehot_state_reg[2]_0\(0) => logic_n_22,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_1\ => dut_n_9,
      \FSM_onehot_state_reg[3]_2\ => dut_n_8,
      \FSM_onehot_state_reg[3]_3\ => dut_n_6,
      \FSM_onehot_state_reg[4]_0\ => dut_n_7,
      \FSM_onehot_state_reg[4]_1\ => dut_n_5,
      Q(4) => logic_n_2,
      Q(3) => logic_n_3,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => reset_control,
      a_in_2(3) => a_in_2(9),
      a_in_2(2) => a_in_2(6),
      a_in_2(1 downto 0) => a_in_2(2 downto 1),
      a_in_3(14 downto 0) => \^a_in_3\(14 downto 0),
      \a_j_reg[0]_0\(1 downto 0) => \a_j_reg[0]\(1 downto 0),
      \a_j_reg[0]_1\ => \a_j_reg[0]_0\,
      \a_j_reg[0]_2\ => \a_j_reg[0]_1\,
      \a_j_reg[0]_i_1__7_0\ => \a_j_reg[0]_i_1__7\,
      \a_j_reg[0]_i_1__7_1\ => \a_j_reg[0]_i_1__7_0\,
      clk => clk,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[2]_7\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \j_reg[0]_0\ => logic_n_1,
      \j_reg[0]_1\ => \j_reg[0]\,
      \j_reg[2]_0\ => \j_reg[2]\,
      next_out_3 => next_out_3,
      valid => valid
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
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \asout_array[2]_7\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
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
    a_in_2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_s7_out : out STD_LOGIC;
    \ack_in_1__0\ : out STD_LOGIC;
    nRst_0 : out STD_LOGIC;
    ack_in_14_out : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[3]\ : out STD_LOGIC;
    \a_j_reg[0]_i_1__5\ : in STD_LOGIC;
    \a_j_reg[0]_i_1__5_0\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    ack_in_1 : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \a_j_reg[0]_i_1__5_1\ : in STD_LOGIC;
    next_out_2 : in STD_LOGIC;
    \asout_array_reg[2][4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\ : entity is "fsm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state[4]_i_1__8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \acks_out_reg_i_1__7_n_0\ : STD_LOGIC;
  signal \asout_array[1]_8\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__7_n_0\ : STD_LOGIC;
  signal complete_tick : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_11 : STD_LOGIC;
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal next_out_1 : STD_LOGIC;
  signal next_state6 : STD_LOGIC_VECTOR ( 2 to 2 );
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
  attribute SOFT_HLUTNM of ack_in_1_reg_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of ack_in_1_reg_i_2 : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of acks_out_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__7\ : label is "soft_lutpair21";
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
  attribute SOFT_HLUTNM of \ce_reg_i_1__7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of done_s_reg_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of done_s_reg_i_2 : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \reset_control_reg_i_1__7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reset_control_reg_i_2__7\ : label is "soft_lutpair20";
begin
  AR(0) <= \^ar\(0);
  a_in_2(9 downto 0) <= \^a_in_2\(9 downto 0);
\FSM_onehot_state[4]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ar\(0),
      I1 => nRst,
      O => SR(0)
    );
\FSM_onehot_state[4]_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ack_in_1,
      I1 => nRst,
      O => \FSM_onehot_state[4]_i_1__8_n_0\
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
      S => \FSM_onehot_state[4]_i_1__8_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => logic_n_14,
      Q => \ce__0\,
      R => \FSM_onehot_state[4]_i_1__8_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => dut_n_10,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state[4]_i_1__8_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => logic_n_13,
      Q => \asout_array[1]_8\,
      R => \FSM_onehot_state[4]_i_1__8_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_7,
      D => dut_n_9,
      Q => nexts_out,
      R => \FSM_onehot_state[4]_i_1__8_n_0\
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
      D => \acks_out_reg_i_1__7_n_0\,
      G => logic_n_6,
      GE => '1',
      Q => \^ar\(0)
    );
\acks_out_reg_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \ce__0\,
      I2 => nexts_out,
      O => \acks_out_reg_i_1__7_n_0\
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
      D => \asout_array_reg[2][4]\(0),
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
      D => \asout_array_reg[2][4]\(1),
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
      D => \asout_array_reg[2][4]\(2),
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
      D => \asout_array_reg[2][4]\(3),
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
      D => \asout_array_reg[2][4]\(4),
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
      G => \ce_reg_i_1__7_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => nexts_out,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
      O => \ce_reg_i_1__7_n_0\
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
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state[4]_i_3__15_0\(4) => logic_n_8,
      \FSM_onehot_state[4]_i_3__15_0\(3) => logic_n_9,
      \FSM_onehot_state[4]_i_3__15_0\(2) => logic_n_10,
      \FSM_onehot_state[4]_i_3__15_0\(1) => logic_n_11,
      \FSM_onehot_state[4]_i_3__15_0\(0) => logic_n_12,
      \FSM_onehot_state_reg[4]\(1) => \asout_array[1]_8\,
      \FSM_onehot_state_reg[4]\(0) => \ce__0\,
      Q(4 downto 0) => u_i(4 downto 0),
      ack_in_1 => ack_in_1,
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]_0\ => dut_n_0,
      \count_reg_reg[1]_0\ => dut_n_8,
      \count_reg_reg[2]_0\ => dut_n_6,
      next_state6(0) => next_state6(2)
    );
logic: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_logic_fsm__parameterized7\
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => logic_n_7,
      \FSM_onehot_state[4]_i_5__7_0\(4 downto 0) => u_i(4 downto 0),
      \FSM_onehot_state_reg[1]_0\(4) => logic_n_8,
      \FSM_onehot_state_reg[1]_0\(3) => logic_n_9,
      \FSM_onehot_state_reg[1]_0\(2) => logic_n_10,
      \FSM_onehot_state_reg[1]_0\(1) => logic_n_11,
      \FSM_onehot_state_reg[1]_0\(0) => logic_n_12,
      \FSM_onehot_state_reg[2]_0\(1) => logic_n_13,
      \FSM_onehot_state_reg[2]_0\(0) => logic_n_14,
      \FSM_onehot_state_reg[3]_0\ => dut_n_0,
      \FSM_onehot_state_reg[3]_1\ => dut_n_6,
      \FSM_onehot_state_reg[4]_0\ => logic_n_6,
      \FSM_onehot_state_reg[4]_1\(0) => next_state6(2),
      \FSM_onehot_state_reg[4]_2\ => dut_n_8,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => reset_control,
      a_in_2(9 downto 0) => \^a_in_2\(9 downto 0),
      \a_j_reg[0]_i_1__5\ => \a_j_reg[0]_i_1__5\,
      \a_j_reg[0]_i_1__5_0\ => \a_j_reg[0]_i_1__5_0\,
      \a_j_reg[0]_i_1__5_1\ => \a_j_reg[0]_i_1__5_1\,
      \a_j_reg[3]_i_1__6_0\(4 downto 0) => \asout_array_reg[2][4]\(4 downto 0),
      clk => clk,
      complete_tick => complete_tick,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[1]_8\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      next_out_2 => next_out_2
    );
nexts_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => nexts_out,
      G => \acks_out_reg_i_1__7_n_0\,
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
      I1 => \ce__0\,
      I2 => \asout_array[1]_8\,
      O => \reset_control__0\
    );
\reset_control_reg_i_2__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \asout_array[1]_8\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \ce__0\,
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
  signal fsm_1_n_11 : STD_LOGIC;
  signal fsm_1_n_14 : STD_LOGIC;
  signal fsm_1_n_16 : STD_LOGIC;
  signal fsm_1_n_17 : STD_LOGIC;
  signal fsm_1_n_18 : STD_LOGIC;
  signal fsm_1_n_19 : STD_LOGIC;
  signal fsm_1_n_20 : STD_LOGIC;
  signal fsm_1_n_21 : STD_LOGIC;
  signal fsm_2_n_10 : STD_LOGIC;
  signal fsm_2_n_2 : STD_LOGIC;
  signal fsm_2_n_26 : STD_LOGIC;
  signal fsm_2_n_27 : STD_LOGIC;
  signal fsm_2_n_28 : STD_LOGIC;
  signal fsm_2_n_3 : STD_LOGIC;
  signal fsm_2_n_4 : STD_LOGIC;
  signal fsm_2_n_5 : STD_LOGIC;
  signal fsm_2_n_6 : STD_LOGIC;
  signal fsm_2_n_7 : STD_LOGIC;
  signal fsm_2_n_8 : STD_LOGIC;
  signal fsm_2_n_9 : STD_LOGIC;
  signal fsm_3_n_2 : STD_LOGIC;
  signal fsm_3_n_24 : STD_LOGIC;
  signal fsm_3_n_25 : STD_LOGIC;
  signal fsm_3_n_26 : STD_LOGIC;
  signal fsm_3_n_27 : STD_LOGIC;
  signal fsm_3_n_28 : STD_LOGIC;
  signal fsm_3_n_29 : STD_LOGIC;
  signal fsm_3_n_3 : STD_LOGIC;
  signal fsm_3_n_30 : STD_LOGIC;
  signal fsm_3_n_31 : STD_LOGIC;
  signal fsm_3_n_32 : STD_LOGIC;
  signal fsm_3_n_33 : STD_LOGIC;
  signal fsm_3_n_34 : STD_LOGIC;
  signal fsm_3_n_35 : STD_LOGIC;
  signal fsm_3_n_36 : STD_LOGIC;
  signal fsm_4_n_10 : STD_LOGIC;
  signal fsm_4_n_11 : STD_LOGIC;
  signal fsm_4_n_12 : STD_LOGIC;
  signal fsm_4_n_13 : STD_LOGIC;
  signal fsm_4_n_2 : STD_LOGIC;
  signal fsm_4_n_3 : STD_LOGIC;
  signal fsm_4_n_39 : STD_LOGIC;
  signal fsm_4_n_4 : STD_LOGIC;
  signal fsm_4_n_40 : STD_LOGIC;
  signal fsm_4_n_5 : STD_LOGIC;
  signal fsm_4_n_6 : STD_LOGIC;
  signal fsm_4_n_7 : STD_LOGIC;
  signal fsm_4_n_8 : STD_LOGIC;
  signal fsm_4_n_9 : STD_LOGIC;
  signal fsm_5_n_10 : STD_LOGIC;
  signal fsm_5_n_11 : STD_LOGIC;
  signal fsm_5_n_2 : STD_LOGIC;
  signal fsm_5_n_3 : STD_LOGIC;
  signal fsm_5_n_4 : STD_LOGIC;
  signal fsm_5_n_42 : STD_LOGIC;
  signal fsm_5_n_43 : STD_LOGIC;
  signal fsm_5_n_44 : STD_LOGIC;
  signal fsm_5_n_45 : STD_LOGIC;
  signal fsm_5_n_46 : STD_LOGIC;
  signal fsm_5_n_47 : STD_LOGIC;
  signal fsm_5_n_48 : STD_LOGIC;
  signal fsm_5_n_5 : STD_LOGIC;
  signal fsm_5_n_6 : STD_LOGIC;
  signal fsm_5_n_7 : STD_LOGIC;
  signal fsm_5_n_8 : STD_LOGIC;
  signal fsm_5_n_9 : STD_LOGIC;
  signal fsm_6_n_10 : STD_LOGIC;
  signal fsm_6_n_2 : STD_LOGIC;
  signal fsm_6_n_3 : STD_LOGIC;
  signal fsm_6_n_4 : STD_LOGIC;
  signal fsm_6_n_46 : STD_LOGIC;
  signal fsm_6_n_47 : STD_LOGIC;
  signal fsm_6_n_48 : STD_LOGIC;
  signal fsm_6_n_49 : STD_LOGIC;
  signal fsm_6_n_5 : STD_LOGIC;
  signal fsm_6_n_50 : STD_LOGIC;
  signal fsm_6_n_51 : STD_LOGIC;
  signal fsm_6_n_52 : STD_LOGIC;
  signal fsm_6_n_53 : STD_LOGIC;
  signal fsm_6_n_6 : STD_LOGIC;
  signal fsm_6_n_7 : STD_LOGIC;
  signal fsm_6_n_8 : STD_LOGIC;
  signal fsm_6_n_9 : STD_LOGIC;
  signal fsm_7_n_2 : STD_LOGIC;
  signal fsm_7_n_3 : STD_LOGIC;
  signal fsm_7_n_4 : STD_LOGIC;
  signal fsm_7_n_5 : STD_LOGIC;
  signal fsm_7_n_50 : STD_LOGIC;
  signal fsm_7_n_51 : STD_LOGIC;
  signal fsm_7_n_52 : STD_LOGIC;
  signal fsm_7_n_53 : STD_LOGIC;
  signal fsm_7_n_54 : STD_LOGIC;
  signal fsm_7_n_6 : STD_LOGIC;
  signal fsm_7_n_7 : STD_LOGIC;
  signal fsm_8_n_10 : STD_LOGIC;
  signal fsm_8_n_11 : STD_LOGIC;
  signal fsm_8_n_12 : STD_LOGIC;
  signal fsm_8_n_13 : STD_LOGIC;
  signal fsm_8_n_4 : STD_LOGIC;
  signal fsm_8_n_5 : STD_LOGIC;
  signal fsm_8_n_6 : STD_LOGIC;
  signal fsm_8_n_7 : STD_LOGIC;
  signal fsm_8_n_8 : STD_LOGIC;
  signal fsm_8_n_9 : STD_LOGIC;
  signal fsm_9_n_1 : STD_LOGIC;
  signal fsm_9_n_10 : STD_LOGIC;
  signal fsm_9_n_11 : STD_LOGIC;
  signal fsm_9_n_12 : STD_LOGIC;
  signal fsm_9_n_13 : STD_LOGIC;
  signal fsm_9_n_14 : STD_LOGIC;
  signal fsm_9_n_15 : STD_LOGIC;
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
  signal fsm_9_n_4 : STD_LOGIC;
  signal fsm_9_n_5 : STD_LOGIC;
  signal fsm_9_n_6 : STD_LOGIC;
  signal fsm_9_n_8 : STD_LOGIC;
  signal fsm_9_n_9 : STD_LOGIC;
  signal \logic/j\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal next_out_2 : STD_LOGIC;
  signal next_out_3 : STD_LOGIC;
  signal next_out_4 : STD_LOGIC;
  signal next_out_5 : STD_LOGIC;
  signal next_out_6 : STD_LOGIC;
  signal next_out_7 : STD_LOGIC;
  signal next_out_8 : STD_LOGIC;
  signal next_out_9 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[0]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_in_1_reg[0]_i_1\ : label is "soft_lutpair195";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[1]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[1]_i_1\ : label is "soft_lutpair195";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[2]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[2]_i_1\ : label is "soft_lutpair194";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[3]_i_1\ : label is "soft_lutpair194";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \a_in_1_reg[4]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \a_in_1_reg[4]_i_1\ : label is "soft_lutpair193";
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
  attribute SOFT_HLUTNM of flag_s_reg_i_1 : label is "soft_lutpair193";
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
      I0 => \^a\(0),
      I1 => \^a\(1),
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
      INIT => X"78"
    )
        port map (
      I0 => \^a\(0),
      I1 => \^a\(1),
      I2 => \^a\(2),
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
      INIT => X"7F80"
    )
        port map (
      I0 => \^a\(1),
      I1 => \^a\(0),
      I2 => \^a\(2),
      I3 => \^a\(3),
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
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^a\(2),
      I1 => \^a\(0),
      I2 => \^a\(1),
      I3 => \^a\(3),
      I4 => \^a\(4),
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
      D => fsm_9_n_39,
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
      D => fsm_9_n_29,
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
      D => fsm_9_n_28,
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
      D => fsm_9_n_27,
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
      D => fsm_9_n_26,
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
      D => fsm_9_n_25,
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
      D => fsm_9_n_24,
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
      D => fsm_9_n_23,
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
      D => fsm_9_n_22,
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
      D => fsm_9_n_21,
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
      D => fsm_9_n_20,
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
      D => fsm_9_n_38,
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
      D => fsm_9_n_19,
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
      D => fsm_9_n_18,
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
      D => fsm_9_n_17,
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
      D => fsm_9_n_16,
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
      D => fsm_9_n_15,
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
      D => fsm_9_n_14,
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
      D => fsm_9_n_13,
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
      D => fsm_9_n_12,
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
      D => fsm_9_n_11,
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
      D => fsm_9_n_10,
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
      D => fsm_9_n_37,
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
      D => fsm_9_n_9,
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
      D => fsm_9_n_8,
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
      D => fsm_9_n_36,
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
      D => fsm_9_n_35,
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
      D => fsm_9_n_34,
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
      D => fsm_9_n_33,
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
      D => fsm_9_n_32,
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
      D => fsm_9_n_31,
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
      D => fsm_9_n_30,
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
      G => fsm_1_n_14,
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
      INIT => X"00000008"
    )
        port map (
      I0 => \^a\(0),
      I1 => \^a\(2),
      I2 => \^a\(1),
      I3 => \^a\(4),
      I4 => \^a\(3),
      O => flag_s_reg_i_1_n_0
    );
fsm_1: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized7\
     port map (
      AR(0) => ack_in_2,
      D(3) => fsm_1_n_17,
      D(2) => fsm_1_n_18,
      D(1) => fsm_1_n_19,
      D(0) => fsm_1_n_20,
      Q(2) => fsm_2_n_2,
      Q(1) => fsm_2_n_3,
      Q(0) => fsm_2_n_4,
      SR(0) => fsm_1_n_11,
      a_in_2(9 downto 0) => a_in_2(9 downto 0),
      \a_j_reg[0]_i_1__5\ => fsm_2_n_27,
      \a_j_reg[0]_i_1__5_0\ => fsm_2_n_28,
      \a_j_reg[0]_i_1__5_1\ => fsm_2_n_26,
      ack_in_1 => ack_in_1,
      ack_in_14_out => ack_in_14_out,
      \ack_in_1__0\ => \ack_in_1__0\,
      \asout_array_reg[2][4]\(4 downto 0) => \^a\(4 downto 0),
      clk => clk,
      \count_reg_reg[0]\ => \^done\,
      \count_reg_reg[0]_0\ => \^flag\,
      \count_reg_reg[3]\ => fsm_1_n_21,
      \count_reg_reg[4]\ => fsm_1_n_16,
      done_s7_out => done_s7_out,
      nRst => nRst,
      nRst_0 => fsm_1_n_14,
      next_out_2 => next_out_2
    );
fsm_2: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized6\
     port map (
      AR(0) => ack_in_3,
      D(4) => fsm_2_n_5,
      D(3) => fsm_2_n_6,
      D(2) => fsm_2_n_7,
      D(1) => fsm_2_n_8,
      D(0) => fsm_2_n_9,
      \FSM_onehot_state[4]_i_2__14\(3) => fsm_1_n_17,
      \FSM_onehot_state[4]_i_2__14\(2) => fsm_1_n_18,
      \FSM_onehot_state[4]_i_2__14\(1) => fsm_1_n_19,
      \FSM_onehot_state[4]_i_2__14\(0) => fsm_1_n_20,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_1_n_11,
      \FSM_onehot_state_reg[3]_0\ => fsm_2_n_26,
      Q(2) => fsm_2_n_2,
      Q(1) => fsm_2_n_3,
      Q(0) => fsm_2_n_4,
      SR(0) => fsm_2_n_10,
      a_in_2(9 downto 0) => a_in_2(9 downto 0),
      a_in_3(14 downto 0) => a_in_3(14 downto 0),
      \a_j_reg[0]\(1) => fsm_3_n_33,
      \a_j_reg[0]\(0) => fsm_3_n_34,
      \a_j_reg[0]_0\ => fsm_1_n_16,
      \a_j_reg[0]_1\ => fsm_1_n_21,
      \a_j_reg[0]_i_1__7\ => fsm_3_n_35,
      \a_j_reg[0]_i_1__7_0\ => fsm_3_n_36,
      clk => clk,
      \count_reg_reg[0]\(0) => ack_in_2,
      \j_reg[0]\ => fsm_2_n_28,
      \j_reg[2]\ => fsm_2_n_27,
      nRst => nRst,
      next_out_2 => next_out_2,
      next_out_3 => next_out_3
    );
fsm_3: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized5\
     port map (
      AR(0) => ack_in_4,
      D(4) => fsm_2_n_5,
      D(3) => fsm_2_n_6,
      D(2) => fsm_2_n_7,
      D(1) => fsm_2_n_8,
      D(0) => fsm_2_n_9,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_2_n_10,
      \FSM_onehot_state_reg[3]_0\ => fsm_3_n_3,
      \FSM_onehot_state_reg[3]_1\ => fsm_3_n_24,
      \FSM_onehot_state_reg[3]_2\ => fsm_3_n_28,
      \FSM_onehot_state_reg[3]_3\ => fsm_3_n_29,
      \FSM_onehot_state_reg[3]_4\ => fsm_3_n_30,
      \FSM_onehot_state_reg[3]_5\ => fsm_3_n_31,
      \FSM_onehot_state_reg[3]_6\ => fsm_3_n_32,
      \FSM_onehot_state_reg[3]_7\(1) => fsm_3_n_33,
      \FSM_onehot_state_reg[3]_7\(0) => fsm_3_n_34,
      Q(1) => fsm_4_n_2,
      Q(0) => fsm_4_n_3,
      SR(0) => fsm_3_n_2,
      a_in_3(14 downto 0) => a_in_3(14 downto 0),
      a_in_4(19 downto 0) => a_in_4(19 downto 0),
      \a_j_reg[4]_i_1__4\ => fsm_4_n_4,
      \a_j_reg[4]_i_4__4\ => fsm_4_n_40,
      clk => clk,
      \count_reg_reg[0]\ => fsm_3_n_27,
      \count_reg_reg[0]_0\(0) => ack_in_3,
      \count_reg_reg[1]\ => fsm_3_n_25,
      \count_reg_reg[2]\ => fsm_3_n_26,
      \j_reg[1]\ => fsm_3_n_35,
      \j_reg[3]\ => fsm_3_n_36,
      nRst => nRst,
      next_out_3 => next_out_3,
      next_out_4 => next_out_4
    );
fsm_4: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized4\
     port map (
      AR(0) => ack_in_5,
      D(3) => fsm_4_n_6,
      D(2) => fsm_4_n_7,
      D(1) => fsm_4_n_8,
      D(0) => fsm_4_n_9,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_3_n_2,
      \FSM_onehot_state_reg[3]_0\ => fsm_4_n_13,
      Q(1) => fsm_4_n_2,
      Q(0) => fsm_4_n_3,
      SR(0) => fsm_4_n_5,
      a_in_4(19 downto 0) => a_in_4(19 downto 0),
      a_in_5(24 downto 0) => a_in_5(24 downto 0),
      \a_j_reg[0]\ => fsm_3_n_30,
      \a_j_reg[0]_0\ => fsm_3_n_28,
      \a_j_reg[0]_i_1__3\ => fsm_5_n_45,
      \a_j_reg[0]_i_1__3_0\ => fsm_5_n_48,
      \a_j_reg[1]_i_1__4\ => fsm_3_n_32,
      \a_j_reg[2]_i_1__4\ => fsm_3_n_29,
      \a_j_reg[3]_i_1__4\ => fsm_3_n_31,
      \a_j_reg[3]_i_1__4_0\ => fsm_3_n_25,
      \a_j_reg[4]\(2) => fsm_5_n_42,
      \a_j_reg[4]\(1) => fsm_5_n_43,
      \a_j_reg[4]\(0) => fsm_5_n_44,
      \a_j_reg[4]_0\ => fsm_3_n_24,
      \a_j_reg[4]_1\ => fsm_3_n_3,
      \a_j_reg[4]_i_1__4\ => fsm_3_n_27,
      \a_j_reg[4]_i_1__4_0\ => fsm_3_n_26,
      \a_j_reg[4]_i_2__2\ => fsm_5_n_47,
      \a_j_reg[4]_i_2__2_0\ => fsm_5_n_46,
      \a_j_reg[4]_i_3__3\ => fsm_4_n_10,
      clk => clk,
      \count_reg_reg[0]\ => fsm_4_n_39,
      \count_reg_reg[0]_0\(0) => ack_in_4,
      \count_reg_reg[2]\ => fsm_4_n_12,
      \count_reg_reg[4]\ => fsm_4_n_11,
      \j_reg[1]\ => fsm_4_n_4,
      \j_reg[2]\ => fsm_4_n_40,
      nRst => nRst,
      next_out_4 => next_out_4,
      next_out_5 => next_out_5
    );
fsm_5: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized3\
     port map (
      AR(0) => ack_in_6,
      D(3) => fsm_5_n_7,
      D(2) => fsm_5_n_8,
      D(1) => fsm_5_n_9,
      D(0) => fsm_5_n_10,
      \FSM_onehot_state[4]_i_7__3\(3) => fsm_4_n_6,
      \FSM_onehot_state[4]_i_7__3\(2) => fsm_4_n_7,
      \FSM_onehot_state[4]_i_7__3\(1) => fsm_4_n_8,
      \FSM_onehot_state[4]_i_7__3\(0) => fsm_4_n_9,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_4_n_5,
      \FSM_onehot_state_reg[3]_0\ => fsm_5_n_2,
      \FSM_onehot_state_reg[3]_1\ => fsm_5_n_3,
      \FSM_onehot_state_reg[3]_2\(2) => fsm_5_n_42,
      \FSM_onehot_state_reg[3]_2\(1) => fsm_5_n_43,
      \FSM_onehot_state_reg[3]_2\(0) => fsm_5_n_44,
      Q(2) => fsm_6_n_48,
      Q(1) => fsm_6_n_49,
      Q(0) => fsm_6_n_50,
      SR(0) => fsm_5_n_6,
      a_in_5(24 downto 0) => a_in_5(24 downto 0),
      a_in_6(29 downto 0) => a_in_6(29 downto 0),
      \a_j_reg[0]\ => fsm_4_n_10,
      \a_j_reg[0]_i_1__3\ => fsm_4_n_39,
      \a_j_reg[0]_i_1__3_0\ => fsm_4_n_11,
      \a_j_reg[0]_i_1__3_1\ => fsm_4_n_12,
      \a_j_reg[0]_i_1__3_2\ => fsm_4_n_13,
      \a_j_reg[0]_i_2__2\ => fsm_6_n_52,
      \a_j_reg[0]_i_2__2_0\ => fsm_6_n_53,
      \a_j_reg[3]_i_1__2\ => fsm_6_n_51,
      \a_j_reg[3]_i_3__2\ => fsm_5_n_5,
      clk => clk,
      \count_reg_reg[0]\ => fsm_5_n_11,
      \count_reg_reg[0]_0\(0) => ack_in_5,
      \count_reg_reg[2]\ => fsm_5_n_4,
      \j_reg[1]\ => fsm_5_n_45,
      \j_reg[2]\ => fsm_5_n_48,
      \j_reg[3]\ => fsm_5_n_47,
      \j_reg[4]\ => fsm_5_n_46,
      nRst => nRst,
      next_out_5 => next_out_5,
      next_out_6 => next_out_6
    );
fsm_6: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized2\
     port map (
      AR(0) => ack_in_7,
      D(2) => fsm_6_n_3,
      D(1) => fsm_6_n_4,
      D(0) => fsm_6_n_5,
      \FSM_onehot_state[4]_i_7__2\(3) => fsm_5_n_7,
      \FSM_onehot_state[4]_i_7__2\(2) => fsm_5_n_8,
      \FSM_onehot_state[4]_i_7__2\(1) => fsm_5_n_9,
      \FSM_onehot_state[4]_i_7__2\(0) => fsm_5_n_10,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_5_n_6,
      \FSM_onehot_state_reg[3]_0\ => fsm_6_n_46,
      \FSM_onehot_state_reg[3]_1\ => fsm_6_n_47,
      \FSM_onehot_state_reg[3]_2\(2) => fsm_6_n_48,
      \FSM_onehot_state_reg[3]_2\(1) => fsm_6_n_49,
      \FSM_onehot_state_reg[3]_2\(0) => fsm_6_n_50,
      Q(1 downto 0) => \logic/j\(1 downto 0),
      SR(0) => fsm_6_n_2,
      a_in_6(29 downto 0) => a_in_6(29 downto 0),
      a_in_7(34 downto 0) => a_in_7(34 downto 0),
      \a_j_reg[0]\ => fsm_7_n_50,
      \a_j_reg[0]_0\ => fsm_5_n_5,
      \a_j_reg[0]_i_1__1\ => fsm_7_n_52,
      \a_j_reg[0]_i_1__1_0\ => fsm_7_n_51,
      \a_j_reg[0]_i_1__2\ => fsm_5_n_2,
      \a_j_reg[0]_i_1__2_0\ => fsm_5_n_11,
      \a_j_reg[0]_i_1__2_1\ => fsm_5_n_3,
      \a_j_reg[0]_i_1__2_2\ => fsm_5_n_4,
      \a_j_reg[0]_i_2__1\ => fsm_7_n_54,
      \a_j_reg[3]_i_2__1\ => fsm_7_n_53,
      \a_j_reg[4]_i_12__1\ => fsm_6_n_7,
      \a_j_reg[4]_i_12__1_0\ => fsm_6_n_8,
      \a_j_reg[4]_i_12__1_1\ => fsm_6_n_9,
      \a_j_reg[4]_i_16__1\ => fsm_6_n_6,
      clk => clk,
      \count_reg_reg[0]\(0) => ack_in_6,
      \count_reg_reg[3]\ => fsm_6_n_10,
      \j_reg[1]\ => fsm_6_n_51,
      \j_reg[3]\ => fsm_6_n_52,
      \j_reg[4]\ => fsm_6_n_53,
      nRst => nRst,
      next_out_6 => next_out_6,
      next_out_7 => next_out_7
    );
fsm_7: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized1\
     port map (
      AR(0) => ack_in_8,
      D(4) => fsm_7_n_3,
      D(3) => fsm_7_n_4,
      D(2) => fsm_7_n_5,
      D(1) => fsm_7_n_6,
      D(0) => fsm_7_n_7,
      \FSM_onehot_state[4]_i_7__1\(2) => fsm_6_n_3,
      \FSM_onehot_state[4]_i_7__1\(1) => fsm_6_n_4,
      \FSM_onehot_state[4]_i_7__1\(0) => fsm_6_n_5,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_6_n_2,
      \FSM_onehot_state_reg[3]_0\(1 downto 0) => \logic/j\(1 downto 0),
      Q(1 downto 0) => \logic/j_0\(1 downto 0),
      SR(0) => fsm_7_n_2,
      a_in_7(34 downto 0) => a_in_7(34 downto 0),
      a_in_8(39 downto 0) => a_in_8(39 downto 0),
      \a_j_reg[0]_i_1__0\ => fsm_8_n_13,
      \a_j_reg[0]_i_1__0_0\ => fsm_8_n_12,
      \a_j_reg[0]_i_1__1\ => fsm_6_n_10,
      \a_j_reg[0]_i_2__0\ => fsm_8_n_11,
      \a_j_reg[0]_i_2__0_0\ => fsm_8_n_10,
      \a_j_reg[2]\ => fsm_6_n_9,
      \a_j_reg[2]_0\ => fsm_6_n_6,
      \a_j_reg[2]_1\ => fsm_6_n_7,
      \a_j_reg[3]_i_3__1\ => fsm_7_n_50,
      \a_j_reg[4]\ => fsm_6_n_8,
      \a_j_reg[4]_i_1__1\ => fsm_6_n_46,
      \a_j_reg[4]_i_1__1_0\ => fsm_6_n_47,
      clk => clk,
      \count_reg_reg[0]\(0) => ack_in_7,
      \j_reg[1]\ => fsm_7_n_51,
      \j_reg[3]\ => fsm_7_n_52,
      \j_reg[3]_0\ => fsm_7_n_54,
      \j_reg[4]\ => fsm_7_n_53,
      nRst => nRst,
      next_out_7 => next_out_7,
      next_out_8 => next_out_8
    );
fsm_8: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm__parameterized0\
     port map (
      AR(0) => ack_in_9,
      D(4) => fsm_8_n_4,
      D(3) => fsm_8_n_5,
      D(2) => fsm_8_n_6,
      D(1) => fsm_8_n_7,
      D(0) => fsm_8_n_8,
      \FSM_onehot_state[4]_i_2__2\(4) => fsm_7_n_3,
      \FSM_onehot_state[4]_i_2__2\(3) => fsm_7_n_4,
      \FSM_onehot_state[4]_i_2__2\(2) => fsm_7_n_5,
      \FSM_onehot_state[4]_i_2__2\(1) => fsm_7_n_6,
      \FSM_onehot_state[4]_i_2__2\(0) => fsm_7_n_7,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_7_n_2,
      Q(1 downto 0) => \logic/j_0\(1 downto 0),
      SR(0) => fsm_8_n_9,
      a_in_8(39 downto 0) => a_in_8(39 downto 0),
      \a_j_reg[0]\(1 downto 0) => \logic/j_1\(1 downto 0),
      \a_j_reg[0]_i_1\ => fsm_9_n_1,
      \a_j_reg[0]_i_1_0\ => fsm_9_n_4,
      \a_j_reg[0]_i_2\ => fsm_9_n_5,
      \a_j_reg[0]_i_2_0\ => fsm_9_n_6,
      clk => clk,
      \count_reg_reg[0]\(0) => ack_in_8,
      \j_reg[0]\ => fsm_8_n_13,
      \j_reg[3]\ => fsm_8_n_10,
      \j_reg[3]_0\ => fsm_8_n_12,
      \j_reg[4]\ => fsm_8_n_11,
      nRst => nRst,
      next_out_8 => next_out_8,
      next_out_9 => next_out_9
    );
fsm_9: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm
     port map (
      AR(0) => ack_in_9,
      D(31) => fsm_9_n_8,
      D(30) => fsm_9_n_9,
      D(29) => fsm_9_n_10,
      D(28) => fsm_9_n_11,
      D(27) => fsm_9_n_12,
      D(26) => fsm_9_n_13,
      D(25) => fsm_9_n_14,
      D(24) => fsm_9_n_15,
      D(23) => fsm_9_n_16,
      D(22) => fsm_9_n_17,
      D(21) => fsm_9_n_18,
      D(20) => fsm_9_n_19,
      D(19) => fsm_9_n_20,
      D(18) => fsm_9_n_21,
      D(17) => fsm_9_n_22,
      D(16) => fsm_9_n_23,
      D(15) => fsm_9_n_24,
      D(14) => fsm_9_n_25,
      D(13) => fsm_9_n_26,
      D(12) => fsm_9_n_27,
      D(11) => fsm_9_n_28,
      D(10) => fsm_9_n_29,
      D(9) => fsm_9_n_30,
      D(8) => fsm_9_n_31,
      D(7) => fsm_9_n_32,
      D(6) => fsm_9_n_33,
      D(5) => fsm_9_n_34,
      D(4) => fsm_9_n_35,
      D(3) => fsm_9_n_36,
      D(2) => fsm_9_n_37,
      D(1) => fsm_9_n_38,
      D(0) => fsm_9_n_39,
      E(0) => counter_s,
      \FSM_onehot_state[4]_i_2__0\(4) => fsm_8_n_4,
      \FSM_onehot_state[4]_i_2__0\(3) => fsm_8_n_5,
      \FSM_onehot_state[4]_i_2__0\(2) => fsm_8_n_6,
      \FSM_onehot_state[4]_i_2__0\(1) => fsm_8_n_7,
      \FSM_onehot_state[4]_i_2__0\(0) => fsm_8_n_8,
      Q(1 downto 0) => \logic/j_1\(1 downto 0),
      SR(0) => fsm_8_n_9,
      clk => clk,
      \counter[31]\ => \^done\,
      \counter[31]_0\ => \counter_s_reg[31]_i_3_n_0\,
      \counter[31]_1\ => \counter_s_reg[31]_i_4_n_0\,
      \counter[31]_2\ => \counter_s_reg[31]_i_5_n_0\,
      \j_reg[2]\ => fsm_9_n_1,
      \j_reg[2]_0\ => fsm_9_n_4,
      \j_reg[3]\ => fsm_9_n_6,
      \j_reg[4]\ => fsm_9_n_5,
      next_out_9 => next_out_9,
      plusOp(31 downto 0) => plusOp(31 downto 0)
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
      O(3 downto 0) => plusOp(3 downto 0),
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
      O(3 downto 0) => plusOp(7 downto 4),
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
      O(3 downto 0) => plusOp(11 downto 8),
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
      O(3 downto 0) => plusOp(15 downto 12),
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
      O(3 downto 0) => plusOp(19 downto 16),
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
      O(3 downto 0) => plusOp(23 downto 20),
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
      O(3 downto 0) => plusOp(27 downto 24),
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
      O(3 downto 0) => plusOp(31 downto 28),
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
