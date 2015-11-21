module product(a,b,res);
  input a,b;
  output res;
  wire [3:0] a;
  wire [2:0] b;
  wire [6:0] res;
  wire [4:0] r1;
  wire [3:0] r2,r3;
  wire [4:0] i1;
   
  assign r1[0]=a[0]&b[0];
  assign r1[1]=a[1]&b[0];
  assign r1[2]=a[2]&b[0];
  assign r1[3]=a[3]&b[0];
  assign r2[0]=a[0]&b[1];
  assign r2[1]=a[1]&b[1];
  assign r2[2]=a[2]&b[1];
  assign r2[3]=a[3]&b[1];
  assign r3[0]=a[0]&b[2];
  assign r3[1]=a[1]&b[2];
  assign r3[2]=a[2]&b[2];
  assign r3[3]=a[3]&b[2];
  
  assign r1[4]=1'b0;
  
  assign res[0]=r1[0];
  adder a1(r1[4:1],r2,i1[3:0],i1[4],1'b0);
  assign res[1]=i1[0];
  adder a2(i1[4:1],r3,res[5:2],res[6],1'b0);
endmodule