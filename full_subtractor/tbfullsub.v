`include "full_sub.v"
module full_sub_tb;
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

endmodule

