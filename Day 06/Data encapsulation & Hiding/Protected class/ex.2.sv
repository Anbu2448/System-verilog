class counter;
  protected int count;
  
  function void show();
    $display("current count=%d",count);
  endfunction
endclass

class increment extends counter;
  function void inc();
    count++;
  endfunction
endclass

module test;
  initial begin
    increment ic=new();
    ic.inc();
    ic.inc();
    ic.show();
  end
endmodule
//output
# current count=2
