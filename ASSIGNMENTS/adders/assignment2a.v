module halfadder(a,b,sum,carry);
input a,b;
output reg sum,carry;

always@(*)
begin
sum = a^b;
carry = a&b;
end

endmodule



module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum, carry;
wire sum1, c1,c2;
halfadder d1(a,b,sum1,c1);
halfadder d2(sum1,cin,sum,c2);
assign carry = c1||c2;
endmodule

module fa8(a,b,cin,sum,carry);
input [7:0] a,b;
input cin;
output [7:0] sum;
output carry;
wire c0,c1,c2,c3,c4,c5,c6;

fa d1(a[0],b[0],cin,sum[0],c0);
fa d2(a[1],b[1],c0,sum[1],c1);
fa d3(a[2],b[2],c1,sum[2],c2);
fa d4(a[3],b[3],c2,sum[3],c3);
fa d5(a[4],b[4],c3,sum[4],c4);
fa d6(a[5],b[5],c4,sum[5],c5);
fa d7(a[6],b[6],c5,sum[6],c6);
fa d8(a[7],b[7],c6,sum[7],carry);



endmodule


