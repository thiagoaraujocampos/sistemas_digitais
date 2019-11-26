module conc(a, b, c);
	input [9:0] a;
	input [9:0] b;
	output [14:0] c;
	assign c = {a[6:0],b[7:0]};
endmodule