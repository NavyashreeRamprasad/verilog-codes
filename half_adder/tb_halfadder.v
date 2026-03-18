`include "halfadder.v"
module half_adder_tb;
reg a,b;
wire sum,carry;
halfadder dut(a,b,sum,carry);

initial
begin
$monitor("time ->%0t: a= %b , b= %b , sum= %b ,carry= %b",$time,a,b,sum,carry);

repeat(20) begin
{a,b}=$random;
#1;
end

end
endmodule
