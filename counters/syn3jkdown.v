module jkff(clk,rst,j,k,q);
input clk,j,k,rst;
output reg q;

always@(posedge clk or posedge rst)begin
if(rst)
q=1'b0;

else begin
case({j,k})
2'b00:begin q<=q;end
2'b01: begin q<=1'b0; end
2'b10: begin q<=1'b1; end
2'b11: begin q<=~q; end
default: begin q<=q; end
endcase
end
end
endmodule



module syn3bjk(clk,rst,count);
input clk,rst;
output [2:0]count;
wire j2,j1,j0,k2,k1,k0;

assign j2= (~count[1])&(~count[0]);
assign j1= (~count[0]);
assign j0= 1;
assign k2= (~count[1])&(~count[0]);
assign k1= (~count[0]);
assign k0= 1;
jkff i1(clk,rst,j0,k0,count[0]);
jkff i2(clk,rst,j1,k1,count[1]);
jkff i3(clk,rst,j2,k2,count[2]);

endmodule
