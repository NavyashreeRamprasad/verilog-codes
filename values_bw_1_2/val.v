module tb;
real val;

initial begin
	repeat(10)begin
	val=$urandom_range(10,20)/10.0;
	$display("%0.1f",val);
	end
end
endmodule

	
