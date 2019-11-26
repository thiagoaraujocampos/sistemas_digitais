module mux_001 (a, sel, saida);
	input a;
	input [2:0] sel;
	output reg saida;
	
	always @ (sel)
		if(sel == 3'b001)
			saida <= a;
endmodule