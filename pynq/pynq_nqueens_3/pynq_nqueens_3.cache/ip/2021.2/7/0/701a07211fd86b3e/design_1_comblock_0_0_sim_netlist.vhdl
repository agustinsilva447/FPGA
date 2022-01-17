-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Jan 17 17:30:01 2022
-- Host        : agustinsilva447-Lenovo-G50-80 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_comblock_0_0_sim_netlist.vhdl
-- Design      : design_1_comblock_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
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
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[7]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    axil_aclk : in STD_LOGIC;
    axil_arvalid : in STD_LOGIC;
    \axi_rdata_reg[31]_0\ : in STD_LOGIC;
    reg3_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg0_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[30]_0\ : in STD_LOGIC;
    \axi_rdata_reg[29]_0\ : in STD_LOGIC;
    \axi_rdata_reg[28]_0\ : in STD_LOGIC;
    \axi_rdata_reg[27]_0\ : in STD_LOGIC;
    \axi_rdata_reg[26]_0\ : in STD_LOGIC;
    \axi_rdata_reg[25]_0\ : in STD_LOGIC;
    \axi_rdata_reg[24]_0\ : in STD_LOGIC;
    \axi_rdata_reg[23]_0\ : in STD_LOGIC;
    \axi_rdata_reg[22]_0\ : in STD_LOGIC;
    \axi_rdata_reg[21]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \axi_rdata_reg[16]_0\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC;
    \axi_rdata_reg[14]_0\ : in STD_LOGIC;
    \axi_rdata_reg[13]_0\ : in STD_LOGIC;
    \axi_rdata_reg[12]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]_0\ : in STD_LOGIC;
    \axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    axil_aresetn : in STD_LOGIC;
    axil_bready : in STD_LOGIC;
    axil_awvalid : in STD_LOGIC;
    axil_wvalid : in STD_LOGIC;
    axil_rready : in STD_LOGIC;
    axil_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    axil_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axil_arready\ : STD_LOGIC;
  signal \^axil_awready\ : STD_LOGIC;
  signal \^axil_bvalid\ : STD_LOGIC;
  signal \^axil_rvalid\ : STD_LOGIC;
  signal \^axil_wready\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reg_rd_adr : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal reg_rd_dat : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_wr_adr : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \regs_out[0][31]_i_2_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \regs_out[0][31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regs_out[1][31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \regs_out[2][31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regs_out[3][31]_i_1\ : label is "soft_lutpair0";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axil_arready <= \^axil_arready\;
  axil_awready <= \^axil_awready\;
  axil_bvalid <= \^axil_bvalid\;
  axil_rvalid <= \^axil_rvalid\;
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
      Q => \^q\(0),
      S => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(1),
      Q => \^q\(1),
      S => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(2),
      Q => sel0(2),
      S => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => axil_aclk,
      CE => axi_arready0,
      D => axil_araddr(3),
      Q => sel0(3),
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
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[0]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[0]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(0),
      I1 => reg2_i(0),
      I2 => \^q\(1),
      I3 => reg1_i(0),
      I4 => \^q\(0),
      I5 => reg0_i(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[10]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[10]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(10),
      I1 => reg2_i(10),
      I2 => \^q\(1),
      I3 => reg1_i(10),
      I4 => \^q\(0),
      I5 => reg0_i(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[11]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[11]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(11),
      I1 => reg2_i(11),
      I2 => \^q\(1),
      I3 => reg1_i(11),
      I4 => \^q\(0),
      I5 => reg0_i(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[12]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[12]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(12),
      I1 => reg2_i(12),
      I2 => \^q\(1),
      I3 => reg1_i(12),
      I4 => \^q\(0),
      I5 => reg0_i(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[13]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[13]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(13),
      I1 => reg2_i(13),
      I2 => \^q\(1),
      I3 => reg1_i(13),
      I4 => \^q\(0),
      I5 => reg0_i(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[14]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[14]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(14),
      I1 => reg2_i(14),
      I2 => \^q\(1),
      I3 => reg1_i(14),
      I4 => \^q\(0),
      I5 => reg0_i(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[15]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[15]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(15),
      I1 => reg2_i(15),
      I2 => \^q\(1),
      I3 => reg1_i(15),
      I4 => \^q\(0),
      I5 => reg0_i(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[16]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[16]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(16),
      I1 => reg2_i(16),
      I2 => \^q\(1),
      I3 => reg1_i(16),
      I4 => \^q\(0),
      I5 => reg0_i(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[17]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[17]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(17),
      I1 => reg2_i(17),
      I2 => \^q\(1),
      I3 => reg1_i(17),
      I4 => \^q\(0),
      I5 => reg0_i(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[18]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[18]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(18),
      I1 => reg2_i(18),
      I2 => \^q\(1),
      I3 => reg1_i(18),
      I4 => \^q\(0),
      I5 => reg0_i(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[19]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[19]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(19),
      I1 => reg2_i(19),
      I2 => \^q\(1),
      I3 => reg1_i(19),
      I4 => \^q\(0),
      I5 => reg0_i(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[1]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[1]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(1),
      I1 => reg2_i(1),
      I2 => \^q\(1),
      I3 => reg1_i(1),
      I4 => \^q\(0),
      I5 => reg0_i(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[20]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[20]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(20),
      I1 => reg2_i(20),
      I2 => \^q\(1),
      I3 => reg1_i(20),
      I4 => \^q\(0),
      I5 => reg0_i(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[21]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[21]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(21),
      I1 => reg2_i(21),
      I2 => \^q\(1),
      I3 => reg1_i(21),
      I4 => \^q\(0),
      I5 => reg0_i(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[22]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[22]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(22),
      I1 => reg2_i(22),
      I2 => \^q\(1),
      I3 => reg1_i(22),
      I4 => \^q\(0),
      I5 => reg0_i(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[23]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[23]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(23),
      I1 => reg2_i(23),
      I2 => \^q\(1),
      I3 => reg1_i(23),
      I4 => \^q\(0),
      I5 => reg0_i(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[24]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[24]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(24),
      I1 => reg2_i(24),
      I2 => \^q\(1),
      I3 => reg1_i(24),
      I4 => \^q\(0),
      I5 => reg0_i(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[25]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[25]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(25),
      I1 => reg2_i(25),
      I2 => \^q\(1),
      I3 => reg1_i(25),
      I4 => \^q\(0),
      I5 => reg0_i(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[26]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[26]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(26),
      I1 => reg2_i(26),
      I2 => \^q\(1),
      I3 => reg1_i(26),
      I4 => \^q\(0),
      I5 => reg0_i(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[27]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[27]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(27),
      I1 => reg2_i(27),
      I2 => \^q\(1),
      I3 => reg1_i(27),
      I4 => \^q\(0),
      I5 => reg0_i(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[28]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[28]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(28),
      I1 => reg2_i(28),
      I2 => \^q\(1),
      I3 => reg1_i(28),
      I4 => \^q\(0),
      I5 => reg0_i(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[29]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[29]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(29),
      I1 => reg2_i(29),
      I2 => \^q\(1),
      I3 => reg1_i(29),
      I4 => \^q\(0),
      I5 => reg0_i(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[2]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[2]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(2),
      I1 => reg2_i(2),
      I2 => \^q\(1),
      I3 => reg1_i(2),
      I4 => \^q\(0),
      I5 => reg0_i(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[30]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[30]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(30),
      I1 => reg2_i(30),
      I2 => \^q\(1),
      I3 => reg1_i(30),
      I4 => \^q\(0),
      I5 => reg0_i(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^axil_rvalid\,
      I1 => axil_arvalid,
      I2 => \^axil_arready\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[31]_i_3_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[31]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(31),
      I1 => reg2_i(31),
      I2 => \^q\(1),
      I3 => reg1_i(31),
      I4 => \^q\(0),
      I5 => reg0_i(31),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[3]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[3]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(3),
      I1 => reg2_i(3),
      I2 => \^q\(1),
      I3 => reg1_i(3),
      I4 => \^q\(0),
      I5 => reg0_i(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[4]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[4]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(4),
      I1 => reg2_i(4),
      I2 => \^q\(1),
      I3 => reg1_i(4),
      I4 => \^q\(0),
      I5 => reg0_i(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[5]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[5]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(5),
      I1 => reg2_i(5),
      I2 => \^q\(1),
      I3 => reg1_i(5),
      I4 => \^q\(0),
      I5 => reg0_i(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[6]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[6]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(6),
      I1 => reg2_i(6),
      I2 => \^q\(1),
      I3 => reg1_i(6),
      I4 => \^q\(0),
      I5 => reg0_i(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[7]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(7),
      I1 => reg2_i(7),
      I2 => \^q\(1),
      I3 => reg1_i(7),
      I4 => \^q\(0),
      I5 => reg0_i(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[8]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[8]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(8),
      I1 => reg2_i(8),
      I2 => \^q\(1),
      I3 => reg1_i(8),
      I4 => \^q\(0),
      I5 => reg0_i(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[9]_i_2_n_0\,
      I2 => sel0(2),
      I3 => reg_rd_adr(6),
      I4 => \axi_rdata_reg[9]_0\,
      I5 => reg_rd_adr(7),
      O => reg_rd_dat(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg3_i(9),
      I1 => reg2_i(9),
      I2 => \^q\(1),
      I3 => reg1_i(9),
      I4 => \^q\(0),
      I5 => reg0_i(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(0),
      Q => axil_rdata(0),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(10),
      Q => axil_rdata(10),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(11),
      Q => axil_rdata(11),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(12),
      Q => axil_rdata(12),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(13),
      Q => axil_rdata(13),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(14),
      Q => axil_rdata(14),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(15),
      Q => axil_rdata(15),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(16),
      Q => axil_rdata(16),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(17),
      Q => axil_rdata(17),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(18),
      Q => axil_rdata(18),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(19),
      Q => axil_rdata(19),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(1),
      Q => axil_rdata(1),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(20),
      Q => axil_rdata(20),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(21),
      Q => axil_rdata(21),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(22),
      Q => axil_rdata(22),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(23),
      Q => axil_rdata(23),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(24),
      Q => axil_rdata(24),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(25),
      Q => axil_rdata(25),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(26),
      Q => axil_rdata(26),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(27),
      Q => axil_rdata(27),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(28),
      Q => axil_rdata(28),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(29),
      Q => axil_rdata(29),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(2),
      Q => axil_rdata(2),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(30),
      Q => axil_rdata(30),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(31),
      Q => axil_rdata(31),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(3),
      Q => axil_rdata(3),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(4),
      Q => axil_rdata(4),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(5),
      Q => axil_rdata(5),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(6),
      Q => axil_rdata(6),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(7),
      Q => axil_rdata(7),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(8),
      Q => axil_rdata(8),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axil_aclk,
      CE => '1',
      D => reg_rd_dat(9),
      Q => axil_rdata(9),
      R => \axi_rdata[31]_i_1_n_0\
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
\regs_out[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => reg_wr_adr(7),
      I1 => reg_wr_adr(2),
      I2 => \regs_out[0][31]_i_2_n_0\,
      I3 => reg_wr_adr(6),
      I4 => reg_wr_adr(3),
      O => \axi_awaddr_reg[7]_2\(0)
    );
\regs_out[0][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => reg_wr_adr(4),
      I1 => \^axil_awready\,
      I2 => axil_wvalid,
      I3 => axil_awvalid,
      I4 => \^axil_wready\,
      I5 => reg_wr_adr(5),
      O => \regs_out[0][31]_i_2_n_0\
    );
\regs_out[1][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => reg_wr_adr(7),
      I1 => reg_wr_adr(2),
      I2 => \regs_out[0][31]_i_2_n_0\,
      I3 => reg_wr_adr(6),
      I4 => reg_wr_adr(3),
      O => \axi_awaddr_reg[7]_0\(0)
    );
\regs_out[2][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => reg_wr_adr(7),
      I1 => reg_wr_adr(2),
      I2 => \regs_out[0][31]_i_2_n_0\,
      I3 => reg_wr_adr(6),
      I4 => reg_wr_adr(3),
      O => \axi_awaddr_reg[7]_1\(0)
    );
\regs_out[3][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => reg_wr_adr(7),
      I1 => reg_wr_adr(2),
      I2 => \regs_out[0][31]_i_2_n_0\,
      I3 => reg_wr_adr(6),
      I4 => reg_wr_adr(3),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock is
  port (
    \regs_out_reg[3][31]_0\ : out STD_LOGIC;
    reg3_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \regs_out_reg[3][30]_0\ : out STD_LOGIC;
    \regs_out_reg[3][29]_0\ : out STD_LOGIC;
    \regs_out_reg[3][28]_0\ : out STD_LOGIC;
    \regs_out_reg[3][27]_0\ : out STD_LOGIC;
    \regs_out_reg[3][26]_0\ : out STD_LOGIC;
    \regs_out_reg[3][25]_0\ : out STD_LOGIC;
    \regs_out_reg[3][24]_0\ : out STD_LOGIC;
    \regs_out_reg[3][23]_0\ : out STD_LOGIC;
    \regs_out_reg[3][22]_0\ : out STD_LOGIC;
    \regs_out_reg[3][21]_0\ : out STD_LOGIC;
    \regs_out_reg[3][20]_0\ : out STD_LOGIC;
    \regs_out_reg[3][19]_0\ : out STD_LOGIC;
    \regs_out_reg[3][18]_0\ : out STD_LOGIC;
    \regs_out_reg[3][17]_0\ : out STD_LOGIC;
    \regs_out_reg[3][16]_0\ : out STD_LOGIC;
    \regs_out_reg[3][15]_0\ : out STD_LOGIC;
    \regs_out_reg[3][14]_0\ : out STD_LOGIC;
    \regs_out_reg[3][13]_0\ : out STD_LOGIC;
    \regs_out_reg[3][12]_0\ : out STD_LOGIC;
    \regs_out_reg[3][11]_0\ : out STD_LOGIC;
    \regs_out_reg[3][10]_0\ : out STD_LOGIC;
    \regs_out_reg[3][9]_0\ : out STD_LOGIC;
    \regs_out_reg[3][8]_0\ : out STD_LOGIC;
    \regs_out_reg[3][7]_0\ : out STD_LOGIC;
    \regs_out_reg[3][6]_0\ : out STD_LOGIC;
    \regs_out_reg[3][5]_0\ : out STD_LOGIC;
    \regs_out_reg[3][4]_0\ : out STD_LOGIC;
    \regs_out_reg[3][3]_0\ : out STD_LOGIC;
    \regs_out_reg[3][2]_0\ : out STD_LOGIC;
    \regs_out_reg[3][1]_0\ : out STD_LOGIC;
    \regs_out_reg[3][0]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_aclk : in STD_LOGIC;
    \regs_out_reg[1][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \regs_out_reg[2][31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \regs_out_reg[3][31]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock is
  signal \^reg0_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^reg1_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^reg2_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^reg3_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  reg0_o(31 downto 0) <= \^reg0_o\(31 downto 0);
  reg1_o(31 downto 0) <= \^reg1_o\(31 downto 0);
  reg2_o(31 downto 0) <= \^reg2_o\(31 downto 0);
  reg3_o(31 downto 0) <= \^reg3_o\(31 downto 0);
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(0),
      I1 => \^reg2_o\(0),
      I2 => Q(1),
      I3 => \^reg1_o\(0),
      I4 => Q(0),
      I5 => \^reg0_o\(0),
      O => \regs_out_reg[3][0]_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(10),
      I1 => \^reg2_o\(10),
      I2 => Q(1),
      I3 => \^reg1_o\(10),
      I4 => Q(0),
      I5 => \^reg0_o\(10),
      O => \regs_out_reg[3][10]_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(11),
      I1 => \^reg2_o\(11),
      I2 => Q(1),
      I3 => \^reg1_o\(11),
      I4 => Q(0),
      I5 => \^reg0_o\(11),
      O => \regs_out_reg[3][11]_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(12),
      I1 => \^reg2_o\(12),
      I2 => Q(1),
      I3 => \^reg1_o\(12),
      I4 => Q(0),
      I5 => \^reg0_o\(12),
      O => \regs_out_reg[3][12]_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(13),
      I1 => \^reg2_o\(13),
      I2 => Q(1),
      I3 => \^reg1_o\(13),
      I4 => Q(0),
      I5 => \^reg0_o\(13),
      O => \regs_out_reg[3][13]_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(14),
      I1 => \^reg2_o\(14),
      I2 => Q(1),
      I3 => \^reg1_o\(14),
      I4 => Q(0),
      I5 => \^reg0_o\(14),
      O => \regs_out_reg[3][14]_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(15),
      I1 => \^reg2_o\(15),
      I2 => Q(1),
      I3 => \^reg1_o\(15),
      I4 => Q(0),
      I5 => \^reg0_o\(15),
      O => \regs_out_reg[3][15]_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(16),
      I1 => \^reg2_o\(16),
      I2 => Q(1),
      I3 => \^reg1_o\(16),
      I4 => Q(0),
      I5 => \^reg0_o\(16),
      O => \regs_out_reg[3][16]_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(17),
      I1 => \^reg2_o\(17),
      I2 => Q(1),
      I3 => \^reg1_o\(17),
      I4 => Q(0),
      I5 => \^reg0_o\(17),
      O => \regs_out_reg[3][17]_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(18),
      I1 => \^reg2_o\(18),
      I2 => Q(1),
      I3 => \^reg1_o\(18),
      I4 => Q(0),
      I5 => \^reg0_o\(18),
      O => \regs_out_reg[3][18]_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(19),
      I1 => \^reg2_o\(19),
      I2 => Q(1),
      I3 => \^reg1_o\(19),
      I4 => Q(0),
      I5 => \^reg0_o\(19),
      O => \regs_out_reg[3][19]_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(1),
      I1 => \^reg2_o\(1),
      I2 => Q(1),
      I3 => \^reg1_o\(1),
      I4 => Q(0),
      I5 => \^reg0_o\(1),
      O => \regs_out_reg[3][1]_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(20),
      I1 => \^reg2_o\(20),
      I2 => Q(1),
      I3 => \^reg1_o\(20),
      I4 => Q(0),
      I5 => \^reg0_o\(20),
      O => \regs_out_reg[3][20]_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(21),
      I1 => \^reg2_o\(21),
      I2 => Q(1),
      I3 => \^reg1_o\(21),
      I4 => Q(0),
      I5 => \^reg0_o\(21),
      O => \regs_out_reg[3][21]_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(22),
      I1 => \^reg2_o\(22),
      I2 => Q(1),
      I3 => \^reg1_o\(22),
      I4 => Q(0),
      I5 => \^reg0_o\(22),
      O => \regs_out_reg[3][22]_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(23),
      I1 => \^reg2_o\(23),
      I2 => Q(1),
      I3 => \^reg1_o\(23),
      I4 => Q(0),
      I5 => \^reg0_o\(23),
      O => \regs_out_reg[3][23]_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(24),
      I1 => \^reg2_o\(24),
      I2 => Q(1),
      I3 => \^reg1_o\(24),
      I4 => Q(0),
      I5 => \^reg0_o\(24),
      O => \regs_out_reg[3][24]_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(25),
      I1 => \^reg2_o\(25),
      I2 => Q(1),
      I3 => \^reg1_o\(25),
      I4 => Q(0),
      I5 => \^reg0_o\(25),
      O => \regs_out_reg[3][25]_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(26),
      I1 => \^reg2_o\(26),
      I2 => Q(1),
      I3 => \^reg1_o\(26),
      I4 => Q(0),
      I5 => \^reg0_o\(26),
      O => \regs_out_reg[3][26]_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(27),
      I1 => \^reg2_o\(27),
      I2 => Q(1),
      I3 => \^reg1_o\(27),
      I4 => Q(0),
      I5 => \^reg0_o\(27),
      O => \regs_out_reg[3][27]_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(28),
      I1 => \^reg2_o\(28),
      I2 => Q(1),
      I3 => \^reg1_o\(28),
      I4 => Q(0),
      I5 => \^reg0_o\(28),
      O => \regs_out_reg[3][28]_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(29),
      I1 => \^reg2_o\(29),
      I2 => Q(1),
      I3 => \^reg1_o\(29),
      I4 => Q(0),
      I5 => \^reg0_o\(29),
      O => \regs_out_reg[3][29]_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(2),
      I1 => \^reg2_o\(2),
      I2 => Q(1),
      I3 => \^reg1_o\(2),
      I4 => Q(0),
      I5 => \^reg0_o\(2),
      O => \regs_out_reg[3][2]_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(30),
      I1 => \^reg2_o\(30),
      I2 => Q(1),
      I3 => \^reg1_o\(30),
      I4 => Q(0),
      I5 => \^reg0_o\(30),
      O => \regs_out_reg[3][30]_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(31),
      I1 => \^reg2_o\(31),
      I2 => Q(1),
      I3 => \^reg1_o\(31),
      I4 => Q(0),
      I5 => \^reg0_o\(31),
      O => \regs_out_reg[3][31]_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(3),
      I1 => \^reg2_o\(3),
      I2 => Q(1),
      I3 => \^reg1_o\(3),
      I4 => Q(0),
      I5 => \^reg0_o\(3),
      O => \regs_out_reg[3][3]_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(4),
      I1 => \^reg2_o\(4),
      I2 => Q(1),
      I3 => \^reg1_o\(4),
      I4 => Q(0),
      I5 => \^reg0_o\(4),
      O => \regs_out_reg[3][4]_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(5),
      I1 => \^reg2_o\(5),
      I2 => Q(1),
      I3 => \^reg1_o\(5),
      I4 => Q(0),
      I5 => \^reg0_o\(5),
      O => \regs_out_reg[3][5]_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(6),
      I1 => \^reg2_o\(6),
      I2 => Q(1),
      I3 => \^reg1_o\(6),
      I4 => Q(0),
      I5 => \^reg0_o\(6),
      O => \regs_out_reg[3][6]_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(7),
      I1 => \^reg2_o\(7),
      I2 => Q(1),
      I3 => \^reg1_o\(7),
      I4 => Q(0),
      I5 => \^reg0_o\(7),
      O => \regs_out_reg[3][7]_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(8),
      I1 => \^reg2_o\(8),
      I2 => Q(1),
      I3 => \^reg1_o\(8),
      I4 => Q(0),
      I5 => \^reg0_o\(8),
      O => \regs_out_reg[3][8]_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg3_o\(9),
      I1 => \^reg2_o\(9),
      I2 => Q(1),
      I3 => \^reg1_o\(9),
      I4 => Q(0),
      I5 => \^reg0_o\(9),
      O => \regs_out_reg[3][9]_0\
    );
\regs_out_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(0),
      Q => \^reg0_o\(0),
      R => '0'
    );
\regs_out_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(10),
      Q => \^reg0_o\(10),
      R => '0'
    );
\regs_out_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(11),
      Q => \^reg0_o\(11),
      R => '0'
    );
\regs_out_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(12),
      Q => \^reg0_o\(12),
      R => '0'
    );
\regs_out_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(13),
      Q => \^reg0_o\(13),
      R => '0'
    );
\regs_out_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(14),
      Q => \^reg0_o\(14),
      R => '0'
    );
\regs_out_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(15),
      Q => \^reg0_o\(15),
      R => '0'
    );
\regs_out_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(16),
      Q => \^reg0_o\(16),
      R => '0'
    );
\regs_out_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(17),
      Q => \^reg0_o\(17),
      R => '0'
    );
\regs_out_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(18),
      Q => \^reg0_o\(18),
      R => '0'
    );
\regs_out_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(19),
      Q => \^reg0_o\(19),
      R => '0'
    );
\regs_out_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(1),
      Q => \^reg0_o\(1),
      R => '0'
    );
\regs_out_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(20),
      Q => \^reg0_o\(20),
      R => '0'
    );
\regs_out_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(21),
      Q => \^reg0_o\(21),
      R => '0'
    );
\regs_out_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(22),
      Q => \^reg0_o\(22),
      R => '0'
    );
\regs_out_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(23),
      Q => \^reg0_o\(23),
      R => '0'
    );
\regs_out_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(24),
      Q => \^reg0_o\(24),
      R => '0'
    );
\regs_out_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(25),
      Q => \^reg0_o\(25),
      R => '0'
    );
\regs_out_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(26),
      Q => \^reg0_o\(26),
      R => '0'
    );
\regs_out_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(27),
      Q => \^reg0_o\(27),
      R => '0'
    );
\regs_out_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(28),
      Q => \^reg0_o\(28),
      R => '0'
    );
\regs_out_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(29),
      Q => \^reg0_o\(29),
      R => '0'
    );
\regs_out_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(2),
      Q => \^reg0_o\(2),
      R => '0'
    );
\regs_out_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(30),
      Q => \^reg0_o\(30),
      R => '0'
    );
\regs_out_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(31),
      Q => \^reg0_o\(31),
      R => '0'
    );
\regs_out_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(3),
      Q => \^reg0_o\(3),
      R => '0'
    );
\regs_out_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(4),
      Q => \^reg0_o\(4),
      R => '0'
    );
\regs_out_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(5),
      Q => \^reg0_o\(5),
      R => '0'
    );
\regs_out_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(6),
      Q => \^reg0_o\(6),
      R => '0'
    );
\regs_out_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(7),
      Q => \^reg0_o\(7),
      R => '0'
    );
\regs_out_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(8),
      Q => \^reg0_o\(8),
      R => '0'
    );
\regs_out_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => E(0),
      D => axil_wdata(9),
      Q => \^reg0_o\(9),
      R => '0'
    );
\regs_out_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(0),
      Q => \^reg1_o\(0),
      R => '0'
    );
\regs_out_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(10),
      Q => \^reg1_o\(10),
      R => '0'
    );
\regs_out_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(11),
      Q => \^reg1_o\(11),
      R => '0'
    );
\regs_out_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(12),
      Q => \^reg1_o\(12),
      R => '0'
    );
\regs_out_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(13),
      Q => \^reg1_o\(13),
      R => '0'
    );
\regs_out_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(14),
      Q => \^reg1_o\(14),
      R => '0'
    );
\regs_out_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(15),
      Q => \^reg1_o\(15),
      R => '0'
    );
\regs_out_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(16),
      Q => \^reg1_o\(16),
      R => '0'
    );
\regs_out_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(17),
      Q => \^reg1_o\(17),
      R => '0'
    );
\regs_out_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(18),
      Q => \^reg1_o\(18),
      R => '0'
    );
\regs_out_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(19),
      Q => \^reg1_o\(19),
      R => '0'
    );
\regs_out_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(1),
      Q => \^reg1_o\(1),
      R => '0'
    );
\regs_out_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(20),
      Q => \^reg1_o\(20),
      R => '0'
    );
\regs_out_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(21),
      Q => \^reg1_o\(21),
      R => '0'
    );
\regs_out_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(22),
      Q => \^reg1_o\(22),
      R => '0'
    );
\regs_out_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(23),
      Q => \^reg1_o\(23),
      R => '0'
    );
\regs_out_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(24),
      Q => \^reg1_o\(24),
      R => '0'
    );
\regs_out_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(25),
      Q => \^reg1_o\(25),
      R => '0'
    );
\regs_out_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(26),
      Q => \^reg1_o\(26),
      R => '0'
    );
\regs_out_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(27),
      Q => \^reg1_o\(27),
      R => '0'
    );
\regs_out_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(28),
      Q => \^reg1_o\(28),
      R => '0'
    );
\regs_out_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(29),
      Q => \^reg1_o\(29),
      R => '0'
    );
\regs_out_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(2),
      Q => \^reg1_o\(2),
      R => '0'
    );
\regs_out_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(30),
      Q => \^reg1_o\(30),
      R => '0'
    );
\regs_out_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(31),
      Q => \^reg1_o\(31),
      R => '0'
    );
\regs_out_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(3),
      Q => \^reg1_o\(3),
      R => '0'
    );
\regs_out_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(4),
      Q => \^reg1_o\(4),
      R => '0'
    );
\regs_out_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(5),
      Q => \^reg1_o\(5),
      R => '0'
    );
\regs_out_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(6),
      Q => \^reg1_o\(6),
      R => '0'
    );
\regs_out_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(7),
      Q => \^reg1_o\(7),
      R => '0'
    );
\regs_out_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(8),
      Q => \^reg1_o\(8),
      R => '0'
    );
\regs_out_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[1][31]_0\(0),
      D => axil_wdata(9),
      Q => \^reg1_o\(9),
      R => '0'
    );
\regs_out_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(0),
      Q => \^reg2_o\(0),
      R => '0'
    );
\regs_out_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(10),
      Q => \^reg2_o\(10),
      R => '0'
    );
\regs_out_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(11),
      Q => \^reg2_o\(11),
      R => '0'
    );
\regs_out_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(12),
      Q => \^reg2_o\(12),
      R => '0'
    );
\regs_out_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(13),
      Q => \^reg2_o\(13),
      R => '0'
    );
\regs_out_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(14),
      Q => \^reg2_o\(14),
      R => '0'
    );
\regs_out_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(15),
      Q => \^reg2_o\(15),
      R => '0'
    );
\regs_out_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(16),
      Q => \^reg2_o\(16),
      R => '0'
    );
\regs_out_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(17),
      Q => \^reg2_o\(17),
      R => '0'
    );
\regs_out_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(18),
      Q => \^reg2_o\(18),
      R => '0'
    );
\regs_out_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(19),
      Q => \^reg2_o\(19),
      R => '0'
    );
\regs_out_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(1),
      Q => \^reg2_o\(1),
      R => '0'
    );
\regs_out_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(20),
      Q => \^reg2_o\(20),
      R => '0'
    );
\regs_out_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(21),
      Q => \^reg2_o\(21),
      R => '0'
    );
\regs_out_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(22),
      Q => \^reg2_o\(22),
      R => '0'
    );
\regs_out_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(23),
      Q => \^reg2_o\(23),
      R => '0'
    );
\regs_out_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(24),
      Q => \^reg2_o\(24),
      R => '0'
    );
\regs_out_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(25),
      Q => \^reg2_o\(25),
      R => '0'
    );
\regs_out_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(26),
      Q => \^reg2_o\(26),
      R => '0'
    );
\regs_out_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(27),
      Q => \^reg2_o\(27),
      R => '0'
    );
\regs_out_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(28),
      Q => \^reg2_o\(28),
      R => '0'
    );
\regs_out_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(29),
      Q => \^reg2_o\(29),
      R => '0'
    );
\regs_out_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(2),
      Q => \^reg2_o\(2),
      R => '0'
    );
\regs_out_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(30),
      Q => \^reg2_o\(30),
      R => '0'
    );
\regs_out_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(31),
      Q => \^reg2_o\(31),
      R => '0'
    );
\regs_out_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(3),
      Q => \^reg2_o\(3),
      R => '0'
    );
\regs_out_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(4),
      Q => \^reg2_o\(4),
      R => '0'
    );
\regs_out_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(5),
      Q => \^reg2_o\(5),
      R => '0'
    );
\regs_out_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(6),
      Q => \^reg2_o\(6),
      R => '0'
    );
\regs_out_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(7),
      Q => \^reg2_o\(7),
      R => '0'
    );
\regs_out_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(8),
      Q => \^reg2_o\(8),
      R => '0'
    );
\regs_out_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[2][31]_0\(0),
      D => axil_wdata(9),
      Q => \^reg2_o\(9),
      R => '0'
    );
\regs_out_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(0),
      Q => \^reg3_o\(0),
      R => '0'
    );
\regs_out_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(10),
      Q => \^reg3_o\(10),
      R => '0'
    );
\regs_out_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(11),
      Q => \^reg3_o\(11),
      R => '0'
    );
\regs_out_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(12),
      Q => \^reg3_o\(12),
      R => '0'
    );
\regs_out_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(13),
      Q => \^reg3_o\(13),
      R => '0'
    );
\regs_out_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(14),
      Q => \^reg3_o\(14),
      R => '0'
    );
\regs_out_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(15),
      Q => \^reg3_o\(15),
      R => '0'
    );
\regs_out_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(16),
      Q => \^reg3_o\(16),
      R => '0'
    );
\regs_out_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(17),
      Q => \^reg3_o\(17),
      R => '0'
    );
\regs_out_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(18),
      Q => \^reg3_o\(18),
      R => '0'
    );
\regs_out_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(19),
      Q => \^reg3_o\(19),
      R => '0'
    );
\regs_out_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(1),
      Q => \^reg3_o\(1),
      R => '0'
    );
\regs_out_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(20),
      Q => \^reg3_o\(20),
      R => '0'
    );
\regs_out_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(21),
      Q => \^reg3_o\(21),
      R => '0'
    );
\regs_out_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(22),
      Q => \^reg3_o\(22),
      R => '0'
    );
\regs_out_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(23),
      Q => \^reg3_o\(23),
      R => '0'
    );
\regs_out_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(24),
      Q => \^reg3_o\(24),
      R => '0'
    );
\regs_out_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(25),
      Q => \^reg3_o\(25),
      R => '0'
    );
\regs_out_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(26),
      Q => \^reg3_o\(26),
      R => '0'
    );
\regs_out_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(27),
      Q => \^reg3_o\(27),
      R => '0'
    );
\regs_out_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(28),
      Q => \^reg3_o\(28),
      R => '0'
    );
\regs_out_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(29),
      Q => \^reg3_o\(29),
      R => '0'
    );
\regs_out_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(2),
      Q => \^reg3_o\(2),
      R => '0'
    );
\regs_out_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(30),
      Q => \^reg3_o\(30),
      R => '0'
    );
\regs_out_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(31),
      Q => \^reg3_o\(31),
      R => '0'
    );
\regs_out_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(3),
      Q => \^reg3_o\(3),
      R => '0'
    );
\regs_out_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(4),
      Q => \^reg3_o\(4),
      R => '0'
    );
\regs_out_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(5),
      Q => \^reg3_o\(5),
      R => '0'
    );
\regs_out_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(6),
      Q => \^reg3_o\(6),
      R => '0'
    );
\regs_out_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(7),
      Q => \^reg3_o\(7),
      R => '0'
    );
\regs_out_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(8),
      Q => \^reg3_o\(8),
      R => '0'
    );
\regs_out_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axil_aclk,
      CE => \regs_out_reg[3][31]_1\(0),
      D => axil_wdata(9),
      Q => \^reg3_o\(9),
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
    axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_rvalid : out STD_LOGIC;
    reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_bvalid : out STD_LOGIC;
    axil_aclk : in STD_LOGIC;
    axil_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    axil_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    axil_arvalid : in STD_LOGIC;
    axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_wvalid : in STD_LOGIC;
    axil_awvalid : in STD_LOGIC;
    reg3_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg0_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_aresetn : in STD_LOGIC;
    axil_bready : in STD_LOGIC;
    axil_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_comblock is
  signal AXIL_inst_n_42 : STD_LOGIC;
  signal comblock_i_n_0 : STD_LOGIC;
  signal comblock_i_n_129 : STD_LOGIC;
  signal comblock_i_n_130 : STD_LOGIC;
  signal comblock_i_n_131 : STD_LOGIC;
  signal comblock_i_n_132 : STD_LOGIC;
  signal comblock_i_n_133 : STD_LOGIC;
  signal comblock_i_n_134 : STD_LOGIC;
  signal comblock_i_n_135 : STD_LOGIC;
  signal comblock_i_n_136 : STD_LOGIC;
  signal comblock_i_n_137 : STD_LOGIC;
  signal comblock_i_n_138 : STD_LOGIC;
  signal comblock_i_n_139 : STD_LOGIC;
  signal comblock_i_n_140 : STD_LOGIC;
  signal comblock_i_n_141 : STD_LOGIC;
  signal comblock_i_n_142 : STD_LOGIC;
  signal comblock_i_n_143 : STD_LOGIC;
  signal comblock_i_n_144 : STD_LOGIC;
  signal comblock_i_n_145 : STD_LOGIC;
  signal comblock_i_n_146 : STD_LOGIC;
  signal comblock_i_n_147 : STD_LOGIC;
  signal comblock_i_n_148 : STD_LOGIC;
  signal comblock_i_n_149 : STD_LOGIC;
  signal comblock_i_n_150 : STD_LOGIC;
  signal comblock_i_n_151 : STD_LOGIC;
  signal comblock_i_n_152 : STD_LOGIC;
  signal comblock_i_n_153 : STD_LOGIC;
  signal comblock_i_n_154 : STD_LOGIC;
  signal comblock_i_n_155 : STD_LOGIC;
  signal comblock_i_n_156 : STD_LOGIC;
  signal comblock_i_n_157 : STD_LOGIC;
  signal comblock_i_n_158 : STD_LOGIC;
  signal comblock_i_n_159 : STD_LOGIC;
  signal \regs_out[1]_1\ : STD_LOGIC;
  signal \regs_out[2]_2\ : STD_LOGIC;
  signal \regs_out[3]_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
AXIL_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXIL
     port map (
      E(0) => \regs_out[3]_0\,
      Q(1 downto 0) => sel0(1 downto 0),
      \axi_awaddr_reg[7]_0\(0) => \regs_out[1]_1\,
      \axi_awaddr_reg[7]_1\(0) => \regs_out[2]_2\,
      \axi_awaddr_reg[7]_2\(0) => AXIL_inst_n_42,
      \axi_rdata_reg[0]_0\ => comblock_i_n_159,
      \axi_rdata_reg[10]_0\ => comblock_i_n_149,
      \axi_rdata_reg[11]_0\ => comblock_i_n_148,
      \axi_rdata_reg[12]_0\ => comblock_i_n_147,
      \axi_rdata_reg[13]_0\ => comblock_i_n_146,
      \axi_rdata_reg[14]_0\ => comblock_i_n_145,
      \axi_rdata_reg[15]_0\ => comblock_i_n_144,
      \axi_rdata_reg[16]_0\ => comblock_i_n_143,
      \axi_rdata_reg[17]_0\ => comblock_i_n_142,
      \axi_rdata_reg[18]_0\ => comblock_i_n_141,
      \axi_rdata_reg[19]_0\ => comblock_i_n_140,
      \axi_rdata_reg[1]_0\ => comblock_i_n_158,
      \axi_rdata_reg[20]_0\ => comblock_i_n_139,
      \axi_rdata_reg[21]_0\ => comblock_i_n_138,
      \axi_rdata_reg[22]_0\ => comblock_i_n_137,
      \axi_rdata_reg[23]_0\ => comblock_i_n_136,
      \axi_rdata_reg[24]_0\ => comblock_i_n_135,
      \axi_rdata_reg[25]_0\ => comblock_i_n_134,
      \axi_rdata_reg[26]_0\ => comblock_i_n_133,
      \axi_rdata_reg[27]_0\ => comblock_i_n_132,
      \axi_rdata_reg[28]_0\ => comblock_i_n_131,
      \axi_rdata_reg[29]_0\ => comblock_i_n_130,
      \axi_rdata_reg[2]_0\ => comblock_i_n_157,
      \axi_rdata_reg[30]_0\ => comblock_i_n_129,
      \axi_rdata_reg[31]_0\ => comblock_i_n_0,
      \axi_rdata_reg[3]_0\ => comblock_i_n_156,
      \axi_rdata_reg[4]_0\ => comblock_i_n_155,
      \axi_rdata_reg[5]_0\ => comblock_i_n_154,
      \axi_rdata_reg[6]_0\ => comblock_i_n_153,
      \axi_rdata_reg[7]_0\ => comblock_i_n_152,
      \axi_rdata_reg[8]_0\ => comblock_i_n_151,
      \axi_rdata_reg[9]_0\ => comblock_i_n_150,
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
      axil_rdata(31 downto 0) => axil_rdata(31 downto 0),
      axil_rready => axil_rready,
      axil_rvalid => axil_rvalid,
      axil_wready => axil_wready,
      axil_wvalid => axil_wvalid,
      reg0_i(31 downto 0) => reg0_i(31 downto 0),
      reg1_i(31 downto 0) => reg1_i(31 downto 0),
      reg2_i(31 downto 0) => reg2_i(31 downto 0),
      reg3_i(31 downto 0) => reg3_i(31 downto 0)
    );
comblock_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ComBlock
     port map (
      E(0) => AXIL_inst_n_42,
      Q(1 downto 0) => sel0(1 downto 0),
      axil_aclk => axil_aclk,
      axil_wdata(31 downto 0) => axil_wdata(31 downto 0),
      reg0_o(31 downto 0) => reg0_o(31 downto 0),
      reg1_o(31 downto 0) => reg1_o(31 downto 0),
      reg2_o(31 downto 0) => reg2_o(31 downto 0),
      reg3_o(31 downto 0) => reg3_o(31 downto 0),
      \regs_out_reg[1][31]_0\(0) => \regs_out[1]_1\,
      \regs_out_reg[2][31]_0\(0) => \regs_out[2]_2\,
      \regs_out_reg[3][0]_0\ => comblock_i_n_159,
      \regs_out_reg[3][10]_0\ => comblock_i_n_149,
      \regs_out_reg[3][11]_0\ => comblock_i_n_148,
      \regs_out_reg[3][12]_0\ => comblock_i_n_147,
      \regs_out_reg[3][13]_0\ => comblock_i_n_146,
      \regs_out_reg[3][14]_0\ => comblock_i_n_145,
      \regs_out_reg[3][15]_0\ => comblock_i_n_144,
      \regs_out_reg[3][16]_0\ => comblock_i_n_143,
      \regs_out_reg[3][17]_0\ => comblock_i_n_142,
      \regs_out_reg[3][18]_0\ => comblock_i_n_141,
      \regs_out_reg[3][19]_0\ => comblock_i_n_140,
      \regs_out_reg[3][1]_0\ => comblock_i_n_158,
      \regs_out_reg[3][20]_0\ => comblock_i_n_139,
      \regs_out_reg[3][21]_0\ => comblock_i_n_138,
      \regs_out_reg[3][22]_0\ => comblock_i_n_137,
      \regs_out_reg[3][23]_0\ => comblock_i_n_136,
      \regs_out_reg[3][24]_0\ => comblock_i_n_135,
      \regs_out_reg[3][25]_0\ => comblock_i_n_134,
      \regs_out_reg[3][26]_0\ => comblock_i_n_133,
      \regs_out_reg[3][27]_0\ => comblock_i_n_132,
      \regs_out_reg[3][28]_0\ => comblock_i_n_131,
      \regs_out_reg[3][29]_0\ => comblock_i_n_130,
      \regs_out_reg[3][2]_0\ => comblock_i_n_157,
      \regs_out_reg[3][30]_0\ => comblock_i_n_129,
      \regs_out_reg[3][31]_0\ => comblock_i_n_0,
      \regs_out_reg[3][31]_1\(0) => \regs_out[3]_0\,
      \regs_out_reg[3][3]_0\ => comblock_i_n_156,
      \regs_out_reg[3][4]_0\ => comblock_i_n_155,
      \regs_out_reg[3][5]_0\ => comblock_i_n_154,
      \regs_out_reg[3][6]_0\ => comblock_i_n_153,
      \regs_out_reg[3][7]_0\ => comblock_i_n_152,
      \regs_out_reg[3][8]_0\ => comblock_i_n_151,
      \regs_out_reg[3][9]_0\ => comblock_i_n_150
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    reg0_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_comblock_0_0,axi_comblock,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_comblock,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of axil_aclk : signal is "xilinx.com:signal:clock:1.0 axil_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axil_aclk : signal is "XIL_INTERFACENAME axil_aclk, ASSOCIATED_RESET axil_aresetn, ASSOCIATED_BUSIF AXIL, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute x_interface_parameter of axil_awaddr : signal is "XIL_INTERFACENAME AXIL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of axil_awprot : signal is "xilinx.com:interface:aximm:1.0 AXIL AWPROT";
  attribute x_interface_info of axil_bresp : signal is "xilinx.com:interface:aximm:1.0 AXIL BRESP";
  attribute x_interface_info of axil_rdata : signal is "xilinx.com:interface:aximm:1.0 AXIL RDATA";
  attribute x_interface_info of axil_rresp : signal is "xilinx.com:interface:aximm:1.0 AXIL RRESP";
  attribute x_interface_info of axil_wdata : signal is "xilinx.com:interface:aximm:1.0 AXIL WDATA";
  attribute x_interface_info of axil_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXIL WSTRB";
  attribute x_interface_info of reg0_i : signal is "ictp:user:IREGS:1.0 IN_REGS reg0_i";
  attribute x_interface_info of reg0_o : signal is "ictp:user:OREGS:1.0 OUT_REGS reg0_o";
  attribute x_interface_info of reg1_i : signal is "ictp:user:IREGS:1.0 IN_REGS reg1_i";
  attribute x_interface_info of reg1_o : signal is "ictp:user:OREGS:1.0 OUT_REGS reg1_o";
  attribute x_interface_info of reg2_i : signal is "ictp:user:IREGS:1.0 IN_REGS reg2_i";
  attribute x_interface_info of reg2_o : signal is "ictp:user:OREGS:1.0 OUT_REGS reg2_o";
  attribute x_interface_info of reg3_i : signal is "ictp:user:IREGS:1.0 IN_REGS reg3_i";
  attribute x_interface_info of reg3_o : signal is "ictp:user:OREGS:1.0 OUT_REGS reg3_o";
begin
  axil_bresp(1) <= \<const0>\;
  axil_bresp(0) <= \<const0>\;
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
      axil_rdata(31 downto 0) => axil_rdata(31 downto 0),
      axil_rready => axil_rready,
      axil_rvalid => axil_rvalid,
      axil_wdata(31 downto 0) => axil_wdata(31 downto 0),
      axil_wready => axil_wready,
      axil_wvalid => axil_wvalid,
      reg0_i(31 downto 0) => reg0_i(31 downto 0),
      reg0_o(31 downto 0) => reg0_o(31 downto 0),
      reg1_i(31 downto 0) => reg1_i(31 downto 0),
      reg1_o(31 downto 0) => reg1_o(31 downto 0),
      reg2_i(31 downto 0) => reg2_i(31 downto 0),
      reg2_o(31 downto 0) => reg2_o(31 downto 0),
      reg3_i(31 downto 0) => reg3_i(31 downto 0),
      reg3_o(31 downto 0) => reg3_o(31 downto 0)
    );
end STRUCTURE;
