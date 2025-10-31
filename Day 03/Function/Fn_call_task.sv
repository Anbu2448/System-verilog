//Write a function to find the cube of a number and use a task to call it multiple times in a loop for 1 to 5.
module func_task;
  function int cube(input int n);
    return n * n * n;
  endfunction
  task display_cubes;
    int i;
    for (i = 1; i <= 5; i++) begin
      $display("Cube of %0d = %0d", i, cube(i)); 
    end
  endtask
  initial begin
    display_cubes(); 
  end
endmodule
//output
# Cube of 1 = 1
# Cube of 2 = 8
# Cube of 3 = 27
# Cube of 4 = 64
# Cube of 5 = 125
