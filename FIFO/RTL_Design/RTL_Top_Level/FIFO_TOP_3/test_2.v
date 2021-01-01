`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:32:37 10/05/2019
// Design Name:   fifo_top_1
// Module Name:   C:/Users/Student/Desktop/flag new/FIFO_top_1/test_2.v
// Project Name:  FIFO_top_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo_top_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_2;

	// Inputs
	reg wr_clk;
	reg rd_clk;
	reg [7:0] data_in;
	reg reset_n;
	reg enable_wr;
	reg enable_rd;

	// Outputs
	wire [7:0] data_out;
	wire f_empty;
	wire f_full;
	wire f_almost_full;
	wire f_almost_empty;

	// Instantiate the Unit Under Test (UUT)
	fifo_top_1 uut (
		.wr_clk(wr_clk), 
		.rd_clk(rd_clk), 
		.data_in(data_in), 
		.data_out(data_out), 
		.reset_n(reset_n), 
		.f_empty(f_empty), 
		.f_full(f_full), 
		.f_almost_full(f_almost_full), 
		.f_almost_empty(f_almost_empty), 
		.enable_wr(enable_wr), 
		.enable_rd(enable_rd)
	);
always # 5 wr_clk = ~ wr_clk;
	always # 15.15 rd_clk = ~ rd_clk;
	
	initial begin
		// Initialize Inputs
		wr_clk = 0;
		rd_clk = 0;
		
		data_in = 8'b0000_1010;
		reset_n = 0;
		enable_wr = 0;
		enable_rd = 0;
		#30;
		
		data_in = 8'b0000_1010;
		reset_n = 1;
		enable_wr = 0;
		enable_rd = 0;
		#30;
		
		
		data_in = 8'b0000_1010;
		reset_n = 1;
		enable_wr = 1;
		enable_rd = 0;
		#10;
		
		data_in = 8'b0001_0000;
		reset_n = 1;

		#15;
		
		data_in = 8'b0100_0001;
		reset_n = 1;

		#15;
		
		data_in = 8'b0001_0011;
		reset_n = 1;

		#15;
		
		data_in = 8'b1010_1010;
		reset_n = 1;

		#15;
		
		data_in = 8'b1010_1010;
		reset_n = 1;
		#15;
		
		data_in = 8'b1011_1011;
		reset_n = 1;
		#15;
		
		data_in = 8'b1111_1111;
		reset_n = 1;
		#15;
		
		data_in = 8'b0000_0111;  // full
		reset_n = 1;
		#15;
		

      data_in = 8'b0000_1000;
		reset_n = 1;
		enable_wr = 0;
		enable_rd = 1;
		#10;
		
      data_in = 8'b0000_1000;
		reset_n = 1;
		enable_wr = 1;
		enable_rd = 0;
		#10;
		
		data_in = 8'b1011_1011;
		reset_n = 1;
		#15;
		
		data_in = 8'b1011_1011;
		reset_n = 1;
		#15;
	end
      
endmodule

