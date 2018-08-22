module delay2_tb();
reg clk;
  reg[3:0] original_signal;  
  wire[3:0] delayed_signal;

  delay2 delay2_1 (clk, original_signal, delayed_signal);  

  // Initial setup
  initial begin  

    original_signal     <= 4'd9;
     repeat (5) @(posedge clk);
    original_signal      <= 4'd10;
     repeat (5) @(posedge clk);
    original_signal      <= 4'd11;
     repeat (4) @(posedge clk);
    original_signal      <= 4'd12;
      repeat(3) @(posedge clk);
    original_signal      <= 4'd13;

    // finish the simulation
   repeat (5) @(posedge clk);
   $finish;
  end  

  initial begin
    clk = 1;
    forever begin
       #1 clk = !clk;
    end
  end 
endmodule
