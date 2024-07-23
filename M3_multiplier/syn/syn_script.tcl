# rm -rf work/
# mkdir work
# source /eda/scripts/init_design_vision
# dc_shell-xg-t
# source syn_script.tcl

analyze -format sverilog -library work ../top.v
analyze -format vhdl -library work ../PartialProductGenerator.vhd
analyze -format vhdl -library work ../M3PartialProductGenerator.vhd
analyze -format vhdl -library work ../M3booth_multiplier.vhd

set power_preserve_rtl_hier_names true

elaborate top -library work

create_clock -name CLK -period 2 clk

set_dont_touch_network CLK

set_clock_uncertainty [expr {0.05 * $period}] [get_clocks CLK]

set_input_delay [expr {0.10 * $period}] -max -clock CLK [remove_from_collection [all_inputs] CLK]

set_output_delay [expr {0.10 * $period}] -max -clock CLK [all_outputs]

compile_ultra -gate_clock

report_timing
report_area
report_power

write -format ddc -hierarchy -output "design_optimized.ddc"