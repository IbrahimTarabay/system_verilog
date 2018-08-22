module flip_flop(input logic clk,input logic[3:0]d,output logic[3:0]q);
always@(posedge clk)
q<=d;
endmodule
