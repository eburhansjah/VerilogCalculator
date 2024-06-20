`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 05:06:34 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb(

    );
    reg in_clk; 
    wire out_clk;
    
    clock_divider DUT (
        .in_clk(in_clk),
        .out_clk(out_clk)
    ); 
    
    // Clock generator
    always #1 in_clk = ~in_clk;
    
    initial begin
        in_clk = 0;
    end
    initial #100 $finish;

endmodule