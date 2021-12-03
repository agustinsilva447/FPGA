-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Nov 26 18:30:39 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_fsm_0_3 -prefix
--               design_1_fsm_0_3_ design_1_fsm_0_3_sim_netlist.vhdl
-- Design      : design_1_fsm_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fsm_0_3_ctrl_logic_fsm is
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
end design_1_fsm_0_3_ctrl_logic_fsm;

architecture STRUCTURE of design_1_fsm_0_3_ctrl_logic_fsm is
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
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of done_aux_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of valid_aux_i_1 : label is "soft_lutpair4";
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
      INIT => X"00005404"
    )
        port map (
      I0 => j_reg(2),
      I1 => \count_reg[0]_0\,
      I2 => \^q\(0),
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
done_aux_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => j_reg(2),
      I1 => done_aux_reg_0,
      I2 => done,
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
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => p_0_in(1)
    );
\j[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => j_reg(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => done,
      O => j0
    );
\j[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
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
valid_aux_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => j_reg(2),
      I1 => valid_aux_i_2_n_0,
      I2 => valid,
      O => valid_aux_i_1_n_0
    );
valid_aux_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      I5 => \^q\(0),
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
entity design_1_fsm_0_3_up_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    a_in_3_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ack_in : in STD_LOGIC
  );
end design_1_fsm_0_3_up_counter;

architecture STRUCTURE of design_1_fsm_0_3_up_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal a_in_3_sn_1 : STD_LOGIC;
  signal \count[3]_i_10_n_0\ : STD_LOGIC;
  signal \count[3]_i_11_n_0\ : STD_LOGIC;
  signal \count[3]_i_5_n_0\ : STD_LOGIC;
  signal \count[3]_i_6_n_0\ : STD_LOGIC;
  signal \count[3]_i_7_n_0\ : STD_LOGIC;
  signal \count[3]_i_8_n_0\ : STD_LOGIC;
  signal \count[3]_i_9_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done_aux_i_10_n_0 : STD_LOGIC;
  signal done_aux_i_11_n_0 : STD_LOGIC;
  signal done_aux_i_3_n_0 : STD_LOGIC;
  signal done_aux_i_4_n_0 : STD_LOGIC;
  signal done_aux_i_5_n_0 : STD_LOGIC;
  signal done_aux_i_6_n_0 : STD_LOGIC;
  signal done_aux_i_7_n_0 : STD_LOGIC;
  signal done_aux_i_8_n_0 : STD_LOGIC;
  signal done_aux_i_9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1\ : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  a_in_3_sp_1 <= a_in_3_sn_1;
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
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
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
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
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
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
\count[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFEFFBDFF7FDFF"
    )
        port map (
      I0 => a_in(10),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => a_in(8),
      I4 => a_in(9),
      I5 => \^q\(2),
      O => \count[3]_i_10_n_0\
    );
\count[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FD6F6BDBD6F6BF6"
    )
        port map (
      I0 => a_in(10),
      I1 => \^q\(2),
      I2 => a_in(9),
      I3 => a_in(8),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \count[3]_i_11_n_0\
    );
\count[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED48FFFFED480000"
    )
        port map (
      I0 => a_in(3),
      I1 => \count[3]_i_5_n_0\,
      I2 => \^q\(3),
      I3 => \count[3]_i_6_n_0\,
      I4 => \count_reg[0]\(1),
      I5 => \count[3]_i_7_n_0\,
      O => a_in_3_sn_1
    );
\count[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B8E2"
    )
        port map (
      I0 => \count[3]_i_8_n_0\,
      I1 => \^q\(3),
      I2 => \count[3]_i_9_n_0\,
      I3 => a_in(7),
      I4 => \count_reg[0]\(1),
      O => \count_reg_reg[3]_0\
    );
\count[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFF7FFFF"
    )
        port map (
      I0 => a_in(2),
      I1 => a_in(1),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in(0),
      I5 => \^q\(2),
      O => \count[3]_i_5_n_0\
    );
\count[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666D6FF6B666F6"
    )
        port map (
      I0 => a_in(2),
      I1 => \^q\(2),
      I2 => a_in(1),
      I3 => \^q\(0),
      I4 => a_in(0),
      I5 => \^q\(1),
      O => \count[3]_i_6_n_0\
    );
\count[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(11),
      I1 => \count[3]_i_10_n_0\,
      I2 => \^q\(3),
      I3 => \count[3]_i_11_n_0\,
      O => \count[3]_i_7_n_0\
    );
\count[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45A2FFFFFFFF45A2"
    )
        port map (
      I0 => a_in(6),
      I1 => \^q\(1),
      I2 => a_in(5),
      I3 => \^q\(2),
      I4 => a_in(4),
      I5 => \^q\(0),
      O => \count[3]_i_8_n_0\
    );
\count[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFF7FF7"
    )
        port map (
      I0 => a_in(6),
      I1 => a_in(5),
      I2 => a_in(4),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count[3]_i_9_n_0\
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => count_next(3)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in,
      D => count_next(0),
      Q => \^q\(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in,
      D => count_next(1),
      Q => \^q\(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in,
      D => count_next(2),
      Q => \^q\(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => ack_in,
      D => count_next(3),
      Q => \^q\(3)
    );
done_aux_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA5D00000000BA5D"
    )
        port map (
      I0 => a_in(6),
      I1 => \^q\(1),
      I2 => a_in(5),
      I3 => \^q\(2),
      I4 => a_in(4),
      I5 => \^q\(0),
      O => done_aux_i_10_n_0
    );
done_aux_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000010000800008"
    )
        port map (
      I0 => a_in(6),
      I1 => a_in(5),
      I2 => a_in(4),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => done_aux_i_11_n_0
    );
done_aux_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => done_aux_i_3_n_0,
      I1 => \count_reg[0]\(1),
      I2 => done_aux_i_4_n_0,
      I3 => \count_reg[0]\(0),
      I4 => done_aux_i_5_n_0,
      O => \j_reg[1]\
    );
done_aux_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(11),
      I1 => done_aux_i_6_n_0,
      I2 => \^q\(3),
      I3 => done_aux_i_7_n_0,
      O => done_aux_i_3_n_0
    );
done_aux_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED48"
    )
        port map (
      I0 => a_in(3),
      I1 => done_aux_i_8_n_0,
      I2 => \^q\(3),
      I3 => done_aux_i_9_n_0,
      O => done_aux_i_4_n_0
    );
done_aux_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB8E2"
    )
        port map (
      I0 => done_aux_i_10_n_0,
      I1 => \^q\(3),
      I2 => done_aux_i_11_n_0,
      I3 => a_in(7),
      I4 => \count_reg[0]\(1),
      O => done_aux_i_5_n_0
    );
done_aux_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040041008200200"
    )
        port map (
      I0 => a_in(10),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => a_in(8),
      I4 => a_in(9),
      I5 => \^q\(2),
      O => done_aux_i_6_n_0
    );
done_aux_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9029094242909409"
    )
        port map (
      I0 => a_in(10),
      I1 => \^q\(2),
      I2 => a_in(9),
      I3 => a_in(8),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => done_aux_i_7_n_0
    );
done_aux_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000080000"
    )
        port map (
      I0 => a_in(2),
      I1 => a_in(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => a_in(0),
      I5 => \^q\(2),
      O => done_aux_i_8_n_0
    );
done_aux_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099929009499909"
    )
        port map (
      I0 => a_in(2),
      I1 => \^q\(2),
      I2 => a_in(1),
      I3 => \^q\(0),
      I4 => a_in(0),
      I5 => \^q\(1),
      O => done_aux_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fsm_0_3_fsm is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ack_out : out STD_LOGIC;
    next_out : out STD_LOGIC;
    output_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    a_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ack_in : in STD_LOGIC;
    next_in : in STD_LOGIC;
    nRst : in STD_LOGIC
  );
end design_1_fsm_0_3_fsm;

architecture STRUCTURE of design_1_fsm_0_3_fsm is
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[3]_0\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal ce_reg_i_1_n_0 : STD_LOGIC;
  signal dut_n_4 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of acks_out_reg_i_1 : label is "soft_lutpair7";
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
  attribute SOFT_HLUTNM of ce_reg_i_1 : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of nexts_out_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \output_state[0]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \output_state[1]_INST_0\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of reset_control_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of reset_control_reg_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of reset_control_reg_i_2 : label is "soft_lutpair8";
begin
  Q(0) <= \^q\(0);
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ack_in,
      I1 => nRst,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \FSM_onehot_state[4]_i_1_n_0\
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
      R => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => dut_n_7,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => logic_n_4,
      Q => \asout_array[3]_0\,
      R => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_2,
      D => dut_n_6,
      Q => \^q\(0),
      R => \FSM_onehot_state[4]_i_1_n_0\
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
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
      G => \asout_array[3]_0\,
      GE => '1',
      Q => a_out(15)
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
dut: entity work.design_1_fsm_0_3_up_counter
     port map (
      D(1) => dut_n_6,
      D(0) => dut_n_7,
      E(0) => ce,
      \FSM_onehot_state_reg[3]\ => dut_n_8,
      \FSM_onehot_state_reg[4]\(2) => \asout_array[3]_0\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(3 downto 0) => u_i(3 downto 0),
      a_in(11 downto 0) => a_in(11 downto 0),
      a_in_3_sp_1 => dut_n_5,
      ack_in => ack_in,
      clk => clk,
      \count_reg[0]\(1 downto 0) => j_reg(1 downto 0),
      \count_reg_reg[3]_0\ => dut_n_4,
      \j_reg[1]\ => dut_n_9
    );
logic: entity work.design_1_fsm_0_3_ctrl_logic_fsm
     port map (
      AR(0) => reset_control,
      D(1) => logic_n_4,
      D(0) => logic_n_5,
      E(0) => logic_n_2,
      \FSM_onehot_state_reg[1]\ => dut_n_8,
      \FSM_onehot_state_reg[2]\ => logic_n_3,
      Q(1 downto 0) => j_reg(1 downto 0),
      ack_out(4) => \^q\(0),
      ack_out(3) => \asout_array[3]_0\,
      ack_out(2) => \FSM_onehot_state_reg_n_0_[2]\,
      ack_out(1) => \ce__0\,
      ack_out(0) => \FSM_onehot_state_reg_n_0_[0]\,
      clk => clk,
      \count_reg[0]_0\ => dut_n_5,
      \count_reg[0]_1\ => dut_n_4,
      done_aux_reg_0 => dut_n_9,
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
      I0 => \asout_array[3]_0\,
      I1 => \ce__0\,
      O => output_state(0)
    );
\output_state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \asout_array[3]_0\,
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
      I1 => \asout_array[3]_0\,
      I2 => \ce__0\,
      O => \reset_control__0\
    );
reset_control_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ce__0\,
      I1 => \asout_array[3]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => reset_control_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fsm_0_3 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fsm_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fsm_0_3 : entity is "design_1_fsm_0_3,fsm,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_fsm_0_3 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_fsm_0_3 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_fsm_0_3 : entity is "fsm,Vivado 2021.2";
end design_1_fsm_0_3;

architecture STRUCTURE of design_1_fsm_0_3 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.design_1_fsm_0_3_fsm
     port map (
      Q(0) => output_state(2),
      a_in(11 downto 0) => a_in(11 downto 0),
      a_out(15 downto 0) => a_out(15 downto 0),
      ack_in => ack_in,
      ack_out => ack_out,
      clk => clk,
      nRst => nRst,
      next_in => next_in,
      next_out => next_out,
      output_state(1 downto 0) => output_state(1 downto 0)
    );
end STRUCTURE;
