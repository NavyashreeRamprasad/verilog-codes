`include "adder.v"
module adder_tb;
reg [4:0]a,b;
reg cin;
wire [5:0] sum;
wire [4:0]carry;
adder5b dut(a,b,cin,sum,carry);
initial 
begin
$monitor("time -> %0t : a=%d , b= %d , c= %d , sum = %d ", $time,a,b,cin,sum);

repeat(10)
begin
{a,b,cin}=$random;
#1;
end

end

endmodule

