module xor_gate_tb;
 logic a;
 logic b;
 logic c;
 xor_gate xor_gate1(a,b,c);
 initial begin
   a = 1'b0; b=1'b0;
   #25
   a = 1'b1; b=1'b0;
   #25
   a = 1'b1; b=1'b1;
   #25
   a = 1'b0; b=1'b1;
end 
 endmodule
