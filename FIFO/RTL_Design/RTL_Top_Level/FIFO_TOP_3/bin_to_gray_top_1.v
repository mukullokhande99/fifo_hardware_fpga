`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:42 09/08/2019 
// Design Name: 
// Module Name:    bin_to_gray_top_1 
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
`include "para.h"

module bin_to_gray_top_1(data_in, data_out);

//parameter a_length=3;

integer i;

input [`a_length-1:0] data_in;

output reg [`a_length-1:0] data_out;

always@(*)
	begin
		data_out[`a_length-1] = data_in[`a_length-1];
		for(i= `a_length-2;i>=0;i=i-1)
			data_out[i]=data_in[i+1]^data_in[i]; 
	end

endmodule