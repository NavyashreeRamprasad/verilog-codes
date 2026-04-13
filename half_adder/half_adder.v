module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;

/*always@(*)
begin
sum = a^b;
carry = a&b;
end*/

/*assign sum = a^b;
assign carry = a&b;*/

xor (sum,a,b);
and (carry,a,b);

endmodule
