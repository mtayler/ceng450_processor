 
module register_file (
	rst, clk,
	//read signals
	rd_index1, rd_index2, rd_data1, rd_data2,
	//write signals
	wr_enable, wr_index, wr_data
);

input	rst, clk;

 //read signals
input	[1:0]	rd_index1;
input [1:0]	rd_index2;
output [15:0] rd_data1;
output [15:0] rd_data2;

//write signals
input	wr_enable;
input	[1:0]	wr_index;
input	[15:0]	wr_data;

//internals signals
reg [15:0]	reg_file[3:0];

//write operation
always @(negedge clk) begin
	if(rst) begin
		reg_file[0] = 16'h00; 
		reg_file[1] = 16'h00; 
		reg_file[2] = 16'h00; 
		reg_file[3] = 16'h00; 
	end else if(wr_enable) begin
		case (wr_index)
			2'b00: reg_file[0] = wr_data;
			2'b01: reg_file[1] = wr_data;
			2'b10: reg_file[2] = wr_data;
			2'b11: reg_file[3] = wr_data;
		endcase
	end
end

assign rd_data1 = (rd_index1 == 2'b00) ? reg_file[0]:
						(rd_index1 == 2'b01) ? reg_file[1]:
						(rd_index1 == 2'b10) ? reg_file[2]: reg_file[3];
						
assign rd_data2 = (rd_index2 == 2'b00) ? reg_file[0]:
						(rd_index2 == 2'b01) ? reg_file[1]:
						(rd_index2 == 2'b10) ? reg_file[2]: reg_file[3];

endmodule
