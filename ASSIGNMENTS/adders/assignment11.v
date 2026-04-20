/*module encoder(input[4:0] I,
output reg [1:0]Y);
always@(*) begin
casex(I)
4'b0001:Y=2'b00;
4'b0010:Y=2'b01;
4'b0100:Y=2'b10;
4'b1000:Y=2'b11;
default : Y =2'bxx;
endcase
end
endmodule*/

/*module encoder(input[4:0] I,
output reg [1:0]Y);//priority encoder
always@(*) begin
casex(I)
4'b0000:Y=2'b00;
4'b0001:Y=2'b00;
4'b001x:Y=2'b01;
4'b01xx:Y=2'b10;
4'b1xxx:Y=2'b11;
default : Y =2'bxx;
endcase
end
endmodule



module tb;
reg [3:0] I;
wire [1:0] Y;
integer seed=14562;
encoder dut(I,Y);
initial 
begin
$monitor("time -> %0t : I=%b , Y= %b", $time,I,Y);

repeat(10)
begin
I=$random(seed);
#1;
end

end

endmodule*/



module decoder(input [1:0]Y, output reg [4:0] I);//decoder

always@(*) begin
casex(Y)
2'b00:I=4'b0001;
2'b01:I=4'b0010;
2'b10:I=4'b0100;
2'b11:I=4'b1000;
default : I= 4'b0000;
endcase
end
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
$display("time -> %0t : I=%b , Y= %b", $time,I,Y);

#1;
end

end

endmodule
