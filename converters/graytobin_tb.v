
/*`include "graytobin.v"
module GtoB_tb;
parameter N=4;
reg [N-1:0]G;
wire [N-1:0]b;
GtoB dut(G,b);
initial 
begin
$monitor("time -> %0t : G=%b , b= %b", $time,G,b);

repeat(10)
begin
G=$random;
#1;
end

end

endmodule */

`include "bintogray.v"
module BtoG_tb;
parameter N=4;
wire [N-1:0]G;
reg [N-1:0]b;
BtoG dut(G,b);
initial 
begin
$monitor("time -> %0t : b=%b , G= %b", $time,b,G);

repeat(10)
begin
b=$random;
#1;
end

end

endmodule


