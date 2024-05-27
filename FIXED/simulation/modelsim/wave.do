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
add wave -noupdate -radix decimal /network_test/input
add wave -noupdate -radix decimal /network_test/output
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
add wave -noupdate /network_test/u0/clock
add wave -noupdate /network_test/u0/reset
add wave -noupdate /network_test/u0/clear
add wave -noupdate /network_test/u0/start
add wave -noupdate /network_test/u0/input
add wave -noupdate /network_test/u0/b_ad
add wave -noupdate /network_test/u0/w_ad
add wave -noupdate /network_test/u0/wbxh
add wave -noupdate /network_test/u0/output
add wave -noupdate /network_test/u0/ready
add wave -noupdate /network_test/u0/done
add wave -noupdate /network_test/u0/shf_en
add wave -noupdate /network_test/u0/shf_rs
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
add wave -noupdate /network_test/u0/cycle
add wave -noupdate /network_test/u0/c_sta
add wave -noupdate /network_test/u0/c_clr
add wave -noupdate /network_test/u0/cdone
add wave -noupdate -radix decimal /network_test/u0/x
add wave -noupdate /network_test/u0/h_out
add wave -noupdate /network_test/u0/reg_en
add wave -noupdate /network_test/u0/reg_rs
add wave -noupdate /network_test/u0/reg_cl
add wave -noupdate -radix decimal /network_test/u0/reg_in
add wave -noupdate /network_test/u0/reg_re
add wave -noupdate /network_test/u0/o_sta
add wave -noupdate /network_test/u0/o_clr
add wave -noupdate /network_test/u0/odone
add wave -noupdate /network_test/u0/cnt_rs
add wave -noupdate /network_test/u0/cnt_cl
add wave -noupdate /network_test/u0/cnt_en
add wave -noupdate /network_test/u0/cnt
add wave -noupdate /network_test/u0/q
add wave -noupdate /network_test/u0/p
add wave -noupdate /network_test/u0/u0/clock
add wave -noupdate /network_test/u0/u0/reset
add wave -noupdate /network_test/u0/u0/clear
add wave -noupdate /network_test/u0/u0/start
add wave -noupdate /network_test/u0/u0/input
add wave -noupdate /network_test/u0/u0/b_ad
add wave -noupdate /network_test/u0/u0/w_ad
add wave -noupdate /network_test/u0/u0/wbxh
add wave -noupdate /network_test/u0/u0/h_out
add wave -noupdate /network_test/u0/u0/done
add wave -noupdate -radix decimal -childformat {{/network_test/u0/u0/wx.d0 -radix decimal} {/network_test/u0/u0/wx.d1 -radix decimal} {/network_test/u0/u0/wx.d2 -radix decimal} {/network_test/u0/u0/wx.d3 -radix decimal}} -subitemconfig {/network_test/u0/u0/wx.d0 {-radix decimal} /network_test/u0/u0/wx.d1 {-radix decimal} /network_test/u0/u0/wx.d2 {-radix decimal} /network_test/u0/u0/wx.d3 {-radix decimal}} /network_test/u0/u0/wx
add wave -noupdate -radix decimal /network_test/u0/u0/bx
add wave -noupdate -radix decimal /network_test/u0/u0/wh
add wave -noupdate -radix decimal /network_test/u0/u0/bh
add wave -noupdate /network_test/u0/u0/g_rst
add wave -noupdate /network_test/u0/u0/g_clr
add wave -noupdate /network_test/u0/u0/g_sta
add wave -noupdate /network_test/u0/u0/gdone
add wave -noupdate /network_test/u0/u0/g_xin
add wave -noupdate /network_test/u0/u0/g_hin
add wave -noupdate -radix decimal /network_test/u0/u0/tanh
add wave -noupdate -radix decimal /network_test/u0/u0/sigm
add wave -noupdate -radix decimal /network_test/u0/u0/g_wx
add wave -noupdate -radix decimal /network_test/u0/u0/g_bx
add wave -noupdate -radix decimal /network_test/u0/u0/g_wh
add wave -noupdate -radix decimal /network_test/u0/u0/g_bh
add wave -noupdate /network_test/u0/u0/hreg_en
add wave -noupdate /network_test/u0/u0/reg_rs
add wave -noupdate /network_test/u0/u0/reg_cl
add wave -noupdate /network_test/u0/u0/hreg_in
add wave -noupdate /network_test/u0/u0/hreg_re
add wave -noupdate /network_test/u0/u0/sreg_en
add wave -noupdate /network_test/u0/u0/sreg_cl
add wave -noupdate -radix decimal /network_test/u0/u0/sreg_in
add wave -noupdate /network_test/u0/u0/sreg_re
add wave -noupdate /network_test/u0/u0/freg_en
add wave -noupdate /network_test/u0/u0/freg_cl
add wave -noupdate /network_test/u0/u0/freg_in
add wave -noupdate /network_test/u0/u0/freg_re
add wave -noupdate /network_test/u0/u0/ireg_en
add wave -noupdate /network_test/u0/u0/ireg_cl
add wave -noupdate /network_test/u0/u0/ireg_in
add wave -noupdate /network_test/u0/u0/ireg_re
add wave -noupdate /network_test/u0/u0/creg_en
add wave -noupdate /network_test/u0/u0/creg_cl
add wave -noupdate /network_test/u0/u0/creg_in
add wave -noupdate /network_test/u0/u0/creg_re
add wave -noupdate /network_test/u0/u0/oreg_en
add wave -noupdate /network_test/u0/u0/oreg_cl
add wave -noupdate /network_test/u0/u0/oreg_in
add wave -noupdate /network_test/u0/u0/oreg_re
add wave -noupdate /network_test/u0/u0/icreg_en
add wave -noupdate /network_test/u0/u0/icreg_cl
add wave -noupdate /network_test/u0/u0/icreg_in
add wave -noupdate /network_test/u0/u0/icreg_re
add wave -noupdate /network_test/u0/u0/streg_en
add wave -noupdate /network_test/u0/u0/streg_cl
add wave -noupdate /network_test/u0/u0/streg_in
add wave -noupdate /network_test/u0/u0/streg_re
add wave -noupdate /network_test/u0/u0/lut_ce
add wave -noupdate /network_test/u0/u0/lut_rd
add wave -noupdate /network_test/u0/u0/lut_wr
add wave -noupdate -radix decimal /network_test/u0/u0/lut_ad
add wave -noupdate /network_test/u0/u0/lut_in
add wave -noupdate -radix decimal /network_test/u0/u0/lut_re
add wave -noupdate /network_test/u0/u0/mul_a
add wave -noupdate /network_test/u0/u0/mul_b
add wave -noupdate /network_test/u0/u0/mul_r
add wave -noupdate /network_test/u0/u0/q
add wave -noupdate /network_test/u0/u0/u0/clock
add wave -noupdate /network_test/u0/u0/u0/reset
add wave -noupdate /network_test/u0/u0/u0/clear
add wave -noupdate /network_test/u0/u0/u0/start
add wave -noupdate -radix decimal /network_test/u0/u0/u0/input
add wave -noupdate -radix decimal /network_test/u0/u0/u0/ht_in
add wave -noupdate -radix decimal /network_test/u0/u0/u0/wx_in
add wave -noupdate -radix decimal /network_test/u0/u0/u0/bx_in
add wave -noupdate -radix decimal /network_test/u0/u0/u0/wh_in
add wave -noupdate -radix decimal /network_test/u0/u0/u0/bh_in
add wave -noupdate -radix decimal /network_test/u0/u0/u0/lutad
add wave -noupdate -radix decimal /network_test/u0/u0/u0/lutre
add wave -noupdate -radix decimal /network_test/u0/u0/u0/otanh
add wave -noupdate -radix decimal /network_test/u0/u0/u0/osigm
add wave -noupdate /network_test/u0/u0/u0/rdout
add wave -noupdate /network_test/u0/u0/u0/done
add wave -noupdate -radix decimal /network_test/u0/u0/u0/xmac
add wave -noupdate -radix decimal /network_test/u0/u0/u0/hmac
add wave -noupdate -radix decimal /network_test/u0/u0/u0/sum
add wave -noupdate /network_test/u0/u0/u0/re0_en
add wave -noupdate /network_test/u0/u0/u0/re1_en
add wave -noupdate /network_test/u0/u0/u0/re2_en
add wave -noupdate /network_test/u0/u0/u0/re3_en
add wave -noupdate /network_test/u0/u0/u0/re4_en
add wave -noupdate /network_test/u0/u0/u0/re0_rs
add wave -noupdate /network_test/u0/u0/u0/re1_rs
add wave -noupdate /network_test/u0/u0/u0/re2_rs
add wave -noupdate /network_test/u0/u0/u0/re3_rs
add wave -noupdate /network_test/u0/u0/u0/re4_rs
add wave -noupdate /network_test/u0/u0/u0/re0_cl
add wave -noupdate /network_test/u0/u0/u0/re1_cl
add wave -noupdate /network_test/u0/u0/u0/re2_cl
add wave -noupdate /network_test/u0/u0/u0/re3_cl
add wave -noupdate /network_test/u0/u0/u0/re4_cl
add wave -noupdate /network_test/u0/u0/u0/re0_in
add wave -noupdate /network_test/u0/u0/u0/re0_re
add wave -noupdate /network_test/u0/u0/u0/re1_in
add wave -noupdate /network_test/u0/u0/u0/re1_re
add wave -noupdate /network_test/u0/u0/u0/re2_in
add wave -noupdate /network_test/u0/u0/u0/re2_re
add wave -noupdate /network_test/u0/u0/u0/re3_in
add wave -noupdate /network_test/u0/u0/u0/re3_re
add wave -noupdate /network_test/u0/u0/u0/re4_in
add wave -noupdate /network_test/u0/u0/u0/re4_re
add wave -noupdate /network_test/u0/u0/u0/sgn
add wave -noupdate /network_test/u0/u0/u0/tanh
add wave -noupdate /network_test/u0/u0/u0/sigm
add wave -noupdate /network_test/u0/u0/u0/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24186195 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 208
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
WaveRestoreZoom {24175960 ps} {24221860 ps}
