module fork_join;
  initial begin
    $display("start of program:%0d",$time);
    
    fork
      begin
        #5
        $display("task 1 completed %d",$time);
      end
      
      begin
        #7
        $display("task 2 completed %d",$time);
      end
      
      begin
        #9
        $display("task 3 completed %d",$time);
      end
    join
    $display("all task completed. time=%0t",$time);
  end
endmodule
//output
# start of program:0
# task 1 completed      5
# task 2 completed      7
# task 3 completed      9
# all task completed. time=9
