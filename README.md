# VerilogCalculator
A basic ALU calculator that is similar to that found in a computer processor. Not only does this calculator supports boolean operations, but it also does arithmetic operations with a led indicator should there be an overflow.

The CAD tool used to implement this project on the FPGA is Xilinx Vivado.

## Overview
**Inputs:**
- 4 switches each for A value, B value and operator code (4-bits)
- A RESET button

**Outputs:**
- 1 led to show overflow
- 7 segment display:
   - LHS displays the opcode in hex (4-bits)
   - RHS displays result of boolean/arithmetic operation in decimal (unsigned 4-bits)
     
Note: If opcode is undefined, RHS will show 0

## Prerequisites
1) Need to have Vivado installed
2) Need to have FPGA (Digilent Nexys A7-100T: FPGA Trainer Board )

## Usage
1) Clone repository on local device
2) Open and launch project `alu_calc` on Vivado
3) Run Synthesis -> Run Implementation -> Generate Bitstream
4) Go to hardware program manager, select to program on the generated bitstream file
5) After succesfully loading Verilog to FPGA, toggle switches to operate the calculator
   
## **Table of operations**
| **Opcodes (binary)** | **Operations** |
| :---         |     :---     |
| 0000         | A + 1        | 
| 0001         | B + 1        | 
| 0010         | A - B        |
| 0011         | A + B        | 
| 0100         | A * B        |
| 0101         | A >> 1       |
| 0110         | A << 1       |
| 0111         | B >> 1       |
| 1000         | B << 1       |
| 1001         | A % B        |
| 1010         | A AND B      |
| 1011         | A OR B       |
| 1100         | A XOR B      |

