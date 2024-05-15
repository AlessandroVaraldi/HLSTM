# Creazione del clock con periodo di 4 ns
create_clock -name clock -period 10 [get_ports clock]

# Impostazione dell'incertezza del clock a 0.05 ns
set_clock_uncertainty 0.05 -to [get_clocks clock]
set_input_delay 0.5 -clock clock [all_inputs]
set_output_delay 0.5 -clock clock [all_outputs]