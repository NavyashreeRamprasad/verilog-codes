module half_sub(a,b,diff,bor);
input a,b;
output diff,bor;

assign diff=a^b;
assign bor = ~a&b;

endmodule


module full_sub(a,b,bin,diff,bor);
input a,b,bin;
output diff,bor;
wire n1,n2,n3,n4;
half_sub h1(a,b,n1,n2);
half_sub h2(n1,bin,diff,n3);
assign bor = n2|n3;
endmodule

module sub3 (
    input  [2:0] a, b,
    input  bin,        
	output [2:0] diff,
    output bout
);

wire b1, b2;
full_sub fs0 (a[0], b[0], bin, diff[0], b1);
full_sub fs1 (a[1], b[1], b1, diff[1], b2);
full_sub fs2 (a[2], b[2], b2, diff[2], bout);

endmodule

`timescale 1ns/1ps

module tb;
reg [2:0] a, b;
reg bin;
wire [2:0] diff;
wire bout;
integer i;
sub3 dut (a, b, bin, diff, bout);

initial begin
    $monitor("a=%b b=%b bin=%b -> diff=%b bout=%b",
              a, b, bin, diff, bout);

    for (i = 0; i < 10; i = i + 1) begin
        a   = $random % 8;
        b   = $random % 8;
        bin = $random % 2;
        #10;
    end

    $finish;
end

endmodule


/*module tb;
reg a,b,bin;
wire diff,bor;
full_sub dut(a,b,bin,diff,bor);
initial 
begin
$monitor("time -> %0t : a=%b , b= %b , bin= %b , diff = %b , bor = %b", $time,a,b,bin,diff,bor);

repeat(10)
begin
{a,b,bin}=$random;
#1;
end

end

endmodule*/


