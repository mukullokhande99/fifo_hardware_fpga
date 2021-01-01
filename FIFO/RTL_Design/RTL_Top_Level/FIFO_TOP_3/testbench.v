`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:24:16 10/05/2019
// Design Name:   fifo_top_1
// Module Name:   C:/Users/Student/Desktop/flag new/FIFO_top_1/testbench.v
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

module testbench;

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
	wire f_half;
	wire f_healthy;

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
		.f_half(f_half), 
		.f_healthy(f_healthy), 
		.enable_wr(enable_wr), 
		.enable_rd(enable_rd)
	);
always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		wr_clk = 0;
		rd_clk = 0;
		data_in =3'b000;
		reset_n = 0;
		enable_wr = 0;
		enable_rd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		
		wr_clk = 0;
		rd_clk = 0;
		data_in = 3'b001;
		reset_n = 0;
		enable_wr = 0;
		enable_rd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimul
		

	end
      
endmodule

