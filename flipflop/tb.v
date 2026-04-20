`include "jk_negff.v"

module tb;
reg j,k,clk;
wire q,qb;


jk_negff dut(j,k,clk,q,qb);
always #5 clk=!clk;
initial begin 
clk=0;
j=0;k=0;
repeat(200)begin
j=$random();
k=$random();
#1;
end
#500 $finish();
end

endmodule
