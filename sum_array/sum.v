module sum_arr(a,sum);
input integer a [4:0];
output integer sum ;
integer i;

task add();
begin
sum=0;
for(i=0;i<5;i=i+1)begin
sum=sum+a[i];
end
end
endtask

always@(*) begin
add();
end
endmodule

/*function [5:0] add(input [4:0] a,b,input cin);
add=a+b+cin;
endfunction

always@(*)begin
{carry,sum}=add(a,b,cin);
end
endmodule*/

