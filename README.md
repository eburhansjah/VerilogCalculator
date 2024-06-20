# VerilogCalculator
A basic ALU calculator that is similar to that found in a computer processor. Not only does this calculator supports boolean operations, but it also does arithmetic operations with a led indicator for the presence of an overflow.

The CAD tool used to implement this project on the FPGA is Xilinx Vivado.

## Overview
<img width="255" alt="fpga" src="https://github.com/eburhansjah/VerilogCalculator/assets/130926828/3b06c06e-36b8-4444-ad7e-c2695a161d46">

**Inputs:**
- 4 switches each for A value, B value and operator code (4-bits)
- A RESET button

**Outputs:**
- 1 led to show overflow
- 7 segment display:
   - LHS displays the opcode in hex (4-bits)
   - RHS displays result of boolean/arithmetic operation in decimal (unsigned 4-bits)
     
Note: 
- If opcode is undefined, RHS will show 0
- The image above shows the initial state of the calculator in which opcode is 0 and result output is 1.

  The opcode 0 increments the value A by 1. Because all of the switches are off, A = 0; hence, A = 0 + 1 = 1

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

## **More images**
<img width="255" alt="user_inputs" src="https://github.com/eburhansjah/VerilogCalculator/assets/130926828/b03f12e8-b6e8-4689-b586-0962b59bad72">


<img width="255" alt="overflow_example" src="https://github.com/eburhansjah/VerilogCalculator/assets/130926828/60c58265-638e-4141-85ff-b5433befc762">



