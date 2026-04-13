module tb;
reg [3:-2]a;
reg [7:2]b;
a=b;
//a[-2]=b[2],a[-1]=b[3],a[0]=b[4],a[1]=b[5],a[2]=b[6],a[3]=b[7]

reg [3:-5]a;
reg [7:2]b;
a=b;
//a[-5]=b[2],a[-4]=b[3],a[-3]=b[4],a[-2]=b[5],a[-1]=b[6],a[0]=b[7]

reg [3:-2]a;
reg [7:0]b;
a=b;
//a[-2]=b[0],a[-1]=b[1],a[0]=b[2],a[1]=b[3],a[2]=b[4],a[3]=b[5]


initial begin
a=$urandom;
b=$urandom;
$display("%0b %0b",a,b);
end

endmodule
