module decoder_7_segment(
    input [3:0]n,
    output reg [6:0]o
    );
always @*
case (n)
4'h0 :      	//Hexadecimal 0
o = 7'b1111110;
4'h1 :    	//Hexadecimal 1
o = 7'b0110000  ;
4'h2 :  	// Hexadecimal 2
o = 7'b1101101 ; 
4'h3 : 		// Hexadecimal 3
o = 7'b1111001 ;
4'h4 :		// Hexadecimal 4
o = 7'b0110011 ;
4'h5 :		// Hexadecimal 5
o = 7'b1011011 ;  
4'h6 :		// Hexadecimal 6
o = 7'b1011111 ;
4'h7 :		// Hexadecimal 7
o = 7'b1110000;
4'h8 :          //Hexadecimal 8
o = 7'b1111111;
4'h9 :    	//Hexadecimal 9
o = 7'b1111011 ;
4'hA :  	// Hexadecimal A
o = 7'b1110111 ; 
4'hB : 		// Hexadecimal B
o = 7'b0011111;
4'hC :		// Hexadecimal C
o = 7'b1001110 ;
4'hD :		// Hexadecimal D
o = 7'b0111101 ;
4'hE :		// Hexadecimal E
o = 7'b1001111 ;
4'hF :		// Hexadecimal F
o = 7'b1000111 ;
endcase        //I think we don't need default state
 endmodule
