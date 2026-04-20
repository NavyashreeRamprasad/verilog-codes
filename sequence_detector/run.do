vlib work
vlog tb_seq_tff.v
vsim tb
add wave sim:/tb/dut/*
force -deposit sim:/tb/dut/c1 St0 0
force -deposit sim:/tb/dut/c0 St1 0
force -deposit sim:/tb/dut/c2 St0 0
run -all

