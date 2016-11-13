`define true 1'b1
`define false 1'b0
`define red 2'd0
`define yellow 2'd1
`define green 2'd2

`define s0 3'd0
`define s1 3'd1
`define s2 3'd2
`define s3 3'd3
`define s4 3'd4

`define y2rdelay 3
`define r2gdelay 2

module sig_control (hwy,cntry,clock,clear);
  output [1:0] hwy,cntry;
  reg[1:0] hwy,cntry;
  input X;
  input clock,clear;
  
  reg [2:0] state;
  reg [2:0] next_state;
  
  initial
  begin
    state =  `s0;
    next_state = `s0;
    hwy = `green;
    cntry =  `red;
  end
  
  always@(posedge clock)
    state = next_state;
  
  always @(state)
  begin
    case(state)
      `s0: begin
            hwy =  `green;
            cntry= `red;
          end
      `s1: begin
            hwy =  `yellow;
            cntry= `red;
          end
      `s2: begin
            hwy =  `red;
            cntry= `red;
          end
      `s3: begin
            hwy =  `red;
            cntry= `green;
          end
      `s4: begin
            hwy =  `red;
            cntry= `yellow;
          end
          
      endcase
    end
    
always@(state or clear or X)
begin
  if(clear)
    next_state = `s0;
  else  
    case(state)
    `s0: if(X)
          next_state = `s1;
        else 
          next_state = `s0;
    `s1: begin
          repeat(`y2rdelay)@(posedge clock);
          next_state = `s2;
        end
          
     `s2: begin
          repeat(`r2gdelay)@(posedge clock);
          next_state = `s3;    
        end 
     `s3:if(X)
          next_state = `s3;
        else
          next_state = `s4;
            
    `s4: begin
          repeat(`y2rdelay)@(posedge clock);
          next_state = `s0;    
        end 
              
    default: next_state=`s0;
  endcase
end
 
endmodule
          
          
          
          
          
          
          
          
          
          
          
          
          
           
      
        
            
  
  
  
  
  
  

 