module Tff(T, Clk);
    input Clk;
    output T;
    wire nT, nClk, QM, QM2, nQM, nT2;

    not (nClk,Clk);
    not (nQM,QM);

    pmos p1(QM2,QM,Clk);
    nmos n1(QM,QM2,nClk);
    pmos p2(nT,QM,nClk);
    nmos n2(QM,nT,Clk);

    not (QM2,nQM);

    pmos p3(nT2,nT,nClk);
    nmos n3(nT,nT2,Clk);
    pmos p4(nQM,nT,Clk);
    nmos n4(nT,nQM,nClk); 

    not (T,nT);
    not (nT2,T);   
endmodule

always
    //#100 T=~T;
    #200 Clk=~Clk;