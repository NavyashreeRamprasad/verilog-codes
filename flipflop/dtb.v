`include "dff.v"

module tb;
reg d,clk;
wire q,qb;


dff dut(d,clk,q,qb);
always #5 clk=!clk;
initial begin 
clk=0;
d=0;
repeat(20)begin
d=$random();
#10;
end
#1000 $finish();
end

endmodule
