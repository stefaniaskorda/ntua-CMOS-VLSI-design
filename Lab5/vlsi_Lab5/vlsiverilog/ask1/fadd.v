module fadd(Sum,Carry,A,B,C);
  input A,B,C;
  output Sum,Carry;
  wire w1,w2,w3;
  xor(w1,A,B);
  xor(Sum,w1,C);
  and(w2,A,B);
  and(w3,C,w1);
  or(Carry,w2,w3);
endmodule