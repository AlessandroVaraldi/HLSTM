transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/mytypes.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/LUT.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/nReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/shiftReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/counter.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/d_flip_flop.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/flip_flop_chain.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/LSTM_cell.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/LSTM_gate.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/mac_pe.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/fixed_multiplier.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/fixed_adder.vhd}

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/nReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/in_RAM.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FIXED/src/tb/LSTM_test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  LSTM_test

add wave *
view structure
view signals
run 500 ns
