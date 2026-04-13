module alphabet();
reg [7:0] alpha[10:0];
integer i;
initial begin
		$display("The character array is: ");
	for(i=0;i<11;i=i+1)begin
		alpha[i]=$urandom_range(65,90);
		$write("%c",alpha[i]);
	end
	for(i=0;i<11;i=i+1)begin
		detect(alpha[i]);
	end
end	
task detect(input reg [7:0] a);
	begin
		if(a=="A"||a=="E"||a=="I"||a=="O"||a=="U")
		$display("%c",a);
	end
endtask
endmodule

