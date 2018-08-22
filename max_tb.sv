module max_tb;
//Inputs
reg[7:0]a,b;
//Outputs
wire[7:0]out;
max max1(a,b,out);
initial begin
a=8'h0A;
b=8'h02;
#10
a=8'h0F;
b=8'h0A;
#10
a=8'h08;
b=8'h09;
end
endmodule
