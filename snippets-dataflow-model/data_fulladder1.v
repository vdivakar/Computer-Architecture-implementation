module data_4_1mux(out, a,b,c,d, s1,s2);
  input a,b,c,d;
  input s1,s2;
  output out;
  
  assign out =  (~s1 & ~s2 & a)|
                (~s1 &  s2 & b)|
                ( s1 & ~s2 & c)|
                ( s1 &  s2 & d);
  endmodule


// assign out = s1?(s2?d:c):(s2?b:a);