`include"mux21.v";
module mux41(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output y;
mux21 m1(i0,i1,s0,n1);
mux21 m2(i2,i3,s0,n2);
mux21 m3(n1,n2,s1,y);
endmodule
