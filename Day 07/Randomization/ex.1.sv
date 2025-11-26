class packet;
  rand bit [3:0] data;
  
  function void display();
    $display("data = %0d", data);
  endfunction
endclass

module test;
  initial begin
    packet p = new();
    repeat(5) begin
      p.randomize();
      p.display();
    end
  end
endmodule
//output
# data = 5
# data = 0
# data = 10
# data = 5
# data = 4
