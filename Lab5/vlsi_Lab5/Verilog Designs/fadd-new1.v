// Verilog code for FA

module fadd( C,B,A,Carry,Sum);
 input C,B,A;
 output Carry,Sum;
 wire w1,w2,w3;
 nor #(18) nor2_2(w1,A,B);
 assign w2=w1|(A&B);
 nor #(18) nor2_2(w3,w2,C);
 nor #(18) nor2_2(Carry,w3,w1);
 assign Sum=w3|(w2&C);
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
