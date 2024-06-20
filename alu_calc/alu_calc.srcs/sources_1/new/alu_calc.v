`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 05:03:14 PM
// Design Name: 
// Module Name: alu_calc
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


module alu_calc(
    output reg [3:0] aout,
    output overflow,
    input reset, clock,
    input [3:0] A,
    input [3:0] B,
    input [3:0] opcode
    );
    
    reg [31:0] temp;
//    always @(posedge reset) begin
//        if (reset) begin
//            aout <= 4'b0000;
//            overflow <= 1'b0;
//            temp <= 32'b00000000000000000000000000000000;
//        end
//    end
	
    always @(posedge clock, posedge reset) begin
        if (reset) begin
            aout <= 4'b0000;
            temp <= 32'b00000000000000000000000000000000;
        end
        else begin
            case(opcode)
                4'b0000: begin
                    aout <= A+1;
                    temp <= A+1;
                end
                4'b0001: begin
                    aout <= B+1;
                    temp <= B+1;
                end
                4'b0010: begin
                    aout <= A-B;
                    temp <= A-B;
                end
                4'b0011: begin
                    aout <= A+B;
                    temp <= A+B;
                end
                4'b0100: begin
                    aout <= A * B;
                    temp <= A * B;
                end
                4'b0101: begin
                    aout <= A >> 1;
                    temp <= A >> 1;
                end
                4'b0110: begin
                    aout <= A << 1;
                    temp <= A << 1;
                end
                4'b0111: begin
                    aout <= B >> 1;
                    temp <= B >> 1;
                end
                4'b1000: begin
                    aout <= B << 1;
                    temp <= B << 1;
                end
                4'b1001: begin
                    aout <= A % B;
                    temp <= A % B;
                end
                4'b1010: begin
                    aout <= A & B;
                    temp <= A & B;
                end
                4'b1011: begin
                    aout <= A | B;
                    temp <= A | B;
                end
                4'b1100: begin
                    aout <= A ^ B;
                    temp <= A ^ B;
                end
                default: begin // Default for undefined
                    aout <= 4'b0000;
                    temp <= 4'b0000;
                end
            endcase
        end
//    // Check for overflow
//        if (aout != temp) begin
//            overflow <= 1'b1;
//        end
    end
    
    // Check for overflow
    assign overflow = (aout == temp) ? 1'b0 : 1'b1;

endmodule