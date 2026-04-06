`include "priority_encoder.v"
module tb;
reg [7:0] I;
wire [2:0] Y;
integer seed=14562;
pri_encoder dut(I,Y);
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

