module GtoB(G,b);
parameter N =4;
input [N-1:0]G;
output reg [N-1:0]b;
integer i;

assign b[N-1]=G[N-1];

always@(*) begin

for(i=N-2;i>=0;i=i-1)begin
b[i] = b[i+1] ^ G[i];
end

end
endmodule
