module adder(a,b,s,cout,cin);
  input a,b,cin;
  output s,cout;
  wire [3:0] a,b;
  wire cin;
  reg [3:0] s;
  reg cout;
  always @ (a or b or cin)
  begin
    {cout,s}=a+b+cin;
  end
endmodule