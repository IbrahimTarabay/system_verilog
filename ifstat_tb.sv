module ifstat_tb;
logic[3:0]a;
logic[3:0]b;
ifstat ifstat1(a,b);
initial begin
a=4'b0110;
end
endmodule
