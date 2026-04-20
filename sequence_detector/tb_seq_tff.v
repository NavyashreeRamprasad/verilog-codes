`include "seq_detector_tff.v"
module tb;
	reg clk,rst,in;
	wire out;

seq_detect dut(clk,rst,in,out);

always #5 clk = !clk;

initial begin
	clk = 0;
	rst = 1	;
	in  = 0;
	@(posedge clk);
	rst = 0;

		@(posedge clk);
		in=1;
		@(posedge clk);
		in=0;
		@(posedge clk);
		in=1;
		@(posedge clk);
		in=1;
		@(posedge clk);
		in=0;

	#200 $finish(); 	
end


endmodule
