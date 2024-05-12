onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lstm_test/clock
add wave -noupdate /lstm_test/reset
add wave -noupdate /lstm_test/start
add wave -noupdate /lstm_test/ready
add wave -noupdate /lstm_test/done
add wave -noupdate -radix unsigned /lstm_test/input
add wave -noupdate -radix unsigned /lstm_test/h_out
add wave -noupdate /lstm_test/ram_ce
add wave -noupdate /lstm_test/ram_rd
add wave -noupdate /lstm_test/ram_wr
add wave -noupdate /lstm_test/ram_ad
add wave -noupdate /lstm_test/ram_in
add wave -noupdate /lstm_test/ram_re
add wave -noupdate /lstm_test/reg_en
add wave -noupdate /lstm_test/reg_cl
add wave -noupdate /lstm_test/reg_rs
add wave -noupdate /lstm_test/output
add wave -noupdate /lstm_test/u0/clock
add wave -noupdate /lstm_test/u0/reset
add wave -noupdate /lstm_test/u0/start
add wave -noupdate /lstm_test/u0/input
add wave -noupdate /lstm_test/u0/h_out
add wave -noupdate /lstm_test/u0/ready
add wave -noupdate /lstm_test/u0/done
add wave -noupdate /lstm_test/u0/Wx
add wave -noupdate /lstm_test/u0/Wh
add wave -noupdate /lstm_test/u0/Bx
add wave -noupdate /lstm_test/u0/Bh
add wave -noupdate -childformat {{/lstm_test/u0/Wd.d0 -radix unsigned} {/lstm_test/u0/Wd.d1 -radix unsigned} {/lstm_test/u0/Wd.d2 -radix unsigned} {/lstm_test/u0/Wd.d3 -radix unsigned}} -expand -subitemconfig {/lstm_test/u0/Wd.d0 {-radix unsigned} /lstm_test/u0/Wd.d1 {-radix unsigned} /lstm_test/u0/Wd.d2 {-radix unsigned} /lstm_test/u0/Wd.d3 {-radix unsigned}} /lstm_test/u0/Wd
add wave -noupdate -childformat {{/lstm_test/u0/Bd.d0 -radix unsigned} {/lstm_test/u0/Bd.d1 -radix unsigned} {/lstm_test/u0/Bd.d2 -radix unsigned} {/lstm_test/u0/Bd.d3 -radix unsigned}} -expand -subitemconfig {/lstm_test/u0/Bd.d0 {-radix unsigned} /lstm_test/u0/Bd.d1 {-radix unsigned} /lstm_test/u0/Bd.d2 {-radix unsigned} /lstm_test/u0/Bd.d3 {-radix unsigned}} /lstm_test/u0/Bd
add wave -noupdate /lstm_test/u0/Wl
add wave -noupdate /lstm_test/u0/Bl
add wave -noupdate /lstm_test/u0/drg_en
add wave -noupdate /lstm_test/u0/drg_rs
add wave -noupdate /lstm_test/u0/drg_cl
add wave -noupdate /lstm_test/u0/lrg_en
add wave -noupdate /lstm_test/u0/lrg_rs
add wave -noupdate /lstm_test/u0/lrg_cl
add wave -noupdate -radix unsigned -childformat {{/lstm_test/u0/drg.d0 -radix unsigned} {/lstm_test/u0/drg.d1 -radix unsigned} {/lstm_test/u0/drg.d2 -radix unsigned} {/lstm_test/u0/drg.d3 -radix unsigned}} -expand -subitemconfig {/lstm_test/u0/drg.d0 {-radix unsigned} /lstm_test/u0/drg.d1 {-radix unsigned} /lstm_test/u0/drg.d2 {-radix unsigned} /lstm_test/u0/drg.d3 {-radix unsigned}} /lstm_test/u0/drg
add wave -noupdate -radix unsigned -childformat {{/lstm_test/u0/dense.d0 -radix unsigned} {/lstm_test/u0/dense.d1 -radix unsigned} {/lstm_test/u0/dense.d2 -radix unsigned} {/lstm_test/u0/dense.d3 -radix unsigned}} -expand -subitemconfig {/lstm_test/u0/dense.d0 {-radix unsigned} /lstm_test/u0/dense.d1 {-radix unsigned} /lstm_test/u0/dense.d2 {-radix unsigned} /lstm_test/u0/dense.d3 {-radix unsigned}} /lstm_test/u0/dense
add wave -noupdate -radix unsigned -childformat {{/lstm_test/u0/lrg.d0 -radix unsigned} {/lstm_test/u0/lrg.d1 -radix unsigned} {/lstm_test/u0/lrg.d2 -radix unsigned} {/lstm_test/u0/lrg.d3 -radix unsigned}} -expand -subitemconfig {/lstm_test/u0/lrg.d0 {-radix unsigned} /lstm_test/u0/lrg.d1 {-radix unsigned} /lstm_test/u0/lrg.d2 {-radix unsigned} /lstm_test/u0/lrg.d3 {-radix unsigned}} /lstm_test/u0/lrg
add wave -noupdate -radix unsigned -childformat {{/lstm_test/u0/linear.d0 -radix unsigned} {/lstm_test/u0/linear.d1 -radix unsigned} {/lstm_test/u0/linear.d2 -radix unsigned} {/lstm_test/u0/linear.d3 -radix unsigned}} -expand -subitemconfig {/lstm_test/u0/linear.d0 {-radix unsigned} /lstm_test/u0/linear.d1 {-radix unsigned} /lstm_test/u0/linear.d2 {-radix unsigned} /lstm_test/u0/linear.d3 {-radix unsigned}} /lstm_test/u0/linear
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
add wave -noupdate /lstm_test/u0/hrg_in
add wave -noupdate -radix unsigned /lstm_test/u0/hrg_re
add wave -noupdate /lstm_test/u0/srg_en
add wave -noupdate /lstm_test/u0/srg_rs
add wave -noupdate /lstm_test/u0/srg_cl
add wave -noupdate /lstm_test/u0/srg_in
add wave -noupdate /lstm_test/u0/srg_re
add wave -noupdate /lstm_test/u0/fth_en
add wave -noupdate /lstm_test/u0/fth_rs
add wave -noupdate /lstm_test/u0/fth_cl
add wave -noupdate /lstm_test/u0/fth_in
add wave -noupdate /lstm_test/u0/fth_re
add wave -noupdate /lstm_test/u0/ith_en
add wave -noupdate /lstm_test/u0/ith_rs
add wave -noupdate /lstm_test/u0/ith_cl
add wave -noupdate /lstm_test/u0/ith_in
add wave -noupdate /lstm_test/u0/ith_re
add wave -noupdate /lstm_test/u0/cth_en
add wave -noupdate /lstm_test/u0/cth_rs
add wave -noupdate /lstm_test/u0/cth_cl
add wave -noupdate /lstm_test/u0/cth_in
add wave -noupdate /lstm_test/u0/cth_re
add wave -noupdate /lstm_test/u0/oth_en
add wave -noupdate /lstm_test/u0/oth_rs
add wave -noupdate /lstm_test/u0/oth_cl
add wave -noupdate /lstm_test/u0/oth_in
add wave -noupdate /lstm_test/u0/oth_re
add wave -noupdate /lstm_test/u0/sth_en
add wave -noupdate /lstm_test/u0/sth_rs
add wave -noupdate /lstm_test/u0/sth_cl
add wave -noupdate /lstm_test/u0/sth_in
add wave -noupdate /lstm_test/u0/sth_re
add wave -noupdate /lstm_test/u0/mth_en
add wave -noupdate /lstm_test/u0/mth_rs
add wave -noupdate /lstm_test/u0/mth_cl
add wave -noupdate /lstm_test/u0/mth_in
add wave -noupdate /lstm_test/u0/mth_re
add wave -noupdate /lstm_test/u0/nth_en
add wave -noupdate /lstm_test/u0/nth_rs
add wave -noupdate /lstm_test/u0/nth_cl
add wave -noupdate /lstm_test/u0/nth_in
add wave -noupdate /lstm_test/u0/nth_re
add wave -noupdate /lstm_test/u0/cnv_en
add wave -noupdate /lstm_test/u0/lut_ce
add wave -noupdate /lstm_test/u0/lut_rd
add wave -noupdate /lstm_test/u0/lut_wr
add wave -noupdate /lstm_test/u0/lut_ad
add wave -noupdate /lstm_test/u0/lut_in
add wave -noupdate /lstm_test/u0/lut_re
add wave -noupdate /lstm_test/u0/icmul
add wave -noupdate /lstm_test/u0/osmul
add wave -noupdate /lstm_test/u0/loading
add wave -noupdate /lstm_test/u0/end_act
add wave -noupdate /lstm_test/u0/cnt_rs
add wave -noupdate /lstm_test/u0/cnt_cl
add wave -noupdate /lstm_test/u0/cnt_en
add wave -noupdate /lstm_test/u0/cnt
add wave -noupdate /lstm_test/u0/sum0
add wave -noupdate /lstm_test/u0/sum1
add wave -noupdate /lstm_test/u0/sum2
add wave -noupdate /lstm_test/u0/sum0rg
add wave -noupdate /lstm_test/u0/sum1rg
add wave -noupdate /lstm_test/u0/sum2rg
add wave -noupdate /lstm_test/u0/vrg_en
add wave -noupdate /lstm_test/u0/vrg_rs
add wave -noupdate /lstm_test/u0/vrg_cl
add wave -noupdate /lstm_test/u0/wrg_en
add wave -noupdate /lstm_test/u0/wrg_rs
add wave -noupdate /lstm_test/u0/wrg_cl
add wave -noupdate /lstm_test/u0/current_state
add wave -noupdate /lstm_test/u0/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1134523 ps} 0}
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
WaveRestoreZoom {1006263 ps} {1262263 ps}
