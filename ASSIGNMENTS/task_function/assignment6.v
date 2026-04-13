module sample();
reg [8*9:0] name="sample";

task print(input reg [8*9:0] name );
begin
$display("%s",name);
end
endtask
endmodule

module top();
reg [8*9:0] name ="top";
sample s();
initial begin
s.print(name);
end
endmodule
