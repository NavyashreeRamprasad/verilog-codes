module mux_8_1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output reg y;

always@(*) begin
case({s2,s1,s0})
3'b000: y=i0;
3'b001: y=i1;
3'b010: y=i2;
3'b011: y=i3;
3'b100: y=i4;
3'b101: y=i5;
3'b110: y=i6;
3'b111: y=i7;

endcase
end


endmodule

module tb_mux81;
reg i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0;
wire y;

mux_8_1 dut(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

initial begin
$monitor("time-> %0t ,i0=%b ,i1 = %b, i2=%b ,i3=%b ,i4=%b ,i5=%b ,i6=%b ,i7=%b ,{s2,s1,s0}=%d ,y=%b ",$time,i0,i1,i2,i3,i4,i5,i6,i7,{s2,s1,s0},y);
repeat(20)begin

{i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0}=$random;
#10;
end
end
endmodule

