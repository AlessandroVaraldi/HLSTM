# rm -rf work/
# mkdir work
# source /eda/scripts/init_design_vision
# dc_shell-xg-t
# source syn_script.tcl

analyze -format vhdl -library work ../lzc_4.vhd
analyze -format vhdl -library work ../lzc_8.vhd
analyze -format vhdl -library work ../lzc_16.vhd
analyze -format vhdl -library work ../lzc_32.vhd
analyze -format vhdl -library work ../lzc_64.vhd
analyze -format vhdl -library work ../lzc_128.vhd
analyze -format vhdl -library work ../lzc_lib.vhd
analyze -format vhdl -library work ../lzc_wire.vhd
analyze -format vhdl -library work ../fp_wire.vhd
analyze -format vhdl -library work ../fp_func.vhd
analyze -format vhdl -library work ../fp_ext.vhd
analyze -format vhdl -library work ../fp_fma.vhd
analyze -format vhdl -library work ../fp_max.vhd
analyze -format vhdl -library work ../fp_rnd.vhd
analyze -format vhdl -library work ../fp_sgnj.vhd
analyze -format vhdl -library work ../fp_exe.vhd
analyze -format vhdl -library work ../fp_lib.vhd
analyze -format vhdl -library work ../fp_unit.vhd
analyze -format vhdl -library work ../fp_cmp.vhd
analyze -format vhdl -library work ../fp_cvt.vhd
analyze -format vhdl -library work ../fpu.vhd
analyze -format sverilog -library work ../multiplier.v

set power_preserve_rtl_hier_names true

elaborate multiplier -library work

create_clock -name CLK -period 10 clk

set_dont_touch_network CLK

set_clock_uncertainty 0.5 [get_clocks CLK]

set_input_delay 1.0 -max -clock CLK [remove_from_collection [all_inputs] CLK]

set_output_delay 1.0 -max -clock CLK [all_outputs]

compile -gate_clock

report_timing
report_area
report_power

write -format ddc -hierarchy -output "design_optimized.ddc"