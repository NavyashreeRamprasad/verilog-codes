//2:1 mux
module mux(i0,i1,s,y);
input i0,i1,s;
output y;

assign y = s ? i1 :i0 ;

endmodule

//nor gate
module norgate(a,b,y);

input a,b;
output y;

mux g1(~b,0,a,y);

endmodule

//nand gate
module nandgate(a,b,y);
input a,b;
output y;

mux g2(1,~b,a,y);

endmodule

//not gate
module notgate(a,y);
input a;
output y;

mux g3(1,0,a,y);

endmodule

//and gate
module andgate(a,b,y);
input a,b;
output y;

mux g4(0,b,a,y);

endmodule

//or gate
module orgate(a,b,y);
input a,b;
output y;

mux g5(b,1,a,y);

endmodule

//xor gate
module xorgate(a,b,y);
input a,b;
output y;

mux g6(b,~b,a,y);

endmodule

//xnor gate
module xnorgate(a,b,y);
input a,b;
output y;
mux g7(~b,b,a,y);

endmodule







