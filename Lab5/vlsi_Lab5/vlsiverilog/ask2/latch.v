module latch(Q, D, Clk);
    input D, Clk;
    output Q;
    wire nQ, nClk, QM, QM2, nQM, nQ2;

    not (nClk,Clk);
    not (nQM,QM);

    pmos p1(QM2,QM,Clk);
    nmos n1(QM,QM2,nClk);
    pmos p2(D,QM,nClk);
    nmos n2(QM,D,Clk);

    not (QM2,nQM);

    pmos p3(nQ2,nQ,nClk);
    nmos n3(nQ,nQ2,Clk);
    pmos p4(nQM,nQ,Clk);
    nmos n4(nQ,nQM,nClk); 

    not (Q,nQ);
    not (nQ2,Q);   
endmodule

always
    #100 D=~D;
    #200 Clk=~Clk;


