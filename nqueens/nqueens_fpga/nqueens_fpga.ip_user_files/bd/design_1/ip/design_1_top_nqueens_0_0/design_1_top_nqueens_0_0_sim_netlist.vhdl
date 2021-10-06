-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Oct  5 11:45:16 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/mlabadm/Desktop/Github/FPGA/nqueens/nqueens_fpga/nqueens_fpga.srcs/sources_1/bd/design_1/ip/design_1_top_nqueens_0_0/design_1_top_nqueens_0_0_sim_netlist.vhdl
-- Design      : design_1_top_nqueens_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_nqueens_0_0_ctrl_logic is
  port (
    valid : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[2]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \j_reg[1]_2\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \j_reg[1]_3\ : out STD_LOGIC;
    \j_reg[1]_4\ : out STD_LOGIC;
    \j_reg[1]_5\ : out STD_LOGIC;
    \j_reg[1]_6\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \count1_carry__1_0\ : in STD_LOGIC;
    \count1_carry__1_1\ : in STD_LOGIC;
    count1_carry_i_4 : in STD_LOGIC;
    \count[4]_i_5_0\ : in STD_LOGIC;
    \count[4]_i_5_1\ : in STD_LOGIC;
    \count[4]_i_5_2\ : in STD_LOGIC;
    \count[4]_i_5_3\ : in STD_LOGIC;
    \count[4]_i_12_0\ : in STD_LOGIC;
    \count[4]_i_12_1\ : in STD_LOGIC;
    \count[4]_i_7_0\ : in STD_LOGIC;
    \count[4]_i_7_1\ : in STD_LOGIC;
    count1_carry_i_14 : in STD_LOGIC;
    count1_carry_i_14_0 : in STD_LOGIC;
    acks_out_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_ctrl_logic : entity is "ctrl_logic";
end design_1_top_nqueens_0_0_ctrl_logic;

architecture STRUCTURE of design_1_top_nqueens_0_0_ctrl_logic is
  signal count : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal count1_carry_i_1_n_0 : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_5_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_12_n_0\ : STD_LOGIC;
  signal \count[4]_i_16_n_0\ : STD_LOGIC;
  signal \count[4]_i_20_n_0\ : STD_LOGIC;
  signal \count[4]_i_7_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal done_aux_i_1_n_0 : STD_LOGIC;
  signal done_aux_i_2_n_0 : STD_LOGIC;
  signal \done_aux_i_3__0_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \^j_reg[0]_0\ : STD_LOGIC;
  signal \^j_reg[2]_0\ : STD_LOGIC;
  signal \^j_reg[2]_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^valid\ : STD_LOGIC;
  signal valid_aux_i_1_n_0 : STD_LOGIC;
  signal valid_aux_i_2_n_0 : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count1_carry_i_11 : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \count[4]_i_23__1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \count[4]_i_25\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \count[4]_i_3\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \count[4]_i_32__2\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \count[4]_i_42__0\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \count[4]_i_46\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \count[4]_i_8\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of done_aux_i_2 : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \j[0]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \j[2]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \j[3]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \j[4]_i_2\ : label is "soft_lutpair139";
begin
  \count_reg_reg[4]\ <= \^count_reg_reg[4]\;
  \j_reg[0]_0\ <= \^j_reg[0]_0\;
  \j_reg[2]_0\ <= \^j_reg[2]_0\;
  \j_reg[2]_1\(2 downto 0) <= \^j_reg[2]_1\(2 downto 0);
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => acks_out_reg(2),
      O => D(0)
    );
\FSM_onehot_state[4]_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => acks_out_reg(3),
      I1 => acks_out_reg(1),
      I2 => done,
      I3 => acks_out_reg(2),
      I4 => acks_out_reg(0),
      O => E(0)
    );
\acks_out_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => acks_out_reg(0),
      I1 => acks_out_reg(4),
      I2 => acks_out_reg(1),
      I3 => done,
      I4 => acks_out_reg(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[0]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count1_carry_i_1_n_0,
      S(2) => count1_carry_i_2_n_0,
      S(1) => count1_carry_i_3_n_0,
      S(0) => S(0)
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_1_n_0\,
      S(2) => \count1_carry__0_i_2_n_0\,
      S(1) => \count1_carry__0_i_3_n_0\,
      S(0) => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => \count1_carry__0_i_3_n_0\
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => count1,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count1_carry__1_i_1_n_0\,
      S(1) => \count1_carry__1_i_2_n_0\,
      S(0) => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4545454545004545"
    )
        port map (
      I0 => j_reg(4),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(3),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => \count1_carry__1_i_3_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => count1_carry_i_1_n_0
    );
count1_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => count1_carry_i_4,
      O => \j_reg[1]_3\
    );
count1_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCACAACCAACCCAA"
    )
        port map (
      I0 => count1_carry_i_14,
      I1 => count1_carry_i_14_0,
      I2 => \^j_reg[2]_1\(1),
      I3 => j_reg(3),
      I4 => \^j_reg[2]_1\(0),
      I5 => \^j_reg[2]_1\(2),
      O => \j_reg[1]_4\
    );
count1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0D0DF20D0D"
    )
        port map (
      I0 => j_reg(3),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(4),
      I3 => \count_reg[0]_2\,
      I4 => \count1_carry__1_0\,
      I5 => \count1_carry__1_1\,
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4104044141820404"
    )
        port map (
      I0 => j_reg(4),
      I1 => count1_carry_i_5_n_0,
      I2 => j_reg(3),
      I3 => \count1_carry__1_1\,
      I4 => \count1_carry__1_0\,
      I5 => \count_reg[0]_2\,
      O => count1_carry_i_3_n_0
    );
count1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => \^j_reg[2]_1\(2),
      O => count1_carry_i_5_n_0
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
      I1 => count_reg(0),
      I2 => count_reg(1),
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
      INIT => X"8888888888880880"
    )
        port map (
      I0 => j0,
      I1 => count1,
      I2 => \^j_reg[0]_0\,
      I3 => Q(0),
      I4 => \count_reg[0]_2\,
      I5 => \^count_reg_reg[4]\,
      O => count
    );
\count[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004700FF004700"
    )
        port map (
      I0 => \count[4]_i_20_n_0\,
      I1 => \^j_reg[2]_1\(2),
      I2 => \count[4]_i_5_2\,
      I3 => \^j_reg[2]_1\(0),
      I4 => \^j_reg[2]_1\(1),
      I5 => \count[4]_i_5_3\,
      O => \count[4]_i_12_n_0\
    );
\count[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEBEBFA8228280A"
    )
        port map (
      I0 => \count[4]_i_7_0\,
      I1 => \^j_reg[2]_1\(1),
      I2 => j_reg(3),
      I3 => \^j_reg[2]_1\(0),
      I4 => \^j_reg[2]_1\(2),
      I5 => \count[4]_i_7_1\,
      O => \count[4]_i_16_n_0\
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
\count[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEBEBFA8228280A"
    )
        port map (
      I0 => \count[4]_i_12_0\,
      I1 => \^j_reg[2]_1\(1),
      I2 => j_reg(3),
      I3 => \^j_reg[2]_1\(0),
      I4 => \^j_reg[2]_1\(2),
      I5 => \count[4]_i_12_1\,
      O => \count[4]_i_20_n_0\
    );
\count[4]_i_23__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => \^j_reg[2]_1\(2),
      I2 => \^j_reg[2]_1\(0),
      O => \j_reg[1]_0\
    );
\count[4]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9663"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => j_reg(3),
      I2 => \^j_reg[2]_1\(0),
      I3 => \^j_reg[2]_1\(2),
      O => \j_reg[1]_6\
    );
\count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D1FFD100"
    )
        port map (
      I0 => \count_reg[0]_1\,
      I1 => \^j_reg[2]_1\(0),
      I2 => \count[4]_i_7_n_0\,
      I3 => \^j_reg[2]_0\,
      I4 => \count_reg[0]_0\(0),
      O => \^j_reg[0]_0\
    );
\count[4]_i_32__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E1581EA"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => j_reg(3),
      I2 => \^j_reg[2]_1\(0),
      I3 => \^j_reg[2]_1\(2),
      I4 => j_reg(4),
      O => \j_reg[1]_1\
    );
\count[4]_i_42__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => \^j_reg[2]_1\(0),
      O => \j_reg[1]_2\
    );
\count[4]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CD33B326"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => j_reg(3),
      I2 => \^j_reg[2]_1\(0),
      I3 => \^j_reg[2]_1\(2),
      I4 => j_reg(4),
      O => \j_reg[1]_5\
    );
\count[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A656A6565656A6"
    )
        port map (
      I0 => Q(1),
      I1 => \count_reg[0]_0\(1),
      I2 => \^j_reg[2]_0\,
      I3 => \count[4]_i_12_n_0\,
      I4 => \count[4]_i_7_n_0\,
      I5 => \^j_reg[2]_1\(0),
      O => \^count_reg_reg[4]\
    );
\count[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF001D1D4747FF00"
    )
        port map (
      I0 => \count[4]_i_5_0\,
      I1 => \^j_reg[2]_1\(2),
      I2 => \count[4]_i_16_n_0\,
      I3 => \count[4]_i_5_1\,
      I4 => \^j_reg[2]_1\(1),
      I5 => \^j_reg[2]_1\(0),
      O => \count[4]_i_7_n_0\
    );
\count[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F010F"
    )
        port map (
      I0 => \^j_reg[2]_1\(2),
      I1 => \^j_reg[2]_1\(1),
      I2 => j_reg(4),
      I3 => j_reg(3),
      I4 => \^j_reg[2]_1\(0),
      O => \^j_reg[2]_0\
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
done_aux_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2E2EEE2E"
    )
        port map (
      I0 => done_aux_i_2_n_0,
      I1 => j0,
      I2 => count1,
      I3 => \done_aux_i_3__0_n_0\,
      I4 => done_aux_reg_0,
      I5 => done,
      O => done_aux_i_1_n_0
    );
done_aux_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => \^j_reg[2]_1\(0),
      I2 => j_reg(3),
      I3 => \^j_reg[2]_1\(2),
      I4 => j_reg(4),
      O => done_aux_i_2_n_0
    );
\done_aux_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9595959A959A9A9"
    )
        port map (
      I0 => Q(0),
      I1 => \count_reg[0]_0\(0),
      I2 => \^j_reg[2]_0\,
      I3 => \count[4]_i_7_n_0\,
      I4 => \^j_reg[2]_1\(0),
      I5 => \count_reg[0]_1\,
      O => \done_aux_i_3__0_n_0\
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
      I0 => \^j_reg[2]_1\(0),
      O => \j[0]_i_1_n_0\
    );
\j[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[2]_1\(0),
      I1 => \^j_reg[2]_1\(1),
      O => p_0_in(1)
    );
\j[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^j_reg[2]_1\(2),
      I1 => \^j_reg[2]_1\(0),
      I2 => \^j_reg[2]_1\(1),
      O => p_0_in(2)
    );
\j[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => j_reg(3),
      I1 => \^j_reg[2]_1\(0),
      I2 => \^j_reg[2]_1\(2),
      I3 => \^j_reg[2]_1\(1),
      O => p_0_in(3)
    );
\j[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003030307"
    )
        port map (
      I0 => \^j_reg[2]_1\(0),
      I1 => j_reg(3),
      I2 => j_reg(4),
      I3 => \^j_reg[2]_1\(1),
      I4 => \^j_reg[2]_1\(2),
      I5 => done,
      O => j0
    );
\j[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^j_reg[2]_1\(1),
      I1 => j_reg(3),
      I2 => \^j_reg[2]_1\(0),
      I3 => \^j_reg[2]_1\(2),
      O => p_0_in(4)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1_n_0\,
      Q => \^j_reg[2]_1\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(1),
      Q => \^j_reg[2]_1\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(2),
      Q => \^j_reg[2]_1\(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(3),
      Q => j_reg(3)
    );
\j_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => p_0_in(4),
      Q => j_reg(4)
    );
valid_aux_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => valid_aux_i_2_n_0,
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(3),
      I4 => count_reg(1),
      I5 => \^valid\,
      O => valid_aux_i_1_n_0
    );
valid_aux_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \^j_reg[2]_1\(2),
      I1 => \^j_reg[2]_1\(1),
      I2 => j_reg(4),
      I3 => count_reg(4),
      I4 => \^j_reg[2]_1\(0),
      I5 => j_reg(3),
      O => valid_aux_i_2_n_0
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => valid_aux_i_1_n_0,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized0\ is
  port (
    valid : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \j_reg[0]_3\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \j_reg[1]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \j_reg[0]_4\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[3]_2\ : out STD_LOGIC;
    \j_reg[2]_1\ : out STD_LOGIC;
    \j_reg[2]_2\ : out STD_LOGIC;
    \j_reg[2]_3\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    valid_aux_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_9 : in STD_LOGIC_VECTOR ( 42 downto 0 );
    \count[4]_i_17_0\ : in STD_LOGIC;
    \count[4]_i_17_1\ : in STD_LOGIC;
    count1_carry_i_14_0 : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count1_carry_i_4__0_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg[0]_2\ : in STD_LOGIC;
    a_in_8 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count[4]_i_11_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count[4]_i_4\ : in STD_LOGIC;
    count1_carry_i_13_0 : in STD_LOGIC;
    count1_carry_i_13_1 : in STD_LOGIC;
    count1_carry_i_13_2 : in STD_LOGIC;
    count1_carry_i_17 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    count1_carry_0 : in STD_LOGIC;
    count1_carry_1 : in STD_LOGIC;
    \count1_carry_i_4__0_1\ : in STD_LOGIC;
    \count1_carry_i_4__0_2\ : in STD_LOGIC;
    \count1_carry_i_4__0_3\ : in STD_LOGIC;
    \count[4]_i_11__3_0\ : in STD_LOGIC;
    \count[4]_i_11__3_1\ : in STD_LOGIC;
    \count[4]_i_7__0_0\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_9 : in STD_LOGIC;
    \count[4]_i_5__5\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized0\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized0\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized0\ is
  signal \^fsm_onehot_state_reg[3]\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_1\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_2\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal count : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal \count1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_11__0_n_0\ : STD_LOGIC;
  signal count1_carry_i_14_n_0 : STD_LOGIC;
  signal \count1_carry_i_15__3_n_0\ : STD_LOGIC;
  signal count1_carry_i_16_n_0 : STD_LOGIC;
  signal \count1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_7__0_n_0\ : STD_LOGIC;
  signal count1_carry_i_9_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[4]_i_14_n_0\ : STD_LOGIC;
  signal \count[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_18_n_0\ : STD_LOGIC;
  signal \count[4]_i_19_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_24_n_0\ : STD_LOGIC;
  signal \count[4]_i_26_n_0\ : STD_LOGIC;
  signal \count[4]_i_28_n_0\ : STD_LOGIC;
  signal \count[4]_i_29_n_0\ : STD_LOGIC;
  signal \count[4]_i_30__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_30_n_0\ : STD_LOGIC;
  signal \count[4]_i_31_n_0\ : STD_LOGIC;
  signal \count[4]_i_37_n_0\ : STD_LOGIC;
  signal \count[4]_i_38_n_0\ : STD_LOGIC;
  signal \count[4]_i_39_n_0\ : STD_LOGIC;
  signal \count[4]_i_40__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_41_n_0\ : STD_LOGIC;
  signal \count[4]_i_44_n_0\ : STD_LOGIC;
  signal \count[4]_i_45_n_0\ : STD_LOGIC;
  signal \count[4]_i_47_n_0\ : STD_LOGIC;
  signal \count[4]_i_48_n_0\ : STD_LOGIC;
  signal \count[4]_i_49_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal done : STD_LOGIC;
  signal \done_aux_i_1__5_n_0\ : STD_LOGIC;
  signal \done_aux_i_3__1_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \^j_reg[0]_4\ : STD_LOGIC;
  signal \^j_reg[1]_0\ : STD_LOGIC;
  signal \^j_reg[1]_1\ : STD_LOGIC;
  signal \^j_reg[1]_2\ : STD_LOGIC;
  signal \^j_reg[2]_0\ : STD_LOGIC;
  signal \^j_reg[2]_2\ : STD_LOGIC;
  signal \^j_reg[2]_3\ : STD_LOGIC;
  signal \^j_reg[3]_0\ : STD_LOGIC;
  signal \^j_reg[3]_1\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__2_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__0_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \count1_carry_i_6__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of count1_carry_i_9 : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \count[4]_i_11__3\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \count[4]_i_21__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \count[4]_i_23__2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \count[4]_i_27__2\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \count[4]_i_28\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \count[4]_i_29\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \count[4]_i_2__0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \count[4]_i_30\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \count[4]_i_30__2\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \count[4]_i_31\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \count[4]_i_33\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \count[4]_i_41__0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \count[4]_i_42\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \count[4]_i_43\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \count[4]_i_44\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \count[4]_i_47\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \count[4]_i_48\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \count[4]_i_49\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \done_aux_i_3__1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \j[0]_i_1__0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \j[1]_i_1__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \j[2]_i_1__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \j[3]_i_2\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \valid_aux_i_1__2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \valid_aux_i_2__0\ : label is "soft_lutpair116";
begin
  \FSM_onehot_state_reg[3]\ <= \^fsm_onehot_state_reg[3]\;
  \FSM_onehot_state_reg[3]_0\ <= \^fsm_onehot_state_reg[3]_0\;
  \FSM_onehot_state_reg[3]_1\ <= \^fsm_onehot_state_reg[3]_1\;
  \FSM_onehot_state_reg[3]_2\ <= \^fsm_onehot_state_reg[3]_2\;
  Q(3 downto 0) <= \^q\(3 downto 0);
  \j_reg[0]_4\ <= \^j_reg[0]_4\;
  \j_reg[1]_0\ <= \^j_reg[1]_0\;
  \j_reg[1]_1\ <= \^j_reg[1]_1\;
  \j_reg[1]_2\ <= \^j_reg[1]_2\;
  \j_reg[2]_0\ <= \^j_reg[2]_0\;
  \j_reg[2]_2\ <= \^j_reg[2]_2\;
  \j_reg[2]_3\ <= \^j_reg[2]_3\;
  \j_reg[3]_0\ <= \^j_reg[3]_0\;
  \j_reg[3]_1\ <= \^j_reg[3]_1\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]\(2),
      O => valid_aux_reg_0(0)
    );
\FSM_onehot_state[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(3),
      I1 => next_out_9,
      I2 => done,
      I3 => \count_reg_reg[0]\(2),
      I4 => \count_reg_reg[0]\(1),
      I5 => \count_reg_reg[0]\(0),
      O => E(0)
    );
\acks_out_reg_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(1),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(4),
      I3 => done,
      I4 => \count_reg_reg[0]\(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count1_carry_i_1__0_n_0\,
      S(2) => \count1_carry_i_2__0_n_0\,
      S(1) => \count1_carry_i_3__0_n_0\,
      S(0) => \count1_carry_i_4__0_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_1__0_n_0\,
      S(2) => \count1_carry__0_i_2__0_n_0\,
      S(1) => \count1_carry__0_i_3__0_n_0\,
      S(0) => \count1_carry__0_i_4__0_n_0\
    );
\count1_carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry__0_i_1__0_n_0\
    );
\count1_carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry__0_i_2__0_n_0\
    );
\count1_carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry__0_i_3__0_n_0\
    );
\count1_carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry__0_i_4__0_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => count1,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count1_carry__1_i_1__0_n_0\,
      S(1) => \count1_carry__1_i_2__0_n_0\,
      S(0) => \count1_carry__1_i_3__0_n_0\
    );
\count1_carry__1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF09990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \^q\(3),
      I3 => \count1_carry_i_6__0_n_0\,
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry__1_i_1__0_n_0\
    );
\count1_carry__1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry__1_i_2__0_n_0\
    );
\count1_carry__1_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry__1_i_3__0_n_0\
    );
\count1_carry_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966969696996"
    )
        port map (
      I0 => \count1_carry_i_4__0_1\,
      I1 => D(0),
      I2 => \count1_carry_i_4__0_2\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \count1_carry_i_11__0_n_0\
    );
count1_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => \count[4]_i_19_n_0\,
      I1 => \count[4]_i_11_0\(0),
      I2 => count1_carry_i_14_n_0,
      I3 => \count[4]_i_4\,
      I4 => a_in_9(40),
      O => \j_reg[0]_2\
    );
count1_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101FFFFF101F0000"
    )
        port map (
      I0 => \count1_carry_i_15__3_n_0\,
      I1 => count1_carry_i_16_n_0,
      I2 => count1_carry_i_13_0,
      I3 => count1_carry_i_13_1,
      I4 => count1_carry_i_13_2,
      I5 => \count[4]_i_39_n_0\,
      O => count1_carry_i_14_n_0
    );
\count1_carry_i_15__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => a_in_9(40),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(8),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(24),
      I5 => count1_carry_i_14_0,
      O => \count1_carry_i_15__3_n_0\
    );
count1_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => a_in_9(0),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(32),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(16),
      I5 => count1_carry_i_14_0,
      O => count1_carry_i_16_n_0
    );
\count1_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry_i_1__0_n_0\
    );
\count1_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF0FFF69990FFF"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry_i_2__0_n_0\
    );
\count1_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0669066900090996"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_4__0_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^q\(3),
      I4 => \count_reg[0]_1\,
      I5 => \count1_carry_i_7__0_n_0\,
      O => \count1_carry_i_3__0_n_0\
    );
\count1_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8400008501202000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count1_carry_i_7__0_n_0\,
      I2 => count1_carry_0,
      I3 => count1_carry_i_9_n_0,
      I4 => count1_carry_1,
      I5 => \count1_carry_i_11__0_n_0\,
      O => \count1_carry_i_4__0_n_0\
    );
\count1_carry_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \count1_carry_i_6__0_n_0\
    );
\count1_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \^j_reg[3]_1\,
      I1 => \^j_reg[0]_4\,
      I2 => D(1),
      I3 => \count1_carry_i_4__0_0\,
      O => \count1_carry_i_7__0_n_0\
    );
count1_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \count1_carry_i_4__0_3\,
      O => count1_carry_i_9_n_0
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__0\(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \plusOp__0\(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__0\(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      O => \plusOp__0\(3)
    );
\count[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC05555"
    )
        port map (
      I0 => a_in_9(42),
      I1 => \^j_reg[1]_0\,
      I2 => \count[4]_i_11_0\(0),
      I3 => \count[4]_i_18_n_0\,
      I4 => \count[4]_i_4\,
      O => \j_reg[0]_3\
    );
\count[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => \count[4]_i_18_n_0\,
      I1 => \count[4]_i_11_0\(0),
      I2 => \count[4]_i_19_n_0\,
      I3 => \count[4]_i_4\,
      I4 => a_in_9(41),
      O => \j_reg[0]_1\
    );
\count[4]_i_11__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555CFC0"
    )
        port map (
      I0 => a_in_8(3),
      I1 => \count[4]_i_5__5\,
      I2 => \^q\(0),
      I3 => \count[4]_i_7__0_n_0\,
      I4 => \^q\(3),
      O => \^j_reg[0]_4\
    );
\count[4]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \count[4]_i_22__2_n_0\,
      I1 => count1_carry_i_13_0,
      I2 => \count[4]_i_24_n_0\,
      I3 => count1_carry_i_14_0,
      I4 => \count[4]_i_26_n_0\,
      O => \^j_reg[1]_2\
    );
\count[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0C0CFAFAFC0CF"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_0\,
      I1 => \count[4]_i_28_n_0\,
      I2 => count1_carry_i_13_0,
      I3 => \count[4]_i_29_n_0\,
      I4 => count1_carry_i_14_0,
      I5 => \count[4]_i_30_n_0\,
      O => \count[4]_i_14_n_0\
    );
\count[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => a_in_9(22),
      I1 => \count[4]_i_31_n_0\,
      I2 => count1_carry_i_14_0,
      I3 => a_in_9(30),
      I4 => \count[4]_i_17_0\,
      I5 => a_in_9(14),
      O => \FSM_onehot_state_reg[3]_3\
    );
\count[4]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0DDFFFF"
    )
        port map (
      I0 => \^j_reg[3]_0\,
      I1 => a_in_8(2),
      I2 => a_in_8(1),
      I3 => \count[4]_i_30__2_n_0\,
      I4 => \^j_reg[2]_0\,
      I5 => \count[4]_i_7__0_0\,
      O => \count[4]_i_15__0_n_0\
    );
\count[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]_1\,
      I1 => \^fsm_onehot_state_reg[3]_2\,
      I2 => count1_carry_i_13_0,
      I3 => \count[4]_i_37_n_0\,
      I4 => count1_carry_i_14_0,
      I5 => \count[4]_i_38_n_0\,
      O => \^j_reg[1]_1\
    );
\count[4]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C55C"
    )
        port map (
      I0 => \^j_reg[1]_1\,
      I1 => \count[4]_i_39_n_0\,
      I2 => \count[4]_i_11_0\(1),
      I3 => \count[4]_i_11_0\(0),
      O => \count[4]_i_18_n_0\
    );
\count[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \count[4]_i_40__0_n_0\,
      I1 => \count[4]_i_41_n_0\,
      I2 => count1_carry_i_13_0,
      I3 => \count[4]_i_22__2_n_0\,
      I4 => count1_carry_i_13_2,
      I5 => \count[4]_i_14_n_0\,
      O => \count[4]_i_19_n_0\
    );
\count[4]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111101100000000"
    )
        port map (
      I0 => done,
      I1 => \^q\(3),
      I2 => \^j_reg[3]_1\,
      I3 => \count_reg[0]_1\,
      I4 => \count_reg[0]_0\,
      I5 => count1,
      O => count
    );
\count[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => a_in_9(23),
      I1 => \count[4]_i_44_n_0\,
      I2 => count1_carry_i_14_0,
      I3 => a_in_9(31),
      I4 => \count[4]_i_17_0\,
      I5 => a_in_9(15),
      O => \FSM_onehot_state_reg[3]_4\
    );
\count[4]_i_21__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => \^j_reg[2]_0\
    );
\count[4]_i_22__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => a_in_9(21),
      I1 => \count[4]_i_45_n_0\,
      I2 => count1_carry_i_14_0,
      I3 => a_in_9(29),
      I4 => \count[4]_i_17_0\,
      I5 => a_in_9(13),
      O => \count[4]_i_22__2_n_0\
    );
\count[4]_i_23__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"887E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \^j_reg[3]_0\
    );
\count[4]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D001DFF"
    )
        port map (
      I0 => a_in_9(1),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(33),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(17),
      O => \count[4]_i_24_n_0\
    );
\count[4]_i_24__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => \^j_reg[2]_2\,
      I1 => a_in_8(4),
      I2 => \^j_reg[2]_3\,
      I3 => a_in_8(0),
      O => \j_reg[2]_1\
    );
\count[4]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => a_in_9(41),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(9),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(25),
      O => \count[4]_i_26_n_0\
    );
\count[4]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF1D1D"
    )
        port map (
      I0 => count1_carry_i_17(0),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(11),
      I3 => a_in_9(27),
      I4 => \count[4]_i_17_0\,
      O => \^fsm_onehot_state_reg[3]_0\
    );
\count[4]_i_27__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      O => \j_reg[0]_0\
    );
\count[4]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => a_in_9(19),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(3),
      I3 => \count[4]_i_17_1\,
      I4 => a_in_9(35),
      O => \count[4]_i_28_n_0\
    );
\count[4]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(23),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(7),
      I3 => \count[4]_i_17_1\,
      I4 => a_in_9(39),
      O => \count[4]_i_29_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      O => \plusOp__0\(4)
    );
\count[4]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(31),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(15),
      O => \count[4]_i_30_n_0\
    );
\count[4]_i_30__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"522B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \count[4]_i_30__2_n_0\
    );
\count[4]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(6),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(38),
      O => \count[4]_i_31_n_0\
    );
\count[4]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D001DFF"
    )
        port map (
      I0 => a_in_9(2),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(34),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(18),
      O => \count_reg_reg[2]\
    );
\count[4]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF1D1D"
    )
        port map (
      I0 => a_in_9(42),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(10),
      I3 => a_in_9(26),
      I4 => \count[4]_i_17_0\,
      O => \^fsm_onehot_state_reg[3]\
    );
\count[4]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(28),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(12),
      I3 => \count[4]_i_17_1\,
      I4 => count1_carry_i_17(1),
      O => \^fsm_onehot_state_reg[3]_1\
    );
\count[4]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(20),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(4),
      I3 => \count[4]_i_17_1\,
      I4 => a_in_9(36),
      O => \^fsm_onehot_state_reg[3]_2\
    );
\count[4]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => a_in_9(0),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(32),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(16),
      O => \count[4]_i_37_n_0\
    );
\count[4]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(24),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(8),
      I3 => \count[4]_i_17_1\,
      I4 => a_in_9(40),
      O => \count[4]_i_38_n_0\
    );
\count[4]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0C0CFAFAFC0CF"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]\,
      I1 => \count[4]_i_47_n_0\,
      I2 => count1_carry_i_13_0,
      I3 => \count[4]_i_48_n_0\,
      I4 => count1_carry_i_14_0,
      I5 => \count[4]_i_49_n_0\,
      O => \count[4]_i_39_n_0\
    );
\count[4]_i_3__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"363633369C9C999C"
    )
        port map (
      I0 => \^q\(3),
      I1 => D(2),
      I2 => \count_reg[0]_2\,
      I3 => \^q\(0),
      I4 => \count[4]_i_7__0_n_0\,
      I5 => a_in_8(4),
      O => \^j_reg[3]_1\
    );
\count[4]_i_40__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47444777FFFFFFFF"
    )
        port map (
      I0 => a_in_9(25),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(9),
      I3 => \count[4]_i_17_1\,
      I4 => a_in_9(41),
      I5 => count1_carry_i_14_0,
      O => \count[4]_i_40__0_n_0\
    );
\count[4]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => a_in_9(1),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(33),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(17),
      I5 => count1_carry_i_14_0,
      O => \count[4]_i_41_n_0\
    );
\count[4]_i_41__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F01"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \^j_reg[2]_3\
    );
\count[4]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0FE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \^j_reg[2]_2\
    );
\count[4]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D001DFF"
    )
        port map (
      I0 => a_in_9(3),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(35),
      I3 => \count[4]_i_17_0\,
      I4 => a_in_9(19),
      O => \count_reg_reg[3]\
    );
\count[4]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(7),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(39),
      O => \count[4]_i_44_n_0\
    );
\count[4]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(5),
      I1 => \count[4]_i_17_1\,
      I2 => a_in_9(37),
      O => \count[4]_i_45_n_0\
    );
\count[4]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => a_in_9(18),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(2),
      I3 => \count[4]_i_17_1\,
      I4 => a_in_9(34),
      O => \count[4]_i_47_n_0\
    );
\count[4]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_9(22),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(6),
      I3 => \count[4]_i_17_1\,
      I4 => a_in_9(38),
      O => \count[4]_i_48_n_0\
    );
\count[4]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_9(30),
      I1 => \count[4]_i_17_0\,
      I2 => a_in_9(14),
      O => \count[4]_i_49_n_0\
    );
\count[4]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^j_reg[3]_0\,
      I1 => a_in_8(2),
      I2 => a_in_8(1),
      I3 => \count[4]_i_30__2_n_0\,
      O => \j_reg[3]_2\
    );
\count[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => \^j_reg[1]_2\,
      I1 => \count[4]_i_14_n_0\,
      I2 => \count[4]_i_11_0\(1),
      I3 => \count[4]_i_11_0\(0),
      O => \^j_reg[1]_0\
    );
\count[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000417D417D"
    )
        port map (
      I0 => \count[4]_i_15__0_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \count[4]_i_11__3_0\,
      I4 => \count[4]_i_11__3_1\,
      I5 => \^q\(1),
      O => \count[4]_i_7__0_n_0\
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
\done_aux_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAABABBBB"
    )
        port map (
      I0 => done,
      I1 => \^q\(3),
      I2 => done_aux_reg_0,
      I3 => \count_reg[0]_0\,
      I4 => count1,
      I5 => \done_aux_i_3__1_n_0\,
      O => \done_aux_i_1__5_n_0\
    );
\done_aux_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \done_aux_i_3__1_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__5_n_0\,
      Q => done
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
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \p_0_in__0\(2)
    );
\j[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => done,
      I1 => \^q\(3),
      O => j0
    );
\j[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => \p_0_in__0\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => \^q\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(2),
      Q => \^q\(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__0\(3),
      Q => \^q\(3)
    );
\valid_aux_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => \^q\(3),
      I1 => \valid_aux_i_2__0_n_0\,
      I2 => \count1_carry_i_6__0_n_0\,
      I3 => \^valid\,
      O => \valid_aux_i_1__2_n_0\
    );
\valid_aux_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(4),
      I3 => count_reg(3),
      I4 => count_reg(2),
      O => \valid_aux_i_2__0_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__2_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized1\ is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[3]_2\ : out STD_LOGIC;
    \j_reg[3]_3\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[0]_1\ : out STD_LOGIC;
    \j_reg[0]_3\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \j_reg[0]_4\ : out STD_LOGIC;
    \j_reg[3]_4\ : out STD_LOGIC;
    \j_reg[0]_5\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    valid_aux_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[1]_1\ : out STD_LOGIC;
    \j_reg[1]_2\ : out STD_LOGIC;
    \count1_carry__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count[4]_i_5__0_0\ : in STD_LOGIC;
    \count[4]_i_5__0_1\ : in STD_LOGIC;
    \count[4]_i_5__0_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count1_carry_i_7__1_0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count1_carry__1_i_1__6\ : in STD_LOGIC;
    count1_carry_0 : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    done_aux_reg_1 : in STD_LOGIC;
    done_aux_reg_2 : in STD_LOGIC;
    \count[4]_i_7__0\ : in STD_LOGIC;
    \count[4]_i_7__0_0\ : in STD_LOGIC;
    a_in_8 : in STD_LOGIC_VECTOR ( 37 downto 0 );
    \count[4]_i_17__0_0\ : in STD_LOGIC;
    \count[4]_i_17__0_1\ : in STD_LOGIC;
    \count[4]_i_14__0_0\ : in STD_LOGIC;
    \count[4]_i_19__0_0\ : in STD_LOGIC;
    \count[4]_i_6__3_0\ : in STD_LOGIC;
    count1_carry_1 : in STD_LOGIC;
    count1_carry_2 : in STD_LOGIC;
    a_in_7 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_12__0\ : in STD_LOGIC;
    \count1_carry_i_8__1_0\ : in STD_LOGIC;
    \count[4]_i_4__5\ : in STD_LOGIC;
    \count1_carry_i_16__1_0\ : in STD_LOGIC;
    \count1_carry_i_16__1_1\ : in STD_LOGIC;
    \count1_carry_i_16__1_2\ : in STD_LOGIC;
    \count_reg_reg[0]_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_8 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized1\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized1\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized1\ is
  signal \^fsm_onehot_state_reg[3]\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_11__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_14__0_n_0\ : STD_LOGIC;
  signal count1_carry_i_15_n_0 : STD_LOGIC;
  signal \count1_carry_i_16__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_17__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_18__0_n_0\ : STD_LOGIC;
  signal count1_carry_i_18_n_0 : STD_LOGIC;
  signal count1_carry_i_25_n_0 : STD_LOGIC;
  signal \count1_carry_i_3__6_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_8__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_9__4_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_19__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_22_n_0\ : STD_LOGIC;
  signal \count[4]_i_25__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_26__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_28__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_29__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_32_n_0\ : STD_LOGIC;
  signal \count[4]_i_33__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_34__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_35__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_36__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_37__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_38__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_39__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_40_n_0\ : STD_LOGIC;
  signal \count[4]_i_43__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_44__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_45__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_46__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_47__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_48__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_49__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_50_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__4_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal \^count_reg_reg[3]\ : STD_LOGIC;
  signal \^count_reg_reg[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_1__4_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \^j_reg[0]_0\ : STD_LOGIC;
  signal \^j_reg[0]_1\ : STD_LOGIC;
  signal \^j_reg[0]_2\ : STD_LOGIC;
  signal \^j_reg[0]_3\ : STD_LOGIC;
  signal \^j_reg[1]_0\ : STD_LOGIC;
  signal \^j_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^j_reg[3]_2\ : STD_LOGIC;
  signal \^j_reg[3]_3\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__0_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__1_n_0\ : STD_LOGIC;
  signal valid_aux_i_3_n_0 : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count1_carry_i_13__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \count1_carry_i_15__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \count1_carry_i_17__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of count1_carry_i_28 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of count1_carry_i_31 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \count1_carry_i_32__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of count1_carry_i_42 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of count1_carry_i_47 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \count[0]_i_1__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \count[1]_i_1__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \count[2]_i_1__1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \count[3]_i_1__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \count[4]_i_19__0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \count[4]_i_20__0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \count[4]_i_22\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \count[4]_i_26__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \count[4]_i_29__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \count[4]_i_2__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \count[4]_i_32\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \count[4]_i_33__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \count[4]_i_35__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \count[4]_i_3__5\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \count[4]_i_43__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \count[4]_i_44__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \count[4]_i_46__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \count[4]_i_47__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \count[4]_i_50\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \count[4]_i_8__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \j[0]_i_1__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \j[1]_i_1__1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \j[2]_i_1__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \j[3]_i_2__0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \valid_aux_i_2__1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of valid_aux_i_3 : label is "soft_lutpair94";
begin
  \FSM_onehot_state_reg[3]\ <= \^fsm_onehot_state_reg[3]\;
  \count_reg_reg[0]_0\ <= \^count_reg_reg[0]_0\;
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
  \count_reg_reg[3]\ <= \^count_reg_reg[3]\;
  \count_reg_reg[4]\ <= \^count_reg_reg[4]\;
  \j_reg[0]_0\ <= \^j_reg[0]_0\;
  \j_reg[0]_1\ <= \^j_reg[0]_1\;
  \j_reg[0]_2\ <= \^j_reg[0]_2\;
  \j_reg[0]_3\ <= \^j_reg[0]_3\;
  \j_reg[1]_0\ <= \^j_reg[1]_0\;
  \j_reg[3]_0\(3 downto 0) <= \^j_reg[3]_0\(3 downto 0);
  \j_reg[3]_2\ <= \^j_reg[3]_2\;
  \j_reg[3]_3\ <= \^j_reg[3]_3\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]_2\(2),
      O => valid_aux_reg_0(0)
    );
\FSM_onehot_state[4]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_2\(3),
      I1 => next_out_8,
      I2 => done,
      I3 => \count_reg_reg[0]_2\(2),
      I4 => \count_reg_reg[0]_2\(1),
      I5 => \count_reg_reg[0]_2\(0),
      O => E(0)
    );
\acks_out_reg_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]_2\(1),
      I1 => \count_reg_reg[0]_2\(0),
      I2 => \count_reg_reg[0]_2\(4),
      I3 => done,
      I4 => \count_reg_reg[0]_2\(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => \count1_carry__0_0\(1 downto 0),
      S(1) => \count1_carry_i_3__6_n_0\,
      S(0) => \count1_carry_i_4__1_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \count1_carry__1_0\(3 downto 0)
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => S(2 downto 0)
    );
\count1_carry_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^j_reg[3]_3\,
      I1 => done_aux_reg_0(1),
      O => \^count_reg_reg[1]\
    );
\count1_carry_i_11__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[3]_0\(1),
      I1 => \count1_carry_i_18__0_n_0\,
      O => \count1_carry_i_11__1_n_0\
    );
\count1_carry_i_12__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB888B"
    )
        port map (
      I0 => a_in_8(33),
      I1 => Q(3),
      I2 => \count[4]_i_18__0_n_0\,
      I3 => Q(0),
      I4 => \count1_carry_i_14__0_n_0\,
      O => \^j_reg[3]_2\
    );
\count1_carry_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022F"
    )
        port map (
      I0 => \^j_reg[3]_2\,
      I1 => done_aux_reg_0(0),
      I2 => done_aux_reg_0(1),
      I3 => \^j_reg[3]_3\,
      O => \^count_reg_reg[0]_0\
    );
\count1_carry_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0101010D0D010D0"
    )
        port map (
      I0 => \count[4]_i_40_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => count1_carry_i_15_n_0,
      I5 => \count1_carry_i_16__0_n_0\,
      O => \count1_carry_i_14__0_n_0\
    );
count1_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_8(23),
      I1 => a_in_8(8),
      I2 => \count[4]_i_7__0_0\,
      I3 => a_in_8(15),
      I4 => \count[4]_i_17__0_1\,
      I5 => \count1_carry_i_17__0_n_0\,
      O => count1_carry_i_15_n_0
    );
\count1_carry_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => a_in_7(0),
      I1 => \^j_reg[0]_0\,
      I2 => \count1_carry_i_8__1_0\,
      I3 => count1_carry_i_25_n_0,
      I4 => \^j_reg[3]_0\(0),
      O => \j_reg[0]_4\
    );
\count1_carry_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30305F503F3F5F50"
    )
        port map (
      I0 => a_in_8(12),
      I1 => a_in_8(27),
      I2 => \count[4]_i_7__0_0\,
      I3 => count1_carry_i_18_n_0,
      I4 => \count[4]_i_17__0_1\,
      I5 => a_in_8(19),
      O => \count1_carry_i_16__0_n_0\
    );
\count1_carry_i_16__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_7(1),
      I1 => \^j_reg[0]_0\,
      I2 => \count1_carry_i_12__0\,
      I3 => \^j_reg[3]_0\(0),
      I4 => count1_carry_i_25_n_0,
      O => \^j_reg[0]_1\
    );
\count1_carry_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(0),
      I1 => \count[4]_i_14__0_0\,
      I2 => a_in_8(30),
      O => \count1_carry_i_17__0_n_0\
    );
count1_carry_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => a_in_8(34),
      I1 => \count[4]_i_14__0_0\,
      I2 => \count[4]_i_17__0_0\,
      I3 => a_in_8(4),
      O => count1_carry_i_18_n_0
    );
\count1_carry_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF800F8"
    )
        port map (
      I0 => \^j_reg[3]_0\(0),
      I1 => count1_carry_i_25_n_0,
      I2 => \count1_carry_i_8__1_0\,
      I3 => \^j_reg[0]_0\,
      I4 => a_in_7(0),
      I5 => D(0),
      O => \count1_carry_i_18__0_n_0\
    );
count1_carry_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0D0EFF000D0E00"
    )
        port map (
      I0 => \^j_reg[3]_0\(2),
      I1 => \count1_carry_i_16__1_0\,
      I2 => \count1_carry_i_16__1_1\,
      I3 => \^j_reg[3]_0\(1),
      I4 => \^j_reg[3]_0\(0),
      I5 => \count1_carry_i_16__1_2\,
      O => count1_carry_i_25_n_0
    );
count1_carry_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A56A"
    )
        port map (
      I0 => \^j_reg[3]_0\(3),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(0),
      I3 => \^j_reg[3]_0\(1),
      O => \j_reg[3]_4\
    );
count1_carry_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \^j_reg[3]_0\(0),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(1),
      O => \j_reg[0]_5\
    );
\count1_carry_i_32__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E70"
    )
        port map (
      I0 => \^j_reg[3]_0\(3),
      I1 => \^j_reg[3]_0\(0),
      I2 => \^j_reg[3]_0\(2),
      I3 => \^j_reg[3]_0\(1),
      O => \j_reg[3]_1\
    );
\count1_carry_i_3__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006000099696690"
    )
        port map (
      I0 => D(3),
      I1 => \count1_carry__1_i_1__6\,
      I2 => count1_carry_0,
      I3 => \^count_reg_reg[3]\,
      I4 => \count1_carry_i_8__1_n_0\,
      I5 => \^j_reg[3]_0\(3),
      O => \count1_carry_i_3__6_n_0\
    );
count1_carry_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3780"
    )
        port map (
      I0 => \^j_reg[3]_0\(1),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(0),
      I3 => \^j_reg[3]_0\(3),
      O => \j_reg[1]_2\
    );
count1_carry_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C87F"
    )
        port map (
      I0 => \^j_reg[3]_0\(1),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(0),
      I3 => \^j_reg[3]_0\(3),
      O => \j_reg[1]_1\
    );
\count1_carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090A00001080801"
    )
        port map (
      I0 => \count1_carry_i_9__4_n_0\,
      I1 => \^count_reg_reg[3]\,
      I2 => count1_carry_1,
      I3 => \count1_carry_i_11__1_n_0\,
      I4 => count1_carry_2,
      I5 => \^j_reg[3]_0\(0),
      O => \count1_carry_i_4__1_n_0\
    );
\count1_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDD0FDD00000"
    )
        port map (
      I0 => \^j_reg[3]_2\,
      I1 => done_aux_reg_0(0),
      I2 => done_aux_reg_0(1),
      I3 => \^j_reg[3]_3\,
      I4 => \^j_reg[0]_2\,
      I5 => done_aux_reg_0(2),
      O => \count_reg_reg[0]\
    );
\count1_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A56"
    )
        port map (
      I0 => \^count_reg_reg[4]\,
      I1 => D(3),
      I2 => \count1_carry__1_i_1__6\,
      I3 => \count1_carry_i_8__1_n_0\,
      O => \^count_reg_reg[3]\
    );
\count1_carry_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008E8EFF"
    )
        port map (
      I0 => \count1_carry_i_18__0_n_0\,
      I1 => \^j_reg[0]_1\,
      I2 => D(1),
      I3 => D(2),
      I4 => \count1_carry_i_7__1_0\,
      O => \count1_carry_i_8__1_n_0\
    );
\count1_carry_i_9__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => \count1_carry_i_18__0_n_0\,
      I1 => \^j_reg[0]_1\,
      I2 => D(1),
      I3 => \^j_reg[3]_0\(2),
      I4 => D(2),
      I5 => \count1_carry_i_7__1_0\,
      O => \count1_carry_i_9__4_n_0\
    );
\count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__1\(0)
    );
\count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
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
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      O => \plusOp__1\(3)
    );
\count[4]_i_10__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555CCF0"
    )
        port map (
      I0 => a_in_8(35),
      I1 => \count[4]_i_19__0_n_0\,
      I2 => \^j_reg[1]_0\,
      I3 => Q(0),
      I4 => Q(3),
      O => \^j_reg[0]_2\
    );
\count[4]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => a_in_8(26),
      I1 => a_in_8(11),
      I2 => \count[4]_i_7__0_0\,
      I3 => \count[4]_i_22_n_0\,
      I4 => \count[4]_i_17__0_1\,
      I5 => a_in_8(18),
      O => \count[4]_i_12__0_n_0\
    );
\count[4]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F5F5F303F5050"
    )
        port map (
      I0 => a_in_8(14),
      I1 => a_in_8(29),
      I2 => \count[4]_i_7__0_0\,
      I3 => a_in_8(22),
      I4 => \count[4]_i_17__0_1\,
      I5 => \count[4]_i_6__3_0\,
      O => \count[4]_i_13__0_n_0\
    );
\count[4]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \count[4]_i_25__0_n_0\,
      I1 => \count[4]_i_26__0_n_0\,
      I2 => \count[4]_i_7__0\,
      I3 => \count[4]_i_28__0_n_0\,
      I4 => \count[4]_i_7__0_0\,
      I5 => \count[4]_i_29__0_n_0\,
      O => \count[4]_i_14__0_n_0\
    );
\count[4]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a_in_8(17),
      I1 => \count[4]_i_32_n_0\,
      I2 => \count[4]_i_7__0_0\,
      I3 => a_in_8(25),
      I4 => \count[4]_i_17__0_1\,
      I5 => a_in_8(10),
      O => \FSM_onehot_state_reg[3]_0\
    );
\count[4]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050C0CF5F5FC0CF"
    )
        port map (
      I0 => \count[4]_i_33__0_n_0\,
      I1 => \count[4]_i_34__0_n_0\,
      I2 => \count[4]_i_7__0\,
      I3 => \count[4]_i_35__0_n_0\,
      I4 => \count[4]_i_7__0_0\,
      I5 => \count[4]_i_36__0_n_0\,
      O => \^j_reg[0]_3\
    );
\count[4]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE82FFFFBE820000"
    )
        port map (
      I0 => \count[4]_i_37__0_n_0\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \count[4]_i_38__0_n_0\,
      I4 => Q(1),
      I5 => \count[4]_i_39__0_n_0\,
      O => \count[4]_i_18__0_n_0\
    );
\count[4]_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[4]_i_40_n_0\,
      I1 => Q(1),
      I2 => \^j_reg[0]_3\,
      O => \count[4]_i_19__0_n_0\
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^j_reg[0]_0\,
      I1 => done,
      I2 => \count_reg[0]_0\,
      O => count
    );
\count[4]_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[4]_i_39__0_n_0\,
      I1 => Q(1),
      I2 => \count[4]_i_14__0_n_0\,
      O => \^j_reg[1]_0\
    );
\count[4]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(3),
      I1 => \count[4]_i_17__0_0\,
      I2 => a_in_8(33),
      O => \count[4]_i_22_n_0\
    );
\count[4]_i_25__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => a_in_8(13),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(28),
      O => \count[4]_i_25__0_n_0\
    );
\count[4]_i_26__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => a_in_8(5),
      I1 => \count[4]_i_14__0_0\,
      I2 => a_in_8(35),
      I3 => \count[4]_i_17__0_1\,
      I4 => a_in_8(20),
      O => \count[4]_i_26__0_n_0\
    );
\count[4]_i_28__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"470047FF"
    )
        port map (
      I0 => a_in_8(1),
      I1 => \count[4]_i_17__0_0\,
      I2 => a_in_8(31),
      I3 => \count[4]_i_17__0_1\,
      I4 => a_in_8(16),
      O => \count[4]_i_28__0_n_0\
    );
\count[4]_i_29__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => a_in_8(24),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(9),
      O => \count[4]_i_29__0_n_0\
    );
\count[4]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      O => \plusOp__1\(4)
    );
\count[4]_i_31__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF4747"
    )
        port map (
      I0 => a_in_8(36),
      I1 => \count[4]_i_17__0_0\,
      I2 => a_in_8(6),
      I3 => a_in_8(21),
      I4 => \count[4]_i_17__0_1\,
      I5 => \count[4]_i_7__0_0\,
      O => \^fsm_onehot_state_reg[3]\
    );
\count[4]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(2),
      I1 => \count[4]_i_17__0_0\,
      I2 => a_in_8(32),
      O => \count[4]_i_32_n_0\
    );
\count[4]_i_33__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(27),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(12),
      O => \count[4]_i_33__0_n_0\
    );
\count[4]_i_34__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D0DDFFFFD0DD"
    )
        port map (
      I0 => a_in_8(34),
      I1 => \count[4]_i_14__0_0\,
      I2 => \count[4]_i_17__0_0\,
      I3 => a_in_8(4),
      I4 => \count[4]_i_17__0_1\,
      I5 => a_in_8(19),
      O => \count[4]_i_34__0_n_0\
    );
\count[4]_i_35__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(23),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(8),
      O => \count[4]_i_35__0_n_0\
    );
\count[4]_i_36__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_8(0),
      I1 => \count[4]_i_17__0_0\,
      I2 => a_in_8(30),
      I3 => \count[4]_i_17__0_1\,
      I4 => a_in_8(15),
      O => \count[4]_i_36__0_n_0\
    );
\count[4]_i_37__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => a_in_8(16),
      I1 => \count[4]_i_43__0_n_0\,
      I2 => a_in_8(24),
      I3 => \count[4]_i_17__0_1\,
      I4 => a_in_8(9),
      I5 => \count[4]_i_7__0_0\,
      O => \count[4]_i_37__0_n_0\
    );
\count[4]_i_38__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030505F3F3F505F"
    )
        port map (
      I0 => a_in_8(13),
      I1 => a_in_8(28),
      I2 => \count[4]_i_7__0_0\,
      I3 => \count[4]_i_44__0_n_0\,
      I4 => \count[4]_i_17__0_1\,
      I5 => a_in_8(20),
      O => \count[4]_i_38__0_n_0\
    );
\count[4]_i_39__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC05F5FCFC05050"
    )
        port map (
      I0 => \count[4]_i_45__0_n_0\,
      I1 => \count[4]_i_46__0_n_0\,
      I2 => \count[4]_i_7__0\,
      I3 => \count[4]_i_47__0_n_0\,
      I4 => \count[4]_i_7__0_0\,
      I5 => \count[4]_i_48__0_n_0\,
      O => \count[4]_i_39__0_n_0\
    );
\count[4]_i_3__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^j_reg[3]_0\(0),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(1),
      I3 => \^j_reg[3]_0\(3),
      O => \^j_reg[0]_0\
    );
\count[4]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC05F50CFCF5F50"
    )
        port map (
      I0 => \count[4]_i_49__0_n_0\,
      I1 => \count[4]_i_50_n_0\,
      I2 => \count[4]_i_7__0\,
      I3 => \^fsm_onehot_state_reg[3]\,
      I4 => \count[4]_i_7__0_0\,
      I5 => \count[4]_i_19__0_0\,
      O => \count[4]_i_40_n_0\
    );
\count[4]_i_43__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(1),
      I1 => \count[4]_i_14__0_0\,
      I2 => a_in_8(31),
      O => \count[4]_i_43__0_n_0\
    );
\count[4]_i_44__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_8(5),
      I1 => \count[4]_i_14__0_0\,
      I2 => a_in_8(35),
      O => \count[4]_i_44__0_n_0\
    );
\count[4]_i_45__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(18),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(3),
      I3 => \count[4]_i_14__0_0\,
      I4 => a_in_8(33),
      O => \count[4]_i_45__0_n_0\
    );
\count[4]_i_46__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => a_in_8(26),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(11),
      O => \count[4]_i_46__0_n_0\
    );
\count[4]_i_47__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => a_in_8(14),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(29),
      O => \count[4]_i_47__0_n_0\
    );
\count[4]_i_48__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4447444744477777"
    )
        port map (
      I0 => a_in_8(22),
      I1 => \count[4]_i_17__0_1\,
      I2 => \count[4]_i_14__0_0\,
      I3 => a_in_8(37),
      I4 => \count[4]_i_17__0_0\,
      I5 => a_in_8(7),
      O => \count[4]_i_48__0_n_0\
    );
\count[4]_i_49__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_8(17),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(2),
      I3 => \count[4]_i_14__0_0\,
      I4 => a_in_8(32),
      O => \count[4]_i_49__0_n_0\
    );
\count[4]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => a_in_8(25),
      I1 => \count[4]_i_17__0_1\,
      I2 => a_in_8(10),
      O => \count[4]_i_50_n_0\
    );
\count[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556665AAAA6665"
    )
        port map (
      I0 => D(4),
      I1 => \count[4]_i_6__4_n_0\,
      I2 => \^j_reg[3]_0\(0),
      I3 => \count[4]_i_4__5\,
      I4 => \^j_reg[0]_0\,
      I5 => a_in_7(2),
      O => \^count_reg_reg[4]\
    );
\count[4]_i_6__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004070F0F0407"
    )
        port map (
      I0 => \count[4]_i_12__0_n_0\,
      I1 => Q(2),
      I2 => Q(0),
      I3 => \count[4]_i_13__0_n_0\,
      I4 => Q(1),
      I5 => \count[4]_i_14__0_n_0\,
      O => \j_reg[2]_0\
    );
\count[4]_i_6__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1BBB11100000000"
    )
        port map (
      I0 => \^j_reg[3]_0\(1),
      I1 => \count[4]_i_5__0_0\,
      I2 => \count[4]_i_5__0_1\,
      I3 => \^j_reg[3]_0\(2),
      I4 => \count[4]_i_5__0_2\,
      I5 => \^j_reg[3]_0\(0),
      O => \count[4]_i_6__4_n_0\
    );
\count[4]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^j_reg[3]_2\,
      I1 => done_aux_reg_0(0),
      O => \count_reg_reg[0]_1\
    );
\count[4]_i_9__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => a_in_8(34),
      I1 => Q(3),
      I2 => \count[4]_i_18__0_n_0\,
      I3 => Q(0),
      I4 => \count[4]_i_19__0_n_0\,
      O => \^j_reg[3]_3\
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
\done_aux_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF008000FF"
    )
        port map (
      I0 => \^j_reg[3]_0\(1),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(0),
      I3 => \^j_reg[3]_0\(3),
      I4 => \count_reg[0]_0\,
      I5 => done,
      O => \done_aux_i_1__4_n_0\
    );
\done_aux_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000096"
    )
        port map (
      I0 => \^j_reg[0]_2\,
      I1 => done_aux_reg_0(2),
      I2 => \^count_reg_reg[0]_0\,
      I3 => \^count_reg_reg[1]\,
      I4 => done_aux_reg_1,
      I5 => done_aux_reg_2,
      O => \count_reg_reg[2]\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__4_n_0\,
      Q => done
    );
\j[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg[3]_0\(0),
      O => \j[0]_i_1__1_n_0\
    );
\j[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^j_reg[3]_0\(1),
      I1 => \^j_reg[3]_0\(0),
      O => \p_0_in__1\(1)
    );
\j[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^j_reg[3]_0\(2),
      I1 => \^j_reg[3]_0\(0),
      I2 => \^j_reg[3]_0\(1),
      O => \p_0_in__1\(2)
    );
\j[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111111"
    )
        port map (
      I0 => done,
      I1 => \^j_reg[3]_0\(3),
      I2 => \^j_reg[3]_0\(1),
      I3 => \^j_reg[3]_0\(2),
      I4 => \^j_reg[3]_0\(0),
      O => j0
    );
\j[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^j_reg[3]_0\(0),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(1),
      O => \p_0_in__1\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__1_n_0\,
      Q => \^j_reg[3]_0\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__1\(1),
      Q => \^j_reg[3]_0\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__1\(2),
      Q => \^j_reg[3]_0\(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__1\(3),
      Q => \^j_reg[3]_0\(3)
    );
\valid_aux_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => \valid_aux_i_2__1_n_0\,
      I1 => count_reg(4),
      I2 => count_reg(3),
      I3 => valid_aux_i_3_n_0,
      I4 => \^valid\,
      O => \valid_aux_i_1__0_n_0\
    );
\valid_aux_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \valid_aux_i_2__1_n_0\
    );
valid_aux_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^j_reg[3]_0\(0),
      I1 => \^j_reg[3]_0\(2),
      I2 => \^j_reg[3]_0\(1),
      I3 => \^j_reg[3]_0\(3),
      O => valid_aux_i_3_n_0
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__0_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized2\ is
  port (
    valid : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \j_reg[0]_3\ : out STD_LOGIC;
    \j_reg[3]_3\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    valid_aux_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[3]_4\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count[4]_i_3__0_0\ : in STD_LOGIC;
    \count[4]_i_3__0_1\ : in STD_LOGIC;
    \count1_carry_i_12__1_0\ : in STD_LOGIC;
    \count[4]_i_8__2_0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count[4]_i_5__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry__1_i_3__6\ : in STD_LOGIC;
    \count[4]_i_6__4\ : in STD_LOGIC;
    \count[4]_i_6__4_0\ : in STD_LOGIC;
    a_in_7 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    count1_carry_i_25 : in STD_LOGIC;
    count1_carry_i_41_0 : in STD_LOGIC;
    count1_carry_i_19_0 : in STD_LOGIC;
    count1_carry_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    a_in_6 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count[4]_i_3__0_2\ : in STD_LOGIC;
    \count[4]_i_3__0_3\ : in STD_LOGIC;
    \count[4]_i_7__4_0\ : in STD_LOGIC;
    \count[4]_i_7__4_1\ : in STD_LOGIC;
    \count[4]_i_8__2_1\ : in STD_LOGIC;
    \count1_carry_i_12__1_1\ : in STD_LOGIC;
    \count[4]_i_22__0_0\ : in STD_LOGIC;
    \count[4]_i_21__1_0\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized2\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized2\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized2\ is
  signal \^fsm_onehot_state_reg[3]\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal \count1_carry__0_i_1__7_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2__7_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3__7_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4__7_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1__7_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2__7_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3__7_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_10__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_11__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_12__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_13__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_14__1_n_0\ : STD_LOGIC;
  signal count1_carry_i_19_n_0 : STD_LOGIC;
  signal \count1_carry_i_1__7_n_0\ : STD_LOGIC;
  signal count1_carry_i_20_n_0 : STD_LOGIC;
  signal count1_carry_i_21_n_0 : STD_LOGIC;
  signal count1_carry_i_27_n_0 : STD_LOGIC;
  signal count1_carry_i_29_n_0 : STD_LOGIC;
  signal \count1_carry_i_2__7_n_0\ : STD_LOGIC;
  signal count1_carry_i_30_n_0 : STD_LOGIC;
  signal count1_carry_i_33_n_0 : STD_LOGIC;
  signal count1_carry_i_34_n_0 : STD_LOGIC;
  signal count1_carry_i_35_n_0 : STD_LOGIC;
  signal count1_carry_i_37_n_0 : STD_LOGIC;
  signal count1_carry_i_38_n_0 : STD_LOGIC;
  signal count1_carry_i_39_n_0 : STD_LOGIC;
  signal \count1_carry_i_3__7_n_0\ : STD_LOGIC;
  signal count1_carry_i_40_n_0 : STD_LOGIC;
  signal count1_carry_i_43_n_0 : STD_LOGIC;
  signal count1_carry_i_44_n_0 : STD_LOGIC;
  signal count1_carry_i_45_n_0 : STD_LOGIC;
  signal count1_carry_i_46_n_0 : STD_LOGIC;
  signal \count1_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_7__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_9__0_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_18__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_19__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_20__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_21__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_29__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_32__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal done : STD_LOGIC;
  signal \done_aux_i_1__6_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__2_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^j_reg[0]_2\ : STD_LOGIC;
  signal \^j_reg[0]_3\ : STD_LOGIC;
  signal \^j_reg[1]_0\ : STD_LOGIC;
  signal \^j_reg[1]_1\ : STD_LOGIC;
  signal \^j_reg[3]_0\ : STD_LOGIC;
  signal \^j_reg[3]_1\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__1_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__7_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count1_carry_i_13__2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of count1_carry_i_34 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of count1_carry_i_35 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of count1_carry_i_38 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of count1_carry_i_44 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \count1_carry_i_5__2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \count1_carry_i_6__2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \count1_carry_i_9__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \count[1]_i_1__2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \count[2]_i_1__2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \count[3]_i_1__2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \count[4]_i_13__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \count[4]_i_18__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \count[4]_i_21__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \count[4]_i_25__2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \count[4]_i_26__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \count[4]_i_29__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \count[4]_i_2__2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \count[4]_i_32__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \count[4]_i_6__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \count[4]_i_9__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \j[0]_i_1__2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \j[1]_i_1__2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \j[2]_i_1__2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \j[3]_i_2__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \valid_aux_i_2__7\ : label is "soft_lutpair75";
begin
  \FSM_onehot_state_reg[3]\ <= \^fsm_onehot_state_reg[3]\;
  \FSM_onehot_state_reg[3]_0\ <= \^fsm_onehot_state_reg[3]_0\;
  \j_reg[0]_2\ <= \^j_reg[0]_2\;
  \j_reg[0]_3\ <= \^j_reg[0]_3\;
  \j_reg[1]_0\ <= \^j_reg[1]_0\;
  \j_reg[1]_1\ <= \^j_reg[1]_1\;
  \j_reg[3]_0\ <= \^j_reg[3]_0\;
  \j_reg[3]_1\ <= \^j_reg[3]_1\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]\(2),
      O => valid_aux_reg_0(0)
    );
\FSM_onehot_state[4]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(3),
      I1 => next_out_7,
      I2 => done,
      I3 => \count_reg_reg[0]\(2),
      I4 => \count_reg_reg[0]\(1),
      I5 => \count_reg_reg[0]\(0),
      O => E(0)
    );
\acks_out_reg_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(1),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(4),
      I3 => done,
      I4 => \count_reg_reg[0]\(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count1_carry_i_1__7_n_0\,
      S(2) => \count1_carry_i_2__7_n_0\,
      S(1) => \count1_carry_i_3__7_n_0\,
      S(0) => \count1_carry_i_4__2_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_1__7_n_0\,
      S(2) => \count1_carry__0_i_2__7_n_0\,
      S(1) => \count1_carry__0_i_3__7_n_0\,
      S(0) => \count1_carry__0_i_4__7_n_0\
    );
\count1_carry__0_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry__0_i_1__7_n_0\
    );
\count1_carry__0_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry__0_i_2__7_n_0\
    );
\count1_carry__0_i_3__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry__0_i_3__7_n_0\
    );
\count1_carry__0_i_4__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry__0_i_4__7_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => count1,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count1_carry__1_i_1__7_n_0\,
      S(1) => \count1_carry__1_i_2__7_n_0\,
      S(0) => \count1_carry__1_i_3__7_n_0\
    );
\count1_carry__1_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F0009"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => j_reg(3),
      I3 => \count1_carry_i_6__2_n_0\,
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry__1_i_1__7_n_0\
    );
\count1_carry__1_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry__1_i_2__7_n_0\
    );
\count1_carry__1_i_3__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry__1_i_3__7_n_0\
    );
\count1_carry_i_10__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count[4]_i_10__0_n_0\,
      I1 => D(1),
      O => \count1_carry_i_10__1_n_0\
    );
\count1_carry_i_11__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669696969969696"
    )
        port map (
      I0 => \count1_carry_i_13__2_n_0\,
      I1 => D(2),
      I2 => \count[4]_i_11__0_n_0\,
      I3 => j_reg(1),
      I4 => j_reg(0),
      I5 => j_reg(2),
      O => \count1_carry_i_11__2_n_0\
    );
\count1_carry_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E2EE"
    )
        port map (
      I0 => a_in_6(0),
      I1 => \count[4]_i_6__1_n_0\,
      I2 => \count[4]_i_20__2_n_0\,
      I3 => j_reg(0),
      I4 => \count[4]_i_19__1_n_0\,
      I5 => D(0),
      O => \count1_carry_i_12__1_n_0\
    );
\count1_carry_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"282828EBEBEB28EB"
    )
        port map (
      I0 => count1_carry_i_19_n_0,
      I1 => \count[4]_i_5__0\(1),
      I2 => \count[4]_i_5__0\(0),
      I3 => count1_carry_i_20_n_0,
      I4 => \count[4]_i_5__0\(2),
      I5 => count1_carry_i_21_n_0,
      O => \^j_reg[1]_0\
    );
\count1_carry_i_13__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \count1_carry_i_12__1_n_0\,
      I1 => D(1),
      I2 => \count[4]_i_10__0_n_0\,
      O => \count1_carry_i_13__2_n_0\
    );
\count1_carry_i_14__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C55C"
    )
        port map (
      I0 => \^j_reg[3]_0\,
      I1 => \^j_reg[3]_1\,
      I2 => \count[4]_i_5__0\(1),
      I3 => \count[4]_i_5__0\(0),
      O => \count1_carry_i_14__1_n_0\
    );
\count1_carry_i_17__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77444747"
    )
        port map (
      I0 => Q(2),
      I1 => \count1_carry__1_i_3__6\,
      I2 => \^j_reg[1]_1\,
      I3 => \count1_carry_i_14__1_n_0\,
      I4 => \count[4]_i_5__0\(0),
      O => \j_reg[0]_1\
    );
count1_carry_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B8B00FF"
    )
        port map (
      I0 => count1_carry_i_27_n_0,
      I1 => \count[4]_i_6__4\,
      I2 => count1_carry_i_29_n_0,
      I3 => count1_carry_i_30_n_0,
      I4 => \count[4]_i_6__4_0\,
      O => count1_carry_i_19_n_0
    );
\count1_carry_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry_i_1__7_n_0\
    );
count1_carry_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_7(10),
      I1 => a_in_7(26),
      I2 => \count[4]_i_6__4\,
      I3 => a_in_7(18),
      I4 => count1_carry_i_25,
      I5 => count1_carry_i_33_n_0,
      O => count1_carry_i_20_n_0
    );
count1_carry_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_7(6),
      I1 => a_in_7(22),
      I2 => \count[4]_i_6__4\,
      I3 => a_in_7(14),
      I4 => count1_carry_i_25,
      I5 => Q(0),
      O => count1_carry_i_21_n_0
    );
count1_carry_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008D8D"
    )
        port map (
      I0 => \count[4]_i_6__4\,
      I1 => count1_carry_i_34_n_0,
      I2 => count1_carry_i_35_n_0,
      I3 => \^fsm_onehot_state_reg[3]_0\,
      I4 => \count[4]_i_6__4_0\,
      O => \^j_reg[3]_0\
    );
count1_carry_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF035555"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[3]\,
      I1 => \count[4]_i_6__4\,
      I2 => count1_carry_i_37_n_0,
      I3 => count1_carry_i_38_n_0,
      I4 => \count[4]_i_6__4_0\,
      O => \^j_reg[3]_1\
    );
count1_carry_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E0FF0000E000"
    )
        port map (
      I0 => count1_carry_i_30_n_0,
      I1 => \count[4]_i_5__0\(2),
      I2 => count1_carry_i_39_n_0,
      I3 => \count[4]_i_5__0\(1),
      I4 => \count[4]_i_5__0\(0),
      I5 => count1_carry_i_40_n_0,
      O => \j_reg[2]_0\
    );
count1_carry_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"28EB"
    )
        port map (
      I0 => count1_carry_i_40_n_0,
      I1 => \count[4]_i_5__0\(1),
      I2 => \count[4]_i_5__0\(0),
      I3 => count1_carry_i_19_n_0,
      O => \^j_reg[1]_1\
    );
count1_carry_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => a_in_7(8),
      I1 => count1_carry_i_25,
      I2 => a_in_7(24),
      O => count1_carry_i_27_n_0
    );
count1_carry_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_7(16),
      I1 => count1_carry_i_25,
      I2 => a_in_7(0),
      I3 => count1_carry_i_19_0,
      I4 => Q(2),
      O => count1_carry_i_29_n_0
    );
\count1_carry_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F000F6669"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry_i_2__7_n_0\
    );
count1_carry_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_7(4),
      I1 => a_in_7(20),
      I2 => \count[4]_i_6__4\,
      I3 => a_in_7(12),
      I4 => count1_carry_i_25,
      I5 => a_in_7(28),
      O => count1_carry_i_30_n_0
    );
count1_carry_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_7(2),
      I1 => count1_carry_i_19_0,
      I2 => Q(4),
      O => count1_carry_i_33_n_0
    );
count1_carry_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a_in_7(3),
      I1 => count1_carry_i_25,
      I2 => a_in_7(19),
      O => count1_carry_i_34_n_0
    );
count1_carry_i_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => a_in_7(11),
      I1 => count1_carry_i_25,
      I2 => a_in_7(27),
      O => count1_carry_i_35_n_0
    );
count1_carry_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_7(5),
      I1 => a_in_7(21),
      I2 => \count[4]_i_6__4\,
      I3 => a_in_7(13),
      I4 => count1_carry_i_25,
      I5 => a_in_7(29),
      O => \^fsm_onehot_state_reg[3]\
    );
count1_carry_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_7(17),
      I1 => count1_carry_i_25,
      I2 => a_in_7(1),
      I3 => count1_carry_i_19_0,
      I4 => Q(3),
      O => count1_carry_i_37_n_0
    );
count1_carry_i_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => a_in_7(9),
      I1 => count1_carry_i_25,
      I2 => a_in_7(25),
      O => count1_carry_i_38_n_0
    );
count1_carry_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF77744474"
    )
        port map (
      I0 => count1_carry_i_43_n_0,
      I1 => \count[4]_i_6__4\,
      I2 => a_in_7(24),
      I3 => count1_carry_i_25,
      I4 => a_in_7(8),
      I5 => \count[4]_i_6__4_0\,
      O => count1_carry_i_39_n_0
    );
\count1_carry_i_3__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006000600096000"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => \count1_carry_i_6__2_n_0\,
      I3 => j_reg(3),
      I4 => \count[4]_i_4__1_n_0\,
      I5 => \count1_carry_i_7__2_n_0\,
      O => \count1_carry_i_3__7_n_0\
    );
count1_carry_i_40: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B888B"
    )
        port map (
      I0 => count1_carry_i_21_n_0,
      I1 => \count[4]_i_6__4_0\,
      I2 => count1_carry_i_44_n_0,
      I3 => \count[4]_i_6__4\,
      I4 => count1_carry_i_45_n_0,
      O => count1_carry_i_40_n_0
    );
count1_carry_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000888AAA8A"
    )
        port map (
      I0 => count1_carry_i_46_n_0,
      I1 => \count[4]_i_6__4\,
      I2 => a_in_7(25),
      I3 => count1_carry_i_25,
      I4 => a_in_7(9),
      I5 => \count[4]_i_6__4_0\,
      O => \j_reg[3]_2\
    );
count1_carry_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"470047FF"
    )
        port map (
      I0 => a_in_7(0),
      I1 => count1_carry_i_41_0,
      I2 => Q(2),
      I3 => count1_carry_i_25,
      I4 => a_in_7(16),
      O => count1_carry_i_43_n_0
    );
count1_carry_i_44: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => a_in_7(10),
      I1 => count1_carry_i_25,
      I2 => a_in_7(26),
      O => count1_carry_i_44_n_0
    );
count1_carry_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_7(2),
      I1 => count1_carry_i_41_0,
      I2 => Q(4),
      I3 => count1_carry_i_25,
      I4 => a_in_7(18),
      O => count1_carry_i_45_n_0
    );
count1_carry_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF47FF00FFFFFF"
    )
        port map (
      I0 => a_in_7(1),
      I1 => count1_carry_i_41_0,
      I2 => Q(3),
      I3 => \count[4]_i_6__4\,
      I4 => a_in_7(17),
      I5 => count1_carry_i_25,
      O => count1_carry_i_46_n_0
    );
\count1_carry_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0120200084000085"
    )
        port map (
      I0 => j_reg(0),
      I1 => \count1_carry_i_7__2_n_0\,
      I2 => count1_carry_0,
      I3 => \count1_carry_i_9__0_n_0\,
      I4 => \count1_carry_i_10__1_n_0\,
      I5 => \count1_carry_i_11__2_n_0\,
      O => \count1_carry_i_4__2_n_0\
    );
\count1_carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555CFC0"
    )
        port map (
      I0 => Q(3),
      I1 => \^j_reg[1]_0\,
      I2 => \count[4]_i_5__0\(0),
      I3 => \count1_carry_i_14__1_n_0\,
      I4 => \count1_carry__1_i_3__6\,
      O => \j_reg[0]_0\
    );
\count1_carry_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002B2BFF"
    )
        port map (
      I0 => \count1_carry_i_12__1_n_0\,
      I1 => D(1),
      I2 => \count[4]_i_10__0_n_0\,
      I3 => D(2),
      I4 => \count[4]_i_11__0_n_0\,
      O => \count1_carry_i_5__2_n_0\
    );
\count1_carry_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(2),
      I2 => j_reg(0),
      O => \count1_carry_i_6__2_n_0\
    );
\count1_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"599A"
    )
        port map (
      I0 => \count[4]_i_3__0_n_0\,
      I1 => \count1_carry_i_5__2_n_0\,
      I2 => D(3),
      I3 => \^j_reg[0]_3\,
      O => \count1_carry_i_7__2_n_0\
    );
\count1_carry_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => j_reg(0),
      I1 => j_reg(1),
      I2 => \count1_carry_i_12__1_n_0\,
      O => \count1_carry_i_9__0_n_0\
    );
\count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__2\(0)
    );
\count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
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
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      O => \plusOp__2\(3)
    );
\count[4]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D100D1FF"
    )
        port map (
      I0 => \count[4]_i_21__1_n_0\,
      I1 => j_reg(0),
      I2 => \count[4]_i_19__1_n_0\,
      I3 => \count[4]_i_6__1_n_0\,
      I4 => a_in_6(1),
      O => \count[4]_i_10__0_n_0\
    );
\count[4]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F553055"
    )
        port map (
      I0 => a_in_6(2),
      I1 => \count[4]_i_21__1_n_0\,
      I2 => j_reg(0),
      I3 => \count[4]_i_6__1_n_0\,
      I4 => \count[4]_i_22__0_n_0\,
      O => \count[4]_i_11__0_n_0\
    );
\count[4]_i_12__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3550355"
    )
        port map (
      I0 => a_in_6(3),
      I1 => \count[4]_i_8__2_n_0\,
      I2 => j_reg(0),
      I3 => \count[4]_i_6__1_n_0\,
      I4 => \count[4]_i_22__0_n_0\,
      O => \^j_reg[0]_3\
    );
\count[4]_i_13__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => \count[4]_i_7__4_0\,
      I1 => j_reg(2),
      I2 => j_reg(0),
      I3 => j_reg(1),
      I4 => \count[4]_i_7__4_1\,
      O => \count[4]_i_13__1_n_0\
    );
\count[4]_i_18__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => \count[4]_i_8__2_1\,
      I1 => j_reg(2),
      I2 => j_reg(0),
      I3 => j_reg(1),
      I4 => \count[4]_i_8__2_0\,
      O => \count[4]_i_18__1_n_0\
    );
\count[4]_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BB88B8B888"
    )
        port map (
      I0 => \count[4]_i_29__1_n_0\,
      I1 => j_reg(1),
      I2 => \count[4]_i_7__4_1\,
      I3 => j_reg(2),
      I4 => j_reg(0),
      I5 => \count1_carry_i_12__1_1\,
      O => \count[4]_i_19__1_n_0\
    );
\count[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EF0000000000"
    )
        port map (
      I0 => \count[4]_i_3__0_n_0\,
      I1 => \count[4]_i_4__1_n_0\,
      I2 => \count_reg[0]_0\,
      I3 => \count[4]_i_6__1_n_0\,
      I4 => done,
      I5 => count1,
      O => count
    );
\count[4]_i_20__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB800B800000000"
    )
        port map (
      I0 => \count1_carry_i_12__1_0\,
      I1 => j_reg(2),
      I2 => \count[4]_i_8__2_0\,
      I3 => j_reg(1),
      I4 => \count[4]_i_32__0_n_0\,
      I5 => j_reg(0),
      O => \count[4]_i_20__2_n_0\
    );
\count[4]_i_21__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[4]_i_18__1_n_0\,
      I1 => j_reg(1),
      I2 => \count[4]_i_32__0_n_0\,
      O => \count[4]_i_21__1_n_0\
    );
\count[4]_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count[4]_i_13__1_n_0\,
      I1 => j_reg(1),
      I2 => \count[4]_i_29__1_n_0\,
      O => \count[4]_i_22__0_n_0\
    );
\count[4]_i_25__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"91EC"
    )
        port map (
      I0 => j_reg(3),
      I1 => j_reg(1),
      I2 => j_reg(0),
      I3 => j_reg(2),
      O => \j_reg[3]_4\
    );
\count[4]_i_26__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"599A"
    )
        port map (
      I0 => j_reg(3),
      I1 => j_reg(1),
      I2 => j_reg(2),
      I3 => j_reg(0),
      O => \j_reg[3]_3\
    );
\count[4]_i_29__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => \count[4]_i_3__0_0\,
      I1 => j_reg(2),
      I2 => j_reg(0),
      I3 => j_reg(1),
      I4 => \count[4]_i_22__0_0\,
      O => \count[4]_i_29__1_n_0\
    );
\count[4]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      O => \plusOp__2\(4)
    );
\count[4]_i_32__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEEB8228"
    )
        port map (
      I0 => \count[4]_i_3__0_3\,
      I1 => j_reg(2),
      I2 => j_reg(0),
      I3 => j_reg(1),
      I4 => \count[4]_i_21__1_0\,
      O => \count[4]_i_32__0_n_0\
    );
\count[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A656A656A6"
    )
        port map (
      I0 => D(4),
      I1 => a_in_6(4),
      I2 => \count[4]_i_6__1_n_0\,
      I3 => \count[4]_i_7__4_n_0\,
      I4 => \count[4]_i_8__2_n_0\,
      I5 => j_reg(0),
      O => \count[4]_i_3__0_n_0\
    );
\count[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF66FF66FFFFF"
    )
        port map (
      I0 => \^j_reg[0]_2\,
      I1 => D(0),
      I2 => D(1),
      I3 => \count[4]_i_10__0_n_0\,
      I4 => D(2),
      I5 => \count[4]_i_11__0_n_0\,
      O => \count[4]_i_4__1_n_0\
    );
\count[4]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(1),
      I2 => j_reg(3),
      O => \count[4]_i_6__1_n_0\
    );
\count[4]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFC0A0A0CFC0"
    )
        port map (
      I0 => a_in_7(7),
      I1 => a_in_7(23),
      I2 => \count[4]_i_6__4\,
      I3 => Q(1),
      I4 => count1_carry_i_25,
      I5 => a_in_7(15),
      O => \^fsm_onehot_state_reg[3]_0\
    );
\count[4]_i_7__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D0011001D00DD"
    )
        port map (
      I0 => \count[4]_i_13__1_n_0\,
      I1 => j_reg(1),
      I2 => \count[4]_i_3__0_0\,
      I3 => j_reg(0),
      I4 => j_reg(2),
      I5 => \count[4]_i_3__0_1\,
      O => \count[4]_i_7__4_n_0\
    );
\count[4]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => a_in_7(11),
      I1 => a_in_7(27),
      I2 => a_in_7(19),
      I3 => count1_carry_i_25,
      I4 => a_in_7(3),
      I5 => \count[4]_i_6__4\,
      O => \FSM_onehot_state_reg[3]_1\
    );
\count[4]_i_8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE82FFFFBE820000"
    )
        port map (
      I0 => \count[4]_i_3__0_2\,
      I1 => j_reg(2),
      I2 => j_reg(0),
      I3 => \count[4]_i_3__0_3\,
      I4 => j_reg(1),
      I5 => \count[4]_i_18__1_n_0\,
      O => \count[4]_i_8__2_n_0\
    );
\count[4]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \count[4]_i_19__1_n_0\,
      I1 => j_reg(0),
      I2 => \count[4]_i_20__2_n_0\,
      I3 => \count[4]_i_6__1_n_0\,
      I4 => a_in_6(0),
      O => \^j_reg[0]_2\
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
\done_aux_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01111111"
    )
        port map (
      I0 => j_reg(3),
      I1 => count,
      I2 => j_reg(0),
      I3 => j_reg(1),
      I4 => j_reg(2),
      I5 => done,
      O => \done_aux_i_1__6_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__6_n_0\,
      Q => done
    );
\j[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_reg(0),
      O => \j[0]_i_1__2_n_0\
    );
\j[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(0),
      I1 => j_reg(1),
      O => \p_0_in__2\(1)
    );
\j[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(1),
      O => \p_0_in__2\(2)
    );
\j[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0015"
    )
        port map (
      I0 => j_reg(3),
      I1 => j_reg(1),
      I2 => j_reg(2),
      I3 => done,
      O => j0
    );
\j[3]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => j_reg(0),
      I1 => j_reg(2),
      I2 => j_reg(1),
      O => \p_0_in__2\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__2_n_0\,
      Q => j_reg(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(1),
      Q => j_reg(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(2),
      Q => j_reg(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__2\(3),
      Q => j_reg(3)
    );
\valid_aux_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => \valid_aux_i_2__7_n_0\,
      I1 => count_reg(4),
      I2 => count_reg(3),
      I3 => count_reg(2),
      I4 => count_reg(1),
      I5 => \^valid\,
      O => \valid_aux_i_1__1_n_0\
    );
\valid_aux_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(1),
      I2 => j_reg(0),
      I3 => count_reg(0),
      I4 => j_reg(3),
      O => \valid_aux_i_2__7_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__1_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized3\ is
  port (
    valid : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_5\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    valid_aux_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[2]_1\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count1_carry_i_13__3_0\ : in STD_LOGIC;
    \count1_carry_i_13__3_1\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    a_in_6 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \count[4]_i_8__2\ : in STD_LOGIC;
    \count[4]_i_8__2_0\ : in STD_LOGIC;
    count1_carry_0 : in STD_LOGIC;
    count1_carry_1 : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count[4]_i_10__1_0\ : in STD_LOGIC;
    \count[4]_i_10__1_1\ : in STD_LOGIC;
    \count[4]_i_3__1_0\ : in STD_LOGIC;
    \count[4]_i_3__1_1\ : in STD_LOGIC;
    \count[4]_i_6__0_0\ : in STD_LOGIC;
    \count[4]_i_19__2_0\ : in STD_LOGIC;
    \count[4]_i_12__2_0\ : in STD_LOGIC;
    \count[4]_i_12__2_1\ : in STD_LOGIC;
    \count[4]_i_21__2_0\ : in STD_LOGIC;
    \count[4]_i_7__2_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_6 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized3\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized3\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized3\ is
  signal count : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal \count1_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_12__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_13__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_14__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__6_n_0\ : STD_LOGIC;
  signal \count1_carry_i_7__5_n_0\ : STD_LOGIC;
  signal \count1_carry_i_8__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_9__1_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_11__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_15__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_16__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_19__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_20__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_21__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_22__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_30__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_31__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__4_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal done : STD_LOGIC;
  signal \done_aux_i_1__0_n_0\ : STD_LOGIC;
  signal \done_aux_i_2__1_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__3_n_0\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^j_reg[0]_0\ : STD_LOGIC;
  signal \^j_reg[0]_1\ : STD_LOGIC;
  signal \^j_reg[0]_2\ : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__5_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__2_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count1_carry_i_12__2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count1_carry_i_14__2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \count1_carry_i_5__3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \count1_carry_i_6__6\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count1_carry_i_8__3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count1_carry_i_9__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count[0]_i_1__3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \count[1]_i_1__3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \count[2]_i_1__3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count[3]_i_1__3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count[4]_i_11__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \count[4]_i_15__2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \count[4]_i_22__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count[4]_i_23__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \count[4]_i_24__2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count[4]_i_2__3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \count[4]_i_30__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \count[4]_i_31__2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \count[4]_i_33__2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \count[4]_i_8__4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \done_aux_i_2__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \j[0]_i_1__3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \j[1]_i_1__3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \j[2]_i_1__3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \j[3]_i_2__2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \valid_aux_i_2__2\ : label is "soft_lutpair59";
begin
  \j_reg[0]_0\ <= \^j_reg[0]_0\;
  \j_reg[0]_1\ <= \^j_reg[0]_1\;
  \j_reg[0]_2\ <= \^j_reg[0]_2\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => Q(2),
      O => valid_aux_reg_0(0)
    );
\FSM_onehot_state[4]_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => Q(3),
      I1 => next_out_6,
      I2 => done,
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => E(0)
    );
\acks_out_reg_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(4),
      I3 => done,
      I4 => Q(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count1_carry_i_1__1_n_0\,
      S(2) => \count1_carry_i_2__1_n_0\,
      S(1) => \count1_carry_i_3__1_n_0\,
      S(0) => \count1_carry_i_4__3_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_1__1_n_0\,
      S(2) => \count1_carry__0_i_2__1_n_0\,
      S(1) => \count1_carry__0_i_3__1_n_0\,
      S(0) => \count1_carry__0_i_4__1_n_0\
    );
\count1_carry__0_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry__0_i_1__1_n_0\
    );
\count1_carry__0_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry__0_i_2__1_n_0\
    );
\count1_carry__0_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry__0_i_3__1_n_0\
    );
\count1_carry__0_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry__0_i_4__1_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => count1,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \count1_carry__1_i_1__1_n_0\,
      S(1) => \count1_carry__1_i_2__1_n_0\,
      S(0) => \count1_carry__1_i_3__1_n_0\
    );
\count1_carry__1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F090F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry__1_i_1__1_n_0\
    );
\count1_carry__1_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry__1_i_2__1_n_0\
    );
\count1_carry__1_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry__1_i_3__1_n_0\
    );
\count1_carry_i_12__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \count1_carry_i_14__2_n_0\,
      I1 => D(2),
      I2 => \count[4]_i_11__1_n_0\,
      I3 => j_reg(2),
      I4 => j_reg(1),
      O => \count1_carry_i_12__2_n_0\
    );
\count1_carry_i_13__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00AE"
    )
        port map (
      I0 => \count[4]_i_20__3_n_0\,
      I1 => j_reg(0),
      I2 => \count[4]_i_19__2_n_0\,
      I3 => \count[4]_i_8__4_n_0\,
      I4 => a_in_5(0),
      I5 => D(0),
      O => \count1_carry_i_13__3_n_0\
    );
\count1_carry_i_14__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \count1_carry_i_13__3_n_0\,
      I1 => D(1),
      I2 => \^j_reg[0]_2\,
      O => \count1_carry_i_14__2_n_0\
    );
\count1_carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry_i_1__1_n_0\
    );
\count1_carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F096F0"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_6__6_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => \count1_carry_i_7__5_n_0\,
      O => \count1_carry_i_2__1_n_0\
    );
\count1_carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000000006069"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => \count1_carry_i_5__3_n_0\,
      I2 => \count1_carry_i_7__5_n_0\,
      I3 => \count[4]_i_4__2_n_0\,
      I4 => j_reg(3),
      I5 => \count1_carry_i_8__3_n_0\,
      O => \count1_carry_i_3__1_n_0\
    );
\count1_carry_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0058000248002100"
    )
        port map (
      I0 => \count1_carry_i_9__1_n_0\,
      I1 => \count1_carry_i_7__5_n_0\,
      I2 => count1_carry_0,
      I3 => count1_carry_1,
      I4 => \count1_carry_i_12__2_n_0\,
      I5 => j_reg(0),
      O => \count1_carry_i_4__3_n_0\
    );
\count1_carry_i_5__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002B2BFF"
    )
        port map (
      I0 => \count1_carry_i_13__3_n_0\,
      I1 => D(1),
      I2 => \^j_reg[0]_2\,
      I3 => D(2),
      I4 => \count[4]_i_11__1_n_0\,
      O => \count1_carry_i_5__3_n_0\
    );
\count1_carry_i_6__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(2),
      I2 => j_reg(3),
      O => \count1_carry_i_6__6_n_0\
    );
\count1_carry_i_7__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A56"
    )
        port map (
      I0 => \count[4]_i_3__1_n_0\,
      I1 => \^j_reg[0]_0\,
      I2 => D(3),
      I3 => \count1_carry_i_5__3_n_0\,
      O => \count1_carry_i_7__5_n_0\
    );
\count1_carry_i_8__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(2),
      O => \count1_carry_i_8__3_n_0\
    );
\count1_carry_i_9__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(1),
      I1 => \count1_carry_i_13__3_n_0\,
      O => \count1_carry_i_9__1_n_0\
    );
\count[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1__3_n_0\
    );
\count[1]_i_1__3\: unisim.vcomponents.LUT2
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
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      O => \plusOp__3\(2)
    );
\count[3]_i_1__3\: unisim.vcomponents.LUT4
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
\count[4]_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => a_in_5(1),
      I1 => \count[4]_i_8__4_n_0\,
      I2 => \count[4]_i_21__2_n_0\,
      I3 => j_reg(0),
      I4 => \count[4]_i_19__2_n_0\,
      O => \^j_reg[0]_2\
    );
\count[4]_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => a_in_5(2),
      I1 => \count[4]_i_8__4_n_0\,
      I2 => \count[4]_i_22__1_n_0\,
      I3 => j_reg(0),
      I4 => \count[4]_i_21__2_n_0\,
      O => \count[4]_i_11__1_n_0\
    );
\count[4]_i_12__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => a_in_5(3),
      I1 => \count[4]_i_8__4_n_0\,
      I2 => \count[4]_i_7__2_n_0\,
      I3 => j_reg(0),
      I4 => \count[4]_i_22__1_n_0\,
      O => \^j_reg[0]_0\
    );
\count[4]_i_14__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"470047FF"
    )
        port map (
      I0 => a_in_6(7),
      I1 => \count[4]_i_8__2_0\,
      I2 => a_in_6(23),
      I3 => \count[4]_i_8__2\,
      I4 => a_in_6(15),
      O => \FSM_onehot_state_reg[3]_3\
    );
\count[4]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a_in_6(11),
      I1 => a_in_6(27),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(19),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(3),
      O => \FSM_onehot_state_reg[3]_0\
    );
\count[4]_i_15__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEBA028"
    )
        port map (
      I0 => \count[4]_i_10__1_1\,
      I1 => j_reg(1),
      I2 => j_reg(2),
      I3 => j_reg(0),
      I4 => \count[4]_i_6__0_0\,
      O => \count[4]_i_15__2_n_0\
    );
\count[4]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_6(10),
      I1 => a_in_6(26),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(18),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(2),
      O => \FSM_onehot_state_reg[3]\
    );
\count[4]_i_16__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33AAA33A"
    )
        port map (
      I0 => \count[4]_i_7__2_0\,
      I1 => \count1_carry_i_13__3_0\,
      I2 => j_reg(1),
      I3 => j_reg(2),
      I4 => j_reg(0),
      O => \count[4]_i_16__2_n_0\
    );
\count[4]_i_17__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_6(6),
      I1 => \count[4]_i_8__2_0\,
      I2 => a_in_6(22),
      I3 => \count[4]_i_8__2\,
      I4 => a_in_6(14),
      O => \FSM_onehot_state_reg[3]_5\
    );
\count[4]_i_19__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFB8B80000B8"
    )
        port map (
      I0 => \count[4]_i_10__1_0\,
      I1 => j_reg(2),
      I2 => \count[4]_i_10__1_1\,
      I3 => j_reg(1),
      I4 => j_reg(0),
      I5 => \count[4]_i_30__1_n_0\,
      O => \count[4]_i_19__2_n_0\
    );
\count[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF000000"
    )
        port map (
      I0 => \count[4]_i_3__1_n_0\,
      I1 => \count[4]_i_4__2_n_0\,
      I2 => \count_reg[0]_0\,
      I3 => j0,
      I4 => count1,
      O => count
    );
\count[4]_i_20__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1313131010101310"
    )
        port map (
      I0 => \count[4]_i_31__2_n_0\,
      I1 => j_reg(0),
      I2 => j_reg(1),
      I3 => \count1_carry_i_13__3_0\,
      I4 => j_reg(2),
      I5 => \count1_carry_i_13__3_1\,
      O => \count[4]_i_20__3_n_0\
    );
\count[4]_i_21__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => \count[4]_i_31__2_n_0\,
      I1 => j_reg(1),
      I2 => j_reg(0),
      I3 => \count[4]_i_16__2_n_0\,
      O => \count[4]_i_21__2_n_0\
    );
\count[4]_i_22__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => \count[4]_i_30__1_n_0\,
      I1 => j_reg(1),
      I2 => j_reg(0),
      I3 => \count[4]_i_15__2_n_0\,
      O => \count[4]_i_22__1_n_0\
    );
\count[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a_in_6(9),
      I1 => a_in_6(25),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(17),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(1),
      O => \FSM_onehot_state_reg[3]_1\
    );
\count[4]_i_23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B556"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(3),
      I3 => j_reg(1),
      O => \j_reg[2]_1\
    );
\count[4]_i_24__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50505F5F303F303F"
    )
        port map (
      I0 => a_in_6(5),
      I1 => a_in_6(21),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(29),
      I4 => a_in_6(13),
      I5 => \count[4]_i_8__2_0\,
      O => \FSM_onehot_state_reg[3]_4\
    );
\count[4]_i_24__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E13C"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(3),
      I3 => j_reg(1),
      O => \j_reg[2]_0\
    );
\count[4]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_6(8),
      I1 => a_in_6(24),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(16),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(0),
      O => \FSM_onehot_state_reg[3]_2\
    );
\count[4]_i_28__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFA0A0CFC0CFC0"
    )
        port map (
      I0 => a_in_6(4),
      I1 => a_in_6(20),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(28),
      I4 => a_in_6(12),
      I5 => \count[4]_i_8__2_0\,
      O => \count_reg_reg[4]\
    );
\count[4]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => \plusOp__3\(4)
    );
\count[4]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a_in_6(1),
      I1 => a_in_6(17),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(9),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(25),
      O => \count_reg_reg[1]\
    );
\count[4]_i_30__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEBA028"
    )
        port map (
      I0 => \count[4]_i_19__2_0\,
      I1 => j_reg(1),
      I2 => j_reg(2),
      I3 => j_reg(0),
      I4 => \count[4]_i_3__1_1\,
      O => \count[4]_i_30__1_n_0\
    );
\count[4]_i_31__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_6(0),
      I1 => a_in_6(16),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(8),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(24),
      O => \count_reg_reg[0]\
    );
\count[4]_i_31__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A82FABE"
    )
        port map (
      I0 => \count[4]_i_12__2_0\,
      I1 => j_reg(1),
      I2 => j_reg(2),
      I3 => j_reg(0),
      I4 => \count[4]_i_21__2_0\,
      O => \count[4]_i_31__2_n_0\
    );
\count[4]_i_33__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => a_in_6(3),
      I1 => a_in_6(19),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(11),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(27),
      O => \count_reg_reg[3]\
    );
\count[4]_i_33__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9663"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(3),
      I2 => j_reg(0),
      I3 => j_reg(2),
      O => \j_reg[1]_0\
    );
\count[4]_i_34__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_6(2),
      I1 => a_in_6(18),
      I2 => \count[4]_i_8__2\,
      I3 => a_in_6(10),
      I4 => \count[4]_i_8__2_0\,
      I5 => a_in_6(26),
      O => \count_reg_reg[2]\
    );
\count[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556665AAAA6665"
    )
        port map (
      I0 => D(4),
      I1 => \count[4]_i_6__0_n_0\,
      I2 => j_reg(0),
      I3 => \count[4]_i_7__2_n_0\,
      I4 => \count[4]_i_8__4_n_0\,
      I5 => a_in_5(4),
      O => \count[4]_i_3__1_n_0\
    );
\count[4]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000099009900000"
    )
        port map (
      I0 => \^j_reg[0]_1\,
      I1 => D(0),
      I2 => D(1),
      I3 => \^j_reg[0]_2\,
      I4 => D(2),
      I5 => \count[4]_i_11__1_n_0\,
      O => \count[4]_i_4__2_n_0\
    );
\count[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001D00FF001D00"
    )
        port map (
      I0 => \count[4]_i_3__1_0\,
      I1 => j_reg(2),
      I2 => \count[4]_i_3__1_1\,
      I3 => j_reg(0),
      I4 => j_reg(1),
      I5 => \count[4]_i_15__2_n_0\,
      O => \count[4]_i_6__0_n_0\
    );
\count[4]_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2828E82BE8EBEB2"
    )
        port map (
      I0 => \count[4]_i_16__2_n_0\,
      I1 => j_reg(1),
      I2 => j_reg(0),
      I3 => \count[4]_i_12__2_0\,
      I4 => j_reg(2),
      I5 => \count[4]_i_12__2_1\,
      O => \count[4]_i_7__2_n_0\
    );
\count[4]_i_8__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCEC"
    )
        port map (
      I0 => j_reg(0),
      I1 => j_reg(3),
      I2 => j_reg(2),
      I3 => j_reg(1),
      O => \count[4]_i_8__4_n_0\
    );
\count[4]_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => a_in_5(0),
      I1 => \count[4]_i_8__4_n_0\,
      I2 => \count[4]_i_19__2_n_0\,
      I3 => j_reg(0),
      I4 => \count[4]_i_20__3_n_0\,
      O => \^j_reg[0]_1\
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
\done_aux_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF54"
    )
        port map (
      I0 => count,
      I1 => j0,
      I2 => \done_aux_i_2__1_n_0\,
      I3 => done,
      O => \done_aux_i_1__0_n_0\
    );
\done_aux_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(1),
      I3 => j_reg(3),
      O => \done_aux_i_2__1_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__0_n_0\,
      Q => done
    );
\j[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_reg(0),
      O => \j[0]_i_1__3_n_0\
    );
\j[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_reg(0),
      I1 => j_reg(1),
      O => \p_0_in__3\(1)
    );
\j[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_reg(2),
      I1 => j_reg(0),
      I2 => j_reg(1),
      O => \p_0_in__3\(2)
    );
\j[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00050015"
    )
        port map (
      I0 => done,
      I1 => j_reg(1),
      I2 => j_reg(2),
      I3 => j_reg(3),
      I4 => j_reg(0),
      O => j0
    );
\j[3]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(0),
      I2 => j_reg(2),
      O => \p_0_in__3\(3)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__3_n_0\,
      Q => j_reg(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(1),
      Q => j_reg(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(2),
      Q => j_reg(2)
    );
\j_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__3\(3),
      Q => j_reg(3)
    );
\valid_aux_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
        port map (
      I0 => j_reg(0),
      I1 => j_reg(2),
      I2 => \valid_aux_i_2__2_n_0\,
      I3 => j_reg(1),
      I4 => j_reg(3),
      I5 => \^valid\,
      O => \valid_aux_i_1__5_n_0\
    );
\valid_aux_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(4),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      O => \valid_aux_i_2__2_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__5_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized4\ is
  port (
    valid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[2]_1\ : out STD_LOGIC;
    \j_reg[2]_2\ : out STD_LOGIC;
    \j_reg[2]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_5\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_6\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_7\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_8\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_9\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[2]_4\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    valid_aux_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[2]_5\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \count1_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry_i_19__0_0\ : in STD_LOGIC;
    \count1_carry_i_19__0_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_0 : in STD_LOGIC;
    a_in_4 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \count1_carry__1_i_3__2\ : in STD_LOGIC;
    \count1_carry_i_13__6\ : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \count[4]_i_19__2\ : in STD_LOGIC;
    \count[4]_i_19__2_0\ : in STD_LOGIC;
    \count[4]_i_15__2\ : in STD_LOGIC;
    count1_carry_0 : in STD_LOGIC;
    count1_carry_1 : in STD_LOGIC;
    \count1_carry__1_i_3__2_0\ : in STD_LOGIC;
    \count1_carry_i_4__4_0\ : in STD_LOGIC;
    \count1_carry_i_5__7_0\ : in STD_LOGIC;
    \count1_carry_i_5__7_1\ : in STD_LOGIC;
    \count[4]_i_4__6_0\ : in STD_LOGIC;
    \count[4]_i_4__6_1\ : in STD_LOGIC;
    \count1_carry_i_19__0_2\ : in STD_LOGIC;
    \count1_carry_i_19__0_3\ : in STD_LOGIC;
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized4\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized4\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal count : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_10__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_12__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_15__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_20__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_24__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_26__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_28__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_35__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_37__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__4_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[4]_i_3__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__6_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[3]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_1__1_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \^j_reg[2]_0\ : STD_LOGIC;
  signal \^j_reg[2]_2\ : STD_LOGIC;
  signal \^j_reg[2]_3\ : STD_LOGIC;
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__6_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__3_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count1_carry_i_12__3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \count1_carry_i_16__4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count1_carry_i_19__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count1_carry_i_20__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \count1_carry_i_24__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count1_carry_i_30__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of count1_carry_i_32 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \count1_carry_i_35__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count1_carry_i_37__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \count1_carry_i_40__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count1_carry_i_7__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count[1]_i_1__4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \count[2]_i_1__4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \count[3]_i_1__4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \count[4]_i_13__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count[4]_i_18__2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count[4]_i_2__4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \count[4]_i_34__2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count[4]_i_35__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \done_aux_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \j[0]_i_1__4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \j[1]_i_1__4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \j[2]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \valid_aux_i_1__6\ : label is "soft_lutpair43";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \count_reg_reg[3]\ <= \^count_reg_reg[3]\;
  \j_reg[2]_0\ <= \^j_reg[2]_0\;
  \j_reg[2]_2\ <= \^j_reg[2]_2\;
  \j_reg[2]_3\ <= \^j_reg[2]_3\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]\(2),
      O => valid_aux_reg_0(0)
    );
\FSM_onehot_state[4]_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(3),
      I1 => next_out_5,
      I2 => done,
      I3 => \count_reg_reg[0]\(2),
      I4 => \count_reg_reg[0]\(1),
      I5 => \count_reg_reg[0]\(0),
      O => E(0)
    );
\acks_out_reg_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(1),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(4),
      I3 => done,
      I4 => \count_reg_reg[0]\(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => \count1_carry__0_0\(2 downto 0),
      S(0) => \count1_carry_i_4__4_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \count1_carry__1_0\(3 downto 0)
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => count1,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => S(2 downto 0)
    );
\count1_carry_i_10__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696969669"
    )
        port map (
      I0 => \count1_carry_i_20__0_n_0\,
      I1 => D(2),
      I2 => \count1_carry_i_4__4_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \count1_carry_i_10__3_n_0\
    );
\count1_carry_i_12__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^j_reg[2]_2\,
      O => \count1_carry_i_12__3_n_0\
    );
\count1_carry_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF90F690F6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \count1_carry_i_5__7_0\,
      I3 => \count1_carry_i_24__0_n_0\,
      I4 => \count1_carry_i_5__7_1\,
      I5 => \^q\(1),
      O => \count1_carry_i_15__1_n_0\
    );
\count1_carry_i_16__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"72777222"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(8),
      I2 => \count1_carry_i_26__0_n_0\,
      I3 => \^q\(0),
      I4 => \count1_carry_i_13__6\,
      O => \^j_reg[2]_3\
    );
\count1_carry_i_17__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFCECECECECE"
    )
        port map (
      I0 => \^q\(2),
      I1 => D(0),
      I2 => a_in_4(7),
      I3 => \count1_carry_i_26__0_n_0\,
      I4 => \^q\(0),
      I5 => \count1_carry_i_28__0_n_0\,
      O => \^j_reg[2]_2\
    );
\count1_carry_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4440EEEA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count1_carry_i_28__0_n_0\,
      I2 => \^q\(0),
      I3 => \count1_carry_i_26__0_n_0\,
      I4 => a_in_4(7),
      O => \j_reg[2]_1\
    );
\count1_carry_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => D(1),
      I1 => \^j_reg[2]_3\,
      I2 => \^j_reg[2]_2\,
      O => \count1_carry_i_20__0_n_0\
    );
\count1_carry_i_24__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => a_in_4(2),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_4(6),
      O => \count1_carry_i_24__0_n_0\
    );
\count1_carry_i_26__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14D7FFFF14D70000"
    )
        port map (
      I0 => \count1_carry_i_19__0_2\,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \count1_carry_i_35__0_n_0\,
      I4 => \^q\(1),
      I5 => \count1_carry_i_19__0_3\,
      O => \count1_carry_i_26__0_n_0\
    );
\count1_carry_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EEE2E22FFFFFFFF"
    )
        port map (
      I0 => \count1_carry_i_19__0_0\,
      I1 => \^q\(1),
      I2 => \count1_carry_i_37__0_n_0\,
      I3 => \^q\(2),
      I4 => \count1_carry_i_19__0_1\,
      I5 => \^q\(0),
      O => \count1_carry_i_28__0_n_0\
    );
\count1_carry_i_30__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \j_reg[2]_5\
    );
count1_carry_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \j_reg[1]_0\
    );
\count1_carry_i_35__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => a_in_4(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_4(5),
      O => \count1_carry_i_35__0_n_0\
    );
\count1_carry_i_37__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => a_in_4(0),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => a_in_4(4),
      O => \count1_carry_i_37__0_n_0\
    );
\count1_carry_i_40__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      O => \j_reg[0]_0\
    );
\count1_carry_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08010108900000A0"
    )
        port map (
      I0 => \count1_carry_i_10__3_n_0\,
      I1 => \^count_reg_reg[3]\,
      I2 => count1_carry_0,
      I3 => \count1_carry_i_12__3_n_0\,
      I4 => count1_carry_1,
      I5 => \^q\(0),
      O => \count1_carry_i_4__4_n_0\
    );
\count1_carry_i_5__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"72777222"
    )
        port map (
      I0 => \^q\(2),
      I1 => a_in_4(9),
      I2 => \count1_carry__1_i_3__2\,
      I3 => \^q\(0),
      I4 => \count1_carry_i_15__1_n_0\,
      O => \^j_reg[2]_0\
    );
\count1_carry_i_7__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \j_reg[2]_4\
    );
\count1_carry_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \count[4]_i_4__6_n_0\,
      I1 => \^j_reg[2]_0\,
      I2 => D(3),
      I3 => \count1_carry__1_i_3__2_0\,
      O => \^count_reg_reg[3]\
    );
\count[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__4\(0)
    );
\count[1]_i_1__4\: unisim.vcomponents.LUT2
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
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => \plusOp__4\(2)
    );
\count[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      O => \plusOp__4\(3)
    );
\count[4]_i_13__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"470047FF"
    )
        port map (
      I0 => a_in_5(19),
      I1 => \count[4]_i_19__2\,
      I2 => a_in_5(3),
      I3 => \count[4]_i_19__2_0\,
      I4 => a_in_5(11),
      O => \FSM_onehot_state_reg[3]_3\
    );
\count[4]_i_14__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF3535"
    )
        port map (
      I0 => a_in_5(23),
      I1 => a_in_5(7),
      I2 => \count[4]_i_19__2\,
      I3 => a_in_5(15),
      I4 => \count[4]_i_19__2_0\,
      O => \FSM_onehot_state_reg[3]_0\
    );
\count[4]_i_17__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF3535"
    )
        port map (
      I0 => a_in_5(22),
      I1 => a_in_5(6),
      I2 => \count[4]_i_19__2\,
      I3 => a_in_5(14),
      I4 => \count[4]_i_19__2_0\,
      O => \FSM_onehot_state_reg[3]_1\
    );
\count[4]_i_18__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => a_in_5(18),
      I1 => \count[4]_i_19__2\,
      I2 => a_in_5(2),
      I3 => \count[4]_i_19__2_0\,
      I4 => a_in_5(10),
      O => \FSM_onehot_state_reg[3]_2\
    );
\count[4]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => done,
      I1 => \^q\(2),
      I2 => \count[4]_i_3__6_n_0\,
      O => count
    );
\count[4]_i_25__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF3535"
    )
        port map (
      I0 => a_in_5(21),
      I1 => a_in_5(5),
      I2 => \count[4]_i_19__2\,
      I3 => a_in_5(13),
      I4 => \count[4]_i_19__2_0\,
      O => \FSM_onehot_state_reg[3]\
    );
\count[4]_i_26__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000047FF47FF47FF"
    )
        port map (
      I0 => a_in_5(17),
      I1 => \count[4]_i_19__2\,
      I2 => a_in_5(1),
      I3 => \count[4]_i_19__2_0\,
      I4 => \count[4]_i_15__2\,
      I5 => a_in_5(9),
      O => \FSM_onehot_state_reg[3]_4\
    );
\count[4]_i_27__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => a_in_5(16),
      I1 => a_in_5(0),
      I2 => a_in_5(8),
      I3 => \count[4]_i_19__2\,
      I4 => a_in_5(24),
      I5 => \count[4]_i_19__2_0\,
      O => \FSM_onehot_state_reg[3]_5\
    );
\count[4]_i_28__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_5(12),
      I1 => \count[4]_i_19__2_0\,
      I2 => a_in_5(4),
      I3 => \count[4]_i_19__2\,
      I4 => a_in_5(20),
      O => \FSM_onehot_state_reg[3]_9\
    );
\count[4]_i_29__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => a_in_5(1),
      I1 => \count[4]_i_19__2\,
      I2 => a_in_5(17),
      I3 => \count[4]_i_19__2_0\,
      I4 => a_in_5(9),
      O => \count_reg_reg[1]\
    );
\count[4]_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(3),
      O => \plusOp__4\(4)
    );
\count[4]_i_32__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => a_in_5(8),
      I1 => a_in_5(24),
      I2 => a_in_5(0),
      I3 => \count[4]_i_19__2\,
      I4 => a_in_5(16),
      I5 => \count[4]_i_19__2_0\,
      O => \FSM_onehot_state_reg[3]_8\
    );
\count[4]_i_34__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => a_in_5(11),
      I1 => \count[4]_i_19__2_0\,
      I2 => a_in_5(3),
      I3 => \count[4]_i_19__2\,
      I4 => a_in_5(19),
      O => \FSM_onehot_state_reg[3]_6\
    );
\count[4]_i_35__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_5(10),
      I1 => \count[4]_i_19__2_0\,
      I2 => a_in_5(2),
      I3 => \count[4]_i_19__2\,
      I4 => a_in_5(18),
      O => \FSM_onehot_state_reg[3]_7\
    );
\count[4]_i_3__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F090F0F0"
    )
        port map (
      I0 => D(3),
      I1 => \^j_reg[2]_0\,
      I2 => count1,
      I3 => \count[4]_i_4__6_n_0\,
      I4 => done_aux_reg_0,
      O => \count[4]_i_3__6_n_0\
    );
\count[4]_i_4__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66633363CCC999C9"
    )
        port map (
      I0 => \^q\(2),
      I1 => D(4),
      I2 => \count[4]_i_5__3_n_0\,
      I3 => \^q\(0),
      I4 => \count1_carry_i_15__1_n_0\,
      I5 => a_in_4(10),
      O => \count[4]_i_4__6_n_0\
    );
\count[4]_i_5__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FCCF0CC0"
    )
        port map (
      I0 => \count[4]_i_4__6_0\,
      I1 => \count[4]_i_6__2_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \count[4]_i_4__6_1\,
      I5 => \^q\(1),
      O => \count[4]_i_5__3_n_0\
    );
\count[4]_i_6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41117DDD"
    )
        port map (
      I0 => a_in_4(7),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => a_in_4(3),
      O => \count[4]_i_6__2_n_0\
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
\done_aux_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count[4]_i_3__6_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => done,
      O => \done_aux_i_1__1_n_0\
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
      I0 => \^q\(0),
      O => \j[0]_i_1__4_n_0\
    );
\j[1]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__4\(1)
    );
\j[2]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
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
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__4_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__4\(1),
      Q => \^q\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__4\(2),
      Q => \^q\(2)
    );
\valid_aux_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \valid_aux_i_2__3_n_0\,
      I3 => \^q\(2),
      I4 => \^valid\,
      O => \valid_aux_i_1__6_n_0\
    );
\valid_aux_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => j0,
      I1 => count_reg(4),
      I2 => count_reg(3),
      I3 => count_reg(2),
      I4 => count_reg(0),
      I5 => count_reg(1),
      O => \valid_aux_i_2__3_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__6_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized5\ is
  port (
    valid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \j_reg[2]_1\ : out STD_LOGIC;
    \j_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[2]_2\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    valid_aux_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[2]_3\ : out STD_LOGIC;
    \count1_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry_i_4__5_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_4__5_1\ : in STD_LOGIC;
    \count[4]_i_5__4_0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \count[4]_i_5__3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count[4]_i_5__3_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    a_in_4 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \count1_carry_i_15__1\ : in STD_LOGIC;
    \count1_carry_i_15__1_0\ : in STD_LOGIC;
    \count1_carry_i_28__0\ : in STD_LOGIC;
    count1_carry_0 : in STD_LOGIC;
    count1_carry_1 : in STD_LOGIC;
    count1_carry_2 : in STD_LOGIC;
    \count1_carry__1_i_1__3\ : in STD_LOGIC;
    \count1_carry__1_i_1__3_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    a_in_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized5\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized5\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized5\ is
  signal \^fsm_onehot_state_reg[3]_3\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal count : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_29__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_31__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_33__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_39__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__5_n_0\ : STD_LOGIC;
  signal \count1_carry_i_7__6_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \count[4]_i_10__3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[3]\ : STD_LOGIC;
  signal \^count_reg_reg[4]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_1__7_n_0\ : STD_LOGIC;
  signal done_aux_i_3_n_0 : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \^j_reg[0]_0\ : STD_LOGIC;
  signal \^j_reg[0]_1\ : STD_LOGIC;
  signal \^j_reg[0]_2\ : STD_LOGIC;
  signal \^j_reg[1]_0\ : STD_LOGIC;
  signal \^j_reg[1]_1\ : STD_LOGIC;
  signal \^j_reg[1]_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^j_reg[2]_1\ : STD_LOGIC;
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__3_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__4_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count1_carry_i_14__3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count1_carry_i_23__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count1_carry_i_27__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count1_carry_i_29__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count1_carry_i_31__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count1_carry_i_33__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count1_carry_i_34__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count1_carry_i_38__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count1_carry_i_39__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count[1]_i_1__5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count[2]_i_1__5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count[3]_i_1__5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count[4]_i_10__3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[4]_i_19__3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[4]_i_20__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count[4]_i_2__5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count[4]_i_3__4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[4]_i_7__3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of done_aux_i_3 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \j[2]_i_2__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \valid_aux_i_1__3\ : label is "soft_lutpair32";
begin
  \FSM_onehot_state_reg[3]_3\ <= \^fsm_onehot_state_reg[3]_3\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  \count_reg_reg[3]\ <= \^count_reg_reg[3]\;
  \count_reg_reg[4]\ <= \^count_reg_reg[4]\;
  \j_reg[0]_0\ <= \^j_reg[0]_0\;
  \j_reg[0]_1\ <= \^j_reg[0]_1\;
  \j_reg[0]_2\ <= \^j_reg[0]_2\;
  \j_reg[1]_0\ <= \^j_reg[1]_0\;
  \j_reg[1]_1\ <= \^j_reg[1]_1\;
  \j_reg[1]_2\(0) <= \^j_reg[1]_2\(0);
  \j_reg[2]_1\ <= \^j_reg[2]_1\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]\(2),
      O => valid_aux_reg_0(0)
    );
\FSM_onehot_state[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]\(3),
      I1 => next_out_4,
      I2 => done,
      I3 => \count_reg_reg[0]\(2),
      I4 => \count_reg_reg[0]\(1),
      I5 => \count_reg_reg[0]\(0),
      O => E(0)
    );
\acks_out_reg_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]\(1),
      I1 => \count_reg_reg[0]\(0),
      I2 => \count_reg_reg[0]\(4),
      I3 => done,
      I4 => \count_reg_reg[0]\(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => \count1_carry__0_0\(2 downto 0),
      S(0) => \count1_carry_i_4__5_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \count1_carry__1_0\(3 downto 0)
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => count1,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => S(2 downto 0)
    );
\count1_carry_i_14__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^j_reg[0]_0\,
      I1 => \^j_reg[0]_1\,
      I2 => \count[4]_i_5__3\(1),
      O => \^j_reg[1]_1\
    );
\count1_carry_i_18__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"72777222"
    )
        port map (
      I0 => \count[4]_i_5__3\(2),
      I1 => \count[4]_i_5__3_0\(2),
      I2 => \^j_reg[1]_0\,
      I3 => \count[4]_i_5__3\(0),
      I4 => \^j_reg[1]_1\,
      O => \j_reg[2]_0\
    );
\count1_carry_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACFC0CFC0AAAA"
    )
        port map (
      I0 => \count1_carry_i_29__0_n_0\,
      I1 => a_in_4(5),
      I2 => \count1_carry_i_15__1_0\,
      I3 => a_in_4(13),
      I4 => \count[4]_i_5__3\(0),
      I5 => \count[4]_i_5__3\(2),
      O => \^j_reg[0]_0\
    );
\count1_carry_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"282828EBEBEB28EB"
    )
        port map (
      I0 => \count1_carry_i_31__0_n_0\,
      I1 => \count[4]_i_5__3\(0),
      I2 => \count[4]_i_5__3\(2),
      I3 => \count[4]_i_5__3_0\(0),
      I4 => \count1_carry_i_15__1_0\,
      I5 => a_in_4(7),
      O => \^j_reg[0]_1\
    );
\count1_carry_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555303F"
    )
        port map (
      I0 => a_in_4(10),
      I1 => a_in_4(2),
      I2 => \count1_carry_i_15__1\,
      I3 => \count[4]_i_5__3_0\(3),
      I4 => \count1_carry_i_15__1_0\,
      O => \FSM_onehot_state_reg[3]\
    );
\count1_carry_i_25__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8B8FF00B8B800"
    )
        port map (
      I0 => a_in_4(4),
      I1 => \count1_carry_i_15__1_0\,
      I2 => a_in_4(12),
      I3 => \count[4]_i_5__3\(0),
      I4 => \count[4]_i_5__3\(2),
      I5 => \count1_carry_i_33__0_n_0\,
      O => \^j_reg[0]_2\
    );
\count1_carry_i_27__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^j_reg[0]_2\,
      I1 => \^fsm_onehot_state_reg[3]_3\,
      I2 => \count[4]_i_5__3\(1),
      O => \^j_reg[1]_0\
    );
\count1_carry_i_29__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_4(9),
      I1 => \count1_carry_i_15__1_0\,
      I2 => a_in_4(1),
      I3 => \count1_carry_i_15__1\,
      I4 => \count[4]_i_5__3_0\(2),
      O => \count1_carry_i_29__0_n_0\
    );
\count1_carry_i_31__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"470047FF"
    )
        port map (
      I0 => \count[4]_i_5__3_0\(4),
      I1 => \count1_carry_i_15__1\,
      I2 => a_in_4(3),
      I3 => \count1_carry_i_15__1_0\,
      I4 => a_in_4(11),
      O => \count1_carry_i_31__0_n_0\
    );
\count1_carry_i_33__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_4(8),
      I1 => \count1_carry_i_15__1_0\,
      I2 => a_in_4(0),
      I3 => \count1_carry_i_15__1\,
      I4 => \count[4]_i_5__3_0\(1),
      O => \count1_carry_i_33__0_n_0\
    );
\count1_carry_i_34__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \count[4]_i_5__3_0\(2),
      I1 => \count1_carry_i_15__1\,
      I2 => a_in_4(1),
      I3 => \count1_carry_i_15__1_0\,
      I4 => a_in_4(9),
      O => \FSM_onehot_state_reg[3]_2\
    );
\count1_carry_i_36__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC55CC550F000FFF"
    )
        port map (
      I0 => a_in_4(10),
      I1 => \count1_carry_i_39__0_n_0\,
      I2 => a_in_4(6),
      I3 => \count1_carry_i_15__1_0\,
      I4 => a_in_4(14),
      I5 => \count1_carry_i_28__0\,
      O => \^fsm_onehot_state_reg[3]_3\
    );
\count1_carry_i_38__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"470047FF"
    )
        port map (
      I0 => \count[4]_i_5__3_0\(1),
      I1 => \count1_carry_i_15__1\,
      I2 => a_in_4(0),
      I3 => \count1_carry_i_15__1_0\,
      I4 => a_in_4(8),
      O => \FSM_onehot_state_reg[3]_1\
    );
\count1_carry_i_39__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \count[4]_i_5__3_0\(3),
      I1 => \count1_carry_i_15__1\,
      I2 => a_in_4(2),
      O => \count1_carry_i_39__0_n_0\
    );
\count1_carry_i_4__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000009008010108"
    )
        port map (
      I0 => \count1_carry_i_7__6_n_0\,
      I1 => \^count_reg_reg[3]\,
      I2 => count1_carry_0,
      I3 => count1_carry_1,
      I4 => count1_carry_2,
      I5 => \^q\(0),
      O => \count1_carry_i_4__5_n_0\
    );
\count1_carry_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A56"
    )
        port map (
      I0 => \^count_reg_reg[4]\,
      I1 => D(1),
      I2 => \count1_carry__1_i_1__3\,
      I3 => \count1_carry__1_i_1__3_0\,
      O => \^count_reg_reg[3]\
    );
\count1_carry_i_7__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count1_carry_i_4__5_0\,
      I2 => D(0),
      I3 => \count1_carry_i_4__5_1\,
      O => \count1_carry_i_7__6_n_0\
    );
\count[0]_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1__5_n_0\
    );
\count[1]_i_1__5\: unisim.vcomponents.LUT2
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
      I1 => count_reg(0),
      I2 => count_reg(1),
      O => \plusOp__5\(2)
    );
\count[3]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      O => \plusOp__5\(3)
    );
\count[4]_i_10__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => \count[4]_i_5__4_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \count[4]_i_10__3_n_0\
    );
\count[4]_i_19__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"61"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \j_reg[2]_3\
    );
\count[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444000000000"
    )
        port map (
      I0 => done,
      I1 => \^j_reg[2]_1\,
      I2 => \count_reg[0]_1\,
      I3 => \^count_reg_reg[4]\,
      I4 => \count_reg[0]_0\,
      I5 => count1,
      O => count
    );
\count[4]_i_20__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \j_reg[2]_2\
    );
\count[4]_i_2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      I4 => count_reg(3),
      O => \plusOp__5\(4)
    );
\count[4]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \^j_reg[2]_1\
    );
\count[4]_i_5__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A655A655A6AAAA"
    )
        port map (
      I0 => D(2),
      I1 => \count_reg[0]_2\,
      I2 => \^q\(0),
      I3 => \count[4]_i_10__3_n_0\,
      I4 => a_in_3(0),
      I5 => \^j_reg[2]_1\,
      O => \^count_reg_reg[4]\
    );
\count[4]_i_7__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => a_in_4(11),
      I1 => \count1_carry_i_15__1_0\,
      I2 => a_in_4(3),
      I3 => \count1_carry_i_15__1\,
      I4 => \count[4]_i_5__3_0\(4),
      O => \FSM_onehot_state_reg[3]_0\
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
\done_aux_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551511"
    )
        port map (
      I0 => \^q\(2),
      I1 => count1,
      I2 => \count_reg[0]_0\,
      I3 => done_aux_reg_0,
      I4 => done_aux_i_3_n_0,
      I5 => done,
      O => \done_aux_i_1__7_n_0\
    );
done_aux_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => done_aux_i_3_n_0
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__7_n_0\,
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
\j[1]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \^j_reg[1]_2\(0)
    );
\j[2]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => done,
      O => j0
    );
\j[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__5\(2)
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__5_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \^j_reg[1]_2\(0),
      Q => \^q\(1)
    );
\j_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \p_0_in__5\(2),
      Q => \^q\(2)
    );
\valid_aux_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \valid_aux_i_2__4_n_0\,
      I1 => \^q\(2),
      I2 => \^valid\,
      O => \valid_aux_i_1__3_n_0\
    );
\valid_aux_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(3),
      I4 => count_reg(4),
      I5 => done_aux_i_3_n_0,
      O => \valid_aux_i_2__4_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__3_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized6\ is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_3\ : out STD_LOGIC;
    \j_reg[0]_4\ : out STD_LOGIC;
    \j_reg[0]_5\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    valid_aux_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry__1_i_3__3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_4__6_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    a_in_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count[4]_i_3__2\ : in STD_LOGIC;
    \count1_carry_i_14__4_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \count1_carry_i_10__7\ : in STD_LOGIC;
    \count[4]_i_5__4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count1_carry_i_12__4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_in_3 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \count1_carry_i_13__4_0\ : in STD_LOGIC;
    \count1_carry_i_13__4_1\ : in STD_LOGIC;
    count1_carry_0 : in STD_LOGIC;
    count1_carry_1 : in STD_LOGIC;
    count1_carry_2 : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_3 : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \count1_carry_i_4__6_1\ : in STD_LOGIC;
    \count1_carry_i_4__6_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized6\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized6\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_10__4_n_0\ : STD_LOGIC;
  signal \count1_carry_i_12__6_n_0\ : STD_LOGIC;
  signal \count1_carry_i_13__4_n_0\ : STD_LOGIC;
  signal \count1_carry_i_14__4_n_0\ : STD_LOGIC;
  signal \count1_carry_i_15__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_16__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_17__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__6_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[4]_i_12__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_13__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_14__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_15__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_17__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_18__3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_1__3_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \j[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \^j_reg[0]_1\ : STD_LOGIC;
  signal \^j_reg[0]_2\ : STD_LOGIC;
  signal \^j_reg[0]_3\ : STD_LOGIC;
  signal \^j_reg[1]_0\ : STD_LOGIC;
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__7_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__5_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count1_carry_i_10__4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count1_carry_i_7__7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[0]_i_1__6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[1]_i_1__6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count[2]_i_1__6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[3]_i_1__6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count[4]_i_13__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[4]_i_2__6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[4]_i_6__6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[4]_i_9__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \j[0]_i_1__6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \valid_aux_i_1__7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \valid_aux_i_2__5\ : label is "soft_lutpair14";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
  \j_reg[0]_1\ <= \^j_reg[0]_1\;
  \j_reg[0]_2\ <= \^j_reg[0]_2\;
  \j_reg[0]_3\ <= \^j_reg[0]_3\;
  \j_reg[1]_0\ <= \^j_reg[1]_0\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]_1\(2),
      O => valid_aux_reg_0(0)
    );
\FSM_onehot_state[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(3),
      I1 => next_out_3,
      I2 => done,
      I3 => \count_reg_reg[0]_1\(2),
      I4 => \count_reg_reg[0]_1\(1),
      I5 => \count_reg_reg[0]_1\(0),
      O => E(0)
    );
\acks_out_reg_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]_1\(1),
      I1 => \count_reg_reg[0]_1\(0),
      I2 => \count_reg_reg[0]_1\(4),
      I3 => done,
      I4 => \count_reg_reg[0]_1\(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => \count1_carry__0_0\(2 downto 0),
      S(0) => \count1_carry_i_4__6_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \count1_carry__1_0\(3 downto 0)
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => S(2 downto 0)
    );
\count1_carry_i_10__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \count1_carry_i_4__6_1\,
      I1 => D(1),
      I2 => \count1_carry_i_4__6_2\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \count1_carry_i_10__4_n_0\
    );
\count1_carry_i_11__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"303FAAAA"
    )
        port map (
      I0 => \count1_carry_i_14__4_0\(0),
      I1 => \count1_carry_i_13__4_n_0\,
      I2 => \count[4]_i_5__4\(0),
      I3 => \count1_carry_i_14__4_n_0\,
      I4 => \count1_carry_i_10__7\,
      O => \^j_reg[0]_1\
    );
\count1_carry_i_12__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E222EEE"
    )
        port map (
      I0 => \count1_carry_i_14__4_0\(1),
      I1 => \count1_carry_i_10__7\,
      I2 => \count[4]_i_13__3_n_0\,
      I3 => \count[4]_i_5__4\(0),
      I4 => \count1_carry_i_13__4_n_0\,
      O => \^j_reg[0]_2\
    );
\count1_carry_i_12__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \count1_carry_i_4__6_0\,
      I1 => D(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \count1_carry_i_12__6_n_0\
    );
\count1_carry_i_13__4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count1_carry_i_15__2_n_0\,
      I1 => \count1_carry_i_16__2_n_0\,
      O => \count1_carry_i_13__4_n_0\,
      S => \count1_carry_i_12__4_0\(0)
    );
\count1_carry_i_14__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \count1_carry_i_17__2_n_0\,
      I1 => \count[4]_i_5__4\(1),
      I2 => \count[4]_i_5__4\(0),
      I3 => \count[4]_i_18__3_n_0\,
      O => \count1_carry_i_14__4_n_0\
    );
\count1_carry_i_15__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => a_in_3(3),
      I1 => \count1_carry_i_13__4_1\,
      I2 => \count1_carry_i_14__4_0\(1),
      I3 => \count1_carry_i_13__4_0\,
      I4 => a_in_3(7),
      O => \count1_carry_i_15__2_n_0\
    );
\count1_carry_i_16__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \count1_carry_i_14__4_0\(3),
      I1 => a_in_3(5),
      I2 => \count1_carry_i_13__4_0\,
      I3 => a_in_3(9),
      I4 => \count1_carry_i_13__4_1\,
      I5 => a_in_3(1),
      O => \count1_carry_i_16__2_n_0\
    );
\count1_carry_i_17__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \count1_carry_i_14__4_0\(2),
      I1 => a_in_3(4),
      I2 => a_in_3(8),
      I3 => \count1_carry_i_13__4_1\,
      I4 => a_in_3(0),
      I5 => \count1_carry_i_13__4_0\,
      O => \count1_carry_i_17__2_n_0\
    );
\count1_carry_i_4__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08010108900000A0"
    )
        port map (
      I0 => \count1_carry_i_10__4_n_0\,
      I1 => count1_carry_0,
      I2 => count1_carry_1,
      I3 => \count1_carry_i_12__6_n_0\,
      I4 => count1_carry_2,
      I5 => \^q\(0),
      O => \count1_carry_i_4__6_n_0\
    );
\count1_carry_i_5__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => \^j_reg[0]_1\,
      I1 => \count1_carry__1_i_3__3\(0),
      I2 => \count1_carry__1_i_3__3\(1),
      I3 => \^j_reg[0]_2\,
      I4 => \count1_carry__1_i_3__3\(2),
      I5 => \^j_reg[0]_3\,
      O => \count_reg_reg[0]_0\
    );
\count1_carry_i_7__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \j_reg[0]_0\
    );
\count[0]_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__6\(0)
    );
\count[1]_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
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
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(2),
      O => \plusOp__6\(3)
    );
\count[4]_i_11__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFC5555"
    )
        port map (
      I0 => \count1_carry_i_14__4_0\(3),
      I1 => \count[4]_i_12__3_n_0\,
      I2 => \count[4]_i_5__4\(0),
      I3 => \^j_reg[1]_0\,
      I4 => \count1_carry_i_10__7\,
      O => \j_reg[0]_5\
    );
\count[4]_i_12__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5335"
    )
        port map (
      I0 => \^count_reg_reg[1]\,
      I1 => \count[4]_i_17__3_n_0\,
      I2 => \count[4]_i_5__4\(1),
      I3 => \count[4]_i_5__4\(0),
      O => \count[4]_i_12__3_n_0\
    );
\count[4]_i_13__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CC5"
    )
        port map (
      I0 => \count[4]_i_14__3_n_0\,
      I1 => \count[4]_i_18__3_n_0\,
      I2 => \count[4]_i_5__4\(1),
      I3 => \count[4]_i_5__4\(0),
      O => \count[4]_i_13__3_n_0\
    );
\count[4]_i_14__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => a_in_3(0),
      I1 => a_in_3(8),
      I2 => \count1_carry_i_14__4_0\(2),
      I3 => \count1_carry_i_13__4_1\,
      I4 => a_in_3(4),
      I5 => \count1_carry_i_13__4_0\,
      O => \count[4]_i_14__3_n_0\
    );
\count[4]_i_15__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a_in_3(2),
      I1 => \count1_carry_i_14__4_0\(0),
      I2 => \count1_carry_i_13__4_0\,
      I3 => \count1_carry_i_14__4_0\(4),
      I4 => \count1_carry_i_13__4_1\,
      I5 => a_in_3(6),
      O => \count[4]_i_15__3_n_0\
    );
\count[4]_i_16__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => a_in_3(1),
      I1 => a_in_3(9),
      I2 => \count1_carry_i_14__4_0\(3),
      I3 => \count1_carry_i_13__4_1\,
      I4 => a_in_3(5),
      I5 => \count1_carry_i_13__4_0\,
      O => \^count_reg_reg[1]\
    );
\count[4]_i_17__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a_in_3(7),
      I1 => \count1_carry_i_13__4_0\,
      I2 => \count1_carry_i_14__4_0\(1),
      I3 => \count1_carry_i_13__4_1\,
      I4 => a_in_3(3),
      O => \count[4]_i_17__3_n_0\
    );
\count[4]_i_18__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \count1_carry_i_14__4_0\(4),
      I1 => a_in_3(6),
      I2 => \count1_carry_i_13__4_0\,
      I3 => \count1_carry_i_14__4_0\(0),
      I4 => \count1_carry_i_13__4_1\,
      I5 => a_in_3(2),
      O => \count[4]_i_18__3_n_0\
    );
\count[4]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => done,
      I1 => \^q\(1),
      I2 => done_aux_reg_0,
      O => count
    );
\count[4]_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(3),
      O => \plusOp__6\(4)
    );
\count[4]_i_6__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FD00DF2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => a_in_2(0),
      I3 => D(2),
      I4 => \count[4]_i_3__2\,
      O => \j_reg[0]_4\
    );
\count[4]_i_7__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^j_reg[0]_1\,
      I1 => \count1_carry__1_i_3__3\(0),
      I2 => \count1_carry__1_i_3__3\(1),
      I3 => \^j_reg[0]_2\,
      O => \count_reg_reg[0]\
    );
\count[4]_i_8__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E222EEE"
    )
        port map (
      I0 => \count1_carry_i_14__4_0\(2),
      I1 => \count1_carry_i_10__7\,
      I2 => \count[4]_i_12__3_n_0\,
      I3 => \count[4]_i_5__4\(0),
      I4 => \count[4]_i_13__3_n_0\,
      O => \^j_reg[0]_3\
    );
\count[4]_i_9__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \count[4]_i_14__3_n_0\,
      I1 => \count[4]_i_5__4\(1),
      I2 => \count[4]_i_5__4\(0),
      I3 => \count[4]_i_15__3_n_0\,
      O => \^j_reg[1]_0\
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
\done_aux_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1B"
    )
        port map (
      I0 => \^q\(1),
      I1 => done_aux_reg_0,
      I2 => \^q\(0),
      I3 => done,
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
      I0 => \^q\(1),
      I1 => done,
      O => j0
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \j[0]_i_1__6_n_0\,
      Q => \^q\(0)
    );
\j_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => \^q\(0),
      Q => \^q\(1)
    );
\valid_aux_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \valid_aux_i_2__5_n_0\,
      I3 => \^valid\,
      O => \valid_aux_i_1__7_n_0\
    );
\valid_aux_i_2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(3),
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => count_reg(0),
      O => \valid_aux_i_2__5_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__7_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_ctrl_logic__parameterized7\ is
  port (
    j_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[2]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count[4]_i_3__2_0\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count1_carry__1_1\ : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \count1_carry_i_19__1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    a_in_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg_2 : in STD_LOGIC;
    done_aux_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_4 : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    next_out_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_ctrl_logic__parameterized7\ : entity is "ctrl_logic";
end \design_1_top_nqueens_0_0_ctrl_logic__parameterized7\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_ctrl_logic__parameterized7\ is
  signal count : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_14__5_n_0\ : STD_LOGIC;
  signal \count1_carry_i_15__4_n_0\ : STD_LOGIC;
  signal \count1_carry_i_18__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_19__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_20__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__5_n_0\ : STD_LOGIC;
  signal \count1_carry_i_9__6_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__6_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal \^count_reg_reg[1]\ : STD_LOGIC;
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \done_aux_i_1__2_n_0\ : STD_LOGIC;
  signal j0 : STD_LOGIC;
  signal \^j_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^j_reg[0]_0\ : STD_LOGIC;
  signal \^j_reg[1]\ : STD_LOGIC;
  signal \^j_reg[1]_0\ : STD_LOGIC;
  signal \plusOp__7\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^valid\ : STD_LOGIC;
  signal \valid_aux_i_1__4_n_0\ : STD_LOGIC;
  signal \valid_aux_i_2__6_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1__7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count1_carry_i_13__5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count1_carry_i_16__3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[1]_i_1__7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1__7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[3]_i_1__7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[4]_i_2__7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \valid_aux_i_1__4\ : label is "soft_lutpair7";
begin
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
  \count_reg_reg[1]\ <= \^count_reg_reg[1]\;
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
  j_reg(0) <= \^j_reg\(0);
  \j_reg[0]_0\ <= \^j_reg[0]_0\;
  \j_reg[1]\ <= \^j_reg[1]\;
  \j_reg[1]_0\ <= \^j_reg[1]_0\;
  valid <= \^valid\;
\FSM_onehot_state[3]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^valid\,
      I1 => \count_reg_reg[0]_0\(2),
      O => D(0)
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(3),
      I1 => next_out_2,
      I2 => done,
      I3 => \count_reg_reg[0]_0\(2),
      I4 => \count_reg_reg[0]_0\(1),
      I5 => \count_reg_reg[0]_0\(0),
      O => E(0)
    );
acks_out_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \count_reg_reg[0]_0\(1),
      I1 => \count_reg_reg[0]_0\(0),
      I2 => \count_reg_reg[0]_0\(4),
      I3 => done,
      I4 => \count_reg_reg[0]_0\(2),
      I5 => \^valid\,
      O => \FSM_onehot_state_reg[1]\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \count1_carry__0_0\(3 downto 0)
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \count1_carry__1_0\(3 downto 0)
    );
\count1_carry__0_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]_1\(3)
    );
\count1_carry__0_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]_1\(2)
    );
\count1_carry__0_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]_1\(1)
    );
\count1_carry__0_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]_1\(0)
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2 downto 0) => S(2 downto 0)
    );
\count1_carry__1_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB00FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]\(2)
    );
\count1_carry__1_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]\(1)
    );
\count1_carry__1_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]\(0)
    );
\count1_carry_i_13__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count1_carry_i_18__1_n_0\,
      I1 => done_aux_reg_0(1),
      O => \^count_reg_reg[1]\
    );
\count1_carry_i_14__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"084C2A6E195D3B7F"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(0),
      I1 => \count1_carry_i_19__1_0\(1),
      I2 => Q(3),
      I3 => a_in_2(4),
      I4 => a_in_2(2),
      I5 => Q(1),
      O => \count1_carry_i_14__5_n_0\
    );
\count1_carry_i_15__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"048C26AE159D37BF"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(0),
      I1 => \count1_carry_i_19__1_0\(1),
      I2 => Q(0),
      I3 => Q(4),
      I4 => a_in_2(3),
      I5 => Q(2),
      O => \count1_carry_i_15__4_n_0\
    );
\count1_carry_i_16__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022F"
    )
        port map (
      I0 => \^j_reg[1]_0\,
      I1 => done_aux_reg_0(0),
      I2 => done_aux_reg_0(1),
      I3 => \count1_carry_i_18__1_n_0\,
      O => \^count_reg_reg[0]\
    );
\count1_carry_i_17__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB51EA40"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(1),
      I1 => \count1_carry_i_19__1_0\(0),
      I2 => a_in_2(0),
      I3 => Q(0),
      I4 => \count1_carry_i_19__1_n_0\,
      O => \^j_reg[1]_0\
    );
\count1_carry_i_18__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"27772272"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(1),
      I1 => Q(1),
      I2 => \count1_carry_i_19__1_0\(0),
      I3 => \count1_carry_i_19__1_n_0\,
      I4 => \count1_carry_i_14__5_n_0\,
      O => \count1_carry_i_18__1_n_0\
    );
\count1_carry_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB73D951EA62C840"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(0),
      I1 => \count1_carry_i_19__1_0\(1),
      I2 => a_in_2(3),
      I3 => Q(2),
      I4 => \count1_carry_i_20__1_n_0\,
      I5 => Q(0),
      O => \count1_carry_i_19__1_n_0\
    );
\count1_carry_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]_2\(2)
    );
\count1_carry_i_20__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => a_in_2(1),
      I1 => \count1_carry_i_19__1_0\(0),
      I2 => \count1_carry_i_19__1_0\(1),
      I3 => Q(4),
      O => \count1_carry_i_20__1_n_0\
    );
\count1_carry_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EB14FF00FF00"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \count1_carry__1_1\,
      I4 => \^count_reg_reg[2]_0\,
      I5 => \count1_carry_i_9__6_n_0\,
      O => \count_reg_reg[2]_2\(1)
    );
\count1_carry_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000EB00000000"
    )
        port map (
      I0 => \count1_carry_i_5__5_n_0\,
      I1 => \^j_reg[1]\,
      I2 => done_aux_reg_0(2),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry_i_9__6_n_0\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[2]_2\(0)
    );
\count1_carry_i_5__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_reg_reg[1]\,
      I1 => \count[4]_i_3__2_0\,
      O => \count1_carry_i_5__5_n_0\
    );
\count1_carry_i_6__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"72777222"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(1),
      I1 => Q(2),
      I2 => \count1_carry_i_14__5_n_0\,
      I3 => \count1_carry_i_19__1_0\(0),
      I4 => \count1_carry_i_15__4_n_0\,
      O => \^j_reg[1]\
    );
\count1_carry_i_8__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF2BD42BD4FF00"
    )
        port map (
      I0 => \^count_reg_reg[0]\,
      I1 => done_aux_reg_0(2),
      I2 => \^j_reg[1]\,
      I3 => done_aux_reg_1,
      I4 => done_aux_reg_0(3),
      I5 => \count[4]_i_5__6_n_0\,
      O => \^count_reg_reg[2]_0\
    );
\count1_carry_i_9__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => \^count_reg_reg[0]\,
      I1 => done_aux_reg_0(2),
      I2 => \^j_reg[1]\,
      I3 => \count[4]_i_5__6_n_0\,
      I4 => done_aux_reg_0(3),
      O => \count1_carry_i_9__6_n_0\
    );
\count[0]_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_1__7_n_0\
    );
\count[1]_i_1__7\: unisim.vcomponents.LUT2
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
      I1 => count_reg(0),
      I2 => count_reg(1),
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
\count[4]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^j_reg\(0),
      I1 => done,
      I2 => done_aux_reg_2,
      O => count
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
\count[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA8A8AAA"
    )
        port map (
      I0 => done_aux_reg_3(0),
      I1 => \count1_carry_i_5__5_n_0\,
      I2 => done_aux_reg_4,
      I3 => \count[4]_i_5__6_n_0\,
      I4 => done_aux_reg_0(3),
      I5 => done_aux_reg_1,
      O => \count_reg_reg[3]\
    );
\count[4]_i_5__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"72777222"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(1),
      I1 => Q(3),
      I2 => \count1_carry_i_15__4_n_0\,
      I3 => \count1_carry_i_19__1_0\(0),
      I4 => \^j_reg[0]_0\,
      O => \count[4]_i_5__6_n_0\
    );
\count[4]_i_7__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0123456789ABCDEF"
    )
        port map (
      I0 => \count1_carry_i_19__1_0\(0),
      I1 => \count1_carry_i_19__1_0\(1),
      I2 => Q(3),
      I3 => a_in_2(4),
      I4 => Q(1),
      I5 => a_in_2(2),
      O => \^j_reg[0]_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \count[0]_i_1__7_n_0\,
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__7\(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__7\(2),
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__7\(3),
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => count,
      CLR => AR(0),
      D => \plusOp__7\(4),
      Q => count_reg(4)
    );
\done_aux_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^j_reg\(0),
      I1 => done_aux_reg_2,
      I2 => done,
      O => \done_aux_i_1__2_n_0\
    );
done_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \done_aux_i_1__2_n_0\,
      Q => done
    );
\j[0]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^j_reg\(0),
      I1 => done,
      O => j0
    );
\j_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => j0,
      CLR => AR(0),
      D => '1',
      Q => \^j_reg\(0)
    );
\valid_aux_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \valid_aux_i_2__6_n_0\,
      I1 => \^valid\,
      O => \valid_aux_i_1__4_n_0\
    );
\valid_aux_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(3),
      I3 => \^j_reg\(0),
      I4 => count_reg(2),
      I5 => count_reg(4),
      O => \valid_aux_i_2__6_n_0\
    );
valid_aux_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \valid_aux_i_1__4_n_0\,
      Q => \^valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_nqueens_0_0_up_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[2]_2\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg[0]\ : in STD_LOGIC;
    count1_carry_i_4_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    count1_carry : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count1_carry__1_i_3\ : in STD_LOGIC;
    done_aux_i_4_0 : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter is
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count1_carry_i_10_n_0 : STD_LOGIC;
  signal count1_carry_i_12_n_0 : STD_LOGIC;
  signal count1_carry_i_8_n_0 : STD_LOGIC;
  signal \count1_carry_i_9__3_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of count1_carry_i_12 : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of count1_carry_i_8 : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \count1_carry_i_9__3\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \count[4]_i_9\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1\ : label is "soft_lutpair129";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_reg_reg[0]_0\ <= \^count_reg_reg[0]_0\;
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => u_i(1),
      I4 => u_i(2),
      I5 => u_i(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(3),
      I1 => \FSM_onehot_state_reg[4]\(1),
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      O => D(2)
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => u_i(0),
      I1 => u_i(2),
      I2 => u_i(1),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
count1_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => count1_carry_i_12_n_0,
      I1 => u_i(2),
      I2 => \count_reg[0]_0\,
      I3 => count1_carry_i_4_0(2),
      I4 => count1_carry_i_4_0(1),
      O => count1_carry_i_10_n_0
    );
count1_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => u_i(1),
      I1 => \count_reg[0]\,
      I2 => u_i(0),
      I3 => done_aux_i_4_0,
      O => count1_carry_i_12_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A4010084002001"
    )
        port map (
      I0 => count1_carry_i_4_0(0),
      I1 => \^count_reg_reg[2]_0\,
      I2 => count1_carry_i_8_n_0,
      I3 => \count1_carry_i_9__3_n_0\,
      I4 => count1_carry_i_10_n_0,
      I5 => count1_carry,
      O => S(0)
    );
count1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96669996"
    )
        port map (
      I0 => \count1_carry__1_i_3\,
      I1 => \^q\(0),
      I2 => \count_reg[0]_0\,
      I3 => u_i(2),
      I4 => count1_carry_i_12_n_0,
      O => \count_reg_reg[3]_0\
    );
count1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A565555AAAA6A56"
    )
        port map (
      I0 => done_aux_reg,
      I1 => \count_reg[0]_0\,
      I2 => u_i(2),
      I3 => count1_carry_i_12_n_0,
      I4 => \count1_carry__1_i_3\,
      I5 => \^q\(0),
      O => \^count_reg_reg[2]_0\
    );
count1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u_i(0),
      I1 => done_aux_i_4_0,
      O => count1_carry_i_8_n_0
    );
\count1_carry_i_9__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => u_i(1),
      I1 => \count_reg[0]\,
      O => \count1_carry_i_9__3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9696FFFFFFFFFF"
    )
        port map (
      I0 => \^count_reg_reg[0]_0\,
      I1 => u_i(2),
      I2 => \count_reg[0]_0\,
      I3 => u_i(1),
      I4 => \count_reg[0]\,
      I5 => count1_carry_i_8_n_0,
      O => \count_reg_reg[2]_2\
    );
\count[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => u_i(0),
      I1 => done_aux_i_4_0,
      O => \^count_reg_reg[0]_0\
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => u_i(1),
      I3 => u_i(2),
      I4 => u_i(0),
      O => count_next(0)
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => u_i(1),
      I3 => u_i(2),
      I4 => u_i(0),
      O => count_next(1)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => u_i(2),
      I1 => u_i(1),
      I2 => u_i(0),
      O => count_next(2)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => u_i(1),
      I3 => u_i(2),
      I4 => u_i(0),
      O => count_next(3)
    );
\count_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => u_i(1),
      I3 => u_i(0),
      I4 => u_i(2),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(0),
      Q => u_i(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(1),
      Q => u_i(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(2),
      Q => u_i(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(3),
      Q => \^q\(0)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => count_next(4),
      Q => \^q\(1)
    );
done_aux_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFBFFFBFBFF"
    )
        port map (
      I0 => done_aux_reg,
      I1 => count1_carry_i_8_n_0,
      I2 => \count1_carry_i_9__3_n_0\,
      I3 => \count_reg[0]_0\,
      I4 => u_i(2),
      I5 => count1_carry_i_12_n_0,
      O => \count_reg_reg[2]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_nqueens_0_0_up_counter_0 is
  port (
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \done_aux_i_2__0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_0 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_0;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_0 is
  signal \FSM_onehot_state[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__0\ : label is "soft_lutpair111";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[0]_0\ <= \^count_reg_reg[0]_0\;
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__0_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__0_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__0_n_0\
    );
\count1_carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \done_aux_i_2__0\,
      O => \^count_reg_reg[0]_0\
    );
\count[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440011001100440"
    )
        port map (
      I0 => \^count_reg_reg[0]_0\,
      I1 => \count_reg[0]_0\,
      I2 => \^q\(1),
      I3 => \count_reg[0]_1\,
      I4 => \^q\(2),
      I5 => \count_reg[0]_2\,
      O => \count_reg_reg[1]_0\
    );
\count[4]_i_5__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      O => \count_reg_reg[3]_0\
    );
\count_reg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
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
entity design_1_top_nqueens_0_0_up_counter_1 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[0]_1\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[3]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[3]_2\ : out STD_LOGIC;
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_4__1\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count1_carry__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry__1_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]_0\ : in STD_LOGIC;
    \count1_carry_i_4__1_0\ : in STD_LOGIC;
    \count1_carry_i_3__6\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_1 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_1;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_1 is
  signal \FSM_onehot_state[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \count_reg[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[0]_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__4\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__1\ : label is "soft_lutpair89";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[0]_1\ <= \^count_reg_reg[0]_1\;
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__1_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__1_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__1_n_0\
    );
\count1_carry__0_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => \count_reg_reg[3]_0\(3)
    );
\count1_carry__0_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => \count_reg_reg[3]_0\(2)
    );
\count1_carry__0_i_3__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => \count_reg_reg[3]_0\(1)
    );
\count1_carry__0_i_4__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => \count_reg_reg[3]_0\(0)
    );
\count1_carry__1_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F09"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => S(2)
    );
\count1_carry__1_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => S(1)
    );
\count1_carry__1_i_3__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => S(0)
    );
\count1_carry_i_10__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count1_carry_i_4__1\,
      O => \count_reg_reg[0]_0\
    );
\count1_carry_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry_i_4__1_0\,
      O => \count_reg_reg[1]_0\
    );
\count1_carry_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => \count_reg_reg[3]_1\(1)
    );
\count1_carry_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F69"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => \count1_carry__1\(0),
      I3 => \^count_reg_reg[0]_1\,
      I4 => \count1_carry__1_0\,
      O => \count_reg_reg[3]_1\(0)
    );
\count1_carry_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF66FF6FFFF"
    )
        port map (
      I0 => \count1_carry_i_4__1\,
      I1 => \^q\(0),
      I2 => \count1_carry_i_4__1_0\,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \count1_carry_i_3__6\,
      O => \^count_reg_reg[0]_1\
    );
\count[4]_i_4__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F090"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      I2 => CO(0),
      I3 => \count_reg[0]_0\,
      I4 => \^count_reg_reg[0]_1\,
      O => \count_reg_reg[3]_2\
    );
\count_reg[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \count_reg[0]_i_1__4_n_0\
    );
\count_reg[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
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
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_2\(0),
      D => \count_reg[0]_i_1__4_n_0\,
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
entity design_1_top_nqueens_0_0_up_counter_2 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_4__2\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_2 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_2;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_2 is
  signal \FSM_onehot_state[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__2\ : label is "soft_lutpair71";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__2_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__2_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__2_n_0\
    );
\count1_carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count1_carry_i_4__2\,
      O => \count_reg_reg[0]_0\
    );
\count[4]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      O => \count_reg_reg[3]_0\
    );
\count_reg[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
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
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
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
entity design_1_top_nqueens_0_0_up_counter_3 is
  port (
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg[0]\ : in STD_LOGIC;
    \count1_carry_i_4__3\ : in STD_LOGIC;
    \count1_carry_i_4__3_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_3 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_3;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_3 is
  signal \FSM_onehot_state[4]_i_4__3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__3\ : label is "soft_lutpair54";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__3_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__3_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__3_n_0\
    );
\count1_carry_i_10__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry_i_4__3\,
      O => \count_reg_reg[1]_0\
    );
\count1_carry_i_11__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count1_carry_i_4__3_0\,
      O => \count_reg_reg[0]_0\
    );
\count[4]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      O => \count_reg_reg[3]_0\
    );
\count_reg[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
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
entity design_1_top_nqueens_0_0_up_counter_4 is
  port (
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[1]_1\ : out STD_LOGIC;
    \count_reg_reg[1]_2\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_4__4\ : in STD_LOGIC;
    \count1_carry__1\ : in STD_LOGIC;
    \count1_carry__1_0\ : in STD_LOGIC;
    \count1_carry__1_1\ : in STD_LOGIC;
    \count1_carry_i_9__2\ : in STD_LOGIC;
    \count1_carry_i_9__2_0\ : in STD_LOGIC;
    \count1_carry_i_4__4_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_4 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_4;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_4 is
  signal \FSM_onehot_state[4]_i_4__4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_reg_reg[1]_1\ : STD_LOGIC;
  signal \^count_reg_reg[1]_2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count1_carry_i_13__6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \count1_carry_i_6__3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__4\ : label is "soft_lutpair39";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[1]_1\ <= \^count_reg_reg[1]_1\;
  \count_reg_reg[1]_2\ <= \^count_reg_reg[1]_2\;
\FSM_onehot_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__4_n_0\,
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
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__4_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__4_n_0\
    );
\count1_carry__0_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[3]_1\(3)
    );
\count1_carry__0_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[3]_1\(2)
    );
\count1_carry__0_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[3]_1\(1)
    );
\count1_carry__0_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[3]_1\(0)
    );
\count1_carry__1_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF009600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => S(2)
    );
\count1_carry__1_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => S(1)
    );
\count1_carry__1_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => S(0)
    );
\count1_carry_i_11__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count1_carry_i_4__4_0\,
      O => \count_reg_reg[0]_0\
    );
\count1_carry_i_13__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry_i_4__4\,
      O => \count_reg_reg[1]_0\
    );
\count1_carry_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[3]_0\(2)
    );
\count1_carry_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF699600FF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[3]_0\(1)
    );
\count1_carry_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0069006900000096"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[1]_1\,
      I3 => \count1_carry__1_0\,
      I4 => \^count_reg_reg[1]_2\,
      I5 => \count1_carry__1_1\,
      O => \count_reg_reg[3]_0\(0)
    );
\count1_carry_i_6__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry_i_4__4\,
      I2 => \count1_carry_i_9__2\,
      I3 => \^q\(2),
      I4 => \count1_carry_i_9__2_0\,
      O => \^count_reg_reg[1]_1\
    );
\count1_carry_i_8__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry_i_4__4\,
      I2 => \^q\(0),
      I3 => \count1_carry_i_4__4_0\,
      I4 => \^q\(2),
      I5 => \count1_carry_i_9__2_0\,
      O => \^count_reg_reg[1]_2\
    );
\count_reg[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(0)
    );
\count_reg[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
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
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
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
entity design_1_top_nqueens_0_0_up_counter_5 is
  port (
    \count_reg_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    \count_reg_reg[0]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_4__5\ : in STD_LOGIC;
    \count1_carry_i_4__5_0\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count1_carry__1\ : in STD_LOGIC;
    \count1_carry__1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count1_carry__1_1\ : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_5 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_5;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_5 is
  signal \FSM_onehot_state[4]_i_4__5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \count_reg[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg_reg[1]_0\ : STD_LOGIC;
  signal \^count_reg_reg[2]_0\ : STD_LOGIC;
  signal \^count_reg_reg[3]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count1_carry_i_8__6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count1_carry_i_9__5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__5\ : label is "soft_lutpair22";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \count_reg_reg[0]_0\ <= \^count_reg_reg[0]_0\;
  \count_reg_reg[1]_0\ <= \^count_reg_reg[1]_0\;
  \count_reg_reg[2]_0\ <= \^count_reg_reg[2]_0\;
  \count_reg_reg[3]_0\ <= \^count_reg_reg[3]_0\;
\FSM_onehot_state[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__5_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__5_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__5_n_0\
    );
\count1_carry__0_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => \j_reg[2]\(3)
    );
\count1_carry__0_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => \j_reg[2]\(2)
    );
\count1_carry__0_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => \j_reg[2]\(1)
    );
\count1_carry__0_i_4__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => \j_reg[2]\(0)
    );
\count1_carry__1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F06"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => S(2)
    );
\count1_carry__1_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => S(1)
    );
\count1_carry__1_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => S(0)
    );
\count1_carry_i_10__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry_i_4__5\,
      O => \^count_reg_reg[1]_0\
    );
\count1_carry_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => \j_reg[2]_0\(2)
    );
\count1_carry_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F96"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \count1_carry__1_0\(1),
      I3 => \^count_reg_reg[2]_0\,
      I4 => \count1_carry__1_1\,
      O => \j_reg[2]_0\(1)
    );
\count1_carry_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009960"
    )
        port map (
      I0 => \^count_reg_reg[3]_0\,
      I1 => \count1_carry__1\,
      I2 => \^count_reg_reg[2]_0\,
      I3 => \count1_carry__1_1\,
      I4 => \count1_carry__1_0\(1),
      O => \j_reg[2]_0\(0)
    );
\count1_carry_i_8__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count1_carry_i_4__5_0\,
      O => \^count_reg_reg[0]_0\
    );
\count1_carry_i_9__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \count1_carry_i_4__5_0\,
      I1 => \^q\(0),
      I2 => \count1_carry__1_0\(0),
      O => \count_reg_reg[0]_1\
    );
\count[4]_i_4__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F77F7FF7"
    )
        port map (
      I0 => \^count_reg_reg[0]_0\,
      I1 => \^count_reg_reg[1]_0\,
      I2 => done_aux_reg,
      I3 => \^q\(2),
      I4 => done_aux_reg_0,
      O => \^count_reg_reg[2]_0\
    );
\count[4]_i_6__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_reg[0]\,
      O => \^count_reg_reg[3]_0\
    );
\count_reg[0]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \count_reg[0]_i_1__5_n_0\
    );
\count_reg[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
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
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_2\(0),
      D => \count_reg[0]_i_1__5_n_0\,
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
\done_aux_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080008000008"
    )
        port map (
      I0 => \^count_reg_reg[0]_0\,
      I1 => \^count_reg_reg[1]_0\,
      I2 => done_aux_reg_1,
      I3 => done_aux_reg_0,
      I4 => \^q\(2),
      I5 => done_aux_reg,
      O => \count_reg_reg[2]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_nqueens_0_0_up_counter_6 is
  port (
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_5__5\ : in STD_LOGIC;
    \count[4]_i_3__2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_6 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_6;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_6 is
  signal \FSM_onehot_state[4]_i_4__6_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \count_reg[0]_i_1__6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__6\ : label is "soft_lutpair11";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__6_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__6_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__6_n_0\
    );
\count1_carry_i_11__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count1_carry_i_5__5\,
      O => \count_reg_reg[0]_0\
    );
\count[4]_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count[4]_i_3__2\,
      O => \count_reg_reg[2]_0\
    );
\count_reg[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \count_reg[0]_i_1__6_n_0\
    );
\count_reg[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
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
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => count_next(4)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => \count_reg_reg[0]_1\(0),
      D => \count_reg[0]_i_1__6_n_0\,
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
entity design_1_top_nqueens_0_0_up_counter_7 is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[4]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[3]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    done_aux_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    j_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    valid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ack_in_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_up_counter_7 : entity is "up_counter";
end design_1_top_nqueens_0_0_up_counter_7;

architecture STRUCTURE of design_1_top_nqueens_0_0_up_counter_7 is
  signal \FSM_onehot_state[4]_i_4__7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count1_carry_i_10__5_n_0\ : STD_LOGIC;
  signal \count1_carry_i_11__7_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__4_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__5_n_0\ : STD_LOGIC;
  signal \count1_carry_i_7__4_n_0\ : STD_LOGIC;
  signal \count1_carry_i_8__5_n_0\ : STD_LOGIC;
  signal \count1_carry_i_9__7_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \count_reg[0]_i_1__7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4__7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count1_carry_i_10__5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count1_carry_i_8__5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1__7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1__7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1__7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1__7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_reg[4]_i_1__7\ : label is "soft_lutpair1";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\FSM_onehot_state[1]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__7_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(2),
      I3 => valid,
      I4 => \FSM_onehot_state_reg[4]\(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => D(1)
    );
\FSM_onehot_state[4]_i_3__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_4__7_n_0\,
      I1 => \FSM_onehot_state_reg[4]\(3),
      I2 => \FSM_onehot_state_reg[4]\(1),
      O => D(2)
    );
\FSM_onehot_state[4]_i_4__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \FSM_onehot_state[4]_i_4__7_n_0\
    );
\count1_carry__0_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => \count_reg_reg[4]_0\(3)
    );
\count1_carry__0_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => \count_reg_reg[4]_0\(2)
    );
\count1_carry__0_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => \count_reg_reg[4]_0\(1)
    );
\count1_carry__0_i_4__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => \count_reg_reg[4]_0\(0)
    );
\count1_carry__1_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => S(2)
    );
\count1_carry__1_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => S(1)
    );
\count1_carry__1_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => S(0)
    );
\count1_carry_i_10__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => \^q\(0),
      I1 => done_aux_reg(0),
      I2 => \^q\(1),
      I3 => done_aux_reg(1),
      O => \count1_carry_i_10__5_n_0\
    );
\count1_carry_i_11__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => done_aux_reg(0),
      O => \count1_carry_i_11__7_n_0\
    );
\count1_carry_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => \count_reg_reg[4]_1\(3)
    );
\count1_carry_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F6FFF9FFFFF9F"
    )
        port map (
      I0 => \^q\(4),
      I1 => done_aux_reg(4),
      I2 => \count1_carry_i_5__4_n_0\,
      I3 => done_aux_reg(3),
      I4 => \^q\(3),
      I5 => \count1_carry_i_6__5_n_0\,
      O => \count_reg_reg[4]_1\(2)
    );
\count1_carry_i_3__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00966969"
    )
        port map (
      I0 => done_aux_reg(3),
      I1 => \^q\(3),
      I2 => \count1_carry_i_6__5_n_0\,
      I3 => \count1_carry_i_5__4_n_0\,
      I4 => \count1_carry_i_7__4_n_0\,
      O => \count_reg_reg[4]_1\(1)
    );
\count1_carry_i_4__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0028000A14000005"
    )
        port map (
      I0 => j_reg(0),
      I1 => \count1_carry_i_8__5_n_0\,
      I2 => \count1_carry_i_9__7_n_0\,
      I3 => \count1_carry_i_10__5_n_0\,
      I4 => \count1_carry_i_7__4_n_0\,
      I5 => \count1_carry_i_11__7_n_0\,
      O => \count_reg_reg[4]_1\(0)
    );
\count1_carry_i_5__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => done_aux_reg(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => done_aux_reg(1),
      I4 => \^q\(2),
      I5 => done_aux_reg(2),
      O => \count1_carry_i_5__4_n_0\
    );
\count1_carry_i_6__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => done_aux_reg(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => done_aux_reg(1),
      I4 => \^q\(2),
      I5 => done_aux_reg(2),
      O => \count1_carry_i_6__5_n_0\
    );
\count1_carry_i_7__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => done_aux_reg(4),
      I1 => \^q\(4),
      I2 => done_aux_reg(3),
      I3 => \^q\(3),
      I4 => \count1_carry_i_6__5_n_0\,
      O => \count1_carry_i_7__4_n_0\
    );
\count1_carry_i_8__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => done_aux_reg(0),
      I1 => \^q\(0),
      I2 => done_aux_reg(1),
      I3 => \^q\(1),
      O => \count1_carry_i_8__5_n_0\
    );
\count1_carry_i_9__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696969966966696"
    )
        port map (
      I0 => done_aux_reg(2),
      I1 => \^q\(2),
      I2 => done_aux_reg(1),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => done_aux_reg(0),
      O => \count1_carry_i_9__7_n_0\
    );
\count[4]_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AAAAAAAAAA28AA"
    )
        port map (
      I0 => CO(0),
      I1 => \^q\(3),
      I2 => done_aux_reg(3),
      I3 => \count1_carry_i_5__4_n_0\,
      I4 => done_aux_reg(4),
      I5 => \^q\(4),
      O => \count_reg_reg[3]_0\
    );
\count_reg[0]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \count_reg[0]_i_1__7_n_0\
    );
\count_reg[1]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF0B0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(1)
    );
\count_reg[2]_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => count_next(2)
    );
\count_reg[3]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCC8C"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => count_next(3)
    );
\count_reg[4]_i_1__7\: unisim.vcomponents.LUT5
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
      CLR => ack_in_1,
      D => \count_reg[0]_i_1__7_n_0\,
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
entity design_1_top_nqueens_0_0_fsm is
  port (
    next_out_9 : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \j_reg[1]_2\ : out STD_LOGIC;
    \j_reg[1]_3\ : out STD_LOGIC;
    \j_reg[1]_4\ : out STD_LOGIC;
    \j_reg[1]_5\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    done_aux_i_4 : in STD_LOGIC;
    \count[4]_i_5\ : in STD_LOGIC;
    \count[4]_i_5_0\ : in STD_LOGIC;
    \count[4]_i_5_1\ : in STD_LOGIC;
    \count[4]_i_5_2\ : in STD_LOGIC;
    \count[4]_i_12\ : in STD_LOGIC;
    \count[4]_i_12_0\ : in STD_LOGIC;
    \count[4]_i_7\ : in STD_LOGIC;
    \count[4]_i_7_0\ : in STD_LOGIC;
    count1_carry_i_14 : in STD_LOGIC;
    count1_carry_i_14_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_fsm : entity is "fsm";
end design_1_top_nqueens_0_0_fsm;

architecture STRUCTURE of design_1_top_nqueens_0_0_fsm is
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal ack_out_9 : STD_LOGIC;
  signal acks_out : STD_LOGIC;
  signal \asout_array[9]_0\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__0_n_0\ : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_2 : STD_LOGIC;
  signal dut_n_3 : STD_LOGIC;
  signal dut_n_4 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^j_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal j_reg_2_sn_1 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_8 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal reset_control_reg_i_1_n_0 : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal valid : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__0\ : label is "soft_lutpair143";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__0\ : label is "soft_lutpair143";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  E(0) <= ack_out_9;
  \j_reg[1]\(1 downto 0) <= \^j_reg[1]\(1 downto 0);
  \j_reg[2]\ <= j_reg_2_sn_1;
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => logic_n_15,
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
      CE => logic_n_15,
      D => dut_n_10,
      Q => \ce__0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_15,
      D => dut_n_9,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_15,
      D => logic_n_16,
      Q => \asout_array[9]_0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_15,
      D => dut_n_8,
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
      G => logic_n_14,
      GE => '1',
      Q => ack_out_9
    );
\acks_out_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ce__0\,
      I1 => nexts_out,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
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
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => nexts_out,
      I3 => \ce__0\,
      O => \ce_reg_i_1__0_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter
     port map (
      AR(0) => AR(0),
      D(2) => dut_n_8,
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[9]_0\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(1 downto 0) => u_i(4 downto 3),
      S(0) => dut_n_2,
      clk => clk,
      count1_carry => logic_n_10,
      \count1_carry__1_i_3\ => logic_n_8,
      count1_carry_i_4_0(2) => j_reg(2),
      count1_carry_i_4_0(1 downto 0) => \^j_reg[1]\(1 downto 0),
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[0]_0\ => \count_reg[0]_1\,
      \count_reg_reg[0]_0\ => dut_n_6,
      \count_reg_reg[2]_0\ => dut_n_3,
      \count_reg_reg[2]_1\ => dut_n_4,
      \count_reg_reg[2]_2\ => dut_n_5,
      \count_reg_reg[3]_0\ => dut_n_7,
      done_aux_i_4_0 => done_aux_i_4,
      done_aux_reg => logic_n_9,
      valid => valid
    );
logic: entity work.design_1_top_nqueens_0_0_ctrl_logic
     port map (
      AR(0) => reset_control,
      D(0) => logic_n_16,
      E(0) => logic_n_15,
      \FSM_onehot_state_reg[0]\ => logic_n_14,
      Q(1 downto 0) => u_i(4 downto 3),
      S(0) => dut_n_2,
      acks_out_reg(4) => nexts_out,
      acks_out_reg(3) => \asout_array[9]_0\,
      acks_out_reg(2) => \FSM_onehot_state_reg_n_0_[2]\,
      acks_out_reg(1) => \ce__0\,
      acks_out_reg(0) => \FSM_onehot_state_reg_n_0_[0]\,
      clk => clk,
      \count1_carry__1_0\ => dut_n_7,
      \count1_carry__1_1\ => dut_n_3,
      count1_carry_i_14 => count1_carry_i_14,
      count1_carry_i_14_0 => count1_carry_i_14_0,
      count1_carry_i_4 => dut_n_6,
      \count[4]_i_12_0\ => \count[4]_i_12\,
      \count[4]_i_12_1\ => \count[4]_i_12_0\,
      \count[4]_i_5_0\ => \count[4]_i_5\,
      \count[4]_i_5_1\ => \count[4]_i_5_0\,
      \count[4]_i_5_2\ => \count[4]_i_5_1\,
      \count[4]_i_5_3\ => \count[4]_i_5_2\,
      \count[4]_i_7_0\ => \count[4]_i_7\,
      \count[4]_i_7_1\ => \count[4]_i_7_0\,
      \count_reg[0]_0\(1 downto 0) => Q(1 downto 0),
      \count_reg[0]_1\ => \count_reg[0]_0\,
      \count_reg[0]_2\ => dut_n_5,
      \count_reg_reg[4]\ => logic_n_9,
      done_aux_reg_0 => dut_n_4,
      \j_reg[0]_0\ => logic_n_8,
      \j_reg[1]_0\ => \j_reg[1]_0\,
      \j_reg[1]_1\ => \j_reg[1]_1\,
      \j_reg[1]_2\ => \j_reg[1]_2\,
      \j_reg[1]_3\ => logic_n_10,
      \j_reg[1]_4\ => \j_reg[1]_3\,
      \j_reg[1]_5\ => \j_reg[1]_4\,
      \j_reg[1]_6\ => \j_reg[1]_5\,
      \j_reg[2]_0\ => j_reg_2_sn_1,
      \j_reg[2]_1\(2) => j_reg(2),
      \j_reg[2]_1\(1 downto 0) => \^j_reg[1]\(1 downto 0),
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
      D => \ce__0\,
      G => reset_control_reg_i_1_n_0,
      GE => '1',
      Q => reset_control
    );
reset_control_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => reset_control_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized0\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_8 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_5\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    \j_reg[3]_2\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    \j_reg[2]_1\ : out STD_LOGIC;
    \j_reg[2]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count[4]_i_17\ : in STD_LOGIC;
    \count[4]_i_17_0\ : in STD_LOGIC;
    count1_carry_i_14 : in STD_LOGIC;
    \count1_carry_i_4__0\ : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    a_in_8 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    \count[4]_i_11\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count[4]_i_4\ : in STD_LOGIC;
    count1_carry_i_13 : in STD_LOGIC;
    count1_carry_i_13_0 : in STD_LOGIC;
    count1_carry_i_13_1 : in STD_LOGIC;
    count1_carry : in STD_LOGIC;
    \count1_carry_i_4__0_0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \done_aux_i_2__0\ : in STD_LOGIC;
    \count[4]_i_11__3\ : in STD_LOGIC;
    \count[4]_i_11__3_0\ : in STD_LOGIC;
    \count[4]_i_7__0\ : in STD_LOGIC;
    next_out_9 : in STD_LOGIC;
    \count[4]_i_5__5\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized0\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized0\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized0\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal a_in_9 : STD_LOGIC_VECTOR ( 42 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[8]_1\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__2_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal \^count_reg_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_22 : STD_LOGIC;
  signal logic_n_28 : STD_LOGIC;
  signal logic_n_29 : STD_LOGIC;
  signal logic_n_30 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__0_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal valid : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__2\ : label is "soft_lutpair128";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[8][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__2\ : label is "soft_lutpair128";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
  \count_reg_reg[2]\(2 downto 0) <= \^count_reg_reg[2]\(2 downto 0);
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
      CE => logic_n_28,
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
      CE => logic_n_28,
      D => dut_n_10,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_28,
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
      CE => logic_n_28,
      D => logic_n_30,
      Q => \asout_array[8]_1\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_28,
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
      G => logic_n_29,
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
      D => \^count_reg_reg[2]\(0),
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
      D => \^count_reg_reg[2]\(1),
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
      D => \^count_reg_reg[2]\(2),
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
      Q => \^q\(0)
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
      Q => \^q\(1)
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
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => \ce_reg_i_1__2_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_0
     port map (
      D(2) => dut_n_8,
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[8]_1\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 3) => u_i(4 downto 3),
      Q(2 downto 0) => \^count_reg_reg[2]\(2 downto 0),
      clk => clk,
      \count_reg[0]\ => logic_n_22,
      \count_reg[0]_0\ => \count_reg[0]_1\,
      \count_reg[0]_1\ => \count_reg[0]_2\,
      \count_reg[0]_2\ => \count_reg[0]_0\,
      \count_reg_reg[0]_0\ => \^count_reg_reg[0]\,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]_0\(0),
      \count_reg_reg[1]_0\ => dut_n_6,
      \count_reg_reg[3]_0\ => dut_n_0,
      \done_aux_i_2__0\ => \done_aux_i_2__0\,
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized0\
     port map (
      AR(0) => reset_control,
      D(2 downto 1) => u_i(4 downto 3),
      D(0) => \^count_reg_reg[2]\(2),
      E(0) => logic_n_28,
      \FSM_onehot_state_reg[1]\ => logic_n_29,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_2\,
      \FSM_onehot_state_reg[3]_2\ => \FSM_onehot_state_reg[3]_3\,
      \FSM_onehot_state_reg[3]_3\ => \FSM_onehot_state_reg[3]_4\,
      \FSM_onehot_state_reg[3]_4\ => \FSM_onehot_state_reg[3]_5\,
      Q(3 downto 0) => \j_reg[3]\(3 downto 0),
      a_in_8(4 downto 3) => a_in_8(39 downto 38),
      a_in_8(2) => a_in_8(30),
      a_in_8(1) => a_in_8(14),
      a_in_8(0) => a_in_8(7),
      a_in_9(42 downto 0) => a_in_9(42 downto 0),
      clk => clk,
      count1_carry_0 => \^count_reg_reg[0]\,
      count1_carry_1 => count1_carry,
      count1_carry_i_13_0 => count1_carry_i_13,
      count1_carry_i_13_1 => count1_carry_i_13_0,
      count1_carry_i_13_2 => count1_carry_i_13_1,
      count1_carry_i_14_0 => count1_carry_i_14,
      count1_carry_i_17(1 downto 0) => \^q\(1 downto 0),
      \count1_carry_i_4__0_0\ => \count1_carry_i_4__0\,
      \count1_carry_i_4__0_1\ => \count1_carry_i_4__0_0\,
      \count1_carry_i_4__0_2\ => \count_reg[0]_0\,
      \count1_carry_i_4__0_3\ => \count_reg[0]_1\,
      \count[4]_i_11_0\(1 downto 0) => \count[4]_i_11\(1 downto 0),
      \count[4]_i_11__3_0\ => \count[4]_i_11__3\,
      \count[4]_i_11__3_1\ => \count[4]_i_11__3_0\,
      \count[4]_i_17_0\ => \count[4]_i_17\,
      \count[4]_i_17_1\ => \count[4]_i_17_0\,
      \count[4]_i_4\ => \count[4]_i_4\,
      \count[4]_i_5__5\ => \count[4]_i_5__5\,
      \count[4]_i_7__0_0\ => \count[4]_i_7__0\,
      \count_reg[0]_0\ => dut_n_0,
      \count_reg[0]_1\ => dut_n_6,
      \count_reg[0]_2\ => \count_reg[0]\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[8]_1\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]_0\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      done_aux_reg_0 => done_aux_reg,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      \j_reg[0]_2\ => \j_reg[0]_1\,
      \j_reg[0]_3\ => \j_reg[0]_2\,
      \j_reg[0]_4\ => logic_n_22,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[1]_1\ => \j_reg[1]_0\,
      \j_reg[1]_2\ => \j_reg[1]_1\,
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[2]_1\ => \j_reg[2]_0\,
      \j_reg[2]_2\ => \j_reg[2]_1\,
      \j_reg[2]_3\ => \j_reg[2]_2\,
      \j_reg[3]_0\ => \j_reg[3]_0\,
      \j_reg[3]_1\ => \j_reg[3]_1\,
      \j_reg[3]_2\ => \j_reg[3]_2\,
      next_out_9 => next_out_9,
      valid => valid,
      valid_aux_reg_0(0) => logic_n_30
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
      D => \ce__0\,
      G => \reset_control_reg_i_1__0_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_7 : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[0]_1\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    a_in_8 : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \j_reg[3]_2\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[1]_1\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count[4]_i_5__0\ : in STD_LOGIC;
    \count[4]_i_5__0_0\ : in STD_LOGIC;
    \count[4]_i_5__0_1\ : in STD_LOGIC;
    \count1_carry_i_3__6\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    done_aux_reg_0 : in STD_LOGIC;
    done_aux_reg_1 : in STD_LOGIC;
    \count[4]_i_7__0\ : in STD_LOGIC;
    \count[4]_i_7__0_0\ : in STD_LOGIC;
    \count[4]_i_17__0\ : in STD_LOGIC;
    \count[4]_i_17__0_0\ : in STD_LOGIC;
    \count[4]_i_14__0\ : in STD_LOGIC;
    \count[4]_i_19__0\ : in STD_LOGIC;
    \count[4]_i_6__3\ : in STD_LOGIC;
    a_in_7 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \count1_carry_i_12__0\ : in STD_LOGIC;
    \count1_carry_i_8__1\ : in STD_LOGIC;
    \count[4]_i_4__5\ : in STD_LOGIC;
    \count1_carry_i_16__1\ : in STD_LOGIC;
    \count1_carry_i_16__1_0\ : in STD_LOGIC;
    \count1_carry_i_16__1_1\ : in STD_LOGIC;
    next_out_8 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized1\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized1\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized1\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_8\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[7]_2\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__4_n_0\ : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_15 : STD_LOGIC;
  signal dut_n_16 : STD_LOGIC;
  signal dut_n_17 : STD_LOGIC;
  signal dut_n_18 : STD_LOGIC;
  signal dut_n_19 : STD_LOGIC;
  signal dut_n_20 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  signal j_reg_3_sn_1 : STD_LOGIC;
  signal logic_n_10 : STD_LOGIC;
  signal logic_n_23 : STD_LOGIC;
  signal logic_n_24 : STD_LOGIC;
  signal logic_n_27 : STD_LOGIC;
  signal logic_n_28 : STD_LOGIC;
  signal logic_n_29 : STD_LOGIC;
  signal logic_n_9 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__1_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__4\ : label is "soft_lutpair108";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[7][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__4\ : label is "soft_lutpair108";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  a_in_8(39 downto 0) <= \^a_in_8\(39 downto 0);
  \j_reg[3]\ <= j_reg_3_sn_1;
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
      CE => logic_n_27,
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
      CE => logic_n_27,
      D => dut_n_20,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_27,
      D => dut_n_19,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_27,
      D => logic_n_29,
      Q => \asout_array[7]_2\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_27,
      D => dut_n_18,
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
      G => logic_n_28,
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
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => \ce_reg_i_1__4_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_1
     port map (
      CO(0) => count1,
      D(2) => dut_n_18,
      D(1) => dut_n_19,
      D(0) => dut_n_20,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[7]_2\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 0) => u_i(4 downto 0),
      S(2) => dut_n_6,
      S(1) => dut_n_7,
      S(0) => dut_n_8,
      clk => clk,
      \count1_carry__1\(0) => j_reg(3),
      \count1_carry__1_0\ => logic_n_10,
      \count1_carry_i_3__6\ => \count1_carry_i_3__6\,
      \count1_carry_i_4__1\ => logic_n_24,
      \count1_carry_i_4__1_0\ => logic_n_9,
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[0]_0\ => logic_n_23,
      \count_reg_reg[0]_0\ => dut_n_0,
      \count_reg_reg[0]_1\ => dut_n_9,
      \count_reg_reg[0]_2\(0) => \count_reg_reg[0]_2\(0),
      \count_reg_reg[1]_0\ => dut_n_17,
      \count_reg_reg[3]_0\(3) => dut_n_10,
      \count_reg_reg[3]_0\(2) => dut_n_11,
      \count_reg_reg[3]_0\(1) => dut_n_12,
      \count_reg_reg[3]_0\(0) => dut_n_13,
      \count_reg_reg[3]_1\(1) => dut_n_14,
      \count_reg_reg[3]_1\(0) => dut_n_15,
      \count_reg_reg[3]_2\ => dut_n_16,
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized1\
     port map (
      AR(0) => reset_control,
      CO(0) => count1,
      D(4 downto 0) => u_i(4 downto 0),
      E(0) => logic_n_27,
      \FSM_onehot_state_reg[1]\ => logic_n_28,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      Q(3 downto 0) => Q(3 downto 0),
      S(2) => dut_n_6,
      S(1) => dut_n_7,
      S(0) => dut_n_8,
      a_in_7(2) => a_in_7(34),
      a_in_7(1 downto 0) => a_in_7(31 downto 30),
      a_in_8(37 downto 29) => \^a_in_8\(39 downto 31),
      a_in_8(28 downto 14) => \^a_in_8\(29 downto 15),
      a_in_8(13 downto 0) => \^a_in_8\(13 downto 0),
      clk => clk,
      count1_carry_0 => dut_n_9,
      count1_carry_1 => dut_n_0,
      count1_carry_2 => dut_n_17,
      \count1_carry__0_0\(1) => dut_n_14,
      \count1_carry__0_0\(0) => dut_n_15,
      \count1_carry__1_0\(3) => dut_n_10,
      \count1_carry__1_0\(2) => dut_n_11,
      \count1_carry__1_0\(1) => dut_n_12,
      \count1_carry__1_0\(0) => dut_n_13,
      \count1_carry__1_i_1__6\ => \count_reg[0]\,
      \count1_carry_i_12__0\ => \count1_carry_i_12__0\,
      \count1_carry_i_16__1_0\ => \count1_carry_i_16__1\,
      \count1_carry_i_16__1_1\ => \count1_carry_i_16__1_0\,
      \count1_carry_i_16__1_2\ => \count1_carry_i_16__1_1\,
      \count1_carry_i_7__1_0\ => \count1_carry_i_3__6\,
      \count1_carry_i_8__1_0\ => \count1_carry_i_8__1\,
      \count[4]_i_14__0_0\ => \count[4]_i_14__0\,
      \count[4]_i_17__0_0\ => \count[4]_i_17__0\,
      \count[4]_i_17__0_1\ => \count[4]_i_17__0_0\,
      \count[4]_i_19__0_0\ => \count[4]_i_19__0\,
      \count[4]_i_4__5\ => \count[4]_i_4__5\,
      \count[4]_i_5__0_0\ => \count[4]_i_5__0\,
      \count[4]_i_5__0_1\ => \count[4]_i_5__0_0\,
      \count[4]_i_5__0_2\ => \count[4]_i_5__0_1\,
      \count[4]_i_6__3_0\ => \count[4]_i_6__3\,
      \count[4]_i_7__0\ => \count[4]_i_7__0\,
      \count[4]_i_7__0_0\ => \count[4]_i_7__0_0\,
      \count_reg[0]_0\ => dut_n_16,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\ => \count_reg_reg[0]_0\,
      \count_reg_reg[0]_1\ => \count_reg_reg[0]_1\,
      \count_reg_reg[0]_2\(4) => nexts_out,
      \count_reg_reg[0]_2\(3) => \asout_array[7]_2\,
      \count_reg_reg[0]_2\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_2\(1) => \ce__0\,
      \count_reg_reg[0]_2\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[3]\ => logic_n_10,
      \count_reg_reg[4]\ => logic_n_23,
      done_aux_reg_0(2 downto 0) => done_aux_reg(2 downto 0),
      done_aux_reg_1 => done_aux_reg_0,
      done_aux_reg_2 => done_aux_reg_1,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => logic_n_9,
      \j_reg[0]_2\ => \j_reg[0]_0\,
      \j_reg[0]_3\ => \j_reg[0]_1\,
      \j_reg[0]_4\ => logic_n_24,
      \j_reg[0]_5\ => \j_reg[0]_2\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[1]_1\ => \j_reg[1]_0\,
      \j_reg[1]_2\ => \j_reg[1]_1\,
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[3]_0\(3) => j_reg(3),
      \j_reg[3]_0\(2 downto 0) => \j_reg[2]_0\(2 downto 0),
      \j_reg[3]_1\ => j_reg_3_sn_1,
      \j_reg[3]_2\ => \j_reg[3]_0\,
      \j_reg[3]_3\ => \j_reg[3]_1\,
      \j_reg[3]_4\ => \j_reg[3]_2\,
      next_out_8 => next_out_8,
      valid => valid,
      valid_aux_reg_0(0) => logic_n_29
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
      D => \ce__0\,
      G => \reset_control_reg_i_1__1_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized2\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_6 : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    a_in_7 : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \j_reg[3]\ : out STD_LOGIC;
    \j_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    \j_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \j_reg[3]_2\ : out STD_LOGIC;
    \j_reg[3]_3\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count[4]_i_3__0\ : in STD_LOGIC;
    \count[4]_i_3__0_0\ : in STD_LOGIC;
    \count1_carry_i_12__1\ : in STD_LOGIC;
    \count[4]_i_8__2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry__1_i_3__6\ : in STD_LOGIC;
    \count[4]_i_6__4\ : in STD_LOGIC;
    \count[4]_i_6__4_0\ : in STD_LOGIC;
    count1_carry_i_25 : in STD_LOGIC;
    count1_carry_i_41 : in STD_LOGIC;
    count1_carry_i_19 : in STD_LOGIC;
    a_in_6 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \count[4]_i_3__0_1\ : in STD_LOGIC;
    \count[4]_i_3__0_2\ : in STD_LOGIC;
    \count[4]_i_7__4\ : in STD_LOGIC;
    \count[4]_i_7__4_0\ : in STD_LOGIC;
    \count[4]_i_8__2_0\ : in STD_LOGIC;
    \count1_carry_i_12__1_0\ : in STD_LOGIC;
    \count[4]_i_22__0\ : in STD_LOGIC;
    \count[4]_i_21__1\ : in STD_LOGIC;
    next_out_7 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized2\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized2\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized2\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_7\ : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[6]_3\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__5_n_0\ : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_12 : STD_LOGIC;
  signal logic_n_13 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_17 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__5\ : label is "soft_lutpair87";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[6][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__5\ : label is "soft_lutpair87";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  a_in_7(34 downto 0) <= \^a_in_7\(34 downto 0);
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
      CE => logic_n_15,
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
      CE => logic_n_15,
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
      CE => logic_n_15,
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
      CE => logic_n_15,
      D => logic_n_17,
      Q => \asout_array[6]_3\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_15,
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
      G => logic_n_16,
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
      G => \ce_reg_i_1__5_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => \ce_reg_i_1__5_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_2
     port map (
      D(2) => dut_n_7,
      D(1) => dut_n_8,
      D(0) => dut_n_9,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[6]_3\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      \count1_carry_i_4__2\ => logic_n_12,
      \count_reg[0]\ => logic_n_13,
      \count_reg_reg[0]_0\ => dut_n_0,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[3]_0\ => dut_n_6,
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized2\
     port map (
      AR(0) => reset_control,
      D(4 downto 0) => u_i(4 downto 0),
      E(0) => logic_n_15,
      \FSM_onehot_state_reg[1]\ => logic_n_16,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_2\,
      Q(4 downto 0) => \^a_in_7\(34 downto 30),
      a_in_6(4 downto 0) => a_in_6(29 downto 25),
      a_in_7(29 downto 0) => \^a_in_7\(29 downto 0),
      clk => clk,
      count1_carry_0 => dut_n_0,
      \count1_carry__1_i_3__6\ => \count1_carry__1_i_3__6\,
      \count1_carry_i_12__1_0\ => \count1_carry_i_12__1\,
      \count1_carry_i_12__1_1\ => \count1_carry_i_12__1_0\,
      count1_carry_i_19_0 => count1_carry_i_19,
      count1_carry_i_25 => count1_carry_i_25,
      count1_carry_i_41_0 => count1_carry_i_41,
      \count[4]_i_21__1_0\ => \count[4]_i_21__1\,
      \count[4]_i_22__0_0\ => \count[4]_i_22__0\,
      \count[4]_i_3__0_0\ => \count[4]_i_3__0\,
      \count[4]_i_3__0_1\ => \count[4]_i_3__0_0\,
      \count[4]_i_3__0_2\ => \count[4]_i_3__0_1\,
      \count[4]_i_3__0_3\ => \count[4]_i_3__0_2\,
      \count[4]_i_5__0\(2 downto 0) => Q(2 downto 0),
      \count[4]_i_6__4\ => \count[4]_i_6__4\,
      \count[4]_i_6__4_0\ => \count[4]_i_6__4_0\,
      \count[4]_i_7__4_0\ => \count[4]_i_7__4\,
      \count[4]_i_7__4_1\ => \count[4]_i_7__4_0\,
      \count[4]_i_8__2_0\ => \count[4]_i_8__2\,
      \count[4]_i_8__2_1\ => \count[4]_i_8__2_0\,
      \count_reg[0]_0\ => dut_n_6,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[6]_3\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      \j_reg[0]_2\ => logic_n_12,
      \j_reg[0]_3\ => logic_n_13,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[1]_1\ => \j_reg[1]_0\,
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[3]_0\ => \j_reg[3]\,
      \j_reg[3]_1\ => \j_reg[3]_0\,
      \j_reg[3]_2\ => \j_reg[3]_1\,
      \j_reg[3]_3\ => \j_reg[3]_2\,
      \j_reg[3]_4\ => \j_reg[3]_3\,
      next_out_7 => next_out_7,
      valid => valid,
      valid_aux_reg_0(0) => logic_n_17
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
      D => \ce__0\,
      G => \reset_control_reg_i_1__2_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized3\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_5 : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    a_in_6 : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_5\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_6\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[4]\ : out STD_LOGIC;
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count1_carry_i_13__3\ : in STD_LOGIC;
    \count1_carry_i_13__3_0\ : in STD_LOGIC;
    \count[4]_i_8__2\ : in STD_LOGIC;
    \count[4]_i_8__2_0\ : in STD_LOGIC;
    a_in_5 : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \count[4]_i_10__1\ : in STD_LOGIC;
    \count[4]_i_10__1_0\ : in STD_LOGIC;
    \count[4]_i_3__1\ : in STD_LOGIC;
    \count[4]_i_3__1_0\ : in STD_LOGIC;
    \count[4]_i_6__0\ : in STD_LOGIC;
    \count[4]_i_19__2\ : in STD_LOGIC;
    \count[4]_i_12__2\ : in STD_LOGIC;
    \count[4]_i_12__2_0\ : in STD_LOGIC;
    \count[4]_i_21__2\ : in STD_LOGIC;
    \count[4]_i_7__2\ : in STD_LOGIC;
    next_out_6 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized3\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized3\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized3\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_6\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal acks_out : STD_LOGIC;
  signal \asout_array[5]_4\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__7_n_0\ : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_1 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_18 : STD_LOGIC;
  signal logic_n_19 : STD_LOGIC;
  signal logic_n_20 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__3_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__7\ : label is "soft_lutpair70";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[5][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__7\ : label is "soft_lutpair70";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  a_in_6(29 downto 0) <= \^a_in_6\(29 downto 0);
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
      D => dut_n_10,
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
      D => logic_n_20,
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
      G => logic_n_19,
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
      G => \ce_reg_i_1__7_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => \ce_reg_i_1__7_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_3
     port map (
      D(2) => dut_n_8,
      D(1) => dut_n_9,
      D(0) => dut_n_10,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[5]_4\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 0) => u_i(4 downto 0),
      clk => clk,
      \count1_carry_i_4__3\ => logic_n_16,
      \count1_carry_i_4__3_0\ => logic_n_15,
      \count_reg[0]\ => logic_n_1,
      \count_reg_reg[0]_0\ => dut_n_7,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]_0\(0),
      \count_reg_reg[1]_0\ => dut_n_6,
      \count_reg_reg[3]_0\ => dut_n_0,
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized3\
     port map (
      AR(0) => reset_control,
      D(4 downto 0) => u_i(4 downto 0),
      E(0) => logic_n_18,
      \FSM_onehot_state_reg[1]\ => logic_n_19,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_2\,
      \FSM_onehot_state_reg[3]_2\ => \FSM_onehot_state_reg[3]_3\,
      \FSM_onehot_state_reg[3]_3\ => \FSM_onehot_state_reg[3]_4\,
      \FSM_onehot_state_reg[3]_4\ => \FSM_onehot_state_reg[3]_5\,
      \FSM_onehot_state_reg[3]_5\ => \FSM_onehot_state_reg[3]_6\,
      Q(4) => nexts_out,
      Q(3) => \asout_array[5]_4\,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \ce__0\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      a_in_5(4 downto 0) => a_in_5(24 downto 20),
      a_in_6(29 downto 0) => \^a_in_6\(29 downto 0),
      clk => clk,
      count1_carry_0 => dut_n_6,
      count1_carry_1 => dut_n_7,
      \count1_carry_i_13__3_0\ => \count1_carry_i_13__3\,
      \count1_carry_i_13__3_1\ => \count1_carry_i_13__3_0\,
      \count[4]_i_10__1_0\ => \count[4]_i_10__1\,
      \count[4]_i_10__1_1\ => \count[4]_i_10__1_0\,
      \count[4]_i_12__2_0\ => \count[4]_i_12__2\,
      \count[4]_i_12__2_1\ => \count[4]_i_12__2_0\,
      \count[4]_i_19__2_0\ => \count[4]_i_19__2\,
      \count[4]_i_21__2_0\ => \count[4]_i_21__2\,
      \count[4]_i_3__1_0\ => \count[4]_i_3__1\,
      \count[4]_i_3__1_1\ => \count[4]_i_3__1_0\,
      \count[4]_i_6__0_0\ => \count[4]_i_6__0\,
      \count[4]_i_7__2_0\ => \count[4]_i_7__2\,
      \count[4]_i_8__2\ => \count[4]_i_8__2\,
      \count[4]_i_8__2_0\ => \count[4]_i_8__2_0\,
      \count_reg[0]_0\ => dut_n_0,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[2]\ => \count_reg_reg[2]\,
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      \count_reg_reg[4]\ => \count_reg_reg[4]\,
      \j_reg[0]_0\ => logic_n_1,
      \j_reg[0]_1\ => logic_n_15,
      \j_reg[0]_2\ => logic_n_16,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[2]_0\ => \j_reg[2]\,
      \j_reg[2]_1\ => \j_reg[2]_0\,
      next_out_6 => next_out_6,
      valid => valid,
      valid_aux_reg_0(0) => logic_n_20
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
      D => \ce__0\,
      G => \reset_control_reg_i_1__3_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized4\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_4 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    a_in_5 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_5\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_6\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_7\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_8\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_9\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_10\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[2]\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \count1_carry_i_19__0\ : in STD_LOGIC;
    \count1_carry_i_19__0_0\ : in STD_LOGIC;
    a_in_4 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \count1_carry__1_i_3__2\ : in STD_LOGIC;
    \count1_carry_i_13__6\ : in STD_LOGIC;
    \count[4]_i_19__2\ : in STD_LOGIC;
    \count[4]_i_19__2_0\ : in STD_LOGIC;
    \count[4]_i_15__2\ : in STD_LOGIC;
    \count1_carry_i_9__2\ : in STD_LOGIC;
    \count1_carry_i_5__7\ : in STD_LOGIC;
    \count1_carry_i_5__7_0\ : in STD_LOGIC;
    \count[4]_i_4__6\ : in STD_LOGIC;
    \count[4]_i_4__6_0\ : in STD_LOGIC;
    \count1_carry_i_19__0_1\ : in STD_LOGIC;
    \count1_carry_i_19__0_2\ : in STD_LOGIC;
    next_out_5 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized4\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized4\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized4\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^a_in_5\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \acks_out_reg_i_1__6_n_0\ : STD_LOGIC;
  signal \asout_array[4]_5\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__6_n_0\ : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_15 : STD_LOGIC;
  signal dut_n_16 : STD_LOGIC;
  signal dut_n_17 : STD_LOGIC;
  signal dut_n_18 : STD_LOGIC;
  signal dut_n_19 : STD_LOGIC;
  signal dut_n_20 : STD_LOGIC;
  signal dut_n_21 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_20 : STD_LOGIC;
  signal logic_n_22 : STD_LOGIC;
  signal logic_n_23 : STD_LOGIC;
  signal logic_n_24 : STD_LOGIC;
  signal logic_n_25 : STD_LOGIC;
  signal logic_n_4 : STD_LOGIC;
  signal logic_n_5 : STD_LOGIC;
  signal logic_n_6 : STD_LOGIC;
  signal logic_n_7 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__4_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__6\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[4][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__6\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  a_in_5(24 downto 0) <= \^a_in_5\(24 downto 0);
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
      CE => logic_n_23,
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
      CE => logic_n_23,
      D => dut_n_21,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_23,
      D => dut_n_20,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_23,
      D => logic_n_25,
      Q => \asout_array[4]_5\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_23,
      D => dut_n_19,
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
      G => logic_n_24,
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
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => \ce_reg_i_1__6_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_4
     port map (
      D(2) => dut_n_19,
      D(1) => dut_n_20,
      D(0) => dut_n_21,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[4]_5\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 0) => u_i(4 downto 0),
      S(2) => dut_n_6,
      S(1) => dut_n_7,
      S(0) => dut_n_8,
      clk => clk,
      \count1_carry__1\ => logic_n_4,
      \count1_carry__1_0\ => logic_n_22,
      \count1_carry__1_1\ => logic_n_20,
      \count1_carry_i_4__4\ => logic_n_7,
      \count1_carry_i_4__4_0\ => logic_n_5,
      \count1_carry_i_9__2\ => logic_n_6,
      \count1_carry_i_9__2_0\ => \count1_carry_i_9__2\,
      \count_reg_reg[0]_0\ => dut_n_18,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[1]_0\ => dut_n_0,
      \count_reg_reg[1]_1\ => dut_n_9,
      \count_reg_reg[1]_2\ => dut_n_10,
      \count_reg_reg[3]_0\(2) => dut_n_11,
      \count_reg_reg[3]_0\(1) => dut_n_12,
      \count_reg_reg[3]_0\(0) => dut_n_13,
      \count_reg_reg[3]_1\(3) => dut_n_14,
      \count_reg_reg[3]_1\(2) => dut_n_15,
      \count_reg_reg[3]_1\(1) => dut_n_16,
      \count_reg_reg[3]_1\(0) => dut_n_17,
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized4\
     port map (
      AR(0) => reset_control,
      D(4 downto 0) => u_i(4 downto 0),
      E(0) => logic_n_23,
      \FSM_onehot_state_reg[1]\ => logic_n_24,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_2\,
      \FSM_onehot_state_reg[3]_2\ => \FSM_onehot_state_reg[3]_3\,
      \FSM_onehot_state_reg[3]_3\ => \FSM_onehot_state_reg[3]_4\,
      \FSM_onehot_state_reg[3]_4\ => \FSM_onehot_state_reg[3]_5\,
      \FSM_onehot_state_reg[3]_5\ => \FSM_onehot_state_reg[3]_6\,
      \FSM_onehot_state_reg[3]_6\ => \FSM_onehot_state_reg[3]_7\,
      \FSM_onehot_state_reg[3]_7\ => \FSM_onehot_state_reg[3]_8\,
      \FSM_onehot_state_reg[3]_8\ => \FSM_onehot_state_reg[3]_9\,
      \FSM_onehot_state_reg[3]_9\ => \FSM_onehot_state_reg[3]_10\,
      Q(2 downto 0) => Q(2 downto 0),
      S(2) => dut_n_6,
      S(1) => dut_n_7,
      S(0) => dut_n_8,
      a_in_4(10 downto 9) => a_in_4(19 downto 18),
      a_in_4(8 downto 4) => a_in_4(16 downto 12),
      a_in_4(3 downto 0) => a_in_4(7 downto 4),
      a_in_5(24 downto 0) => \^a_in_5\(24 downto 0),
      clk => clk,
      count1_carry_0 => dut_n_18,
      count1_carry_1 => dut_n_0,
      \count1_carry__0_0\(2) => dut_n_11,
      \count1_carry__0_0\(1) => dut_n_12,
      \count1_carry__0_0\(0) => dut_n_13,
      \count1_carry__1_0\(3) => dut_n_14,
      \count1_carry__1_0\(2) => dut_n_15,
      \count1_carry__1_0\(1) => dut_n_16,
      \count1_carry__1_0\(0) => dut_n_17,
      \count1_carry__1_i_3__2\ => \count1_carry__1_i_3__2\,
      \count1_carry__1_i_3__2_0\ => dut_n_9,
      \count1_carry_i_13__6\ => \count1_carry_i_13__6\,
      \count1_carry_i_19__0_0\ => \count1_carry_i_19__0\,
      \count1_carry_i_19__0_1\ => \count1_carry_i_19__0_0\,
      \count1_carry_i_19__0_2\ => \count1_carry_i_19__0_1\,
      \count1_carry_i_19__0_3\ => \count1_carry_i_19__0_2\,
      \count1_carry_i_4__4_0\ => \count1_carry_i_9__2\,
      \count1_carry_i_5__7_0\ => \count1_carry_i_5__7\,
      \count1_carry_i_5__7_1\ => \count1_carry_i_5__7_0\,
      \count[4]_i_15__2\ => \count[4]_i_15__2\,
      \count[4]_i_19__2\ => \count[4]_i_19__2\,
      \count[4]_i_19__2_0\ => \count[4]_i_19__2_0\,
      \count[4]_i_4__6_0\ => \count[4]_i_4__6\,
      \count[4]_i_4__6_1\ => \count[4]_i_4__6_0\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[4]_5\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[3]\ => logic_n_20,
      done_aux_reg_0 => dut_n_10,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[2]_0\ => logic_n_4,
      \j_reg[2]_1\ => logic_n_5,
      \j_reg[2]_2\ => logic_n_6,
      \j_reg[2]_3\ => logic_n_7,
      \j_reg[2]_4\ => logic_n_22,
      \j_reg[2]_5\ => \j_reg[2]\,
      next_out_5 => next_out_5,
      valid => valid,
      valid_aux_reg_0(0) => logic_n_25
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
      D => \ce__0\,
      G => \reset_control_reg_i_1__4_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized5\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_3 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[2]\ : out STD_LOGIC;
    a_in_4 : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_1\ : out STD_LOGIC;
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_2\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_3\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]_4\ : out STD_LOGIC;
    \j_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \j_reg[2]_1\ : out STD_LOGIC;
    \j_reg[2]_2\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \count1_carry_i_4__5\ : in STD_LOGIC;
    \count1_carry_i_4__5_0\ : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count[4]_i_5__4\ : in STD_LOGIC;
    \count1_carry__1\ : in STD_LOGIC;
    \count[4]_i_5__3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry_i_15__1\ : in STD_LOGIC;
    \count1_carry_i_15__1_0\ : in STD_LOGIC;
    \count1_carry_i_28__0\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    a_in_3 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    next_out_4 : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized5\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized5\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized5\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^a_in_4\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \acks_out_reg_i_1__3_n_0\ : STD_LOGIC;
  signal \asout_array[3]_6\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__3_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_15 : STD_LOGIC;
  signal dut_n_16 : STD_LOGIC;
  signal dut_n_17 : STD_LOGIC;
  signal dut_n_18 : STD_LOGIC;
  signal dut_n_19 : STD_LOGIC;
  signal dut_n_20 : STD_LOGIC;
  signal dut_n_21 : STD_LOGIC;
  signal dut_n_22 : STD_LOGIC;
  signal dut_n_23 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal j_reg_2_sn_1 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal logic_n_20 : STD_LOGIC;
  signal logic_n_21 : STD_LOGIC;
  signal logic_n_22 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__5_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal valid : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__3\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__3\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  a_in_4(19 downto 0) <= \^a_in_4\(19 downto 0);
  \count_reg_reg[2]\(2 downto 0) <= \^count_reg_reg[2]\(2 downto 0);
  \j_reg[2]\ <= j_reg_2_sn_1;
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
      CE => logic_n_20,
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
      CE => logic_n_20,
      D => dut_n_23,
      Q => \ce__0\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_20,
      D => dut_n_22,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_20,
      D => logic_n_22,
      Q => \asout_array[3]_6\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_20,
      D => dut_n_21,
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
      G => logic_n_21,
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
      D => \^count_reg_reg[2]\(0),
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
      D => \^count_reg_reg[2]\(1),
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
      D => \^count_reg_reg[2]\(2),
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
      G => \ce_reg_i_1__3_n_0\,
      GE => '1',
      Q => ce
    );
\ce_reg_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => \ce_reg_i_1__3_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_5
     port map (
      D(2) => dut_n_21,
      D(1) => dut_n_22,
      D(0) => dut_n_23,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[3]_6\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 3) => u_i(4 downto 3),
      Q(2 downto 0) => \^count_reg_reg[2]\(2 downto 0),
      S(2) => dut_n_8,
      S(1) => dut_n_9,
      S(0) => dut_n_10,
      clk => clk,
      \count1_carry__1\ => \count1_carry__1\,
      \count1_carry__1_0\(1) => j_reg(2),
      \count1_carry__1_0\(0) => \^q\(1),
      \count1_carry__1_1\ => logic_n_15,
      \count1_carry_i_4__5\ => \count1_carry_i_4__5\,
      \count1_carry_i_4__5_0\ => \count1_carry_i_4__5_0\,
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg_reg[0]_0\ => dut_n_6,
      \count_reg_reg[0]_1\ => dut_n_20,
      \count_reg_reg[0]_2\(0) => \count_reg_reg[0]\(0),
      \count_reg_reg[1]_0\ => dut_n_0,
      \count_reg_reg[2]_0\ => dut_n_11,
      \count_reg_reg[2]_1\ => dut_n_19,
      \count_reg_reg[3]_0\ => dut_n_7,
      done_aux_reg => done_aux_reg,
      done_aux_reg_0 => done_aux_reg_0,
      done_aux_reg_1 => logic_n_16,
      \j_reg[2]\(3) => dut_n_12,
      \j_reg[2]\(2) => dut_n_13,
      \j_reg[2]\(1) => dut_n_14,
      \j_reg[2]\(0) => dut_n_15,
      \j_reg[2]_0\(2) => dut_n_16,
      \j_reg[2]_0\(1) => dut_n_17,
      \j_reg[2]_0\(0) => dut_n_18,
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized5\
     port map (
      AR(0) => reset_control,
      D(2 downto 1) => u_i(4 downto 3),
      D(0) => \^count_reg_reg[2]\(2),
      E(0) => logic_n_20,
      \FSM_onehot_state_reg[1]\ => logic_n_21,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state_reg[3]_0\,
      \FSM_onehot_state_reg[3]_0\ => \FSM_onehot_state_reg[3]_1\,
      \FSM_onehot_state_reg[3]_1\ => \FSM_onehot_state_reg[3]_2\,
      \FSM_onehot_state_reg[3]_2\ => \FSM_onehot_state_reg[3]_3\,
      \FSM_onehot_state_reg[3]_3\ => \FSM_onehot_state_reg[3]_4\,
      Q(2) => j_reg(2),
      Q(1 downto 0) => \^q\(1 downto 0),
      S(2) => dut_n_8,
      S(1) => dut_n_9,
      S(0) => dut_n_10,
      a_in_3(0) => a_in_3(14),
      a_in_4(14 downto 0) => \^a_in_4\(14 downto 0),
      clk => clk,
      count1_carry_0 => dut_n_6,
      count1_carry_1 => dut_n_20,
      count1_carry_2 => dut_n_0,
      \count1_carry__0_0\(2) => dut_n_16,
      \count1_carry__0_0\(1) => dut_n_17,
      \count1_carry__0_0\(0) => dut_n_18,
      \count1_carry__1_0\(3) => dut_n_12,
      \count1_carry__1_0\(2) => dut_n_13,
      \count1_carry__1_0\(1) => dut_n_14,
      \count1_carry__1_0\(0) => dut_n_15,
      \count1_carry__1_i_1__3\ => \count_reg[0]\,
      \count1_carry__1_i_1__3_0\ => \count1_carry__1\,
      \count1_carry_i_15__1\ => \count1_carry_i_15__1\,
      \count1_carry_i_15__1_0\ => \count1_carry_i_15__1_0\,
      \count1_carry_i_28__0\ => \count1_carry_i_28__0\,
      \count1_carry_i_4__5_0\ => done_aux_reg,
      \count1_carry_i_4__5_1\ => done_aux_reg_0,
      \count[4]_i_5__3\(2 downto 0) => \count[4]_i_5__3\(2 downto 0),
      \count[4]_i_5__3_0\(4 downto 0) => \^a_in_4\(19 downto 15),
      \count[4]_i_5__4_0\ => \count[4]_i_5__4\,
      \count_reg[0]_0\ => dut_n_7,
      \count_reg[0]_1\ => dut_n_11,
      \count_reg[0]_2\ => \count_reg[0]_0\,
      \count_reg_reg[0]\(4) => nexts_out,
      \count_reg_reg[0]\(3) => \asout_array[3]_6\,
      \count_reg_reg[0]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]\(1) => \ce__0\,
      \count_reg_reg[0]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[3]\ => logic_n_15,
      \count_reg_reg[4]\ => logic_n_16,
      done_aux_reg_0 => dut_n_19,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      \j_reg[0]_2\ => \j_reg[0]_1\,
      \j_reg[1]_0\ => \j_reg[1]\,
      \j_reg[1]_1\ => \j_reg[1]_0\,
      \j_reg[1]_2\(0) => D(0),
      \j_reg[2]_0\ => j_reg_2_sn_1,
      \j_reg[2]_1\ => \j_reg[2]_0\,
      \j_reg[2]_2\ => \j_reg[2]_1\,
      \j_reg[2]_3\ => \j_reg[2]_2\,
      next_out_4 => next_out_4,
      valid => valid,
      valid_aux_reg_0(0) => logic_n_22
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
      D => \ce__0\,
      G => \reset_control_reg_i_1__5_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized6\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_2 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \j_reg[0]\ : out STD_LOGIC;
    \j_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_0\ : out STD_LOGIC;
    \j_reg[0]_1\ : out STD_LOGIC;
    \count_reg_reg[0]_1\ : out STD_LOGIC;
    \j_reg[0]_2\ : out STD_LOGIC;
    \j_reg[0]_3\ : out STD_LOGIC;
    a_in_3 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \j_reg[0]_4\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count1_carry__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    \count1_carry_i_5__5\ : in STD_LOGIC;
    \count1_carry__1_i_3__3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    a_in_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \count[4]_i_3__2\ : in STD_LOGIC;
    \count1_carry_i_10__7\ : in STD_LOGIC;
    \count[4]_i_5__4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count1_carry_i_13__4\ : in STD_LOGIC;
    \count1_carry_i_13__4_0\ : in STD_LOGIC;
    count1_carry : in STD_LOGIC;
    count1_carry_0 : in STD_LOGIC;
    \count[4]_i_3__2_0\ : in STD_LOGIC;
    next_out_3 : in STD_LOGIC;
    done_aux_reg : in STD_LOGIC;
    \count1_carry_i_4__6\ : in STD_LOGIC;
    nRst : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized6\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized6\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized6\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^a_in_3\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \acks_out_reg_i_1__1_n_0\ : STD_LOGIC;
  signal \asout_array[2]_7\ : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal \ce__0\ : STD_LOGIC;
  signal \ce_reg_i_1__1_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[0]\ : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal logic_n_14 : STD_LOGIC;
  signal logic_n_15 : STD_LOGIC;
  signal logic_n_16 : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__6_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 to 4 );
  signal valid : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acks_out_reg_i_1__1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of \ce_reg_i_1__1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
  a_in_3(14 downto 0) <= \^a_in_3\(14 downto 0);
  \count_reg_reg[0]\ <= \^count_reg_reg[0]\;
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
      CE => logic_n_14,
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
      CE => logic_n_14,
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
      CE => logic_n_14,
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
      CE => logic_n_14,
      D => logic_n_16,
      Q => \asout_array[2]_7\,
      R => \FSM_onehot_state_reg[0]_0\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_14,
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
      D => \acks_out_reg_i_1__1_n_0\,
      G => logic_n_15,
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
      D => \^q\(3),
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
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => \ce_reg_i_1__1_n_0\
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_6
     port map (
      D(2) => dut_n_7,
      D(1) => dut_n_8,
      D(0) => dut_n_9,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[2]_7\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4) => u_i(4),
      Q(3 downto 0) => \^q\(3 downto 0),
      clk => clk,
      \count1_carry_i_5__5\ => \count1_carry_i_5__5\,
      \count[4]_i_3__2\ => \count[4]_i_3__2_0\,
      \count_reg_reg[0]_0\ => \^count_reg_reg[0]\,
      \count_reg_reg[0]_1\(0) => \count_reg_reg[0]_2\(0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]\,
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized6\
     port map (
      AR(0) => reset_control,
      CO(0) => CO(0),
      D(2) => u_i(4),
      D(1) => \^q\(2),
      D(0) => \^q\(0),
      E(0) => logic_n_14,
      \FSM_onehot_state_reg[1]\ => logic_n_15,
      Q(1 downto 0) => \j_reg[1]\(1 downto 0),
      S(2 downto 0) => S(2 downto 0),
      a_in_2(0) => a_in_2(9),
      a_in_3(9 downto 0) => \^a_in_3\(9 downto 0),
      clk => clk,
      count1_carry_0 => count1_carry,
      count1_carry_1 => \^count_reg_reg[0]\,
      count1_carry_2 => count1_carry_0,
      \count1_carry__0_0\(2 downto 0) => \count1_carry__0\(2 downto 0),
      \count1_carry__1_0\(3 downto 0) => \count1_carry__1\(3 downto 0),
      \count1_carry__1_i_3__3\(2 downto 0) => \count1_carry__1_i_3__3\(2 downto 0),
      \count1_carry_i_10__7\ => \count1_carry_i_10__7\,
      \count1_carry_i_12__4_0\(0) => D(0),
      \count1_carry_i_13__4_0\ => \count1_carry_i_13__4\,
      \count1_carry_i_13__4_1\ => \count1_carry_i_13__4_0\,
      \count1_carry_i_14__4_0\(4 downto 0) => \^a_in_3\(14 downto 10),
      \count1_carry_i_4__6_0\ => \count1_carry_i_5__5\,
      \count1_carry_i_4__6_1\ => \count1_carry_i_4__6\,
      \count1_carry_i_4__6_2\ => \count[4]_i_3__2_0\,
      \count[4]_i_3__2\ => \count[4]_i_3__2\,
      \count[4]_i_5__4\(1 downto 0) => \count[4]_i_5__4\(1 downto 0),
      \count_reg_reg[0]\ => \count_reg_reg[0]_0\,
      \count_reg_reg[0]_0\ => \count_reg_reg[0]_1\,
      \count_reg_reg[0]_1\(4) => nexts_out,
      \count_reg_reg[0]_1\(3) => \asout_array[2]_7\,
      \count_reg_reg[0]_1\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_1\(1) => \ce__0\,
      \count_reg_reg[0]_1\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      done_aux_reg_0 => done_aux_reg,
      \j_reg[0]_0\ => \j_reg[0]\,
      \j_reg[0]_1\ => \j_reg[0]_0\,
      \j_reg[0]_2\ => \j_reg[0]_1\,
      \j_reg[0]_3\ => \j_reg[0]_2\,
      \j_reg[0]_4\ => \j_reg[0]_3\,
      \j_reg[0]_5\ => \j_reg[0]_4\,
      \j_reg[1]_0\ => \j_reg[1]_0\,
      next_out_3 => next_out_3,
      valid => valid,
      valid_aux_reg_0(0) => logic_n_16
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
      D => \ce__0\,
      G => \reset_control_reg_i_1__6_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_nqueens_0_0_fsm__parameterized7\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_out_1 : out STD_LOGIC;
    \count_reg_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \j_reg[1]\ : out STD_LOGIC;
    \count_reg_reg[2]\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[2]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg_reg[0]\ : out STD_LOGIC;
    \j_reg[1]_0\ : out STD_LOGIC;
    a_in_2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \j_reg[0]\ : out STD_LOGIC;
    \count_reg_reg[3]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_s : out STD_LOGIC;
    \ack_in_1__0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \count[4]_i_3__2\ : in STD_LOGIC;
    ack_in_1 : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    done_aux_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count1_carry__1\ : in STD_LOGIC;
    done_aux_reg_0 : in STD_LOGIC;
    \count1_carry_i_19__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    done_aux_reg_1 : in STD_LOGIC;
    next_out_2 : in STD_LOGIC;
    nRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_nqueens_0_0_fsm__parameterized7\ : entity is "fsm";
end \design_1_top_nqueens_0_0_fsm__parameterized7\;

architecture STRUCTURE of \design_1_top_nqueens_0_0_fsm__parameterized7\ is
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
  signal count1 : STD_LOGIC;
  signal dut_n_10 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
  signal dut_n_14 : STD_LOGIC;
  signal dut_n_15 : STD_LOGIC;
  signal dut_n_16 : STD_LOGIC;
  signal dut_n_17 : STD_LOGIC;
  signal dut_n_18 : STD_LOGIC;
  signal dut_n_19 : STD_LOGIC;
  signal dut_n_5 : STD_LOGIC;
  signal dut_n_6 : STD_LOGIC;
  signal dut_n_7 : STD_LOGIC;
  signal dut_n_8 : STD_LOGIC;
  signal dut_n_9 : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal j_reg_0_sn_1 : STD_LOGIC;
  signal logic_n_20 : STD_LOGIC;
  signal logic_n_21 : STD_LOGIC;
  signal logic_n_22 : STD_LOGIC;
  signal \^next_out_1\ : STD_LOGIC;
  signal nexts_out : STD_LOGIC;
  signal reset_control : STD_LOGIC;
  signal \reset_control_reg_i_1__7_n_0\ : STD_LOGIC;
  signal u_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal valid : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st0_reset:00001,st2_validation:00100,st3_writefifo:01000,st4_done:10000,st1_new_candidate:00010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack_in_1_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ack_in_1_reg_i_2 : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of acks_out_reg : label is "LD";
  attribute SOFT_HLUTNM of acks_out_reg_i_1 : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \asout_array_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of ce_reg : label is "LD";
  attribute SOFT_HLUTNM of ce_reg_i_1 : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of nexts_out_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of reset_control_reg : label is "LD";
begin
  AR(0) <= \^ar\(0);
  a_in_2(9 downto 0) <= \^a_in_2\(9 downto 0);
  \j_reg[0]\ <= j_reg_0_sn_1;
  next_out_1 <= \^next_out_1\;
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
      CE => logic_n_20,
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
      CE => logic_n_20,
      D => dut_n_19,
      Q => \ce__0\,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_20,
      D => dut_n_18,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_20,
      D => logic_n_22,
      Q => \asout_array[1]_8\,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => logic_n_20,
      D => dut_n_17,
      Q => nexts_out,
      R => \FSM_onehot_state[4]_i_1__7_n_0\
    );
ack_in_1_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^next_out_1\,
      I1 => ack_in_1,
      O => \ack_in_1__0\
    );
ack_in_1_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^next_out_1\,
      I1 => ack_in_1,
      I2 => \count_reg_reg[0]_0\,
      O => \FSM_onehot_state_reg[4]_0\
    );
acks_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acks_out_reg_i_1_n_0,
      G => logic_n_21,
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
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => nexts_out,
      O => ce_reg_i_1_n_0
    );
done_s_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg_reg[0]_0\,
      I1 => \^next_out_1\,
      O => done_s
    );
dut: entity work.design_1_top_nqueens_0_0_up_counter_7
     port map (
      CO(0) => count1,
      D(2) => dut_n_17,
      D(1) => dut_n_18,
      D(0) => dut_n_19,
      E(0) => ce,
      \FSM_onehot_state_reg[4]\(3) => \asout_array[1]_8\,
      \FSM_onehot_state_reg[4]\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \FSM_onehot_state_reg[4]\(1) => \ce__0\,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Q(4 downto 0) => u_i(4 downto 0),
      S(2) => dut_n_5,
      S(1) => dut_n_6,
      S(0) => dut_n_7,
      ack_in_1 => ack_in_1,
      clk => clk,
      \count_reg_reg[3]_0\ => dut_n_16,
      \count_reg_reg[4]_0\(3) => dut_n_8,
      \count_reg_reg[4]_0\(2) => dut_n_9,
      \count_reg_reg[4]_0\(1) => dut_n_10,
      \count_reg_reg[4]_0\(0) => dut_n_11,
      \count_reg_reg[4]_1\(3) => dut_n_12,
      \count_reg_reg[4]_1\(2) => dut_n_13,
      \count_reg_reg[4]_1\(1) => dut_n_14,
      \count_reg_reg[4]_1\(0) => dut_n_15,
      done_aux_reg(4 downto 0) => Q(4 downto 0),
      j_reg(0) => j_reg(0),
      valid => valid
    );
logic: entity work.\design_1_top_nqueens_0_0_ctrl_logic__parameterized7\
     port map (
      AR(0) => reset_control,
      CO(0) => count1,
      D(0) => logic_n_22,
      E(0) => logic_n_20,
      \FSM_onehot_state_reg[1]\ => logic_n_21,
      Q(4 downto 0) => \^a_in_2\(9 downto 5),
      S(2) => dut_n_5,
      S(1) => dut_n_6,
      S(0) => dut_n_7,
      a_in_2(4 downto 0) => \^a_in_2\(4 downto 0),
      clk => clk,
      \count1_carry__0_0\(3) => dut_n_12,
      \count1_carry__0_0\(2) => dut_n_13,
      \count1_carry__0_0\(1) => dut_n_14,
      \count1_carry__0_0\(0) => dut_n_15,
      \count1_carry__1_0\(3) => dut_n_8,
      \count1_carry__1_0\(2) => dut_n_9,
      \count1_carry__1_0\(1) => dut_n_10,
      \count1_carry__1_0\(0) => dut_n_11,
      \count1_carry__1_1\ => \count1_carry__1\,
      \count1_carry_i_19__1_0\(1 downto 0) => \count1_carry_i_19__1\(1 downto 0),
      \count[4]_i_3__2_0\ => \count[4]_i_3__2\,
      \count_reg_reg[0]\ => \count_reg_reg[0]\,
      \count_reg_reg[0]_0\(4) => nexts_out,
      \count_reg_reg[0]_0\(3) => \asout_array[1]_8\,
      \count_reg_reg[0]_0\(2) => \FSM_onehot_state_reg_n_0_[2]\,
      \count_reg_reg[0]_0\(1) => \ce__0\,
      \count_reg_reg[0]_0\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \count_reg_reg[1]\ => \count_reg_reg[1]\,
      \count_reg_reg[2]\(2 downto 0) => S(2 downto 0),
      \count_reg_reg[2]_0\ => \count_reg_reg[2]\,
      \count_reg_reg[2]_1\(3 downto 0) => \count_reg_reg[2]_0\(3 downto 0),
      \count_reg_reg[2]_2\(2 downto 0) => \count_reg_reg[2]_1\(2 downto 0),
      \count_reg_reg[3]\ => \count_reg_reg[3]\,
      done_aux_reg_0(3 downto 0) => done_aux_reg(3 downto 0),
      done_aux_reg_1 => done_aux_reg_0,
      done_aux_reg_2 => dut_n_16,
      done_aux_reg_3(0) => CO(0),
      done_aux_reg_4 => done_aux_reg_1,
      j_reg(0) => j_reg(0),
      \j_reg[0]_0\ => j_reg_0_sn_1,
      \j_reg[1]\ => \j_reg[1]\,
      \j_reg[1]_0\ => \j_reg[1]_0\,
      next_out_2 => next_out_2,
      valid => valid
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
      Q => \^next_out_1\
    );
reset_control_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ce__0\,
      G => \reset_control_reg_i_1__7_n_0\,
      GE => '1',
      Q => reset_control
    );
\reset_control_reg_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \ce__0\,
      O => \reset_control_reg_i_1__7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_nqueens_0_0_top_nqueens is
  port (
    flag : out STD_LOGIC;
    done : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    nRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_nqueens_0_0_top_nqueens : entity is "top_nqueens";
end design_1_top_nqueens_0_0_top_nqueens;

architecture STRUCTURE of design_1_top_nqueens_0_0_top_nqueens is
  signal a_in_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \a_in_1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \a_in_1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal a_in_2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal a_in_3 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal a_in_4 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal a_in_5 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal a_in_6 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal a_in_7 : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal a_in_8 : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal a_in_9 : STD_LOGIC_VECTOR ( 44 downto 43 );
  signal ack_in_1 : STD_LOGIC;
  signal \ack_in_1__0\ : STD_LOGIC;
  signal ack_in_2 : STD_LOGIC;
  signal ack_in_3 : STD_LOGIC;
  signal ack_in_4 : STD_LOGIC;
  signal ack_in_5 : STD_LOGIC;
  signal ack_in_6 : STD_LOGIC;
  signal ack_in_7 : STD_LOGIC;
  signal ack_in_8 : STD_LOGIC;
  signal ack_in_9 : STD_LOGIC;
  signal \^counter\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \counter_s_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal done_s : STD_LOGIC;
  signal \^flag\ : STD_LOGIC;
  signal flag_s_reg_i_1_n_0 : STD_LOGIC;
  signal fsm_1_n_10 : STD_LOGIC;
  signal fsm_1_n_11 : STD_LOGIC;
  signal fsm_1_n_12 : STD_LOGIC;
  signal fsm_1_n_13 : STD_LOGIC;
  signal fsm_1_n_14 : STD_LOGIC;
  signal fsm_1_n_15 : STD_LOGIC;
  signal fsm_1_n_16 : STD_LOGIC;
  signal fsm_1_n_17 : STD_LOGIC;
  signal fsm_1_n_2 : STD_LOGIC;
  signal fsm_1_n_28 : STD_LOGIC;
  signal fsm_1_n_29 : STD_LOGIC;
  signal fsm_1_n_3 : STD_LOGIC;
  signal fsm_1_n_30 : STD_LOGIC;
  signal fsm_1_n_4 : STD_LOGIC;
  signal fsm_1_n_5 : STD_LOGIC;
  signal fsm_1_n_6 : STD_LOGIC;
  signal fsm_1_n_7 : STD_LOGIC;
  signal fsm_1_n_8 : STD_LOGIC;
  signal fsm_1_n_9 : STD_LOGIC;
  signal fsm_2_n_11 : STD_LOGIC;
  signal fsm_2_n_12 : STD_LOGIC;
  signal fsm_2_n_13 : STD_LOGIC;
  signal fsm_2_n_14 : STD_LOGIC;
  signal fsm_2_n_15 : STD_LOGIC;
  signal fsm_2_n_16 : STD_LOGIC;
  signal fsm_2_n_3 : STD_LOGIC;
  signal fsm_2_n_32 : STD_LOGIC;
  signal fsm_2_n_33 : STD_LOGIC;
  signal fsm_2_n_34 : STD_LOGIC;
  signal fsm_2_n_35 : STD_LOGIC;
  signal fsm_2_n_36 : STD_LOGIC;
  signal fsm_2_n_8 : STD_LOGIC;
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
  signal fsm_3_n_38 : STD_LOGIC;
  signal fsm_3_n_40 : STD_LOGIC;
  signal fsm_3_n_41 : STD_LOGIC;
  signal fsm_3_n_42 : STD_LOGIC;
  signal fsm_3_n_7 : STD_LOGIC;
  signal fsm_4_n_31 : STD_LOGIC;
  signal fsm_4_n_32 : STD_LOGIC;
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
  signal fsm_4_n_45 : STD_LOGIC;
  signal fsm_4_n_5 : STD_LOGIC;
  signal fsm_5_n_2 : STD_LOGIC;
  signal fsm_5_n_3 : STD_LOGIC;
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
  signal fsm_5_n_45 : STD_LOGIC;
  signal fsm_5_n_46 : STD_LOGIC;
  signal fsm_5_n_47 : STD_LOGIC;
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
  signal fsm_7_n_10 : STD_LOGIC;
  signal fsm_7_n_11 : STD_LOGIC;
  signal fsm_7_n_12 : STD_LOGIC;
  signal fsm_7_n_13 : STD_LOGIC;
  signal fsm_7_n_14 : STD_LOGIC;
  signal fsm_7_n_15 : STD_LOGIC;
  signal fsm_7_n_16 : STD_LOGIC;
  signal fsm_7_n_2 : STD_LOGIC;
  signal fsm_7_n_57 : STD_LOGIC;
  signal fsm_7_n_58 : STD_LOGIC;
  signal fsm_7_n_59 : STD_LOGIC;
  signal fsm_7_n_6 : STD_LOGIC;
  signal fsm_7_n_60 : STD_LOGIC;
  signal fsm_7_n_61 : STD_LOGIC;
  signal fsm_7_n_62 : STD_LOGIC;
  signal fsm_7_n_63 : STD_LOGIC;
  signal fsm_7_n_64 : STD_LOGIC;
  signal fsm_7_n_7 : STD_LOGIC;
  signal fsm_7_n_8 : STD_LOGIC;
  signal fsm_7_n_9 : STD_LOGIC;
  signal fsm_8_n_12 : STD_LOGIC;
  signal fsm_8_n_13 : STD_LOGIC;
  signal fsm_8_n_14 : STD_LOGIC;
  signal fsm_8_n_15 : STD_LOGIC;
  signal fsm_8_n_16 : STD_LOGIC;
  signal fsm_8_n_17 : STD_LOGIC;
  signal fsm_8_n_18 : STD_LOGIC;
  signal fsm_8_n_19 : STD_LOGIC;
  signal fsm_8_n_20 : STD_LOGIC;
  signal fsm_8_n_21 : STD_LOGIC;
  signal fsm_8_n_22 : STD_LOGIC;
  signal fsm_8_n_23 : STD_LOGIC;
  signal fsm_8_n_24 : STD_LOGIC;
  signal fsm_8_n_25 : STD_LOGIC;
  signal fsm_8_n_26 : STD_LOGIC;
  signal fsm_8_n_27 : STD_LOGIC;
  signal fsm_8_n_28 : STD_LOGIC;
  signal fsm_8_n_29 : STD_LOGIC;
  signal fsm_8_n_30 : STD_LOGIC;
  signal fsm_8_n_31 : STD_LOGIC;
  signal fsm_8_n_32 : STD_LOGIC;
  signal fsm_8_n_33 : STD_LOGIC;
  signal fsm_8_n_34 : STD_LOGIC;
  signal fsm_8_n_7 : STD_LOGIC;
  signal fsm_9_n_1 : STD_LOGIC;
  signal fsm_9_n_10 : STD_LOGIC;
  signal fsm_9_n_4 : STD_LOGIC;
  signal fsm_9_n_5 : STD_LOGIC;
  signal fsm_9_n_6 : STD_LOGIC;
  signal fsm_9_n_7 : STD_LOGIC;
  signal fsm_9_n_8 : STD_LOGIC;
  signal fsm_9_n_9 : STD_LOGIC;
  signal \logic/count1\ : STD_LOGIC;
  signal \logic/j_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_reg_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \logic/j_reg_2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \logic/j_reg_3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \logic/j_reg_4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \logic/j_reg_6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal next_out_1 : STD_LOGIC;
  signal next_out_2 : STD_LOGIC;
  signal next_out_3 : STD_LOGIC;
  signal next_out_4 : STD_LOGIC;
  signal next_out_5 : STD_LOGIC;
  signal next_out_6 : STD_LOGIC;
  signal next_out_7 : STD_LOGIC;
  signal next_out_8 : STD_LOGIC;
  signal next_out_9 : STD_LOGIC;
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal plusOp_9 : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal u_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_i_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal u_i_5 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_in_1_reg[0]_i_1\ : label is "soft_lutpair150";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \a_in_1_reg[1]_i_1\ : label is "soft_lutpair150";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \a_in_1_reg[2]_i_1\ : label is "soft_lutpair147";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \a_in_1_reg[3]_i_1\ : label is "soft_lutpair147";
  attribute XILINX_LEGACY_PRIM of \a_in_1_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \a_in_1_reg[4]_i_1\ : label is "soft_lutpair146";
  attribute XILINX_LEGACY_PRIM of ack_in_1_reg : label is "LD";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \counter_s_reg[10]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[10]_i_1\ : label is "soft_lutpair145";
  attribute OPT_MODIFIED of \counter_s_reg[1]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[1]\ : label is "LD";
  attribute OPT_MODIFIED of \counter_s_reg[2]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[2]_i_1\ : label is "soft_lutpair148";
  attribute OPT_MODIFIED of \counter_s_reg[3]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[3]_i_1\ : label is "soft_lutpair148";
  attribute OPT_MODIFIED of \counter_s_reg[4]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[4]_i_1\ : label is "soft_lutpair144";
  attribute OPT_MODIFIED of \counter_s_reg[5]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[5]_i_1\ : label is "soft_lutpair144";
  attribute OPT_MODIFIED of \counter_s_reg[6]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[6]\ : label is "LD";
  attribute OPT_MODIFIED of \counter_s_reg[7]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[7]_i_1\ : label is "soft_lutpair149";
  attribute OPT_MODIFIED of \counter_s_reg[8]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[8]_i_1\ : label is "soft_lutpair149";
  attribute OPT_MODIFIED of \counter_s_reg[9]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \counter_s_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_s_reg[9]_i_1\ : label is "soft_lutpair145";
  attribute XILINX_LEGACY_PRIM of done_s_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of flag_s_reg : label is "LD";
  attribute SOFT_HLUTNM of flag_s_reg_i_1 : label is "soft_lutpair146";
begin
  counter(9 downto 0) <= \^counter\(9 downto 0);
  flag <= \^flag\;
\a_in_1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_in_1_reg[0]_i_1_n_0\,
      G => \a_in_1_reg[4]_i_2_n_0\,
      GE => '1',
      Q => a_in_1(0)
    );
\a_in_1_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a_in_1(0),
      O => \a_in_1_reg[0]_i_1_n_0\
    );
\a_in_1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_in_1_reg[1]_i_1_n_0\,
      G => \a_in_1_reg[4]_i_2_n_0\,
      GE => '1',
      Q => a_in_1(1)
    );
\a_in_1_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_in_1(0),
      I1 => a_in_1(1),
      O => \a_in_1_reg[1]_i_1_n_0\
    );
\a_in_1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_in_1_reg[2]_i_1_n_0\,
      G => \a_in_1_reg[4]_i_2_n_0\,
      GE => '1',
      Q => a_in_1(2)
    );
\a_in_1_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => a_in_1(2),
      I1 => a_in_1(1),
      I2 => a_in_1(0),
      O => \a_in_1_reg[2]_i_1_n_0\
    );
\a_in_1_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_in_1_reg[3]_i_1_n_0\,
      G => \a_in_1_reg[4]_i_2_n_0\,
      GE => '1',
      Q => a_in_1(3)
    );
\a_in_1_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => a_in_1(3),
      I1 => a_in_1(2),
      I2 => a_in_1(0),
      I3 => a_in_1(1),
      O => \a_in_1_reg[3]_i_1_n_0\
    );
\a_in_1_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \a_in_1_reg[4]_i_1_n_0\,
      G => \a_in_1_reg[4]_i_2_n_0\,
      GE => '1',
      Q => a_in_1(4)
    );
\a_in_1_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => a_in_1(4),
      I1 => a_in_1(1),
      I2 => a_in_1(0),
      I3 => a_in_1(2),
      I4 => a_in_1(3),
      O => \a_in_1_reg[4]_i_1_n_0\
    );
\a_in_1_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ack_in_1,
      I1 => \^flag\,
      O => \a_in_1_reg[4]_i_2_n_0\
    );
ack_in_1_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \ack_in_1__0\,
      G => fsm_1_n_3,
      GE => '1',
      Q => ack_in_1
    );
\counter_s_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(10),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(9)
    );
\counter_s_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^counter\(7),
      I1 => \counter_s_reg[10]_i_3_n_0\,
      I2 => \^counter\(6),
      I3 => \^counter\(8),
      I4 => \^counter\(9),
      O => plusOp_9(10)
    );
\counter_s_reg[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(5),
      I1 => \^counter\(3),
      I2 => \^counter\(1),
      I3 => \^counter\(0),
      I4 => \^counter\(2),
      I5 => \^counter\(4),
      O => \counter_s_reg[10]_i_3_n_0\
    );
\counter_s_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(1),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(0)
    );
\counter_s_reg[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter\(0),
      O => plusOp_9(1)
    );
\counter_s_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(2),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(1)
    );
\counter_s_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counter\(0),
      I1 => \^counter\(1),
      O => plusOp_9(2)
    );
\counter_s_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(3),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(2)
    );
\counter_s_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^counter\(0),
      I1 => \^counter\(1),
      I2 => \^counter\(2),
      O => plusOp_9(3)
    );
\counter_s_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(4),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(3)
    );
\counter_s_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^counter\(1),
      I1 => \^counter\(0),
      I2 => \^counter\(2),
      I3 => \^counter\(3),
      O => plusOp_9(4)
    );
\counter_s_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(5),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(4)
    );
\counter_s_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^counter\(2),
      I1 => \^counter\(0),
      I2 => \^counter\(1),
      I3 => \^counter\(3),
      I4 => \^counter\(4),
      O => plusOp_9(5)
    );
\counter_s_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(6),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(5)
    );
\counter_s_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^counter\(3),
      I1 => \^counter\(1),
      I2 => \^counter\(0),
      I3 => \^counter\(2),
      I4 => \^counter\(4),
      I5 => \^counter\(5),
      O => plusOp_9(6)
    );
\counter_s_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(7),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(6)
    );
\counter_s_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_s_reg[10]_i_3_n_0\,
      I1 => \^counter\(6),
      O => plusOp_9(7)
    );
\counter_s_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(8),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(7)
    );
\counter_s_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_s_reg[10]_i_3_n_0\,
      I1 => \^counter\(6),
      I2 => \^counter\(7),
      O => plusOp_9(8)
    );
\counter_s_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => plusOp_9(9),
      G => fsm_9_n_10,
      GE => '1',
      Q => \^counter\(8)
    );
\counter_s_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^counter\(6),
      I1 => \counter_s_reg[10]_i_3_n_0\,
      I2 => \^counter\(7),
      I3 => \^counter\(8),
      O => plusOp_9(9)
    );
done_s_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => next_out_1,
      G => done_s,
      GE => '1',
      Q => done
    );
flag_s_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => '1',
      G => flag_s_reg_i_1_n_0,
      GE => '1',
      Q => \^flag\
    );
flag_s_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => a_in_1(1),
      I1 => a_in_1(0),
      I2 => a_in_1(2),
      I3 => a_in_1(4),
      I4 => a_in_1(3),
      O => flag_s_reg_i_1_n_0
    );
fsm_1: entity work.\design_1_top_nqueens_0_0_fsm__parameterized7\
     port map (
      AR(0) => ack_in_2,
      CO(0) => \logic/count1\,
      \FSM_onehot_state_reg[4]_0\ => fsm_1_n_3,
      Q(4 downto 0) => a_in_1(4 downto 0),
      S(2) => fsm_1_n_4,
      S(1) => fsm_1_n_5,
      S(0) => fsm_1_n_6,
      SR(0) => fsm_1_n_30,
      a_in_2(9 downto 0) => a_in_2(9 downto 0),
      ack_in_1 => ack_in_1,
      \ack_in_1__0\ => \ack_in_1__0\,
      clk => clk,
      \count1_carry__1\ => fsm_2_n_8,
      \count1_carry_i_19__1\(1 downto 0) => \logic/j_reg\(1 downto 0),
      \count[4]_i_3__2\ => fsm_2_n_3,
      \count_reg_reg[0]\ => fsm_1_n_16,
      \count_reg_reg[0]_0\ => \^flag\,
      \count_reg_reg[1]\ => fsm_1_n_2,
      \count_reg_reg[2]\ => fsm_1_n_8,
      \count_reg_reg[2]_0\(3) => fsm_1_n_9,
      \count_reg_reg[2]_0\(2) => fsm_1_n_10,
      \count_reg_reg[2]_0\(1) => fsm_1_n_11,
      \count_reg_reg[2]_0\(0) => fsm_1_n_12,
      \count_reg_reg[2]_1\(2) => fsm_1_n_13,
      \count_reg_reg[2]_1\(1) => fsm_1_n_14,
      \count_reg_reg[2]_1\(0) => fsm_1_n_15,
      \count_reg_reg[3]\ => fsm_1_n_29,
      done_aux_reg(3 downto 0) => u_i(3 downto 0),
      done_aux_reg_0 => fsm_2_n_16,
      done_aux_reg_1 => fsm_2_n_35,
      done_s => done_s,
      \j_reg[0]\ => fsm_1_n_28,
      \j_reg[1]\ => fsm_1_n_7,
      \j_reg[1]_0\ => fsm_1_n_17,
      nRst => nRst,
      next_out_1 => next_out_1,
      next_out_2 => next_out_2
    );
fsm_2: entity work.\design_1_top_nqueens_0_0_fsm__parameterized6\
     port map (
      AR(0) => ack_in_3,
      CO(0) => \logic/count1\,
      D(0) => \p_0_in__5\(1),
      \FSM_onehot_state_reg[0]_0\(0) => fsm_1_n_30,
      Q(3 downto 0) => u_i(3 downto 0),
      S(2) => fsm_1_n_4,
      S(1) => fsm_1_n_5,
      S(0) => fsm_1_n_6,
      SR(0) => fsm_2_n_36,
      a_in_2(9 downto 0) => a_in_2(9 downto 0),
      a_in_3(14 downto 0) => a_in_3(14 downto 0),
      clk => clk,
      count1_carry => fsm_1_n_8,
      count1_carry_0 => fsm_1_n_2,
      \count1_carry__0\(2) => fsm_1_n_13,
      \count1_carry__0\(1) => fsm_1_n_14,
      \count1_carry__0\(0) => fsm_1_n_15,
      \count1_carry__1\(3) => fsm_1_n_9,
      \count1_carry__1\(2) => fsm_1_n_10,
      \count1_carry__1\(1) => fsm_1_n_11,
      \count1_carry__1\(0) => fsm_1_n_12,
      \count1_carry__1_i_3__3\(2 downto 0) => u_i_0(2 downto 0),
      \count1_carry_i_10__7\ => fsm_3_n_38,
      \count1_carry_i_13__4\ => fsm_3_n_40,
      \count1_carry_i_13__4_0\ => fsm_3_n_41,
      \count1_carry_i_4__6\ => fsm_1_n_16,
      \count1_carry_i_5__5\ => fsm_1_n_17,
      \count[4]_i_3__2\ => fsm_1_n_28,
      \count[4]_i_3__2_0\ => fsm_1_n_7,
      \count[4]_i_5__4\(1 downto 0) => \logic/j_reg_1\(1 downto 0),
      \count_reg_reg[0]\ => fsm_2_n_3,
      \count_reg_reg[0]_0\ => fsm_2_n_11,
      \count_reg_reg[0]_1\ => fsm_2_n_14,
      \count_reg_reg[0]_2\(0) => ack_in_2,
      \count_reg_reg[1]\ => fsm_2_n_34,
      \count_reg_reg[2]\ => fsm_2_n_35,
      done_aux_reg => fsm_1_n_29,
      \j_reg[0]\ => fsm_2_n_8,
      \j_reg[0]_0\ => fsm_2_n_12,
      \j_reg[0]_1\ => fsm_2_n_13,
      \j_reg[0]_2\ => fsm_2_n_15,
      \j_reg[0]_3\ => fsm_2_n_16,
      \j_reg[0]_4\ => fsm_2_n_32,
      \j_reg[1]\(1 downto 0) => \logic/j_reg\(1 downto 0),
      \j_reg[1]_0\ => fsm_2_n_33,
      nRst => nRst,
      next_out_2 => next_out_2,
      next_out_3 => next_out_3
    );
fsm_3: entity work.\design_1_top_nqueens_0_0_fsm__parameterized5\
     port map (
      AR(0) => ack_in_4,
      D(0) => \p_0_in__5\(1),
      \FSM_onehot_state_reg[0]_0\(0) => fsm_2_n_36,
      \FSM_onehot_state_reg[3]_0\ => fsm_3_n_30,
      \FSM_onehot_state_reg[3]_1\ => fsm_3_n_31,
      \FSM_onehot_state_reg[3]_2\ => fsm_3_n_34,
      \FSM_onehot_state_reg[3]_3\ => fsm_3_n_35,
      \FSM_onehot_state_reg[3]_4\ => fsm_3_n_37,
      Q(1 downto 0) => \logic/j_reg_1\(1 downto 0),
      SR(0) => fsm_3_n_42,
      a_in_3(14 downto 0) => a_in_3(14 downto 0),
      a_in_4(19 downto 0) => a_in_4(19 downto 0),
      clk => clk,
      \count1_carry__1\ => fsm_2_n_14,
      \count1_carry_i_15__1\ => fsm_4_n_44,
      \count1_carry_i_15__1_0\ => fsm_4_n_43,
      \count1_carry_i_28__0\ => fsm_4_n_42,
      \count1_carry_i_4__5\ => fsm_2_n_13,
      \count1_carry_i_4__5_0\ => fsm_2_n_12,
      \count[4]_i_5__3\(2 downto 0) => \logic/j_reg_2\(2 downto 0),
      \count[4]_i_5__4\ => fsm_2_n_34,
      \count_reg[0]\ => fsm_2_n_32,
      \count_reg[0]_0\ => fsm_2_n_33,
      \count_reg_reg[0]\(0) => ack_in_3,
      \count_reg_reg[2]\(2 downto 0) => u_i_0(2 downto 0),
      done_aux_reg => fsm_2_n_11,
      done_aux_reg_0 => fsm_2_n_15,
      \j_reg[0]\ => fsm_3_n_32,
      \j_reg[0]_0\ => fsm_3_n_33,
      \j_reg[0]_1\ => fsm_3_n_36,
      \j_reg[1]\ => fsm_3_n_28,
      \j_reg[1]_0\ => fsm_3_n_29,
      \j_reg[2]\ => fsm_3_n_7,
      \j_reg[2]_0\ => fsm_3_n_38,
      \j_reg[2]_1\ => fsm_3_n_40,
      \j_reg[2]_2\ => fsm_3_n_41,
      nRst => nRst,
      next_out_3 => next_out_3,
      next_out_4 => next_out_4
    );
fsm_4: entity work.\design_1_top_nqueens_0_0_fsm__parameterized4\
     port map (
      AR(0) => ack_in_5,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_3_n_42,
      \FSM_onehot_state_reg[3]_0\ => fsm_4_n_5,
      \FSM_onehot_state_reg[3]_1\ => fsm_4_n_31,
      \FSM_onehot_state_reg[3]_10\ => fsm_4_n_41,
      \FSM_onehot_state_reg[3]_2\ => fsm_4_n_32,
      \FSM_onehot_state_reg[3]_3\ => fsm_4_n_33,
      \FSM_onehot_state_reg[3]_4\ => fsm_4_n_34,
      \FSM_onehot_state_reg[3]_5\ => fsm_4_n_35,
      \FSM_onehot_state_reg[3]_6\ => fsm_4_n_36,
      \FSM_onehot_state_reg[3]_7\ => fsm_4_n_38,
      \FSM_onehot_state_reg[3]_8\ => fsm_4_n_39,
      \FSM_onehot_state_reg[3]_9\ => fsm_4_n_40,
      Q(2 downto 0) => \logic/j_reg_2\(2 downto 0),
      SR(0) => fsm_4_n_45,
      a_in_4(19 downto 0) => a_in_4(19 downto 0),
      a_in_5(24 downto 0) => a_in_5(24 downto 0),
      clk => clk,
      \count1_carry__1_i_3__2\ => fsm_3_n_29,
      \count1_carry_i_13__6\ => fsm_3_n_28,
      \count1_carry_i_19__0\ => fsm_3_n_37,
      \count1_carry_i_19__0_0\ => fsm_3_n_34,
      \count1_carry_i_19__0_1\ => fsm_3_n_35,
      \count1_carry_i_19__0_2\ => fsm_3_n_33,
      \count1_carry_i_5__7\ => fsm_3_n_30,
      \count1_carry_i_5__7_0\ => fsm_3_n_36,
      \count1_carry_i_9__2\ => fsm_3_n_7,
      \count[4]_i_15__2\ => fsm_5_n_45,
      \count[4]_i_19__2\ => fsm_5_n_46,
      \count[4]_i_19__2_0\ => fsm_5_n_2,
      \count[4]_i_4__6\ => fsm_3_n_32,
      \count[4]_i_4__6_0\ => fsm_3_n_31,
      \count_reg_reg[0]\(0) => ack_in_4,
      \count_reg_reg[1]\ => fsm_4_n_37,
      \j_reg[0]\ => fsm_4_n_42,
      \j_reg[1]\ => fsm_4_n_44,
      \j_reg[2]\ => fsm_4_n_43,
      nRst => nRst,
      next_out_4 => next_out_4,
      next_out_5 => next_out_5
    );
fsm_5: entity work.\design_1_top_nqueens_0_0_fsm__parameterized3\
     port map (
      AR(0) => ack_in_6,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_4_n_45,
      \FSM_onehot_state_reg[3]_0\ => fsm_5_n_3,
      \FSM_onehot_state_reg[3]_1\ => fsm_5_n_34,
      \FSM_onehot_state_reg[3]_2\ => fsm_5_n_35,
      \FSM_onehot_state_reg[3]_3\ => fsm_5_n_36,
      \FSM_onehot_state_reg[3]_4\ => fsm_5_n_37,
      \FSM_onehot_state_reg[3]_5\ => fsm_5_n_40,
      \FSM_onehot_state_reg[3]_6\ => fsm_5_n_41,
      SR(0) => fsm_5_n_47,
      a_in_5(24 downto 0) => a_in_5(24 downto 0),
      a_in_6(29 downto 0) => a_in_6(29 downto 0),
      clk => clk,
      \count1_carry_i_13__3\ => fsm_4_n_41,
      \count1_carry_i_13__3_0\ => fsm_4_n_40,
      \count[4]_i_10__1\ => fsm_4_n_37,
      \count[4]_i_10__1_0\ => fsm_4_n_5,
      \count[4]_i_12__2\ => fsm_4_n_32,
      \count[4]_i_12__2_0\ => fsm_4_n_33,
      \count[4]_i_19__2\ => fsm_4_n_38,
      \count[4]_i_21__2\ => fsm_4_n_39,
      \count[4]_i_3__1\ => fsm_4_n_34,
      \count[4]_i_3__1_0\ => fsm_4_n_31,
      \count[4]_i_6__0\ => fsm_4_n_35,
      \count[4]_i_7__2\ => fsm_4_n_36,
      \count[4]_i_8__2\ => fsm_6_n_48,
      \count[4]_i_8__2_0\ => fsm_6_n_49,
      \count_reg_reg[0]\ => fsm_5_n_44,
      \count_reg_reg[0]_0\(0) => ack_in_5,
      \count_reg_reg[1]\ => fsm_5_n_39,
      \count_reg_reg[2]\ => fsm_5_n_42,
      \count_reg_reg[3]\ => fsm_5_n_38,
      \count_reg_reg[4]\ => fsm_5_n_43,
      \j_reg[1]\ => fsm_5_n_45,
      \j_reg[2]\ => fsm_5_n_2,
      \j_reg[2]_0\ => fsm_5_n_46,
      nRst => nRst,
      next_out_5 => next_out_5,
      next_out_6 => next_out_6
    );
fsm_6: entity work.\design_1_top_nqueens_0_0_fsm__parameterized2\
     port map (
      AR(0) => ack_in_7,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_5_n_47,
      \FSM_onehot_state_reg[3]_0\ => fsm_6_n_43,
      \FSM_onehot_state_reg[3]_1\ => fsm_6_n_44,
      \FSM_onehot_state_reg[3]_2\ => fsm_6_n_47,
      Q(2 downto 0) => \logic/j_reg_3\(2 downto 0),
      SR(0) => fsm_6_n_50,
      a_in_6(29 downto 0) => a_in_6(29 downto 0),
      a_in_7(34 downto 0) => a_in_7(34 downto 0),
      clk => clk,
      \count1_carry__1_i_3__6\ => fsm_7_n_6,
      \count1_carry_i_12__1\ => fsm_5_n_44,
      \count1_carry_i_12__1_0\ => fsm_5_n_39,
      count1_carry_i_19 => fsm_7_n_63,
      count1_carry_i_25 => fsm_7_n_7,
      count1_carry_i_41 => fsm_7_n_62,
      \count[4]_i_21__1\ => fsm_5_n_42,
      \count[4]_i_22__0\ => fsm_5_n_38,
      \count[4]_i_3__0\ => fsm_5_n_37,
      \count[4]_i_3__0_0\ => fsm_5_n_34,
      \count[4]_i_3__0_1\ => fsm_5_n_3,
      \count[4]_i_3__0_2\ => fsm_5_n_41,
      \count[4]_i_6__4\ => fsm_7_n_60,
      \count[4]_i_6__4_0\ => fsm_7_n_61,
      \count[4]_i_7__4\ => fsm_5_n_35,
      \count[4]_i_7__4_0\ => fsm_5_n_40,
      \count[4]_i_8__2\ => fsm_5_n_43,
      \count[4]_i_8__2_0\ => fsm_5_n_36,
      \count_reg_reg[0]\(0) => ack_in_6,
      \j_reg[0]\ => fsm_6_n_2,
      \j_reg[0]_0\ => fsm_6_n_39,
      \j_reg[1]\ => fsm_6_n_38,
      \j_reg[1]_0\ => fsm_6_n_40,
      \j_reg[2]\ => fsm_6_n_45,
      \j_reg[3]\ => fsm_6_n_41,
      \j_reg[3]_0\ => fsm_6_n_42,
      \j_reg[3]_1\ => fsm_6_n_46,
      \j_reg[3]_2\ => fsm_6_n_48,
      \j_reg[3]_3\ => fsm_6_n_49,
      nRst => nRst,
      next_out_6 => next_out_6,
      next_out_7 => next_out_7
    );
fsm_7: entity work.\design_1_top_nqueens_0_0_fsm__parameterized1\
     port map (
      AR(0) => ack_in_8,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_6_n_50,
      \FSM_onehot_state_reg[3]_0\ => fsm_7_n_58,
      \FSM_onehot_state_reg[3]_1\ => fsm_7_n_59,
      Q(3 downto 0) => \logic/j_reg_4\(3 downto 0),
      SR(0) => fsm_7_n_64,
      a_in_7(34 downto 0) => a_in_7(34 downto 0),
      a_in_8(39 downto 0) => a_in_8(39 downto 0),
      clk => clk,
      \count1_carry_i_12__0\ => fsm_6_n_40,
      \count1_carry_i_16__1\ => fsm_6_n_43,
      \count1_carry_i_16__1_0\ => fsm_6_n_46,
      \count1_carry_i_16__1_1\ => fsm_6_n_41,
      \count1_carry_i_3__6\ => fsm_6_n_39,
      \count1_carry_i_8__1\ => fsm_6_n_45,
      \count[4]_i_14__0\ => fsm_8_n_32,
      \count[4]_i_17__0\ => fsm_8_n_33,
      \count[4]_i_17__0_0\ => fsm_8_n_12,
      \count[4]_i_19__0\ => fsm_8_n_30,
      \count[4]_i_4__5\ => fsm_6_n_38,
      \count[4]_i_5__0\ => fsm_6_n_42,
      \count[4]_i_5__0_0\ => fsm_6_n_44,
      \count[4]_i_5__0_1\ => fsm_6_n_47,
      \count[4]_i_6__3\ => fsm_8_n_31,
      \count[4]_i_7__0\ => fsm_8_n_7,
      \count[4]_i_7__0_0\ => fsm_8_n_29,
      \count_reg[0]\ => fsm_6_n_2,
      \count_reg_reg[0]\ => fsm_7_n_8,
      \count_reg_reg[0]_0\ => fsm_7_n_13,
      \count_reg_reg[0]_1\ => fsm_7_n_15,
      \count_reg_reg[0]_2\(0) => ack_in_7,
      \count_reg_reg[1]\ => fsm_7_n_14,
      \count_reg_reg[2]\ => fsm_7_n_12,
      done_aux_reg(2 downto 0) => u_i_5(2 downto 0),
      done_aux_reg_0 => fsm_8_n_28,
      done_aux_reg_1 => fsm_8_n_13,
      \j_reg[0]\ => fsm_7_n_6,
      \j_reg[0]_0\ => fsm_7_n_11,
      \j_reg[0]_1\ => fsm_7_n_16,
      \j_reg[0]_2\ => fsm_7_n_61,
      \j_reg[1]\ => fsm_7_n_57,
      \j_reg[1]_0\ => fsm_7_n_62,
      \j_reg[1]_1\ => fsm_7_n_63,
      \j_reg[2]\ => fsm_7_n_2,
      \j_reg[2]_0\(2 downto 0) => \logic/j_reg_3\(2 downto 0),
      \j_reg[3]\ => fsm_7_n_7,
      \j_reg[3]_0\ => fsm_7_n_9,
      \j_reg[3]_1\ => fsm_7_n_10,
      \j_reg[3]_2\ => fsm_7_n_60,
      nRst => nRst,
      next_out_7 => next_out_7,
      next_out_8 => next_out_8
    );
fsm_8: entity work.\design_1_top_nqueens_0_0_fsm__parameterized0\
     port map (
      AR(0) => ack_in_9,
      \FSM_onehot_state_reg[0]_0\(0) => fsm_7_n_64,
      \FSM_onehot_state_reg[3]_0\ => fsm_8_n_19,
      \FSM_onehot_state_reg[3]_1\ => fsm_8_n_21,
      \FSM_onehot_state_reg[3]_2\ => fsm_8_n_22,
      \FSM_onehot_state_reg[3]_3\ => fsm_8_n_23,
      \FSM_onehot_state_reg[3]_4\ => fsm_8_n_26,
      \FSM_onehot_state_reg[3]_5\ => fsm_8_n_27,
      Q(1 downto 0) => a_in_9(44 downto 43),
      SR(0) => fsm_8_n_34,
      a_in_8(39 downto 0) => a_in_8(39 downto 0),
      clk => clk,
      count1_carry => fsm_7_n_14,
      count1_carry_i_13 => fsm_9_n_4,
      count1_carry_i_13_0 => fsm_9_n_7,
      count1_carry_i_13_1 => fsm_9_n_6,
      count1_carry_i_14 => fsm_9_n_9,
      \count1_carry_i_4__0\ => fsm_7_n_8,
      \count1_carry_i_4__0_0\ => fsm_7_n_13,
      \count[4]_i_11\(1 downto 0) => \logic/j_reg_6\(1 downto 0),
      \count[4]_i_11__3\ => fsm_7_n_59,
      \count[4]_i_11__3_0\ => fsm_7_n_16,
      \count[4]_i_17\ => fsm_9_n_5,
      \count[4]_i_17_0\ => fsm_9_n_8,
      \count[4]_i_4\ => fsm_9_n_1,
      \count[4]_i_5__5\ => fsm_7_n_57,
      \count[4]_i_7__0\ => fsm_7_n_58,
      \count_reg[0]\ => fsm_7_n_2,
      \count_reg[0]_0\ => fsm_7_n_11,
      \count_reg[0]_1\ => fsm_7_n_15,
      \count_reg[0]_2\ => fsm_7_n_10,
      \count_reg_reg[0]\ => fsm_8_n_28,
      \count_reg_reg[0]_0\(0) => ack_in_8,
      \count_reg_reg[2]\(2 downto 0) => u_i_5(2 downto 0),
      \count_reg_reg[2]_0\ => fsm_8_n_25,
      \count_reg_reg[3]\ => fsm_8_n_24,
      \done_aux_i_2__0\ => fsm_7_n_9,
      done_aux_reg => fsm_7_n_12,
      \j_reg[0]\ => fsm_8_n_7,
      \j_reg[0]_0\ => fsm_8_n_14,
      \j_reg[0]_1\ => fsm_8_n_15,
      \j_reg[0]_2\ => fsm_8_n_16,
      \j_reg[1]\ => fsm_8_n_17,
      \j_reg[1]_0\ => fsm_8_n_18,
      \j_reg[1]_1\ => fsm_8_n_20,
      \j_reg[2]\ => fsm_8_n_29,
      \j_reg[2]_0\ => fsm_8_n_31,
      \j_reg[2]_1\ => fsm_8_n_32,
      \j_reg[2]_2\ => fsm_8_n_33,
      \j_reg[3]\(3 downto 0) => \logic/j_reg_4\(3 downto 0),
      \j_reg[3]_0\ => fsm_8_n_12,
      \j_reg[3]_1\ => fsm_8_n_13,
      \j_reg[3]_2\ => fsm_8_n_30,
      nRst => nRst,
      next_out_8 => next_out_8,
      next_out_9 => next_out_9
    );
fsm_9: entity work.design_1_top_nqueens_0_0_fsm
     port map (
      AR(0) => ack_in_9,
      E(0) => fsm_9_n_10,
      Q(1 downto 0) => a_in_9(44 downto 43),
      SR(0) => fsm_8_n_34,
      clk => clk,
      count1_carry_i_14 => fsm_8_n_22,
      count1_carry_i_14_0 => fsm_8_n_23,
      \count[4]_i_12\ => fsm_8_n_24,
      \count[4]_i_12_0\ => fsm_8_n_21,
      \count[4]_i_5\ => fsm_8_n_26,
      \count[4]_i_5_0\ => fsm_8_n_18,
      \count[4]_i_5_1\ => fsm_8_n_27,
      \count[4]_i_5_2\ => fsm_8_n_20,
      \count[4]_i_7\ => fsm_8_n_25,
      \count[4]_i_7_0\ => fsm_8_n_19,
      \count_reg[0]\ => fsm_8_n_14,
      \count_reg[0]_0\ => fsm_8_n_17,
      \count_reg[0]_1\ => fsm_8_n_16,
      done_aux_i_4 => fsm_8_n_15,
      \j_reg[1]\(1 downto 0) => \logic/j_reg_6\(1 downto 0),
      \j_reg[1]_0\ => fsm_9_n_4,
      \j_reg[1]_1\ => fsm_9_n_5,
      \j_reg[1]_2\ => fsm_9_n_6,
      \j_reg[1]_3\ => fsm_9_n_7,
      \j_reg[1]_4\ => fsm_9_n_8,
      \j_reg[1]_5\ => fsm_9_n_9,
      \j_reg[2]\ => fsm_9_n_1,
      next_out_9 => next_out_9
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_nqueens_0_0 is
  port (
    clk : in STD_LOGIC;
    nRst : in STD_LOGIC;
    flag : out STD_LOGIC;
    done : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_nqueens_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_nqueens_0_0 : entity is "design_1_top_nqueens_0_0,top_nqueens,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_top_nqueens_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_top_nqueens_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_top_nqueens_0_0 : entity is "top_nqueens,Vivado 2019.2";
end design_1_top_nqueens_0_0;

architecture STRUCTURE of design_1_top_nqueens_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^counter\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  counter(10 downto 1) <= \^counter\(10 downto 1);
  counter(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_top_nqueens_0_0_top_nqueens
     port map (
      clk => clk,
      counter(9 downto 0) => \^counter\(10 downto 1),
      done => done,
      flag => flag,
      nRst => nRst
    );
end STRUCTURE;
