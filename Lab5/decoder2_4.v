module decoder2_4(register,reg_no);
  input[1:0] reg_no;
  output[3:0] register;
  reg[3:0] register;
  
  always@(reg_no)
  case(reg_no)
    2'b00:
      begin
      register=4'b0;
    end
    2'b01:
      begin
      register=4'b0010;
    end
    2'b10:
      register=4'b0100;
    2'b11:
      register=4'b1000;
  endcase
endmodule
  
  
