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

-- DATE "06/15/2024 22:15:25"

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
	sample_ori : IN std_logic_vector(31 DOWNTO 0);
	sample_can : IN std_logic_vector(31 DOWNTO 0);
	SAD_saida : BUFFER std_logic_vector(13 DOWNTO 0);
	end_sad : BUFFER std_logic_vector(3 DOWNTO 0);
	read_sad : BUFFER std_logic;
	pronto : BUFFER std_logic
	);
END sad;

-- Design Ports Information
-- SAD_saida[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[6]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[7]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[9]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[10]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[11]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[12]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[13]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_sad	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[8]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[8]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[15]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[15]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[14]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[14]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[13]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[13]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[12]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[12]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[11]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[11]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[10]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[10]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[9]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[9]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[7]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[6]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[6]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[5]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[4]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[4]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[24]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[24]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[31]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[31]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[30]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[30]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[29]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[29]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[28]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[28]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[27]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[27]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[26]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[26]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[25]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[25]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[16]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[16]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[23]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[23]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[22]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[22]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[21]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[21]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[20]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[20]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[19]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[19]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[18]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[18]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[17]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[17]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sample_ori : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sample_can : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SAD_saida : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_end_sad : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \read_sad~output_o\ : std_logic;
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \sample_ori[16]~input_o\ : std_logic;
SIGNAL \sample_can[16]~input_o\ : std_logic;
SIGNAL \V1|sub1|saida[0]~0_combout\ : std_logic;
SIGNAL \sample_can[23]~input_o\ : std_logic;
SIGNAL \sample_ori[23]~input_o\ : std_logic;
SIGNAL \sample_can[22]~input_o\ : std_logic;
SIGNAL \sample_ori[22]~input_o\ : std_logic;
SIGNAL \sample_ori[21]~input_o\ : std_logic;
SIGNAL \sample_can[21]~input_o\ : std_logic;
SIGNAL \sample_ori[20]~input_o\ : std_logic;
SIGNAL \sample_can[20]~input_o\ : std_logic;
SIGNAL \sample_ori[19]~input_o\ : std_logic;
SIGNAL \sample_can[19]~input_o\ : std_logic;
SIGNAL \sample_ori[18]~input_o\ : std_logic;
SIGNAL \sample_can[18]~input_o\ : std_logic;
SIGNAL \sample_can[17]~input_o\ : std_logic;
SIGNAL \sample_ori[17]~input_o\ : std_logic;
SIGNAL \V1|sub1|saida[0]~1\ : std_logic;
SIGNAL \V1|sub1|saida[1]~3\ : std_logic;
SIGNAL \V1|sub1|saida[2]~5\ : std_logic;
SIGNAL \V1|sub1|saida[3]~7\ : std_logic;
SIGNAL \V1|sub1|saida[4]~9\ : std_logic;
SIGNAL \V1|sub1|saida[5]~11\ : std_logic;
SIGNAL \V1|sub1|saida[6]~13\ : std_logic;
SIGNAL \V1|sub1|saida[7]~14_combout\ : std_logic;
SIGNAL \V1|absto1|s~0_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~0_combout\ : std_logic;
SIGNAL \sample_ori[31]~input_o\ : std_logic;
SIGNAL \sample_can[31]~input_o\ : std_logic;
SIGNAL \sample_ori[30]~input_o\ : std_logic;
SIGNAL \sample_can[30]~input_o\ : std_logic;
SIGNAL \sample_can[29]~input_o\ : std_logic;
SIGNAL \sample_ori[29]~input_o\ : std_logic;
SIGNAL \sample_can[28]~input_o\ : std_logic;
SIGNAL \sample_ori[28]~input_o\ : std_logic;
SIGNAL \sample_ori[27]~input_o\ : std_logic;
SIGNAL \sample_can[27]~input_o\ : std_logic;
SIGNAL \sample_ori[26]~input_o\ : std_logic;
SIGNAL \sample_can[26]~input_o\ : std_logic;
SIGNAL \sample_can[25]~input_o\ : std_logic;
SIGNAL \sample_ori[25]~input_o\ : std_logic;
SIGNAL \sample_ori[24]~input_o\ : std_logic;
SIGNAL \sample_can[24]~input_o\ : std_logic;
SIGNAL \V1|sub0|saida[0]~1\ : std_logic;
SIGNAL \V1|sub0|saida[1]~3\ : std_logic;
SIGNAL \V1|sub0|saida[2]~5\ : std_logic;
SIGNAL \V1|sub0|saida[3]~7\ : std_logic;
SIGNAL \V1|sub0|saida[4]~9\ : std_logic;
SIGNAL \V1|sub0|saida[5]~11\ : std_logic;
SIGNAL \V1|sub0|saida[6]~13\ : std_logic;
SIGNAL \V1|sub0|saida[7]~14_combout\ : std_logic;
SIGNAL \V1|sub0|saida[0]~0_combout\ : std_logic;
SIGNAL \V1|absto0|s~0_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~0_combout\ : std_logic;
SIGNAL \V1|som1|sum[0]~0_combout\ : std_logic;
SIGNAL \sample_ori[0]~input_o\ : std_logic;
SIGNAL \sample_can[0]~input_o\ : std_logic;
SIGNAL \V1|sub3|saida[0]~0_combout\ : std_logic;
SIGNAL \sample_can[7]~input_o\ : std_logic;
SIGNAL \sample_ori[7]~input_o\ : std_logic;
SIGNAL \sample_can[6]~input_o\ : std_logic;
SIGNAL \sample_ori[6]~input_o\ : std_logic;
SIGNAL \sample_ori[5]~input_o\ : std_logic;
SIGNAL \sample_can[5]~input_o\ : std_logic;
SIGNAL \sample_ori[4]~input_o\ : std_logic;
SIGNAL \sample_can[4]~input_o\ : std_logic;
SIGNAL \sample_can[3]~input_o\ : std_logic;
SIGNAL \sample_ori[3]~input_o\ : std_logic;
SIGNAL \sample_ori[2]~input_o\ : std_logic;
SIGNAL \sample_can[2]~input_o\ : std_logic;
SIGNAL \sample_ori[1]~input_o\ : std_logic;
SIGNAL \sample_can[1]~input_o\ : std_logic;
SIGNAL \V1|sub3|saida[0]~1\ : std_logic;
SIGNAL \V1|sub3|saida[1]~3\ : std_logic;
SIGNAL \V1|sub3|saida[2]~5\ : std_logic;
SIGNAL \V1|sub3|saida[3]~7\ : std_logic;
SIGNAL \V1|sub3|saida[4]~9\ : std_logic;
SIGNAL \V1|sub3|saida[5]~11\ : std_logic;
SIGNAL \V1|sub3|saida[6]~13\ : std_logic;
SIGNAL \V1|sub3|saida[7]~14_combout\ : std_logic;
SIGNAL \V1|absto3|s~0_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~0_combout\ : std_logic;
SIGNAL \sample_can[15]~input_o\ : std_logic;
SIGNAL \sample_ori[15]~input_o\ : std_logic;
SIGNAL \sample_can[14]~input_o\ : std_logic;
SIGNAL \sample_ori[14]~input_o\ : std_logic;
SIGNAL \sample_ori[13]~input_o\ : std_logic;
SIGNAL \sample_can[13]~input_o\ : std_logic;
SIGNAL \sample_can[12]~input_o\ : std_logic;
SIGNAL \sample_ori[12]~input_o\ : std_logic;
SIGNAL \sample_can[11]~input_o\ : std_logic;
SIGNAL \sample_ori[11]~input_o\ : std_logic;
SIGNAL \sample_ori[10]~input_o\ : std_logic;
SIGNAL \sample_can[10]~input_o\ : std_logic;
SIGNAL \sample_ori[9]~input_o\ : std_logic;
SIGNAL \sample_can[9]~input_o\ : std_logic;
SIGNAL \sample_ori[8]~input_o\ : std_logic;
SIGNAL \sample_can[8]~input_o\ : std_logic;
SIGNAL \V1|sub2|saida[0]~1\ : std_logic;
SIGNAL \V1|sub2|saida[1]~3\ : std_logic;
SIGNAL \V1|sub2|saida[2]~5\ : std_logic;
SIGNAL \V1|sub2|saida[3]~7\ : std_logic;
SIGNAL \V1|sub2|saida[4]~9\ : std_logic;
SIGNAL \V1|sub2|saida[5]~11\ : std_logic;
SIGNAL \V1|sub2|saida[6]~13\ : std_logic;
SIGNAL \V1|sub2|saida[7]~14_combout\ : std_logic;
SIGNAL \V1|sub2|saida[0]~0_combout\ : std_logic;
SIGNAL \V1|absto2|s~0_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~0_combout\ : std_logic;
SIGNAL \V1|som2|Add0~0_combout\ : std_logic;
SIGNAL \V1|som3|sum[0]~0_combout\ : std_logic;
SIGNAL \V1|soma|Q[0]~14_combout\ : std_logic;
SIGNAL \V1|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \V1|somi|Add0~0_combout\ : std_logic;
SIGNAL \V1|somi|Add0~1_combout\ : std_logic;
SIGNAL \V1|mux2|y[4]~1_combout\ : std_logic;
SIGNAL \V1|somi|Add0~2_combout\ : std_logic;
SIGNAL \V1|mux2|y[4]~2_combout\ : std_logic;
SIGNAL \V2|PE.S3~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \V2|EA.S3~q\ : std_logic;
SIGNAL \V2|EA.S4~feeder_combout\ : std_logic;
SIGNAL \V2|EA.S4~q\ : std_logic;
SIGNAL \V2|PE.S2~combout\ : std_logic;
SIGNAL \V2|EA.S2~q\ : std_logic;
SIGNAL \V2|PE.S5~0_combout\ : std_logic;
SIGNAL \V2|EA.S5~q\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \V2|Selector0~0_combout\ : std_logic;
SIGNAL \V2|EA.S0~q\ : std_logic;
SIGNAL \V2|PE.S1~0_combout\ : std_logic;
SIGNAL \V2|EA.S1~q\ : std_logic;
SIGNAL \V1|SAD_reg|Q[0]~feeder_combout\ : std_logic;
SIGNAL \V1|sub1|saida[1]~2_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~1\ : std_logic;
SIGNAL \V1|absto1|Add0~2_combout\ : std_logic;
SIGNAL \V1|sub0|saida[1]~2_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~1\ : std_logic;
SIGNAL \V1|absto0|Add0~2_combout\ : std_logic;
SIGNAL \V1|som1|sum[0]~1\ : std_logic;
SIGNAL \V1|som1|sum[1]~2_combout\ : std_logic;
SIGNAL \V1|sub2|saida[1]~2_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~1\ : std_logic;
SIGNAL \V1|absto2|Add0~2_combout\ : std_logic;
SIGNAL \V1|sub3|saida[1]~2_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~1\ : std_logic;
SIGNAL \V1|absto3|Add0~2_combout\ : std_logic;
SIGNAL \V1|som2|Add0~1\ : std_logic;
SIGNAL \V1|som2|Add0~2_combout\ : std_logic;
SIGNAL \V1|som3|sum[0]~1\ : std_logic;
SIGNAL \V1|som3|sum[1]~2_combout\ : std_logic;
SIGNAL \V1|soma|Q[0]~15\ : std_logic;
SIGNAL \V1|soma|Q[1]~16_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[1]~feeder_combout\ : std_logic;
SIGNAL \V1|sub1|saida[2]~4_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~3\ : std_logic;
SIGNAL \V1|absto1|Add0~4_combout\ : std_logic;
SIGNAL \V1|sub0|saida[2]~4_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~3\ : std_logic;
SIGNAL \V1|absto0|Add0~4_combout\ : std_logic;
SIGNAL \V1|som1|sum[1]~3\ : std_logic;
SIGNAL \V1|som1|sum[2]~4_combout\ : std_logic;
SIGNAL \V1|sub3|saida[2]~4_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~3\ : std_logic;
SIGNAL \V1|absto3|Add0~4_combout\ : std_logic;
SIGNAL \V1|sub2|saida[2]~4_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~3\ : std_logic;
SIGNAL \V1|absto2|Add0~4_combout\ : std_logic;
SIGNAL \V1|som2|Add0~3\ : std_logic;
SIGNAL \V1|som2|Add0~4_combout\ : std_logic;
SIGNAL \V1|som3|sum[1]~3\ : std_logic;
SIGNAL \V1|som3|sum[2]~4_combout\ : std_logic;
SIGNAL \V1|soma|Q[1]~17\ : std_logic;
SIGNAL \V1|soma|Q[2]~18_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \V1|sub2|saida[3]~6_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~5\ : std_logic;
SIGNAL \V1|absto2|Add0~6_combout\ : std_logic;
SIGNAL \V1|sub3|saida[3]~6_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~5\ : std_logic;
SIGNAL \V1|absto3|Add0~6_combout\ : std_logic;
SIGNAL \V1|som2|Add0~5\ : std_logic;
SIGNAL \V1|som2|Add0~6_combout\ : std_logic;
SIGNAL \V1|sub0|saida[3]~6_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~5\ : std_logic;
SIGNAL \V1|absto0|Add0~6_combout\ : std_logic;
SIGNAL \V1|sub1|saida[3]~6_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~5\ : std_logic;
SIGNAL \V1|absto1|Add0~6_combout\ : std_logic;
SIGNAL \V1|som1|sum[2]~5\ : std_logic;
SIGNAL \V1|som1|sum[3]~6_combout\ : std_logic;
SIGNAL \V1|som3|sum[2]~5\ : std_logic;
SIGNAL \V1|som3|sum[3]~6_combout\ : std_logic;
SIGNAL \V1|soma|Q[2]~19\ : std_logic;
SIGNAL \V1|soma|Q[3]~20_combout\ : std_logic;
SIGNAL \V1|sub0|saida[4]~8_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~7\ : std_logic;
SIGNAL \V1|absto0|Add0~8_combout\ : std_logic;
SIGNAL \V1|sub1|saida[4]~8_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~7\ : std_logic;
SIGNAL \V1|absto1|Add0~8_combout\ : std_logic;
SIGNAL \V1|som1|sum[3]~7\ : std_logic;
SIGNAL \V1|som1|sum[4]~8_combout\ : std_logic;
SIGNAL \V1|sub3|saida[4]~8_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~7\ : std_logic;
SIGNAL \V1|absto3|Add0~8_combout\ : std_logic;
SIGNAL \V1|sub2|saida[4]~8_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~7\ : std_logic;
SIGNAL \V1|absto2|Add0~8_combout\ : std_logic;
SIGNAL \V1|som2|Add0~7\ : std_logic;
SIGNAL \V1|som2|Add0~8_combout\ : std_logic;
SIGNAL \V1|som3|sum[3]~7\ : std_logic;
SIGNAL \V1|som3|sum[4]~8_combout\ : std_logic;
SIGNAL \V1|soma|Q[3]~21\ : std_logic;
SIGNAL \V1|soma|Q[4]~22_combout\ : std_logic;
SIGNAL \V1|sub3|saida[5]~10_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~9\ : std_logic;
SIGNAL \V1|absto3|Add0~10_combout\ : std_logic;
SIGNAL \V1|sub2|saida[5]~10_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~9\ : std_logic;
SIGNAL \V1|absto2|Add0~10_combout\ : std_logic;
SIGNAL \V1|som2|Add0~9\ : std_logic;
SIGNAL \V1|som2|Add0~10_combout\ : std_logic;
SIGNAL \V1|sub1|saida[5]~10_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~9\ : std_logic;
SIGNAL \V1|absto1|Add0~10_combout\ : std_logic;
SIGNAL \V1|sub0|saida[5]~10_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~9\ : std_logic;
SIGNAL \V1|absto0|Add0~10_combout\ : std_logic;
SIGNAL \V1|som1|sum[4]~9\ : std_logic;
SIGNAL \V1|som1|sum[5]~10_combout\ : std_logic;
SIGNAL \V1|som3|sum[4]~9\ : std_logic;
SIGNAL \V1|som3|sum[5]~10_combout\ : std_logic;
SIGNAL \V1|soma|Q[4]~23\ : std_logic;
SIGNAL \V1|soma|Q[5]~24_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[5]~feeder_combout\ : std_logic;
SIGNAL \V1|sub2|saida[6]~12_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~11\ : std_logic;
SIGNAL \V1|absto2|Add0~12_combout\ : std_logic;
SIGNAL \V1|sub3|saida[6]~12_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~11\ : std_logic;
SIGNAL \V1|absto3|Add0~12_combout\ : std_logic;
SIGNAL \V1|som2|Add0~11\ : std_logic;
SIGNAL \V1|som2|Add0~12_combout\ : std_logic;
SIGNAL \V1|sub0|saida[6]~12_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~11\ : std_logic;
SIGNAL \V1|absto0|Add0~12_combout\ : std_logic;
SIGNAL \V1|sub1|saida[6]~12_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~11\ : std_logic;
SIGNAL \V1|absto1|Add0~12_combout\ : std_logic;
SIGNAL \V1|som1|sum[5]~11\ : std_logic;
SIGNAL \V1|som1|sum[6]~12_combout\ : std_logic;
SIGNAL \V1|som3|sum[5]~11\ : std_logic;
SIGNAL \V1|som3|sum[6]~12_combout\ : std_logic;
SIGNAL \V1|soma|Q[5]~25\ : std_logic;
SIGNAL \V1|soma|Q[6]~26_combout\ : std_logic;
SIGNAL \V1|absto0|Add0~13\ : std_logic;
SIGNAL \V1|absto0|Add0~14_combout\ : std_logic;
SIGNAL \V1|absto1|Add0~13\ : std_logic;
SIGNAL \V1|absto1|Add0~14_combout\ : std_logic;
SIGNAL \V1|som1|sum[6]~13\ : std_logic;
SIGNAL \V1|som1|sum[7]~14_combout\ : std_logic;
SIGNAL \V1|absto2|Add0~13\ : std_logic;
SIGNAL \V1|absto2|Add0~14_combout\ : std_logic;
SIGNAL \V1|absto3|Add0~13\ : std_logic;
SIGNAL \V1|absto3|Add0~14_combout\ : std_logic;
SIGNAL \V1|som2|Add0~13\ : std_logic;
SIGNAL \V1|som2|Add0~14_combout\ : std_logic;
SIGNAL \V1|som3|sum[6]~13\ : std_logic;
SIGNAL \V1|som3|sum[7]~14_combout\ : std_logic;
SIGNAL \V1|soma|Q[6]~27\ : std_logic;
SIGNAL \V1|soma|Q[7]~28_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[7]~feeder_combout\ : std_logic;
SIGNAL \V1|som2|Add0~15\ : std_logic;
SIGNAL \V1|som2|Add0~16_combout\ : std_logic;
SIGNAL \V1|som1|sum[7]~15\ : std_logic;
SIGNAL \V1|som1|sum[8]~16_combout\ : std_logic;
SIGNAL \V1|som3|sum[7]~15\ : std_logic;
SIGNAL \V1|som3|sum[8]~16_combout\ : std_logic;
SIGNAL \V1|soma|Q[7]~29\ : std_logic;
SIGNAL \V1|soma|Q[8]~30_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[8]~feeder_combout\ : std_logic;
SIGNAL \V1|som3|sum[8]~17\ : std_logic;
SIGNAL \V1|som3|sum[9]~18_combout\ : std_logic;
SIGNAL \V1|soma|Q[8]~31\ : std_logic;
SIGNAL \V1|soma|Q[9]~32_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[9]~feeder_combout\ : std_logic;
SIGNAL \V1|soma|Q[9]~33\ : std_logic;
SIGNAL \V1|soma|Q[10]~34_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[10]~feeder_combout\ : std_logic;
SIGNAL \V1|soma|Q[10]~35\ : std_logic;
SIGNAL \V1|soma|Q[11]~36_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[11]~feeder_combout\ : std_logic;
SIGNAL \V1|soma|Q[11]~37\ : std_logic;
SIGNAL \V1|soma|Q[12]~38_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[12]~feeder_combout\ : std_logic;
SIGNAL \V1|soma|Q[12]~39\ : std_logic;
SIGNAL \V1|soma|Q[13]~40_combout\ : std_logic;
SIGNAL \V1|SAD_reg|Q[13]~feeder_combout\ : std_logic;
SIGNAL \V1|pA3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|pB0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|SAD_reg|Q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \V1|pB3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|soma|Q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \V1|pA2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|pB1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|pA0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|pA1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|pB2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \V1|regi|Q\ : std_logic_vector(4 DOWNTO 0);
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X9_Y24_N9
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

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X0_Y8_N16
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X34_Y9_N23
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X34_Y4_N16
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOIBUF_X18_Y24_N22
\sample_ori[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(16),
	o => \sample_ori[16]~input_o\);

-- Location: FF_X18_Y20_N19
\V1|pA1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(0));

-- Location: IOIBUF_X11_Y24_N15
\sample_can[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(16),
	o => \sample_can[16]~input_o\);

-- Location: FF_X18_Y20_N1
\V1|pB1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(0));

-- Location: LCCOMB_X18_Y20_N0
\V1|sub1|saida[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[0]~0_combout\ = (\V1|pA1|Q\(0) & ((GND) # (!\V1|pB1|Q\(0)))) # (!\V1|pA1|Q\(0) & (\V1|pB1|Q\(0) $ (GND)))
-- \V1|sub1|saida[0]~1\ = CARRY((\V1|pA1|Q\(0)) # (!\V1|pB1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA1|Q\(0),
	datab => \V1|pB1|Q\(0),
	datad => VCC,
	combout => \V1|sub1|saida[0]~0_combout\,
	cout => \V1|sub1|saida[0]~1\);

-- Location: IOIBUF_X3_Y24_N22
\sample_can[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(23),
	o => \sample_can[23]~input_o\);

-- Location: FF_X18_Y20_N15
\V1|pB1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(7));

-- Location: IOIBUF_X0_Y22_N1
\sample_ori[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(23),
	o => \sample_ori[23]~input_o\);

-- Location: FF_X18_Y20_N29
\V1|pA1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(7));

-- Location: IOIBUF_X13_Y24_N22
\sample_can[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(22),
	o => \sample_can[22]~input_o\);

-- Location: FF_X18_Y20_N13
\V1|pB1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(6));

-- Location: IOIBUF_X13_Y24_N15
\sample_ori[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(22),
	o => \sample_ori[22]~input_o\);

-- Location: FF_X18_Y20_N25
\V1|pA1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(6));

-- Location: IOIBUF_X5_Y24_N8
\sample_ori[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(21),
	o => \sample_ori[21]~input_o\);

-- Location: FF_X18_Y20_N11
\V1|pA1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(5));

-- Location: IOIBUF_X7_Y0_N1
\sample_can[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(21),
	o => \sample_can[21]~input_o\);

-- Location: FF_X18_Y20_N21
\V1|pB1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(5));

-- Location: IOIBUF_X18_Y0_N22
\sample_ori[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(20),
	o => \sample_ori[20]~input_o\);

-- Location: FF_X18_Y20_N27
\V1|pA1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[20]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(4));

-- Location: IOIBUF_X16_Y24_N15
\sample_can[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(20),
	o => \sample_can[20]~input_o\);

-- Location: FF_X18_Y20_N9
\V1|pB1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[20]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(4));

-- Location: IOIBUF_X16_Y24_N1
\sample_ori[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(19),
	o => \sample_ori[19]~input_o\);

-- Location: FF_X18_Y20_N7
\V1|pA1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(3));

-- Location: IOIBUF_X7_Y24_N1
\sample_can[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(19),
	o => \sample_can[19]~input_o\);

-- Location: FF_X18_Y20_N17
\V1|pB1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(3));

-- Location: IOIBUF_X16_Y24_N22
\sample_ori[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(18),
	o => \sample_ori[18]~input_o\);

-- Location: FF_X18_Y20_N23
\V1|pA1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(2));

-- Location: IOIBUF_X18_Y24_N15
\sample_can[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(18),
	o => \sample_can[18]~input_o\);

-- Location: FF_X18_Y20_N5
\V1|pB1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(2));

-- Location: IOIBUF_X7_Y24_N8
\sample_can[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(17),
	o => \sample_can[17]~input_o\);

-- Location: FF_X18_Y20_N31
\V1|pB1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB1|Q\(1));

-- Location: IOIBUF_X34_Y12_N8
\sample_ori[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(17),
	o => \sample_ori[17]~input_o\);

-- Location: FF_X18_Y20_N3
\V1|pA1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA1|Q\(1));

-- Location: LCCOMB_X18_Y20_N2
\V1|sub1|saida[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[1]~2_combout\ = (\V1|pB1|Q\(1) & ((\V1|pA1|Q\(1) & (!\V1|sub1|saida[0]~1\)) # (!\V1|pA1|Q\(1) & ((\V1|sub1|saida[0]~1\) # (GND))))) # (!\V1|pB1|Q\(1) & ((\V1|pA1|Q\(1) & (\V1|sub1|saida[0]~1\ & VCC)) # (!\V1|pA1|Q\(1) & 
-- (!\V1|sub1|saida[0]~1\))))
-- \V1|sub1|saida[1]~3\ = CARRY((\V1|pB1|Q\(1) & ((!\V1|sub1|saida[0]~1\) # (!\V1|pA1|Q\(1)))) # (!\V1|pB1|Q\(1) & (!\V1|pA1|Q\(1) & !\V1|sub1|saida[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB1|Q\(1),
	datab => \V1|pA1|Q\(1),
	datad => VCC,
	cin => \V1|sub1|saida[0]~1\,
	combout => \V1|sub1|saida[1]~2_combout\,
	cout => \V1|sub1|saida[1]~3\);

-- Location: LCCOMB_X18_Y20_N4
\V1|sub1|saida[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[2]~4_combout\ = ((\V1|pA1|Q\(2) $ (\V1|pB1|Q\(2) $ (\V1|sub1|saida[1]~3\)))) # (GND)
-- \V1|sub1|saida[2]~5\ = CARRY((\V1|pA1|Q\(2) & ((!\V1|sub1|saida[1]~3\) # (!\V1|pB1|Q\(2)))) # (!\V1|pA1|Q\(2) & (!\V1|pB1|Q\(2) & !\V1|sub1|saida[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA1|Q\(2),
	datab => \V1|pB1|Q\(2),
	datad => VCC,
	cin => \V1|sub1|saida[1]~3\,
	combout => \V1|sub1|saida[2]~4_combout\,
	cout => \V1|sub1|saida[2]~5\);

-- Location: LCCOMB_X18_Y20_N6
\V1|sub1|saida[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[3]~6_combout\ = (\V1|pA1|Q\(3) & ((\V1|pB1|Q\(3) & (!\V1|sub1|saida[2]~5\)) # (!\V1|pB1|Q\(3) & (\V1|sub1|saida[2]~5\ & VCC)))) # (!\V1|pA1|Q\(3) & ((\V1|pB1|Q\(3) & ((\V1|sub1|saida[2]~5\) # (GND))) # (!\V1|pB1|Q\(3) & 
-- (!\V1|sub1|saida[2]~5\))))
-- \V1|sub1|saida[3]~7\ = CARRY((\V1|pA1|Q\(3) & (\V1|pB1|Q\(3) & !\V1|sub1|saida[2]~5\)) # (!\V1|pA1|Q\(3) & ((\V1|pB1|Q\(3)) # (!\V1|sub1|saida[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA1|Q\(3),
	datab => \V1|pB1|Q\(3),
	datad => VCC,
	cin => \V1|sub1|saida[2]~5\,
	combout => \V1|sub1|saida[3]~6_combout\,
	cout => \V1|sub1|saida[3]~7\);

-- Location: LCCOMB_X18_Y20_N8
\V1|sub1|saida[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[4]~8_combout\ = ((\V1|pA1|Q\(4) $ (\V1|pB1|Q\(4) $ (\V1|sub1|saida[3]~7\)))) # (GND)
-- \V1|sub1|saida[4]~9\ = CARRY((\V1|pA1|Q\(4) & ((!\V1|sub1|saida[3]~7\) # (!\V1|pB1|Q\(4)))) # (!\V1|pA1|Q\(4) & (!\V1|pB1|Q\(4) & !\V1|sub1|saida[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA1|Q\(4),
	datab => \V1|pB1|Q\(4),
	datad => VCC,
	cin => \V1|sub1|saida[3]~7\,
	combout => \V1|sub1|saida[4]~8_combout\,
	cout => \V1|sub1|saida[4]~9\);

-- Location: LCCOMB_X18_Y20_N10
\V1|sub1|saida[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[5]~10_combout\ = (\V1|pA1|Q\(5) & ((\V1|pB1|Q\(5) & (!\V1|sub1|saida[4]~9\)) # (!\V1|pB1|Q\(5) & (\V1|sub1|saida[4]~9\ & VCC)))) # (!\V1|pA1|Q\(5) & ((\V1|pB1|Q\(5) & ((\V1|sub1|saida[4]~9\) # (GND))) # (!\V1|pB1|Q\(5) & 
-- (!\V1|sub1|saida[4]~9\))))
-- \V1|sub1|saida[5]~11\ = CARRY((\V1|pA1|Q\(5) & (\V1|pB1|Q\(5) & !\V1|sub1|saida[4]~9\)) # (!\V1|pA1|Q\(5) & ((\V1|pB1|Q\(5)) # (!\V1|sub1|saida[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA1|Q\(5),
	datab => \V1|pB1|Q\(5),
	datad => VCC,
	cin => \V1|sub1|saida[4]~9\,
	combout => \V1|sub1|saida[5]~10_combout\,
	cout => \V1|sub1|saida[5]~11\);

-- Location: LCCOMB_X18_Y20_N12
\V1|sub1|saida[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[6]~12_combout\ = ((\V1|pB1|Q\(6) $ (\V1|pA1|Q\(6) $ (\V1|sub1|saida[5]~11\)))) # (GND)
-- \V1|sub1|saida[6]~13\ = CARRY((\V1|pB1|Q\(6) & (\V1|pA1|Q\(6) & !\V1|sub1|saida[5]~11\)) # (!\V1|pB1|Q\(6) & ((\V1|pA1|Q\(6)) # (!\V1|sub1|saida[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB1|Q\(6),
	datab => \V1|pA1|Q\(6),
	datad => VCC,
	cin => \V1|sub1|saida[5]~11\,
	combout => \V1|sub1|saida[6]~12_combout\,
	cout => \V1|sub1|saida[6]~13\);

-- Location: LCCOMB_X18_Y20_N14
\V1|sub1|saida[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub1|saida[7]~14_combout\ = \V1|pB1|Q\(7) $ (\V1|sub1|saida[6]~13\ $ (!\V1|pA1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB1|Q\(7),
	datad => \V1|pA1|Q\(7),
	cin => \V1|sub1|saida[6]~13\,
	combout => \V1|sub1|saida[7]~14_combout\);

-- Location: LCCOMB_X19_Y20_N4
\V1|absto1|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|s~0_combout\ = \V1|sub1|saida[0]~0_combout\ $ (\V1|sub1|saida[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|sub1|saida[0]~0_combout\,
	datad => \V1|sub1|saida[7]~14_combout\,
	combout => \V1|absto1|s~0_combout\);

-- Location: LCCOMB_X18_Y20_N16
\V1|absto1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~0_combout\ = (\V1|absto1|s~0_combout\ & (\V1|sub1|saida[7]~14_combout\ $ (VCC))) # (!\V1|absto1|s~0_combout\ & (\V1|sub1|saida[7]~14_combout\ & VCC))
-- \V1|absto1|Add0~1\ = CARRY((\V1|absto1|s~0_combout\ & \V1|sub1|saida[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto1|s~0_combout\,
	datab => \V1|sub1|saida[7]~14_combout\,
	datad => VCC,
	combout => \V1|absto1|Add0~0_combout\,
	cout => \V1|absto1|Add0~1\);

-- Location: IOIBUF_X0_Y6_N22
\sample_ori[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(31),
	o => \sample_ori[31]~input_o\);

-- Location: FF_X19_Y19_N5
\V1|pA0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[31]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(7));

-- Location: IOIBUF_X18_Y0_N15
\sample_can[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(31),
	o => \sample_can[31]~input_o\);

-- Location: FF_X19_Y19_N31
\V1|pB0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[31]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(7));

-- Location: IOIBUF_X0_Y18_N22
\sample_ori[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(30),
	o => \sample_ori[30]~input_o\);

-- Location: FF_X19_Y19_N7
\V1|pA0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[30]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(6));

-- Location: IOIBUF_X16_Y0_N1
\sample_can[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(30),
	o => \sample_can[30]~input_o\);

-- Location: FF_X19_Y19_N29
\V1|pB0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[30]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(6));

-- Location: IOIBUF_X34_Y19_N15
\sample_can[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(29),
	o => \sample_can[29]~input_o\);

-- Location: FF_X19_Y19_N11
\V1|pB0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[29]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(5));

-- Location: IOIBUF_X5_Y0_N22
\sample_ori[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(29),
	o => \sample_ori[29]~input_o\);

-- Location: FF_X19_Y19_N27
\V1|pA0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[29]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(5));

-- Location: IOIBUF_X0_Y6_N15
\sample_can[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(28),
	o => \sample_can[28]~input_o\);

-- Location: FF_X19_Y19_N25
\V1|pB0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[28]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(4));

-- Location: IOIBUF_X0_Y5_N15
\sample_ori[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(28),
	o => \sample_ori[28]~input_o\);

-- Location: FF_X19_Y19_N15
\V1|pA0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[28]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(4));

-- Location: IOIBUF_X0_Y7_N1
\sample_ori[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(27),
	o => \sample_ori[27]~input_o\);

-- Location: FF_X19_Y19_N23
\V1|pA0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[27]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(3));

-- Location: IOIBUF_X5_Y0_N15
\sample_can[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(27),
	o => \sample_can[27]~input_o\);

-- Location: FF_X19_Y19_N1
\V1|pB0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[27]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(3));

-- Location: IOIBUF_X0_Y18_N15
\sample_ori[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(26),
	o => \sample_ori[26]~input_o\);

-- Location: FF_X19_Y19_N9
\V1|pA0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[26]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(2));

-- Location: IOIBUF_X16_Y0_N8
\sample_can[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(26),
	o => \sample_can[26]~input_o\);

-- Location: FF_X19_Y19_N21
\V1|pB0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[26]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(2));

-- Location: IOIBUF_X16_Y0_N22
\sample_can[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(25),
	o => \sample_can[25]~input_o\);

-- Location: FF_X19_Y19_N3
\V1|pB0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(1));

-- Location: IOIBUF_X23_Y0_N8
\sample_ori[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(25),
	o => \sample_ori[25]~input_o\);

-- Location: FF_X19_Y19_N19
\V1|pA0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(1));

-- Location: IOIBUF_X13_Y0_N15
\sample_ori[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(24),
	o => \sample_ori[24]~input_o\);

-- Location: FF_X19_Y19_N13
\V1|pA0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[24]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA0|Q\(0));

-- Location: IOIBUF_X0_Y9_N8
\sample_can[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(24),
	o => \sample_can[24]~input_o\);

-- Location: FF_X19_Y19_N17
\V1|pB0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[24]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB0|Q\(0));

-- Location: LCCOMB_X19_Y19_N16
\V1|sub0|saida[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[0]~0_combout\ = (\V1|pA0|Q\(0) & ((GND) # (!\V1|pB0|Q\(0)))) # (!\V1|pA0|Q\(0) & (\V1|pB0|Q\(0) $ (GND)))
-- \V1|sub0|saida[0]~1\ = CARRY((\V1|pA0|Q\(0)) # (!\V1|pB0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA0|Q\(0),
	datab => \V1|pB0|Q\(0),
	datad => VCC,
	combout => \V1|sub0|saida[0]~0_combout\,
	cout => \V1|sub0|saida[0]~1\);

-- Location: LCCOMB_X19_Y19_N18
\V1|sub0|saida[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[1]~2_combout\ = (\V1|pB0|Q\(1) & ((\V1|pA0|Q\(1) & (!\V1|sub0|saida[0]~1\)) # (!\V1|pA0|Q\(1) & ((\V1|sub0|saida[0]~1\) # (GND))))) # (!\V1|pB0|Q\(1) & ((\V1|pA0|Q\(1) & (\V1|sub0|saida[0]~1\ & VCC)) # (!\V1|pA0|Q\(1) & 
-- (!\V1|sub0|saida[0]~1\))))
-- \V1|sub0|saida[1]~3\ = CARRY((\V1|pB0|Q\(1) & ((!\V1|sub0|saida[0]~1\) # (!\V1|pA0|Q\(1)))) # (!\V1|pB0|Q\(1) & (!\V1|pA0|Q\(1) & !\V1|sub0|saida[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB0|Q\(1),
	datab => \V1|pA0|Q\(1),
	datad => VCC,
	cin => \V1|sub0|saida[0]~1\,
	combout => \V1|sub0|saida[1]~2_combout\,
	cout => \V1|sub0|saida[1]~3\);

-- Location: LCCOMB_X19_Y19_N20
\V1|sub0|saida[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[2]~4_combout\ = ((\V1|pA0|Q\(2) $ (\V1|pB0|Q\(2) $ (\V1|sub0|saida[1]~3\)))) # (GND)
-- \V1|sub0|saida[2]~5\ = CARRY((\V1|pA0|Q\(2) & ((!\V1|sub0|saida[1]~3\) # (!\V1|pB0|Q\(2)))) # (!\V1|pA0|Q\(2) & (!\V1|pB0|Q\(2) & !\V1|sub0|saida[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA0|Q\(2),
	datab => \V1|pB0|Q\(2),
	datad => VCC,
	cin => \V1|sub0|saida[1]~3\,
	combout => \V1|sub0|saida[2]~4_combout\,
	cout => \V1|sub0|saida[2]~5\);

-- Location: LCCOMB_X19_Y19_N22
\V1|sub0|saida[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[3]~6_combout\ = (\V1|pA0|Q\(3) & ((\V1|pB0|Q\(3) & (!\V1|sub0|saida[2]~5\)) # (!\V1|pB0|Q\(3) & (\V1|sub0|saida[2]~5\ & VCC)))) # (!\V1|pA0|Q\(3) & ((\V1|pB0|Q\(3) & ((\V1|sub0|saida[2]~5\) # (GND))) # (!\V1|pB0|Q\(3) & 
-- (!\V1|sub0|saida[2]~5\))))
-- \V1|sub0|saida[3]~7\ = CARRY((\V1|pA0|Q\(3) & (\V1|pB0|Q\(3) & !\V1|sub0|saida[2]~5\)) # (!\V1|pA0|Q\(3) & ((\V1|pB0|Q\(3)) # (!\V1|sub0|saida[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA0|Q\(3),
	datab => \V1|pB0|Q\(3),
	datad => VCC,
	cin => \V1|sub0|saida[2]~5\,
	combout => \V1|sub0|saida[3]~6_combout\,
	cout => \V1|sub0|saida[3]~7\);

-- Location: LCCOMB_X19_Y19_N24
\V1|sub0|saida[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[4]~8_combout\ = ((\V1|pB0|Q\(4) $ (\V1|pA0|Q\(4) $ (\V1|sub0|saida[3]~7\)))) # (GND)
-- \V1|sub0|saida[4]~9\ = CARRY((\V1|pB0|Q\(4) & (\V1|pA0|Q\(4) & !\V1|sub0|saida[3]~7\)) # (!\V1|pB0|Q\(4) & ((\V1|pA0|Q\(4)) # (!\V1|sub0|saida[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB0|Q\(4),
	datab => \V1|pA0|Q\(4),
	datad => VCC,
	cin => \V1|sub0|saida[3]~7\,
	combout => \V1|sub0|saida[4]~8_combout\,
	cout => \V1|sub0|saida[4]~9\);

-- Location: LCCOMB_X19_Y19_N26
\V1|sub0|saida[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[5]~10_combout\ = (\V1|pB0|Q\(5) & ((\V1|pA0|Q\(5) & (!\V1|sub0|saida[4]~9\)) # (!\V1|pA0|Q\(5) & ((\V1|sub0|saida[4]~9\) # (GND))))) # (!\V1|pB0|Q\(5) & ((\V1|pA0|Q\(5) & (\V1|sub0|saida[4]~9\ & VCC)) # (!\V1|pA0|Q\(5) & 
-- (!\V1|sub0|saida[4]~9\))))
-- \V1|sub0|saida[5]~11\ = CARRY((\V1|pB0|Q\(5) & ((!\V1|sub0|saida[4]~9\) # (!\V1|pA0|Q\(5)))) # (!\V1|pB0|Q\(5) & (!\V1|pA0|Q\(5) & !\V1|sub0|saida[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB0|Q\(5),
	datab => \V1|pA0|Q\(5),
	datad => VCC,
	cin => \V1|sub0|saida[4]~9\,
	combout => \V1|sub0|saida[5]~10_combout\,
	cout => \V1|sub0|saida[5]~11\);

-- Location: LCCOMB_X19_Y19_N28
\V1|sub0|saida[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[6]~12_combout\ = ((\V1|pA0|Q\(6) $ (\V1|pB0|Q\(6) $ (\V1|sub0|saida[5]~11\)))) # (GND)
-- \V1|sub0|saida[6]~13\ = CARRY((\V1|pA0|Q\(6) & ((!\V1|sub0|saida[5]~11\) # (!\V1|pB0|Q\(6)))) # (!\V1|pA0|Q\(6) & (!\V1|pB0|Q\(6) & !\V1|sub0|saida[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA0|Q\(6),
	datab => \V1|pB0|Q\(6),
	datad => VCC,
	cin => \V1|sub0|saida[5]~11\,
	combout => \V1|sub0|saida[6]~12_combout\,
	cout => \V1|sub0|saida[6]~13\);

-- Location: LCCOMB_X19_Y19_N30
\V1|sub0|saida[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub0|saida[7]~14_combout\ = \V1|pA0|Q\(7) $ (\V1|sub0|saida[6]~13\ $ (!\V1|pB0|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|pA0|Q\(7),
	datad => \V1|pB0|Q\(7),
	cin => \V1|sub0|saida[6]~13\,
	combout => \V1|sub0|saida[7]~14_combout\);

-- Location: LCCOMB_X18_Y19_N12
\V1|absto0|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|s~0_combout\ = \V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|sub0|saida[7]~14_combout\,
	datad => \V1|sub0|saida[0]~0_combout\,
	combout => \V1|absto0|s~0_combout\);

-- Location: LCCOMB_X19_Y19_N0
\V1|absto0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~0_combout\ = (\V1|absto0|s~0_combout\ & (\V1|sub0|saida[7]~14_combout\ $ (VCC))) # (!\V1|absto0|s~0_combout\ & (\V1|sub0|saida[7]~14_combout\ & VCC))
-- \V1|absto0|Add0~1\ = CARRY((\V1|absto0|s~0_combout\ & \V1|sub0|saida[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto0|s~0_combout\,
	datab => \V1|sub0|saida[7]~14_combout\,
	datad => VCC,
	combout => \V1|absto0|Add0~0_combout\,
	cout => \V1|absto0|Add0~1\);

-- Location: LCCOMB_X19_Y20_N10
\V1|som1|sum[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[0]~0_combout\ = (\V1|absto1|Add0~0_combout\ & (\V1|absto0|Add0~0_combout\ $ (VCC))) # (!\V1|absto1|Add0~0_combout\ & (\V1|absto0|Add0~0_combout\ & VCC))
-- \V1|som1|sum[0]~1\ = CARRY((\V1|absto1|Add0~0_combout\ & \V1|absto0|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto1|Add0~0_combout\,
	datab => \V1|absto0|Add0~0_combout\,
	datad => VCC,
	combout => \V1|som1|sum[0]~0_combout\,
	cout => \V1|som1|sum[0]~1\);

-- Location: IOIBUF_X30_Y0_N8
\sample_ori[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(0),
	o => \sample_ori[0]~input_o\);

-- Location: FF_X28_Y20_N17
\V1|pA3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(0));

-- Location: IOIBUF_X28_Y0_N22
\sample_can[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(0),
	o => \sample_can[0]~input_o\);

-- Location: FF_X28_Y20_N1
\V1|pB3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(0));

-- Location: LCCOMB_X28_Y20_N0
\V1|sub3|saida[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[0]~0_combout\ = (\V1|pA3|Q\(0) & ((GND) # (!\V1|pB3|Q\(0)))) # (!\V1|pA3|Q\(0) & (\V1|pB3|Q\(0) $ (GND)))
-- \V1|sub3|saida[0]~1\ = CARRY((\V1|pA3|Q\(0)) # (!\V1|pB3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA3|Q\(0),
	datab => \V1|pB3|Q\(0),
	datad => VCC,
	combout => \V1|sub3|saida[0]~0_combout\,
	cout => \V1|sub3|saida[0]~1\);

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

-- Location: FF_X28_Y20_N15
\V1|pB3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(7));

-- Location: IOIBUF_X32_Y0_N8
\sample_ori[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(7),
	o => \sample_ori[7]~input_o\);

-- Location: FF_X28_Y20_N21
\V1|pA3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(7));

-- Location: IOIBUF_X34_Y2_N22
\sample_can[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(6),
	o => \sample_can[6]~input_o\);

-- Location: FF_X28_Y20_N13
\V1|pB3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(6));

-- Location: IOIBUF_X28_Y24_N8
\sample_ori[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(6),
	o => \sample_ori[6]~input_o\);

-- Location: FF_X28_Y20_N19
\V1|pA3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(6));

-- Location: IOIBUF_X28_Y0_N1
\sample_ori[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(5),
	o => \sample_ori[5]~input_o\);

-- Location: FF_X28_Y20_N11
\V1|pA3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(5));

-- Location: IOIBUF_X34_Y20_N8
\sample_can[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(5),
	o => \sample_can[5]~input_o\);

-- Location: FF_X28_Y20_N29
\V1|pB3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(5));

-- Location: IOIBUF_X34_Y12_N15
\sample_ori[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(4),
	o => \sample_ori[4]~input_o\);

-- Location: FF_X28_Y20_N31
\V1|pA3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(4));

-- Location: IOIBUF_X34_Y12_N22
\sample_can[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(4),
	o => \sample_can[4]~input_o\);

-- Location: FF_X28_Y20_N9
\V1|pB3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(4));

-- Location: IOIBUF_X23_Y0_N15
\sample_can[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(3),
	o => \sample_can[3]~input_o\);

-- Location: FF_X28_Y20_N27
\V1|pB3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(3));

-- Location: IOIBUF_X0_Y21_N8
\sample_ori[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(3),
	o => \sample_ori[3]~input_o\);

-- Location: FF_X28_Y20_N7
\V1|pA3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(3));

-- Location: IOIBUF_X1_Y0_N22
\sample_ori[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(2),
	o => \sample_ori[2]~input_o\);

-- Location: FF_X28_Y20_N23
\V1|pA3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(2));

-- Location: IOIBUF_X30_Y0_N22
\sample_can[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(2),
	o => \sample_can[2]~input_o\);

-- Location: FF_X28_Y20_N5
\V1|pB3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(2));

-- Location: IOIBUF_X28_Y24_N22
\sample_ori[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(1),
	o => \sample_ori[1]~input_o\);

-- Location: FF_X28_Y20_N3
\V1|pA3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA3|Q\(1));

-- Location: IOIBUF_X34_Y9_N8
\sample_can[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(1),
	o => \sample_can[1]~input_o\);

-- Location: FF_X28_Y20_N25
\V1|pB3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB3|Q\(1));

-- Location: LCCOMB_X28_Y20_N2
\V1|sub3|saida[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[1]~2_combout\ = (\V1|pA3|Q\(1) & ((\V1|pB3|Q\(1) & (!\V1|sub3|saida[0]~1\)) # (!\V1|pB3|Q\(1) & (\V1|sub3|saida[0]~1\ & VCC)))) # (!\V1|pA3|Q\(1) & ((\V1|pB3|Q\(1) & ((\V1|sub3|saida[0]~1\) # (GND))) # (!\V1|pB3|Q\(1) & 
-- (!\V1|sub3|saida[0]~1\))))
-- \V1|sub3|saida[1]~3\ = CARRY((\V1|pA3|Q\(1) & (\V1|pB3|Q\(1) & !\V1|sub3|saida[0]~1\)) # (!\V1|pA3|Q\(1) & ((\V1|pB3|Q\(1)) # (!\V1|sub3|saida[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA3|Q\(1),
	datab => \V1|pB3|Q\(1),
	datad => VCC,
	cin => \V1|sub3|saida[0]~1\,
	combout => \V1|sub3|saida[1]~2_combout\,
	cout => \V1|sub3|saida[1]~3\);

-- Location: LCCOMB_X28_Y20_N4
\V1|sub3|saida[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[2]~4_combout\ = ((\V1|pA3|Q\(2) $ (\V1|pB3|Q\(2) $ (\V1|sub3|saida[1]~3\)))) # (GND)
-- \V1|sub3|saida[2]~5\ = CARRY((\V1|pA3|Q\(2) & ((!\V1|sub3|saida[1]~3\) # (!\V1|pB3|Q\(2)))) # (!\V1|pA3|Q\(2) & (!\V1|pB3|Q\(2) & !\V1|sub3|saida[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA3|Q\(2),
	datab => \V1|pB3|Q\(2),
	datad => VCC,
	cin => \V1|sub3|saida[1]~3\,
	combout => \V1|sub3|saida[2]~4_combout\,
	cout => \V1|sub3|saida[2]~5\);

-- Location: LCCOMB_X28_Y20_N6
\V1|sub3|saida[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[3]~6_combout\ = (\V1|pB3|Q\(3) & ((\V1|pA3|Q\(3) & (!\V1|sub3|saida[2]~5\)) # (!\V1|pA3|Q\(3) & ((\V1|sub3|saida[2]~5\) # (GND))))) # (!\V1|pB3|Q\(3) & ((\V1|pA3|Q\(3) & (\V1|sub3|saida[2]~5\ & VCC)) # (!\V1|pA3|Q\(3) & 
-- (!\V1|sub3|saida[2]~5\))))
-- \V1|sub3|saida[3]~7\ = CARRY((\V1|pB3|Q\(3) & ((!\V1|sub3|saida[2]~5\) # (!\V1|pA3|Q\(3)))) # (!\V1|pB3|Q\(3) & (!\V1|pA3|Q\(3) & !\V1|sub3|saida[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB3|Q\(3),
	datab => \V1|pA3|Q\(3),
	datad => VCC,
	cin => \V1|sub3|saida[2]~5\,
	combout => \V1|sub3|saida[3]~6_combout\,
	cout => \V1|sub3|saida[3]~7\);

-- Location: LCCOMB_X28_Y20_N8
\V1|sub3|saida[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[4]~8_combout\ = ((\V1|pA3|Q\(4) $ (\V1|pB3|Q\(4) $ (\V1|sub3|saida[3]~7\)))) # (GND)
-- \V1|sub3|saida[4]~9\ = CARRY((\V1|pA3|Q\(4) & ((!\V1|sub3|saida[3]~7\) # (!\V1|pB3|Q\(4)))) # (!\V1|pA3|Q\(4) & (!\V1|pB3|Q\(4) & !\V1|sub3|saida[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA3|Q\(4),
	datab => \V1|pB3|Q\(4),
	datad => VCC,
	cin => \V1|sub3|saida[3]~7\,
	combout => \V1|sub3|saida[4]~8_combout\,
	cout => \V1|sub3|saida[4]~9\);

-- Location: LCCOMB_X28_Y20_N10
\V1|sub3|saida[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[5]~10_combout\ = (\V1|pA3|Q\(5) & ((\V1|pB3|Q\(5) & (!\V1|sub3|saida[4]~9\)) # (!\V1|pB3|Q\(5) & (\V1|sub3|saida[4]~9\ & VCC)))) # (!\V1|pA3|Q\(5) & ((\V1|pB3|Q\(5) & ((\V1|sub3|saida[4]~9\) # (GND))) # (!\V1|pB3|Q\(5) & 
-- (!\V1|sub3|saida[4]~9\))))
-- \V1|sub3|saida[5]~11\ = CARRY((\V1|pA3|Q\(5) & (\V1|pB3|Q\(5) & !\V1|sub3|saida[4]~9\)) # (!\V1|pA3|Q\(5) & ((\V1|pB3|Q\(5)) # (!\V1|sub3|saida[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA3|Q\(5),
	datab => \V1|pB3|Q\(5),
	datad => VCC,
	cin => \V1|sub3|saida[4]~9\,
	combout => \V1|sub3|saida[5]~10_combout\,
	cout => \V1|sub3|saida[5]~11\);

-- Location: LCCOMB_X28_Y20_N12
\V1|sub3|saida[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[6]~12_combout\ = ((\V1|pB3|Q\(6) $ (\V1|pA3|Q\(6) $ (\V1|sub3|saida[5]~11\)))) # (GND)
-- \V1|sub3|saida[6]~13\ = CARRY((\V1|pB3|Q\(6) & (\V1|pA3|Q\(6) & !\V1|sub3|saida[5]~11\)) # (!\V1|pB3|Q\(6) & ((\V1|pA3|Q\(6)) # (!\V1|sub3|saida[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB3|Q\(6),
	datab => \V1|pA3|Q\(6),
	datad => VCC,
	cin => \V1|sub3|saida[5]~11\,
	combout => \V1|sub3|saida[6]~12_combout\,
	cout => \V1|sub3|saida[6]~13\);

-- Location: LCCOMB_X28_Y20_N14
\V1|sub3|saida[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub3|saida[7]~14_combout\ = \V1|pB3|Q\(7) $ (\V1|sub3|saida[6]~13\ $ (!\V1|pA3|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB3|Q\(7),
	datad => \V1|pA3|Q\(7),
	cin => \V1|sub3|saida[6]~13\,
	combout => \V1|sub3|saida[7]~14_combout\);

-- Location: LCCOMB_X29_Y20_N4
\V1|absto3|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|s~0_combout\ = \V1|sub3|saida[0]~0_combout\ $ (\V1|sub3|saida[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|sub3|saida[0]~0_combout\,
	datad => \V1|sub3|saida[7]~14_combout\,
	combout => \V1|absto3|s~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\V1|absto3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~0_combout\ = (\V1|absto3|s~0_combout\ & (\V1|sub3|saida[7]~14_combout\ $ (VCC))) # (!\V1|absto3|s~0_combout\ & (\V1|sub3|saida[7]~14_combout\ & VCC))
-- \V1|absto3|Add0~1\ = CARRY((\V1|absto3|s~0_combout\ & \V1|sub3|saida[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto3|s~0_combout\,
	datab => \V1|sub3|saida[7]~14_combout\,
	datad => VCC,
	combout => \V1|absto3|Add0~0_combout\,
	cout => \V1|absto3|Add0~1\);

-- Location: IOIBUF_X34_Y18_N1
\sample_can[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(15),
	o => \sample_can[15]~input_o\);

-- Location: FF_X26_Y21_N15
\V1|pB2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(7));

-- Location: IOIBUF_X23_Y24_N8
\sample_ori[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(15),
	o => \sample_ori[15]~input_o\);

-- Location: FF_X26_Y21_N21
\V1|pA2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(7));

-- Location: IOIBUF_X28_Y24_N15
\sample_can[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(14),
	o => \sample_can[14]~input_o\);

-- Location: FF_X26_Y21_N13
\V1|pB2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(6));

-- Location: IOIBUF_X30_Y24_N22
\sample_ori[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(14),
	o => \sample_ori[14]~input_o\);

-- Location: FF_X26_Y21_N31
\V1|pA2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(6));

-- Location: IOIBUF_X34_Y7_N22
\sample_ori[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(13),
	o => \sample_ori[13]~input_o\);

-- Location: FF_X26_Y21_N11
\V1|pA2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(5));

-- Location: IOIBUF_X34_Y3_N22
\sample_can[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(13),
	o => \sample_can[13]~input_o\);

-- Location: FF_X26_Y21_N25
\V1|pB2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(5));

-- Location: IOIBUF_X34_Y18_N15
\sample_can[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(12),
	o => \sample_can[12]~input_o\);

-- Location: FF_X26_Y21_N9
\V1|pB2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(4));

-- Location: IOIBUF_X30_Y24_N1
\sample_ori[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(12),
	o => \sample_ori[12]~input_o\);

-- Location: FF_X26_Y21_N29
\V1|pA2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(4));

-- Location: IOIBUF_X34_Y17_N1
\sample_can[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(11),
	o => \sample_can[11]~input_o\);

-- Location: FF_X26_Y21_N27
\V1|pB2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(3));

-- Location: IOIBUF_X1_Y24_N8
\sample_ori[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(11),
	o => \sample_ori[11]~input_o\);

-- Location: FF_X26_Y21_N7
\V1|pA2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(3));

-- Location: IOIBUF_X28_Y24_N1
\sample_ori[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(10),
	o => \sample_ori[10]~input_o\);

-- Location: FF_X26_Y21_N23
\V1|pA2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(2));

-- Location: IOIBUF_X34_Y10_N8
\sample_can[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(10),
	o => \sample_can[10]~input_o\);

-- Location: FF_X26_Y21_N5
\V1|pB2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(2));

-- Location: IOIBUF_X34_Y17_N15
\sample_ori[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(9),
	o => \sample_ori[9]~input_o\);

-- Location: FF_X26_Y21_N3
\V1|pA2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(1));

-- Location: IOIBUF_X34_Y17_N22
\sample_can[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(9),
	o => \sample_can[9]~input_o\);

-- Location: FF_X26_Y21_N19
\V1|pB2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(1));

-- Location: IOIBUF_X34_Y2_N15
\sample_ori[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(8),
	o => \sample_ori[8]~input_o\);

-- Location: FF_X26_Y21_N17
\V1|pA2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_ori[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pA2|Q\(0));

-- Location: IOIBUF_X25_Y0_N1
\sample_can[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(8),
	o => \sample_can[8]~input_o\);

-- Location: FF_X26_Y21_N1
\V1|pB2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \sample_can[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|pB2|Q\(0));

-- Location: LCCOMB_X26_Y21_N0
\V1|sub2|saida[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[0]~0_combout\ = (\V1|pA2|Q\(0) & ((GND) # (!\V1|pB2|Q\(0)))) # (!\V1|pA2|Q\(0) & (\V1|pB2|Q\(0) $ (GND)))
-- \V1|sub2|saida[0]~1\ = CARRY((\V1|pA2|Q\(0)) # (!\V1|pB2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA2|Q\(0),
	datab => \V1|pB2|Q\(0),
	datad => VCC,
	combout => \V1|sub2|saida[0]~0_combout\,
	cout => \V1|sub2|saida[0]~1\);

-- Location: LCCOMB_X26_Y21_N2
\V1|sub2|saida[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[1]~2_combout\ = (\V1|pA2|Q\(1) & ((\V1|pB2|Q\(1) & (!\V1|sub2|saida[0]~1\)) # (!\V1|pB2|Q\(1) & (\V1|sub2|saida[0]~1\ & VCC)))) # (!\V1|pA2|Q\(1) & ((\V1|pB2|Q\(1) & ((\V1|sub2|saida[0]~1\) # (GND))) # (!\V1|pB2|Q\(1) & 
-- (!\V1|sub2|saida[0]~1\))))
-- \V1|sub2|saida[1]~3\ = CARRY((\V1|pA2|Q\(1) & (\V1|pB2|Q\(1) & !\V1|sub2|saida[0]~1\)) # (!\V1|pA2|Q\(1) & ((\V1|pB2|Q\(1)) # (!\V1|sub2|saida[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA2|Q\(1),
	datab => \V1|pB2|Q\(1),
	datad => VCC,
	cin => \V1|sub2|saida[0]~1\,
	combout => \V1|sub2|saida[1]~2_combout\,
	cout => \V1|sub2|saida[1]~3\);

-- Location: LCCOMB_X26_Y21_N4
\V1|sub2|saida[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[2]~4_combout\ = ((\V1|pA2|Q\(2) $ (\V1|pB2|Q\(2) $ (\V1|sub2|saida[1]~3\)))) # (GND)
-- \V1|sub2|saida[2]~5\ = CARRY((\V1|pA2|Q\(2) & ((!\V1|sub2|saida[1]~3\) # (!\V1|pB2|Q\(2)))) # (!\V1|pA2|Q\(2) & (!\V1|pB2|Q\(2) & !\V1|sub2|saida[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA2|Q\(2),
	datab => \V1|pB2|Q\(2),
	datad => VCC,
	cin => \V1|sub2|saida[1]~3\,
	combout => \V1|sub2|saida[2]~4_combout\,
	cout => \V1|sub2|saida[2]~5\);

-- Location: LCCOMB_X26_Y21_N6
\V1|sub2|saida[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[3]~6_combout\ = (\V1|pB2|Q\(3) & ((\V1|pA2|Q\(3) & (!\V1|sub2|saida[2]~5\)) # (!\V1|pA2|Q\(3) & ((\V1|sub2|saida[2]~5\) # (GND))))) # (!\V1|pB2|Q\(3) & ((\V1|pA2|Q\(3) & (\V1|sub2|saida[2]~5\ & VCC)) # (!\V1|pA2|Q\(3) & 
-- (!\V1|sub2|saida[2]~5\))))
-- \V1|sub2|saida[3]~7\ = CARRY((\V1|pB2|Q\(3) & ((!\V1|sub2|saida[2]~5\) # (!\V1|pA2|Q\(3)))) # (!\V1|pB2|Q\(3) & (!\V1|pA2|Q\(3) & !\V1|sub2|saida[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB2|Q\(3),
	datab => \V1|pA2|Q\(3),
	datad => VCC,
	cin => \V1|sub2|saida[2]~5\,
	combout => \V1|sub2|saida[3]~6_combout\,
	cout => \V1|sub2|saida[3]~7\);

-- Location: LCCOMB_X26_Y21_N8
\V1|sub2|saida[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[4]~8_combout\ = ((\V1|pB2|Q\(4) $ (\V1|pA2|Q\(4) $ (\V1|sub2|saida[3]~7\)))) # (GND)
-- \V1|sub2|saida[4]~9\ = CARRY((\V1|pB2|Q\(4) & (\V1|pA2|Q\(4) & !\V1|sub2|saida[3]~7\)) # (!\V1|pB2|Q\(4) & ((\V1|pA2|Q\(4)) # (!\V1|sub2|saida[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB2|Q\(4),
	datab => \V1|pA2|Q\(4),
	datad => VCC,
	cin => \V1|sub2|saida[3]~7\,
	combout => \V1|sub2|saida[4]~8_combout\,
	cout => \V1|sub2|saida[4]~9\);

-- Location: LCCOMB_X26_Y21_N10
\V1|sub2|saida[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[5]~10_combout\ = (\V1|pA2|Q\(5) & ((\V1|pB2|Q\(5) & (!\V1|sub2|saida[4]~9\)) # (!\V1|pB2|Q\(5) & (\V1|sub2|saida[4]~9\ & VCC)))) # (!\V1|pA2|Q\(5) & ((\V1|pB2|Q\(5) & ((\V1|sub2|saida[4]~9\) # (GND))) # (!\V1|pB2|Q\(5) & 
-- (!\V1|sub2|saida[4]~9\))))
-- \V1|sub2|saida[5]~11\ = CARRY((\V1|pA2|Q\(5) & (\V1|pB2|Q\(5) & !\V1|sub2|saida[4]~9\)) # (!\V1|pA2|Q\(5) & ((\V1|pB2|Q\(5)) # (!\V1|sub2|saida[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pA2|Q\(5),
	datab => \V1|pB2|Q\(5),
	datad => VCC,
	cin => \V1|sub2|saida[4]~9\,
	combout => \V1|sub2|saida[5]~10_combout\,
	cout => \V1|sub2|saida[5]~11\);

-- Location: LCCOMB_X26_Y21_N12
\V1|sub2|saida[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[6]~12_combout\ = ((\V1|pB2|Q\(6) $ (\V1|pA2|Q\(6) $ (\V1|sub2|saida[5]~11\)))) # (GND)
-- \V1|sub2|saida[6]~13\ = CARRY((\V1|pB2|Q\(6) & (\V1|pA2|Q\(6) & !\V1|sub2|saida[5]~11\)) # (!\V1|pB2|Q\(6) & ((\V1|pA2|Q\(6)) # (!\V1|sub2|saida[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|pB2|Q\(6),
	datab => \V1|pA2|Q\(6),
	datad => VCC,
	cin => \V1|sub2|saida[5]~11\,
	combout => \V1|sub2|saida[6]~12_combout\,
	cout => \V1|sub2|saida[6]~13\);

-- Location: LCCOMB_X26_Y21_N14
\V1|sub2|saida[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|sub2|saida[7]~14_combout\ = \V1|pB2|Q\(7) $ (\V1|sub2|saida[6]~13\ $ (!\V1|pA2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|pB2|Q\(7),
	datad => \V1|pA2|Q\(7),
	cin => \V1|sub2|saida[6]~13\,
	combout => \V1|sub2|saida[7]~14_combout\);

-- Location: LCCOMB_X25_Y21_N24
\V1|absto2|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|s~0_combout\ = \V1|sub2|saida[0]~0_combout\ $ (\V1|sub2|saida[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|sub2|saida[0]~0_combout\,
	datac => \V1|sub2|saida[7]~14_combout\,
	combout => \V1|absto2|s~0_combout\);

-- Location: LCCOMB_X26_Y21_N16
\V1|absto2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~0_combout\ = (\V1|sub2|saida[7]~14_combout\ & (\V1|absto2|s~0_combout\ $ (VCC))) # (!\V1|sub2|saida[7]~14_combout\ & (\V1|absto2|s~0_combout\ & VCC))
-- \V1|absto2|Add0~1\ = CARRY((\V1|sub2|saida[7]~14_combout\ & \V1|absto2|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub2|saida[7]~14_combout\,
	datab => \V1|absto2|s~0_combout\,
	datad => VCC,
	combout => \V1|absto2|Add0~0_combout\,
	cout => \V1|absto2|Add0~1\);

-- Location: LCCOMB_X25_Y20_N0
\V1|som2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~0_combout\ = (\V1|absto3|Add0~0_combout\ & (\V1|absto2|Add0~0_combout\ $ (VCC))) # (!\V1|absto3|Add0~0_combout\ & (\V1|absto2|Add0~0_combout\ & VCC))
-- \V1|som2|Add0~1\ = CARRY((\V1|absto3|Add0~0_combout\ & \V1|absto2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto3|Add0~0_combout\,
	datab => \V1|absto2|Add0~0_combout\,
	datad => VCC,
	combout => \V1|som2|Add0~0_combout\,
	cout => \V1|som2|Add0~1\);

-- Location: LCCOMB_X24_Y20_N4
\V1|som3|sum[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[0]~0_combout\ = (\V1|som1|sum[0]~0_combout\ & (\V1|som2|Add0~0_combout\ $ (VCC))) # (!\V1|som1|sum[0]~0_combout\ & (\V1|som2|Add0~0_combout\ & VCC))
-- \V1|som3|sum[0]~1\ = CARRY((\V1|som1|sum[0]~0_combout\ & \V1|som2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som1|sum[0]~0_combout\,
	datab => \V1|som2|Add0~0_combout\,
	datad => VCC,
	combout => \V1|som3|sum[0]~0_combout\,
	cout => \V1|som3|sum[0]~1\);

-- Location: LCCOMB_X23_Y20_N2
\V1|soma|Q[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[0]~14_combout\ = (\V1|som3|sum[0]~0_combout\ & (\V1|soma|Q\(0) $ (VCC))) # (!\V1|som3|sum[0]~0_combout\ & (\V1|soma|Q\(0) & VCC))
-- \V1|soma|Q[0]~15\ = CARRY((\V1|som3|sum[0]~0_combout\ & \V1|soma|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som3|sum[0]~0_combout\,
	datab => \V1|soma|Q\(0),
	datad => VCC,
	combout => \V1|soma|Q[0]~14_combout\,
	cout => \V1|soma|Q[0]~15\);

-- Location: LCCOMB_X31_Y12_N2
\V1|mux2|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|mux2|y[0]~0_combout\ = (!\V1|regi|Q\(0) & !\V2|EA.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|regi|Q\(0),
	datad => \V2|EA.S1~q\,
	combout => \V1|mux2|y[0]~0_combout\);

-- Location: FF_X31_Y12_N3
\V1|regi|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|mux2|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(0));

-- Location: LCCOMB_X31_Y12_N0
\V1|somi|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|somi|Add0~0_combout\ = \V1|regi|Q\(1) $ (\V1|regi|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|regi|Q\(1),
	datad => \V1|regi|Q\(0),
	combout => \V1|somi|Add0~0_combout\);

-- Location: FF_X31_Y12_N1
\V1|regi|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|somi|Add0~0_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(1));

-- Location: LCCOMB_X31_Y12_N18
\V1|somi|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|somi|Add0~1_combout\ = \V1|regi|Q\(2) $ (((\V1|regi|Q\(1) & \V1|regi|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|regi|Q\(1),
	datac => \V1|regi|Q\(2),
	datad => \V1|regi|Q\(0),
	combout => \V1|somi|Add0~1_combout\);

-- Location: FF_X31_Y12_N19
\V1|regi|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|somi|Add0~1_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(2));

-- Location: LCCOMB_X31_Y12_N20
\V1|mux2|y[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|mux2|y[4]~1_combout\ = (!\V2|EA.S1~q\ & (\V1|regi|Q\(1) & (\V1|regi|Q\(2) & \V1|regi|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2|EA.S1~q\,
	datab => \V1|regi|Q\(1),
	datac => \V1|regi|Q\(2),
	datad => \V1|regi|Q\(0),
	combout => \V1|mux2|y[4]~1_combout\);

-- Location: LCCOMB_X31_Y12_N4
\V1|somi|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|somi|Add0~2_combout\ = \V1|regi|Q\(3) $ (((\V1|regi|Q\(2) & (\V1|regi|Q\(1) & \V1|regi|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V1|regi|Q\(2),
	datab => \V1|regi|Q\(1),
	datac => \V1|regi|Q\(3),
	datad => \V1|regi|Q\(0),
	combout => \V1|somi|Add0~2_combout\);

-- Location: FF_X31_Y12_N5
\V1|regi|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|somi|Add0~2_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(3));

-- Location: LCCOMB_X31_Y12_N26
\V1|mux2|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|mux2|y[4]~2_combout\ = (\V1|mux2|y[4]~1_combout\ & \V1|regi|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V1|mux2|y[4]~1_combout\,
	datac => \V1|regi|Q\(3),
	combout => \V1|mux2|y[4]~2_combout\);

-- Location: FF_X31_Y12_N27
\V1|regi|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|mux2|y[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|regi|Q\(4));

-- Location: LCCOMB_X31_Y12_N28
\V2|PE.S3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S3~0_combout\ = (!\V1|regi|Q\(4) & \V2|EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|regi|Q\(4),
	datad => \V2|EA.S2~q\,
	combout => \V2|PE.S3~0_combout\);

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

-- Location: FF_X31_Y12_N29
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

-- Location: LCCOMB_X31_Y12_N22
\V2|EA.S4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|EA.S4~feeder_combout\ = \V2|EA.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V2|EA.S3~q\,
	combout => \V2|EA.S4~feeder_combout\);

-- Location: FF_X31_Y12_N23
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

-- Location: LCCOMB_X31_Y12_N24
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

-- Location: FF_X31_Y12_N25
\V2|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V2|PE.S2~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V2|EA.S2~q\);

-- Location: LCCOMB_X31_Y12_N10
\V2|PE.S5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|PE.S5~0_combout\ = (\V1|regi|Q\(4) & \V2|EA.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \V1|regi|Q\(4),
	datad => \V2|EA.S2~q\,
	combout => \V2|PE.S5~0_combout\);

-- Location: FF_X31_Y12_N11
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

-- Location: IOIBUF_X32_Y0_N22
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X31_Y12_N6
\V2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V2|Selector0~0_combout\ = (!\V2|EA.S5~q\ & ((\V2|EA.S0~q\) # (\iniciar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V2|EA.S5~q\,
	datac => \V2|EA.S0~q\,
	datad => \iniciar~input_o\,
	combout => \V2|Selector0~0_combout\);

-- Location: FF_X31_Y12_N7
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

-- Location: LCCOMB_X31_Y12_N12
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

-- Location: FF_X31_Y12_N13
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

-- Location: FF_X23_Y20_N3
\V1|soma|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[0]~14_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(0));

-- Location: LCCOMB_X22_Y20_N0
\V1|SAD_reg|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[0]~feeder_combout\ = \V1|soma|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(0),
	combout => \V1|SAD_reg|Q[0]~feeder_combout\);

-- Location: FF_X22_Y20_N1
\V1|SAD_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(0));

-- Location: LCCOMB_X18_Y20_N18
\V1|absto1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~2_combout\ = (\V1|absto1|Add0~1\ & (\V1|sub1|saida[1]~2_combout\ $ ((!\V1|sub1|saida[7]~14_combout\)))) # (!\V1|absto1|Add0~1\ & ((\V1|sub1|saida[1]~2_combout\ $ (\V1|sub1|saida[7]~14_combout\)) # (GND)))
-- \V1|absto1|Add0~3\ = CARRY((\V1|sub1|saida[1]~2_combout\ $ (!\V1|sub1|saida[7]~14_combout\)) # (!\V1|absto1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub1|saida[1]~2_combout\,
	datab => \V1|sub1|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto1|Add0~1\,
	combout => \V1|absto1|Add0~2_combout\,
	cout => \V1|absto1|Add0~3\);

-- Location: LCCOMB_X19_Y19_N2
\V1|absto0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~2_combout\ = (\V1|absto0|Add0~1\ & (\V1|sub0|saida[1]~2_combout\ $ ((!\V1|sub0|saida[7]~14_combout\)))) # (!\V1|absto0|Add0~1\ & ((\V1|sub0|saida[1]~2_combout\ $ (\V1|sub0|saida[7]~14_combout\)) # (GND)))
-- \V1|absto0|Add0~3\ = CARRY((\V1|sub0|saida[1]~2_combout\ $ (!\V1|sub0|saida[7]~14_combout\)) # (!\V1|absto0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub0|saida[1]~2_combout\,
	datab => \V1|sub0|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto0|Add0~1\,
	combout => \V1|absto0|Add0~2_combout\,
	cout => \V1|absto0|Add0~3\);

-- Location: LCCOMB_X19_Y20_N12
\V1|som1|sum[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[1]~2_combout\ = (\V1|absto1|Add0~2_combout\ & ((\V1|absto0|Add0~2_combout\ & (\V1|som1|sum[0]~1\ & VCC)) # (!\V1|absto0|Add0~2_combout\ & (!\V1|som1|sum[0]~1\)))) # (!\V1|absto1|Add0~2_combout\ & ((\V1|absto0|Add0~2_combout\ & 
-- (!\V1|som1|sum[0]~1\)) # (!\V1|absto0|Add0~2_combout\ & ((\V1|som1|sum[0]~1\) # (GND)))))
-- \V1|som1|sum[1]~3\ = CARRY((\V1|absto1|Add0~2_combout\ & (!\V1|absto0|Add0~2_combout\ & !\V1|som1|sum[0]~1\)) # (!\V1|absto1|Add0~2_combout\ & ((!\V1|som1|sum[0]~1\) # (!\V1|absto0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto1|Add0~2_combout\,
	datab => \V1|absto0|Add0~2_combout\,
	datad => VCC,
	cin => \V1|som1|sum[0]~1\,
	combout => \V1|som1|sum[1]~2_combout\,
	cout => \V1|som1|sum[1]~3\);

-- Location: LCCOMB_X26_Y21_N18
\V1|absto2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~2_combout\ = (\V1|absto2|Add0~1\ & (\V1|sub2|saida[7]~14_combout\ $ ((!\V1|sub2|saida[1]~2_combout\)))) # (!\V1|absto2|Add0~1\ & ((\V1|sub2|saida[7]~14_combout\ $ (\V1|sub2|saida[1]~2_combout\)) # (GND)))
-- \V1|absto2|Add0~3\ = CARRY((\V1|sub2|saida[7]~14_combout\ $ (!\V1|sub2|saida[1]~2_combout\)) # (!\V1|absto2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub2|saida[7]~14_combout\,
	datab => \V1|sub2|saida[1]~2_combout\,
	datad => VCC,
	cin => \V1|absto2|Add0~1\,
	combout => \V1|absto2|Add0~2_combout\,
	cout => \V1|absto2|Add0~3\);

-- Location: LCCOMB_X28_Y20_N18
\V1|absto3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~2_combout\ = (\V1|absto3|Add0~1\ & (\V1|sub3|saida[1]~2_combout\ $ ((!\V1|sub3|saida[7]~14_combout\)))) # (!\V1|absto3|Add0~1\ & ((\V1|sub3|saida[1]~2_combout\ $ (\V1|sub3|saida[7]~14_combout\)) # (GND)))
-- \V1|absto3|Add0~3\ = CARRY((\V1|sub3|saida[1]~2_combout\ $ (!\V1|sub3|saida[7]~14_combout\)) # (!\V1|absto3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub3|saida[1]~2_combout\,
	datab => \V1|sub3|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto3|Add0~1\,
	combout => \V1|absto3|Add0~2_combout\,
	cout => \V1|absto3|Add0~3\);

-- Location: LCCOMB_X25_Y20_N2
\V1|som2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~2_combout\ = (\V1|absto2|Add0~2_combout\ & ((\V1|absto3|Add0~2_combout\ & (\V1|som2|Add0~1\ & VCC)) # (!\V1|absto3|Add0~2_combout\ & (!\V1|som2|Add0~1\)))) # (!\V1|absto2|Add0~2_combout\ & ((\V1|absto3|Add0~2_combout\ & (!\V1|som2|Add0~1\)) 
-- # (!\V1|absto3|Add0~2_combout\ & ((\V1|som2|Add0~1\) # (GND)))))
-- \V1|som2|Add0~3\ = CARRY((\V1|absto2|Add0~2_combout\ & (!\V1|absto3|Add0~2_combout\ & !\V1|som2|Add0~1\)) # (!\V1|absto2|Add0~2_combout\ & ((!\V1|som2|Add0~1\) # (!\V1|absto3|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto2|Add0~2_combout\,
	datab => \V1|absto3|Add0~2_combout\,
	datad => VCC,
	cin => \V1|som2|Add0~1\,
	combout => \V1|som2|Add0~2_combout\,
	cout => \V1|som2|Add0~3\);

-- Location: LCCOMB_X24_Y20_N6
\V1|som3|sum[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[1]~2_combout\ = (\V1|som1|sum[1]~2_combout\ & ((\V1|som2|Add0~2_combout\ & (\V1|som3|sum[0]~1\ & VCC)) # (!\V1|som2|Add0~2_combout\ & (!\V1|som3|sum[0]~1\)))) # (!\V1|som1|sum[1]~2_combout\ & ((\V1|som2|Add0~2_combout\ & 
-- (!\V1|som3|sum[0]~1\)) # (!\V1|som2|Add0~2_combout\ & ((\V1|som3|sum[0]~1\) # (GND)))))
-- \V1|som3|sum[1]~3\ = CARRY((\V1|som1|sum[1]~2_combout\ & (!\V1|som2|Add0~2_combout\ & !\V1|som3|sum[0]~1\)) # (!\V1|som1|sum[1]~2_combout\ & ((!\V1|som3|sum[0]~1\) # (!\V1|som2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som1|sum[1]~2_combout\,
	datab => \V1|som2|Add0~2_combout\,
	datad => VCC,
	cin => \V1|som3|sum[0]~1\,
	combout => \V1|som3|sum[1]~2_combout\,
	cout => \V1|som3|sum[1]~3\);

-- Location: LCCOMB_X23_Y20_N4
\V1|soma|Q[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[1]~16_combout\ = (\V1|som3|sum[1]~2_combout\ & ((\V1|soma|Q\(1) & (\V1|soma|Q[0]~15\ & VCC)) # (!\V1|soma|Q\(1) & (!\V1|soma|Q[0]~15\)))) # (!\V1|som3|sum[1]~2_combout\ & ((\V1|soma|Q\(1) & (!\V1|soma|Q[0]~15\)) # (!\V1|soma|Q\(1) & 
-- ((\V1|soma|Q[0]~15\) # (GND)))))
-- \V1|soma|Q[1]~17\ = CARRY((\V1|som3|sum[1]~2_combout\ & (!\V1|soma|Q\(1) & !\V1|soma|Q[0]~15\)) # (!\V1|som3|sum[1]~2_combout\ & ((!\V1|soma|Q[0]~15\) # (!\V1|soma|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som3|sum[1]~2_combout\,
	datab => \V1|soma|Q\(1),
	datad => VCC,
	cin => \V1|soma|Q[0]~15\,
	combout => \V1|soma|Q[1]~16_combout\,
	cout => \V1|soma|Q[1]~17\);

-- Location: FF_X23_Y20_N5
\V1|soma|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[1]~16_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(1));

-- Location: LCCOMB_X22_Y20_N22
\V1|SAD_reg|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[1]~feeder_combout\ = \V1|soma|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(1),
	combout => \V1|SAD_reg|Q[1]~feeder_combout\);

-- Location: FF_X22_Y20_N23
\V1|SAD_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(1));

-- Location: LCCOMB_X18_Y20_N20
\V1|absto1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~4_combout\ = (\V1|absto1|Add0~3\ & ((\V1|sub1|saida[2]~4_combout\ $ (\V1|sub1|saida[7]~14_combout\)))) # (!\V1|absto1|Add0~3\ & (\V1|sub1|saida[2]~4_combout\ $ (\V1|sub1|saida[7]~14_combout\ $ (VCC))))
-- \V1|absto1|Add0~5\ = CARRY((!\V1|absto1|Add0~3\ & (\V1|sub1|saida[2]~4_combout\ $ (\V1|sub1|saida[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub1|saida[2]~4_combout\,
	datab => \V1|sub1|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto1|Add0~3\,
	combout => \V1|absto1|Add0~4_combout\,
	cout => \V1|absto1|Add0~5\);

-- Location: LCCOMB_X19_Y19_N4
\V1|absto0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~4_combout\ = (\V1|absto0|Add0~3\ & ((\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[2]~4_combout\)))) # (!\V1|absto0|Add0~3\ & (\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[2]~4_combout\ $ (VCC))))
-- \V1|absto0|Add0~5\ = CARRY((!\V1|absto0|Add0~3\ & (\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub0|saida[7]~14_combout\,
	datab => \V1|sub0|saida[2]~4_combout\,
	datad => VCC,
	cin => \V1|absto0|Add0~3\,
	combout => \V1|absto0|Add0~4_combout\,
	cout => \V1|absto0|Add0~5\);

-- Location: LCCOMB_X19_Y20_N14
\V1|som1|sum[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[2]~4_combout\ = ((\V1|absto1|Add0~4_combout\ $ (\V1|absto0|Add0~4_combout\ $ (!\V1|som1|sum[1]~3\)))) # (GND)
-- \V1|som1|sum[2]~5\ = CARRY((\V1|absto1|Add0~4_combout\ & ((\V1|absto0|Add0~4_combout\) # (!\V1|som1|sum[1]~3\))) # (!\V1|absto1|Add0~4_combout\ & (\V1|absto0|Add0~4_combout\ & !\V1|som1|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto1|Add0~4_combout\,
	datab => \V1|absto0|Add0~4_combout\,
	datad => VCC,
	cin => \V1|som1|sum[1]~3\,
	combout => \V1|som1|sum[2]~4_combout\,
	cout => \V1|som1|sum[2]~5\);

-- Location: LCCOMB_X28_Y20_N20
\V1|absto3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~4_combout\ = (\V1|absto3|Add0~3\ & ((\V1|sub3|saida[2]~4_combout\ $ (\V1|sub3|saida[7]~14_combout\)))) # (!\V1|absto3|Add0~3\ & (\V1|sub3|saida[2]~4_combout\ $ (\V1|sub3|saida[7]~14_combout\ $ (VCC))))
-- \V1|absto3|Add0~5\ = CARRY((!\V1|absto3|Add0~3\ & (\V1|sub3|saida[2]~4_combout\ $ (\V1|sub3|saida[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub3|saida[2]~4_combout\,
	datab => \V1|sub3|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto3|Add0~3\,
	combout => \V1|absto3|Add0~4_combout\,
	cout => \V1|absto3|Add0~5\);

-- Location: LCCOMB_X26_Y21_N20
\V1|absto2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~4_combout\ = (\V1|absto2|Add0~3\ & ((\V1|sub2|saida[2]~4_combout\ $ (\V1|sub2|saida[7]~14_combout\)))) # (!\V1|absto2|Add0~3\ & (\V1|sub2|saida[2]~4_combout\ $ (\V1|sub2|saida[7]~14_combout\ $ (VCC))))
-- \V1|absto2|Add0~5\ = CARRY((!\V1|absto2|Add0~3\ & (\V1|sub2|saida[2]~4_combout\ $ (\V1|sub2|saida[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub2|saida[2]~4_combout\,
	datab => \V1|sub2|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto2|Add0~3\,
	combout => \V1|absto2|Add0~4_combout\,
	cout => \V1|absto2|Add0~5\);

-- Location: LCCOMB_X25_Y20_N4
\V1|som2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~4_combout\ = ((\V1|absto3|Add0~4_combout\ $ (\V1|absto2|Add0~4_combout\ $ (!\V1|som2|Add0~3\)))) # (GND)
-- \V1|som2|Add0~5\ = CARRY((\V1|absto3|Add0~4_combout\ & ((\V1|absto2|Add0~4_combout\) # (!\V1|som2|Add0~3\))) # (!\V1|absto3|Add0~4_combout\ & (\V1|absto2|Add0~4_combout\ & !\V1|som2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto3|Add0~4_combout\,
	datab => \V1|absto2|Add0~4_combout\,
	datad => VCC,
	cin => \V1|som2|Add0~3\,
	combout => \V1|som2|Add0~4_combout\,
	cout => \V1|som2|Add0~5\);

-- Location: LCCOMB_X24_Y20_N8
\V1|som3|sum[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[2]~4_combout\ = ((\V1|som1|sum[2]~4_combout\ $ (\V1|som2|Add0~4_combout\ $ (!\V1|som3|sum[1]~3\)))) # (GND)
-- \V1|som3|sum[2]~5\ = CARRY((\V1|som1|sum[2]~4_combout\ & ((\V1|som2|Add0~4_combout\) # (!\V1|som3|sum[1]~3\))) # (!\V1|som1|sum[2]~4_combout\ & (\V1|som2|Add0~4_combout\ & !\V1|som3|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som1|sum[2]~4_combout\,
	datab => \V1|som2|Add0~4_combout\,
	datad => VCC,
	cin => \V1|som3|sum[1]~3\,
	combout => \V1|som3|sum[2]~4_combout\,
	cout => \V1|som3|sum[2]~5\);

-- Location: LCCOMB_X23_Y20_N6
\V1|soma|Q[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[2]~18_combout\ = ((\V1|soma|Q\(2) $ (\V1|som3|sum[2]~4_combout\ $ (!\V1|soma|Q[1]~17\)))) # (GND)
-- \V1|soma|Q[2]~19\ = CARRY((\V1|soma|Q\(2) & ((\V1|som3|sum[2]~4_combout\) # (!\V1|soma|Q[1]~17\))) # (!\V1|soma|Q\(2) & (\V1|som3|sum[2]~4_combout\ & !\V1|soma|Q[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(2),
	datab => \V1|som3|sum[2]~4_combout\,
	datad => VCC,
	cin => \V1|soma|Q[1]~17\,
	combout => \V1|soma|Q[2]~18_combout\,
	cout => \V1|soma|Q[2]~19\);

-- Location: FF_X23_Y20_N7
\V1|soma|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[2]~18_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(2));

-- Location: LCCOMB_X22_Y20_N12
\V1|SAD_reg|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[2]~feeder_combout\ = \V1|soma|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(2),
	combout => \V1|SAD_reg|Q[2]~feeder_combout\);

-- Location: FF_X22_Y20_N13
\V1|SAD_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(2));

-- Location: LCCOMB_X26_Y21_N22
\V1|absto2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~6_combout\ = (\V1|absto2|Add0~5\ & (\V1|sub2|saida[3]~6_combout\ $ ((!\V1|sub2|saida[7]~14_combout\)))) # (!\V1|absto2|Add0~5\ & ((\V1|sub2|saida[3]~6_combout\ $ (\V1|sub2|saida[7]~14_combout\)) # (GND)))
-- \V1|absto2|Add0~7\ = CARRY((\V1|sub2|saida[3]~6_combout\ $ (!\V1|sub2|saida[7]~14_combout\)) # (!\V1|absto2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub2|saida[3]~6_combout\,
	datab => \V1|sub2|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto2|Add0~5\,
	combout => \V1|absto2|Add0~6_combout\,
	cout => \V1|absto2|Add0~7\);

-- Location: LCCOMB_X28_Y20_N22
\V1|absto3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~6_combout\ = (\V1|absto3|Add0~5\ & (\V1|sub3|saida[3]~6_combout\ $ ((!\V1|sub3|saida[7]~14_combout\)))) # (!\V1|absto3|Add0~5\ & ((\V1|sub3|saida[3]~6_combout\ $ (\V1|sub3|saida[7]~14_combout\)) # (GND)))
-- \V1|absto3|Add0~7\ = CARRY((\V1|sub3|saida[3]~6_combout\ $ (!\V1|sub3|saida[7]~14_combout\)) # (!\V1|absto3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub3|saida[3]~6_combout\,
	datab => \V1|sub3|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto3|Add0~5\,
	combout => \V1|absto3|Add0~6_combout\,
	cout => \V1|absto3|Add0~7\);

-- Location: LCCOMB_X25_Y20_N6
\V1|som2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~6_combout\ = (\V1|absto2|Add0~6_combout\ & ((\V1|absto3|Add0~6_combout\ & (\V1|som2|Add0~5\ & VCC)) # (!\V1|absto3|Add0~6_combout\ & (!\V1|som2|Add0~5\)))) # (!\V1|absto2|Add0~6_combout\ & ((\V1|absto3|Add0~6_combout\ & (!\V1|som2|Add0~5\)) 
-- # (!\V1|absto3|Add0~6_combout\ & ((\V1|som2|Add0~5\) # (GND)))))
-- \V1|som2|Add0~7\ = CARRY((\V1|absto2|Add0~6_combout\ & (!\V1|absto3|Add0~6_combout\ & !\V1|som2|Add0~5\)) # (!\V1|absto2|Add0~6_combout\ & ((!\V1|som2|Add0~5\) # (!\V1|absto3|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto2|Add0~6_combout\,
	datab => \V1|absto3|Add0~6_combout\,
	datad => VCC,
	cin => \V1|som2|Add0~5\,
	combout => \V1|som2|Add0~6_combout\,
	cout => \V1|som2|Add0~7\);

-- Location: LCCOMB_X19_Y19_N6
\V1|absto0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~6_combout\ = (\V1|absto0|Add0~5\ & (\V1|sub0|saida[7]~14_combout\ $ ((!\V1|sub0|saida[3]~6_combout\)))) # (!\V1|absto0|Add0~5\ & ((\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[3]~6_combout\)) # (GND)))
-- \V1|absto0|Add0~7\ = CARRY((\V1|sub0|saida[7]~14_combout\ $ (!\V1|sub0|saida[3]~6_combout\)) # (!\V1|absto0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub0|saida[7]~14_combout\,
	datab => \V1|sub0|saida[3]~6_combout\,
	datad => VCC,
	cin => \V1|absto0|Add0~5\,
	combout => \V1|absto0|Add0~6_combout\,
	cout => \V1|absto0|Add0~7\);

-- Location: LCCOMB_X18_Y20_N22
\V1|absto1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~6_combout\ = (\V1|absto1|Add0~5\ & (\V1|sub1|saida[3]~6_combout\ $ ((!\V1|sub1|saida[7]~14_combout\)))) # (!\V1|absto1|Add0~5\ & ((\V1|sub1|saida[3]~6_combout\ $ (\V1|sub1|saida[7]~14_combout\)) # (GND)))
-- \V1|absto1|Add0~7\ = CARRY((\V1|sub1|saida[3]~6_combout\ $ (!\V1|sub1|saida[7]~14_combout\)) # (!\V1|absto1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub1|saida[3]~6_combout\,
	datab => \V1|sub1|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto1|Add0~5\,
	combout => \V1|absto1|Add0~6_combout\,
	cout => \V1|absto1|Add0~7\);

-- Location: LCCOMB_X19_Y20_N16
\V1|som1|sum[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[3]~6_combout\ = (\V1|absto0|Add0~6_combout\ & ((\V1|absto1|Add0~6_combout\ & (\V1|som1|sum[2]~5\ & VCC)) # (!\V1|absto1|Add0~6_combout\ & (!\V1|som1|sum[2]~5\)))) # (!\V1|absto0|Add0~6_combout\ & ((\V1|absto1|Add0~6_combout\ & 
-- (!\V1|som1|sum[2]~5\)) # (!\V1|absto1|Add0~6_combout\ & ((\V1|som1|sum[2]~5\) # (GND)))))
-- \V1|som1|sum[3]~7\ = CARRY((\V1|absto0|Add0~6_combout\ & (!\V1|absto1|Add0~6_combout\ & !\V1|som1|sum[2]~5\)) # (!\V1|absto0|Add0~6_combout\ & ((!\V1|som1|sum[2]~5\) # (!\V1|absto1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto0|Add0~6_combout\,
	datab => \V1|absto1|Add0~6_combout\,
	datad => VCC,
	cin => \V1|som1|sum[2]~5\,
	combout => \V1|som1|sum[3]~6_combout\,
	cout => \V1|som1|sum[3]~7\);

-- Location: LCCOMB_X24_Y20_N10
\V1|som3|sum[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[3]~6_combout\ = (\V1|som2|Add0~6_combout\ & ((\V1|som1|sum[3]~6_combout\ & (\V1|som3|sum[2]~5\ & VCC)) # (!\V1|som1|sum[3]~6_combout\ & (!\V1|som3|sum[2]~5\)))) # (!\V1|som2|Add0~6_combout\ & ((\V1|som1|sum[3]~6_combout\ & 
-- (!\V1|som3|sum[2]~5\)) # (!\V1|som1|sum[3]~6_combout\ & ((\V1|som3|sum[2]~5\) # (GND)))))
-- \V1|som3|sum[3]~7\ = CARRY((\V1|som2|Add0~6_combout\ & (!\V1|som1|sum[3]~6_combout\ & !\V1|som3|sum[2]~5\)) # (!\V1|som2|Add0~6_combout\ & ((!\V1|som3|sum[2]~5\) # (!\V1|som1|sum[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som2|Add0~6_combout\,
	datab => \V1|som1|sum[3]~6_combout\,
	datad => VCC,
	cin => \V1|som3|sum[2]~5\,
	combout => \V1|som3|sum[3]~6_combout\,
	cout => \V1|som3|sum[3]~7\);

-- Location: LCCOMB_X23_Y20_N8
\V1|soma|Q[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[3]~20_combout\ = (\V1|soma|Q\(3) & ((\V1|som3|sum[3]~6_combout\ & (\V1|soma|Q[2]~19\ & VCC)) # (!\V1|som3|sum[3]~6_combout\ & (!\V1|soma|Q[2]~19\)))) # (!\V1|soma|Q\(3) & ((\V1|som3|sum[3]~6_combout\ & (!\V1|soma|Q[2]~19\)) # 
-- (!\V1|som3|sum[3]~6_combout\ & ((\V1|soma|Q[2]~19\) # (GND)))))
-- \V1|soma|Q[3]~21\ = CARRY((\V1|soma|Q\(3) & (!\V1|som3|sum[3]~6_combout\ & !\V1|soma|Q[2]~19\)) # (!\V1|soma|Q\(3) & ((!\V1|soma|Q[2]~19\) # (!\V1|som3|sum[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(3),
	datab => \V1|som3|sum[3]~6_combout\,
	datad => VCC,
	cin => \V1|soma|Q[2]~19\,
	combout => \V1|soma|Q[3]~20_combout\,
	cout => \V1|soma|Q[3]~21\);

-- Location: FF_X23_Y20_N9
\V1|soma|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[3]~20_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(3));

-- Location: FF_X22_Y20_N7
\V1|SAD_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \V1|soma|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(3));

-- Location: LCCOMB_X19_Y19_N8
\V1|absto0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~8_combout\ = (\V1|absto0|Add0~7\ & ((\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[4]~8_combout\)))) # (!\V1|absto0|Add0~7\ & (\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[4]~8_combout\ $ (VCC))))
-- \V1|absto0|Add0~9\ = CARRY((!\V1|absto0|Add0~7\ & (\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub0|saida[7]~14_combout\,
	datab => \V1|sub0|saida[4]~8_combout\,
	datad => VCC,
	cin => \V1|absto0|Add0~7\,
	combout => \V1|absto0|Add0~8_combout\,
	cout => \V1|absto0|Add0~9\);

-- Location: LCCOMB_X18_Y20_N24
\V1|absto1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~8_combout\ = (\V1|absto1|Add0~7\ & ((\V1|sub1|saida[4]~8_combout\ $ (\V1|sub1|saida[7]~14_combout\)))) # (!\V1|absto1|Add0~7\ & (\V1|sub1|saida[4]~8_combout\ $ (\V1|sub1|saida[7]~14_combout\ $ (VCC))))
-- \V1|absto1|Add0~9\ = CARRY((!\V1|absto1|Add0~7\ & (\V1|sub1|saida[4]~8_combout\ $ (\V1|sub1|saida[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub1|saida[4]~8_combout\,
	datab => \V1|sub1|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto1|Add0~7\,
	combout => \V1|absto1|Add0~8_combout\,
	cout => \V1|absto1|Add0~9\);

-- Location: LCCOMB_X19_Y20_N18
\V1|som1|sum[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[4]~8_combout\ = ((\V1|absto0|Add0~8_combout\ $ (\V1|absto1|Add0~8_combout\ $ (!\V1|som1|sum[3]~7\)))) # (GND)
-- \V1|som1|sum[4]~9\ = CARRY((\V1|absto0|Add0~8_combout\ & ((\V1|absto1|Add0~8_combout\) # (!\V1|som1|sum[3]~7\))) # (!\V1|absto0|Add0~8_combout\ & (\V1|absto1|Add0~8_combout\ & !\V1|som1|sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto0|Add0~8_combout\,
	datab => \V1|absto1|Add0~8_combout\,
	datad => VCC,
	cin => \V1|som1|sum[3]~7\,
	combout => \V1|som1|sum[4]~8_combout\,
	cout => \V1|som1|sum[4]~9\);

-- Location: LCCOMB_X28_Y20_N24
\V1|absto3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~8_combout\ = (\V1|absto3|Add0~7\ & ((\V1|sub3|saida[4]~8_combout\ $ (\V1|sub3|saida[7]~14_combout\)))) # (!\V1|absto3|Add0~7\ & (\V1|sub3|saida[4]~8_combout\ $ (\V1|sub3|saida[7]~14_combout\ $ (VCC))))
-- \V1|absto3|Add0~9\ = CARRY((!\V1|absto3|Add0~7\ & (\V1|sub3|saida[4]~8_combout\ $ (\V1|sub3|saida[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub3|saida[4]~8_combout\,
	datab => \V1|sub3|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto3|Add0~7\,
	combout => \V1|absto3|Add0~8_combout\,
	cout => \V1|absto3|Add0~9\);

-- Location: LCCOMB_X26_Y21_N24
\V1|absto2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~8_combout\ = (\V1|absto2|Add0~7\ & ((\V1|sub2|saida[7]~14_combout\ $ (\V1|sub2|saida[4]~8_combout\)))) # (!\V1|absto2|Add0~7\ & (\V1|sub2|saida[7]~14_combout\ $ (\V1|sub2|saida[4]~8_combout\ $ (VCC))))
-- \V1|absto2|Add0~9\ = CARRY((!\V1|absto2|Add0~7\ & (\V1|sub2|saida[7]~14_combout\ $ (\V1|sub2|saida[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub2|saida[7]~14_combout\,
	datab => \V1|sub2|saida[4]~8_combout\,
	datad => VCC,
	cin => \V1|absto2|Add0~7\,
	combout => \V1|absto2|Add0~8_combout\,
	cout => \V1|absto2|Add0~9\);

-- Location: LCCOMB_X25_Y20_N8
\V1|som2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~8_combout\ = ((\V1|absto3|Add0~8_combout\ $ (\V1|absto2|Add0~8_combout\ $ (!\V1|som2|Add0~7\)))) # (GND)
-- \V1|som2|Add0~9\ = CARRY((\V1|absto3|Add0~8_combout\ & ((\V1|absto2|Add0~8_combout\) # (!\V1|som2|Add0~7\))) # (!\V1|absto3|Add0~8_combout\ & (\V1|absto2|Add0~8_combout\ & !\V1|som2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto3|Add0~8_combout\,
	datab => \V1|absto2|Add0~8_combout\,
	datad => VCC,
	cin => \V1|som2|Add0~7\,
	combout => \V1|som2|Add0~8_combout\,
	cout => \V1|som2|Add0~9\);

-- Location: LCCOMB_X24_Y20_N12
\V1|som3|sum[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[4]~8_combout\ = ((\V1|som1|sum[4]~8_combout\ $ (\V1|som2|Add0~8_combout\ $ (!\V1|som3|sum[3]~7\)))) # (GND)
-- \V1|som3|sum[4]~9\ = CARRY((\V1|som1|sum[4]~8_combout\ & ((\V1|som2|Add0~8_combout\) # (!\V1|som3|sum[3]~7\))) # (!\V1|som1|sum[4]~8_combout\ & (\V1|som2|Add0~8_combout\ & !\V1|som3|sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som1|sum[4]~8_combout\,
	datab => \V1|som2|Add0~8_combout\,
	datad => VCC,
	cin => \V1|som3|sum[3]~7\,
	combout => \V1|som3|sum[4]~8_combout\,
	cout => \V1|som3|sum[4]~9\);

-- Location: LCCOMB_X23_Y20_N10
\V1|soma|Q[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[4]~22_combout\ = ((\V1|soma|Q\(4) $ (\V1|som3|sum[4]~8_combout\ $ (!\V1|soma|Q[3]~21\)))) # (GND)
-- \V1|soma|Q[4]~23\ = CARRY((\V1|soma|Q\(4) & ((\V1|som3|sum[4]~8_combout\) # (!\V1|soma|Q[3]~21\))) # (!\V1|soma|Q\(4) & (\V1|som3|sum[4]~8_combout\ & !\V1|soma|Q[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(4),
	datab => \V1|som3|sum[4]~8_combout\,
	datad => VCC,
	cin => \V1|soma|Q[3]~21\,
	combout => \V1|soma|Q[4]~22_combout\,
	cout => \V1|soma|Q[4]~23\);

-- Location: FF_X23_Y20_N11
\V1|soma|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[4]~22_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(4));

-- Location: FF_X22_Y20_N21
\V1|SAD_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \V1|soma|Q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(4));

-- Location: LCCOMB_X28_Y20_N26
\V1|absto3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~10_combout\ = (\V1|absto3|Add0~9\ & (\V1|sub3|saida[5]~10_combout\ $ ((!\V1|sub3|saida[7]~14_combout\)))) # (!\V1|absto3|Add0~9\ & ((\V1|sub3|saida[5]~10_combout\ $ (\V1|sub3|saida[7]~14_combout\)) # (GND)))
-- \V1|absto3|Add0~11\ = CARRY((\V1|sub3|saida[5]~10_combout\ $ (!\V1|sub3|saida[7]~14_combout\)) # (!\V1|absto3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub3|saida[5]~10_combout\,
	datab => \V1|sub3|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto3|Add0~9\,
	combout => \V1|absto3|Add0~10_combout\,
	cout => \V1|absto3|Add0~11\);

-- Location: LCCOMB_X26_Y21_N26
\V1|absto2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~10_combout\ = (\V1|absto2|Add0~9\ & (\V1|sub2|saida[5]~10_combout\ $ ((!\V1|sub2|saida[7]~14_combout\)))) # (!\V1|absto2|Add0~9\ & ((\V1|sub2|saida[5]~10_combout\ $ (\V1|sub2|saida[7]~14_combout\)) # (GND)))
-- \V1|absto2|Add0~11\ = CARRY((\V1|sub2|saida[5]~10_combout\ $ (!\V1|sub2|saida[7]~14_combout\)) # (!\V1|absto2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub2|saida[5]~10_combout\,
	datab => \V1|sub2|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto2|Add0~9\,
	combout => \V1|absto2|Add0~10_combout\,
	cout => \V1|absto2|Add0~11\);

-- Location: LCCOMB_X25_Y20_N10
\V1|som2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~10_combout\ = (\V1|absto3|Add0~10_combout\ & ((\V1|absto2|Add0~10_combout\ & (\V1|som2|Add0~9\ & VCC)) # (!\V1|absto2|Add0~10_combout\ & (!\V1|som2|Add0~9\)))) # (!\V1|absto3|Add0~10_combout\ & ((\V1|absto2|Add0~10_combout\ & 
-- (!\V1|som2|Add0~9\)) # (!\V1|absto2|Add0~10_combout\ & ((\V1|som2|Add0~9\) # (GND)))))
-- \V1|som2|Add0~11\ = CARRY((\V1|absto3|Add0~10_combout\ & (!\V1|absto2|Add0~10_combout\ & !\V1|som2|Add0~9\)) # (!\V1|absto3|Add0~10_combout\ & ((!\V1|som2|Add0~9\) # (!\V1|absto2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto3|Add0~10_combout\,
	datab => \V1|absto2|Add0~10_combout\,
	datad => VCC,
	cin => \V1|som2|Add0~9\,
	combout => \V1|som2|Add0~10_combout\,
	cout => \V1|som2|Add0~11\);

-- Location: LCCOMB_X18_Y20_N26
\V1|absto1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~10_combout\ = (\V1|absto1|Add0~9\ & (\V1|sub1|saida[5]~10_combout\ $ ((!\V1|sub1|saida[7]~14_combout\)))) # (!\V1|absto1|Add0~9\ & ((\V1|sub1|saida[5]~10_combout\ $ (\V1|sub1|saida[7]~14_combout\)) # (GND)))
-- \V1|absto1|Add0~11\ = CARRY((\V1|sub1|saida[5]~10_combout\ $ (!\V1|sub1|saida[7]~14_combout\)) # (!\V1|absto1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub1|saida[5]~10_combout\,
	datab => \V1|sub1|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto1|Add0~9\,
	combout => \V1|absto1|Add0~10_combout\,
	cout => \V1|absto1|Add0~11\);

-- Location: LCCOMB_X19_Y19_N10
\V1|absto0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~10_combout\ = (\V1|absto0|Add0~9\ & (\V1|sub0|saida[5]~10_combout\ $ ((!\V1|sub0|saida[7]~14_combout\)))) # (!\V1|absto0|Add0~9\ & ((\V1|sub0|saida[5]~10_combout\ $ (\V1|sub0|saida[7]~14_combout\)) # (GND)))
-- \V1|absto0|Add0~11\ = CARRY((\V1|sub0|saida[5]~10_combout\ $ (!\V1|sub0|saida[7]~14_combout\)) # (!\V1|absto0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub0|saida[5]~10_combout\,
	datab => \V1|sub0|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto0|Add0~9\,
	combout => \V1|absto0|Add0~10_combout\,
	cout => \V1|absto0|Add0~11\);

-- Location: LCCOMB_X19_Y20_N20
\V1|som1|sum[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[5]~10_combout\ = (\V1|absto1|Add0~10_combout\ & ((\V1|absto0|Add0~10_combout\ & (\V1|som1|sum[4]~9\ & VCC)) # (!\V1|absto0|Add0~10_combout\ & (!\V1|som1|sum[4]~9\)))) # (!\V1|absto1|Add0~10_combout\ & ((\V1|absto0|Add0~10_combout\ & 
-- (!\V1|som1|sum[4]~9\)) # (!\V1|absto0|Add0~10_combout\ & ((\V1|som1|sum[4]~9\) # (GND)))))
-- \V1|som1|sum[5]~11\ = CARRY((\V1|absto1|Add0~10_combout\ & (!\V1|absto0|Add0~10_combout\ & !\V1|som1|sum[4]~9\)) # (!\V1|absto1|Add0~10_combout\ & ((!\V1|som1|sum[4]~9\) # (!\V1|absto0|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto1|Add0~10_combout\,
	datab => \V1|absto0|Add0~10_combout\,
	datad => VCC,
	cin => \V1|som1|sum[4]~9\,
	combout => \V1|som1|sum[5]~10_combout\,
	cout => \V1|som1|sum[5]~11\);

-- Location: LCCOMB_X24_Y20_N14
\V1|som3|sum[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[5]~10_combout\ = (\V1|som2|Add0~10_combout\ & ((\V1|som1|sum[5]~10_combout\ & (\V1|som3|sum[4]~9\ & VCC)) # (!\V1|som1|sum[5]~10_combout\ & (!\V1|som3|sum[4]~9\)))) # (!\V1|som2|Add0~10_combout\ & ((\V1|som1|sum[5]~10_combout\ & 
-- (!\V1|som3|sum[4]~9\)) # (!\V1|som1|sum[5]~10_combout\ & ((\V1|som3|sum[4]~9\) # (GND)))))
-- \V1|som3|sum[5]~11\ = CARRY((\V1|som2|Add0~10_combout\ & (!\V1|som1|sum[5]~10_combout\ & !\V1|som3|sum[4]~9\)) # (!\V1|som2|Add0~10_combout\ & ((!\V1|som3|sum[4]~9\) # (!\V1|som1|sum[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som2|Add0~10_combout\,
	datab => \V1|som1|sum[5]~10_combout\,
	datad => VCC,
	cin => \V1|som3|sum[4]~9\,
	combout => \V1|som3|sum[5]~10_combout\,
	cout => \V1|som3|sum[5]~11\);

-- Location: LCCOMB_X23_Y20_N12
\V1|soma|Q[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[5]~24_combout\ = (\V1|soma|Q\(5) & ((\V1|som3|sum[5]~10_combout\ & (\V1|soma|Q[4]~23\ & VCC)) # (!\V1|som3|sum[5]~10_combout\ & (!\V1|soma|Q[4]~23\)))) # (!\V1|soma|Q\(5) & ((\V1|som3|sum[5]~10_combout\ & (!\V1|soma|Q[4]~23\)) # 
-- (!\V1|som3|sum[5]~10_combout\ & ((\V1|soma|Q[4]~23\) # (GND)))))
-- \V1|soma|Q[5]~25\ = CARRY((\V1|soma|Q\(5) & (!\V1|som3|sum[5]~10_combout\ & !\V1|soma|Q[4]~23\)) # (!\V1|soma|Q\(5) & ((!\V1|soma|Q[4]~23\) # (!\V1|som3|sum[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(5),
	datab => \V1|som3|sum[5]~10_combout\,
	datad => VCC,
	cin => \V1|soma|Q[4]~23\,
	combout => \V1|soma|Q[5]~24_combout\,
	cout => \V1|soma|Q[5]~25\);

-- Location: FF_X23_Y20_N13
\V1|soma|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[5]~24_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(5));

-- Location: LCCOMB_X24_Y20_N0
\V1|SAD_reg|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[5]~feeder_combout\ = \V1|soma|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(5),
	combout => \V1|SAD_reg|Q[5]~feeder_combout\);

-- Location: FF_X24_Y20_N1
\V1|SAD_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(5));

-- Location: LCCOMB_X26_Y21_N28
\V1|absto2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~12_combout\ = (\V1|absto2|Add0~11\ & ((\V1|sub2|saida[7]~14_combout\ $ (\V1|sub2|saida[6]~12_combout\)))) # (!\V1|absto2|Add0~11\ & (\V1|sub2|saida[7]~14_combout\ $ (\V1|sub2|saida[6]~12_combout\ $ (VCC))))
-- \V1|absto2|Add0~13\ = CARRY((!\V1|absto2|Add0~11\ & (\V1|sub2|saida[7]~14_combout\ $ (\V1|sub2|saida[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub2|saida[7]~14_combout\,
	datab => \V1|sub2|saida[6]~12_combout\,
	datad => VCC,
	cin => \V1|absto2|Add0~11\,
	combout => \V1|absto2|Add0~12_combout\,
	cout => \V1|absto2|Add0~13\);

-- Location: LCCOMB_X28_Y20_N28
\V1|absto3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~12_combout\ = (\V1|absto3|Add0~11\ & ((\V1|sub3|saida[6]~12_combout\ $ (\V1|sub3|saida[7]~14_combout\)))) # (!\V1|absto3|Add0~11\ & (\V1|sub3|saida[6]~12_combout\ $ (\V1|sub3|saida[7]~14_combout\ $ (VCC))))
-- \V1|absto3|Add0~13\ = CARRY((!\V1|absto3|Add0~11\ & (\V1|sub3|saida[6]~12_combout\ $ (\V1|sub3|saida[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub3|saida[6]~12_combout\,
	datab => \V1|sub3|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto3|Add0~11\,
	combout => \V1|absto3|Add0~12_combout\,
	cout => \V1|absto3|Add0~13\);

-- Location: LCCOMB_X25_Y20_N12
\V1|som2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~12_combout\ = ((\V1|absto2|Add0~12_combout\ $ (\V1|absto3|Add0~12_combout\ $ (!\V1|som2|Add0~11\)))) # (GND)
-- \V1|som2|Add0~13\ = CARRY((\V1|absto2|Add0~12_combout\ & ((\V1|absto3|Add0~12_combout\) # (!\V1|som2|Add0~11\))) # (!\V1|absto2|Add0~12_combout\ & (\V1|absto3|Add0~12_combout\ & !\V1|som2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto2|Add0~12_combout\,
	datab => \V1|absto3|Add0~12_combout\,
	datad => VCC,
	cin => \V1|som2|Add0~11\,
	combout => \V1|som2|Add0~12_combout\,
	cout => \V1|som2|Add0~13\);

-- Location: LCCOMB_X19_Y19_N12
\V1|absto0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~12_combout\ = (\V1|absto0|Add0~11\ & ((\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[6]~12_combout\)))) # (!\V1|absto0|Add0~11\ & (\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[6]~12_combout\ $ (VCC))))
-- \V1|absto0|Add0~13\ = CARRY((!\V1|absto0|Add0~11\ & (\V1|sub0|saida[7]~14_combout\ $ (\V1|sub0|saida[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub0|saida[7]~14_combout\,
	datab => \V1|sub0|saida[6]~12_combout\,
	datad => VCC,
	cin => \V1|absto0|Add0~11\,
	combout => \V1|absto0|Add0~12_combout\,
	cout => \V1|absto0|Add0~13\);

-- Location: LCCOMB_X18_Y20_N28
\V1|absto1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~12_combout\ = (\V1|absto1|Add0~11\ & ((\V1|sub1|saida[6]~12_combout\ $ (\V1|sub1|saida[7]~14_combout\)))) # (!\V1|absto1|Add0~11\ & (\V1|sub1|saida[6]~12_combout\ $ (\V1|sub1|saida[7]~14_combout\ $ (VCC))))
-- \V1|absto1|Add0~13\ = CARRY((!\V1|absto1|Add0~11\ & (\V1|sub1|saida[6]~12_combout\ $ (\V1|sub1|saida[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|sub1|saida[6]~12_combout\,
	datab => \V1|sub1|saida[7]~14_combout\,
	datad => VCC,
	cin => \V1|absto1|Add0~11\,
	combout => \V1|absto1|Add0~12_combout\,
	cout => \V1|absto1|Add0~13\);

-- Location: LCCOMB_X19_Y20_N22
\V1|som1|sum[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[6]~12_combout\ = ((\V1|absto0|Add0~12_combout\ $ (\V1|absto1|Add0~12_combout\ $ (!\V1|som1|sum[5]~11\)))) # (GND)
-- \V1|som1|sum[6]~13\ = CARRY((\V1|absto0|Add0~12_combout\ & ((\V1|absto1|Add0~12_combout\) # (!\V1|som1|sum[5]~11\))) # (!\V1|absto0|Add0~12_combout\ & (\V1|absto1|Add0~12_combout\ & !\V1|som1|sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto0|Add0~12_combout\,
	datab => \V1|absto1|Add0~12_combout\,
	datad => VCC,
	cin => \V1|som1|sum[5]~11\,
	combout => \V1|som1|sum[6]~12_combout\,
	cout => \V1|som1|sum[6]~13\);

-- Location: LCCOMB_X24_Y20_N16
\V1|som3|sum[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[6]~12_combout\ = ((\V1|som2|Add0~12_combout\ $ (\V1|som1|sum[6]~12_combout\ $ (!\V1|som3|sum[5]~11\)))) # (GND)
-- \V1|som3|sum[6]~13\ = CARRY((\V1|som2|Add0~12_combout\ & ((\V1|som1|sum[6]~12_combout\) # (!\V1|som3|sum[5]~11\))) # (!\V1|som2|Add0~12_combout\ & (\V1|som1|sum[6]~12_combout\ & !\V1|som3|sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som2|Add0~12_combout\,
	datab => \V1|som1|sum[6]~12_combout\,
	datad => VCC,
	cin => \V1|som3|sum[5]~11\,
	combout => \V1|som3|sum[6]~12_combout\,
	cout => \V1|som3|sum[6]~13\);

-- Location: LCCOMB_X23_Y20_N14
\V1|soma|Q[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[6]~26_combout\ = ((\V1|soma|Q\(6) $ (\V1|som3|sum[6]~12_combout\ $ (!\V1|soma|Q[5]~25\)))) # (GND)
-- \V1|soma|Q[6]~27\ = CARRY((\V1|soma|Q\(6) & ((\V1|som3|sum[6]~12_combout\) # (!\V1|soma|Q[5]~25\))) # (!\V1|soma|Q\(6) & (\V1|som3|sum[6]~12_combout\ & !\V1|soma|Q[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(6),
	datab => \V1|som3|sum[6]~12_combout\,
	datad => VCC,
	cin => \V1|soma|Q[5]~25\,
	combout => \V1|soma|Q[6]~26_combout\,
	cout => \V1|soma|Q[6]~27\);

-- Location: FF_X23_Y20_N15
\V1|soma|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[6]~26_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(6));

-- Location: FF_X22_Y20_N15
\V1|SAD_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \V1|soma|Q\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(6));

-- Location: LCCOMB_X19_Y19_N14
\V1|absto0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto0|Add0~14_combout\ = \V1|absto0|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|absto0|Add0~13\,
	combout => \V1|absto0|Add0~14_combout\);

-- Location: LCCOMB_X18_Y20_N30
\V1|absto1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto1|Add0~14_combout\ = \V1|absto1|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|absto1|Add0~13\,
	combout => \V1|absto1|Add0~14_combout\);

-- Location: LCCOMB_X19_Y20_N24
\V1|som1|sum[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[7]~14_combout\ = (\V1|absto0|Add0~14_combout\ & ((\V1|absto1|Add0~14_combout\ & (\V1|som1|sum[6]~13\ & VCC)) # (!\V1|absto1|Add0~14_combout\ & (!\V1|som1|sum[6]~13\)))) # (!\V1|absto0|Add0~14_combout\ & ((\V1|absto1|Add0~14_combout\ & 
-- (!\V1|som1|sum[6]~13\)) # (!\V1|absto1|Add0~14_combout\ & ((\V1|som1|sum[6]~13\) # (GND)))))
-- \V1|som1|sum[7]~15\ = CARRY((\V1|absto0|Add0~14_combout\ & (!\V1|absto1|Add0~14_combout\ & !\V1|som1|sum[6]~13\)) # (!\V1|absto0|Add0~14_combout\ & ((!\V1|som1|sum[6]~13\) # (!\V1|absto1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto0|Add0~14_combout\,
	datab => \V1|absto1|Add0~14_combout\,
	datad => VCC,
	cin => \V1|som1|sum[6]~13\,
	combout => \V1|som1|sum[7]~14_combout\,
	cout => \V1|som1|sum[7]~15\);

-- Location: LCCOMB_X26_Y21_N30
\V1|absto2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto2|Add0~14_combout\ = \V1|absto2|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|absto2|Add0~13\,
	combout => \V1|absto2|Add0~14_combout\);

-- Location: LCCOMB_X28_Y20_N30
\V1|absto3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|absto3|Add0~14_combout\ = \V1|absto3|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|absto3|Add0~13\,
	combout => \V1|absto3|Add0~14_combout\);

-- Location: LCCOMB_X25_Y20_N14
\V1|som2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~14_combout\ = (\V1|absto2|Add0~14_combout\ & ((\V1|absto3|Add0~14_combout\ & (\V1|som2|Add0~13\ & VCC)) # (!\V1|absto3|Add0~14_combout\ & (!\V1|som2|Add0~13\)))) # (!\V1|absto2|Add0~14_combout\ & ((\V1|absto3|Add0~14_combout\ & 
-- (!\V1|som2|Add0~13\)) # (!\V1|absto3|Add0~14_combout\ & ((\V1|som2|Add0~13\) # (GND)))))
-- \V1|som2|Add0~15\ = CARRY((\V1|absto2|Add0~14_combout\ & (!\V1|absto3|Add0~14_combout\ & !\V1|som2|Add0~13\)) # (!\V1|absto2|Add0~14_combout\ & ((!\V1|som2|Add0~13\) # (!\V1|absto3|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|absto2|Add0~14_combout\,
	datab => \V1|absto3|Add0~14_combout\,
	datad => VCC,
	cin => \V1|som2|Add0~13\,
	combout => \V1|som2|Add0~14_combout\,
	cout => \V1|som2|Add0~15\);

-- Location: LCCOMB_X24_Y20_N18
\V1|som3|sum[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[7]~14_combout\ = (\V1|som1|sum[7]~14_combout\ & ((\V1|som2|Add0~14_combout\ & (\V1|som3|sum[6]~13\ & VCC)) # (!\V1|som2|Add0~14_combout\ & (!\V1|som3|sum[6]~13\)))) # (!\V1|som1|sum[7]~14_combout\ & ((\V1|som2|Add0~14_combout\ & 
-- (!\V1|som3|sum[6]~13\)) # (!\V1|som2|Add0~14_combout\ & ((\V1|som3|sum[6]~13\) # (GND)))))
-- \V1|som3|sum[7]~15\ = CARRY((\V1|som1|sum[7]~14_combout\ & (!\V1|som2|Add0~14_combout\ & !\V1|som3|sum[6]~13\)) # (!\V1|som1|sum[7]~14_combout\ & ((!\V1|som3|sum[6]~13\) # (!\V1|som2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som1|sum[7]~14_combout\,
	datab => \V1|som2|Add0~14_combout\,
	datad => VCC,
	cin => \V1|som3|sum[6]~13\,
	combout => \V1|som3|sum[7]~14_combout\,
	cout => \V1|som3|sum[7]~15\);

-- Location: LCCOMB_X23_Y20_N16
\V1|soma|Q[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[7]~28_combout\ = (\V1|soma|Q\(7) & ((\V1|som3|sum[7]~14_combout\ & (\V1|soma|Q[6]~27\ & VCC)) # (!\V1|som3|sum[7]~14_combout\ & (!\V1|soma|Q[6]~27\)))) # (!\V1|soma|Q\(7) & ((\V1|som3|sum[7]~14_combout\ & (!\V1|soma|Q[6]~27\)) # 
-- (!\V1|som3|sum[7]~14_combout\ & ((\V1|soma|Q[6]~27\) # (GND)))))
-- \V1|soma|Q[7]~29\ = CARRY((\V1|soma|Q\(7) & (!\V1|som3|sum[7]~14_combout\ & !\V1|soma|Q[6]~27\)) # (!\V1|soma|Q\(7) & ((!\V1|soma|Q[6]~27\) # (!\V1|som3|sum[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(7),
	datab => \V1|som3|sum[7]~14_combout\,
	datad => VCC,
	cin => \V1|soma|Q[6]~27\,
	combout => \V1|soma|Q[7]~28_combout\,
	cout => \V1|soma|Q[7]~29\);

-- Location: FF_X23_Y20_N17
\V1|soma|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[7]~28_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(7));

-- Location: LCCOMB_X23_Y20_N0
\V1|SAD_reg|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[7]~feeder_combout\ = \V1|soma|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(7),
	combout => \V1|SAD_reg|Q[7]~feeder_combout\);

-- Location: FF_X23_Y20_N1
\V1|SAD_reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(7));

-- Location: LCCOMB_X25_Y20_N16
\V1|som2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som2|Add0~16_combout\ = !\V1|som2|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|som2|Add0~15\,
	combout => \V1|som2|Add0~16_combout\);

-- Location: LCCOMB_X19_Y20_N26
\V1|som1|sum[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som1|sum[8]~16_combout\ = !\V1|som1|sum[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|som1|sum[7]~15\,
	combout => \V1|som1|sum[8]~16_combout\);

-- Location: LCCOMB_X24_Y20_N20
\V1|som3|sum[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[8]~16_combout\ = ((\V1|som2|Add0~16_combout\ $ (\V1|som1|sum[8]~16_combout\ $ (!\V1|som3|sum[7]~15\)))) # (GND)
-- \V1|som3|sum[8]~17\ = CARRY((\V1|som2|Add0~16_combout\ & ((\V1|som1|sum[8]~16_combout\) # (!\V1|som3|sum[7]~15\))) # (!\V1|som2|Add0~16_combout\ & (\V1|som1|sum[8]~16_combout\ & !\V1|som3|sum[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som2|Add0~16_combout\,
	datab => \V1|som1|sum[8]~16_combout\,
	datad => VCC,
	cin => \V1|som3|sum[7]~15\,
	combout => \V1|som3|sum[8]~16_combout\,
	cout => \V1|som3|sum[8]~17\);

-- Location: LCCOMB_X23_Y20_N18
\V1|soma|Q[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[8]~30_combout\ = ((\V1|som3|sum[8]~16_combout\ $ (\V1|soma|Q\(8) $ (!\V1|soma|Q[7]~29\)))) # (GND)
-- \V1|soma|Q[8]~31\ = CARRY((\V1|som3|sum[8]~16_combout\ & ((\V1|soma|Q\(8)) # (!\V1|soma|Q[7]~29\))) # (!\V1|som3|sum[8]~16_combout\ & (\V1|soma|Q\(8) & !\V1|soma|Q[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|som3|sum[8]~16_combout\,
	datab => \V1|soma|Q\(8),
	datad => VCC,
	cin => \V1|soma|Q[7]~29\,
	combout => \V1|soma|Q[8]~30_combout\,
	cout => \V1|soma|Q[8]~31\);

-- Location: FF_X23_Y20_N19
\V1|soma|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[8]~30_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(8));

-- Location: LCCOMB_X23_Y20_N30
\V1|SAD_reg|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[8]~feeder_combout\ = \V1|soma|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(8),
	combout => \V1|SAD_reg|Q[8]~feeder_combout\);

-- Location: FF_X23_Y20_N31
\V1|SAD_reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(8));

-- Location: LCCOMB_X24_Y20_N22
\V1|som3|sum[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|som3|sum[9]~18_combout\ = \V1|som3|sum[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \V1|som3|sum[8]~17\,
	combout => \V1|som3|sum[9]~18_combout\);

-- Location: LCCOMB_X23_Y20_N20
\V1|soma|Q[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[9]~32_combout\ = (\V1|soma|Q\(9) & ((\V1|som3|sum[9]~18_combout\ & (\V1|soma|Q[8]~31\ & VCC)) # (!\V1|som3|sum[9]~18_combout\ & (!\V1|soma|Q[8]~31\)))) # (!\V1|soma|Q\(9) & ((\V1|som3|sum[9]~18_combout\ & (!\V1|soma|Q[8]~31\)) # 
-- (!\V1|som3|sum[9]~18_combout\ & ((\V1|soma|Q[8]~31\) # (GND)))))
-- \V1|soma|Q[9]~33\ = CARRY((\V1|soma|Q\(9) & (!\V1|som3|sum[9]~18_combout\ & !\V1|soma|Q[8]~31\)) # (!\V1|soma|Q\(9) & ((!\V1|soma|Q[8]~31\) # (!\V1|som3|sum[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(9),
	datab => \V1|som3|sum[9]~18_combout\,
	datad => VCC,
	cin => \V1|soma|Q[8]~31\,
	combout => \V1|soma|Q[9]~32_combout\,
	cout => \V1|soma|Q[9]~33\);

-- Location: FF_X23_Y20_N21
\V1|soma|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[9]~32_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(9));

-- Location: LCCOMB_X23_Y19_N16
\V1|SAD_reg|Q[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[9]~feeder_combout\ = \V1|soma|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(9),
	combout => \V1|SAD_reg|Q[9]~feeder_combout\);

-- Location: FF_X23_Y19_N17
\V1|SAD_reg|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(9));

-- Location: LCCOMB_X23_Y20_N22
\V1|soma|Q[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[10]~34_combout\ = (\V1|soma|Q\(10) & (\V1|soma|Q[9]~33\ $ (GND))) # (!\V1|soma|Q\(10) & (!\V1|soma|Q[9]~33\ & VCC))
-- \V1|soma|Q[10]~35\ = CARRY((\V1|soma|Q\(10) & !\V1|soma|Q[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(10),
	datad => VCC,
	cin => \V1|soma|Q[9]~33\,
	combout => \V1|soma|Q[10]~34_combout\,
	cout => \V1|soma|Q[10]~35\);

-- Location: FF_X23_Y20_N23
\V1|soma|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[10]~34_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(10));

-- Location: LCCOMB_X22_Y20_N24
\V1|SAD_reg|Q[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[10]~feeder_combout\ = \V1|soma|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(10),
	combout => \V1|SAD_reg|Q[10]~feeder_combout\);

-- Location: FF_X22_Y20_N25
\V1|SAD_reg|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(10));

-- Location: LCCOMB_X23_Y20_N24
\V1|soma|Q[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[11]~36_combout\ = (\V1|soma|Q\(11) & (!\V1|soma|Q[10]~35\)) # (!\V1|soma|Q\(11) & ((\V1|soma|Q[10]~35\) # (GND)))
-- \V1|soma|Q[11]~37\ = CARRY((!\V1|soma|Q[10]~35\) # (!\V1|soma|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \V1|soma|Q\(11),
	datad => VCC,
	cin => \V1|soma|Q[10]~35\,
	combout => \V1|soma|Q[11]~36_combout\,
	cout => \V1|soma|Q[11]~37\);

-- Location: FF_X23_Y20_N25
\V1|soma|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[11]~36_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(11));

-- Location: LCCOMB_X23_Y21_N0
\V1|SAD_reg|Q[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[11]~feeder_combout\ = \V1|soma|Q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(11),
	combout => \V1|SAD_reg|Q[11]~feeder_combout\);

-- Location: FF_X23_Y21_N1
\V1|SAD_reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(11));

-- Location: LCCOMB_X23_Y20_N26
\V1|soma|Q[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[12]~38_combout\ = (\V1|soma|Q\(12) & (\V1|soma|Q[11]~37\ $ (GND))) # (!\V1|soma|Q\(12) & (!\V1|soma|Q[11]~37\ & VCC))
-- \V1|soma|Q[12]~39\ = CARRY((\V1|soma|Q\(12) & !\V1|soma|Q[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \V1|soma|Q\(12),
	datad => VCC,
	cin => \V1|soma|Q[11]~37\,
	combout => \V1|soma|Q[12]~38_combout\,
	cout => \V1|soma|Q[12]~39\);

-- Location: FF_X23_Y20_N27
\V1|soma|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[12]~38_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(12));

-- Location: LCCOMB_X22_Y20_N10
\V1|SAD_reg|Q[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[12]~feeder_combout\ = \V1|soma|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(12),
	combout => \V1|SAD_reg|Q[12]~feeder_combout\);

-- Location: FF_X22_Y20_N11
\V1|SAD_reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|SAD_reg|Q\(12));

-- Location: LCCOMB_X23_Y20_N28
\V1|soma|Q[13]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|soma|Q[13]~40_combout\ = \V1|soma|Q[12]~39\ $ (\V1|soma|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(13),
	cin => \V1|soma|Q[12]~39\,
	combout => \V1|soma|Q[13]~40_combout\);

-- Location: FF_X23_Y20_N29
\V1|soma|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|soma|Q[13]~40_combout\,
	sclr => \V2|EA.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V1|soma|Q\(13));

-- Location: LCCOMB_X22_Y20_N4
\V1|SAD_reg|Q[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \V1|SAD_reg|Q[13]~feeder_combout\ = \V1|soma|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \V1|soma|Q\(13),
	combout => \V1|SAD_reg|Q[13]~feeder_combout\);

-- Location: FF_X22_Y20_N5
\V1|SAD_reg|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \V1|SAD_reg|Q[13]~feeder_combout\,
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

ww_read_sad <= \read_sad~output_o\;

ww_pronto <= \pronto~output_o\;
END structure;


