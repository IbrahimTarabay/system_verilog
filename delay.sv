module delay(input logic[3:0]x,input logic[3:0]y,input logic[3:0]z);
 assign #1 z=x&y;
endmodule

 