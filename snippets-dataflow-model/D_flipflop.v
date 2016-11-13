module D_flipflop(clear, clk, d, q,qbar);
  input clear,clk,d;
  output q,qbar;
  wire cbar,clkbar,sbar,s,r,rbar;
 
  assign cbar = ~clear;
  assign clkbar=~clk;
  assign rbar = ~(d & cbar & r);
  assign r    = ~(clkbar & rbar & s);
  assign s    = ~(cbar & sbar & clkbar);
  assign sbar = ~(s & rbar);
  assign q = ~(s & qbar);
  assign qbar = ~(q & cbar & r); 

/*
  assign cbar = ~clear,
         clkbar = ~clk;
    
  assign rbar = ~(d & cbar & r),
         r    = ~(clkbar & rbar & s),
          s    = ~(cbar & sbar & clkbar),
          sbar = ~(s & rbar);
        
  assign  q = ~(s & qbar),
          qbar = ~(q & cbar & r); 
*/  
endmodule