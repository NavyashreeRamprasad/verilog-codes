module mux41(i,s,y);
input [3:0]i;
input [1:0]s;
output y;
wire n1,n2,n3,n4,n5,n6;

assign n1=s[1]&s[0]&i[3];
assign n5=!s[0];
assign n2=s[1]&n5&i[2];
assign n6=!s[1];
assign n3=n6&s[0]&i[1];
assign n4=n5&n6&i[0];
assign y=n1|n2|n3|n4;

endmodule


module tbmux;
reg [3:0] i;
reg [1:0]s;
wire y;

 mux41 m1(i,s,y);

initial begin
$monitor("{s1,s0} : %d , i0 : %b , i1 : %b , i2 : %b , i3 : %b, y : %b",s, i[0], i[1], i[2],i[3], y);
repeat(20)begin
{s,i}=$random;
#1;
end

end
endmodule

