module pri_encoder(input [7:0]I, 
output reg [2:0]Y);
always@(*) begin
casex(I)
8'bxxxxxxx1:Y=3'b000;
8'bxxxxxx10:Y=3'b001;
8'bxxxxx100:Y=3'b010;
8'bxxxx1000:Y=3'b011;
8'bxxx10000:Y=3'b100;
8'bxx100000:Y=3'b101;
8'bx1000000:Y=3'b110;
8'b10000000:Y=3'b111;
endcase
end
endmodule
