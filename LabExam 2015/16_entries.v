module entries_16(X,out);
  input [3:0] X;
  output[8:0] out;
  
  assign {out} = X * 5'b11001 ; // 11001 = 25
  
endmodule
  
