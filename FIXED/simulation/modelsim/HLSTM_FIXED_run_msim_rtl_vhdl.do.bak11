transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/counter.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/mytypes.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/LUT.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/nReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/d_flip_flop.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/shiftReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/LSTM_cell.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/LSTM_gate.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/mac_pe.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/fixed_multiplier.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/fixed_adder.vhd}

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/in_RAM.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/nReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/LSTM_cell.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM_FIXED/LSTM_test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  LSTM_test

add wave *
view structure
view signals
run 115 us
