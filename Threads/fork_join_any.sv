module example;
  initial begin
    $display("start=%0d",$time);
    
    fork
      begin
        #10
        $display("task A finished at %0t",$time);
      end
      begin
        #5
        $display("task B finished at %0t",$time);
      end
      begin
        #15
        $display("task C finished at %0t",$time);
      end
    join_any
    $display("join_any returned at %0t",$time);
  end
endmodule
//output
# start=0
# task B finished at 5
# join_any returned at 5
# task A finished at 10
# task C finished at 15
