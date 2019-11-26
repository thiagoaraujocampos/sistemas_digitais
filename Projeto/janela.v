module janela(	linha, coluna, mask );
	input [9:0] linha;
	input [9:0] coluna;
	output reg mask;
	
	always@(linha , coluna)
	begin
		if(linha < 256 && coluna < 128)
			mask = 1;
		else
			mask = 0;
	end

endmodule