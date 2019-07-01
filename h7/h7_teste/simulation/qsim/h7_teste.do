onerror {quit -f}
vlib work
vlog -work work h7_teste.vo
vlog -work work h7_teste.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.freqmod60_vlg_vec_tst
vcd file -direction h7_teste.msim.vcd
vcd add -internal freqmod60_vlg_vec_tst/*
vcd add -internal freqmod60_vlg_vec_tst/i1/*
add wave /*
run -all
