module test_register_file;

reg	rst, clk;
//read signals
reg	[1:0]	rd_index1;
reg	[1:0]	rd_index2;
wire	[15:0]	rd_data1;
wire	[15:0]	rd_data2;
//write signals
reg	wr_enable;
reg	[1:0]	wr_index;
reg	[15:0]	wr_data;

register_file u0(
	rst, clk,
	//read signals
	rd_index1, rd_index2, rd_data1, rd_data2, 
	//write signals
	wr_enable, wr_index, wr_data
);

initial begin 
	rst = 1; clk = 0;
	@(negedge clk); @(negedge clk); @(negedge clk); @(negedge clk); rst = 0;
end

always #50 clk = ~clk;

initial begin
	rd_index1 = 0; rd_index2 = 0;

	wr_enable = 0; wr_index = 0; wr_data = 0; @(negedge rst);

	@(posedge clk); @(posedge clk); @(posedge clk);
	//writing data into register file wr_enable = 1;
	wr_enable = 1;
	wr_index = 0; wr_data = 16'h2a; @ (posedge clk);
	wr_index = 1; wr_data = 16'h37; @(posedge clk);
	wr_index = 2; wr_data = 16'h8b; @(posedge clk);
	wr_index = 3; wr_data = 16'hfd; @(posedge clk);

	//stop writing data into register file @(posedge clk);
	wr_enable = 0;

	@(posedge clk);
	//reading data from register file rd_index1 = 0;
	rd_index2 = 1; 
	@(posedge clk);
	rd_index1 = 2; 
	rd_index2 = 3; 

end endmodule 
