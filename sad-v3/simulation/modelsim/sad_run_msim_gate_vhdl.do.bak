transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {sad.vho}

vcom -93 -work work {C:/Trabalho/INE5406/sad-v3/testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUV=sad_vhd.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  DUV

source sad_dump_all_vcd_nodes.tcl
add wave *
view structure
view signals
run 500 ns
