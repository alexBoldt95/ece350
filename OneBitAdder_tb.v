`timescale 1 ns/ 100 ps
module OneBitAdder_tb();
	reg x, y, cin;
	wire s, cout;
	OneBitAdder A1(x, y, cin, s, cout);
	
	initial
	begin
		$display($time, "<< STARTING THE SIM >>");
		$monitor(x, y, cin, s, cout);
		x = 0;
		y = 0;
		cin = 0;
		#100
		$stop;
	end
	always
		#5 x = ~x;
	always
		#10 y = ~y;
	always
		#20 cin = ~cin;
endmodule
