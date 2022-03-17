// DSCH 3.5
// 14/1/2022 5:25:46 μμ
// C:\Users\Kostas\Desktop\Σχολή\7ο εξάμηνο\Ροή Η\Εισαγωγή στα VLSI\6η Εργαστηριακή ’σκηση\1bitaluswsth.sch

module 1bitaluswsth( B,B_invbOp0bCin,A,Op1,Sum,Cout,output);
 input B,B_invbOp0bCin,A,Op1;
 output Sum,Cout,output;
 wire w4,w6,w7,w8,w9,w11,w13,w15;
 wire w16,w17,w19,w20,w21;
 xor #(3) xor2_1(w4,B_invbOp0bCin,B);
 xor #(4) xor2_2(w6,w4,A);
 or #(3) or2_3(w7,B,A);
 and #(3) and2_4(w8,A,B);
 and #(3) and2_5(w9,A,B);
 xor #(4) xor2_6(Sum,B_invbOp0bCin,w6);
 and #(3) and2_7(w11,B_invbOp0bCin,w6);
 or #(3) or2_8(Cout,w11,w9);
 and #(3) and2_9(w13,w8,B_invbOp0bCin);
 not #(1) inv_10(w15,B_invbOp0bCin);
 and #(3) and2_11(w16,w7,w15);
 or #(3) or2_12(w17,w13,w16);
 not #(1) inv_13(w19,Op1);
 and #(3) and2_14(w20,w19,Sum);
 and #(3) and2_15(w21,w17,Op1);
 or #(3) or2_16(output,w20,w21);
endmodule

// Simulation parameters in Verilog Format
always
#200 B=~B;
#400 B_inv/Op0/Cin=~B_inv/Op0/Cin;
#800 A=~A;
#1600 Op1=~Op1;

// Simulation parameters
// B CLK 1 1
// B_inv/Op0/Cin CLK 2 2
// A CLK 4 4
// Op1 CLK 8 8
