transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/myTypes.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/nReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/f2i_conv.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/counter.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/LUT.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_wire.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_func.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_wire.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_lib.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/shiftReg.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/LSTM_cell.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fpu.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_lib.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_sgnj.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_rnd.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_max.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_mac.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_fma.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_fdiv.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_ext.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_exe.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_cvt.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_cmp.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_4.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_8.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_16.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_32.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_64.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/lzc_128.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/fpu/fp_unit.vhd}

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/VHDL/LSTM_test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  LSTM_test

add wave *
view structure
view signals
run 20 us
