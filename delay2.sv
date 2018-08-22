module delay2(
  input clk,
  input[3:0] original_signal,
  output reg[3:0] delayed_signal
);

  always @(posedge clk) begin
    delayed_signal <= original_signal;
  end

endmodule
