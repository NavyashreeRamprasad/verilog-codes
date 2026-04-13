module quiz_8;
reg a;
initial begin
a = 0;
#1 a = 1'bx ;
#1 a = 1;
end
initial begin
@(posedge a) $display("A");
end
endmodule
