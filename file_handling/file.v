module tb;
integer file_handle,a;

initial begin
file_handle=$fopen("sample.txt");
repeat(10)begin
a=$urandom_range(10,20);
$fdisplay(file_handle,"%0d",a);
end
$fclose(file_handle);
end
endmodule
