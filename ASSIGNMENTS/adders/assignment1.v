module halfadder(a,b,sum,carry);
input [7:0] a,b;
output [7:0] sum,carry;

/*always@(*)
begin
sum = a^b;
carry = a&b;
end*/

assign sum = a^b;
assign carry = a&b;

/*xor (sum,a,b);
and (carry,a,b);*/

endmodule

