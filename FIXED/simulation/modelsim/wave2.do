onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lstm_test/clock
add wave -noupdate /lstm_test/reset
add wave -noupdate /lstm_test/start
add wave -noupdate /lstm_test/ready
add wave -noupdate /lstm_test/done
add wave -noupdate -radix unsigned /lstm_test/input
add wave -noupdate -radix unsigned -childformat {{/lstm_test/h_out(15) -radix unsigned} {/lstm_test/h_out(14) -radix unsigned} {/lstm_test/h_out(13) -radix unsigned} {/lstm_test/h_out(12) -radix unsigned} {/lstm_test/h_out(11) -radix unsigned} {/lstm_test/h_out(10) -radix unsigned} {/lstm_test/h_out(9) -radix unsigned} {/lstm_test/h_out(8) -radix unsigned} {/lstm_test/h_out(7) -radix unsigned} {/lstm_test/h_out(6) -radix unsigned} {/lstm_test/h_out(5) -radix unsigned} {/lstm_test/h_out(4) -radix unsigned} {/lstm_test/h_out(3) -radix unsigned} {/lstm_test/h_out(2) -radix unsigned} {/lstm_test/h_out(1) -radix unsigned} {/lstm_test/h_out(0) -radix unsigned}} -subitemconfig {/lstm_test/h_out(15) {-height 15 -radix unsigned} /lstm_test/h_out(14) {-height 15 -radix unsigned} /lstm_test/h_out(13) {-height 15 -radix unsigned} /lstm_test/h_out(12) {-height 15 -radix unsigned} /lstm_test/h_out(11) {-height 15 -radix unsigned} /lstm_test/h_out(10) {-height 15 -radix unsigned} /lstm_test/h_out(9) {-height 15 -radix unsigned} /lstm_test/h_out(8) {-height 15 -radix unsigned} /lstm_test/h_out(7) {-height 15 -radix unsigned} /lstm_test/h_out(6) {-height 15 -radix unsigned} /lstm_test/h_out(5) {-height 15 -radix unsigned} /lstm_test/h_out(4) {-height 15 -radix unsigned} /lstm_test/h_out(3) {-height 15 -radix unsigned} /lstm_test/h_out(2) {-height 15 -radix unsigned} /lstm_test/h_out(1) {-height 15 -radix unsigned} /lstm_test/h_out(0) {-height 15 -radix unsigned}} /lstm_test/h_out
add wave -noupdate /lstm_test/ram_ce
add wave -noupdate /lstm_test/ram_rd
add wave -noupdate /lstm_test/ram_wr
add wave -noupdate -radix unsigned /lstm_test/ram_ad
add wave -noupdate -radix unsigned /lstm_test/ram_in
add wave -noupdate -radix unsigned /lstm_test/ram_re
add wave -noupdate /lstm_test/reg_en
add wave -noupdate /lstm_test/reg_cl
add wave -noupdate /lstm_test/reg_rs
add wave -noupdate /lstm_test/output
add wave -noupdate /lstm_test/u0/clock
add wave -noupdate /lstm_test/u0/reset
add wave -noupdate /lstm_test/u0/start
add wave -noupdate -radix unsigned /lstm_test/u0/input
add wave -noupdate -radix unsigned /lstm_test/u0/h_out
add wave -noupdate /lstm_test/u0/ready
add wave -noupdate /lstm_test/u0/done
add wave -noupdate -radix unsigned /lstm_test/u0/Wx
add wave -noupdate -radix unsigned /lstm_test/u0/Wh
add wave -noupdate -radix unsigned /lstm_test/u0/Bx
add wave -noupdate -radix unsigned /lstm_test/u0/Bh
add wave -noupdate -radix unsigned /lstm_test/u0/Wd
add wave -noupdate -radix unsigned /lstm_test/u0/Bd
add wave -noupdate -radix unsigned /lstm_test/u0/Wl
add wave -noupdate -radix unsigned /lstm_test/u0/Bl
add wave -noupdate /lstm_test/u0/shf_en
add wave -noupdate /lstm_test/u0/shf_rs
add wave -noupdate -radix unsigned /lstm_test/u0/x
add wave -noupdate -radix unsigned /lstm_test/u0/x0
add wave -noupdate -radix unsigned /lstm_test/u0/x1
add wave -noupdate -radix unsigned /lstm_test/u0/x2
add wave -noupdate -radix unsigned /lstm_test/u0/x3
add wave -noupdate -radix unsigned /lstm_test/u0/x4
add wave -noupdate -radix unsigned /lstm_test/u0/x5
add wave -noupdate -radix unsigned /lstm_test/u0/x6
add wave -noupdate -radix unsigned /lstm_test/u0/x7
add wave -noupdate -radix unsigned /lstm_test/u0/x8
add wave -noupdate -radix unsigned /lstm_test/u0/x9
add wave -noupdate /lstm_test/u0/g_rst
add wave -noupdate /lstm_test/u0/f_sta
add wave -noupdate /lstm_test/u0/i_sta
add wave -noupdate /lstm_test/u0/c_sta
add wave -noupdate /lstm_test/u0/o_sta
add wave -noupdate /lstm_test/u0/fdone
add wave -noupdate /lstm_test/u0/idone
add wave -noupdate /lstm_test/u0/cdone
add wave -noupdate /lstm_test/u0/odone
add wave -noupdate -radix unsigned /lstm_test/u0/frg_re
add wave -noupdate -radix unsigned /lstm_test/u0/irg_re
add wave -noupdate -radix unsigned /lstm_test/u0/crg_re
add wave -noupdate -radix unsigned /lstm_test/u0/org_re
add wave -noupdate -radix unsigned /lstm_test/u0/ftanh
add wave -noupdate -radix unsigned /lstm_test/u0/fsigm
add wave -noupdate -radix unsigned /lstm_test/u0/itanh
add wave -noupdate -radix unsigned /lstm_test/u0/isigm
add wave -noupdate -radix unsigned /lstm_test/u0/ctanh
add wave -noupdate -radix unsigned /lstm_test/u0/otanh
add wave -noupdate -radix unsigned /lstm_test/u0/osigm
add wave -noupdate -radix unsigned /lstm_test/u0/stanh
add wave -noupdate /lstm_test/u0/hrg_en
add wave -noupdate /lstm_test/u0/hrg_rs
add wave -noupdate /lstm_test/u0/hrg_cl
add wave -noupdate -radix unsigned /lstm_test/u0/hrg_in
add wave -noupdate -radix unsigned /lstm_test/u0/hrg_re
add wave -noupdate /lstm_test/u0/srg_en
add wave -noupdate /lstm_test/u0/srg_rs
add wave -noupdate /lstm_test/u0/srg_cl
add wave -noupdate -radix unsigned /lstm_test/u0/srg_in
add wave -noupdate -radix unsigned /lstm_test/u0/srg_re
add wave -noupdate /lstm_test/u0/fth_en
add wave -noupdate /lstm_test/u0/fth_rs
add wave -noupdate /lstm_test/u0/fth_cl
add wave -noupdate -radix unsigned /lstm_test/u0/fth_in
add wave -noupdate -radix unsigned /lstm_test/u0/fth_re
add wave -noupdate /lstm_test/u0/ith_en
add wave -noupdate /lstm_test/u0/ith_rs
add wave -noupdate /lstm_test/u0/ith_cl
add wave -noupdate -radix unsigned /lstm_test/u0/ith_in
add wave -noupdate -radix unsigned /lstm_test/u0/ith_re
add wave -noupdate /lstm_test/u0/cth_en
add wave -noupdate /lstm_test/u0/cth_rs
add wave -noupdate /lstm_test/u0/cth_cl
add wave -noupdate -radix unsigned /lstm_test/u0/cth_in
add wave -noupdate -radix unsigned /lstm_test/u0/cth_re
add wave -noupdate /lstm_test/u0/oth_en
add wave -noupdate /lstm_test/u0/oth_rs
add wave -noupdate /lstm_test/u0/oth_cl
add wave -noupdate -radix unsigned /lstm_test/u0/oth_in
add wave -noupdate -radix unsigned /lstm_test/u0/oth_re
add wave -noupdate /lstm_test/u0/sth_en
add wave -noupdate /lstm_test/u0/sth_rs
add wave -noupdate /lstm_test/u0/sth_cl
add wave -noupdate -radix unsigned /lstm_test/u0/sth_in
add wave -noupdate -radix unsigned /lstm_test/u0/sth_re
add wave -noupdate /lstm_test/u0/mth_en
add wave -noupdate /lstm_test/u0/mth_rs
add wave -noupdate /lstm_test/u0/mth_cl
add wave -noupdate -radix unsigned /lstm_test/u0/mth_in
add wave -noupdate -radix unsigned /lstm_test/u0/mth_re
add wave -noupdate /lstm_test/u0/nth_en
add wave -noupdate /lstm_test/u0/nth_rs
add wave -noupdate /lstm_test/u0/nth_cl
add wave -noupdate -radix unsigned /lstm_test/u0/nth_in
add wave -noupdate -radix unsigned /lstm_test/u0/nth_re
add wave -noupdate /lstm_test/u0/cnv_en
add wave -noupdate /lstm_test/u0/lut_ce
add wave -noupdate /lstm_test/u0/lut_rd
add wave -noupdate /lstm_test/u0/lut_wr
add wave -noupdate -radix unsigned /lstm_test/u0/lut_ad
add wave -noupdate -radix unsigned /lstm_test/u0/lut_in
add wave -noupdate -radix unsigned /lstm_test/u0/lut_re
add wave -noupdate -radix unsigned /lstm_test/u0/icmul
add wave -noupdate -radix unsigned /lstm_test/u0/osmul
add wave -noupdate /lstm_test/u0/loading
add wave -noupdate /lstm_test/u0/end_act
add wave -noupdate /lstm_test/u0/cnt_rs
add wave -noupdate /lstm_test/u0/cnt_cl
add wave -noupdate /lstm_test/u0/cnt_en
add wave -noupdate /lstm_test/u0/cnt
add wave -noupdate /lstm_test/u0/current_state
add wave -noupdate /lstm_test/u0/next_state
add wave -noupdate /lstm_test/u0/u0/clock
add wave -noupdate /lstm_test/u0/u0/reset
add wave -noupdate /lstm_test/u0/u0/start
add wave -noupdate -radix unsigned /lstm_test/u0/u0/input
add wave -noupdate -radix unsigned /lstm_test/u0/u0/ht_in
add wave -noupdate -radix unsigned /lstm_test/u0/u0/wx_in
add wave -noupdate -radix unsigned /lstm_test/u0/u0/bx_in
add wave -noupdate -radix unsigned /lstm_test/u0/u0/wh_in
add wave -noupdate -radix unsigned /lstm_test/u0/u0/bh_in
add wave -noupdate -radix unsigned /lstm_test/u0/u0/wxsum
add wave -noupdate /lstm_test/u0/u0/done
add wave -noupdate -radix binary /lstm_test/u0/u0/xmac
add wave -noupdate -radix binary /lstm_test/u0/u0/hmac
add wave -noupdate -radix binary /lstm_test/u0/u0/sum
add wave -noupdate /lstm_test/u0/u0/re0_rs
add wave -noupdate /lstm_test/u0/u0/re0_cl
add wave -noupdate /lstm_test/u0/u0/re0_en
add wave -noupdate /lstm_test/u0/u0/re1_rs
add wave -noupdate /lstm_test/u0/u0/re1_cl
add wave -noupdate /lstm_test/u0/u0/re1_en
add wave -noupdate -radix unsigned /lstm_test/u0/u0/re0_in
add wave -noupdate -radix unsigned /lstm_test/u0/u0/re0_re
add wave -noupdate -radix unsigned /lstm_test/u0/u0/re1_in
add wave -noupdate -radix unsigned /lstm_test/u0/u0/re1_re
add wave -noupdate /lstm_test/u0/u0/current_state
add wave -noupdate /lstm_test/u0/u0/next_state
add wave -noupdate /lstm_test/u0/u0/u2/clock
add wave -noupdate -radix binary /lstm_test/u0/u0/u2/in_a
add wave -noupdate -radix binary /lstm_test/u0/u0/u2/in_b
add wave -noupdate -radix binary /lstm_test/u0/u0/u2/res
add wave -noupdate -radix binary /lstm_test/u0/u0/u2/mul
add wave -noupdate /lstm_test/u0/u0/u2/sgn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {217132 ps} 0}
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
WaveRestoreZoom {203605 ps} {262650 ps}
