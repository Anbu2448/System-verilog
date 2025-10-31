function int add_numbers(input int a,input int b);
  return a+b;
endfunction

module test;
   int result;
  initial begin
    result = add_numbers(2448,0105);
    $display("sum=%0d",result);
  end
endmodule

//output
# sum=2553
