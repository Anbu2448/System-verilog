class board;
  rand int x,y;
endclass
module test;
  initial begin
    board b;
    b=new();
    repeat(5) begin
      b.randomize()with {x<y;
                    y inside {50,60,70};
                   };
      $display("x=%d,y=%d",b.x,b.y);
    end
  end
endmodule
//output
# x=-2127559286, y=70
# x=-1923638193, y=60
# x= -433956646, y=50
# x=-1398692469, y=60
# x= -551735103, y=50
