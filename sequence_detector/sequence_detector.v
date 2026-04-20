/*module seq_detector(clk,rst,in,z);
//1001
	parameter s0 = 4'b0001;
	parameter s1 = 4'b0010; //got1
	parameter s2 = 4'b0100; //got10
	parameter s3 = 4'b1000; //got100

	input clk,rst,in;
	output reg z;
	reg [3:0] PS,NS;

	always@(posedge clk) begin
		if(rst == 1) begin
			z <= 0;
			PS <= s0;
		end
		else
			PS <= NS;
	end

	always@(*) begin
		z <= 0;
		case(PS)
			s0: NS <= in ? s1:s0;
			s1: NS <= in ? s1:s2;
			s2: NS <= in ? s1:s3;
			s3: begin	NS <= in ? s1:s0; 
						 z <= in? 1:0;
				end
		endcase
	end


endmodule*/


module seq_detector(clk,rst,in,z);
//101
	parameter s0 = 2'b00;
	parameter s1 = 2'b01; 
	parameter s2 = 2'b11; 

	input clk,rst,in;
	output reg z;
	reg [1:0] PS,NS;

	always@(posedge clk) begin
		if(rst == 1) begin
			z <= 0;
			PS <= s0;
		end
		else
			PS <= NS;
	end

	always@(*) begin
		z <= 0;
		case(PS)
			s0: NS <= in ? s1:s0;
			s1: NS <= in ? s1:s2;
			s2:begin NS <= in ? s1:s0;
			z <= in ? 1'b1:0;
			end
		endcase
	end


endmodule
