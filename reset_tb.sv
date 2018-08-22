module reset_tb;
logic clk,reset;
logic[3:0]d,q_s,q_a;
sync_reset sreset1(d,clk,reset,q_s);
async_reset areset1(d,clk,reset,q_a);
initial begin
   clk=0;reset=0;d=4'b0110;
   #40 reset=1'b1;#1 reset=1'b0;
   #4 d=4'b1101;#50 d=4'b0011;
   #25 reset=1'b1;#10 reset=1'b0;
end

always
  #25 clk =!clk;
endmodule

