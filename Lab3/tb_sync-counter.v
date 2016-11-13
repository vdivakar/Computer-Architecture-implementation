module tb_synccounter;
  reg clk,logic;
  wire [3:0]Q;
  
  sync_counter_JKff c1(logic,clk,Q);
  
  initial
  begin
    logic = 1'b1;
    clk = 1'b0;  
  end
  
  always
    #10 clk = ~clk ;
  
  initial
   $monitor($time,"Q = %b,clk=%b",Q,clk);
   
   initial
   #50 $finish;
 endmodule
  