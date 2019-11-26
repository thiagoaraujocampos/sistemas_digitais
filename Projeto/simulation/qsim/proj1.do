onerror {quit -f}
vlib work
vlog -work work proj1.vo
vlog -work work proj1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.proj1_vlg_vec_tst
vcd file -direction proj1.msim.vcd
vcd add -internal proj1_vlg_vec_tst/*
vcd add -internal proj1_vlg_vec_tst/i1/*
add wave /*
run -all
