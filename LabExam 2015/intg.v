module intg(reset,clk,X,Y);
  input clk,reset;
  input [3:0] X;
  output[12:0] Y;
  wire [8:0] out;
  wire [3:0]q;
  //wire acc_rst1,acc_rst2;
  
  acc_rst a1(clk,reset,q);
  entries_16 e1(X,out);
  adder_register ar1(out,clk,Y,q[2],q[3]);

endmodule  
