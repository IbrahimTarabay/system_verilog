module sync_reset(input logic[3:0]d,input logic clk,reset,output logic[3:0]q);

 always_ff@(posedge clk)
  if(reset)q<=4'b0000;
  else q<=d;
endmodule

