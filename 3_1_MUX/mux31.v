module mux31(i0,i1,i2,s0,s1,y);
input i0,i1,i2,s0,s1;
output reg y;

assign y = s1?(~s0?i2:1'bx):(s0?i1:i0);

endmodule
