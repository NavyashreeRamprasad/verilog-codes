module tb();
integer a [9:0];
integer b [9:0];
integer c [9:0];
integer i;
function integer add(input integer p,q);
add=p+q;
endfunction


initial begin
for(i=0;i<10;i=i+1)
begin
a[i]=$urandom_range(100,200);
b[i]=$urandom_range(100,200);
#1;
c[i]=add(a[i],b[i]);
end
$display("a=%p ", a);
$display("b= %p",b);
$display("c= %p ", c);
end

endmodule
