module Dlatch(Q, nQ, D, Clk);
    input D, Clk;
    output Q, nQ;
    wire notD, X1, X2, Y1, Y2;
    not (notD,D);

    pmos p1(X1,VDD,D);
    pmos p2(X1,VDD,Clk);
    pmos p3(nQ,X1,Q);
    nmos n1(nQ,Y1,D);
    nmos n2(Y1,VSS,Clk);
    nmos n3(nQ,VSS,Q);

    pmos p4(X2,VDD,notD);
    pmos p5(X2,VDD,Clk);
    pmos p6(Q,X2,nQ);
    nmos n4(Q,Y2,notD);S
    nmos n5(Y2,VSS,Clk);
    nmos n6(Q,VSS,nQ);
endmodule

always 
    #100 D=~D;
    #200 Clk=~Clk;
