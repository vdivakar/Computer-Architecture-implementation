module adder_register(val_16entries,clk,Y,acc_rst1,acc_rst2);
  input [8:0] val_16entries;
  output [12:0] Y;
  reg [12:0] Y;
  input clk,acc_rst1,acc_rst2;
  wire [12:0] from_reg,to_reg;
  
  //adder a(val_16entries,from_reg,to_reg);
  //register r(to_reg,acc_rst1,acc_rst2,clk,from_reg,Y);
  
  always @(posedge clk)
  begin
    if(acc_rst1)
      begin
        Y<=Y+val_16entries;
      end
  end
  
  always @(acc_rst2)
  begin
    Y<=val_16entries;
  end
  
  always@(negedge acc_rst1)
  begin
    Y<=Y-val_16entries;
  end
endmodule
  


////////////////
/*
module adder(val_16entries,from_reg,to_reg);
  input[8:0] val_16entries;
  input[12:0] from_reg;
  output[12:0] to_reg;
  
  assign to_reg = from_reg + val_16entries;
  
endmodule
*/ 
/////////////////////
/* 
module register(from_adder,acc_rst1,acc_rst2,clk,to_adder,Y);
  input [12:0] from_adder;
  output [12:0] to_adder , Y;
  input clk,acc_rst1,acc_rst2;
  
  reg[12:0] Y;
  
  always@(posedge acc_rst2 or negedge acc_rst2)
    begin
      Y = 13'b0;
    end
  
  always@(acc_rst1)
    begin
      if(acc_rst1)
        Y <=Y + from_adder;
        
     end
    
endmodule
*/ 
  