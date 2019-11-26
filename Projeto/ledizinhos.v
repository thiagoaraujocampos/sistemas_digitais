module ledizinhos (state, led1, led2, led3, led4, led5);
	input [2:0] state;
	output reg led1, led2, led3, led4, led5;
	
	always@(state) 
		begin
			if(state == 3'b000)
				led1 = 1;
			else
				led1 = 0;
			if(state == 3'b001)
				led2 = 1;
			else
				led2 = 0;
			if(state == 3'b010)
				led3 = 1;
			else
				led3 = 0;
			if(state == 3'b011)
				led4 = 1;
			else
				led4 = 0;
			if(state == 3'b100)
				led5 = 1;
			else
				led5 = 0;
		end
endmodule