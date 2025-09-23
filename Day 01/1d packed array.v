module oned_packed_arr;
  bit[7:0] data=8'b10101010;
  int i;
  
  initial begin
   for(i=0;i<8;i=i+1)
     $display("data[%0d]=%b",i,data[i]);
  end
endmodule
