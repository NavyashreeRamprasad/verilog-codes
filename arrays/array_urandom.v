module array_urandom();
integer arr [0:9];
integer i;
initial begin
for(i=0;i<10;i=i+1) begin
arr[i]=($urandom%10)+1;
end

for(i=0;i<10;i=i+1) begin
$display("arr[%0d] = %0d ",i,arr[i]);
end

end
endmodule
