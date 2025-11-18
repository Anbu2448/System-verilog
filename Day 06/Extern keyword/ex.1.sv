class packet;
  int a,b;
  extern function void display();
    endclass
    function void packet::display();
      $display("a=%t,b=%t",a,b);
    endfunction
    module test;
      initial begin
        packet p=new();
        p.a=100;
        p.b=200;
        p.display();
      end
    endmodule
