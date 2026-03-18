`include"mux21.v";
module tb_21mux;
reg i0,i1,s;
wire y;
mux21 m1(i0,i1,s,y);

initial begin
$monitor("time-> %0t , i0 = %b , i1 = %b , s= %b , y = %b",$time,i0,i1,s,y);
repeat(20) begin
{i0,i1,s}=$random;
#1;
end
end
endmodule

