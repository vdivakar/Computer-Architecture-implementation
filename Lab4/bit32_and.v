module bit32_and(a,b,out);
  input [31:0] a,b;
  output [31:0] out;
  
  assign out = a & b;
endmodule

module tb_bit32_and;
  reg[31:0] a,b;
  wire[31:0] out;
  
  bit32_and m(a,b,out);
  initial
  begin
    a=32'd1;
    b=32'd1;
    #10 a=32'hA5A5; b=32'h4444;    
    #100 $finish;
  end
  
  initial
    $monitor($time, "a=%b , b=%b, out=%b",a,b,out);
endmodule