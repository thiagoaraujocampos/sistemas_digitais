module proc (a, clk, rst, conf, out, inbypass, bypass);
	input rst, clk, conf, a, inbypass;
	output out, bypass;
  	reg  [255:0] l1; 
  	reg  [255:0] l2;
  	reg  [2:0] l3;
  	reg  [257:0] lbypass;
  	reg uL1, uL2;
  	reg [8:0] m;
  always @ (posedge clk) 
  	begin  
    	uL1 = l1[0];
		uL2 = l2[0];
		l1 = {a,l1} >> 1;
    	l2 = {uL1,l2} >> 1;
    	l3 = {uL2,l3} >> 1;
    	lbypass = {inbypass,lbypass} >> 1;
    	
    	m[8] = l1[255];
        m[7] = l1[254];
        m[6] = l1[253];
        m[5] = l2[255];
        m[4] = l2[254];
        m[3] = l2[253];
    	m[2] = l3[2];
    	m[1] = l3[1];
    	m[0] = l3[0];
      if(rst)
        begin	
			l1 = 0;
			l2 = 0;
			l3 = 0;
			m = 0;
        end
  	end
	assign bypass = lbypass[0];
  	assign out = ((m[7] || (m[5] || m[4] || m[3]) || m[1]) && conf) || ((m[7] && (m[5] && m[4] && m[3]) && m[1]) && !conf);
endmodule

