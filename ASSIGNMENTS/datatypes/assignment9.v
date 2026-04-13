module tb;
reg [95:0] i;


initial begin

repeat(10)begin
i = {$random,$random,$random};
#1;
$display("%d ",i);
end

end
endmodule

