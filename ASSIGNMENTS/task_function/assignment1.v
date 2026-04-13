module adder5b();
parameter N=4;
reg [N:0] a,b,sum;
reg cin;
reg [N+1:0]temp;
reg carry;

/*function [4:0] add(input [4:0] a,b,input cin);
add=a+b+cin;
endfunction

function [5:0] ca(input [4:0] a,b,input cin);
ca=a+b+cin;
endfunction*/

/*task add();
begin
{carry,sum}=a+b+cin;
end
endtask*/

/*function [5:0] add(input [4:0] a,b,input cin);
add=a+b+cin;
endfunction*/

task add(input [4:0] a,b,input cin,output [N:0]sum);
sum=a+b+cin;
endtask

task ca(input [4:0] a,b,input cin,output [N+1:0]carry);
carry=a+b+cin;
endtask


initial begin
repeat(10)
begin
{a,b,cin}=$random;
#1;
//add();
//{carry,sum}=add(a,b,cin);
add(a,b,cin,sum);
ca(a,b,cin,temp);
carry=temp[N+1];
$display("time -> %0t : a=%b , b= %b , c= %b , sum = %b , carry = %b", $time,a,b,cin,sum,carry);
end
end

/*always@(*)begin
sum=add(a,b,cin);
temp=ca(a,b,cin);
carry=temp[5];
end*/
endmodule
