`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 05:11:48 PM
// Design Name: 
// Module Name: fsm
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


module fsm(
    input clock,
    input [15:0] sixteen_bit_number,
    output [6:0] cathode,
    output reg [7:0] anode
    );
    
    reg [3:0] four_bit_number;
    // instantiate decoder that decodes the four bit number into the cathode
    decoder DUT(four_bit_number, cathode);
    reg [1:0] state; // stores state of FSM
    
    initial begin
		state = 0;
		anode = 8'b11111111;
	end
    
    always @(posedge clock)
	begin
		// increment state
		// set anode (which display do you want to set?)
		//   hint: if state == 0, then set only the LSB of anode to zero,
		//         if state == 1, then set only the second to LSB to zero.
		// set the four bit number to be the approprate slice of the 16-bit number
		
        // Anode determines which of the 8 display to turn on. 0 = on 1 = off
        // Meanwhile, the cathode determines what 4-bit number should be displayed on the display.
        // Each of the 8 display consists of 4-bit cathode
        if (state == 2'b00) begin
            four_bit_number <= sixteen_bit_number[3:0];
            anode <= 8'b11111110;
            state <= 2'b01;
        end    
        else if (state == 2'b01) begin
            four_bit_number <= sixteen_bit_number[7:4];
            anode <= 8'b11111101;
            state <= 2'b10;
        end
        else if (state == 2'b10) begin
            four_bit_number <= sixteen_bit_number[11:8];
            anode <= 8'b10111111;
            state <= 2'b11;
        end
        else begin
            four_bit_number <= sixteen_bit_number[15:12];
            anode <= 8'b01111111;
            state <= 2'b00;
        end
         
	end
    
endmodule
