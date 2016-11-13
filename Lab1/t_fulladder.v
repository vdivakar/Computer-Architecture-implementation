module t_fulladder;
  reg[3:0] A,B;
  reg cin;
  wire[3:0] sum;
  wire cout;
  
  fulladder4 f (sum,cout,A,B,cin);
  initial
   begin     
    $monitor($time,"A=%b,B=%b,cin=%b,cout=%b,sum=%b\n",A,B,cin,cout,sum);
  end
  initial 
  begin
  A=4'd0; B=4'd0; cin=1'b0;
  #5 A=4'd3 ;
  #5 B=4'd4 ;
  #5 A=4'd2 ;
  #5 B=4'd5 ;
  
end

endmodule
