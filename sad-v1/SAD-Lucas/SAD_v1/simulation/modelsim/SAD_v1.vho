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

-- DATE "05/15/2024 18:10:47"

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
	sample_ori : IN std_logic_vector(7 DOWNTO 0);
	sample_can : IN std_logic_vector(7 DOWNTO 0);
	menor : IN std_logic;
	read_mem : BUFFER std_logic;
	address : BUFFER std_logic_vector(5 DOWNTO 0);
	sad_value : BUFFER std_logic_vector(13 DOWNTO 0);
	done : BUFFER std_logic;
	cpA : BUFFER std_logic;
	cpB : BUFFER std_logic;
	ci : BUFFER std_logic;
	zi : BUFFER std_logic;
	zsoma : BUFFER std_logic;
	csoma : BUFFER std_logic;
	csad_reg : BUFFER std_logic
	);
END sad_bc;

-- Design Ports Information
-- sample_ori[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[5]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[6]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_mem	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[6]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[8]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[9]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[10]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[11]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[12]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[13]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpA	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpB	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ci	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zi	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zsoma	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csoma	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csad_reg	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sample_ori : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sample_can : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_menor : std_logic;
SIGNAL ww_read_mem : std_logic;
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_sad_value : std_logic_vector(13 DOWNTO 0);
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
SIGNAL \read_mem~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \sad_value[0]~output_o\ : std_logic;
SIGNAL \sad_value[1]~output_o\ : std_logic;
SIGNAL \sad_value[2]~output_o\ : std_logic;
SIGNAL \sad_value[3]~output_o\ : std_logic;
SIGNAL \sad_value[4]~output_o\ : std_logic;
SIGNAL \sad_value[5]~output_o\ : std_logic;
SIGNAL \sad_value[6]~output_o\ : std_logic;
SIGNAL \sad_value[7]~output_o\ : std_logic;
SIGNAL \sad_value[8]~output_o\ : std_logic;
SIGNAL \sad_value[9]~output_o\ : std_logic;
SIGNAL \sad_value[10]~output_o\ : std_logic;
SIGNAL \sad_value[11]~output_o\ : std_logic;
SIGNAL \sad_value[12]~output_o\ : std_logic;
SIGNAL \sad_value[13]~output_o\ : std_logic;
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
SIGNAL \Selector6~0_combout\ : std_logic;
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
ww_sample_ori <= sample_ori;
ww_sample_can <= sample_can;
ww_menor <= menor;
read_mem <= ww_read_mem;
address <= ww_address;
sad_value <= ww_sad_value;
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X34_Y9_N9
\address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\address[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\address[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\sad_value[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\sad_value[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\sad_value[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\sad_value[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\sad_value[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\sad_value[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\sad_value[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sad_value[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[7]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\sad_value[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[8]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\sad_value[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[9]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\sad_value[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[10]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\sad_value[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\sad_value[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[12]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\sad_value[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sad_value[13]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X34_Y3_N23
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X34_Y18_N16
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

-- Location: IOOBUF_X0_Y22_N2
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

-- Location: IOIBUF_X0_Y6_N22
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\menor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_menor,
	o => \menor~input_o\);

-- Location: LCCOMB_X1_Y11_N10
\PE.S5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PE.S5~0_combout\ = (!\menor~input_o\ & \EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \menor~input_o\,
	datad => \EA.S2~q\,
	combout => \PE.S5~0_combout\);

-- Location: IOIBUF_X0_Y7_N1
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
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \REG~0_combout\);

-- Location: CLKCTRL_G3
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

-- Location: FF_X1_Y11_N11
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

-- Location: LCCOMB_X1_Y11_N4
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\EA.S5~q\ & ((\enable~input_o\) # (\EA.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EA.S5~q\,
	datab => \enable~input_o\,
	datad => \EA.S0~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\EA.S0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EA.S0~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector6~0_combout\,
	combout => \EA.S0~feeder_combout\);

-- Location: FF_X1_Y11_N21
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

-- Location: LCCOMB_X1_Y11_N12
\PE.S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PE.S1~0_combout\ = (\enable~input_o\ & !\EA.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \EA.S0~q\,
	combout => \PE.S1~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\EA.S1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EA.S1~feeder_combout\ = \PE.S1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE.S1~0_combout\,
	combout => \EA.S1~feeder_combout\);

-- Location: FF_X1_Y11_N15
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

-- Location: FF_X1_Y11_N13
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

-- Location: LCCOMB_X1_Y11_N8
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

-- Location: LCCOMB_X1_Y11_N24
\EA.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EA.S2~feeder_combout\ = \PE.S2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PE.S2~combout\,
	combout => \EA.S2~feeder_combout\);

-- Location: FF_X1_Y11_N25
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
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA.S2~q\,
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

-- Location: LCCOMB_X1_Y11_N30
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\EA.S2~q\) # ((\EA.S1~q\) # (\EA.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA.S2~q\,
	datac => \EA.S1~q\,
	datad => \EA.S5~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\read_mem$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_mem$latch~combout\ = (\WideOr0~0_combout\ & (\read_mem$latch~combout\)) # (!\WideOr0~0_combout\ & ((\EA.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_mem$latch~combout\,
	datac => \EA.S3~q\,
	datad => \WideOr0~0_combout\,
	combout => \read_mem$latch~combout\);

-- Location: LCCOMB_X1_Y11_N22
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
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \done$latch~combout\,
	datac => \WideOr1~0_combout\,
	datad => \EA.S1~q\,
	combout => \done$latch~combout\);

-- Location: LCCOMB_X1_Y11_N28
\zi$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zi$latch~combout\ = (\PE.S2~combout\ & ((!\EA.S4~q\))) # (!\PE.S2~combout\ & (\zi$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \zi$latch~combout\,
	datac => \PE.S2~combout\,
	datad => \EA.S4~q\,
	combout => \zi$latch~combout\);

-- Location: IOIBUF_X1_Y0_N22
\sample_ori[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(0),
	o => \sample_ori[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\sample_ori[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(1),
	o => \sample_ori[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\sample_ori[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(2),
	o => \sample_ori[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\sample_ori[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(3),
	o => \sample_ori[3]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\sample_ori[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(4),
	o => \sample_ori[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\sample_ori[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(5),
	o => \sample_ori[5]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\sample_ori[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(6),
	o => \sample_ori[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\sample_ori[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(7),
	o => \sample_ori[7]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\sample_can[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(0),
	o => \sample_can[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\sample_can[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(1),
	o => \sample_can[1]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\sample_can[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(2),
	o => \sample_can[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\sample_can[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(3),
	o => \sample_can[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\sample_can[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(4),
	o => \sample_can[4]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\sample_can[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(5),
	o => \sample_can[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\sample_can[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(6),
	o => \sample_can[6]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\sample_can[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(7),
	o => \sample_can[7]~input_o\);

ww_read_mem <= \read_mem~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_sad_value(0) <= \sad_value[0]~output_o\;

ww_sad_value(1) <= \sad_value[1]~output_o\;

ww_sad_value(2) <= \sad_value[2]~output_o\;

ww_sad_value(3) <= \sad_value[3]~output_o\;

ww_sad_value(4) <= \sad_value[4]~output_o\;

ww_sad_value(5) <= \sad_value[5]~output_o\;

ww_sad_value(6) <= \sad_value[6]~output_o\;

ww_sad_value(7) <= \sad_value[7]~output_o\;

ww_sad_value(8) <= \sad_value[8]~output_o\;

ww_sad_value(9) <= \sad_value[9]~output_o\;

ww_sad_value(10) <= \sad_value[10]~output_o\;

ww_sad_value(11) <= \sad_value[11]~output_o\;

ww_sad_value(12) <= \sad_value[12]~output_o\;

ww_sad_value(13) <= \sad_value[13]~output_o\;

ww_done <= \done~output_o\;

ww_cpA <= \cpA~output_o\;

ww_cpB <= \cpB~output_o\;

ww_ci <= \ci~output_o\;

ww_zi <= \zi~output_o\;

ww_zsoma <= \zsoma~output_o\;

ww_csoma <= \csoma~output_o\;

ww_csad_reg <= \csad_reg~output_o\;
END structure;


