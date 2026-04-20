`include "assignment2a.v"
module full_adder_tb;
reg [7:0]a,b;
reg cin;
wire [7:0]sum;
wire carry;
fa8 dut(a,b,cin,sum,carry);
initial 
begin
$monitor("time -> %0t : a=%b , b= %b , c= %b , sum = %b , carry = %b", $time,a,b,cin,sum,carry);

repeat(20)
begin
{a,b,cin}=$random;
#1;
end

end

endmodule
