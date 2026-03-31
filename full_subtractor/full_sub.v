module half_sub(a,b,diff,bor);
input a,b;
output diff,bor;

assign diff=a^b;
assign bor = ~a&b;

endmodule


module full_sub(a,b,bin,diff,bor);
input a,b,bin;
output diff,bor;
wire n1,n2,n3,n4;
half_sub h1(a,b,n1,n2);
half_sub h2(n1,bin,diff,n3);
assign bor = n2|n3;
endmodule
