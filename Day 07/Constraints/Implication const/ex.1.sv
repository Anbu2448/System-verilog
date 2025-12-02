class seq_item;
  rand bit[7:0] value;
  rand enum {father,hit,king} scale;
  rand enum {MSD,RO,KO} player;
  constraint players {(player==MSD)->((scale==father)&(value>80 & value<=100));
                      (player==RO)->((scale==hit)&(value>90 & value<=150));
                      (player==KO)->((scale==king)&(value>100 & value<=200));
                    }
  function void display();
    $display("score=%d, scale=%s, player=%s",value,scale,player);
  endfunction
endclass
module test;
  initial begin
    seq_item s;
    s=new();
    repeat(5) begin
      s.randomize();
      s.display();
    end
  end
endmodule
//output
# score= 90, scale=father, player=MSD
# score=182, scale=king, player=KO
# score=144, scale=hit, player=RO
# score=174, scale=king, player=KO
# score= 92, scale=hit, player=RO
