transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {LSTM_network.vho}

vcom -93 -work work {C:/Users/aleva/OneDrive/Documenti/Politecnico/Dottorato/Progetti/LSTM/LSTM_test.vhd}

vsim -t 1ps -L altera -L cyclone10lp -L gate_work -L work -voptargs="+acc"  LSTM_test

add wave *
view structure
view signals
run 5 us
