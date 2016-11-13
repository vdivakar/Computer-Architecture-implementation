module tb_addsub;
  reg [3:0] A,B;
  reg M;
  wire [3:0] S;
  wire C,V;
  
  addsub a1(A,B,M,C,V,S);
  
  initial
    $monitor($time,"S=%b, C=%b, V=%b,A=%b, B=%b",S,C,V,A,B);
    
  initial
  begin
    M=1'b0;
    A=4'b0000;
    B=4'b0000;
  end
  
  initial
  begin
    //#10 A =1'd5 ; B=1'd2;
    #10 A=4'b0110 ; B=4'b0000;
    #5 A=4'd6 ; B=4'd2;
   #5 A=4'b1101; B=4'b1110;
     
  end
  
  initial
    #50  $finish;
endmodule
