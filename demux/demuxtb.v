`include "demux.v"
module tb_mux14;
reg I;
reg [1:0]s;
wire [3:0]y;

demux14 dut(I,y,s);

initial
begin
$monitor("time-> %0t ,I =%b ,s=%0d ,y0=%b ,y1 = %b, y2=%b ,y3=%b ",$time,I,s,y[0],y[1],y[2],y[3]);
repeat(20)begin
{I,s}=$random;
#1;
end

end

endmodule

