`include "sequence_detector.v"
module tb_seq_detector;
	reg clk,rst,in;
	wire z;

seq_detector dut(clk,rst,in,z);
	initial begin
		forever begin
			clk = 0; #5;
			clk = 1; #5;
		end
	end
	initial begin
		rst = 1;
		@(posedge clk);
		rst = 0;
		@(posedge clk);
		in=1;
		@(posedge clk);
		in=0;
		@(posedge clk);
		in=0;
		@(posedge clk);
		in=1;
		@(posedge clk);
		in=0;
		@(posedge clk);
		in=1;
		@(posedge clk);
		in=0;
		@(posedge clk);
		in=1;
	end

	initial begin
		#1000 $finish();
	end

endmodule

