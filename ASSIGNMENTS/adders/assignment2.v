module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output reg sum,carry;
//wire n1,n2,n3;

/*assign sum = a^b^cin;
assign carry = (a&&b)||(b&&cin)||(cin&&a);*/

always@(*)begin
sum = a^b^cin;
carry = (a&b)|(b&cin)|(cin&a);
end

/*xor g1(n1,a,b);
and g2(n2,a,b);
xor g3(sum,n1,cin);
and g4(n3,n1,cin);
or g5(carry,n2,n3);
*/
endmodule

