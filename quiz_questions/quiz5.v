module quiz_5;
reg [1:0] a = 2'b1x;
reg [3:0] y;
initial begin
y = {2{a}}^ 4'b1010;
$display("%b", y);
end
endmodule
