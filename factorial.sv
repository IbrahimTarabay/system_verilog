module factorial(in,out);
input[7:0]in;
output[63:0]out;
reg[63:0]out_temp;
reg[3:0]i;

always@*begin
out_temp=in;

   for(i=in-1;i!=1;i=i-1)
     
     out_temp=out_temp*i;

end

assign out=out_temp;
endmodule
