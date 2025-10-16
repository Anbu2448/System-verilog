module full_adder_tb;
  full_adder FA();
  fulladder DUT (FA);
  initial begin
    FA.a=0;FA.b=0;FA.cin=0;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
    FA.a=0;FA.b=0;FA.cin=1;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
     FA.a=0;FA.b=1;FA.cin=0;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
     FA.a=0;FA.b=1;FA.cin=1;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
     FA.a=1;FA.b=0;FA.cin=0;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
     FA.a=1;FA.b=0;FA.cin=1;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
    FA.a=1;FA.b=1;FA.cin=0;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
    FA.a=1;FA.b=1;FA.cin=1;
    #10;
    $display("FA.a=%b,FA.b=%b,FA.cin=%0b,FA.sum=%b,FA.cout=%0b",
             FA.a,FA.b,FA.cin,FA.sum,FA.cout);
  end
endmodule

# run -all
# FA.a=0,FA.b=0,FA.cin=0,FA.sum=0,FA.cout=0
# FA.a=0,FA.b=0,FA.cin=1,FA.sum=1,FA.cout=0
# FA.a=0,FA.b=1,FA.cin=0,FA.sum=1,FA.cout=0
# FA.a=0,FA.b=1,FA.cin=1,FA.sum=0,FA.cout=1
# FA.a=1,FA.b=0,FA.cin=0,FA.sum=1,FA.cout=0
# FA.a=1,FA.b=0,FA.cin=1,FA.sum=0,FA.cout=1
# FA.a=1,FA.b=1,FA.cin=0,FA.sum=0,FA.cout=1
# FA.a=1,FA.b=1,FA.cin=1,FA.sum=1,FA.cout=1
# exit
