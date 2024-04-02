onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lstm_test/u0/clock
add wave -noupdate /lstm_test/u0/reset
add wave -noupdate /lstm_test/u0/start
add wave -noupdate -radix float32 /lstm_test/u0/input
add wave -noupdate -radix float32 /lstm_test/u0/h_out
add wave -noupdate /lstm_test/u0/ready
add wave -noupdate /lstm_test/u0/sdone
add wave -noupdate -radix float32 /lstm_test/u0/Wx
add wave -noupdate -radix float32 /lstm_test/u0/Wh
add wave -noupdate -radix float32 /lstm_test/u0/Bx
add wave -noupdate -radix float32 /lstm_test/u0/Bh
add wave -noupdate -radix float32 /lstm_test/u0/data
add wave -noupdate /lstm_test/u0/fpu_op
add wave -noupdate /lstm_test/u0/fpu_rs
add wave -noupdate /lstm_test/u0/fpu_ce
add wave -noupdate /lstm_test/u0/fpu_dy
add wave -noupdate /lstm_test/u0/flags
add wave -noupdate /lstm_test/u0/reg_en
add wave -noupdate /lstm_test/u0/reg_cl
add wave -noupdate /lstm_test/u0/reg_rs
add wave -noupdate -radix float32 /lstm_test/u0/reg_in
add wave -noupdate -radix float32 /lstm_test/u0/reg_re
add wave -noupdate /lstm_test/u0/ceg_en
add wave -noupdate /lstm_test/u0/ceg_cl
add wave -noupdate /lstm_test/u0/ceg_rs
add wave -noupdate /lstm_test/u0/heg_en
add wave -noupdate /lstm_test/u0/heg_cl
add wave -noupdate /lstm_test/u0/heg_rs
add wave -noupdate -radix float32 /lstm_test/u0/ceg_in
add wave -noupdate -radix float32 /lstm_test/u0/ceg_re
add wave -noupdate -radix float32 /lstm_test/u0/heg_in
add wave -noupdate -radix float32 /lstm_test/u0/heg_re
add wave -noupdate -radix float32 /lstm_test/u0/f2i_in
add wave -noupdate -radix unsigned /lstm_test/u0/f2i_re
add wave -noupdate -radix unsigned /lstm_test/u0/sig_ad
add wave -noupdate -radix unsigned /lstm_test/u0/tan_ad
add wave -noupdate /lstm_test/u0/sig_ce
add wave -noupdate /lstm_test/u0/tan_ce
add wave -noupdate /lstm_test/u0/sig_rd
add wave -noupdate /lstm_test/u0/tan_rd
add wave -noupdate -radix float32 /lstm_test/u0/sig_re
add wave -noupdate -radix float32 /lstm_test/u0/tan_re
add wave -noupdate /lstm_test/u0/cnt_rs
add wave -noupdate /lstm_test/u0/cnt_cl
add wave -noupdate /lstm_test/u0/cnt_en
add wave -noupdate /lstm_test/u0/cnt
add wave -noupdate /lstm_test/u0/STATE
add wave -noupdate /lstm_test/u0/NEXT_STATE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {365517 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 199
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
WaveRestoreZoom {7874015 ps} {9978263 ps}
