module upcounter #(parameter N=10)(clk,rst,count);
input clk,rst;
output reg [N-1:0]count;

always@(posedge clk or negedge rst) begin
if(rst==0)
count<=0;
else if(count <`COUNT )
count<=count+1;
else
count<=0;
end
endmodule
