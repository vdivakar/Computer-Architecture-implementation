module JKflipflop(j,k,clk,Q);
  input j,k,clk;
  output Q;
  reg Q;
  //wire q;
    
  always @  (posedge clk)
  begin
    Q <= (j & ~Q) | (~k & Q);
  end

endmodule