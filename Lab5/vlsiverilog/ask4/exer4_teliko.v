module exer4(pulse, ss, Clk);   
    input ss, Clk;  //ss -> start/stop
    output pulse;
    wire cnt_clk;
    and (cnt_clk,Clk,w5);
    not (cnt_nclk,cnt_clk);

    // 3-bit counter
    wire T0, nT0, nClk, QM0, QM0b, nQM0, nT0b;

    not (nClk,Clk);
    not (nQM0,QM0);

    pmos p1(QM0b,QM0,cnt_clk);
    nmos n1(QM0,QM0b,cnt_nclk);
    pmos p2(nT0,QM0,cnt_nclk);
    nmos n2(QM0,nT0,cnt_clk);

    not (QM0b,nQM0);

    pmos p3(nT0b,nT0,cnt_nclk);
    nmos n3(nT0,nT0b,cnt_clk);
    pmos p4(nQM0,nT0,cnt_clk);
    nmos n4(nT0,nQM0,cnt_nclk); 

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

    // start/stop latch sx.5.3
    
    wire ss_new, nss_new, a, b, c, d;

    nand (a,d,ss);
    nand (b,a,c);
    nand (c,b,Clk);
    nand (d,Clk,c,a);

    nand (ss_new,c,nss_new);
    nand (nss_new,ss_new,d);

    // creation of output pulse

    wire w1, w2, w3, w4, w5;

    and (w1,T2,nT1);
    and (w2,T2,T0);
    and (w3,nT1,T0);
    or (w4,T0,T1,T2);
    or (w5,w4,ss_new);
    
    or (pulse,w1,w2,w3);
    
    
endmodule