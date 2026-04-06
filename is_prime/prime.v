module prime_numbers;

integer num, i, is_prime;

initial begin
    $display("Prime numbers less than 100:");

    for (num = 2; num < 100; num = num + 1) begin
        is_prime = 1;

        for (i = 2; i <= num/2; i = i + 1) begin
            if (num % i == 0) begin
                is_prime = 0;
            end
        end
        if (is_prime)
            $write("%0d ", num);
    end

end

endmodule
