`include"comp.v";
module tb_comp;
reg a,b;
wire grt,equ,less;
comp dut(a,b,grt,equ,less);

initial begin
$monitor("time-> %0t , a = %b , b = %b , grt= %b , equ = %b , less =%b ",$time,a,b,grt,equ,less);
repeat(20) begin
{a,b}=$random;
#1;
end
end
endmodule


