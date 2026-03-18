`include "fa4bit.v";
module tb_fa4bit;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

fa4bit dut(a,b,cin,sum,carry);

initial begin

$monitor("time-> %0t, a=%0d ,b=%0d ,cin=%b, sum=%0d, carry =%b",$time,a,b,cin,sum,carry);

repeat(10)begin
{a,b,cin}=$random;
#1;
end

end
endmodule
