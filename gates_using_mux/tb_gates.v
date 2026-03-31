`include "gates.v"
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


