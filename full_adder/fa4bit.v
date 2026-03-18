`include "fulladder.v";
module fa4bit(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output [3:0]sum;
output carry;

full_adder f1(a[0],b[0],cin,sum[0],c0);
full_adder f2(a[1],b[1],c0,sum[1],c1);
full_adder f3(a[2],b[2],c1,sum[2],c2);
full_adder f4(a[3],b[3],c2,sum[3],carry);
endmodule
