`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SGGSIE&T,NANDED
// Engineer: Mukul Lokhande
// 
// Create Date:    11:21:54 09/08/2019 
// Design Name: Read Control Block
// Module Name:    read_control_top_1 
// Project Name: FIFO Implementation On FPGA
// Target Devices: Spartan 3E
// Tool versions: Xilinx ISE 14.7
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`include "para.h"

module read_control_top_1(
   input rd_clk, f_empty, reset_n, enable_rd,
	 output MSB_rd_ptr, enable_rd_out,
	 output [`a_length-1:0] b_rd_ptr,
	 output [`a_length:0] rd_ptr	);

	 binary_up_counter i_2(.b_ctr_clk(rd_clk), .b_ctr_reset_n(reset_n), .b_ctr_enable_in(enable_rd_out), .b_count_ptr(rd_ptr));
	 //Instantiation of binary up counter
	 
	assign enable_rd_out = ~f_empty & enable_rd; 	//Logic to disable counter
	assign {MSB_rd_ptr , b_rd_ptr } = rd_ptr;			//MSB - nth bit of counter to generate for flag logic

endmodule
