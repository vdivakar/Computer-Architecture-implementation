module tb_sync_counter;
  reg clear,clock,c_enable;
  wire[3:0] Q;
   
    
    initial
      begin
        c_enable = 1'b1;
        clear = 1'b0;
        #5 clear = 1'b1;
        //#30 c_enable = 1'b0;
      end
    
    initial
      begin
        clock = 1'b0;
        forever #1 clock = ~clock;
      end
      
    initial
      begin 
        #100 $finish;
    end
    initial    
      $monitor($time," Q = %b, c_enable = %b, clear = %b, clock = %b",Q[3:0], c_enable, clear, clock);
    
    sync_counter s1(clear,clock,c_enable,Q);
      
endmodule
