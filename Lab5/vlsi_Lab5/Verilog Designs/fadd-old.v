// Verilog code for FA

module fadd( C,B,A,Carry,Sum);
 input C,B,A;
 output Carry,Sum;
 wire w5,w6,w8,w10;
 xor #(18) xor2_1(w5,A,B);
 nand #(18) nand2_2(w6,A,C);
 nand #(18) nand2_3(w8,B,A);
 xor #(18) xor2_4(Sum,w5,C);
 nand #(18) nand3_5(Carry,w8,w10,w6);
 nand #(18) nand2_6(w10,B,C);
endmodule

// Simulation parameters in Verilog Format
always
#200 C=~C;
#400 B=~B;
#800 A=~A;

// Simulation parameters
// C CLK 1 1
// B CLK 2 2
// A CLK 4 4
