`include "assignment1.v"
module tb;
reg [7:0]a,b;
wire [7:0] sum,carry;
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

