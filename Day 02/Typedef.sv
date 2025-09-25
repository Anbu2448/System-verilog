module structure;
  typedef struct {int id;string name;}user;
 initial begin
  user u1;
  u1.id = 316;
  u1.name = "Anbu";
  $display("User=%0d, name=%s", u1.id, u1.name);
end
endmodule
