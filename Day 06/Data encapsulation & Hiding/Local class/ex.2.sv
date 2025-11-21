class car_Brand;
  local string brand;
  function new(string brand);
    this.brand = brand;  
  endfunction
  function void display();
    $display("BRAND : %0s", brand);
  endfunction
endclass
module car;
  initial begin
    car_Brand b;   
    b = new("Lambo");
    b.display();
  end
endmodule
