`include"mux41.v";
module tb_mux41;
reg i0,i1,i2,i3,s1,s0;
wire y;

mux41 dut(i0,i1,i2,i3,s1,s0,y);

initial begin
$monitor("time-> %0t ,i0=%b ,i1 = %b, i2=%b ,i3=%b ,s1=%b ,s0=%b ,y=%b ",$time,i0,i1,i2,i3,s1,s0,y);
repeat(20)begin

{i0,i1,i2,i3,s1,s0}=$random;
#1;
end
end
endmodule
