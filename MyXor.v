module MyXor(x, y, out);
	input x, y;
	output out;
	wire nx, ny, a, b;
	
	nand nand1(nx, x, x, x);
	nand nand2(ny, y, y, y);
	
	nand nand3(a, nx, nx, y);
	nand nand4(b, ny, ny, x);
	
	nand nand5(out, a, a, b);
	
endmodule