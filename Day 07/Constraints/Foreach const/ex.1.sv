class packet;
  rand byte data[7:0];
  rand byte addr [5:0];
  constraint c1{foreach (addr[i])addr[i] inside {1,2,3,4,5,6};
                foreach (data[j])data[j] >(1*j);}
endclass
module test;
  initial begin
    packet p;
    p=new();
    repeat(5) begin
      p.randomize();
      $display("data=%paddr=%p",p.data,p.addr);
    end
  end
endmodule
//output
# data='{86, 40, 53, 123, 61, 46, 71, 125}addr='{6, 3, 4, 1, 3, 2}
# data='{35, 69, 11, 98, 14, 89, 65, 55}addr='{5, 2, 2, 5, 6, 6}
# data='{50, 93, 71, 50, 30, 84, 39, 54}addr='{1, 3, 3, 2, 3, 5}
# data='{45, 94, 80, 116, 111, 81, 41, 19}addr='{2, 5, 1, 1, 1, 5}
# data='{71, 35, 29, 103, 80, 81, 57, 37}addr='{1, 4, 6, 6, 4, 1}
