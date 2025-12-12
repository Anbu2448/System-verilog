module example;
  initial begin
    $display("Start = %0t", $time);

    fork
      begin
        #10 $display("Task A done", $time);
      end

      begin
        #20 $display("Task B done", $time);
      end
    join_none

    $display("join_none returned immediately", $time);

    wait fork;

      $display("All forked threads completed", $time);
  end
endmodule
//output
      # Start = 0
# join_none returned immediately                   0
# Task A done                  10
# Task B done                  20
# All forked threads completed                  20
# exit
