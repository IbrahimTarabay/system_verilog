module max (input [7:0] a, 
            input [7:0] b, 
            output reg [7:0] out);
  always @* begin
    if (a>b)
      out = a;
    else
      out = b;
  end
endmodule
