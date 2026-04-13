`include"assignment6.v";
module tb;
reg [15:0] i;
reg [2:0]sel;
wire [1:0] y;

mux_8_1 dut(i,sel,y);

initial begin
$monitor("time-> %0t ,i0=%b ,i1 = %b, i2=%b ,i3=%b ,i4=%b ,i5=%b ,i6=%b ,i7=%b ,sel=%d ,y=%b ",$time,i[1:0],i[3:2],i[5:4],i[7:6],i[9:8],i[11:10],i[13:12],i[15:14],sel,y);

repeat(20)begin
{i,sel}=$random;
#1;
end
end
endmodule

