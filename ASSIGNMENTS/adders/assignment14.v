module mux4to1 (
    input i0, i1, i2, i3,
    input s0, s1,
    output y
);

assign y = (~s1 & ~s0 & i0) |
           (~s1 &  s0 & i1) |
           ( s1 & ~s0 & i2) |
           ( s1 &  s0 & i3);

endmodule


module tb;

reg i0, i1, i2, i3;
reg s0, s1;
wire y;

integer k;
mux4to1 dut (
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .s0(s0), .s1(s1),
    .y(y)
);

initial begin
    $monitor("time=%0t | s1=%b s0=%b | i0=%b i1=%b i2=%b i3=%b | y=%b",
              $time, s1, s0, i0, i1, i2, i3, y);

    repeat(20)begin
        {i0, i1, i2, i3} = $random;
        {s1, s0} = $random;
        #10;
    end

    $finish;
end

endmodule
