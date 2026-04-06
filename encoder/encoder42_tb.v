`include "encoder42.v"
module tb;
reg [3:0] I;
wire [1:0] Y;
integer seed=14562;
encoder42 dut(I,Y);
initial 
begin
$monitor("time -> %0t : I=%b , Y= %b", $time,I,Y);

repeat(10)
begin
I=$random(seed);
#1;
end

end

endmodule


