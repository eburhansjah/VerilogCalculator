# VerilogCalculator
A basic ALU calculator that is similar to that found in a computer processor. The CAD tool used to implement this project on the FPGA is Vivado.

Not only does this calculator supports boolean operations, but it also does arithmetic operations with an indicator should there be an overflow.


**Inputs:**
- 4 switches each for A value, B value and operator code (4-bits)
- A RESET button

**Outputs:**
- 1 led to show overflow
- 7 segment display:
   - LHS displays the opcode in hex (4-bits)
   - RHS displays result of boolean/arithmetic operation in decimal (unsigned 4-bits)

| **Opcodes (binary)** | **Operations** |
| :---         |     :---     |
| 0000         | A + 1        | 
| 0001         | B + 1        | 
| 0010         | A - B        |
| 0011         | A + B        | 
| 0100         | A * B        |
