module tb();
integer n;
integer y;
function automatic integer fact(input integer n);
begin
if(n==0)
fact=1;
else
fact = n*fact(n-1);
end
endfunction

initial begin
repeat(10)begin
n=$urandom_range(2,10);
#1;
y=fact(n);
$display("fact(%0d) = %0d ",n,y);
end
end
endmodule
