// DSCH 3.1
// 06/06/2007 23:15:51
// D:\Documents and Settings\sicard\Mes documents\software\Dsch31\examples\Add4.sch

module Add4( B0,B1,B2,B3,A0,A1,A2,A3,
 display14,display13,display12,display11,display10,display24,display23,display22,
 display21,display20,out2);
 input B0,B1,B2,B3,A0,A1,A2,A3;
 output display14,display13,display12,display11,display10,display24,display23,display22;
 output display21,display20,out2;
 wire w10,w19,w20,w24,w25,w26;
 xor #(7) xor2_1(display20,B0,A0);
 and #(9) and2_2(w10,A0,B0);
 xor #(8) xor2_3(w24,B2,A2);
 assign w20=(B2&A2)|(w19&(B2|A2))
 xor #(9) xor2_4(display22,w24,w19);
 xor #(8) xor2_5(w25,B1,A1);
 assign w19=(B1&A1)|(w10&(B1|A1))
 xor #(9) xor2_6(display21,w25,w10);
 xor #(8) xor2_7(w26,B3,A3);
 assign out2=(B3&A3)|(w20&(B3|A3))
 xor #(9) xor2_8(display23,w26,w20);
endmodule

// Simulation parameters in Verilog Format

// Simulation parameters
// B0 CLK 1 1
// B1 CLK 2 2
// B2 GND
// B3 GND
// A0 CLK 4 4
// A1 CLK 8 8
// A2 GND
// A3 GND
