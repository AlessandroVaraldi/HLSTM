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
add wave -noupdate /lstm_test/reg_en
add wave -noupdate /lstm_test/reg_cl
add wave -noupdate /lstm_test/reg_rs
add wave -noupdate -radix unsigned /lstm_test/output
add wave -noupdate /lstm_test/u0/clock
add wave -noupdate /lstm_test/u0/reset
add wave -noupdate /lstm_test/u0/clear
add wave -noupdate /lstm_test/u0/start
add wave -noupdate /lstm_test/u0/input
add wave -noupdate /lstm_test/u0/h_out
add wave -noupdate /lstm_test/u0/ready
add wave -noupdate /lstm_test/u0/done
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
add wave -noupdate /lstm_test/u0/x
add wave -noupdate /lstm_test/u0/x0
add wave -noupdate /lstm_test/u0/x1
add wave -noupdate /lstm_test/u0/x2
add wave -noupdate /lstm_test/u0/x3
add wave -noupdate /lstm_test/u0/x4
add wave -noupdate /lstm_test/u0/x5
add wave -noupdate /lstm_test/u0/x6
add wave -noupdate /lstm_test/u0/x7
add wave -noupdate /lstm_test/u0/x8
add wave -noupdate /lstm_test/u0/x9
add wave -noupdate /lstm_test/u0/g_rst
add wave -noupdate /lstm_test/u0/g_clr
add wave -noupdate /lstm_test/u0/g_sta
add wave -noupdate /lstm_test/u0/gdone
add wave -noupdate /lstm_test/u0/g_xin
add wave -noupdate /lstm_test/u0/g_hin
add wave -noupdate /lstm_test/u0/tanh
add wave -noupdate /lstm_test/u0/sigm
add wave -noupdate /lstm_test/u0/g_wx
add wave -noupdate /lstm_test/u0/g_bx
add wave -noupdate /lstm_test/u0/g_wh
add wave -noupdate /lstm_test/u0/g_bh
add wave -noupdate /lstm_test/u0/hreg_en
add wave -noupdate /lstm_test/u0/hreg_rs
add wave -noupdate /lstm_test/u0/hreg_cl
add wave -noupdate -radix decimal /lstm_test/u0/hreg_in
add wave -noupdate -radix unsigned /lstm_test/u0/hreg_re
add wave -noupdate /lstm_test/u0/sreg_en
add wave -noupdate /lstm_test/u0/sreg_rs
add wave -noupdate /lstm_test/u0/sreg_cl
add wave -noupdate /lstm_test/u0/sreg_in
add wave -noupdate -radix unsigned /lstm_test/u0/sreg_re
add wave -noupdate /lstm_test/u0/freg_en
add wave -noupdate /lstm_test/u0/freg_rs
add wave -noupdate /lstm_test/u0/freg_cl
add wave -noupdate /lstm_test/u0/freg_in
add wave -noupdate /lstm_test/u0/freg_re
add wave -noupdate /lstm_test/u0/ireg_en
add wave -noupdate /lstm_test/u0/ireg_rs
add wave -noupdate /lstm_test/u0/ireg_cl
add wave -noupdate /lstm_test/u0/ireg_in
add wave -noupdate /lstm_test/u0/ireg_re
add wave -noupdate /lstm_test/u0/creg_en
add wave -noupdate /lstm_test/u0/creg_rs
add wave -noupdate /lstm_test/u0/creg_cl
add wave -noupdate /lstm_test/u0/creg_in
add wave -noupdate /lstm_test/u0/creg_re
add wave -noupdate /lstm_test/u0/oreg_en
add wave -noupdate /lstm_test/u0/oreg_rs
add wave -noupdate /lstm_test/u0/oreg_cl
add wave -noupdate /lstm_test/u0/oreg_in
add wave -noupdate /lstm_test/u0/oreg_re
add wave -noupdate /lstm_test/u0/icreg_en
add wave -noupdate /lstm_test/u0/icreg_rs
add wave -noupdate /lstm_test/u0/icreg_cl
add wave -noupdate /lstm_test/u0/icreg_in
add wave -noupdate -radix unsigned /lstm_test/u0/icreg_re
add wave -noupdate /lstm_test/u0/streg_en
add wave -noupdate /lstm_test/u0/streg_rs
add wave -noupdate /lstm_test/u0/streg_cl
add wave -noupdate /lstm_test/u0/streg_in
add wave -noupdate -radix unsigned /lstm_test/u0/streg_re
add wave -noupdate /lstm_test/u0/lut_ce
add wave -noupdate /lstm_test/u0/lut_rd
add wave -noupdate /lstm_test/u0/lut_wr
add wave -noupdate -radix unsigned /lstm_test/u0/lut_ad
add wave -noupdate /lstm_test/u0/lut_in
add wave -noupdate -radix unsigned /lstm_test/u0/lut_re
add wave -noupdate /lstm_test/u0/cnt_rs
add wave -noupdate /lstm_test/u0/cnt_cl
add wave -noupdate /lstm_test/u0/cnt_en
add wave -noupdate /lstm_test/u0/cnt
add wave -noupdate -radix unsigned /lstm_test/u0/mul_a
add wave -noupdate -radix unsigned /lstm_test/u0/mul_b
add wave -noupdate -radix unsigned /lstm_test/u0/mul_r
add wave -noupdate /lstm_test/u0/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {344930 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 180
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
WaveRestoreZoom {213052 ps} {410043 ps}
