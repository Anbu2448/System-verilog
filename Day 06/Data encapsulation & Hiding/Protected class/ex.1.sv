class car;
  protected string brand="Dodge";
  function void show ();
    $display("car brand inside parent=%s",brand);
  endfunction
endclass
class sports_car extends car;
  function void display();
    $display("car brand inside child=%s",brand);
  endfunction
endclass
module test;
  initial begin
  sports_car s=new();
  s.show();
  s.display();
  end
endmodule
//output
# car brand inside parent=Dodge
# car brand inside child=Dodge
