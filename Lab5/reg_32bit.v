module reg_32bit(q,d,clk,reset);
  output [31:0] q;
  input [31:0] d;
  input clk,reset;
  
  generate
    genvar i;
    for(i=0;i<32;i=i+1)
     begin:ff_loop
      d_ff df(q[i],d[i],clk,reset);
    end
  endgenerate
endmodule
