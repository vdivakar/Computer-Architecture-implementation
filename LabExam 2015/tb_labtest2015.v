module tb_labtest2015;
  reg clk,reset;
  //input [3:0] X;
  wire[12:0] Y;
  reg [3:0] X;
  
  intg i(reset,clk,X,Y);
  
  initial
    begin
      clk  = 1'b0;
      forever #5 clk=~clk;
    end
    
  initial
  begin
    reset = 1'b0;
    X = 4'b0010;
    #4 X=4'b0011;
    
  end
    
  initial
    $monitor($time,"clk=%b, Y=%b, X=%b",clk,Y,X);
  
  initial
  #20 $finish;
  
endmodule
  
