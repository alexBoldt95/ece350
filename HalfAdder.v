module HalfAdder(x, y, s, cout);
	input x, y;
	output s, cout;
	wire n1, n2, n3;
	
	MyXor myxor1(x, y, s);
	
	nand nand4(n3, x, y, y);
	nand nand5(cout, n3, n3, n3);
	
endmodule