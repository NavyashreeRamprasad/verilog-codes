module quiz_6;
reg [2:0] a = 3'b1z0;
initial begin
casez (a)
3'b1?0: $display("A");
3'b100: $display("B");
default: $display("C");
endcase
end
endmodule
