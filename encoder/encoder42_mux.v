module mux(input[1:0] I,
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
mux m1({1'b1,I[3]},I[1],Y[0]);
mux m2({1'b1,I[3]},I[2],Y[1]);
endmodule

