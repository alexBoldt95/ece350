module OneBitAdder(x, y, cin, s, cout);
	input x, y, cin;
	output s, cout;
	wire s1, c1, c2, n1, n2;
	
	HalfAdder HA1(x, y, s1, c1);
	HalfAdder HA2(s1, cin, s, c2);
	
	nand nand1(n1, c1, c1, c1);
	nand nand2(n2, c2, c2, c2);
	nand nand3(cout, n1, n1, n2);
	
endmodule
	