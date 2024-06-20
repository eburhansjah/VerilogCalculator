`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 05:04:41 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input in_clk,      // 100 MHz clock
    output reg out_clk // 1 Hz clock
);
	
	reg[31:0] count;

	initial begin
		// initialize everything to zero (only reg can be init to 0)
		out_clk <= 1'b0;
		count <= 32'b0;
	end
	
	always @(negedge in_clk)
	begin
		// increment count by one (use blocking assignment)
		count = count + 1'b1;
		// if count equals to some big number (that you need to calculate),
		//     (Think: how many input clock cycles do you need to see 
		//     for it to be half a second)
		if (count == 50000000) begin
		  count <= 0;
		  out_clk <= ~out_clk;
		end
		//     then flip the output clock,   (use non-blocking assignment)
		//     and reset count to zero.      (use non-blocking assignment)
	end


endmodule