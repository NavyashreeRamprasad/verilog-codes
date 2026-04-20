module mux41(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;

assign y = s1?(~s0?i2:i3):(s0?i1:i0);

endmodule


module tbmux;
reg i0,i1,i2,i3,s0,s1;
wire y;

mux41 m1(i0,i1,i2,i3,s0,s1,y);

initial begin
$monitor("{s1,s0} : %d , i0 : %b , i1 : %b , i2 : %b , i3 : %b, y : %b",{s1,s0}, i0, i1, i2,i3, y);
repeat(20)begin
{s1,s0,i0,i1,i2,i3}=$random;
#1;
end

end
endmodule

