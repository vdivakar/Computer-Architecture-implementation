module mux4_1( regData,q1,q2,q3,q4,reg_no);
  input [31:0] q1,q2,q3,q4;
  input [1:0] reg_no;
  output [31:0]regData;
  reg [31:0]regData;
  
  always@(reg_no)
  begin
    case(reg_no)
        2'b00:
             begin
             regData = q1;
             end
          2'b01:
             begin
             regData = q2;
             end
          2'b10:
             begin
             regData = q3;
             end
          2'b11:
             begin
             regData = q4;
             end
        
    endcase
  end
endmodule
