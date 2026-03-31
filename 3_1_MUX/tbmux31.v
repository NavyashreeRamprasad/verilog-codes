`include "mux31.v"
module tbmux;
reg i0,i1,i2,s0,s1;
wire y;

mux31 m1(i0,i1,i2,s0,s1,y);

initial begin
$monitor("{s1,s0} : %d , i0 : %b , i1 : %b , i2 : %b , y : %b",
          {s1,s0}, i0, i1, i2, y);
repeat(20)begin
{s1,s0,i0,i1,i2}=$random;
#1;
end

end
endmodule
