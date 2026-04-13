module processor(
input clock,reset;
input [31:0]rdata;
output [7:0]addr;
output [31:0] wdata;
output wr_rd,valid;
input ready;)

endmodule

module memory(
input clock,reset;
output [31:0]rdata;
input [7:0]addr;
input [31:0] wdata;
input wr_rd,valid;
output ready;)

endmodule


