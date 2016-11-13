module acc_rst(clk,rst,q);
  input clk,rst;
  //output acc_rst1, acc_rst2;
  output [3:0]q;  
  dff d1(q[0],clk, rst,q[0]);
  dff d2(q[1],q[0],rst,q[1]);
  dff d3(q[2],q[1],rst,q[2]);
  dff d4(q[3],q[2],rst,q[3]);
 
endmodule

module tb_accrst;
  reg clk,rst;
  wire[3:0] q;
  acc_rst a1(clk,rst,q);
  initial
  begin
    clk = 1'b0;
    rst = 0;
    forever #5 clk=~clk;
  end
  initial 
    $monitor($time, "q=%b",q);
  
  initial 
    #50 $finish;
endmodule