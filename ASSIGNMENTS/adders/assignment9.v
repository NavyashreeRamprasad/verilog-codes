module mux_4_1(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output reg y;

always@(*) begin 
y = s1?(s0?i3:i2):(s0?i1:i0);
end
endmodule

/*module orgate(a,b,y);
input a,b;
output reg y;

assign y = a|b;
endmodule*/

module mux_8_1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output y;
wire n1,n2;

mux_4_1 m1(i0,i1,i2,i3,s0,s1,n1);
mux_4_1 m2(i4,i5,i6,i7,s0,s1,n2);
//orgate og1(n1,n2,y);
mux_4_1 m3(n1,n1,n2,n2,1'b0,s2,y);

endmodule



module tb_mux81;
reg i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
wire y;

mux_8_1 dut(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

initial begin
$monitor("time-> %0t ,i0=%b ,i1 = %b, i2=%b ,i3=%b ,i4=%b ,i5=%b ,i6=%b ,i7=%b ,{s2,s1,s0}=%d ,y=%b ",$time,i0,i1,i2,i3,i4,i5,i6,i7,{s2,s1,s0},y);
repeat(20)begin

{i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0}=$random;
#10;
end
end
endmodule


