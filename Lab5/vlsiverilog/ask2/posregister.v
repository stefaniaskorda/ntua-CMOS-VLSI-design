module podregister (CLK,D,Q,NQ);
	
	input CLK,D;
	output Q,NQ;
	wire a,b,c,d;
	
	nand (a,d,D);
	nand (b,a,c);
	nand (c,b,CLK);
	nand (d,CLK,c,a);

	nand (Q,c,NQ);
	nand (NQ,Q,d);

endmodule
	