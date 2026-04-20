/*module mux_4_1(i0,i1,i2,i3,s0,s1,y,E);
input i0,i1,i2,i3,s0,s1,E;
output reg y;

always@(*) begin 
if(E==0)
y=0;
else
y = s1?(s0?i3:i2):(s0?i1:i0);
end
endmodule

module orgate(a,b,y);
input a,b;
output reg y;

assign y = a|b;
endmodule

module mux_8_1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output y;
wire n1,n2;

mux_4_1 m1(i0,i1,i2,i3,s0,s1,n1,~s2);
mux_4_1 m2(i4,i5,i6,i7,s0,s1,n2,s2);
orgate og1(n1,n2,y);

endmodule
*/
module mux2to1(input i0, i1, s, output y);
assign y = s ? i1 : i0;
endmodule

module mux_8_1(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input s0,s1,s2,
    output y
);

wire w1,w2,w3,w4,w5,w6;
mux2to1 m1(i0,i1,s0,w1);
mux2to1 m2(i2,i3,s0,w2);
mux2to1 m3(i4,i5,s0,w3);
mux2to1 m4(i6,i7,s0,w4);
mux2to1 m5(w1,w2,s1,w5);
mux2to1 m6(w3,w4,s1,w6);
mux2to1 m7(w5,w6,s2,y);

endmodule


module tb;
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
