class random_values;
  rand bit a,b;
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction
endclass
  module test;
    initial begin
      random_values r=new();
      repeat(4) begin
        assert (r.randomize());
        r.display();
      end
    end
  endmodule

//output
# a=1,b=0
# a=0,b=1
# a=1,b=1
# a=1,b=1
