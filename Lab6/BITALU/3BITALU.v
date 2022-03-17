// DSCH 3.5
// 14/1/2022 6:06:03 μμ
// C:\Users\Kostas\Desktop\Σχολή\7ο εξάμηνο\Ροή Η\Εισαγωγή στα VLSI\6η Εργαστηριακή ’σκηση\3BITALU21.sch

module 3BITALU21( B0,A1,B2,A0,A2,B_invbOp0bCin_0,Op1,B1,
 output_3,Sum_1,output_1,Cout_1,Cout_2,output_2,Sum_2,Sum_0,
 output_0,Cout_0);
 input B0,A1,B2,A0,A2,B_invbOp0bCin_0,Op1,B1;
 output output_3,Sum_1,output_1,Cout_1,Cout_2,output_2,Sum_2,Sum_0;
 output output_0,Cout_0;
 wire w2,w3,w5,w7,w10,w11,w12,w14;
 wire w15,w18,w19,w20,w21,w23,w24,w26;
 wire w27,w29,w32,w34,w35,w36,w37,w39;
 wire w40,w42,w43,w44,w45,w46,w47,w48;
 wire w49,w53,w54,w55,w56,w57,w58,w59;
 wire w60,w61,w62;
 and #(3) and2_1(output_3,w2,w3);
 xor #(4) xor2_2(w7,w5,A0);
 or #(3) or2_3(output_1,w10,w11);
 and #(3) and2_4(w11,w12,Op1);
 and #(3) and2_5(w10,w14,Sum_1);
 not #(1) inv_6(w14,w15);
 xor #(3) xor2_7(w5,B_invbOp0bCin_0,B0);
 or #(3) or2_8(w12,w18,w19);
 and #(3) and2_9(w19,w20,w21);
 not #(1) inv_10(w21,B_invbOp0bCin_0);
 xor #(3) xor2_11(w23,B_invbOp0bCin_0,B1);
 and #(3) and2_12(w18,w24,B_invbOp0bCin_0);
 or #(4) or2_13(Cout_1,w26,w27);
 and #(3) and2_14(w26,Cout_0,w29);
 xor #(4) xor2_15(Sum_1,Cout_0,w29);
 and #(3) and2_16(w27,A1,B1);
 and #(3) and2_17(w24,A1,B1);
 or #(3) or2_18(w20,B1,A1);
 xor #(4) xor2_19(w29,w23,A1);
 xor #(3) xor2_20(w32,B_invbOp0bCin_0,B2);
 xor #(4) xor2_21(w34,w32,A2);
 or #(3) or2_22(w35,B2,A2);
 and #(3) and2_23(w36,A2,B2);
 and #(3) and2_24(w37,A2,B2);
 xor #(4) xor2_25(Sum_2,Cout_1,w34);
 or #(3) or2_26(w39,B0,A0);
 and #(3) and2_27(w40,Cout_1,w34);
 or #(4) or2_28(Cout_2,w40,w37);
 and #(3) and2_29(w42,w36,B_invbOp0bCin_0);
 xor #(3) xor2_30(w2,Cout_2,B_invbOp0bCin_0);
 not #(1) inv_31(w44,w43);
 and #(3) and2_32(w45,w35,w44);
 or #(3) or2_33(w46,w42,w45);
 not #(1) inv_34(w47,Op1);
 and #(3) and2_35(w48,w47,Sum_2);
 and #(3) and2_36(w49,w46,Op1);
 or #(3) or2_37(output_2,w48,w49);
 or #(3) or2_38(output_0,w53,w54);
 and #(3) and2_39(w54,w55,Op1);
 and #(3) and2_40(w53,w56,Sum_0);
 not #(1) inv_41(w56,Op1);
 or #(3) or2_42(w55,w57,w58);
 and #(3) and2_43(w58,w39,w59);
 not #(1) inv_44(w59,B_invbOp0bCin_0);
 not #(1) inv_45(w3,Op1);
 and #(3) and2_46(w57,w60,B_invbOp0bCin_0);
 or #(4) or2_47(Cout_0,w61,w62);
 and #(3) and2_48(w61,B_invbOp0bCin_0,w7);
 xor #(4) xor2_49(Sum_0,B_invbOp0bCin_0,w7);
 and #(3) and2_50(w62,A0,B0);
 and #(3) and2_51(w60,A0,B0);
endmodule

// Simulation parameters in Verilog Format
always
#200 B0=~B0;
#400 A1=~A1;
#800 B2=~B2;
#1600 A0=~A0;
#3200 A2=~A2;
#6400 B_inv/Op0/Cin_0=~B_inv/Op0/Cin_0;
#12800 Op1=~Op1;
#25600 B1=~B1;

// Simulation parameters
// B0 CLK 1 1
// A1 CLK 2 2
// B2 CLK 4 4
// A0 CLK 8 8
// A2 CLK 16 16
// B_inv/Op0/Cin_0 CLK 32 32
// Op1 CLK 64 64
// B1 CLK 128 128
