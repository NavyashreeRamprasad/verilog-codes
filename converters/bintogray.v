module BtoG(G,b);
parameter N =4;
input [N-1:0]b;
output reg [N-1:0]G;
integer i;

always@(*) begin

G[N-1]=b[N-1];

for(i=N-2;i>=0;i=i-1)begin
G[i] = b[i+1] ^ b[i];
end

end
endmodule
