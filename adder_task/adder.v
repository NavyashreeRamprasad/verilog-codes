module adder5b(a,b,cin,sum,carry);
input [4:0] a,b;
input cin;
output reg [5:0]sum;
//output reg [4:0]carry;
output reg carry;
/*task add(input x,y,z,output s,ca); begin
s = x^y^z;
ca = (x&y)|(y&z)|(z&x);
end
endtask

always@(*) begin
add(a[0],b[0],cin,sum[0],carry[0]);
add(a[1],b[1],carry[0],sum[1],carry[1]);
add(a[2],b[2],carry[1],sum[2],carry[2]);
add(a[3],b[3],carry[2],sum[3],carry[3]);
add(a[4],b[4],carry[3],sum[4],carry[4]);
sum[5] = carry[4];
end*/

function [5:0] add(input [4:0] a,b,input cin);
add=a+b+cin;
endfunction

always@(*)begin
{carry,sum}=add(a,b,cin);
end
endmodule
