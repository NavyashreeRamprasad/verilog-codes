/*module tb;
integer arr[9:0];
integer arr2[9:0];
integer i;
initial begin
for(i=0;i<10;i=i+1) begin
arr[i]=i;
end

for(i=0;i<10;i=i+1)begin
arr2[i]=arr[9-i];
end

$display("Array 1 :");
for(i=0;i<10;i=i+1) begin
$display("arr[%0d]=%0d",i,arr[i]);
end

$display("Array 2 :");
for(i=0;i<10;i=i+1)begin
$display("arr2[%0d]=%0d",i,arr2[i]);
end

end
endmodule */

module even;
integer arr[9:0];
integer i;
initial begin
for(i=0;i<10;i=i+1) begin
arr[i]=$urandom_range(0,100);
end
for(i=0;i<10;i=i+1)begin
$display("arr[%0d] = %0d",i,arr[i]);
end

for(i=0;i<10;i=i+1)begin
if(arr[i]%2==0) begin
$display("even number %0d at index %0d",arr[i],i);
end
else begin
arr[i]=arr[i]+1;
$display("number at index %0d changed to %0d",i,arr[i]);
end
end

end
endmodule

