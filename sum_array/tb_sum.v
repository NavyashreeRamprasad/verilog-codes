`include "sum.v"
module sum_tb;
reg a [4:0];
wire sum;
integer i;
sum_arr dut(a,sum);
initial 
begin
$monitor("time -> %0t : a=%p , sum = %d ", $time,a,sum);

for(i=0;i<10;i=i+1)
begin
a[i]=$random;
#1;
end

end

endmodule

