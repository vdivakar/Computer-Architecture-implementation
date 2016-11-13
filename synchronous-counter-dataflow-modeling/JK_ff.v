module JK_ff(j,k,clear,clock,q,qbar);
  input j,clear,k,clock;
  output q,qbar;
  wire a,b,y,c,d,ybar,cbar;
  
  assign cbar = ~clock;
  assign a = ~(qbar & j & clock & clear),
         b = ~(clock & k & q),
         y = ~(a & ybar),
         ybar = ~(y & clear & b),
      
         c = ~(y & cbar),
         d = ~(cbar & ybar),
         q = ~(c & qbar),
         qbar = ~(clear & q & d);
         
endmodule
  
