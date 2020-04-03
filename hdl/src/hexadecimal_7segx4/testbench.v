`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:17:21 09/05/2019
// Design Name:   display
// Module Name:   C:/Users/UECCI/Desktop/ejer01/display_7segx4/testbench.v
// Project Name:  display_7segx4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs

	reg [15:0] numero=0;
	reg clk2;
	reg rst;

	// Outputs
	wire [0:6] sseg;
	wire [3:0] an;
	

	// Instantiate the Unit Under Test (UUT)
	display uut (
	
		.num(numero), 
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
		#120000;
		numero = 1224;   //4c8
		#900000;
		numero = 63254;   //f716

   	end   

	always #1 clk2 = ~clk2;

endmodule

