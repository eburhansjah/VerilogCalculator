`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 06:40:21 PM
// Design Name: 
// Module Name: TopModule_tb
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


module TopModule_tb(

    );
    reg clock; // 100 MHz clock from the board
    reg reset;
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] opcode;
    
    wire [6:0] cathode;
    wire [7:0] anode;
    wire [3:0] aout;
    wire overflow;
    
    TopModule DUT(
            .clock(clock),
            .reset(reset),
            .A(A),
            .B(B),
            .opcode(opcode),
            .cathode(cathode),
            .anode(anode),
            .aout(aout),
            .overflow(overflow)
    );
    
    always #1 clock = ~clock;
    
    initial begin
        clock = 0;
        reset = 0;
        A = 4'b0000;
        B = 4'b0000;
        opcode = 4'b0000;
        
    end
    initial #100 $finish;
endmodule