module dynamic_array;
  int d1[];
  int d[] = '{10,20,30,40,50};
  initial begin
    d1 = new[5];
    foreach (d1[i]) begin
      d1[i] =i;
    end
    $display("%d",$size(d1));
    d1.shuffle();
    $display("%p",d1);
  end
endmodule
    
