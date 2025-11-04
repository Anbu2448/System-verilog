//Write a program to compare static and non-static variables in SystemVerilog.
class sv;
  int normal_var=0;
  static int static_var=0;
  
  function void increment();
    normal_var++;
    static_var++;
  endfunction
  function void display();
    $display("normal_var=%0d,static_var=%0d",normal_var,static_var);
  endfunction
endclass
module test;
  sv a1,a2;
  initial begin
    a1 = new();
    a2 = new();
    
    a1.increment;
    a2.increment;
    
    a1.display;
    a2.display;
  end
endmodule

//output
# normal_var=1,static_var=2
# normal_var=1,static_var=2
