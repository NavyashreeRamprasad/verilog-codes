`include "half_adder.v"
module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum, carry;
wire sum1, c1,c2;
halfadder d1(a,b,sum1,c1);
halfadder d2(sum1,cin,sum,c2);
assign carry = c1||c2;
endmodule
