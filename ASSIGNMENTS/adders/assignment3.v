module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
assign sum = a^b^cin;
assign carry = (a&&b)||(b&&cin)||(cin&&a);
endmodule

module full_adder_tb;
integer z=10;
real x=1.2;
reg a,b,cin;
wire sum,carry;

full_adder dut(a,b,cin,sum,carry);

initial begin
$display("Hello world");
$display("integer = %0d , real =%0f",z,x);
$display("time -> %0t ,integer = %0d , real =%0f",$time,z,x);
end
initial 
begin
$monitor("time -> %0t : a=%b , b= %b , c= %b , sum = %b , carry = %b", $time,a,b,cin,sum,carry);
repeat(10)
begin
{a,b,cin}=$random;
#1;
end

end

endmodule
