# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.


# ***************************************************************************
# ***************************************************************************
# 
# File:		C:/Trabalho/INE5406/sad-v3/simulation/modelsim/sad_dump_all_vcd_nodes.tcl
# 
# Description:	Script for ModelSim-Altera (VHDL) VCD File Dumping
# 		This script is used to direct ModelSim-Altera (VHDL) to dump
# 		all nodes in the design to a VCD output file
# 
# Usages:	C:/Trabalho/INE5406/sad-v3/simulation/modelsim/sad_dump_all_vcd_nodes.tcl
# 
# Generated by:	Quartus II 64-Bit
# 		Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
# 
# Date:		Fri Jun 07 23:16:16 2024
# 
# Design:	sad
# 
# ***************************************************************************
# ***************************************************************************

# ----------------------------------------------------------------
#
proc add_vcd_signals { hierarchy vcd_filename } {
#
# Description:	This function directs ModelSim-Altera (VHDL) to print out the
#		appropriate VCD signals, with the hierarchy level
#		prepended to each signal name
#
# ----------------------------------------------------------------

   catch { vcd add "$hierarchy/V2_aEA_aS1_aq" }
   catch { vcd add "$hierarchy/V2_aEA_aS0_aq" }
   catch { vcd add "$hierarchy/V2_aWideOr1_a0_combout" }
   catch { vcd add "$hierarchy/V2_aPE_aS1_a0_combout" }
   catch { vcd add "$hierarchy/V2_aREG_a0_combout" }
   catch { vcd add "$hierarchy/V2_aEA_aS5_aq" }
   catch { vcd add "$hierarchy/V2_aSelector2_a0_combout" }
   catch { vcd add "$hierarchy/V2_aEA_aS2_aq" }
   catch { vcd add "$hierarchy/V2_adone_acombout" }
   catch { vcd add "$hierarchy/SAD_saida_a0_a_aoutput_o" }
   catch { vcd add "$hierarchy/SAD_saida_a1_a_aoutput_o" }
   catch { vcd add "$hierarchy/SAD_saida_a2_a_aoutput_o" }
   catch { vcd add "$hierarchy/SAD_saida_a3_a_aoutput_o" }
   catch { vcd add "$hierarchy/SAD_saida_a4_a_aoutput_o" }
   catch { vcd add "$hierarchy/SAD_saida_a5_a_aoutput_o" }
   catch { vcd add "$hierarchy/SAD_saida_a6_a_aoutput_o" }
   catch { vcd add "$hierarchy/SAD_saida_a7_a_aoutput_o" }
   catch { vcd add "$hierarchy/end_sad_a0_a_aoutput_o" }
   catch { vcd add "$hierarchy/end_sad_a1_a_aoutput_o" }
   catch { vcd add "$hierarchy/end_sad_a2_a_aoutput_o" }
   catch { vcd add "$hierarchy/end_sad_a3_a_aoutput_o" }
   catch { vcd add "$hierarchy/read_sad_aoutput_o" }
   catch { vcd add "$hierarchy/pronto_aoutput_o" }
   catch { vcd add "$hierarchy/iniciar_ainput_o" }
   catch { vcd add "$hierarchy/CLOCK_ainput_o" }
   catch { vcd add "$hierarchy/reset_ainput_o" }
   catch { vcd add "$hierarchy/V2_aREG_a0clkctrl_outclk" }
   catch { vcd add "$hierarchy/CLOCK_ainputclkctrl_outclk" }
   catch { vcd add "$hierarchy/V2_aEA_aS2_afeeder_combout" }
   catch { vcd add "$hierarchy/V2_aEA_aS0_afeeder_combout" }
}

# ----------------------------------------------------------------
#
proc main { argv } {
#
# Description:	Main entry point to script.  Iterate over all
#		hierarchy levels specified, and direct ModelSim-Altera (VHDL)
#		to print the relevant signals under each level
#
# ----------------------------------------------------------------

   set vcd_filename "sad.vcd"
   set hierarchy "DUV"

   vcd file "$vcd_filename"
   vcd on

   add_vcd_signals $hierarchy $vcd_filename
}

main $argv