module sync_counter_JKff(logic,clk,out);
  input logic,clk;
  inout [3:0]out;
  wire [3:0]out;
  wire a,b;
  //reg q0,q1,q2,a,b;
  
  JKflipflop f1(logic,logic,clk,out[0]);
  JKflipflop f2(out[0],out[0],clk,out[1]);
  and a1(a,out[0],out[1]);
  JKflipflop f3(a,a,clk,out[2]);
  and a2(b,a,out[2]);
  JKflipflop f4(b,b,clk,out[3]);
  
 endmodule
   
