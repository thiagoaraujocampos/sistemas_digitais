module mod_xor (a, b, out);
	input a, b;
	output reg out;
	
	always @ (a, b)
		out = a ^ b;
endmodule 
	