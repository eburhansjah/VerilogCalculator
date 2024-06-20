`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 05:08:47 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb(

    );
    reg clock; 
    wire [6:0] cathode;
    wire [7:0] anode;
    
    counter DUT (
        .clock(clock),
        .cathode(cathode),
        .anode(anode)
    ); 
    
    // Clock generator
    always #1 clock = ~clock;
    
    initial begin
        clock = 0;
    end
    initial #100 $finish;
    
endmodule
