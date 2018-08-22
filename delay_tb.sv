module delay_tb;
 logic x;
 logic y;
 logic z;

delay delay1(x,y,z);
initial begin
  
   x = 1'b0; y=1'b0;
   #25
   x = 1'b1; y=1'b0;
   #25
   x = 1'b1; y=1'b1;
   #25
   x = 1'b0; y=1'b1;
end 
 endmodule
