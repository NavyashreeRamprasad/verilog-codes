module tb();
parameter N=4;
reg [N:0] a,b,sum;
reg cin;
reg carry;

function [4:0] add(input [4:0] a,b,input cin);
add=a+b+cin;
endfunction

function ca(input [4:0] a,b,input cin);
reg [5:0]temp;
begin
temp=a+b+cin;
ca=temp[5];
end
endfunction

/*function [5:0] add(input [4:0] a,b,input cin);
add=a+b+cin;
endfunction*/

initial begin
repeat(10)
begin
{a,b,cin}=$random;
#1;
sum=add(a,b,cin);
carry=ca(a,b,cin);
$display("time -> %0t : a=%b , b= %b , c= %b , sum = %b , carry = %b", $time,a,b,cin,sum,carry);
end
end
endmodule

