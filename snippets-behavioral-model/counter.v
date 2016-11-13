module counter(Q, clock, clear);
  input clock, clear;
  output [3:0] Q;
  reg [3:0] Q;
  
  always@( posedge clear or negedge clear)
  begin
    if (clear)
      Q = 4'b0;
    else
      Q = (Q+1)%16;
  end
endmodule
  
