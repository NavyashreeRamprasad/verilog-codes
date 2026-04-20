module mux41(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output reg y;

always@(*)begin
case({s1,s0})
2'b00:y=i0;
2'b01:y=i1;
2'b10:y=i2;
2'b11:y=i3;
default:y=1'b0;
endcase
//y = s1?(~s0?i2:i3):(s0?i1:i0);

/*if({s1,s0}==2'b00)
y=i0;
else if({s1,s0}==2'b01)
y=i1;
else if({s1,s0}==2'b10)
y=i2;
else 
y=i3;
*/
end

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
