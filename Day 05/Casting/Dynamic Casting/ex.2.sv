module brand;
  typedef enum {supra=25,ferrari=10,dodge=15,lambo=20}cars;
  
  initial begin
    cars c;
    if($cast(c,10))
      $display("A:cast success=%d",c.name());
    else
      $display("A:cast fail");
    if($cast(c,15))
      $display("B:cast success=%d",c.name());
    else
      $display("B:cast fail");
  end
endmodule

//output
# A:cast success=ferrari
# B:cast success=dodge
