module encoder42(input[4:0] I,
output reg [1:0]Y);
always@(*) begin
casex(I)
4'b0001:Y=2'b00;
4'b001x:Y=2'b01;
4'b01xx:Y=2'b10;
4'b1xxx:Y=2'b11;
default : Y =2'bxx;
endcase
end
endmodule
