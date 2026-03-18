`include "fa_using_ha.v"
module full_adder_tb;
reg a,b,cin;
wire sum,carry;
fa dut(a,b,cin,sum,carry);
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
