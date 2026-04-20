module dff(clk,rst,d,q);
	input clk,rst,d;
	output reg q;

	always@(posedge clk)begin
		if(rst == 1) begin
			q <= 0;
		end
		else begin
		case(d)
			1'b0: q <= 1'b0;
			1'b1: q <= 1'b1;
		endcase
		end
	end

endmodule


module seq_detect(clk,rst,in,out);
	input clk,rst,in;
	output out;
	wire d0,d1,d2;
//	wire [2:0]next_state;
	wire c0,c1,c2;


	assign d0 = (c0 & ~in) | (c2 & ~in);
	assign d1 = (c0 & in);
	assign d2 = (c1 & in) | (c2 & in);


	assign out = c2 & ~c1 & ~c0 & ~in;

//	assign {c2,c1,c0} = next_state;
	

dff u1(clk,rst,d0,c0);
dff u2(clk,rst,d1,c1);
dff u3(clk,rst,d2,c2);

endmodule


