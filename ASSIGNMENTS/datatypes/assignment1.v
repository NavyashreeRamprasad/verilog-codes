module tb;
wire valid;
reg addr;
reg [35:3] wadata;
reg [132:69] rdata;
wire [7:0] write_data;

assign write_data = wadata[10:3] & rdata[76:69];

endmodule
