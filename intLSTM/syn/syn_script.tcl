# rm -rf work/
# mkdir work
# source /eda/scripts/init_design_vision
# dc_shell-xg-t
# source syn_script.tcl

analyze -format vhdl -library work ../mac_i32.vhd
analyze -format vhdl -library work ../sum_i32.vhd
analyze -format vhdl -library work ../cnv_i32.vhd
analyze -format vhdl -library work ../dflipflop.vhd
analyze -format vhdl -library work ../dff_chain.vhd
analyze -format vhdl -library work ../counter.vhd
analyze -format vhdl -library work ../shift_register.vhd
analyze -format vhdl -library work ../tanh_lut.vhd
analyze -format vhdl -library work ../weight_lut.vhd
analyze -format vhdl -library work ../register.vhd
analyze -format vhdl -library work ../package_int32.vhd
analyze -format vhdl -library work ../LSTM_layer_i32.vhd
analyze -format vhdl -library work ../out_layer_i32.vhd
analyze -format vhdl -library work ../LSTM_net_i32.vhd

set power_preserve_rtl_hier_names true

elaborate LSTM_net_i32 -library work

create_clock -name CLK -period 10 clock

set_dont_touch_network CLK

set_clock_uncertainty 0.5 [get_clocks CLK]

insert_clock_tree

set_input_delay 1.0 -max -clock CLK [remove_from_collection [all_inputs] CLK]

set_output_delay 1.0 -max -clock CLK [all_outputs]

compile -gate_clock

report_timing
report_area
report_power

write -format ddc -hierarchy -output "design_optimized.ddc"