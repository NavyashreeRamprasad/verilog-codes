module tb();
reg [31:0] in1,in2;
reg [31:0] y;
reg [2:0]oper;
parameter add = 3'b000;//0
parameter sub = 3'b001;//1
parameter mul = 3'b010;//2
parameter div = 3'b011;//3
parameter mod = 3'b100;//4
parameter pow = 3'b101;//5
parameter ls = 3'b110;//6
parameter rs = 3'b111;//7

/*function reg [31:0] alu(input reg [31:0]in1,in2,input [2:0]oper);begin
	case(oper)
		add:alu=in1+in2;
		sub:alu=in1-in2;
		mul:alu=in1*in2;
		div:alu=in1/in2;
		mod:alu=in1%in2;
		pow:alu=in1**in2;
		ls:alu=in1<<in2;
		rs:alu=in1>>in2;
	endcase
end
endfunction*/

function reg [31:0] alu(input reg [31:0]in1,in2,input [2:0]oper);begin
		if(oper==add)
		alu=in1+in2;
		if(oper==sub)
		alu=in1-in2;
		if(oper==mul)
		alu=in1*in2;
		if(oper==div)
		alu=in1/in2;
		if(oper==mod)
		alu=in1%in2;
		if(oper==pow)
		alu=in1**in2;
		if(oper==ls)
		alu=in1<<in2;
		if(oper==rs)
		alu=in1>>in2;
end
endfunction


initial begin
repeat(10) begin
	in1=$urandom_range(10,20);
	in2=$urandom_range(1,10);
	oper=$urandom_range(0,7);
	#1;
	y=alu(in1,in2,oper);
	$display("in1=%0d , in2 =%0d , oper = %0d , y= %0d",in1,in2,oper,y);
end
end
endmodule
