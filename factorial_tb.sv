module factorial_tb();
reg[7:0]in;
wire[63:0]out;

factorial factorial1(in,out);

initial begin

$monitor("value of INPUT=%d,OUTPUT=%d",in,out);

in=4;
#5 in=5;
#5 in=16;
end
endmodule
