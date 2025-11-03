class car;
  string brand;
  int year;
  function new(string b,int y);
    brand=b;
    year=y;
  endfunction
  function void display();
    $display("brand=%0s,year=%0d",brand,year);
  endfunction
endclass
module test;
  initial begin
    car c1=new("ford",2015);
    car c2=new("ferrari",2017);
    c1.display();
    c2.display();
  end
endmodule

//output
# brand=ford,year=2015
# brand=ferrari,year=2017
