`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:33 09/07/2019 
// Design Name: 
// Module Name:    binary_up_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module binary_up_counter(
   input b_ctr_clk, b_ctr_reset_n, b_ctr_enable_in, 
	output reg [a_length:0]b_count_ptr);

	parameter a_length = 3;
	
/* binary counter with synchronous reset  */

	always @(posedge b_ctr_clk or negedge b_ctr_reset_n)
	begin
		if(~b_ctr_reset_n)
			b_count_ptr <= 0;
		else
		if(b_ctr_enable_in== 0)
			b_count_ptr <= b_count_ptr + 1'b0;
		else
			b_count_ptr <= b_count_ptr + 1'b1;

	end

endmodule
