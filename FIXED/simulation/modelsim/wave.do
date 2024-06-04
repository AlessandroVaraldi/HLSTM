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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27562944 ps} 0}
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
WaveRestoreZoom {24229125 ps} {30897413 ps}
