/*module mux(input[1:0] I,
input S,
output reg Y);
always@(*) begin
case(S)
1'b0:Y=I[0];
1'b1:Y=I[1];
endcase
end
endmodule


module encoder42_mux(input [3:0]I, 
output [1:0]Y);
mux m1({1'b1,I[2]},I[3],Y[1]);
mux m2({1'b1,I[1]},I[3],Y[0]);
endmodule*/


/*module mux41(i0,i1,i2,i3,s0,s1,y);//priority encoder
input [3:0]i0,i1,i2,i3;
input s0,s1;
output [3:0]y;

assign y = s1?(~s0?i2:i3):(s0?i1:i0);

endmodule

module encoder42_mux(input [3:0]I, 
output [1:0]Y);
mux41 m1(1'b0,1'b1,1'b1,1'b1,I[2],I[3],Y[1]);
mux41 m2(I[1],1'b0,1'b1,1'b1,I[2],I[3],Y[0]);
endmodule



module tb;
reg [3:0] I;
wire [1:0] Y;
integer seed=14562;
encoder42_mux dut(I,Y);
initial 
begin
$monitor("time -> %0t : I=%b , Y= %b", $time,I,Y);

repeat(30)
begin
I=$random(seed);
#1;
end

end

endmodule*/

module mux41(i0,i1,i2,i3,s0,s1,y);
input [3:0]i0,i1,i2,i3;
input s0,s1;
output reg [3:0]y;

always@(*) begin
case({s1,s0})
2'b00 : y= i0;
2'b01 : y= i1;
2'b10 : y= i2;
2'b11 : y= i3;
endcase
end

endmodule

module decoder(input [1:0]Y, output [3:0] I);//decoder

mux41 m1(4'b0001,4'b0010,4'b0100,4'b1000,Y[0],Y[1],I);


endmodule



module tb;
reg [1:0] Y;
wire [3:0] I;

integer seed=14562;
decoder dut(Y,I);
initial 
begin
//$monitor("time -> %0t : I=%b , Y= %b", $time,I,Y);

repeat(10)
begin
Y=$random(seed);
#1;
$display("time -> %0t : I=%b , Y= %b", $time,I,Y);
end

end

endmodule
