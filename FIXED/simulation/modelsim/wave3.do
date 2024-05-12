onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mac_pe_tb/clock
add wave -noupdate -radix unsigned /mac_pe_tb/in_a
add wave -noupdate -radix unsigned /mac_pe_tb/in_b
add wave -noupdate -radix unsigned /mac_pe_tb/in_c
add wave -noupdate -radix unsigned /mac_pe_tb/res
add wave -noupdate /mac_pe_tb/uut/u0/in_a
add wave -noupdate /mac_pe_tb/uut/u0/in_b
add wave -noupdate /mac_pe_tb/uut/u0/res
add wave -noupdate /mac_pe_tb/uut/u0/mul
add wave -noupdate /mac_pe_tb/uut/u0/sgn
add wave -noupdate /mac_pe_tb/uut/u1/clock
add wave -noupdate /mac_pe_tb/uut/u1/in_a
add wave -noupdate /mac_pe_tb/uut/u1/in_b
add wave -noupdate /mac_pe_tb/uut/u1/res
add wave -noupdate /mac_pe_tb/uut/u1/a_uns
add wave -noupdate /mac_pe_tb/uut/u1/b_uns
add wave -noupdate /mac_pe_tb/uut/u1/sum
add wave -noupdate /mac_pe_tb/uut/u1/sgn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {210899 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {256 ns}
