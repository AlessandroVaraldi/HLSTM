onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lstm_gate_tb/clock
add wave -noupdate /lstm_gate_tb/reset
add wave -noupdate /lstm_gate_tb/start
add wave -noupdate /lstm_gate_tb/lut_rd
add wave -noupdate /lstm_gate_tb/done
add wave -noupdate -radix unsigned /lstm_gate_tb/output
add wave -noupdate -radix unsigned /lstm_gate_tb/lut_ad
add wave -noupdate -radix unsigned /lstm_gate_tb/lut_re
add wave -noupdate -radix unsigned /lstm_gate_tb/address
add wave -noupdate -radix unsigned /lstm_gate_tb/q
add wave -noupdate /lstm_gate_tb/u0/clock
add wave -noupdate /lstm_gate_tb/u0/reset
add wave -noupdate /lstm_gate_tb/u0/start
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/input
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/ht_in
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/wx_in
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/bx_in
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/wh_in
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/bh_in
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/lutad
add wave -noupdate /lstm_gate_tb/u0/rdout
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/lutre
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/output
add wave -noupdate /lstm_gate_tb/u0/done
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/xmac
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/hmac
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/sum
add wave -noupdate /lstm_gate_tb/u0/re0_rs
add wave -noupdate /lstm_gate_tb/u0/re0_cl
add wave -noupdate /lstm_gate_tb/u0/re0_en
add wave -noupdate /lstm_gate_tb/u0/re1_rs
add wave -noupdate /lstm_gate_tb/u0/re1_cl
add wave -noupdate /lstm_gate_tb/u0/re1_en
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/re0_in
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/re0_re
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/re1_in
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/re1_re
add wave -noupdate /lstm_gate_tb/u0/sgn
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/tanh
add wave -noupdate -radix unsigned /lstm_gate_tb/u0/sigm
add wave -noupdate /lstm_gate_tb/u0/ff0_q
add wave -noupdate /lstm_gate_tb/u0/current_state
add wave -noupdate /lstm_gate_tb/u0/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {39637 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 197
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
WaveRestoreZoom {0 ps} {98061 ps}
