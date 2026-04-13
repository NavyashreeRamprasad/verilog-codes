module tb;
integer val;
integer tem_val,digit,rev_tem;

initial begin
	//val%10 -> last digit will be obtained
	//val/10 -> removes the last digit
	// temp*10 -> allowa us to add the val in reverse format
	val=1221;
	val=6767;
	rev_tem=0;
	tem_val = val;

	while(tem_val>0)begin
	digit = tem_val % 10;//->1
	rev_tem = rev_tem * 10 + digit;
	tem_val=tem_val/10;
	$display("rev_tem = %0d",rev_tem);
	end
	if(val== rev_tem)
	$display("%0d == %0d",val,rev_tem);
	else
	$display("%0d != %0d",val,rev_tem);
end
endmodule
