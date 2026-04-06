module comp(a,b,grt,equ,less);
input a,b;
output reg grt,equ,less;
always@(*) begin
if(a>b)begin
grt=1'b1;
equ=1'b0;
less=1'b0;
end
else if (a==b)begin
equ=1'b1;grt=1'b0;
less=1'b0;
end
else begin
less=1'b1;grt=1'b0;
equ=1'b0;
end
end
endmodule

