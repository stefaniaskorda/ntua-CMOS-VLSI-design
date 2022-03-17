// half adder
module halfadder(A,B,Carry,Sum);
  input A,B;
  output Sum,Carry;
  xor(Sum,A,B);
  and(Carry,A,B);
endmodule

//full adder
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

//2bit adder

module twobitadder(s0,s1,s2,a0,a1,b0,b1,c0);
  input a0,b0,a1,b1,c0;
  output s0,s1,s2;
  wire xor1,xor2,or1,and1,and2,and3,and4;

  xor(xor1,a0,b0);
  xor(s0,c0,xor1);
  and(and1,xor1,c0);
  and(and2,a0,b0);
  or(or1,and1,and2);
  
  xor(xor2,a1,b1);
  xor(s1,or1,xor2);
  and(and3,xor2,or1);
  and(and4,a1,b1);
  or(s2,and3,and4);

endmodule

