module casting;
  logic [7:0] data = 8'b1010_0101;
  int a;
  
  initial begin
    a=int'(data);
    $display("a=%d",a);
  end
endmodule
//output
 #a = 165
