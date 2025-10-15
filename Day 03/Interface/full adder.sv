interface full_adder;
  logic a,b,cin;
  logic sum,cout;
  endinterface


module fulladder(full_adder FA);
  assign FA.sum = FA.a ^ FA.b ^ FA.cin;
  assign FA.cout = FA.a&FA.b + FA.b&FA.cin + FA.cin&FA.a;
endmodule
  
