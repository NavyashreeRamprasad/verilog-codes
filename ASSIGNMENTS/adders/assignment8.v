module mux41(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;
wire y1,y2,y3,y4;
/*always@(*)
begin
y=(~s0&~s1&i0)|(~s1&s0&i1)|(s1&~s0&i2)|(s1&s0&i3);
end*/
and g1(y1,~s0,~s1,i0);
and g2(y2,~s1,s0,i1);
and g3(y3,s1,~s0,i2);
and g4(y4,s1,s0,i3);
or g5(y,y1,y2,y3,y4);

endmodule


module tbmux;
reg i0,i1,i2,i3,s0,s1;
wire y;

mux41 m1(i0,i1,i2,i3,s0,s1,y);

initial begin
//$monitor("time: %0t , {s1,s0} : %d , i0 : %b , i1 : %b , i2 : %b , i3 : %b, y : %b",$time,{s1,s0}, i0, i1, i2,i3, y);
repeat(20)begin
{s1,s0,i0,i1,i2,i3}=$random;
$display("time: %0t , {s1,s0} : %d , i0 : %b , i1 : %b , i2 : %b , i3 : %b, y : %b",$time,{s1,s0}, i0, i1, i2,i3, y);

#1;

end

end
endmodule
