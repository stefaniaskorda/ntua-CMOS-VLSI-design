module latch2(Q, D, Clk);
    input D, Clk;
    output Q;
    wire nQ, nClk, QM, nQM;

    not (nClk,Clk);
    not (nQM,QM);

    pmos p1(QM,QM,Clk);
    nmos n1(QM,QM,nClk);
    pmos p2(D,QM,nClk);
    nmos n2(QM,D,Clk);

    pmos p3(nQ,nQ,nClk);
    nmos n3(nQ,nQ,Clk);
    pmos p4(nQM,nQ,Clk);
    nmos n4(nQ,nQM,nClk); 

    not (Q,nQ);  
endmodule

always
    #100 D=~D;
    #200 Clk=~Clk;