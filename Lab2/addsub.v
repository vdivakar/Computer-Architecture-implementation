module addsub(A,B,M,C,V,S);
  input[3:0] A,B;
  input M;
  output[3:0]S;
  output C,V;
  wire w1,w2,w3,w4;
  wire c[4:1];
  
  xor x1(w1,M,B[0]);
  xor x2(w2,M,B[1]);
  xor x3(w3,M,B[2]);
  xor x4(w4,M,B[3]);
  
  fulladder f1(A[0],w1,M,c[1],S[0]);
  fulladder f2(A[1],w2,c[1],c[2],S[1]);
  fulladder f3(A[2],w3,c[2],c[3],S[2]);
  fulladder f4(A[3],w4,c[3],C,S[3]);
  
  xor(V,C,c[3]);
  
endmodule
    
  
  
  
  
  
