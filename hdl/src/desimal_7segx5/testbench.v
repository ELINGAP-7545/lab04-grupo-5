`timescale 1ns / 1ps


module testbench;

	// Inputs

	reg [15:0] numero;
	reg clk2;
	reg rst;

	// Outputs
	wire [0:6] sseg;
	wire [4:0] an;
	

	// Instantiate the Unit Under Test (UUT)
     //display
	display uut (
	
		.num1(numero), 
		.clk(clk2), 
		.sseg(sseg), 
		.an(an), 
		.rst(rst)
	);

	initial begin
	
		// Initialize Inputs
		
		clk2= 0;
		rst = 1;
#20;	rst =0;
	
	numero = 20007;   

   	end   

	always #1 clk2 = ~clk2;

endmodule

