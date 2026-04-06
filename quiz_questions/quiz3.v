module quiz_3;
reg [3:0] a = 4'd9;
reg signed [3:0] b = -3;
reg [4:0] y;
initial begin
y = a + b;
$display("%0d", y);
end
endmodule
