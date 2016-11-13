module signa(neg,a);
  input [3:0];
  output neg;
  reg neg;
  
  always @ (a)
    if (a[3] == 1)
      begin
        neg=1;
      end
    else
      neg = 0;
endmodule

module compar(a,b,signa,signb,c1,c2,c3);
  input [3:0] a,b
  output signa,signb,c1,c2,c3;
  reg c1,c2,c3;
  sign fora(signa,a);
  sign forb(signb,b);
  
  always @(a or b or signa or signb)
  if (signa==1 && signb==0)
    begin
      c1=0;
      c2=0;
      c3=1;
    end
else if (signa==0 && signb==1)
    begin
      c1=1;
      c2=0;
      c3=0;
    end
  else
    if(a>b)
      begin
        c1=1;
        c2=0;
        c3=0;
      end
    else if(a<b)
      begin
        c1=0;
        c2=0;
        c3=1;
      end
    else
      begin
        c1=0;
        c2=1;
        c2=0;
      end
    endmodule
    
module tb_comp;
  reg Input,clk;
  wire out;
  reg[3:0]a, b;
  wire a,b,c,outa,outb,signa,signb,c1,c2,c3;
  initial
  begin
    a=4'b0000;
    b=4'b0000;
  end
  initial
  begin
    #1 a=-8;b=-5;
    #1 a=2;b=7;
    #1 a=5;b=-1;
  end
  compar c1(a,b,signa,signb,c1,c2,c3);
  initial
  begin
    $monitor($time,"a=%b,b=%b,c1=%b,c2=%b,c3=%b",a,b,c1,c2,c3);
  end
  
  initial
  begin
    #5 $finish;
  end
endmodule

      
  
  
  
  
  
  
  
  