module fibonacci(n);

input [31:0] n;
integer i;
integer a, b, next;

always@(*) begin
    a = 0;
    b = 1;

    $write("
	Fibonacci Series of %0d:",n);

    for (i = 0; i < n; i = i + 1) begin
        $write("%0d ,", a);
        next = a + b;
        a = b;
        b = next;
    end
end

endmodule

