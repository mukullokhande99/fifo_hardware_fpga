`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:56 10/09/2019 
// Design Name: 
// Module Name:    test_sigals 
// Project Name: 
// Target Devices: 
// Tool versions: 
//////////////////////////////////////////////////////////////////////////////////
module test_sigals(input clk_in,input enable_wr, enable_rd, reset_in/*ctr reset*/, reset_n/*fifo reset*/, output reg [4:0] q_out, 
						output [2:0]data_out, output f_empty, f_full, f_almost_full, f_almost_empty);

reg [23:0] clk_tmp;

always@(posedge clk_in or negedge reset_in)
begin
  if(~reset_in)
    clk_tmp<=0;
  else
    clk_tmp<=clk_tmp+1'b1;
end

	always@ (posedge clk_tmp[23])
	begin
	if(~reset_in)
		q_out <= 5'b0;
	else
		q_out <= q_out + 1'b1;
	end


 fifo_top_1 top( .wr_clk(q_out[0]), .rd_clk(q_out[4]), .data_in({q_out[3:1]}), .data_out(data_out), .reset_n(reset_n),
						.f_empty(f_empty), .f_full(f_full), .f_almost_full(f_almost_full), .f_almost_empty(f_almost_empty), .enable_wr(enable_wr), .enable_rd(enable_rd));

endmodule
