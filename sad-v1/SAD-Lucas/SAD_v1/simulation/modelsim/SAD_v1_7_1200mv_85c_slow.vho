-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/15/2024 21:07:10"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sad_bc IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	menor : IN std_logic;
	read_mem : OUT std_logic;
	done : OUT std_logic;
	cpA : OUT std_logic;
	cpB : OUT std_logic;
	ci : OUT std_logic;
	zi : OUT std_logic;
	zsoma : OUT std_logic;
	csoma : OUT std_logic;
	csad_reg : OUT std_logic
	);
END sad_bc;

-- Design Ports Information
-- read_mem	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpA	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpB	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ci	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zi	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zsoma	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csoma	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csad_reg	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sad_bc IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_menor : std_logic;
SIGNAL ww_read_mem : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_cpA : std_logic;
SIGNAL ww_cpB : std_logic;
SIGNAL ww_ci : std_logic;
SIGNAL ww_zi : std_logic;
SIGNAL ww_zsoma : std_logic;
SIGNAL ww_csoma : std_logic;
SIGNAL ww_csad_reg : std_logic;
SIGNAL \REG~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \read_mem~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \cpA~output_o\ : std_logic;
SIGNAL \cpB~output_o\ : std_logic;
SIGNAL \ci~output_o\ : std_logic;
SIGNAL \zi~output_o\ : std_logic;
SIGNAL \zsoma~output_o\ : std_logic;
SIGNAL \csoma~output_o\ : std_logic;
SIGNAL \csad_reg~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \menor~input_o\ : std_logic;
SIGNAL \PE.S5~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \REG~0_combout\ : std_logic;
SIGNAL \REG~0clkctrl_outclk\ : std_logic;
SIGNAL \EA.S5~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \EA.S0~feeder_combout\ : std_logic;
SIGNAL \EA.S0~q\ : std_logic;
SIGNAL \PE.S1~0_combout\ : std_logic;
SIGNAL \EA.S1~feeder_combout\ : std_logic;
SIGNAL \EA.S1~q\ : std_logic;
SIGNAL \EA.S4~q\ : std_logic;
SIGNAL \PE.S2~combout\ : std_logic;
SIGNAL \EA.S2~feeder_combout\ : std_logic;
SIGNAL \EA.S2~q\ : std_logic;
SIGNAL \PE.S3~0_combout\ : std_logic;
SIGNAL \EA.S3~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \read_mem$latch~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \done$latch~combout\ : std_logic;
SIGNAL \zi$latch~combout\ : std_logic;
SIGNAL \ALT_INV_REG~0clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_menor <= menor;
read_mem <= ww_read_mem;
done <= ww_done;
cpA <= ww_cpA;
cpB <= ww_cpB;
ci <= ww_ci;
zi <= ww_zi;
zsoma <= ww_zsoma;
csoma <= ww_csoma;
csad_reg <= ww_csad_reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\REG~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \REG~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_REG~0clkctrl_outclk\ <= NOT \REG~0clkctrl_outclk\;

-- Location: IOOBUF_X0_Y18_N23
\read_mem~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_mem$latch~combout\,
	devoe => ww_devoe,
	o => \read_mem~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\done~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done$latch~combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\cpA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cpA~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\cpB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cpB~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\ci~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ci~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\zi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zi$latch~combout\,
	devoe => ww_devoe,
	o => \zi~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\zsoma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zi$latch~combout\,
	devoe => ww_devoe,
	o => \zsoma~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\csoma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \csoma~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\csad_reg~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \csad_reg~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X0_Y8_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\menor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_menor,
	o => \menor~input_o\);

-- Location: LCCOMB_X1_Y11_N4
\PE.S5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PE.S5~0_combout\ = (!\menor~input_o\ & \EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \menor~input_o\,
	datad => \EA.S2~q\,
	combout => \PE.S5~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y11_N26
\REG~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REG~0_combout\ = (\reset~input_o\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \REG~0_combout\);

-- Location: CLKCTRL_G1
\REG~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG~0clkctrl_outclk\);

-- Location: FF_X1_Y11_N5
\EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PE.S5~0_combout\,
	clrn => \ALT_INV_REG~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S5~q\);

-- Location: LCCOMB_X1_Y11_N24
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\EA.S5~q\ & ((\EA.S0~q\) # (\enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA.S0~q\,
	datac => \EA.S5~q\,
	datad => \enable~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\EA.S0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EA.S0~feeder_combout\ = \Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	combout => \EA.S0~feeder_combout\);

-- Location: FF_X1_Y11_N29
\EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EA.S0~feeder_combout\,
	clrn => \ALT_INV_REG~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S0~q\);

-- Location: LCCOMB_X1_Y11_N16
\PE.S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PE.S1~0_combout\ = (\enable~input_o\ & !\EA.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \EA.S0~q\,
	combout => \PE.S1~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\EA.S1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EA.S1~feeder_combout\ = \PE.S1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PE.S1~0_combout\,
	combout => \EA.S1~feeder_combout\);

-- Location: FF_X1_Y11_N23
\EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EA.S1~feeder_combout\,
	clrn => \ALT_INV_REG~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S1~q\);

-- Location: FF_X1_Y11_N17
\EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \EA.S3~q\,
	clrn => \ALT_INV_REG~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S4~q\);

-- Location: LCCOMB_X1_Y11_N6
\PE.S2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PE.S2~combout\ = (\EA.S1~q\) # (\EA.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EA.S1~q\,
	datad => \EA.S4~q\,
	combout => \PE.S2~combout\);

-- Location: LCCOMB_X1_Y11_N10
\EA.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EA.S2~feeder_combout\ = \PE.S2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PE.S2~combout\,
	combout => \EA.S2~feeder_combout\);

-- Location: FF_X1_Y11_N11
\EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \EA.S2~feeder_combout\,
	clrn => \ALT_INV_REG~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S2~q\);

-- Location: LCCOMB_X1_Y11_N2
\PE.S3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PE.S3~0_combout\ = (\EA.S2~q\ & \menor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EA.S2~q\,
	datad => \menor~input_o\,
	combout => \PE.S3~0_combout\);

-- Location: FF_X1_Y11_N27
\EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PE.S3~0_combout\,
	clrn => \ALT_INV_REG~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EA.S3~q\);

-- Location: LCCOMB_X1_Y11_N8
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\EA.S1~q\) # ((\EA.S5~q\) # (\EA.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S1~q\,
	datac => \EA.S5~q\,
	datad => \EA.S2~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\read_mem$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_mem$latch~combout\ = (\WideOr0~0_combout\ & (\read_mem$latch~combout\)) # (!\WideOr0~0_combout\ & ((\EA.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \read_mem$latch~combout\,
	datac => \EA.S3~q\,
	datad => \WideOr0~0_combout\,
	combout => \read_mem$latch~combout\);

-- Location: LCCOMB_X1_Y11_N30
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\EA.S1~q\) # (!\EA.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EA.S1~q\,
	datad => \EA.S0~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y11_N18
\done$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \done$latch~combout\ = (\WideOr1~0_combout\ & ((!\EA.S1~q\))) # (!\WideOr1~0_combout\ & (\done$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done$latch~combout\,
	datac => \WideOr1~0_combout\,
	datad => \EA.S1~q\,
	combout => \done$latch~combout\);

-- Location: LCCOMB_X1_Y11_N14
\zi$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zi$latch~combout\ = (\PE.S2~combout\ & ((!\EA.S4~q\))) # (!\PE.S2~combout\ & (\zi$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE.S2~combout\,
	datac => \zi$latch~combout\,
	datad => \EA.S4~q\,
	combout => \zi$latch~combout\);

ww_read_mem <= \read_mem~output_o\;

ww_done <= \done~output_o\;

ww_cpA <= \cpA~output_o\;

ww_cpB <= \cpB~output_o\;

ww_ci <= \ci~output_o\;

ww_zi <= \zi~output_o\;

ww_zsoma <= \zsoma~output_o\;

ww_csoma <= \csoma~output_o\;

ww_csad_reg <= \csad_reg~output_o\;
END structure;


