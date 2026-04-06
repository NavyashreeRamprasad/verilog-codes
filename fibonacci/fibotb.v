`include"fibo.v"
module fibotb;
reg [31:0] n;
fibonacci dut(n);

initial begin
repeat(20) begin
n=$urandom_range(20,2);
#1;
end
end
endmodule


