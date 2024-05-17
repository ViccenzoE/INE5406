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

-- DATE "05/17/2024 16:24:20"

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

ENTITY 	Topo IS
    PORT (
	CLOCK : IN std_logic;
	iniciar : IN std_logic;
	reset : IN std_logic;
	sample_ori : IN std_logic_vector(7 DOWNTO 0);
	sample_can : IN std_logic_vector(7 DOWNTO 0);
	SAD_saida : BUFFER std_logic_vector(13 DOWNTO 0);
	end_sad : BUFFER std_logic_vector(5 DOWNTO 0);
	read_sad : BUFFER std_logic;
	pronto : BUFFER std_logic
	);
END Topo;

-- Design Ports Information
-- sample_ori[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[2]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[4]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[6]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[7]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[4]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[6]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[7]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[6]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[8]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[9]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[10]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[11]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[12]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[13]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_sad	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Topo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sample_ori : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sample_can : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SAD_saida : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_end_sad : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_read_sad : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sample_ori[0]~input_o\ : std_logic;
SIGNAL \sample_ori[1]~input_o\ : std_logic;
SIGNAL \sample_ori[2]~input_o\ : std_logic;
SIGNAL \sample_ori[3]~input_o\ : std_logic;
SIGNAL \sample_ori[4]~input_o\ : std_logic;
SIGNAL \sample_ori[5]~input_o\ : std_logic;
SIGNAL \sample_ori[6]~input_o\ : std_logic;
SIGNAL \sample_ori[7]~input_o\ : std_logic;
SIGNAL \sample_can[0]~input_o\ : std_logic;
SIGNAL \sample_can[1]~input_o\ : std_logic;
SIGNAL \sample_can[2]~input_o\ : std_logic;
SIGNAL \sample_can[3]~input_o\ : std_logic;
SIGNAL \sample_can[4]~input_o\ : std_logic;
SIGNAL \sample_can[5]~input_o\ : std_logic;
SIGNAL \sample_can[6]~input_o\ : std_logic;
SIGNAL \sample_can[7]~input_o\ : std_logic;
SIGNAL \SAD_saida[0]~output_o\ : std_logic;
SIGNAL \SAD_saida[1]~output_o\ : std_logic;
SIGNAL \SAD_saida[2]~output_o\ : std_logic;
SIGNAL \SAD_saida[3]~output_o\ : std_logic;
SIGNAL \SAD_saida[4]~output_o\ : std_logic;
SIGNAL \SAD_saida[5]~output_o\ : std_logic;
SIGNAL \SAD_saida[6]~output_o\ : std_logic;
SIGNAL \SAD_saida[7]~output_o\ : std_logic;
SIGNAL \SAD_saida[8]~output_o\ : std_logic;
SIGNAL \SAD_saida[9]~output_o\ : std_logic;
SIGNAL \SAD_saida[10]~output_o\ : std_logic;
SIGNAL \SAD_saida[11]~output_o\ : std_logic;
SIGNAL \SAD_saida[12]~output_o\ : std_logic;
SIGNAL \SAD_saida[13]~output_o\ : std_logic;
SIGNAL \end_sad[0]~output_o\ : std_logic;
SIGNAL \end_sad[1]~output_o\ : std_logic;
SIGNAL \end_sad[2]~output_o\ : std_logic;
SIGNAL \end_sad[3]~output_o\ : std_logic;
SIGNAL \end_sad[4]~output_o\ : std_logic;
SIGNAL \end_sad[5]~output_o\ : std_logic;
SIGNAL \read_sad~output_o\ : std_logic;
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \V2|PE.S1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \V2|EA.S1~q\ : std_logic;
SIGNAL \V2|EA.S2~feeder_combout\ : std_logic;
SIGNAL \V2|EA.S2~q\ : std_logic;
SIGNAL \V2|EA.S5~feeder_combout\ : std_logic;
SIGNAL \V2|EA.S5~q\ : std_logic;
SIGNAL \V2|Selector0~0_combout\ : std_logic;
SIGNAL \V2|EA.S0~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \V2|ALT_INV_EA.S0~q\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_iniciar <= iniciar;
ww_reset <= reset;
ww_sample_ori <= sample_ori;
ww_sample_can <= sample_can;
SAD_saida <= ww_SAD_saida;
end_sad <= ww_end_sad;
read_sad <= ww_read_sad;
pronto <= ww_pronto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\V2|ALT_INV_EA.S0~q\ <= NOT \V2|EA.S0~q\;

-- Location: IOOBUF_X3_Y0_N2
\SAD_saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\SAD_saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\SAD_saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\SAD_saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\SAD_saida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\SAD_saida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\SAD_saida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\SAD_saida[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[7]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\SAD_saida[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\SAD_saida[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\SAD_saida[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[10]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\SAD_saida[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[11]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\SAD_saida[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[12]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\SAD_saida[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SAD_saida[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\end_sad[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end_sad[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\end_sad[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end_sad[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\end_sad[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end_sad[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\end_sad[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end_sad[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\end_sad[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end_sad[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\end_sad[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end_sad[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\read_sad~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_sad~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\pronto~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V2|ALT_INV_EA.S0~q\,
	devoe => ww_devoe,
	o => \pronto~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\CLOCK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G4
\CLOCK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X1_Y6_N18
\V2|PE.S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S1~0_combout\ = (\iniciar~input_o\ & !\V2|EA.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iniciar~input_o\,
	datad => \V2|EA.S0~q\,
	combout => \V2|PE.S1~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y6_N19
\V2|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|PE.S1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S1~q\);

-- Location: LCCOMB_X1_Y6_N0
\V2|EA.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|EA.S2~feeder_combout\ = \V2|EA.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V2|EA.S1~q\,
	combout => \V2|EA.S2~feeder_combout\);

-- Location: FF_X1_Y6_N1
\V2|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|EA.S2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S2~q\);

-- Location: LCCOMB_X1_Y6_N2
\V2|EA.S5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|EA.S5~feeder_combout\ = \V2|EA.S2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V2|EA.S2~q\,
	combout => \V2|EA.S5~feeder_combout\);

-- Location: FF_X1_Y6_N3
\V2|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|EA.S5~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S5~q\);

-- Location: LCCOMB_X1_Y6_N12
\V2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|Selector0~0_combout\ = (!\V2|EA.S5~q\ & ((\iniciar~input_o\) # (\V2|EA.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iniciar~input_o\,
	datac => \V2|EA.S0~q\,
	datad => \V2|EA.S5~q\,
	combout => \V2|Selector0~0_combout\);

-- Location: FF_X1_Y6_N13
\V2|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S0~q\);

-- Location: IOIBUF_X28_Y0_N22
\sample_ori[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(0),
	o => \sample_ori[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\sample_ori[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(1),
	o => \sample_ori[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\sample_ori[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(2),
	o => \sample_ori[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\sample_ori[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(3),
	o => \sample_ori[3]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\sample_ori[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(4),
	o => \sample_ori[4]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\sample_ori[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(5),
	o => \sample_ori[5]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\sample_ori[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(6),
	o => \sample_ori[6]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\sample_ori[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(7),
	o => \sample_ori[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\sample_can[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(0),
	o => \sample_can[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\sample_can[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(1),
	o => \sample_can[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\sample_can[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(2),
	o => \sample_can[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\sample_can[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(3),
	o => \sample_can[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\sample_can[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(4),
	o => \sample_can[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\sample_can[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(5),
	o => \sample_can[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\sample_can[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(6),
	o => \sample_can[6]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\sample_can[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(7),
	o => \sample_can[7]~input_o\);

ww_SAD_saida(0) <= \SAD_saida[0]~output_o\;

ww_SAD_saida(1) <= \SAD_saida[1]~output_o\;

ww_SAD_saida(2) <= \SAD_saida[2]~output_o\;

ww_SAD_saida(3) <= \SAD_saida[3]~output_o\;

ww_SAD_saida(4) <= \SAD_saida[4]~output_o\;

ww_SAD_saida(5) <= \SAD_saida[5]~output_o\;

ww_SAD_saida(6) <= \SAD_saida[6]~output_o\;

ww_SAD_saida(7) <= \SAD_saida[7]~output_o\;

ww_SAD_saida(8) <= \SAD_saida[8]~output_o\;

ww_SAD_saida(9) <= \SAD_saida[9]~output_o\;

ww_SAD_saida(10) <= \SAD_saida[10]~output_o\;

ww_SAD_saida(11) <= \SAD_saida[11]~output_o\;

ww_SAD_saida(12) <= \SAD_saida[12]~output_o\;

ww_SAD_saida(13) <= \SAD_saida[13]~output_o\;

ww_end_sad(0) <= \end_sad[0]~output_o\;

ww_end_sad(1) <= \end_sad[1]~output_o\;

ww_end_sad(2) <= \end_sad[2]~output_o\;

ww_end_sad(3) <= \end_sad[3]~output_o\;

ww_end_sad(4) <= \end_sad[4]~output_o\;

ww_end_sad(5) <= \end_sad[5]~output_o\;

ww_read_sad <= \read_sad~output_o\;

ww_pronto <= \pronto~output_o\;
END structure;


