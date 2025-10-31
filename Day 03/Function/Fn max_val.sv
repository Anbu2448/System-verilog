function int max_val(input int a,input int b);
  if(a>b)
    return a;
  else
    return b;
endfunction

module test;
  initial begin
    int a=20,b=10,result;
    result = max_val(a,b);
    $display("max_val=%0d",result);
  end
endmodule

//output
# max_val=20
