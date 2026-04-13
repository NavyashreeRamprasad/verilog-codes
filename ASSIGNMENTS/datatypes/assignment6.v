module mux_8_1(i,sel,y);
input [15:0] i;
input [2:0] sel;
output reg [1:0] y;

always@(*) begin 

case(sel)
3'b000:y=i[1:0];
3'b001:y=i[3:2];
3'b010:y=i[5:4];
3'b011:y=i[7:6];
3'b100:y=i[9:8];
3'b101:y=i[11:10];
3'b110:y=i[13:12];
3'b111:y=i[15:14];
endcase

end
endmodule



