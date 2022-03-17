module threebitcounter(T0, T1, T2, Clk);
    input Clk;
    output T0, T1, T2;
    wire nT0, nClk, QM0, QM0b, nQM0, nT0b;

    not (nClk,Clk);
    not (nQM0,QM0);

    pmos p1(QM0b,QM0,Clk);
    nmos n1(QM0,QM0b,nClk);
    pmos p2(nT0,QM0,nClk);
    nmos n2(QM0,nT0,Clk);

    not (QM0b,nQM0);

    pmos p3(nT0b,nT0,nClk);
    nmos n3(nT0,nT0b,Clk);
    pmos p4(nQM0,nT0,Clk);
    nmos n4(nT0,nQM0,nClk); 

    not (T0,nT0);
    not (nT0b,T0);   

    wire nT1, QM1, QM1b, nQM1, nT1b;

    not (nQM1,QM1);

    pmos p5(QM1b,QM1,T0);
    nmos n5(QM1,QM1b,nT0);
    pmos p6(nT1,QM1,nT0);
    nmos n6(QM1,nT1,T0);

    not (QM1b,nQM1);

    pmos p7(nT1b,nT1,nT0);
    nmos n7(nT1,nT1b,T0);
    pmos p8(nQM1,nT1,T0);
    nmos n8(nT1,nQM1,nT0); 

    not (T1,nT1);
    not (nT1b,T1);   

    wire nT2, QM2, QM2b, nQM2, nT2b;

    not (nQM2,QM2);

    pmos p9(QM2b,QM2,T1);
    nmos n9(QM2,QM2b,nT1);
    pmos p10(nT2,QM2,nT1);
    nmos n10(QM2,nT2,T1);

    not (QM2b,nQM2);

    pmos p11(nT2b,nT2,nT1);
    nmos n11(nT2,nT2b,T1);
    pmos p12(nQM2,nT2,T1);
    nmos n12(nT2,nQM2,nT1); 

    not (T2,nT2);
    not (nT2b,T2);   
endmodule
