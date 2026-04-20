`define COUNT 40
`include "downcounter.v"
module tb;
parameter N = $clog2(`COUNT);
reg clk,rst;
wire [N-1:0]count;

downcounter #(N) dut(clk,rst,count);
always #5 clk=~clk;
initial begin
clk=0;
rst=0;
repeat(2)@(posedge clk);
rst=1;
end

initial begin
#10000 $finish();
end

endmodule
