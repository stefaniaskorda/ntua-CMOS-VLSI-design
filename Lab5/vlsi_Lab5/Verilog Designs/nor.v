// Verilog code for a 2-input gate NOR

module nor (X,A,B);
     input A,B;
     output X;
     wire Y;
     pmos p1 (Y,VDD,A);
     pmos p2 (X,Y,B);
     nmos n1 (X,VSS,A);
     nmos n2 (X,VSS,B);
endmodule

// Simulation parameters in Verilog Format
always
#400 B=~B;
#800 A=~A;

// Simulation parameters
// B CLK 2 2
// A CLK 4 4
