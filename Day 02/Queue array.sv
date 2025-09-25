module queue_array;
  int q[$]='{1,2,3,4};
 initial begin
   q.insert(1,5);
   $display("%p",q);
   q.delete(3);
   $display("%p",q);
   q.insert(4,9);
   $display("%p",q);
   q.shuffle();
   $display("%p",q);
   q.reverse();
   $display("%p",q);
 end 
endmodule
