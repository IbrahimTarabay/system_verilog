module flip_flop_tb;
logic clk;
logic[3:0]d;
logic[3:0]q;
flip_flop ff1(clk,d,q);
initial begin
clk=0;
d=4'b1010;
#50
d=4'b1001;
#50
d=4'b0110;
#10
d=4'b0011;
#30
d=4'b1000;
end
always
#25 clk =! clk;
endmodule
