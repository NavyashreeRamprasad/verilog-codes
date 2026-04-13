module tb;
//reg [15:0] a=743;

//reg [15:0] a=16'h7654;

//reg [15:0] a=16'o45632;

//reg [15:0] a=-743;

//reg [15:0] a=16'hCxDz;

reg [15:0] a=16'o14xXZz;

initial begin
$display("decimal = %0d , octal=%0o , hexa = %0h , binary = %0b",a,a,a,a);
end
endmodule
