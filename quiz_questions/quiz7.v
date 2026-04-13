module quiz_7;
reg a = 1;
reg b = 0;
initial begin
a = a^ b;
b = a^ b;
a = a^ b;
$display("%0d%0d", a, b);
end
endmodule
