module demux14(I,y,s);
input I;
input [1:0]s;
/*output reg y0,y1,y2,y3;
always@(*) begin
if (s==2'd0)
y0=I;
else if(s==2'd1)
y1=I;
else if(s==2'd2)
y2=I;
else
y3=I;*/
output [3:0] y;

assign y=s[1]?(s[0]?{I,1'b0,1'b0,1'b0}:{1'b0,I,1'b0,1'b0}):(s[0]?{1'b0,1'b0,I,1'b0}:{1'b0,1'b0,1'b0,I});
endmodule
