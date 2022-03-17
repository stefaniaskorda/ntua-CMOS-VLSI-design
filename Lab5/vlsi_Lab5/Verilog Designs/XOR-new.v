// Verilog code for gate XOR

module XOR( A,B,w1,X);
 input A,B;
 output X;
 wire w1;
 nor #(18) nor2_1(w1,A,B);
 assign X=~w1|(A&B);
endmodule

// Simulation parameters in Verilog Format
always
#100 A=~A;
#200 B=~B;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2

