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




module nortb;
reg a,b;
wire y;

norgate ng1(a,b,y);

initial begin
$monitor("nor_gate : a =%b , b= %b , y=%b ",a,b,y);
repeat(5)begin
{a,b}=$random;
#1;
end
end
endmodule

//nand gate
module nandtb;
reg a,b;
wire y;

nandgate ng2(a,b,y);

initial begin
$monitor("nand_gate: a =%b , b= %b , y=%b ",a,b,y);
repeat(5)begin
{a,b}=$random;
#1;
end
end
endmodule

//not gate
module nottb;
reg a;
wire y;

notgate ng3(a,y);

initial begin
$monitor("not_gate : a =%b , y=%b ",a,y);
repeat(5)begin
a=$random;
#1;
end
end
endmodule

//and gate
module andtb;
reg a,b;
wire y;

andgate ag1(a,b,y);

initial begin
$monitor("and_gate : a =%b , b= %b , y=%b ",a,b,y);
repeat(5)begin
{a,b}=$random;
#1;
end
end
endmodule

//or gate
module ortb;
reg a,b;
wire y;

orgate ng1(a,b,y);

initial begin
$monitor("or_gate: a =%b , b= %b , y=%b ",a,b,y);
repeat(5)begin
{a,b}=$random;
#1;
end
end
endmodule

//xor gate
module xortb;
reg a,b;
wire y;

xorgate x1(a,b,y);

initial begin
$monitor("xor_gate : a =%b , b= %b , y=%b ",a,b,y);
repeat(5)begin
{a,b}=$random;
#1;
end
end
endmodule

//xnor gate
module xnortb;
reg a,b;
wire y;

xnorgate xn1(a,b,y);

initial begin
$monitor("xnor_gate :a =%b , b= %b , y=%b ",a,b,y);
repeat(5)begin
{a,b}=$random;
#1;
end
end
endmodule


/*vlib work
vlog assignment13.v

vsim nortb
run -all

vsim nandtb
run -all

vsim nottb
run -all

vsim andtb
run -all

vsim ortb
run -all

vsim xortb
run -all

vsim xnortb
run -all*/
