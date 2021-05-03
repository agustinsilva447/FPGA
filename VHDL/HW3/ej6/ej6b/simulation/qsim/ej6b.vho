-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/03/2021 10:54:19"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ej6b IS
    PORT (
	clk : IN std_logic;
	areset : IN std_logic;
	ce : IN std_logic;
	l : IN std_logic;
	carga : IN std_logic_vector(3 DOWNTO 0);
	salida : OUT std_logic_vector(3 DOWNTO 0)
	);
END ej6b;

-- Design Ports Information
-- salida[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carga[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- areset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ce	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carga[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carga[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carga[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ej6b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_areset : std_logic;
SIGNAL ww_ce : std_logic;
SIGNAL ww_l : std_logic;
SIGNAL ww_carga : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \areset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \carga[0]~input_o\ : std_logic;
SIGNAL \l~input_o\ : std_logic;
SIGNAL \cuenta~0_combout\ : std_logic;
SIGNAL \areset~input_o\ : std_logic;
SIGNAL \areset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ce~input_o\ : std_logic;
SIGNAL \cuenta[0]~1_combout\ : std_logic;
SIGNAL \carga[1]~input_o\ : std_logic;
SIGNAL \cuenta~2_combout\ : std_logic;
SIGNAL \carga[2]~input_o\ : std_logic;
SIGNAL \cuenta~3_combout\ : std_logic;
SIGNAL \cuenta~4_combout\ : std_logic;
SIGNAL \carga[3]~input_o\ : std_logic;
SIGNAL \cuenta~5_combout\ : std_logic;
SIGNAL \cuenta~6_combout\ : std_logic;
SIGNAL cuenta : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_areset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_areset <= areset;
ww_ce <= ce;
ww_l <= l;
ww_carga <= carga;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\areset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \areset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_areset~inputclkctrl_outclk\ <= NOT \areset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y12_N9
\salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(0),
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(1),
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(2),
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta(3),
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y12_N1
\carga[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carga(0),
	o => \carga[0]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\l~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l,
	o => \l~input_o\);

-- Location: LCCOMB_X1_Y15_N8
\cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~0_combout\ = (\l~input_o\ & (\carga[0]~input_o\)) # (!\l~input_o\ & ((!cuenta(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carga[0]~input_o\,
	datac => cuenta(0),
	datad => \l~input_o\,
	combout => \cuenta~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\areset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_areset,
	o => \areset~input_o\);

-- Location: CLKCTRL_G4
\areset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \areset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \areset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\ce~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ce,
	o => \ce~input_o\);

-- Location: LCCOMB_X1_Y15_N24
\cuenta[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[0]~1_combout\ = (\l~input_o\) # (\ce~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l~input_o\,
	datad => \ce~input_o\,
	combout => \cuenta[0]~1_combout\);

-- Location: FF_X1_Y15_N9
\cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \cuenta~0_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	ena => \cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(0));

-- Location: IOIBUF_X0_Y23_N22
\carga[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carga(1),
	o => \carga[1]~input_o\);

-- Location: LCCOMB_X1_Y15_N6
\cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~2_combout\ = (\l~input_o\ & (\carga[1]~input_o\)) # (!\l~input_o\ & ((cuenta(1) $ (cuenta(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l~input_o\,
	datab => \carga[1]~input_o\,
	datac => cuenta(1),
	datad => cuenta(0),
	combout => \cuenta~2_combout\);

-- Location: FF_X1_Y15_N7
\cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \cuenta~2_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	ena => \cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(1));

-- Location: IOIBUF_X0_Y23_N15
\carga[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carga(2),
	o => \carga[2]~input_o\);

-- Location: LCCOMB_X1_Y15_N10
\cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~3_combout\ = (!\l~input_o\ & (cuenta(2) $ (((cuenta(0) & cuenta(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l~input_o\,
	datab => cuenta(0),
	datac => cuenta(2),
	datad => cuenta(1),
	combout => \cuenta~3_combout\);

-- Location: LCCOMB_X1_Y15_N4
\cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~4_combout\ = (\cuenta~3_combout\) # ((\l~input_o\ & \carga[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l~input_o\,
	datab => \carga[2]~input_o\,
	datad => \cuenta~3_combout\,
	combout => \cuenta~4_combout\);

-- Location: FF_X1_Y15_N5
\cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \cuenta~4_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	ena => \cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(2));

-- Location: IOIBUF_X0_Y15_N1
\carga[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carga(3),
	o => \carga[3]~input_o\);

-- Location: LCCOMB_X1_Y15_N28
\cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~5_combout\ = (\l~input_o\ & (\carga[3]~input_o\)) # (!\l~input_o\ & (((!cuenta(0)) # (!cuenta(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l~input_o\,
	datab => \carga[3]~input_o\,
	datac => cuenta(2),
	datad => cuenta(0),
	combout => \cuenta~5_combout\);

-- Location: LCCOMB_X1_Y15_N18
\cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~6_combout\ = (\l~input_o\ & (((\cuenta~5_combout\)))) # (!\l~input_o\ & (cuenta(3) $ (((cuenta(1) & !\cuenta~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(1),
	datab => \l~input_o\,
	datac => cuenta(3),
	datad => \cuenta~5_combout\,
	combout => \cuenta~6_combout\);

-- Location: FF_X1_Y15_N19
\cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \cuenta~6_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	ena => \cuenta[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(3));

ww_salida(0) <= \salida[0]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;
END structure;


