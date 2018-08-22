module decoder_7_segment_tb;
	// Inputs
	reg [3:0] n;
	// Outputs
	wire [6:0] o;
	// Instantiate the Unit Under Test (UUT)
	decoder_7_segment decoder_7_segment1 (
		.n(n), 
		.o(o)
	);
 
	initial begin
		// Initialize Inputs
		n = 0;
 
	#20 n = 1;
	#20 n = 2;
	#20 n = 3;	
	#20 n = 4;	
	#20 n = 5;
	#20 n = 6;
	#20 n = 7;	
	#20 n = 8;	
	#20 n = 9;
	#20 n = 10;
	#20 n = 11;	
	#20 n = 12;	
	#20 n = 13;
	#20 n = 14;
	#20 n = 15;	
	#40;
    end  
 
		initial begin
		 $monitor("n=%h,o=%7b",n,o);
		 end
 endmodule
