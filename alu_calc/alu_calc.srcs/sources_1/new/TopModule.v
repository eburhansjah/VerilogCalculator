`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 06:00:17 PM
// Design Name: 
// Module Name: TopModule
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


module TopModule(
    input clock, // 100 MHz clock from the board
    input reset,
    input [3:0] A,
    input [3:0] B,
    input [3:0] opcode,
    
    output [6:0] cathode,
    output [7:0] anode,
    // output [3:0] aout,
    output overflow
    );
    wire seconds_clock; // 1 Hz
	wire fsm_clock;     // 1 kHz
//    reg [15:0] counter; // this is the number we want to display
    // instantiate the clock divider to drive the 1 Hz signal    
    // instantiate the faster clock divider to drive the 1 kHz signal
	// instantiate the FSM using the fsm_clock signal
	wire [11:0] bcd;
	wire [3:0] aout;
	
    clock_divider DUT(clock, seconds_clock);
    faster_clock_divider DUT1(clock, fsm_clock);
//    fsm DUT2(fsm_clock, counter, cathode, anode);
    
    alu_calc DUT3(aout, overflow, reset, clock, A, B, opcode);
    binary_to_BCD_converter DUT4(aout, bcd);
    fsm DUT5(fsm_clock, {opcode, bcd}, cathode, anode);
	
endmodule
