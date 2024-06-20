`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 11:49:37 AM
// Design Name: 
// Module Name: binary_to_BCD_converter_tb
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


module binary_to_BCD_converter_tb(

    );
    reg [7:0] bin;
    wire [3:0] digit0, digit1, digit2;
    reg [8:0] i;
    
    binary_to_BCD_converter DUT (bin, {digit2, digit1, digit0});
    
    initial begin
        for (i=0;i<256;i=i+1)
        begin
            bin = i;
            #10;
        end
        $finish;
    end
    
endmodule
