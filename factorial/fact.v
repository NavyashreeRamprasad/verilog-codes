module factorial_func;
integer i;
function integer fact(input integer n);
  begin
    fact = 1;
    for(i = 1; i <= n; i = i + 1)
      fact = fact * i;
  end
endfunction

integer num;
integer result;

initial begin
 $monitor("Factorial of %0d = %0d", num, fact(num));

  repeat(10)begin
  num = $urandom%20;
  #1;
 end
end

endmodule
