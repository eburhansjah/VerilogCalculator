`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 05:10:55 PM
// Design Name: 
// Module Name: faster_clock_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module faster_clock_divider(
    input in_clk, 
    output reg out_clk);
	
	reg[32:0] count;

	initial begin
		// initialize everything to zero
		out_clk <= 1'b0;
		count <= 33'b0;
	end
	
	always @(negedge in_clk)
	begin
		// increment count by one
		// if count equals to some big number (that you need to calculate),
		//   then flip the output clock,
		//   and reset count to zero.
		count = count + 1'b1;
		// if count equals to some big number (that you need to calculate),
		//     (Think: how many input clock cycles do you need to see 
		//     for it to be half a second)
		if (count == 50000) begin
		  count <= 0;
		  out_clk <= ~out_clk;
		end
//		if (count == ) begin
//		  count <= 0;
//		  out_clk <= ~out_clk;
//		end
	end


endmodule
