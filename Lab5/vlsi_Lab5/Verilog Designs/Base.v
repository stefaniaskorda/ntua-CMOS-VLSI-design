
module Base( in2,in2,in1,in1,in2,in1,in1,in2,
 Enable,in2,in1,in1,in1,in2,in1,in1,
 outOr,outNand,outXnor,outXor,outNor,outAnd,outBuf,outInv,
 outNotIf1);
 input in2,in2,in1,in1,in2,in1,in1,in2;
 input Enable,in2,in1,in1,in1,in2,in1,in1;
 output outOr,outNand,outXnor,outXor,outNor,outAnd,outBuf,outInv;
 output outNotIf1;
 wire ;
 nor #(18) nor2_1(outNor,in1,in2);
 or #(18) or2_2(outOr,in1,in2);
 xnor #(18) xnor2_3(outXnor,in1,in2);
 and #(18) and2_4(outAnd,in2,in1);
 xor #(18) xor2_5(outXor,in1,in2);
 nand #(18) nand2_6(outNand,in2,in1);
 not #(6) inv_7(outInv,in1);
 notif1 #(6) notif1_8(outNotIf1,in1,Enable);
 buf #(6) buf1_9(outBuf,in1);
endmodule

// Simulation parameters in Verilog Format
always
#200 in2=~in2;
#400 in2=~in2;
#800 in1=~in1;
#1600 in1=~in1;
#3200 in2=~in2;
#6400 in1=~in1;
#12800 in1=~in1;
#25600 in2=~in2;
#51200 Enable=~Enable;
#102400 in2=~in2;
#102400 in1=~in1;
#102400 in1=~in1;
#102400 in1=~in1;
#102400 in2=~in2;
#102400 in1=~in1;
#102400 in1=~in1;

// Simulation parameters
// in2 CLK 1 1
// in2 CLK 2 2
// in1 CLK 4 4
// in1 CLK 8 8
// in2 CLK 16 16
// in1 CLK 32 32
// in1 CLK 64 64
// in2 CLK 128 128
// Enable CLK 256 256
// in2 CLK 512 512
// in1 CLK 512 512
// in1 CLK 512 512
// in1 CLK 512 512
// in2 CLK 512 512
// in1 CLK 512 512
// in1 CLK 512 512
