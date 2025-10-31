//Write a program where one task calls another task.
module nested_task;
  task display_line;
    $display("------------------");
  endtask
  task display_message;
    display_line();
    $display("vanakkkam to all");
    display_line();
  endtask

  initial begin
    display_message();
  end
endmodule
