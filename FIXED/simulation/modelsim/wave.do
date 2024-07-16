onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /network_test/clock
add wave -noupdate /network_test/b_ad
add wave -noupdate /network_test/wbxh
add wave -noupdate /network_test/reset
add wave -noupdate /network_test/start
add wave -noupdate /network_test/clear
add wave -noupdate /network_test/ready
add wave -noupdate /network_test/done
add wave -noupdate /network_test/input
add wave -noupdate /network_test/output
add wave -noupdate /network_test/ira_ce
add wave -noupdate /network_test/ira_rd
add wave -noupdate /network_test/ira_wr
add wave -noupdate /network_test/ira_ad
add wave -noupdate /network_test/ira_in
add wave -noupdate /network_test/ira_re
add wave -noupdate /network_test/wra_ce
add wave -noupdate /network_test/wra_rd
add wave -noupdate /network_test/wra_wr
add wave -noupdate /network_test/wra_ad
add wave -noupdate /network_test/wra_in
add wave -noupdate /network_test/wra_re
add wave -noupdate /network_test/reg_en
add wave -noupdate /network_test/reg_cl
add wave -noupdate /network_test/reg_rs
add wave -noupdate /network_test/output_line
add wave -noupdate -radix decimal /network_test/u0/clock
add wave -noupdate -radix decimal /network_test/u0/reset
add wave -noupdate -radix decimal /network_test/u0/clear
add wave -noupdate -radix decimal /network_test/u0/start
add wave -noupdate -radix decimal /network_test/u0/input
add wave -noupdate -radix decimal /network_test/u0/b_ad
add wave -noupdate -radix decimal /network_test/u0/w_ad
add wave -noupdate -radix decimal -childformat {{/network_test/u0/wbxh.wx -radix decimal} {/network_test/u0/wbxh.bx -radix decimal} {/network_test/u0/wbxh.wh -radix decimal} {/network_test/u0/wbxh.bh -radix decimal}} -expand -subitemconfig {/network_test/u0/wbxh.wx {-radix decimal} /network_test/u0/wbxh.bx {-radix decimal} /network_test/u0/wbxh.wh {-radix decimal} /network_test/u0/wbxh.bh {-radix decimal}} /network_test/u0/wbxh
add wave -noupdate -radix decimal /network_test/u0/output
add wave -noupdate -radix decimal /network_test/u0/ready
add wave -noupdate -radix decimal /network_test/u0/done
add wave -noupdate -radix decimal /network_test/u0/shf_en
add wave -noupdate -radix decimal /network_test/u0/shf_rs
add wave -noupdate -radix decimal /network_test/u0/x0
add wave -noupdate -radix decimal /network_test/u0/x1
add wave -noupdate -radix decimal /network_test/u0/x2
add wave -noupdate -radix decimal /network_test/u0/x3
add wave -noupdate -radix decimal /network_test/u0/x4
add wave -noupdate -radix decimal /network_test/u0/x5
add wave -noupdate -radix decimal /network_test/u0/x6
add wave -noupdate -radix decimal /network_test/u0/x7
add wave -noupdate -radix decimal /network_test/u0/x8
add wave -noupdate -radix decimal /network_test/u0/x9
add wave -noupdate -radix decimal /network_test/u0/cycle
add wave -noupdate -radix decimal /network_test/u0/c_sta
add wave -noupdate -radix decimal /network_test/u0/c_clr
add wave -noupdate -radix decimal /network_test/u0/cdone
add wave -noupdate -radix decimal /network_test/u0/x
add wave -noupdate -radix decimal /network_test/u0/reg_en
add wave -noupdate -radix decimal /network_test/u0/reg_rs
add wave -noupdate -radix decimal /network_test/u0/reg_cl
add wave -noupdate -radix decimal /network_test/u0/reg_in
add wave -noupdate -radix decimal /network_test/u0/reg_re
add wave -noupdate -radix decimal /network_test/u0/o_sta
add wave -noupdate -radix decimal /network_test/u0/o_clr
add wave -noupdate -radix decimal /network_test/u0/odone
add wave -noupdate -radix decimal /network_test/u0/cnt_rs
add wave -noupdate -radix decimal /network_test/u0/cnt_cl
add wave -noupdate -radix decimal /network_test/u0/cnt_en
add wave -noupdate -radix decimal /network_test/u0/cnt
add wave -noupdate -radix symbolic /network_test/u0/q
add wave -noupdate -radix symbolic /network_test/u0/p
add wave -noupdate -radix decimal /network_test/u0/u0/clock
add wave -noupdate -radix decimal /network_test/u0/u0/reset
add wave -noupdate -radix decimal /network_test/u0/u0/clear
add wave -noupdate -radix decimal /network_test/u0/u0/start
add wave -noupdate -radix decimal /network_test/u0/u0/input
add wave -noupdate -radix decimal /network_test/u0/u0/b_ad
add wave -noupdate -radix decimal /network_test/u0/u0/w_ad
add wave -noupdate -radix decimal -childformat {{/network_test/u0/u0/wbxh.wx -radix decimal} {/network_test/u0/u0/wbxh.bx -radix decimal} {/network_test/u0/u0/wbxh.wh -radix decimal} {/network_test/u0/u0/wbxh.bh -radix decimal}} -subitemconfig {/network_test/u0/u0/wbxh.wx {-radix decimal} /network_test/u0/u0/wbxh.bx {-radix decimal} /network_test/u0/u0/wbxh.wh {-radix decimal} /network_test/u0/u0/wbxh.bh {-radix decimal}} /network_test/u0/u0/wbxh
add wave -noupdate -radix decimal /network_test/u0/u0/h_out
add wave -noupdate -radix decimal /network_test/u0/u0/done
add wave -noupdate -radix decimal /network_test/u0/u0/xmac
add wave -noupdate -radix decimal /network_test/u0/u0/hmac
add wave -noupdate -radix decimal /network_test/u0/u0/tanh
add wave -noupdate -radix decimal /network_test/u0/u0/sigm
add wave -noupdate -radix decimal /network_test/u0/u0/c_new
add wave -noupdate -radix decimal /network_test/u0/u0/sum
add wave -noupdate -radix decimal /network_test/u0/u0/mul_a
add wave -noupdate -radix decimal /network_test/u0/u0/mul_b
add wave -noupdate -radix decimal /network_test/u0/u0/mul_r
add wave -noupdate -radix decimal /network_test/u0/u0/reg_cl
add wave -noupdate -radix decimal /network_test/u0/u0/rea_en
add wave -noupdate -radix decimal /network_test/u0/u0/rea_in
add wave -noupdate -radix decimal /network_test/u0/u0/rea_re
add wave -noupdate -radix decimal /network_test/u0/u0/reb_en
add wave -noupdate -radix decimal /network_test/u0/u0/reb_in
add wave -noupdate -radix decimal /network_test/u0/u0/reb_re
add wave -noupdate -radix decimal /network_test/u0/u0/rec_en
add wave -noupdate -radix decimal /network_test/u0/u0/rec_in
add wave -noupdate -radix decimal /network_test/u0/u0/rec_re
add wave -noupdate -radix decimal /network_test/u0/u0/ref_en
add wave -noupdate -radix decimal /network_test/u0/u0/ref_in
add wave -noupdate -radix decimal /network_test/u0/u0/ref_re
add wave -noupdate -radix decimal /network_test/u0/u0/rei_en
add wave -noupdate -radix decimal /network_test/u0/u0/rei_in
add wave -noupdate -radix decimal /network_test/u0/u0/rei_re
add wave -noupdate -radix decimal /network_test/u0/u0/rez_en
add wave -noupdate -radix decimal /network_test/u0/u0/rez_in
add wave -noupdate -radix decimal /network_test/u0/u0/rez_re
add wave -noupdate -radix decimal /network_test/u0/u0/reo_en
add wave -noupdate -radix decimal /network_test/u0/u0/reo_cl
add wave -noupdate -radix decimal /network_test/u0/u0/reo_in
add wave -noupdate -radix decimal /network_test/u0/u0/reo_re
add wave -noupdate -radix decimal /network_test/u0/u0/reh_en
add wave -noupdate -radix decimal /network_test/u0/u0/reh_in
add wave -noupdate -radix decimal /network_test/u0/u0/reh_re
add wave -noupdate -radix decimal /network_test/u0/u0/lut_ce
add wave -noupdate -radix decimal /network_test/u0/u0/lut_rd
add wave -noupdate -radix decimal /network_test/u0/u0/lut_wr
add wave -noupdate -radix decimal /network_test/u0/u0/lut_ad
add wave -noupdate -radix decimal /network_test/u0/u0/lut_in
add wave -noupdate -radix decimal /network_test/u0/u0/lut_re
add wave -noupdate -radix decimal /network_test/u0/u0/sgn
add wave -noupdate /network_test/u0/u0/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14833083 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 195
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
WaveRestoreZoom {14817202 ps} {14868237 ps}
