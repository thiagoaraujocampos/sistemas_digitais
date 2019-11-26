module state_machine (clk, rst, a, b, q0, q1, q2, q3, q4);
	input clk, rst;
	input a, b;
  	output reg q0, q1, q2, q3, q4;
  	wire [1:0] c;
	reg [2:0] y, Y;
	
	assign c = {a,b};
	
  	parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
	
	always @ (c, y)
	begin
		case(c)
			A:
              begin
              	Y = A;
              	q4 = 0;
              end
			B: 
              begin
              	Y = B;
                q0 = 1;
                q1 = 1;
                q2 = 1;
                q3 = 1;
                q4 = 1;
              end
			C: 
              begin
              	Y = B;
                q0 = 0;
                q1 = 0;
                q2 = 0;
                q3 = 0;
                q4 = 1;
              end
			D: 
              begin
              	Y = B;
                q0 = 1;
                q1 = 0;
                q2 = 0;
                q3 = 1;
                q4 = 1;
              end
		endcase
	end
	
	always @ (posedge rst, posedge clk)
		if(rst) y <= A;
		else y <= Y;
	
endmodule