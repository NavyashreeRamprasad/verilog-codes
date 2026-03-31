module mux_4_1(i0,i1,i2,i3,s0,s1,y,E);
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
