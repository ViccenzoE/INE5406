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

-- DATE "06/06/2024 10:27:06"

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

ENTITY 	sad IS
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
END sad;

-- Design Ports Information
-- SAD_saida[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[5]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[7]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[8]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[9]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[10]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[11]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[12]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[13]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[3]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_sad	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[7]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[6]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[5]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[4]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[4]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[3]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[2]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sad IS
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
SIGNAL \sample_ori[0]~input_o\ : std_logic;
SIGNAL \V1|pA|Q[0]~feeder_combout\ : std_logic;
SIGNAL \V1|regi|Q[0]~7_combout\ : std_logic;
SIGNAL \V2|EA.S4~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \V2|EA.S4~q\ : std_logic;
SIGNAL \V2|PE.S2~combout\ : std_logic;
SIGNAL \V2|EA.S2~feeder_combout\ : std_logic;
SIGNAL \V2|EA.S2~q\ : std_logic;
SIGNAL \V2|PE.S5~0_combout\ : std_logic;
SIGNAL \V2|EA.S5~q\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \V2|Selector0~0_combout\ : std_logic;
SIGNAL \V2|EA.S0~q\ : std_logic;
SIGNAL \V2|PE.S1~0_combout\ : std_logic;
SIGNAL \V2|EA.S1~q\ : std_logic;
SIGNAL \V1|regi|Q[0]~8\ : std_logic;
SIGNAL \V1|regi|Q[1]~9_combout\ : std_logic;
SIGNAL \V1|regi|Q[1]~10\ : std_logic;
SIGNAL \V1|regi|Q[2]~11_combout\ : std_logic;
SIGNAL \V1|regi|Q[2]~12\ : std_logic;
SIGNAL \V1|regi|Q[3]~13_combout\ : std_logic;
SIGNAL \V1|regi|Q[3]~14\ : std_logic;
SIGNAL \V1|regi|Q[4]~15_combout\ : std_logic;
SIGNAL \V1|regi|Q[4]~16\ : std_logic;
SIGNAL \V1|regi|Q[5]~17_combout\ : std_logic;
SIGNAL \V1|regi|Q[5]~18\ : std_logic;
SIGNAL \V1|regi|Q[6]~19_combout\ : std_logic;
SIGNAL \V2|PE.S3~0_combout\ : std_logic;
SIGNAL \V2|EA.S3~q\ : std_logic;
SIGNAL \sample_can[0]~input_o\ : std_logic;
SIGNAL \V1|sub|saida[0]~0_combout\ : std_logic;
SIGNAL \sample_can[7]~input_o\ : std_logic;
SIGNAL \sample_ori[7]~input_o\ : std_logic;
SIGNAL \sample_can[6]~input_o\ : std_logic;
SIGNAL \sample_ori[6]~input_o\ : std_logic;
SIGNAL \V1|pA|Q[6]~feeder_combout\ : std_logic;
SIGNAL \sample_ori[5]~input_o\ : std_logic;
SIGNAL \sample_can[5]~input_o\ : std_logic;
SIGNAL \sample_ori[4]~input_o\ : std_logic;
SIGNAL \sample_can[4]~input_o\ : std_logic;
SIGNAL \sample_ori[3]~input_o\ : std_logic;
SIGNAL \sample_can[3]~input_o\ : std_logic;
SIGNAL \V1|pB|Q[3]~feeder_combout\ : std_logic;
SIGNAL \sample_can[2]~input_o\ : std_logic;
SIGNAL \sample_ori[2]~input_o\ : std_logic;
SIGNAL \sample_can[1]~input_o\ : std_logic;
SIGNAL \V1|pB|Q[1]~feeder_combout\ : std_logic;
SIGNAL \sample_ori[1]~input_o\ : std_logic;
SIGNAL \V1|sub|saida[0]~1\ : std_logic;
SIGNAL \V1|sub|saida[1]~3\ : std_logic;
SIGNAL \V1|sub|saida[2]~5\ : std_logic;
SIGNAL \V1|sub|saida[3]~7\ : std_logic;
SIGNAL \V1|sub|saida[4]~9\ : std_logic;
SIGNAL \V1|sub|saida[5]~11\ : std_logic;
SIGNAL \V1|sub|saida[6]~13\ : std_logic;
SIGNAL \V1|sub|saida[7]~15\ : std_logic;
SIGNAL \V1|sub|saida[8]~16_combout\ : std_logic;
SIGNAL \V1|absto|s~0_combout\ : std_logic;
SIGNAL \V1|absto|Add0~0_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[0]~14_combout\ : std_logic;
SIGNAL \V1|sub|saida[1]~2_combout\ : std_logic;
SIGNAL \V1|absto|Add0~1\ : std_logic;
SIGNAL \V1|absto|Add0~2_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[0]~15\ : std_logic;
SIGNAL \V1|soma_reg|Q[1]~16_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \V1|sub|saida[2]~4_combout\ : std_logic;
SIGNAL \V1|absto|Add0~3\ : std_logic;
SIGNAL \V1|absto|Add0~4_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[1]~17\ : std_logic;
SIGNAL \V1|soma_reg|Q[2]~18_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \V1|sub|saida[3]~6_combout\ : std_logic;
SIGNAL \V1|absto|Add0~5\ : std_logic;
SIGNAL \V1|absto|Add0~6_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[2]~19\ : std_logic;
SIGNAL \V1|soma_reg|Q[3]~20_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \V1|sub|saida[4]~8_combout\ : std_logic;
SIGNAL \V1|absto|Add0~7\ : std_logic;
SIGNAL \V1|absto|Add0~8_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[3]~21\ : std_logic;
SIGNAL \V1|soma_reg|Q[4]~22_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[4]~feeder_combout\ : std_logic;
SIGNAL \V1|sub|saida[5]~10_combout\ : std_logic;
SIGNAL \V1|absto|Add0~9\ : std_logic;
SIGNAL \V1|absto|Add0~10_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[4]~23\ : std_logic;
SIGNAL \V1|soma_reg|Q[5]~24_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[5]~feeder_combout\ : std_logic;
SIGNAL \V1|sub|saida[6]~12_combout\ : std_logic;
SIGNAL \V1|absto|Add0~11\ : std_logic;
SIGNAL \V1|absto|Add0~12_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[5]~25\ : std_logic;
SIGNAL \V1|soma_reg|Q[6]~26_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[6]~feeder_combout\ : std_logic;
SIGNAL \V1|sub|saida[7]~14_combout\ : std_logic;
SIGNAL \V1|absto|Add0~13\ : std_logic;
SIGNAL \V1|absto|Add0~14_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[6]~27\ : std_logic;
SIGNAL \V1|soma_reg|Q[7]~28_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[7]~feeder_combout\ : std_logic;
SIGNAL \V1|absto|Add0~15\ : std_logic;
SIGNAL \V1|absto|Add0~16_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[7]~29\ : std_logic;
SIGNAL \V1|soma_reg|Q[8]~30_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[8]~feeder_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[8]~31\ : std_logic;
SIGNAL \V1|soma_reg|Q[9]~32_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[9]~feeder_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[9]~33\ : std_logic;
SIGNAL \V1|soma_reg|Q[10]~34_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[10]~feeder_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[10]~35\ : std_logic;
SIGNAL \V1|soma_reg|Q[11]~36_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[11]~feeder_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[11]~37\ : std_logic;
SIGNAL \V1|soma_reg|Q[12]~38_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[12]~feeder_combout\ : std_logic;
SIGNAL \V1|soma_reg|Q[12]~39\ : std_logic;
SIGNAL \V1|soma_reg|Q[13]~40_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[13]~feeder_combout\ : std_logic;
SIGNAL \V1|pB|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|SAD_reg|Q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \V1|pA|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|soma_reg|Q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \V1|regi|Q\ : std_logic_vector(6 DOWNTO 0);
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

-- Location: IOOBUF_X34_Y18_N16
\SAD_saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(0),
	devoe => ww_devoe,
	o => \SAD_saida[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\SAD_saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(1),
	devoe => ww_devoe,
	o => \SAD_saida[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\SAD_saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(2),
	devoe => ww_devoe,
	o => \SAD_saida[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\SAD_saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(3),
	devoe => ww_devoe,
	o => \SAD_saida[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\SAD_saida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(4),
	devoe => ww_devoe,
	o => \SAD_saida[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\SAD_saida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(5),
	devoe => ww_devoe,
	o => \SAD_saida[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\SAD_saida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(6),
	devoe => ww_devoe,
	o => \SAD_saida[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\SAD_saida[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(7),
	devoe => ww_devoe,
	o => \SAD_saida[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\SAD_saida[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(8),
	devoe => ww_devoe,
	o => \SAD_saida[8]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\SAD_saida[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(9),
	devoe => ww_devoe,
	o => \SAD_saida[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\SAD_saida[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(10),
	devoe => ww_devoe,
	o => \SAD_saida[10]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\SAD_saida[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(11),
	devoe => ww_devoe,
	o => \SAD_saida[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\SAD_saida[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(12),
	devoe => ww_devoe,
	o => \SAD_saida[12]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\SAD_saida[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|SAD_reg|Q\(13),
	devoe => ww_devoe,
	o => \SAD_saida[13]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\end_sad[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|regi|Q\(0),
	devoe => ww_devoe,
	o => \end_sad[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\end_sad[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|regi|Q\(1),
	devoe => ww_devoe,
	o => \end_sad[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\end_sad[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|regi|Q\(2),
	devoe => ww_devoe,
	o => \end_sad[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\end_sad[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|regi|Q\(3),
	devoe => ww_devoe,
	o => \end_sad[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\end_sad[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|regi|Q\(4),
	devoe => ww_devoe,
	o => \end_sad[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\end_sad[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V1|regi|Q\(5),
	devoe => ww_devoe,
	o => \end_sad[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\read_sad~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V2|EA.S3~q\,
	devoe => ww_devoe,
	o => \read_sad~output_o\);

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOIBUF_X23_Y24_N15
\sample_ori[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(0),
	o => \sample_ori[0]~input_o\);

-- Location: LCCOMB_X30_Y16_N22
\V1|pA|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|pA|Q[0]~feeder_combout\ = \sample_ori[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[0]~input_o\,
	combout => \V1|pA|Q[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N0
\V1|regi|Q[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|regi|Q[0]~7_combout\ = \V1|regi|Q\(0) $ (VCC)
-- \V1|regi|Q[0]~8\ = CARRY(\V1|regi|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|regi|Q\(0),
	datad => VCC,
	combout => \V1|regi|Q[0]~7_combout\,
	cout => \V1|regi|Q[0]~8\);

-- Location: LCCOMB_X30_Y17_N22
\V2|EA.S4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|EA.S4~feeder_combout\ = \V2|EA.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V2|EA.S3~q\,
	combout => \V2|EA.S4~feeder_combout\);

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

-- Location: FF_X30_Y17_N23
\V2|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|EA.S4~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S4~q\);

-- Location: LCCOMB_X30_Y17_N16
\V2|PE.S2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S2~combout\ = (\V2|EA.S4~q\) # (\V2|EA.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V2|EA.S4~q\,
	datad => \V2|EA.S1~q\,
	combout => \V2|PE.S2~combout\);

-- Location: LCCOMB_X30_Y17_N18
\V2|EA.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|EA.S2~feeder_combout\ = \V2|PE.S2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V2|PE.S2~combout\,
	combout => \V2|EA.S2~feeder_combout\);

-- Location: FF_X30_Y17_N19
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

-- Location: LCCOMB_X30_Y17_N26
\V2|PE.S5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S5~0_combout\ = (\V1|regi|Q\(6) & \V2|EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|regi|Q\(6),
	datad => \V2|EA.S2~q\,
	combout => \V2|PE.S5~0_combout\);

-- Location: FF_X30_Y17_N27
\V2|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|PE.S5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S5~q\);

-- Location: IOIBUF_X34_Y10_N8
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X30_Y17_N24
\V2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|Selector0~0_combout\ = (!\V2|EA.S5~q\ & ((\V2|EA.S0~q\) # (\iniciar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V2|EA.S5~q\,
	datac => \V2|EA.S0~q\,
	datad => \iniciar~input_o\,
	combout => \V2|Selector0~0_combout\);

-- Location: FF_X30_Y17_N25
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

-- Location: LCCOMB_X30_Y17_N20
\V2|PE.S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S1~0_combout\ = (!\V2|EA.S0~q\ & \iniciar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V2|EA.S0~q\,
	datad => \iniciar~input_o\,
	combout => \V2|PE.S1~0_combout\);

-- Location: FF_X30_Y17_N21
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

-- Location: FF_X30_Y17_N1
\V1|regi|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|regi|Q[0]~7_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(0));

-- Location: LCCOMB_X30_Y17_N2
\V1|regi|Q[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|regi|Q[1]~9_combout\ = (\V1|regi|Q\(1) & (!\V1|regi|Q[0]~8\)) # (!\V1|regi|Q\(1) & ((\V1|regi|Q[0]~8\) # (GND)))
-- \V1|regi|Q[1]~10\ = CARRY((!\V1|regi|Q[0]~8\) # (!\V1|regi|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|regi|Q\(1),
	datad => VCC,
	cin => \V1|regi|Q[0]~8\,
	combout => \V1|regi|Q[1]~9_combout\,
	cout => \V1|regi|Q[1]~10\);

-- Location: FF_X30_Y17_N3
\V1|regi|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|regi|Q[1]~9_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(1));

-- Location: LCCOMB_X30_Y17_N4
\V1|regi|Q[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|regi|Q[2]~11_combout\ = (\V1|regi|Q\(2) & (\V1|regi|Q[1]~10\ $ (GND))) # (!\V1|regi|Q\(2) & (!\V1|regi|Q[1]~10\ & VCC))
-- \V1|regi|Q[2]~12\ = CARRY((\V1|regi|Q\(2) & !\V1|regi|Q[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|regi|Q\(2),
	datad => VCC,
	cin => \V1|regi|Q[1]~10\,
	combout => \V1|regi|Q[2]~11_combout\,
	cout => \V1|regi|Q[2]~12\);

-- Location: FF_X30_Y17_N5
\V1|regi|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|regi|Q[2]~11_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(2));

-- Location: LCCOMB_X30_Y17_N6
\V1|regi|Q[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|regi|Q[3]~13_combout\ = (\V1|regi|Q\(3) & (!\V1|regi|Q[2]~12\)) # (!\V1|regi|Q\(3) & ((\V1|regi|Q[2]~12\) # (GND)))
-- \V1|regi|Q[3]~14\ = CARRY((!\V1|regi|Q[2]~12\) # (!\V1|regi|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|regi|Q\(3),
	datad => VCC,
	cin => \V1|regi|Q[2]~12\,
	combout => \V1|regi|Q[3]~13_combout\,
	cout => \V1|regi|Q[3]~14\);

-- Location: FF_X30_Y17_N7
\V1|regi|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|regi|Q[3]~13_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(3));

-- Location: LCCOMB_X30_Y17_N8
\V1|regi|Q[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|regi|Q[4]~15_combout\ = (\V1|regi|Q\(4) & (\V1|regi|Q[3]~14\ $ (GND))) # (!\V1|regi|Q\(4) & (!\V1|regi|Q[3]~14\ & VCC))
-- \V1|regi|Q[4]~16\ = CARRY((\V1|regi|Q\(4) & !\V1|regi|Q[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|regi|Q\(4),
	datad => VCC,
	cin => \V1|regi|Q[3]~14\,
	combout => \V1|regi|Q[4]~15_combout\,
	cout => \V1|regi|Q[4]~16\);

-- Location: FF_X30_Y17_N9
\V1|regi|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|regi|Q[4]~15_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(4));

-- Location: LCCOMB_X30_Y17_N10
\V1|regi|Q[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|regi|Q[5]~17_combout\ = (\V1|regi|Q\(5) & (!\V1|regi|Q[4]~16\)) # (!\V1|regi|Q\(5) & ((\V1|regi|Q[4]~16\) # (GND)))
-- \V1|regi|Q[5]~18\ = CARRY((!\V1|regi|Q[4]~16\) # (!\V1|regi|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|regi|Q\(5),
	datad => VCC,
	cin => \V1|regi|Q[4]~16\,
	combout => \V1|regi|Q[5]~17_combout\,
	cout => \V1|regi|Q[5]~18\);

-- Location: FF_X30_Y17_N11
\V1|regi|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|regi|Q[5]~17_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(5));

-- Location: LCCOMB_X30_Y17_N12
\V1|regi|Q[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|regi|Q[6]~19_combout\ = !\V1|regi|Q[5]~18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|regi|Q[5]~18\,
	combout => \V1|regi|Q[6]~19_combout\);

-- Location: FF_X30_Y17_N13
\V1|regi|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|regi|Q[6]~19_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(6));

-- Location: LCCOMB_X30_Y17_N30
\V2|PE.S3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S3~0_combout\ = (!\V1|regi|Q\(6) & \V2|EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|regi|Q\(6),
	datad => \V2|EA.S2~q\,
	combout => \V2|PE.S3~0_combout\);

-- Location: FF_X30_Y17_N31
\V2|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|PE.S3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S3~q\);

-- Location: FF_X30_Y16_N23
\V1|pA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|pA|Q[0]~feeder_combout\,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(0));

-- Location: IOIBUF_X34_Y9_N8
\sample_can[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(0),
	o => \sample_can[0]~input_o\);

-- Location: FF_X30_Y16_N1
\V1|pB|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[0]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(0));

-- Location: LCCOMB_X30_Y16_N0
\V1|sub|saida[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[0]~0_combout\ = (\V1|pA|Q\(0) & ((GND) # (!\V1|pB|Q\(0)))) # (!\V1|pA|Q\(0) & (\V1|pB|Q\(0) $ (GND)))
-- \V1|sub|saida[0]~1\ = CARRY((\V1|pA|Q\(0)) # (!\V1|pB|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA|Q\(0),
	datab => \V1|pB|Q\(0),
	datad => VCC,
	combout => \V1|sub|saida[0]~0_combout\,
	cout => \V1|sub|saida[0]~1\);

-- Location: IOIBUF_X18_Y24_N22
\sample_can[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(7),
	o => \sample_can[7]~input_o\);

-- Location: FF_X30_Y16_N25
\V1|pB|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[7]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(7));

-- Location: IOIBUF_X30_Y24_N1
\sample_ori[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(7),
	o => \sample_ori[7]~input_o\);

-- Location: FF_X30_Y16_N15
\V1|pA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[7]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(7));

-- Location: IOIBUF_X34_Y19_N15
\sample_can[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(6),
	o => \sample_can[6]~input_o\);

-- Location: FF_X30_Y16_N13
\V1|pB|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[6]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(6));

-- Location: IOIBUF_X34_Y7_N8
\sample_ori[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(6),
	o => \sample_ori[6]~input_o\);

-- Location: LCCOMB_X30_Y16_N30
\V1|pA|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|pA|Q[6]~feeder_combout\ = \sample_ori[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[6]~input_o\,
	combout => \V1|pA|Q[6]~feeder_combout\);

-- Location: FF_X30_Y16_N31
\V1|pA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|pA|Q[6]~feeder_combout\,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(6));

-- Location: IOIBUF_X34_Y7_N22
\sample_ori[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(5),
	o => \sample_ori[5]~input_o\);

-- Location: FF_X30_Y16_N11
\V1|pA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[5]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(5));

-- Location: IOIBUF_X34_Y9_N15
\sample_can[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(5),
	o => \sample_can[5]~input_o\);

-- Location: FF_X30_Y16_N29
\V1|pB|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[5]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(5));

-- Location: IOIBUF_X30_Y0_N8
\sample_ori[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(4),
	o => \sample_ori[4]~input_o\);

-- Location: FF_X30_Y16_N17
\V1|pA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[4]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(4));

-- Location: IOIBUF_X30_Y0_N1
\sample_can[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(4),
	o => \sample_can[4]~input_o\);

-- Location: FF_X30_Y16_N9
\V1|pB|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[4]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(4));

-- Location: IOIBUF_X34_Y12_N15
\sample_ori[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(3),
	o => \sample_ori[3]~input_o\);

-- Location: FF_X30_Y16_N7
\V1|pA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[3]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(3));

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

-- Location: LCCOMB_X30_Y16_N18
\V1|pB|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|pB|Q[3]~feeder_combout\ = \sample_can[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[3]~input_o\,
	combout => \V1|pB|Q[3]~feeder_combout\);

-- Location: FF_X30_Y16_N19
\V1|pB|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|pB|Q[3]~feeder_combout\,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(3));

-- Location: IOIBUF_X34_Y9_N1
\sample_can[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(2),
	o => \sample_can[2]~input_o\);

-- Location: FF_X30_Y16_N5
\V1|pB|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[2]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(2));

-- Location: IOIBUF_X0_Y11_N15
\sample_ori[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(2),
	o => \sample_ori[2]~input_o\);

-- Location: FF_X30_Y16_N21
\V1|pA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[2]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(2));

-- Location: IOIBUF_X0_Y11_N22
\sample_can[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(1),
	o => \sample_can[1]~input_o\);

-- Location: LCCOMB_X30_Y16_N26
\V1|pB|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|pB|Q[1]~feeder_combout\ = \sample_can[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[1]~input_o\,
	combout => \V1|pB|Q[1]~feeder_combout\);

-- Location: FF_X30_Y16_N27
\V1|pB|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|pB|Q[1]~feeder_combout\,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB|Q\(1));

-- Location: IOIBUF_X34_Y9_N22
\sample_ori[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(1),
	o => \sample_ori[1]~input_o\);

-- Location: FF_X30_Y16_N3
\V1|pA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[1]~input_o\,
	sload => VCC,
	ena => \V2|EA.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA|Q\(1));

-- Location: LCCOMB_X30_Y16_N2
\V1|sub|saida[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[1]~2_combout\ = (\V1|pB|Q\(1) & ((\V1|pA|Q\(1) & (!\V1|sub|saida[0]~1\)) # (!\V1|pA|Q\(1) & ((\V1|sub|saida[0]~1\) # (GND))))) # (!\V1|pB|Q\(1) & ((\V1|pA|Q\(1) & (\V1|sub|saida[0]~1\ & VCC)) # (!\V1|pA|Q\(1) & (!\V1|sub|saida[0]~1\))))
-- \V1|sub|saida[1]~3\ = CARRY((\V1|pB|Q\(1) & ((!\V1|sub|saida[0]~1\) # (!\V1|pA|Q\(1)))) # (!\V1|pB|Q\(1) & (!\V1|pA|Q\(1) & !\V1|sub|saida[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB|Q\(1),
	datab => \V1|pA|Q\(1),
	datad => VCC,
	cin => \V1|sub|saida[0]~1\,
	combout => \V1|sub|saida[1]~2_combout\,
	cout => \V1|sub|saida[1]~3\);

-- Location: LCCOMB_X30_Y16_N4
\V1|sub|saida[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[2]~4_combout\ = ((\V1|pB|Q\(2) $ (\V1|pA|Q\(2) $ (\V1|sub|saida[1]~3\)))) # (GND)
-- \V1|sub|saida[2]~5\ = CARRY((\V1|pB|Q\(2) & (\V1|pA|Q\(2) & !\V1|sub|saida[1]~3\)) # (!\V1|pB|Q\(2) & ((\V1|pA|Q\(2)) # (!\V1|sub|saida[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB|Q\(2),
	datab => \V1|pA|Q\(2),
	datad => VCC,
	cin => \V1|sub|saida[1]~3\,
	combout => \V1|sub|saida[2]~4_combout\,
	cout => \V1|sub|saida[2]~5\);

-- Location: LCCOMB_X30_Y16_N6
\V1|sub|saida[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[3]~6_combout\ = (\V1|pA|Q\(3) & ((\V1|pB|Q\(3) & (!\V1|sub|saida[2]~5\)) # (!\V1|pB|Q\(3) & (\V1|sub|saida[2]~5\ & VCC)))) # (!\V1|pA|Q\(3) & ((\V1|pB|Q\(3) & ((\V1|sub|saida[2]~5\) # (GND))) # (!\V1|pB|Q\(3) & (!\V1|sub|saida[2]~5\))))
-- \V1|sub|saida[3]~7\ = CARRY((\V1|pA|Q\(3) & (\V1|pB|Q\(3) & !\V1|sub|saida[2]~5\)) # (!\V1|pA|Q\(3) & ((\V1|pB|Q\(3)) # (!\V1|sub|saida[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA|Q\(3),
	datab => \V1|pB|Q\(3),
	datad => VCC,
	cin => \V1|sub|saida[2]~5\,
	combout => \V1|sub|saida[3]~6_combout\,
	cout => \V1|sub|saida[3]~7\);

-- Location: LCCOMB_X30_Y16_N8
\V1|sub|saida[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[4]~8_combout\ = ((\V1|pA|Q\(4) $ (\V1|pB|Q\(4) $ (\V1|sub|saida[3]~7\)))) # (GND)
-- \V1|sub|saida[4]~9\ = CARRY((\V1|pA|Q\(4) & ((!\V1|sub|saida[3]~7\) # (!\V1|pB|Q\(4)))) # (!\V1|pA|Q\(4) & (!\V1|pB|Q\(4) & !\V1|sub|saida[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA|Q\(4),
	datab => \V1|pB|Q\(4),
	datad => VCC,
	cin => \V1|sub|saida[3]~7\,
	combout => \V1|sub|saida[4]~8_combout\,
	cout => \V1|sub|saida[4]~9\);

-- Location: LCCOMB_X30_Y16_N10
\V1|sub|saida[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[5]~10_combout\ = (\V1|pA|Q\(5) & ((\V1|pB|Q\(5) & (!\V1|sub|saida[4]~9\)) # (!\V1|pB|Q\(5) & (\V1|sub|saida[4]~9\ & VCC)))) # (!\V1|pA|Q\(5) & ((\V1|pB|Q\(5) & ((\V1|sub|saida[4]~9\) # (GND))) # (!\V1|pB|Q\(5) & (!\V1|sub|saida[4]~9\))))
-- \V1|sub|saida[5]~11\ = CARRY((\V1|pA|Q\(5) & (\V1|pB|Q\(5) & !\V1|sub|saida[4]~9\)) # (!\V1|pA|Q\(5) & ((\V1|pB|Q\(5)) # (!\V1|sub|saida[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA|Q\(5),
	datab => \V1|pB|Q\(5),
	datad => VCC,
	cin => \V1|sub|saida[4]~9\,
	combout => \V1|sub|saida[5]~10_combout\,
	cout => \V1|sub|saida[5]~11\);

-- Location: LCCOMB_X30_Y16_N12
\V1|sub|saida[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[6]~12_combout\ = ((\V1|pB|Q\(6) $ (\V1|pA|Q\(6) $ (\V1|sub|saida[5]~11\)))) # (GND)
-- \V1|sub|saida[6]~13\ = CARRY((\V1|pB|Q\(6) & (\V1|pA|Q\(6) & !\V1|sub|saida[5]~11\)) # (!\V1|pB|Q\(6) & ((\V1|pA|Q\(6)) # (!\V1|sub|saida[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB|Q\(6),
	datab => \V1|pA|Q\(6),
	datad => VCC,
	cin => \V1|sub|saida[5]~11\,
	combout => \V1|sub|saida[6]~12_combout\,
	cout => \V1|sub|saida[6]~13\);

-- Location: LCCOMB_X30_Y16_N14
\V1|sub|saida[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[7]~14_combout\ = (\V1|pB|Q\(7) & ((\V1|pA|Q\(7) & (!\V1|sub|saida[6]~13\)) # (!\V1|pA|Q\(7) & ((\V1|sub|saida[6]~13\) # (GND))))) # (!\V1|pB|Q\(7) & ((\V1|pA|Q\(7) & (\V1|sub|saida[6]~13\ & VCC)) # (!\V1|pA|Q\(7) & (!\V1|sub|saida[6]~13\))))
-- \V1|sub|saida[7]~15\ = CARRY((\V1|pB|Q\(7) & ((!\V1|sub|saida[6]~13\) # (!\V1|pA|Q\(7)))) # (!\V1|pB|Q\(7) & (!\V1|pA|Q\(7) & !\V1|sub|saida[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB|Q\(7),
	datab => \V1|pA|Q\(7),
	datad => VCC,
	cin => \V1|sub|saida[6]~13\,
	combout => \V1|sub|saida[7]~14_combout\,
	cout => \V1|sub|saida[7]~15\);

-- Location: LCCOMB_X30_Y16_N16
\V1|sub|saida[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub|saida[8]~16_combout\ = \V1|sub|saida[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|sub|saida[7]~15\,
	combout => \V1|sub|saida[8]~16_combout\);

-- Location: LCCOMB_X30_Y16_N20
\V1|absto|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|s~0_combout\ = \V1|sub|saida[0]~0_combout\ $ (\V1|sub|saida[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[0]~0_combout\,
	datad => \V1|sub|saida[8]~16_combout\,
	combout => \V1|absto|s~0_combout\);

-- Location: LCCOMB_X29_Y16_N0
\V1|absto|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~0_combout\ = (\V1|absto|s~0_combout\ & (\V1|sub|saida[8]~16_combout\ $ (VCC))) # (!\V1|absto|s~0_combout\ & (\V1|sub|saida[8]~16_combout\ & VCC))
-- \V1|absto|Add0~1\ = CARRY((\V1|absto|s~0_combout\ & \V1|sub|saida[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto|s~0_combout\,
	datab => \V1|sub|saida[8]~16_combout\,
	datad => VCC,
	combout => \V1|absto|Add0~0_combout\,
	cout => \V1|absto|Add0~1\);

-- Location: LCCOMB_X28_Y16_N2
\V1|soma_reg|Q[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[0]~14_combout\ = (\V1|soma_reg|Q\(0) & (\V1|absto|Add0~0_combout\ $ (VCC))) # (!\V1|soma_reg|Q\(0) & (\V1|absto|Add0~0_combout\ & VCC))
-- \V1|soma_reg|Q[0]~15\ = CARRY((\V1|soma_reg|Q\(0) & \V1|absto|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(0),
	datab => \V1|absto|Add0~0_combout\,
	datad => VCC,
	combout => \V1|soma_reg|Q[0]~14_combout\,
	cout => \V1|soma_reg|Q[0]~15\);

-- Location: FF_X28_Y16_N3
\V1|soma_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[0]~14_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(0));

-- Location: FF_X29_Y16_N23
\V1|SAD_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \V1|soma_reg|Q\(0),
	sload => VCC,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(0));

-- Location: LCCOMB_X29_Y16_N2
\V1|absto|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~2_combout\ = (\V1|absto|Add0~1\ & (\V1|sub|saida[8]~16_combout\ $ ((!\V1|sub|saida[1]~2_combout\)))) # (!\V1|absto|Add0~1\ & ((\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[1]~2_combout\)) # (GND)))
-- \V1|absto|Add0~3\ = CARRY((\V1|sub|saida[8]~16_combout\ $ (!\V1|sub|saida[1]~2_combout\)) # (!\V1|absto|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[8]~16_combout\,
	datab => \V1|sub|saida[1]~2_combout\,
	datad => VCC,
	cin => \V1|absto|Add0~1\,
	combout => \V1|absto|Add0~2_combout\,
	cout => \V1|absto|Add0~3\);

-- Location: LCCOMB_X28_Y16_N4
\V1|soma_reg|Q[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[1]~16_combout\ = (\V1|absto|Add0~2_combout\ & ((\V1|soma_reg|Q\(1) & (\V1|soma_reg|Q[0]~15\ & VCC)) # (!\V1|soma_reg|Q\(1) & (!\V1|soma_reg|Q[0]~15\)))) # (!\V1|absto|Add0~2_combout\ & ((\V1|soma_reg|Q\(1) & (!\V1|soma_reg|Q[0]~15\)) # 
-- (!\V1|soma_reg|Q\(1) & ((\V1|soma_reg|Q[0]~15\) # (GND)))))
-- \V1|soma_reg|Q[1]~17\ = CARRY((\V1|absto|Add0~2_combout\ & (!\V1|soma_reg|Q\(1) & !\V1|soma_reg|Q[0]~15\)) # (!\V1|absto|Add0~2_combout\ & ((!\V1|soma_reg|Q[0]~15\) # (!\V1|soma_reg|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto|Add0~2_combout\,
	datab => \V1|soma_reg|Q\(1),
	datad => VCC,
	cin => \V1|soma_reg|Q[0]~15\,
	combout => \V1|soma_reg|Q[1]~16_combout\,
	cout => \V1|soma_reg|Q[1]~17\);

-- Location: FF_X28_Y16_N5
\V1|soma_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[1]~16_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(1));

-- Location: LCCOMB_X29_Y16_N28
\V1|SAD_reg|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[1]~feeder_combout\ = \V1|soma_reg|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|soma_reg|Q\(1),
	combout => \V1|SAD_reg|Q[1]~feeder_combout\);

-- Location: FF_X29_Y16_N29
\V1|SAD_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[1]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(1));

-- Location: LCCOMB_X29_Y16_N4
\V1|absto|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~4_combout\ = (\V1|absto|Add0~3\ & ((\V1|sub|saida[2]~4_combout\ $ (\V1|sub|saida[8]~16_combout\)))) # (!\V1|absto|Add0~3\ & (\V1|sub|saida[2]~4_combout\ $ (\V1|sub|saida[8]~16_combout\ $ (VCC))))
-- \V1|absto|Add0~5\ = CARRY((!\V1|absto|Add0~3\ & (\V1|sub|saida[2]~4_combout\ $ (\V1|sub|saida[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[2]~4_combout\,
	datab => \V1|sub|saida[8]~16_combout\,
	datad => VCC,
	cin => \V1|absto|Add0~3\,
	combout => \V1|absto|Add0~4_combout\,
	cout => \V1|absto|Add0~5\);

-- Location: LCCOMB_X28_Y16_N6
\V1|soma_reg|Q[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[2]~18_combout\ = ((\V1|absto|Add0~4_combout\ $ (\V1|soma_reg|Q\(2) $ (!\V1|soma_reg|Q[1]~17\)))) # (GND)
-- \V1|soma_reg|Q[2]~19\ = CARRY((\V1|absto|Add0~4_combout\ & ((\V1|soma_reg|Q\(2)) # (!\V1|soma_reg|Q[1]~17\))) # (!\V1|absto|Add0~4_combout\ & (\V1|soma_reg|Q\(2) & !\V1|soma_reg|Q[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto|Add0~4_combout\,
	datab => \V1|soma_reg|Q\(2),
	datad => VCC,
	cin => \V1|soma_reg|Q[1]~17\,
	combout => \V1|soma_reg|Q[2]~18_combout\,
	cout => \V1|soma_reg|Q[2]~19\);

-- Location: FF_X28_Y16_N7
\V1|soma_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[2]~18_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(2));

-- Location: LCCOMB_X28_Y16_N0
\V1|SAD_reg|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[2]~feeder_combout\ = \V1|soma_reg|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(2),
	combout => \V1|SAD_reg|Q[2]~feeder_combout\);

-- Location: FF_X28_Y16_N1
\V1|SAD_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[2]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(2));

-- Location: LCCOMB_X29_Y16_N6
\V1|absto|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~6_combout\ = (\V1|absto|Add0~5\ & (\V1|sub|saida[3]~6_combout\ $ ((!\V1|sub|saida[8]~16_combout\)))) # (!\V1|absto|Add0~5\ & ((\V1|sub|saida[3]~6_combout\ $ (\V1|sub|saida[8]~16_combout\)) # (GND)))
-- \V1|absto|Add0~7\ = CARRY((\V1|sub|saida[3]~6_combout\ $ (!\V1|sub|saida[8]~16_combout\)) # (!\V1|absto|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[3]~6_combout\,
	datab => \V1|sub|saida[8]~16_combout\,
	datad => VCC,
	cin => \V1|absto|Add0~5\,
	combout => \V1|absto|Add0~6_combout\,
	cout => \V1|absto|Add0~7\);

-- Location: LCCOMB_X28_Y16_N8
\V1|soma_reg|Q[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[3]~20_combout\ = (\V1|absto|Add0~6_combout\ & ((\V1|soma_reg|Q\(3) & (\V1|soma_reg|Q[2]~19\ & VCC)) # (!\V1|soma_reg|Q\(3) & (!\V1|soma_reg|Q[2]~19\)))) # (!\V1|absto|Add0~6_combout\ & ((\V1|soma_reg|Q\(3) & (!\V1|soma_reg|Q[2]~19\)) # 
-- (!\V1|soma_reg|Q\(3) & ((\V1|soma_reg|Q[2]~19\) # (GND)))))
-- \V1|soma_reg|Q[3]~21\ = CARRY((\V1|absto|Add0~6_combout\ & (!\V1|soma_reg|Q\(3) & !\V1|soma_reg|Q[2]~19\)) # (!\V1|absto|Add0~6_combout\ & ((!\V1|soma_reg|Q[2]~19\) # (!\V1|soma_reg|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto|Add0~6_combout\,
	datab => \V1|soma_reg|Q\(3),
	datad => VCC,
	cin => \V1|soma_reg|Q[2]~19\,
	combout => \V1|soma_reg|Q[3]~20_combout\,
	cout => \V1|soma_reg|Q[3]~21\);

-- Location: FF_X28_Y16_N9
\V1|soma_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[3]~20_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(3));

-- Location: LCCOMB_X28_Y17_N12
\V1|SAD_reg|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[3]~feeder_combout\ = \V1|soma_reg|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(3),
	combout => \V1|SAD_reg|Q[3]~feeder_combout\);

-- Location: FF_X28_Y17_N13
\V1|SAD_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[3]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(3));

-- Location: LCCOMB_X29_Y16_N8
\V1|absto|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~8_combout\ = (\V1|absto|Add0~7\ & ((\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[4]~8_combout\)))) # (!\V1|absto|Add0~7\ & (\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[4]~8_combout\ $ (VCC))))
-- \V1|absto|Add0~9\ = CARRY((!\V1|absto|Add0~7\ & (\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[8]~16_combout\,
	datab => \V1|sub|saida[4]~8_combout\,
	datad => VCC,
	cin => \V1|absto|Add0~7\,
	combout => \V1|absto|Add0~8_combout\,
	cout => \V1|absto|Add0~9\);

-- Location: LCCOMB_X28_Y16_N10
\V1|soma_reg|Q[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[4]~22_combout\ = ((\V1|soma_reg|Q\(4) $ (\V1|absto|Add0~8_combout\ $ (!\V1|soma_reg|Q[3]~21\)))) # (GND)
-- \V1|soma_reg|Q[4]~23\ = CARRY((\V1|soma_reg|Q\(4) & ((\V1|absto|Add0~8_combout\) # (!\V1|soma_reg|Q[3]~21\))) # (!\V1|soma_reg|Q\(4) & (\V1|absto|Add0~8_combout\ & !\V1|soma_reg|Q[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(4),
	datab => \V1|absto|Add0~8_combout\,
	datad => VCC,
	cin => \V1|soma_reg|Q[3]~21\,
	combout => \V1|soma_reg|Q[4]~22_combout\,
	cout => \V1|soma_reg|Q[4]~23\);

-- Location: FF_X28_Y16_N11
\V1|soma_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[4]~22_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(4));

-- Location: LCCOMB_X28_Y17_N18
\V1|SAD_reg|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[4]~feeder_combout\ = \V1|soma_reg|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(4),
	combout => \V1|SAD_reg|Q[4]~feeder_combout\);

-- Location: FF_X28_Y17_N19
\V1|SAD_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[4]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(4));

-- Location: LCCOMB_X29_Y16_N10
\V1|absto|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~10_combout\ = (\V1|absto|Add0~9\ & (\V1|sub|saida[8]~16_combout\ $ ((!\V1|sub|saida[5]~10_combout\)))) # (!\V1|absto|Add0~9\ & ((\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[5]~10_combout\)) # (GND)))
-- \V1|absto|Add0~11\ = CARRY((\V1|sub|saida[8]~16_combout\ $ (!\V1|sub|saida[5]~10_combout\)) # (!\V1|absto|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[8]~16_combout\,
	datab => \V1|sub|saida[5]~10_combout\,
	datad => VCC,
	cin => \V1|absto|Add0~9\,
	combout => \V1|absto|Add0~10_combout\,
	cout => \V1|absto|Add0~11\);

-- Location: LCCOMB_X28_Y16_N12
\V1|soma_reg|Q[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[5]~24_combout\ = (\V1|soma_reg|Q\(5) & ((\V1|absto|Add0~10_combout\ & (\V1|soma_reg|Q[4]~23\ & VCC)) # (!\V1|absto|Add0~10_combout\ & (!\V1|soma_reg|Q[4]~23\)))) # (!\V1|soma_reg|Q\(5) & ((\V1|absto|Add0~10_combout\ & 
-- (!\V1|soma_reg|Q[4]~23\)) # (!\V1|absto|Add0~10_combout\ & ((\V1|soma_reg|Q[4]~23\) # (GND)))))
-- \V1|soma_reg|Q[5]~25\ = CARRY((\V1|soma_reg|Q\(5) & (!\V1|absto|Add0~10_combout\ & !\V1|soma_reg|Q[4]~23\)) # (!\V1|soma_reg|Q\(5) & ((!\V1|soma_reg|Q[4]~23\) # (!\V1|absto|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(5),
	datab => \V1|absto|Add0~10_combout\,
	datad => VCC,
	cin => \V1|soma_reg|Q[4]~23\,
	combout => \V1|soma_reg|Q[5]~24_combout\,
	cout => \V1|soma_reg|Q[5]~25\);

-- Location: FF_X28_Y16_N13
\V1|soma_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[5]~24_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(5));

-- Location: LCCOMB_X29_Y16_N26
\V1|SAD_reg|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[5]~feeder_combout\ = \V1|soma_reg|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(5),
	combout => \V1|SAD_reg|Q[5]~feeder_combout\);

-- Location: FF_X29_Y16_N27
\V1|SAD_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[5]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(5));

-- Location: LCCOMB_X29_Y16_N12
\V1|absto|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~12_combout\ = (\V1|absto|Add0~11\ & ((\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[6]~12_combout\)))) # (!\V1|absto|Add0~11\ & (\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[6]~12_combout\ $ (VCC))))
-- \V1|absto|Add0~13\ = CARRY((!\V1|absto|Add0~11\ & (\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[8]~16_combout\,
	datab => \V1|sub|saida[6]~12_combout\,
	datad => VCC,
	cin => \V1|absto|Add0~11\,
	combout => \V1|absto|Add0~12_combout\,
	cout => \V1|absto|Add0~13\);

-- Location: LCCOMB_X28_Y16_N14
\V1|soma_reg|Q[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[6]~26_combout\ = ((\V1|soma_reg|Q\(6) $ (\V1|absto|Add0~12_combout\ $ (!\V1|soma_reg|Q[5]~25\)))) # (GND)
-- \V1|soma_reg|Q[6]~27\ = CARRY((\V1|soma_reg|Q\(6) & ((\V1|absto|Add0~12_combout\) # (!\V1|soma_reg|Q[5]~25\))) # (!\V1|soma_reg|Q\(6) & (\V1|absto|Add0~12_combout\ & !\V1|soma_reg|Q[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(6),
	datab => \V1|absto|Add0~12_combout\,
	datad => VCC,
	cin => \V1|soma_reg|Q[5]~25\,
	combout => \V1|soma_reg|Q[6]~26_combout\,
	cout => \V1|soma_reg|Q[6]~27\);

-- Location: FF_X28_Y16_N15
\V1|soma_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[6]~26_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(6));

-- Location: LCCOMB_X29_Y16_N24
\V1|SAD_reg|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[6]~feeder_combout\ = \V1|soma_reg|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(6),
	combout => \V1|SAD_reg|Q[6]~feeder_combout\);

-- Location: FF_X29_Y16_N25
\V1|SAD_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[6]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(6));

-- Location: LCCOMB_X29_Y16_N14
\V1|absto|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~14_combout\ = (\V1|absto|Add0~13\ & (\V1|sub|saida[8]~16_combout\ $ ((!\V1|sub|saida[7]~14_combout\)))) # (!\V1|absto|Add0~13\ & ((\V1|sub|saida[8]~16_combout\ $ (\V1|sub|saida[7]~14_combout\)) # (GND)))
-- \V1|absto|Add0~15\ = CARRY((\V1|sub|saida[8]~16_combout\ $ (!\V1|sub|saida[7]~14_combout\)) # (!\V1|absto|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub|saida[8]~16_combout\,
	datab => \V1|sub|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto|Add0~13\,
	combout => \V1|absto|Add0~14_combout\,
	cout => \V1|absto|Add0~15\);

-- Location: LCCOMB_X28_Y16_N16
\V1|soma_reg|Q[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[7]~28_combout\ = (\V1|soma_reg|Q\(7) & ((\V1|absto|Add0~14_combout\ & (\V1|soma_reg|Q[6]~27\ & VCC)) # (!\V1|absto|Add0~14_combout\ & (!\V1|soma_reg|Q[6]~27\)))) # (!\V1|soma_reg|Q\(7) & ((\V1|absto|Add0~14_combout\ & 
-- (!\V1|soma_reg|Q[6]~27\)) # (!\V1|absto|Add0~14_combout\ & ((\V1|soma_reg|Q[6]~27\) # (GND)))))
-- \V1|soma_reg|Q[7]~29\ = CARRY((\V1|soma_reg|Q\(7) & (!\V1|absto|Add0~14_combout\ & !\V1|soma_reg|Q[6]~27\)) # (!\V1|soma_reg|Q\(7) & ((!\V1|soma_reg|Q[6]~27\) # (!\V1|absto|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(7),
	datab => \V1|absto|Add0~14_combout\,
	datad => VCC,
	cin => \V1|soma_reg|Q[6]~27\,
	combout => \V1|soma_reg|Q[7]~28_combout\,
	cout => \V1|soma_reg|Q[7]~29\);

-- Location: FF_X28_Y16_N17
\V1|soma_reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[7]~28_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(7));

-- Location: LCCOMB_X31_Y16_N16
\V1|SAD_reg|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[7]~feeder_combout\ = \V1|soma_reg|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(7),
	combout => \V1|SAD_reg|Q[7]~feeder_combout\);

-- Location: FF_X31_Y16_N17
\V1|SAD_reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[7]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(7));

-- Location: LCCOMB_X29_Y16_N16
\V1|absto|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto|Add0~16_combout\ = !\V1|absto|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|absto|Add0~15\,
	combout => \V1|absto|Add0~16_combout\);

-- Location: LCCOMB_X28_Y16_N18
\V1|soma_reg|Q[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[8]~30_combout\ = ((\V1|soma_reg|Q\(8) $ (\V1|absto|Add0~16_combout\ $ (!\V1|soma_reg|Q[7]~29\)))) # (GND)
-- \V1|soma_reg|Q[8]~31\ = CARRY((\V1|soma_reg|Q\(8) & ((\V1|absto|Add0~16_combout\) # (!\V1|soma_reg|Q[7]~29\))) # (!\V1|soma_reg|Q\(8) & (\V1|absto|Add0~16_combout\ & !\V1|soma_reg|Q[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(8),
	datab => \V1|absto|Add0~16_combout\,
	datad => VCC,
	cin => \V1|soma_reg|Q[7]~29\,
	combout => \V1|soma_reg|Q[8]~30_combout\,
	cout => \V1|soma_reg|Q[8]~31\);

-- Location: FF_X28_Y16_N19
\V1|soma_reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[8]~30_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(8));

-- Location: LCCOMB_X28_Y16_N30
\V1|SAD_reg|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[8]~feeder_combout\ = \V1|soma_reg|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(8),
	combout => \V1|SAD_reg|Q[8]~feeder_combout\);

-- Location: FF_X28_Y16_N31
\V1|SAD_reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[8]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(8));

-- Location: LCCOMB_X28_Y16_N20
\V1|soma_reg|Q[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[9]~32_combout\ = (\V1|soma_reg|Q\(9) & (!\V1|soma_reg|Q[8]~31\)) # (!\V1|soma_reg|Q\(9) & ((\V1|soma_reg|Q[8]~31\) # (GND)))
-- \V1|soma_reg|Q[9]~33\ = CARRY((!\V1|soma_reg|Q[8]~31\) # (!\V1|soma_reg|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|soma_reg|Q\(9),
	datad => VCC,
	cin => \V1|soma_reg|Q[8]~31\,
	combout => \V1|soma_reg|Q[9]~32_combout\,
	cout => \V1|soma_reg|Q[9]~33\);

-- Location: FF_X28_Y16_N21
\V1|soma_reg|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[9]~32_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(9));

-- Location: LCCOMB_X31_Y16_N10
\V1|SAD_reg|Q[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[9]~feeder_combout\ = \V1|soma_reg|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(9),
	combout => \V1|SAD_reg|Q[9]~feeder_combout\);

-- Location: FF_X31_Y16_N11
\V1|SAD_reg|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[9]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(9));

-- Location: LCCOMB_X28_Y16_N22
\V1|soma_reg|Q[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[10]~34_combout\ = (\V1|soma_reg|Q\(10) & (\V1|soma_reg|Q[9]~33\ $ (GND))) # (!\V1|soma_reg|Q\(10) & (!\V1|soma_reg|Q[9]~33\ & VCC))
-- \V1|soma_reg|Q[10]~35\ = CARRY((\V1|soma_reg|Q\(10) & !\V1|soma_reg|Q[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(10),
	datad => VCC,
	cin => \V1|soma_reg|Q[9]~33\,
	combout => \V1|soma_reg|Q[10]~34_combout\,
	cout => \V1|soma_reg|Q[10]~35\);

-- Location: FF_X28_Y16_N23
\V1|soma_reg|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[10]~34_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(10));

-- Location: LCCOMB_X28_Y17_N24
\V1|SAD_reg|Q[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[10]~feeder_combout\ = \V1|soma_reg|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(10),
	combout => \V1|SAD_reg|Q[10]~feeder_combout\);

-- Location: FF_X28_Y17_N25
\V1|SAD_reg|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[10]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(10));

-- Location: LCCOMB_X28_Y16_N24
\V1|soma_reg|Q[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[11]~36_combout\ = (\V1|soma_reg|Q\(11) & (!\V1|soma_reg|Q[10]~35\)) # (!\V1|soma_reg|Q\(11) & ((\V1|soma_reg|Q[10]~35\) # (GND)))
-- \V1|soma_reg|Q[11]~37\ = CARRY((!\V1|soma_reg|Q[10]~35\) # (!\V1|soma_reg|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|soma_reg|Q\(11),
	datad => VCC,
	cin => \V1|soma_reg|Q[10]~35\,
	combout => \V1|soma_reg|Q[11]~36_combout\,
	cout => \V1|soma_reg|Q[11]~37\);

-- Location: FF_X28_Y16_N25
\V1|soma_reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[11]~36_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(11));

-- Location: LCCOMB_X29_Y16_N30
\V1|SAD_reg|Q[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[11]~feeder_combout\ = \V1|soma_reg|Q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(11),
	combout => \V1|SAD_reg|Q[11]~feeder_combout\);

-- Location: FF_X29_Y16_N31
\V1|SAD_reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[11]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(11));

-- Location: LCCOMB_X28_Y16_N26
\V1|soma_reg|Q[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[12]~38_combout\ = (\V1|soma_reg|Q\(12) & (\V1|soma_reg|Q[11]~37\ $ (GND))) # (!\V1|soma_reg|Q\(12) & (!\V1|soma_reg|Q[11]~37\ & VCC))
-- \V1|soma_reg|Q[12]~39\ = CARRY((\V1|soma_reg|Q\(12) & !\V1|soma_reg|Q[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma_reg|Q\(12),
	datad => VCC,
	cin => \V1|soma_reg|Q[11]~37\,
	combout => \V1|soma_reg|Q[12]~38_combout\,
	cout => \V1|soma_reg|Q[12]~39\);

-- Location: FF_X28_Y16_N27
\V1|soma_reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[12]~38_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(12));

-- Location: LCCOMB_X28_Y17_N10
\V1|SAD_reg|Q[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[12]~feeder_combout\ = \V1|soma_reg|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(12),
	combout => \V1|SAD_reg|Q[12]~feeder_combout\);

-- Location: FF_X28_Y17_N11
\V1|SAD_reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[12]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(12));

-- Location: LCCOMB_X28_Y16_N28
\V1|soma_reg|Q[13]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma_reg|Q[13]~40_combout\ = \V1|soma_reg|Q[12]~39\ $ (\V1|soma_reg|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(13),
	cin => \V1|soma_reg|Q[12]~39\,
	combout => \V1|soma_reg|Q[13]~40_combout\);

-- Location: FF_X28_Y16_N29
\V1|soma_reg|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma_reg|Q[13]~40_combout\,
	sclr => \V2|EA.S1~q\,
	ena => \V2|PE.S2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma_reg|Q\(13));

-- Location: LCCOMB_X29_Y16_N20
\V1|SAD_reg|Q[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[13]~feeder_combout\ = \V1|soma_reg|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma_reg|Q\(13),
	combout => \V1|SAD_reg|Q[13]~feeder_combout\);

-- Location: FF_X29_Y16_N21
\V1|SAD_reg|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[13]~feeder_combout\,
	ena => \V2|EA.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(13));

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


