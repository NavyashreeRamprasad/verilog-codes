vlib work
vlog tb.v
vsim tb
add wave sim:/tb/dut/*
force -deposit sim:/tb/dut/n4 St1 0
run -all

