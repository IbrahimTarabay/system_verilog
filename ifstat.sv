module ifstat(input logic[3:0]a,output logic[3:0]b);
always_comb begin
if(a[3]) b=4'b1000;
else if(a[2]) b=4'b0100;
else if(a[1]) b=4'b0010;
else if(a[0]) b=4'b0001;
else b=4'b0000;
end
endmodule
