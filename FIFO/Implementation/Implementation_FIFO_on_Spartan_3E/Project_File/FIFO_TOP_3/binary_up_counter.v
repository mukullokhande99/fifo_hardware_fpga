`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    11:19:13 09/08/2019 
 
// Module Name:    binary_up_counter 

//////////////////////////////////////////////////////////////////////////////////
`include "para.h"
module binary_up_counter(
	input b_ctr_clk, b_ctr_reset_n, b_ctr_enable_in, 
	output reg [`a_length:0] b_count_ptr  );

	//parameter a_length = 3;
	
/* binary counter with synchronous reset  */

	always @(posedge b_ctr_clk or negedge b_ctr_reset_n)
	begin
		if(~b_ctr_reset_n)
			b_count_ptr <= 0; 				//On reset binary counter set to zero
		else
		if(b_ctr_enable_in== 0)
			b_count_ptr <= b_count_ptr + 1'b0; // binary counter disabled
		else
			b_count_ptr <= b_count_ptr + 1'b1; // binary counter incremented

	end
endmodule
