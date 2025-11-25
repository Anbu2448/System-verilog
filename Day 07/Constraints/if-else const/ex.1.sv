class Packet;
  rand bit [7:0] addr;
  rand bit [7:0] data;
  rand bit write;

  constraint c1 {
    if (write) {
      data inside {[8:15]};
    } else {
      addr inside {[0:7]}; 
    }
  }
endclass

module tb;
  initial begin
    Packet p = new();
    repeat (5) begin
      p.randomize();
      $display("write=%0b addr=%0h data=%0h", p.write, p.addr, p.data);
    end
  end
endmodule
    
    //output
# write=0 addr=3 data=da
# write=0 addr=7 data=3c
# write=0 addr=0 data=87
# write=1 addr=86 data=c
# write=1 addr=35 data=e
