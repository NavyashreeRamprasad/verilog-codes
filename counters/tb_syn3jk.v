`include "syn3jkdown.v"
module tb;
reg clk,rst;
wire [2:0]count;

syn3bjk dut(clk,rst,count);

always #5 clk=~clk;

initial begin
clk=0;
rst=1;
repeat(2)@(posedge clk);
rst=0;
end

initial begin
#10000 $finish();
end

endmodule
