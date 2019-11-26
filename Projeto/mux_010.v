module mux_010 (a, sel, saida);
	input a;
	input [2:0] sel;
	output reg saida;
	
	always @ (sel)
		if(sel == 3'b010)
			saida <= a;
endmodule