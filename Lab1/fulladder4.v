module fulladder4(sum,cout,a,b,cin);
  input[3:0] a,b ;
  input cin;
  output cout ;
  output [3:0]sum;
  wire c1,c2,c3;
  
  fulladder1 f0(sum[0], c1,a[0],b[0],cin);
  fulladder1 f1(sum[1], c2,a[1],b[1],c1);
  fulladder1 f2(sum[2], c3,a[2],b[2],c2);
  fulladder1 f3(sum[3], cout,a[3],b[3],c3);
  
endmodule