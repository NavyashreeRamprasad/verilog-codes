module jk_negff(j,k,clk,q,qb);
input j,k,clk;
output q,qb;
wire n1,n2,n3,n4,n5,n6,clkb;

not g0(clkb,clk);
nand #1 g1(n1,j,qb,clk);
nand #1 g2(n2,clk,k,q);
nand #1 g3(n4,n1,n3);
nand #1 g4(n3,n2,n4);
nand #1 g5(n5,n4,clkb);
nand #1 g6(n6,n3,clkb);
nand #1 g7(q,n5,qb);
nand #1 g8(qb,n6,q);


endmodule
