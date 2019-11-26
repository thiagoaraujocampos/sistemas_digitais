module state_machine (clk, rst, a, state, on);
	input clk, rst, a;
  	output [2:0] state;
  	output reg on;
	reg [2:0] y, Y;
	
  	parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;
	
	always @ (posedge a)
	begin
		if(rst) Y = A;
		else
			case(y)
				A: Y = B;
				B: Y = C;
				C: Y = D;		
				D: Y = E;
				E: Y = E;
			endcase
      	on = (y == E);
	end
	
	always @ (posedge rst, posedge clk)
		if(rst) y <= A;
		else y <= Y;
	assign state = y;
endmodule