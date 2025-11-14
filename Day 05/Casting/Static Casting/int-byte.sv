module casting;
  int a = 100;
  byte b;
  initial begin
    b=byte'(a);
    $display("b=%0d",b);
  end
endmodule
//outpiut
# b=100
