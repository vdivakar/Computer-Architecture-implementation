module 4_1_mux (out,a,b,c,d,s1,s0);
  input a,b,c,d,s1,s0;
  output out;
  reg out;
  
  always @(a or b or c or d or s1 or s0 )
  begin
    case ({s1,s0})
      2'b00: out = a;
      2'b01: out = b;
      2'b10: out = c;
      2'b11: out = d;
    endcase
  end
  
endmodule
