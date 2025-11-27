class packet;
  rand bit[3:0] addr;
  
  constraint s24 {addr>6;};
endclass

module test;
  initial begin
    packet p;
    p=new();
    repeat(10) begin
      p.randomize();
      $display("addr=%d",p.addr);
    end
  end
endmodule

//output
# addr= 8
# addr=12
# addr= 8
# addr=14
# addr=12
# addr=15
# addr=13
# addr=11
# addr=12
# addr=10
