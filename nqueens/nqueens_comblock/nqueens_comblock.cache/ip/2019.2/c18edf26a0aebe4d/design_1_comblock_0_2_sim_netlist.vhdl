-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Nov 19 15:28:28 2021
-- Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_comblock_0_2_sim_netlist.vhdl
-- Design      : design_1_comblock_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL is
  port (
    axil_awready : out STD_LOGIC;
    axil_wready : out STD_LOGIC;
    axil_arready : out STD_LOGIC;
    axil_bvalid : out STD_LOGIC;
    axil_rvalid : out STD_LOGIC;
    axil_wdata_0_sp_1 : out STD_LOGIC;
    axil_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axil_aclk : in STD_LOGIC;
    axil_arvalid : in STD_LOGIC;
    axil_aresetn : in STD_LOGIC;
    axil_bready : in STD_LOGIC;
    axil_awvalid : in STD_LOGIC;
    axil_wvalid : in STD_LOGIC;
    axil_rready : in STD_LOGIC;
    axil_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg0_o : in STD_LOGIC_VECTOR ( 0 to 0 );
    axil_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    axil_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reg0_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axil_arready\ : STD_LOGIC;
  signal \^axil_awready\ : STD_LOGIC;
  signal \^axil_bvalid\ : STD_LOGIC;
  signal \^axil_rvalid\ : STD_LOGIC;
  signal axil_wdata_0_sn_1 : STD_LOGIC;
  signal \^axil_wready\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reg_rd_adr : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal reg_rd_dat : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal reg_wr_adr : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \regs_out[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \regs_out[0][0]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \regs_out[0][0]_i_3\ : label is "soft_lutpair0";
begin
  axil_arready <= \^axil_arready\;
  axil_awready <= \^axil_awready\;
  axil_bvalid <= \^axil_bvalid\;
  axil_rvalid <= \^axil_rvalid\;
  axil_wdata_0_sp_1 <= axil_wdata_0_sn_1;
  axil_wready <= \^axil_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F808F8F8F8"
    )
        port map (
      I0 => \^axil_bvalid\,
      I1 => axil_bready,
      I2 => aw_en_reg_n_0,
      I3 => axil_wvalid,
      I4 => axil_awvalid,
      I5 => \^axil_awready\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(0),
      Q => reg_rd_adr(2),
      S => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(1),
      Q => reg_rd_adr(3),
      S => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(2),
      Q => reg_rd_adr(4),
      S => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(3),
      Q => reg_rd_adr(5),
      S => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(4),
      Q => reg_rd_adr(6),
      S => p_0_in
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(5),
      Q => reg_rd_adr(7),
      S => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axil_arvalid,
      I1 => \^axil_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axil_arready\,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => axi_awready0,
      D => axil_awaddr(0),
      Q => reg_wr_adr(2),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => axi_awready0,
      D => axil_awaddr(1),
      Q => reg_wr_adr(3),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => axi_awready0,
      D => axil_awaddr(2),
      Q => reg_wr_adr(4),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => axi_awready0,
      D => axil_awaddr(3),
      Q => reg_wr_adr(5),
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => axi_awready0,
      D => axil_awaddr(4),
      Q => reg_wr_adr(6),
      R => p_0_in
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => axi_awready0,
      D => axil_awaddr(5),
      Q => reg_wr_adr(7),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axil_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => axil_wvalid,
      I2 => axil_awvalid,
      I3 => \^axil_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axil_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => axil_bready,
      I1 => \^axil_wready\,
      I2 => axil_awvalid,
      I3 => axil_wvalid,
      I4 => \^axil_awready\,
      I5 => \^axil_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axil_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444444444F"
    )
        port map (
      I0 => \axi_rdata[10]_i_3_n_0\,
      I1 => \axi_rdata[0]_i_2_n_0\,
      I2 => \axi_rdata[0]_i_3_n_0\,
      I3 => reg_rd_adr(3),
      I4 => reg_rd_adr(7),
      I5 => reg_rd_adr(2),
      O => reg_rd_dat(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => reg2_i(0),
      I1 => reg_rd_adr(3),
      I2 => reg1_i(0),
      I3 => reg_rd_adr(2),
      I4 => reg0_i(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => reg_rd_adr(4),
      I1 => reg_rd_adr(5),
      I2 => reg0_o(0),
      I3 => reg_rd_adr(6),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^axil_rvalid\,
      I1 => axil_arvalid,
      I2 => \^axil_arready\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(10),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(10),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(10),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(10)
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => reg_rd_adr(2),
      I1 => reg_rd_adr(3),
      I2 => reg_rd_adr(7),
      I3 => reg_rd_adr(6),
      I4 => reg_rd_adr(5),
      I5 => reg_rd_adr(4),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(1),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(1),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(1),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(2),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(2),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(2),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(3),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(3),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(3),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(4),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(4),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(4),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(5),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(5),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(5),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(6),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(6),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(6),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(7),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(7),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(7),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(8),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(8),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(8),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => reg0_i(9),
      I1 => reg_rd_adr(2),
      I2 => reg1_i(9),
      I3 => reg_rd_adr(3),
      I4 => reg2_i(9),
      I5 => \axi_rdata[10]_i_3_n_0\,
      O => reg_rd_dat(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(0),
      Q => axil_rdata(0),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(10),
      Q => axil_rdata(10),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(1),
      Q => axil_rdata(1),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(2),
      Q => axil_rdata(2),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(3),
      Q => axil_rdata(3),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(4),
      Q => axil_rdata(4),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(5),
      Q => axil_rdata(5),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(6),
      Q => axil_rdata(6),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(7),
      Q => axil_rdata(7),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(8),
      Q => axil_rdata(8),
      R => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(9),
      Q => axil_rdata(9),
      R => \axi_rdata[10]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => axil_arvalid,
      I1 => \^axil_arready\,
      I2 => \^axil_rvalid\,
      I3 => axil_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axil_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => axil_wvalid,
      I2 => axil_awvalid,
      I3 => \^axil_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axil_wready\,
      R => p_0_in
    );
\regs_out[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axil_wdata(0),
      I1 => \regs_out[0][0]_i_2_n_0\,
      I2 => reg_wr_adr(7),
      I3 => reg0_o(0),
      O => axil_wdata_0_sn_1
    );
\regs_out[0][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => reg_wr_adr(2),
      I1 => reg_wr_adr(4),
      I2 => \regs_out[0][0]_i_3_n_0\,
      I3 => reg_wr_adr(3),
      I4 => reg_wr_adr(5),
      I5 => reg_wr_adr(6),
      O => \regs_out[0][0]_i_2_n_0\
    );
\regs_out[0][0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axil_awready\,
      I1 => axil_wvalid,
      I2 => axil_awvalid,
      I3 => \^axil_wready\,
      O => \regs_out[0][0]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock is
  port (
    reg0_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    \regs_out_reg[0][0]_0\ : in STD_LOGIC;
    axil_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock is
begin
\regs_out_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => '1',
      D => \regs_out_reg[0][0]_0\,
      Q => reg0_o(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock is
  port (
    axil_awready : out STD_LOGIC;
    axil_wready : out STD_LOGIC;
    axil_arready : out STD_LOGIC;
    axil_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axil_rvalid : out STD_LOGIC;
    reg0_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    axil_bvalid : out STD_LOGIC;
    axil_aclk : in STD_LOGIC;
    axil_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    axil_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    axil_arvalid : in STD_LOGIC;
    axil_wvalid : in STD_LOGIC;
    axil_awvalid : in STD_LOGIC;
    reg0_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    axil_aresetn : in STD_LOGIC;
    axil_bready : in STD_LOGIC;
    axil_rready : in STD_LOGIC;
    axil_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock is
  signal AXIL_inst_n_5 : STD_LOGIC;
  signal \^reg0_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  reg0_o(0) <= \^reg0_o\(0);
AXIL_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL
     port map (
      axil_aclk => axil_aclk,
      axil_araddr(5 downto 0) => axil_araddr(5 downto 0),
      axil_aresetn => axil_aresetn,
      axil_arready => axil_arready,
      axil_arvalid => axil_arvalid,
      axil_awaddr(5 downto 0) => axil_awaddr(5 downto 0),
      axil_awready => axil_awready,
      axil_awvalid => axil_awvalid,
      axil_bready => axil_bready,
      axil_bvalid => axil_bvalid,
      axil_rdata(10 downto 0) => axil_rdata(10 downto 0),
      axil_rready => axil_rready,
      axil_rvalid => axil_rvalid,
      axil_wdata(0) => axil_wdata(0),
      axil_wdata_0_sp_1 => AXIL_inst_n_5,
      axil_wready => axil_wready,
      axil_wvalid => axil_wvalid,
      reg0_i(10 downto 0) => reg0_i(10 downto 0),
      reg0_o(0) => \^reg0_o\(0),
      reg1_i(10 downto 0) => reg1_i(10 downto 0),
      reg2_i(10 downto 0) => reg2_i(10 downto 0)
    );
comblock_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock
     port map (
      axil_aclk => axil_aclk,
      reg0_o(0) => \^reg0_o\(0),
      \regs_out_reg[0][0]_0\ => AXIL_inst_n_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    reg0_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reg0_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    axil_aclk : in STD_LOGIC;
    axil_aresetn : in STD_LOGIC;
    axil_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_awvalid : in STD_LOGIC;
    axil_awready : out STD_LOGIC;
    axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axil_wvalid : in STD_LOGIC;
    axil_wready : out STD_LOGIC;
    axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_bvalid : out STD_LOGIC;
    axil_bready : in STD_LOGIC;
    axil_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_arvalid : in STD_LOGIC;
    axil_arready : out STD_LOGIC;
    axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_rvalid : out STD_LOGIC;
    axil_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_comblock_0_2,axi_comblock,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_comblock,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^axil_rdata\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of axil_aclk : signal is "xilinx.com:signal:clock:1.0 axil_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axil_aclk : signal is "XIL_INTERFACENAME axil_aclk, ASSOCIATED_RESET axil_aresetn, ASSOCIATED_BUSIF AXIL, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of axil_aresetn : signal is "xilinx.com:signal:reset:1.0 axil_aresetn RST";
  attribute x_interface_parameter of axil_aresetn : signal is "XIL_INTERFACENAME axil_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of axil_arready : signal is "xilinx.com:interface:aximm:1.0 AXIL ARREADY";
  attribute x_interface_info of axil_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXIL ARVALID";
  attribute x_interface_info of axil_awready : signal is "xilinx.com:interface:aximm:1.0 AXIL AWREADY";
  attribute x_interface_info of axil_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXIL AWVALID";
  attribute x_interface_info of axil_bready : signal is "xilinx.com:interface:aximm:1.0 AXIL BREADY";
  attribute x_interface_info of axil_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXIL BVALID";
  attribute x_interface_info of axil_rready : signal is "xilinx.com:interface:aximm:1.0 AXIL RREADY";
  attribute x_interface_info of axil_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXIL RVALID";
  attribute x_interface_info of axil_wready : signal is "xilinx.com:interface:aximm:1.0 AXIL WREADY";
  attribute x_interface_info of axil_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXIL WVALID";
  attribute x_interface_info of axil_araddr : signal is "xilinx.com:interface:aximm:1.0 AXIL ARADDR";
  attribute x_interface_info of axil_arprot : signal is "xilinx.com:interface:aximm:1.0 AXIL ARPROT";
  attribute x_interface_info of axil_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXIL AWADDR";
  attribute x_interface_parameter of axil_awaddr : signal is "XIL_INTERFACENAME AXIL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of axil_awprot : signal is "xilinx.com:interface:aximm:1.0 AXIL AWPROT";
  attribute x_interface_info of axil_bresp : signal is "xilinx.com:interface:aximm:1.0 AXIL BRESP";
  attribute x_interface_info of axil_rdata : signal is "xilinx.com:interface:aximm:1.0 AXIL RDATA";
  attribute x_interface_info of axil_rresp : signal is "xilinx.com:interface:aximm:1.0 AXIL RRESP";
  attribute x_interface_info of axil_wdata : signal is "xilinx.com:interface:aximm:1.0 AXIL WDATA";
  attribute x_interface_info of axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXIL WSTRB";
  attribute x_interface_info of reg0_i : signal is "ictp:user:IREGS:1.0 IN_REGS reg0_i";
  attribute x_interface_info of reg0_o : signal is "ictp:user:OREGS:1.0 OUT_REGS reg0_o";
  attribute x_interface_info of reg1_i : signal is "ictp:user:IREGS:1.0 IN_REGS reg1_i";
  attribute x_interface_info of reg2_i : signal is "ictp:user:IREGS:1.0 IN_REGS reg2_i";
begin
  axil_bresp(1) <= \<const0>\;
  axil_bresp(0) <= \<const0>\;
  axil_rdata(31) <= \<const0>\;
  axil_rdata(30) <= \<const0>\;
  axil_rdata(29) <= \<const0>\;
  axil_rdata(28) <= \<const0>\;
  axil_rdata(27) <= \<const0>\;
  axil_rdata(26) <= \<const0>\;
  axil_rdata(25) <= \<const0>\;
  axil_rdata(24) <= \<const0>\;
  axil_rdata(23) <= \<const0>\;
  axil_rdata(22) <= \<const0>\;
  axil_rdata(21) <= \<const0>\;
  axil_rdata(20) <= \<const0>\;
  axil_rdata(19) <= \<const0>\;
  axil_rdata(18) <= \<const0>\;
  axil_rdata(17) <= \<const0>\;
  axil_rdata(16) <= \<const0>\;
  axil_rdata(15) <= \<const0>\;
  axil_rdata(14) <= \<const0>\;
  axil_rdata(13) <= \<const0>\;
  axil_rdata(12) <= \<const0>\;
  axil_rdata(11) <= \<const0>\;
  axil_rdata(10 downto 0) <= \^axil_rdata\(10 downto 0);
  axil_rresp(1) <= \<const0>\;
  axil_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock
     port map (
      axil_aclk => axil_aclk,
      axil_araddr(5 downto 0) => axil_araddr(7 downto 2),
      axil_aresetn => axil_aresetn,
      axil_arready => axil_arready,
      axil_arvalid => axil_arvalid,
      axil_awaddr(5 downto 0) => axil_awaddr(7 downto 2),
      axil_awready => axil_awready,
      axil_awvalid => axil_awvalid,
      axil_bready => axil_bready,
      axil_bvalid => axil_bvalid,
      axil_rdata(10 downto 0) => \^axil_rdata\(10 downto 0),
      axil_rready => axil_rready,
      axil_rvalid => axil_rvalid,
      axil_wdata(0) => axil_wdata(0),
      axil_wready => axil_wready,
      axil_wvalid => axil_wvalid,
      reg0_i(10 downto 0) => reg0_i(10 downto 0),
      reg0_o(0) => reg0_o(0),
      reg1_i(10 downto 0) => reg1_i(10 downto 0),
      reg2_i(10 downto 0) => reg2_i(10 downto 0)
    );
end STRUCTURE;
