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

-- DATE "05/16/2024 20:17:04"

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
	sample_ori : IN std_logic_vector(31 DOWNTO 0);
	sample_can : IN std_logic_vector(31 DOWNTO 0);
	SAD_saida : BUFFER std_logic_vector(7 DOWNTO 0);
	end_sad : BUFFER std_logic_vector(3 DOWNTO 0);
	read_sad : BUFFER std_logic;
	pronto : BUFFER std_logic
	);
END Topo;

-- Design Ports Information
-- sample_ori[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[5]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[6]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[8]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[9]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[10]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[11]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[12]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[13]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[14]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[15]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[16]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[17]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[18]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[19]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[20]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[21]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[22]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[23]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[24]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[25]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[26]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[27]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[28]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[29]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[30]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[31]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[7]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[8]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[9]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[10]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[11]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[12]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[13]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[14]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[15]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[16]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[17]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[18]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[19]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[20]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[21]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[22]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[23]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[24]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[25]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[26]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[27]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[28]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[29]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[30]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[31]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[3]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_sad	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sample_ori : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sample_can : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SAD_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_end_sad : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_read_sad : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL \V2|REG~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sample_ori[0]~input_o\ : std_logic;
SIGNAL \sample_ori[1]~input_o\ : std_logic;
SIGNAL \sample_ori[2]~input_o\ : std_logic;
SIGNAL \sample_ori[3]~input_o\ : std_logic;
SIGNAL \sample_ori[4]~input_o\ : std_logic;
SIGNAL \sample_ori[5]~input_o\ : std_logic;
SIGNAL \sample_ori[6]~input_o\ : std_logic;
SIGNAL \sample_ori[7]~input_o\ : std_logic;
SIGNAL \sample_ori[8]~input_o\ : std_logic;
SIGNAL \sample_ori[9]~input_o\ : std_logic;
SIGNAL \sample_ori[10]~input_o\ : std_logic;
SIGNAL \sample_ori[11]~input_o\ : std_logic;
SIGNAL \sample_ori[12]~input_o\ : std_logic;
SIGNAL \sample_ori[13]~input_o\ : std_logic;
SIGNAL \sample_ori[14]~input_o\ : std_logic;
SIGNAL \sample_ori[15]~input_o\ : std_logic;
SIGNAL \sample_ori[16]~input_o\ : std_logic;
SIGNAL \sample_ori[17]~input_o\ : std_logic;
SIGNAL \sample_ori[18]~input_o\ : std_logic;
SIGNAL \sample_ori[19]~input_o\ : std_logic;
SIGNAL \sample_ori[20]~input_o\ : std_logic;
SIGNAL \sample_ori[21]~input_o\ : std_logic;
SIGNAL \sample_ori[22]~input_o\ : std_logic;
SIGNAL \sample_ori[23]~input_o\ : std_logic;
SIGNAL \sample_ori[24]~input_o\ : std_logic;
SIGNAL \sample_ori[25]~input_o\ : std_logic;
SIGNAL \sample_ori[26]~input_o\ : std_logic;
SIGNAL \sample_ori[27]~input_o\ : std_logic;
SIGNAL \sample_ori[28]~input_o\ : std_logic;
SIGNAL \sample_ori[29]~input_o\ : std_logic;
SIGNAL \sample_ori[30]~input_o\ : std_logic;
SIGNAL \sample_ori[31]~input_o\ : std_logic;
SIGNAL \sample_can[0]~input_o\ : std_logic;
SIGNAL \sample_can[1]~input_o\ : std_logic;
SIGNAL \sample_can[2]~input_o\ : std_logic;
SIGNAL \sample_can[3]~input_o\ : std_logic;
SIGNAL \sample_can[4]~input_o\ : std_logic;
SIGNAL \sample_can[5]~input_o\ : std_logic;
SIGNAL \sample_can[6]~input_o\ : std_logic;
SIGNAL \sample_can[7]~input_o\ : std_logic;
SIGNAL \sample_can[8]~input_o\ : std_logic;
SIGNAL \sample_can[9]~input_o\ : std_logic;
SIGNAL \sample_can[10]~input_o\ : std_logic;
SIGNAL \sample_can[11]~input_o\ : std_logic;
SIGNAL \sample_can[12]~input_o\ : std_logic;
SIGNAL \sample_can[13]~input_o\ : std_logic;
SIGNAL \sample_can[14]~input_o\ : std_logic;
SIGNAL \sample_can[15]~input_o\ : std_logic;
SIGNAL \sample_can[16]~input_o\ : std_logic;
SIGNAL \sample_can[17]~input_o\ : std_logic;
SIGNAL \sample_can[18]~input_o\ : std_logic;
SIGNAL \sample_can[19]~input_o\ : std_logic;
SIGNAL \sample_can[20]~input_o\ : std_logic;
SIGNAL \sample_can[21]~input_o\ : std_logic;
SIGNAL \sample_can[22]~input_o\ : std_logic;
SIGNAL \sample_can[23]~input_o\ : std_logic;
SIGNAL \sample_can[24]~input_o\ : std_logic;
SIGNAL \sample_can[25]~input_o\ : std_logic;
SIGNAL \sample_can[26]~input_o\ : std_logic;
SIGNAL \sample_can[27]~input_o\ : std_logic;
SIGNAL \sample_can[28]~input_o\ : std_logic;
SIGNAL \sample_can[29]~input_o\ : std_logic;
SIGNAL \sample_can[30]~input_o\ : std_logic;
SIGNAL \sample_can[31]~input_o\ : std_logic;
SIGNAL \SAD_saida[0]~output_o\ : std_logic;
SIGNAL \SAD_saida[1]~output_o\ : std_logic;
SIGNAL \SAD_saida[2]~output_o\ : std_logic;
SIGNAL \SAD_saida[3]~output_o\ : std_logic;
SIGNAL \SAD_saida[4]~output_o\ : std_logic;
SIGNAL \SAD_saida[5]~output_o\ : std_logic;
SIGNAL \SAD_saida[6]~output_o\ : std_logic;
SIGNAL \SAD_saida[7]~output_o\ : std_logic;
SIGNAL \end_sad[0]~output_o\ : std_logic;
SIGNAL \end_sad[1]~output_o\ : std_logic;
SIGNAL \end_sad[2]~output_o\ : std_logic;
SIGNAL \end_sad[3]~output_o\ : std_logic;
SIGNAL \read_sad~output_o\ : std_logic;
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \V2|PE.S1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \V2|REG~0_combout\ : std_logic;
SIGNAL \V2|REG~0clkctrl_outclk\ : std_logic;
SIGNAL \V2|EA.S1~q\ : std_logic;
SIGNAL \V2|EA.S2~feeder_combout\ : std_logic;
SIGNAL \V2|EA.S2~q\ : std_logic;
SIGNAL \V2|EA.S5~q\ : std_logic;
SIGNAL \V2|Selector2~0_combout\ : std_logic;
SIGNAL \V2|EA.S0~feeder_combout\ : std_logic;
SIGNAL \V2|EA.S0~q\ : std_logic;
SIGNAL \V2|WideOr1~0_combout\ : std_logic;
SIGNAL \V2|done~combout\ : std_logic;
SIGNAL \V2|ALT_INV_REG~0clkctrl_outclk\ : std_logic;

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

\V2|REG~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \V2|REG~0_combout\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\V2|ALT_INV_REG~0clkctrl_outclk\ <= NOT \V2|REG~0clkctrl_outclk\;

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X0_Y22_N2
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X0_Y21_N9
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X9_Y24_N9
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X0_Y9_N9
\pronto~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V2|done~combout\,
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

-- Location: IOIBUF_X34_Y12_N8
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\V2|PE.S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S1~0_combout\ = (!\V2|EA.S0~q\ & \iniciar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2|EA.S0~q\,
	datad => \iniciar~input_o\,
	combout => \V2|PE.S1~0_combout\);

-- Location: IOIBUF_X34_Y12_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y11_N28
\V2|REG~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|REG~0_combout\ = (\reset~input_o\) # (!\iniciar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \iniciar~input_o\,
	combout => \V2|REG~0_combout\);

-- Location: CLKCTRL_G2
\V2|REG~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \V2|REG~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \V2|REG~0clkctrl_outclk\);

-- Location: FF_X1_Y11_N29
\V2|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \V2|PE.S1~0_combout\,
	clrn => \V2|ALT_INV_REG~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S1~q\);

-- Location: LCCOMB_X1_Y11_N26
\V2|EA.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|EA.S2~feeder_combout\ = \V2|EA.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2|EA.S1~q\,
	combout => \V2|EA.S2~feeder_combout\);

-- Location: FF_X1_Y11_N27
\V2|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|EA.S2~feeder_combout\,
	clrn => \V2|ALT_INV_REG~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S2~q\);

-- Location: FF_X1_Y11_N25
\V2|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \V2|EA.S2~q\,
	clrn => \V2|ALT_INV_REG~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S5~q\);

-- Location: LCCOMB_X1_Y11_N24
\V2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|Selector2~0_combout\ = (!\V2|EA.S5~q\ & ((\iniciar~input_o\) # (\V2|EA.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iniciar~input_o\,
	datac => \V2|EA.S5~q\,
	datad => \V2|EA.S0~q\,
	combout => \V2|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\V2|EA.S0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|EA.S0~feeder_combout\ = \V2|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V2|Selector2~0_combout\,
	combout => \V2|EA.S0~feeder_combout\);

-- Location: FF_X1_Y11_N23
\V2|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|EA.S0~feeder_combout\,
	clrn => \V2|ALT_INV_REG~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S0~q\);

-- Location: LCCOMB_X1_Y11_N30
\V2|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|WideOr1~0_combout\ = (\V2|EA.S1~q\) # (!\V2|EA.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V2|EA.S0~q\,
	datad => \V2|EA.S1~q\,
	combout => \V2|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\V2|done\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|done~combout\ = (\V2|WideOr1~0_combout\ & ((!\V2|EA.S1~q\))) # (!\V2|WideOr1~0_combout\ & (\V2|done~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V2|done~combout\,
	datac => \V2|WideOr1~0_combout\,
	datad => \V2|EA.S1~q\,
	combout => \V2|done~combout\);

-- Location: IOIBUF_X5_Y0_N22
\sample_ori[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(0),
	o => \sample_ori[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\sample_ori[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(1),
	o => \sample_ori[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\sample_ori[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(2),
	o => \sample_ori[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\sample_ori[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(3),
	o => \sample_ori[3]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\sample_ori[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(4),
	o => \sample_ori[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\sample_ori[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(5),
	o => \sample_ori[5]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\sample_ori[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(6),
	o => \sample_ori[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\sample_ori[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(7),
	o => \sample_ori[7]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\sample_ori[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(8),
	o => \sample_ori[8]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\sample_ori[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(9),
	o => \sample_ori[9]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\sample_ori[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(10),
	o => \sample_ori[10]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\sample_ori[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(11),
	o => \sample_ori[11]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\sample_ori[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(12),
	o => \sample_ori[12]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\sample_ori[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(13),
	o => \sample_ori[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\sample_ori[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(14),
	o => \sample_ori[14]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\sample_ori[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(15),
	o => \sample_ori[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\sample_ori[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(16),
	o => \sample_ori[16]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\sample_ori[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(17),
	o => \sample_ori[17]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\sample_ori[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(18),
	o => \sample_ori[18]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\sample_ori[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(19),
	o => \sample_ori[19]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\sample_ori[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(20),
	o => \sample_ori[20]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\sample_ori[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(21),
	o => \sample_ori[21]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\sample_ori[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(22),
	o => \sample_ori[22]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\sample_ori[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(23),
	o => \sample_ori[23]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\sample_ori[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(24),
	o => \sample_ori[24]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\sample_ori[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(25),
	o => \sample_ori[25]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\sample_ori[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(26),
	o => \sample_ori[26]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\sample_ori[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(27),
	o => \sample_ori[27]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\sample_ori[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(28),
	o => \sample_ori[28]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\sample_ori[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(29),
	o => \sample_ori[29]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\sample_ori[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(30),
	o => \sample_ori[30]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\sample_ori[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(31),
	o => \sample_ori[31]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\sample_can[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(0),
	o => \sample_can[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\sample_can[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(1),
	o => \sample_can[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\sample_can[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(2),
	o => \sample_can[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\sample_can[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(3),
	o => \sample_can[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\sample_can[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(4),
	o => \sample_can[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\sample_can[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(5),
	o => \sample_can[5]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\sample_can[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(6),
	o => \sample_can[6]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\sample_can[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(7),
	o => \sample_can[7]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\sample_can[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(8),
	o => \sample_can[8]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\sample_can[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(9),
	o => \sample_can[9]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\sample_can[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(10),
	o => \sample_can[10]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\sample_can[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(11),
	o => \sample_can[11]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\sample_can[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(12),
	o => \sample_can[12]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\sample_can[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(13),
	o => \sample_can[13]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\sample_can[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(14),
	o => \sample_can[14]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\sample_can[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(15),
	o => \sample_can[15]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\sample_can[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(16),
	o => \sample_can[16]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\sample_can[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(17),
	o => \sample_can[17]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\sample_can[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(18),
	o => \sample_can[18]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\sample_can[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(19),
	o => \sample_can[19]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\sample_can[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(20),
	o => \sample_can[20]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\sample_can[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(21),
	o => \sample_can[21]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\sample_can[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(22),
	o => \sample_can[22]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\sample_can[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(23),
	o => \sample_can[23]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\sample_can[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(24),
	o => \sample_can[24]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\sample_can[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(25),
	o => \sample_can[25]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\sample_can[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(26),
	o => \sample_can[26]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\sample_can[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(27),
	o => \sample_can[27]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\sample_can[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(28),
	o => \sample_can[28]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\sample_can[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(29),
	o => \sample_can[29]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\sample_can[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(30),
	o => \sample_can[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\sample_can[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(31),
	o => \sample_can[31]~input_o\);

ww_SAD_saida(0) <= \SAD_saida[0]~output_o\;

ww_SAD_saida(1) <= \SAD_saida[1]~output_o\;

ww_SAD_saida(2) <= \SAD_saida[2]~output_o\;

ww_SAD_saida(3) <= \SAD_saida[3]~output_o\;

ww_SAD_saida(4) <= \SAD_saida[4]~output_o\;

ww_SAD_saida(5) <= \SAD_saida[5]~output_o\;

ww_SAD_saida(6) <= \SAD_saida[6]~output_o\;

ww_SAD_saida(7) <= \SAD_saida[7]~output_o\;

ww_end_sad(0) <= \end_sad[0]~output_o\;

ww_end_sad(1) <= \end_sad[1]~output_o\;

ww_end_sad(2) <= \end_sad[2]~output_o\;

ww_end_sad(3) <= \end_sad[3]~output_o\;

ww_read_sad <= \read_sad~output_o\;

ww_pronto <= \pronto~output_o\;
END structure;


