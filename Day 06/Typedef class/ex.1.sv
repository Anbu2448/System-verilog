typedef class car;
  class car;
    string brand;
    int price;
    
    function void display();
      $display("brand=%s,price=%d",brand,price);
    endfunction
  endclass
  
  module test;
    car c1;
    initial begin
      c1=new();
      c1.brand="Audi";
      c1.price=2000000;
      c1.display();
    end
  endmodule
