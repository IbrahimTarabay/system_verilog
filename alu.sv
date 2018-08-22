/* ALU Arithmetic and Logic Operations
----------------------------------------------------------------------
|ALU_Sel|   ALU Operation
----------------------------------------------------------------------
| 11  |   ALU_Out = A + B;
----------------------------------------------------------------------
| 10  |   ALU_Out = A - B;
----------------------------------------------------------------------
| 01  |   ALU_Out = A * B;
----------------------------------------------------------------------
| 00  |   ALU_Out = A / B;
----------------------------------------------------------------------*/
module alu(
           input [7:0] A,B,  // ALU 8-bit Inputs                 
           input [1:0] ALU_Sel,// ALU Selection
           output [7:0] ALU_Out, // ALU 8-bit Output
           output CarryOut // Carry Out Flag
    );
    reg [7:0] ALU_Result;
    wire [8:0] tmp;
    assign ALU_Out = ALU_Result; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[8]; // Carryout flag
    always @(*)
    begin
        case(ALU_Sel)
        2'b11: // Addition
           ALU_Result = A + B ; 
        2'b10: // Subtraction
           ALU_Result = A - B ;
        2'b01: // Multiplication
           ALU_Result = A * B;
        2'b00: // Division
           ALU_Result = A/B;

          default: ALU_Result = A + B ; 
        endcase 
  end
endmodule 
