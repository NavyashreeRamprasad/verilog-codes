`include"assignment5.v";
module tb;
reg [7:0] i;
reg [2:0]sel;
wire y;

mux_8_1 dut(i,sel,y);

initial begin
$monitor("time-> %0t ,i0=%b ,i1 = %b, i2=%b ,i3=%b ,i4=%b ,i5=%b ,i6=%b ,i7=%b ,sel=%d ,y=%b ",$time,i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],sel,y);

repeat(20)begin
{i,sel}=$random;
#1;
end
end
endmodule
