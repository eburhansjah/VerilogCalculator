`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 05:07:56 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clock, // 100 MHz clock from the board
    output [6:0] cathode,
    output [7:0] anode
    );
    wire seconds_clock; // 1 Hz
	wire fsm_clock;     // 1 kHz
    reg [15:0] counter; // this is the number we want to display
    // instantiate the clock divider to drive the 1 Hz signal    
    // instantiate the faster clock divider to drive the 1 kHz signal
	// instantiate the FSM using the fsm_clock signal
    clock_divider DUT(clock, seconds_clock);
    faster_clock_divider DUT1(clock, fsm_clock);
    fsm DUT2(fsm_clock, counter, cathode, anode); // Not sure about this
    
    always @(posedge seconds_clock)
	begin
		// increment counter
		counter = counter  + 1'b1;
	end
	
endmodule
