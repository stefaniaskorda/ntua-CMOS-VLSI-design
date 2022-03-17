
module And( A[1],A[0],And_Out);
 input A[1],A[0];
 output And_Out;
 wire ;
 and #(18) and2_1(And_Out,A[1],A[0]);
endmodule

// Simulation parameters in Verilog Format
always
#200 A[1]=~A[1];
#400 A[0]=~A[0];

// Simulation parameters
// A[1] CLK 1 1
// A[0] CLK 2 2
