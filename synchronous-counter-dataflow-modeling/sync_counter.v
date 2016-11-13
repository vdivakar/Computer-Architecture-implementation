module sync_counter(clear, clock, c_enable,Q);
  output[3:0] Q;
  input clear,clock,c_enable;
  wire a1,a2,a3;
   
  assign  a1= Q[1] & c_enable,
          a2= Q[2] & a1,
          a3= Q[3] & a2;
  
  
  JK_ff f1(c_enable, c_enable,clear,clock,Q[0],);
  JK_ff f2(a1, a1,clear,clock,Q[1],);
  JK_ff f3(a2, a2,clear,clock,Q[2],);
  JK_ff f4(a3, a3,clear,clock,Q[3],);
  
endmodule
