module example;
  initial begin
    $display("Start = %0t", $time);

    fork
      begin
        #15 $display("Task A finished at %0t", $time);
      end

      begin
        #10 $display("Task B finished at %0t", $time);
      end

      begin
        #20 $display("Task C finished at %0t", $time);
      end
    join_none

    $display("join_none returned immediately at %0t", $time);
  end
endmodule
//output
# Start = 0
# join_none returned immediately 0
# Task B finished 10
# Task A finished 15
# Task C finished 20
# exit
