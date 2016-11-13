module ripplecarry_4(clk,clear, q);
  output[3:0] q;
  input clk, clear;
  //assign cbar = ~clk;
  T_flipflop t0 (clk,q[0],clear);
  T_flipflop t1 (q[0],q[1],clear);
  T_flipflop t2 (q[1],q[2],clear);
  T_flipflop t3 (q[2],q[3],clear);
  
endmodule
  
