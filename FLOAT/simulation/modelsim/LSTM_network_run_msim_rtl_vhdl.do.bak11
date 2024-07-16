transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_wire.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_func.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_wire.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_lib.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fpu.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_lib.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_sgnj.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_rnd.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_max.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_mac.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_fma.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_ext.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_exe.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_cvt.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_cmp.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_4.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_8.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_16.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_32.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_64.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/lzc_128.vhd}
vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu/fp_unit.vhd}

vcom -2008 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/HLSTM/FLOAT/fpu_test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  fpu_test

add wave *
view structure
view signals
run 1000 ns
