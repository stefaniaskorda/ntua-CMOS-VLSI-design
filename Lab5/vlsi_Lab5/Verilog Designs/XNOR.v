// Verilog code for gate XNOR

module XNOR( A,B,w1,X);
 input A,B;
 output X;
 wire w1;
 nand nand2_1(w1,A,B);
 assign X=~w1&(A|B);
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2

