module nested_function_ex;
  function int bench(input int x);
    return x*x;
  endfunction
  function int chair(input int y);
    return y*bench (y);
  endfunction
  initial begin
    int result;
    result=chair(5);
    $display("chair of 5 = %0d", result);
  end
endmodule
//output
# chair of 5 = 125
