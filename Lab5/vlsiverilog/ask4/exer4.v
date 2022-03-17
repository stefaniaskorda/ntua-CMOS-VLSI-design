module exer4(pulse, ss, Clk);   
    input ss, Clk;  //ss -> start/stop
    output pulse;
    
    // 3-bit counter
    wire T0, nT0, nClk, QM0, QM0b, nQM0, nT0b;

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

    wire T1, nT1, QM1, QM1b, nQM1, nT1b;

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

    wire T2, nT2, QM2, QM2b, nQM2, nT2b;

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

    // start/stop latch sx.5.2
    
    wire ss_new, nss_new, QM, QMb, nQM, nQb;

    not (nQM,QM);

    pmos p13(QMb,QM,T2);
    nmos n13(QM,QMb,nT2);
    pmos p14(ss,QM,nT2);
    nmos n14(QM,ss,T2);

    not (QMb,nQM);

    pmos p15(nQb,nss_new,nT2);
    nmos n15(nss_new,nQb,T2);
    pmos p16(nQM,nss_new,T2);
    nmos n16(nss_new,nQM,nT2); 

    not (ss_new,nss_new);
    not (nQb,ss_new);    

    // creation of output pulse

    wire f, w1, w2, w3, w4;

    and (w1,T2,nT1);
    and (w2,T2,T0);
    and (w3,nT1,T0);
    or (f,w1,w2,w3);

    bufif1 (w4,f,ss_new);
    
    if (!ss_new) begin
        not (pulse,w4,ss_new);
    end else begin
        buf (pulse,w4);
    end   
endmodule