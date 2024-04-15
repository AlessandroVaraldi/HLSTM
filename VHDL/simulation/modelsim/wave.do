onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lstm_test/clock
add wave -noupdate /lstm_test/reset
add wave -noupdate /lstm_test/start
add wave -noupdate /lstm_test/ready
add wave -noupdate /lstm_test/done
add wave -noupdate /lstm_test/input
add wave -noupdate /lstm_test/h_out
add wave -noupdate /lstm_test/ram_ce
add wave -noupdate /lstm_test/ram_rd
add wave -noupdate /lstm_test/ram_wr
add wave -noupdate /lstm_test/ram_ad
add wave -noupdate /lstm_test/ram_in
add wave -noupdate /lstm_test/ram_re
add wave -noupdate /lstm_test/clock
add wave -noupdate /lstm_test/reset
add wave -noupdate /lstm_test/start
add wave -noupdate /lstm_test/ready
add wave -noupdate /lstm_test/done
add wave -noupdate -radix float32 /lstm_test/input
add wave -noupdate -radix float32 /lstm_test/h_out
add wave -noupdate /lstm_test/ram_ce
add wave -noupdate /lstm_test/ram_rd
add wave -noupdate /lstm_test/ram_wr
add wave -noupdate /lstm_test/ram_ad
add wave -noupdate /lstm_test/ram_in
add wave -noupdate /lstm_test/ram_re
add wave -noupdate /lstm_test/u0/clock
add wave -noupdate /lstm_test/u0/reset
add wave -noupdate /lstm_test/u0/start
add wave -noupdate /lstm_test/u0/input
add wave -noupdate /lstm_test/u0/h_out
add wave -noupdate /lstm_test/u0/ready
add wave -noupdate /lstm_test/u0/sdone
add wave -noupdate /lstm_test/u0/Wx
add wave -noupdate /lstm_test/u0/Wh
add wave -noupdate /lstm_test/u0/Bx
add wave -noupdate /lstm_test/u0/Bh
add wave -noupdate /lstm_test/u0/Wd
add wave -noupdate /lstm_test/u0/Bd
add wave -noupdate /lstm_test/u0/Wl
add wave -noupdate /lstm_test/u0/Bl
add wave -noupdate /lstm_test/u0/shf_en
add wave -noupdate /lstm_test/u0/shf_rs
add wave -noupdate -radix float32 /lstm_test/u0/x
add wave -noupdate -radix float32 /lstm_test/u0/x0
add wave -noupdate -radix float32 /lstm_test/u0/x1
add wave -noupdate -radix float32 /lstm_test/u0/x2
add wave -noupdate -radix float32 /lstm_test/u0/x3
add wave -noupdate -radix float32 /lstm_test/u0/x4
add wave -noupdate -radix float32 /lstm_test/u0/x5
add wave -noupdate -radix float32 /lstm_test/u0/x6
add wave -noupdate -radix float32 /lstm_test/u0/x7
add wave -noupdate -radix float32 /lstm_test/u0/x8
add wave -noupdate -radix float32 /lstm_test/u0/x9
add wave -noupdate -radix float32 -childformat {{/lstm_test/u0/data.d0 -radix float32} {/lstm_test/u0/data.d1 -radix float32} {/lstm_test/u0/data.d2 -radix float32} {/lstm_test/u0/data.d3 -radix float32}} -expand -subitemconfig {/lstm_test/u0/data.d0 {-height 15 -radix float32} /lstm_test/u0/data.d1 {-height 15 -radix float32} /lstm_test/u0/data.d2 {-height 15 -radix float32} /lstm_test/u0/data.d3 {-height 15 -radix float32}} /lstm_test/u0/data
add wave -noupdate /lstm_test/u0/fpu_op
add wave -noupdate /lstm_test/u0/fpu_rs
add wave -noupdate /lstm_test/u0/fpu_ce
add wave -noupdate /lstm_test/u0/fpu_dy
add wave -noupdate /lstm_test/u0/flags
add wave -noupdate /lstm_test/u0/reg_en
add wave -noupdate /lstm_test/u0/reg_cl
add wave -noupdate /lstm_test/u0/reg_rs
add wave -noupdate /lstm_test/u0/reg_in
add wave -noupdate -childformat {{/lstm_test/u0/reg_re.d0 -radix float32} {/lstm_test/u0/reg_re.d1 -radix float32} {/lstm_test/u0/reg_re.d2 -radix float32} {/lstm_test/u0/reg_re.d3 -radix float32} {/lstm_test/u0/reg_re.d4 -radix float32} {/lstm_test/u0/reg_re.d5 -radix float32} {/lstm_test/u0/reg_re.d6 -radix float32} {/lstm_test/u0/reg_re.d7 -radix float32}} -expand -subitemconfig {/lstm_test/u0/reg_re.d0 {-radix float32} /lstm_test/u0/reg_re.d1 {-radix float32} /lstm_test/u0/reg_re.d2 {-radix float32} /lstm_test/u0/reg_re.d3 {-radix float32} /lstm_test/u0/reg_re.d4 {-radix float32} /lstm_test/u0/reg_re.d5 {-radix float32} /lstm_test/u0/reg_re.d6 {-radix float32} /lstm_test/u0/reg_re.d7 {-radix float32}} /lstm_test/u0/reg_re
add wave -noupdate /lstm_test/u0/ceg_en
add wave -noupdate /lstm_test/u0/ceg_cl
add wave -noupdate /lstm_test/u0/ceg_rs
add wave -noupdate /lstm_test/u0/heg_en
add wave -noupdate /lstm_test/u0/heg_cl
add wave -noupdate /lstm_test/u0/heg_rs
add wave -noupdate /lstm_test/u0/ceg_in
add wave -noupdate -radix float32 /lstm_test/u0/ceg_re
add wave -noupdate /lstm_test/u0/heg_in
add wave -noupdate /lstm_test/u0/heg_re
add wave -noupdate /lstm_test/u0/neg
add wave -noupdate /lstm_test/u0/tmp
add wave -noupdate /lstm_test/u0/f2i_in
add wave -noupdate -radix unsigned /lstm_test/u0/f2i_re
add wave -noupdate /lstm_test/u0/lut_ce
add wave -noupdate /lstm_test/u0/lut_rd
add wave -noupdate -radix unsigned /lstm_test/u0/lut_ad
add wave -noupdate -radix float32 /lstm_test/u0/lut_re
add wave -noupdate /lstm_test/u0/cnt_rs
add wave -noupdate /lstm_test/u0/cnt_cl
add wave -noupdate /lstm_test/u0/cnt_en
add wave -noupdate /lstm_test/u0/cnt
add wave -noupdate /lstm_test/u0/STATE
add wave -noupdate /lstm_test/u0/NEXT_STATE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1226012 ps} 0}
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
WaveRestoreZoom {1041009 ps} {1444465 ps}
