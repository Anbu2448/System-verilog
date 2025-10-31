//Write a task that calls a function to calculate the square of a number and display it
module func_task;
  function int square(input int n);
    return n*n;
  endfunction
  task display_square(input int num);
    int result;
    result=square(num);
    $display("square=%0d",num,result);
  endtask
  initial begin
    display_square(5);
  end
endmodule
//output
# square=5      25
