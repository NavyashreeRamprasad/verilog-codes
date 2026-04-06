module quiz_4;
reg [3:0] a = 4'b101x;
reg [3:0] b= 4'b0101;
reg [3:0] y;
initial begin
y=(a&b)^( ~a|b );
$display("%b", y);
end
endmodule
