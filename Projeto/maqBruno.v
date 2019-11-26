module maqBruno (clk, rst, out1, out2, out3, out4, ativar);
  input clk, rst;
  output out1, out2, out3, out4, ativar;
  
  reg [1:0] state;
  reg out1,out2,out3,out4, ativar;
  
  parameter s0= 0, s1 = 1, s2 = 2, s3 = 3;
  
  always@(posedge clk)
    begin
      if( rst == 1'b1)
      begin
        state <= s0;
      end else begin
        case(state)
          s0:
            begin
            	out1 <= 1'b1;
            	state <= s1;
            end
          s1:
            begin
            	out2 <= 1'b0;
           		state <= s2;
            end
          s2:
            begin
            	out3 <= 1'b0;
            	state <= s3;
            end
          s3:
            begin
            	out4 <= 1'b1;
          		ativar <= 1'b1;
            end
          default:
            state <= s0;            
        endcase
      end
    end  
endmodule