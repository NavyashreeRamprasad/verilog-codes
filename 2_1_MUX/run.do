vlog tb_2_1_mux.v
vsim -voptargs="+acc" tb_21mux
add wave sim:/tb_21mux/m1/*
run -all
