module downcounter #(parameter N=10)(clk,rst,count);
input clk,rst;
output reg [N-1:0]count;

always@(posedge clk or negedge rst) begin
if(rst==0)
count<=0;
else if(count >0 )
count<=count-1;
else
count<=`COUNT;
end
endmodule
