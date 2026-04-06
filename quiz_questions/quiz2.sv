module quiz_2;
reg [3:0] a = 4'd5;
reg [3:0] b = 4'd3;
reg [3:0] c = 4'd2;
reg [4:0] y;

initial begin
    y = a+++b+++c;
	    $display("%0d", y);
		end
		endmodule
