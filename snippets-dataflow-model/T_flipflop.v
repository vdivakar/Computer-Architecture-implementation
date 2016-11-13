module T_flipflop(clk,q,reset);
  input clk,reset;
  output q;
  //wire qnot, cnot, none ;
  //assign qnot = ~q,
   //      cnot = ~clk;
  
  D_flipflop d(reset,clk,~q,q,);
  
endmodule
