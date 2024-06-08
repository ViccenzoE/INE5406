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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/07/2024 23:16:16"

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
	SAD_saida : OUT std_logic_vector(7 DOWNTO 0);
	end_sad : OUT std_logic_vector(3 DOWNTO 0);
	read_sad : OUT std_logic;
	pronto : OUT std_logic
	);
END sad;

-- Design Ports Information
-- sample_ori[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[8]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[9]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[10]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[11]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[12]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[13]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[14]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[15]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[16]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[17]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[18]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[19]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[20]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[21]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[22]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[23]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[24]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[25]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[26]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[27]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[28]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[29]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[30]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[31]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[0]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[7]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[8]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[9]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[10]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[11]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[12]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[13]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[14]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[15]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[16]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[17]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[18]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[19]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[20]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[21]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[22]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[23]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[24]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[25]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[26]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[27]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[28]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[29]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[30]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[31]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[3]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_saida[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_sad[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_sad	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SAD_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_end_sad : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_read_sad : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL V2_aREG_a0clkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL CLOCK_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL sample_ori_a0_a_ainput_o : std_logic;
SIGNAL sample_ori_a1_a_ainput_o : std_logic;
SIGNAL sample_ori_a2_a_ainput_o : std_logic;
SIGNAL sample_ori_a3_a_ainput_o : std_logic;
SIGNAL sample_ori_a4_a_ainput_o : std_logic;
SIGNAL sample_ori_a5_a_ainput_o : std_logic;
SIGNAL sample_ori_a6_a_ainput_o : std_logic;
SIGNAL sample_ori_a7_a_ainput_o : std_logic;
SIGNAL sample_ori_a8_a_ainput_o : std_logic;
SIGNAL sample_ori_a9_a_ainput_o : std_logic;
SIGNAL sample_ori_a10_a_ainput_o : std_logic;
SIGNAL sample_ori_a11_a_ainput_o : std_logic;
SIGNAL sample_ori_a12_a_ainput_o : std_logic;
SIGNAL sample_ori_a13_a_ainput_o : std_logic;
SIGNAL sample_ori_a14_a_ainput_o : std_logic;
SIGNAL sample_ori_a15_a_ainput_o : std_logic;
SIGNAL sample_ori_a16_a_ainput_o : std_logic;
SIGNAL sample_ori_a17_a_ainput_o : std_logic;
SIGNAL sample_ori_a18_a_ainput_o : std_logic;
SIGNAL sample_ori_a19_a_ainput_o : std_logic;
SIGNAL sample_ori_a20_a_ainput_o : std_logic;
SIGNAL sample_ori_a21_a_ainput_o : std_logic;
SIGNAL sample_ori_a22_a_ainput_o : std_logic;
SIGNAL sample_ori_a23_a_ainput_o : std_logic;
SIGNAL sample_ori_a24_a_ainput_o : std_logic;
SIGNAL sample_ori_a25_a_ainput_o : std_logic;
SIGNAL sample_ori_a26_a_ainput_o : std_logic;
SIGNAL sample_ori_a27_a_ainput_o : std_logic;
SIGNAL sample_ori_a28_a_ainput_o : std_logic;
SIGNAL sample_ori_a29_a_ainput_o : std_logic;
SIGNAL sample_ori_a30_a_ainput_o : std_logic;
SIGNAL sample_ori_a31_a_ainput_o : std_logic;
SIGNAL sample_can_a0_a_ainput_o : std_logic;
SIGNAL sample_can_a1_a_ainput_o : std_logic;
SIGNAL sample_can_a2_a_ainput_o : std_logic;
SIGNAL sample_can_a3_a_ainput_o : std_logic;
SIGNAL sample_can_a4_a_ainput_o : std_logic;
SIGNAL sample_can_a5_a_ainput_o : std_logic;
SIGNAL sample_can_a6_a_ainput_o : std_logic;
SIGNAL sample_can_a7_a_ainput_o : std_logic;
SIGNAL sample_can_a8_a_ainput_o : std_logic;
SIGNAL sample_can_a9_a_ainput_o : std_logic;
SIGNAL sample_can_a10_a_ainput_o : std_logic;
SIGNAL sample_can_a11_a_ainput_o : std_logic;
SIGNAL sample_can_a12_a_ainput_o : std_logic;
SIGNAL sample_can_a13_a_ainput_o : std_logic;
SIGNAL sample_can_a14_a_ainput_o : std_logic;
SIGNAL sample_can_a15_a_ainput_o : std_logic;
SIGNAL sample_can_a16_a_ainput_o : std_logic;
SIGNAL sample_can_a17_a_ainput_o : std_logic;
SIGNAL sample_can_a18_a_ainput_o : std_logic;
SIGNAL sample_can_a19_a_ainput_o : std_logic;
SIGNAL sample_can_a20_a_ainput_o : std_logic;
SIGNAL sample_can_a21_a_ainput_o : std_logic;
SIGNAL sample_can_a22_a_ainput_o : std_logic;
SIGNAL sample_can_a23_a_ainput_o : std_logic;
SIGNAL sample_can_a24_a_ainput_o : std_logic;
SIGNAL sample_can_a25_a_ainput_o : std_logic;
SIGNAL sample_can_a26_a_ainput_o : std_logic;
SIGNAL sample_can_a27_a_ainput_o : std_logic;
SIGNAL sample_can_a28_a_ainput_o : std_logic;
SIGNAL sample_can_a29_a_ainput_o : std_logic;
SIGNAL sample_can_a30_a_ainput_o : std_logic;
SIGNAL sample_can_a31_a_ainput_o : std_logic;
SIGNAL CLOCK_ainput_o : std_logic;
SIGNAL reset_ainput_o : std_logic;
SIGNAL CLOCK_ainputclkctrl_outclk : std_logic;
SIGNAL SAD_saida_a0_a_aoutput_o : std_logic;
SIGNAL SAD_saida_a1_a_aoutput_o : std_logic;
SIGNAL SAD_saida_a2_a_aoutput_o : std_logic;
SIGNAL SAD_saida_a3_a_aoutput_o : std_logic;
SIGNAL SAD_saida_a4_a_aoutput_o : std_logic;
SIGNAL SAD_saida_a5_a_aoutput_o : std_logic;
SIGNAL SAD_saida_a6_a_aoutput_o : std_logic;
SIGNAL SAD_saida_a7_a_aoutput_o : std_logic;
SIGNAL end_sad_a0_a_aoutput_o : std_logic;
SIGNAL end_sad_a1_a_aoutput_o : std_logic;
SIGNAL end_sad_a2_a_aoutput_o : std_logic;
SIGNAL end_sad_a3_a_aoutput_o : std_logic;
SIGNAL read_sad_aoutput_o : std_logic;
SIGNAL pronto_aoutput_o : std_logic;
SIGNAL iniciar_ainput_o : std_logic;
SIGNAL V2_aEA_aS2_afeeder_combout : std_logic;
SIGNAL V2_aREG_a0_combout : std_logic;
SIGNAL V2_aREG_a0clkctrl_outclk : std_logic;
SIGNAL V2_aEA_aS2_aq : std_logic;
SIGNAL V2_aEA_aS5_aq : std_logic;
SIGNAL V2_aSelector2_a0_combout : std_logic;
SIGNAL V2_aEA_aS0_afeeder_combout : std_logic;
SIGNAL V2_aEA_aS0_aq : std_logic;
SIGNAL V2_aPE_aS1_a0_combout : std_logic;
SIGNAL V2_aEA_aS1_aq : std_logic;
SIGNAL V2_aWideOr1_a0_combout : std_logic;
SIGNAL V2_adone_acombout : std_logic;
SIGNAL ALT_INV_V2_aREG_a0clkctrl_outclk : std_logic;
SIGNAL CLOCK_ainput_I_driver : std_logic;
SIGNAL reset_ainput_I_driver : std_logic;
SIGNAL pronto_aoutput_I_driver : std_logic;
SIGNAL iniciar_ainput_I_driver : std_logic;
SIGNAL V2_aEA_aS2_afeeder_DATAA_driver : std_logic;
SIGNAL V2_aREG_a0_DATAA_driver : std_logic;
SIGNAL V2_aREG_a0_DATAD_driver : std_logic;
SIGNAL V2_aEA_aS2_CLK_driver : std_logic;
SIGNAL V2_aEA_aS2_D_driver : std_logic;
SIGNAL V2_aEA_aS2_CLRN_driver : std_logic;
SIGNAL V2_aEA_aS5_CLK_driver : std_logic;
SIGNAL V2_aEA_aS5_ASDATA_driver : std_logic;
SIGNAL V2_aEA_aS5_CLRN_driver : std_logic;
SIGNAL V2_aSelector2_a0_DATAB_driver : std_logic;
SIGNAL V2_aSelector2_a0_DATAC_driver : std_logic;
SIGNAL V2_aSelector2_a0_DATAD_driver : std_logic;
SIGNAL V2_aEA_aS0_afeeder_DATAD_driver : std_logic;
SIGNAL V2_aEA_aS0_CLK_driver : std_logic;
SIGNAL V2_aEA_aS0_D_driver : std_logic;
SIGNAL V2_aEA_aS0_CLRN_driver : std_logic;
SIGNAL V2_aPE_aS1_a0_DATAA_driver : std_logic;
SIGNAL V2_aPE_aS1_a0_DATAD_driver : std_logic;
SIGNAL V2_aEA_aS1_CLK_driver : std_logic;
SIGNAL V2_aEA_aS1_ASDATA_driver : std_logic;
SIGNAL V2_aEA_aS1_CLRN_driver : std_logic;
SIGNAL V2_aWideOr1_a0_DATAC_driver : std_logic;
SIGNAL V2_aWideOr1_a0_DATAD_driver : std_logic;
SIGNAL V2_adone_DATAB_driver : std_logic;
SIGNAL V2_adone_DATAC_driver : std_logic;
SIGNAL V2_adone_DATAD_driver : std_logic;
SIGNAL sample_ori_a0_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a1_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a2_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a3_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a4_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a5_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a6_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a7_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a8_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a9_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a10_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a11_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a12_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a13_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a14_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a15_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a16_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a17_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a18_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a19_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a20_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a21_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a22_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a23_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a24_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a25_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a26_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a27_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a28_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a29_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a30_a_ainput_I_driver : std_logic;
SIGNAL sample_ori_a31_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a0_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a1_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a2_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a3_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a4_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a5_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a6_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a7_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a8_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a9_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a10_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a11_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a12_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a13_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a14_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a15_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a16_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a17_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a18_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a19_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a20_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a21_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a22_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a23_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a24_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a25_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a26_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a27_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a28_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a29_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a30_a_ainput_I_driver : std_logic;
SIGNAL sample_can_a31_a_ainput_I_driver : std_logic;

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
ALT_INV_V2_aREG_a0clkctrl_outclk <= NOT V2_aREG_a0clkctrl_outclk;

CLOCK_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_CLOCK,
	dataout => CLOCK_ainput_I_driver);

-- Location: IOIBUF_X0_Y11_N1
CLOCK_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CLOCK_ainput_I_driver,
	o => CLOCK_ainput_o);

reset_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_reset,
	dataout => reset_ainput_I_driver);

-- Location: IOIBUF_X34_Y12_N1
reset_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => reset_ainput_I_driver,
	o => reset_ainput_o);

CLOCK_ainputclkctrl_INCLK_a0_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainput_o,
	dataout => CLOCK_ainputclkctrl_INCLK_bus(0));

CLOCK_ainputclkctrl_INCLK_a1_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => CLOCK_ainputclkctrl_INCLK_bus(1));

CLOCK_ainputclkctrl_INCLK_a2_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => CLOCK_ainputclkctrl_INCLK_bus(2));

CLOCK_ainputclkctrl_INCLK_a3_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => CLOCK_ainputclkctrl_INCLK_bus(3));

-- Location: CLKCTRL_G4
CLOCK_ainputclkctrl : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => CLOCK_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => CLOCK_ainputclkctrl_outclk);

-- Location: IOOBUF_X34_Y9_N2
SAD_saida_a0_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a0_a_aoutput_o);

-- Location: IOOBUF_X0_Y6_N16
SAD_saida_a1_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a1_a_aoutput_o);

-- Location: IOOBUF_X30_Y0_N9
SAD_saida_a2_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a2_a_aoutput_o);

-- Location: IOOBUF_X0_Y22_N2
SAD_saida_a3_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a3_a_aoutput_o);

-- Location: IOOBUF_X9_Y24_N9
SAD_saida_a4_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a4_a_aoutput_o);

-- Location: IOOBUF_X23_Y24_N16
SAD_saida_a5_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a5_a_aoutput_o);

-- Location: IOOBUF_X30_Y24_N23
SAD_saida_a6_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a6_a_aoutput_o);

-- Location: IOOBUF_X18_Y0_N16
SAD_saida_a7_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => SAD_saida_a7_a_aoutput_o);

-- Location: IOOBUF_X0_Y21_N9
end_sad_a0_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => end_sad_a0_a_aoutput_o);

-- Location: IOOBUF_X13_Y0_N2
end_sad_a1_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => end_sad_a1_a_aoutput_o);

-- Location: IOOBUF_X25_Y0_N2
end_sad_a2_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => end_sad_a2_a_aoutput_o);

-- Location: IOOBUF_X30_Y0_N2
end_sad_a3_a_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => end_sad_a3_a_aoutput_o);

-- Location: IOOBUF_X13_Y24_N23
read_sad_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => read_sad_aoutput_o);

pronto_aoutput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_adone_acombout,
	dataout => pronto_aoutput_I_driver);

-- Location: IOOBUF_X0_Y9_N9
pronto_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pronto_aoutput_I_driver,
	devoe => ww_devoe,
	o => pronto_aoutput_o);

iniciar_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_iniciar,
	dataout => iniciar_ainput_I_driver);

-- Location: IOIBUF_X34_Y12_N8
iniciar_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => iniciar_ainput_I_driver,
	o => iniciar_ainput_o);

V2_aEA_aS2_afeeder_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS1_aq,
	dataout => V2_aEA_aS2_afeeder_DATAA_driver);

-- Location: LCCOMB_X1_Y11_N30
V2_aEA_aS2_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- V2_aEA_aS2_afeeder_combout = V2_aEA_aS1_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => V2_aEA_aS2_afeeder_DATAA_driver,
	combout => V2_aEA_aS2_afeeder_combout);

V2_aREG_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => reset_ainput_o,
	dataout => V2_aREG_a0_DATAA_driver);

V2_aREG_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => iniciar_ainput_o,
	dataout => V2_aREG_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y11_N28
V2_aREG_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- V2_aREG_a0_combout = (reset_ainput_o) # (!iniciar_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => V2_aREG_a0_DATAA_driver,
	datad => V2_aREG_a0_DATAD_driver,
	combout => V2_aREG_a0_combout);

V2_aREG_a0clkctrl_INCLK_a0_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aREG_a0_combout,
	dataout => V2_aREG_a0clkctrl_INCLK_bus(0));

V2_aREG_a0clkctrl_INCLK_a1_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => V2_aREG_a0clkctrl_INCLK_bus(1));

V2_aREG_a0clkctrl_INCLK_a2_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => V2_aREG_a0clkctrl_INCLK_bus(2));

V2_aREG_a0clkctrl_INCLK_a3_a_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => vcc,
	dataout => V2_aREG_a0clkctrl_INCLK_bus(3));

-- Location: CLKCTRL_G2
V2_aREG_a0clkctrl : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => V2_aREG_a0clkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => V2_aREG_a0clkctrl_outclk);

V2_aEA_aS2_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainputclkctrl_outclk,
	dataout => V2_aEA_aS2_CLK_driver);

V2_aEA_aS2_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS2_afeeder_combout,
	dataout => V2_aEA_aS2_D_driver);

V2_aEA_aS2_CLRN_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ALT_INV_V2_aREG_a0clkctrl_outclk,
	dataout => V2_aEA_aS2_CLRN_driver);

-- Location: FF_X1_Y11_N31
V2_aEA_aS2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => V2_aEA_aS2_CLK_driver,
	d => V2_aEA_aS2_D_driver,
	clrn => V2_aEA_aS2_CLRN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V2_aEA_aS2_aq);

V2_aEA_aS5_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainputclkctrl_outclk,
	dataout => V2_aEA_aS5_CLK_driver);

V2_aEA_aS5_ASDATA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS2_aq,
	dataout => V2_aEA_aS5_ASDATA_driver);

V2_aEA_aS5_CLRN_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ALT_INV_V2_aREG_a0clkctrl_outclk,
	dataout => V2_aEA_aS5_CLRN_driver);

-- Location: FF_X1_Y11_N25
V2_aEA_aS5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => V2_aEA_aS5_CLK_driver,
	asdata => V2_aEA_aS5_ASDATA_driver,
	clrn => V2_aEA_aS5_CLRN_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V2_aEA_aS5_aq);

V2_aSelector2_a0_DATAB_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => iniciar_ainput_o,
	dataout => V2_aSelector2_a0_DATAB_driver);

V2_aSelector2_a0_DATAC_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS5_aq,
	dataout => V2_aSelector2_a0_DATAC_driver);

V2_aSelector2_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS0_aq,
	dataout => V2_aSelector2_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y11_N24
V2_aSelector2_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- V2_aSelector2_a0_combout = (!V2_aEA_aS5_aq & ((iniciar_ainput_o) # (V2_aEA_aS0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => V2_aSelector2_a0_DATAB_driver,
	datac => V2_aSelector2_a0_DATAC_driver,
	datad => V2_aSelector2_a0_DATAD_driver,
	combout => V2_aSelector2_a0_combout);

V2_aEA_aS0_afeeder_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aSelector2_a0_combout,
	dataout => V2_aEA_aS0_afeeder_DATAD_driver);

-- Location: LCCOMB_X1_Y11_N22
V2_aEA_aS0_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- V2_aEA_aS0_afeeder_combout = V2_aSelector2_a0_combout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => V2_aEA_aS0_afeeder_DATAD_driver,
	combout => V2_aEA_aS0_afeeder_combout);

V2_aEA_aS0_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainputclkctrl_outclk,
	dataout => V2_aEA_aS0_CLK_driver);

V2_aEA_aS0_D_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS0_afeeder_combout,
	dataout => V2_aEA_aS0_D_driver);

V2_aEA_aS0_CLRN_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ALT_INV_V2_aREG_a0clkctrl_outclk,
	dataout => V2_aEA_aS0_CLRN_driver);

-- Location: FF_X1_Y11_N23
V2_aEA_aS0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => V2_aEA_aS0_CLK_driver,
	d => V2_aEA_aS0_D_driver,
	clrn => V2_aEA_aS0_CLRN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V2_aEA_aS0_aq);

V2_aPE_aS1_a0_DATAA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS0_aq,
	dataout => V2_aPE_aS1_a0_DATAA_driver);

V2_aPE_aS1_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => iniciar_ainput_o,
	dataout => V2_aPE_aS1_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y11_N16
V2_aPE_aS1_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- V2_aPE_aS1_a0_combout = (!V2_aEA_aS0_aq & iniciar_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => V2_aPE_aS1_a0_DATAA_driver,
	datad => V2_aPE_aS1_a0_DATAD_driver,
	combout => V2_aPE_aS1_a0_combout);

V2_aEA_aS1_CLK_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => CLOCK_ainput_o,
	dataout => V2_aEA_aS1_CLK_driver);

V2_aEA_aS1_ASDATA_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aPE_aS1_a0_combout,
	dataout => V2_aEA_aS1_ASDATA_driver);

V2_aEA_aS1_CLRN_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ALT_INV_V2_aREG_a0clkctrl_outclk,
	dataout => V2_aEA_aS1_CLRN_driver);

-- Location: FF_X1_Y11_N29
V2_aEA_aS1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => V2_aEA_aS1_CLK_driver,
	asdata => V2_aEA_aS1_ASDATA_driver,
	clrn => V2_aEA_aS1_CLRN_driver,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V2_aEA_aS1_aq);

V2_aWideOr1_a0_DATAC_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS0_aq,
	dataout => V2_aWideOr1_a0_DATAC_driver);

V2_aWideOr1_a0_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS1_aq,
	dataout => V2_aWideOr1_a0_DATAD_driver);

-- Location: LCCOMB_X1_Y11_N26
V2_aWideOr1_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- V2_aWideOr1_a0_combout = (V2_aEA_aS1_aq) # (!V2_aEA_aS0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => V2_aWideOr1_a0_DATAC_driver,
	datad => V2_aWideOr1_a0_DATAD_driver,
	combout => V2_aWideOr1_a0_combout);

V2_adone_DATAB_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_adone_acombout,
	dataout => V2_adone_DATAB_driver);

V2_adone_DATAC_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aWideOr1_a0_combout,
	dataout => V2_adone_DATAC_driver);

V2_adone_DATAD_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => V2_aEA_aS1_aq,
	dataout => V2_adone_DATAD_driver);

-- Location: LCCOMB_X1_Y11_N20
V2_adone : cycloneiii_lcell_comb
-- Equation(s):
-- V2_adone_acombout = (V2_aWideOr1_a0_combout & ((!V2_aEA_aS1_aq))) # (!V2_aWideOr1_a0_combout & (V2_adone_acombout))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => V2_adone_DATAB_driver,
	datac => V2_adone_DATAC_driver,
	datad => V2_adone_DATAD_driver,
	combout => V2_adone_acombout);

sample_ori_a0_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(0),
	dataout => sample_ori_a0_a_ainput_I_driver);

-- Location: IOIBUF_X5_Y0_N22
sample_ori_a0_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a0_a_ainput_I_driver,
	o => sample_ori_a0_a_ainput_o);

sample_ori_a1_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(1),
	dataout => sample_ori_a1_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y4_N22
sample_ori_a1_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a1_a_ainput_I_driver,
	o => sample_ori_a1_a_ainput_o);

sample_ori_a2_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(2),
	dataout => sample_ori_a2_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y18_N15
sample_ori_a2_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a2_a_ainput_I_driver,
	o => sample_ori_a2_a_ainput_o);

sample_ori_a3_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(3),
	dataout => sample_ori_a3_a_ainput_I_driver);

-- Location: IOIBUF_X16_Y24_N1
sample_ori_a3_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a3_a_ainput_I_driver,
	o => sample_ori_a3_a_ainput_o);

sample_ori_a4_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(4),
	dataout => sample_ori_a4_a_ainput_I_driver);

-- Location: IOIBUF_X23_Y0_N15
sample_ori_a4_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a4_a_ainput_I_driver,
	o => sample_ori_a4_a_ainput_o);

sample_ori_a5_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(5),
	dataout => sample_ori_a5_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y17_N1
sample_ori_a5_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a5_a_ainput_I_driver,
	o => sample_ori_a5_a_ainput_o);

sample_ori_a6_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(6),
	dataout => sample_ori_a6_a_ainput_I_driver);

-- Location: IOIBUF_X3_Y0_N1
sample_ori_a6_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a6_a_ainput_I_driver,
	o => sample_ori_a6_a_ainput_o);

sample_ori_a7_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(7),
	dataout => sample_ori_a7_a_ainput_I_driver);

-- Location: IOIBUF_X28_Y24_N15
sample_ori_a7_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a7_a_ainput_I_driver,
	o => sample_ori_a7_a_ainput_o);

sample_ori_a8_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(8),
	dataout => sample_ori_a8_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y6_N22
sample_ori_a8_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a8_a_ainput_I_driver,
	o => sample_ori_a8_a_ainput_o);

sample_ori_a9_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(9),
	dataout => sample_ori_a9_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y7_N22
sample_ori_a9_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a9_a_ainput_I_driver,
	o => sample_ori_a9_a_ainput_o);

sample_ori_a10_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(10),
	dataout => sample_ori_a10_a_ainput_I_driver);

-- Location: IOIBUF_X28_Y0_N22
sample_ori_a10_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a10_a_ainput_I_driver,
	o => sample_ori_a10_a_ainput_o);

sample_ori_a11_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(11),
	dataout => sample_ori_a11_a_ainput_I_driver);

-- Location: IOIBUF_X28_Y24_N1
sample_ori_a11_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a11_a_ainput_I_driver,
	o => sample_ori_a11_a_ainput_o);

sample_ori_a12_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(12),
	dataout => sample_ori_a12_a_ainput_I_driver);

-- Location: IOIBUF_X32_Y0_N8
sample_ori_a12_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a12_a_ainput_I_driver,
	o => sample_ori_a12_a_ainput_o);

sample_ori_a13_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(13),
	dataout => sample_ori_a13_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y19_N15
sample_ori_a13_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a13_a_ainput_I_driver,
	o => sample_ori_a13_a_ainput_o);

sample_ori_a14_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(14),
	dataout => sample_ori_a14_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y18_N22
sample_ori_a14_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a14_a_ainput_I_driver,
	o => sample_ori_a14_a_ainput_o);

sample_ori_a15_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(15),
	dataout => sample_ori_a15_a_ainput_I_driver);

-- Location: IOIBUF_X30_Y24_N1
sample_ori_a15_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a15_a_ainput_I_driver,
	o => sample_ori_a15_a_ainput_o);

sample_ori_a16_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(16),
	dataout => sample_ori_a16_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y23_N8
sample_ori_a16_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a16_a_ainput_I_driver,
	o => sample_ori_a16_a_ainput_o);

sample_ori_a17_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(17),
	dataout => sample_ori_a17_a_ainput_I_driver);

-- Location: IOIBUF_X1_Y0_N15
sample_ori_a17_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a17_a_ainput_I_driver,
	o => sample_ori_a17_a_ainput_o);

sample_ori_a18_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(18),
	dataout => sample_ori_a18_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y9_N15
sample_ori_a18_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a18_a_ainput_I_driver,
	o => sample_ori_a18_a_ainput_o);

sample_ori_a19_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(19),
	dataout => sample_ori_a19_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y3_N22
sample_ori_a19_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a19_a_ainput_I_driver,
	o => sample_ori_a19_a_ainput_o);

sample_ori_a20_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(20),
	dataout => sample_ori_a20_a_ainput_I_driver);

-- Location: IOIBUF_X18_Y0_N22
sample_ori_a20_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a20_a_ainput_I_driver,
	o => sample_ori_a20_a_ainput_o);

sample_ori_a21_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(21),
	dataout => sample_ori_a21_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y17_N15
sample_ori_a21_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a21_a_ainput_I_driver,
	o => sample_ori_a21_a_ainput_o);

sample_ori_a22_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(22),
	dataout => sample_ori_a22_a_ainput_I_driver);

-- Location: IOIBUF_X7_Y24_N1
sample_ori_a22_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a22_a_ainput_I_driver,
	o => sample_ori_a22_a_ainput_o);

sample_ori_a23_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(23),
	dataout => sample_ori_a23_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y23_N1
sample_ori_a23_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a23_a_ainput_I_driver,
	o => sample_ori_a23_a_ainput_o);

sample_ori_a24_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(24),
	dataout => sample_ori_a24_a_ainput_I_driver);

-- Location: IOIBUF_X32_Y0_N22
sample_ori_a24_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a24_a_ainput_I_driver,
	o => sample_ori_a24_a_ainput_o);

sample_ori_a25_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(25),
	dataout => sample_ori_a25_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y12_N22
sample_ori_a25_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a25_a_ainput_I_driver,
	o => sample_ori_a25_a_ainput_o);

sample_ori_a26_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(26),
	dataout => sample_ori_a26_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y12_N15
sample_ori_a26_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a26_a_ainput_I_driver,
	o => sample_ori_a26_a_ainput_o);

sample_ori_a27_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(27),
	dataout => sample_ori_a27_a_ainput_I_driver);

-- Location: IOIBUF_X1_Y0_N22
sample_ori_a27_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a27_a_ainput_I_driver,
	o => sample_ori_a27_a_ainput_o);

sample_ori_a28_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(28),
	dataout => sample_ori_a28_a_ainput_I_driver);

-- Location: IOIBUF_X23_Y0_N8
sample_ori_a28_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a28_a_ainput_I_driver,
	o => sample_ori_a28_a_ainput_o);

sample_ori_a29_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(29),
	dataout => sample_ori_a29_a_ainput_I_driver);

-- Location: IOIBUF_X16_Y24_N8
sample_ori_a29_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a29_a_ainput_I_driver,
	o => sample_ori_a29_a_ainput_o);

sample_ori_a30_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(30),
	dataout => sample_ori_a30_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y17_N22
sample_ori_a30_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a30_a_ainput_I_driver,
	o => sample_ori_a30_a_ainput_o);

sample_ori_a31_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_ori(31),
	dataout => sample_ori_a31_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y7_N8
sample_ori_a31_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_ori_a31_a_ainput_I_driver,
	o => sample_ori_a31_a_ainput_o);

sample_can_a0_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(0),
	dataout => sample_can_a0_a_ainput_I_driver);

-- Location: IOIBUF_X1_Y24_N1
sample_can_a0_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a0_a_ainput_I_driver,
	o => sample_can_a0_a_ainput_o);

sample_can_a1_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(1),
	dataout => sample_can_a1_a_ainput_I_driver);

-- Location: IOIBUF_X7_Y0_N1
sample_can_a1_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a1_a_ainput_I_driver,
	o => sample_can_a1_a_ainput_o);

sample_can_a2_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(2),
	dataout => sample_can_a2_a_ainput_I_driver);

-- Location: IOIBUF_X16_Y0_N22
sample_can_a2_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a2_a_ainput_I_driver,
	o => sample_can_a2_a_ainput_o);

sample_can_a3_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(3),
	dataout => sample_can_a3_a_ainput_I_driver);

-- Location: IOIBUF_X28_Y24_N22
sample_can_a3_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a3_a_ainput_I_driver,
	o => sample_can_a3_a_ainput_o);

sample_can_a4_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(4),
	dataout => sample_can_a4_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y2_N15
sample_can_a4_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a4_a_ainput_I_driver,
	o => sample_can_a4_a_ainput_o);

sample_can_a5_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(5),
	dataout => sample_can_a5_a_ainput_I_driver);

-- Location: IOIBUF_X16_Y0_N1
sample_can_a5_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a5_a_ainput_I_driver,
	o => sample_can_a5_a_ainput_o);

sample_can_a6_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(6),
	dataout => sample_can_a6_a_ainput_I_driver);

-- Location: IOIBUF_X3_Y24_N22
sample_can_a6_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a6_a_ainput_I_driver,
	o => sample_can_a6_a_ainput_o);

sample_can_a7_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(7),
	dataout => sample_can_a7_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y4_N15
sample_can_a7_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a7_a_ainput_I_driver,
	o => sample_can_a7_a_ainput_o);

sample_can_a8_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(8),
	dataout => sample_can_a8_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y7_N1
sample_can_a8_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a8_a_ainput_I_driver,
	o => sample_can_a8_a_ainput_o);

sample_can_a9_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(9),
	dataout => sample_can_a9_a_ainput_I_driver);

-- Location: IOIBUF_X18_Y24_N22
sample_can_a9_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a9_a_ainput_I_driver,
	o => sample_can_a9_a_ainput_o);

sample_can_a10_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(10),
	dataout => sample_can_a10_a_ainput_I_driver);

-- Location: IOIBUF_X32_Y0_N15
sample_can_a10_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a10_a_ainput_I_driver,
	o => sample_can_a10_a_ainput_o);

sample_can_a11_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(11),
	dataout => sample_can_a11_a_ainput_I_driver);

-- Location: IOIBUF_X7_Y24_N8
sample_can_a11_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a11_a_ainput_I_driver,
	o => sample_can_a11_a_ainput_o);

sample_can_a12_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(12),
	dataout => sample_can_a12_a_ainput_I_driver);

-- Location: IOIBUF_X11_Y24_N15
sample_can_a12_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a12_a_ainput_I_driver,
	o => sample_can_a12_a_ainput_o);

sample_can_a13_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(13),
	dataout => sample_can_a13_a_ainput_I_driver);

-- Location: IOIBUF_X16_Y24_N22
sample_can_a13_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a13_a_ainput_I_driver,
	o => sample_can_a13_a_ainput_o);

sample_can_a14_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(14),
	dataout => sample_can_a14_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y5_N15
sample_can_a14_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a14_a_ainput_I_driver,
	o => sample_can_a14_a_ainput_o);

sample_can_a15_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(15),
	dataout => sample_can_a15_a_ainput_I_driver);

-- Location: IOIBUF_X13_Y0_N15
sample_can_a15_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a15_a_ainput_I_driver,
	o => sample_can_a15_a_ainput_o);

sample_can_a16_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(16),
	dataout => sample_can_a16_a_ainput_I_driver);

-- Location: IOIBUF_X30_Y0_N22
sample_can_a16_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a16_a_ainput_I_driver,
	o => sample_can_a16_a_ainput_o);

sample_can_a17_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(17),
	dataout => sample_can_a17_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y10_N8
sample_can_a17_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a17_a_ainput_I_driver,
	o => sample_can_a17_a_ainput_o);

sample_can_a18_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(18),
	dataout => sample_can_a18_a_ainput_I_driver);

-- Location: IOIBUF_X28_Y0_N1
sample_can_a18_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a18_a_ainput_I_driver,
	o => sample_can_a18_a_ainput_o);

sample_can_a19_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(19),
	dataout => sample_can_a19_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y9_N22
sample_can_a19_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a19_a_ainput_I_driver,
	o => sample_can_a19_a_ainput_o);

sample_can_a20_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(20),
	dataout => sample_can_a20_a_ainput_I_driver);

-- Location: IOIBUF_X21_Y0_N8
sample_can_a20_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a20_a_ainput_I_driver,
	o => sample_can_a20_a_ainput_o);

sample_can_a21_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(21),
	dataout => sample_can_a21_a_ainput_I_driver);

-- Location: IOIBUF_X13_Y24_N15
sample_can_a21_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a21_a_ainput_I_driver,
	o => sample_can_a21_a_ainput_o);

sample_can_a22_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(22),
	dataout => sample_can_a22_a_ainput_I_driver);

-- Location: IOIBUF_X5_Y24_N8
sample_can_a22_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a22_a_ainput_I_driver,
	o => sample_can_a22_a_ainput_o);

sample_can_a23_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(23),
	dataout => sample_can_a23_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y2_N22
sample_can_a23_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a23_a_ainput_I_driver,
	o => sample_can_a23_a_ainput_o);

sample_can_a24_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(24),
	dataout => sample_can_a24_a_ainput_I_driver);

-- Location: IOIBUF_X5_Y0_N15
sample_can_a24_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a24_a_ainput_I_driver,
	o => sample_can_a24_a_ainput_o);

sample_can_a25_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(25),
	dataout => sample_can_a25_a_ainput_I_driver);

-- Location: IOIBUF_X18_Y24_N15
sample_can_a25_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a25_a_ainput_I_driver,
	o => sample_can_a25_a_ainput_o);

sample_can_a26_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(26),
	dataout => sample_can_a26_a_ainput_I_driver);

-- Location: IOIBUF_X0_Y23_N15
sample_can_a26_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a26_a_ainput_I_driver,
	o => sample_can_a26_a_ainput_o);

sample_can_a27_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(27),
	dataout => sample_can_a27_a_ainput_I_driver);

-- Location: IOIBUF_X16_Y0_N8
sample_can_a27_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a27_a_ainput_I_driver,
	o => sample_can_a27_a_ainput_o);

sample_can_a28_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(28),
	dataout => sample_can_a28_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y9_N8
sample_can_a28_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a28_a_ainput_I_driver,
	o => sample_can_a28_a_ainput_o);

sample_can_a29_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(29),
	dataout => sample_can_a29_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y18_N1
sample_can_a29_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a29_a_ainput_I_driver,
	o => sample_can_a29_a_ainput_o);

sample_can_a30_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(30),
	dataout => sample_can_a30_a_ainput_I_driver);

-- Location: IOIBUF_X34_Y18_N15
sample_can_a30_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a30_a_ainput_I_driver,
	o => sample_can_a30_a_ainput_o);

sample_can_a31_a_ainput_I_routing_wire_inst : cycloneiii_routing_wire
PORT MAP (
	datain => ww_sample_can(31),
	dataout => sample_can_a31_a_ainput_I_driver);

-- Location: IOIBUF_X28_Y24_N8
sample_can_a31_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sample_can_a31_a_ainput_I_driver,
	o => sample_can_a31_a_ainput_o);

ww_SAD_saida(0) <= SAD_saida_a0_a_aoutput_o;

ww_SAD_saida(1) <= SAD_saida_a1_a_aoutput_o;

ww_SAD_saida(2) <= SAD_saida_a2_a_aoutput_o;

ww_SAD_saida(3) <= SAD_saida_a3_a_aoutput_o;

ww_SAD_saida(4) <= SAD_saida_a4_a_aoutput_o;

ww_SAD_saida(5) <= SAD_saida_a5_a_aoutput_o;

ww_SAD_saida(6) <= SAD_saida_a6_a_aoutput_o;

ww_SAD_saida(7) <= SAD_saida_a7_a_aoutput_o;

ww_end_sad(0) <= end_sad_a0_a_aoutput_o;

ww_end_sad(1) <= end_sad_a1_a_aoutput_o;

ww_end_sad(2) <= end_sad_a2_a_aoutput_o;

ww_end_sad(3) <= end_sad_a3_a_aoutput_o;

ww_read_sad <= read_sad_aoutput_o;

ww_pronto <= pronto_aoutput_o;
END structure;


