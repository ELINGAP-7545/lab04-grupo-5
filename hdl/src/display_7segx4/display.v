`timescale 1ns / 1ps

module display(
    input [15:0] num1,
    input clk,
    output [0:6] sseg,
    output reg [4:0] an,
	 input rst,
	 output led
    );

reg [3:0]eqdec;//=0;
reg[15:0] num; //= 0;
reg [1:0] status;
reg op1;
reg op2;

reg  [4:0]DM = 0;
reg  [4:0]M = 0;
reg  [4:0]C = 0;
reg  [4:0]D = 0;
reg  [4:0]U = 0;

 
BCDtoSSeg bcdtosseg(.EQDEC(eqdec), .SSeg(sseg));


always @(posedge clk) begin

		if(op1) begin
		
		if(rst==1) begin
			an<=5'b11111; 
		end 
		
		else begin 

		num <= num1;
			
			if (num > 9999) begin 
			
			num <= num-10000;
			DM = DM+1;
			
			end
			
			else if (num > 999 && num < 9999) begin 
			
			num <= num-1000;
			M = M+1;
			
			end
			
			else if (num > 99 && num < 999) begin 
			
			num <= num-100;
			C = C+1;
			
			end
			
			else if (num > 9 && num < 99) begin 
			
			num <= num-10;
			D = D+1;
			
			end
			
			else if (num > 0 && num < 9) begin 
			
			num <= num-1;
			U = U+1;
			
			end
			end
	  //    end

			if (num == 0) begin
			
	/*		if(rst==1) begin
			an<=5'b11111; 
		end 
		
		else begin */
			
	eqdec <= DM;
	an<=5'b01111; 
	#150;
	
	
	eqdec <= M;
	an<=5'b10111; 
	#150;
	
	
	eqdec <= C;
	an<=5'b11011; 
	#150;
	

	eqdec <= D;
	an<=5'b11101; 
	#150;
	
	
   eqdec <= U;
	an<=5'b11110; 
	#150;
	
	
DM = 0;
M = 0;
C = 0;
D = 0;
U = 0;
	
	end
   end
	end
	
	reg caso1=1;
	
	always @(posedge clk) begin
	
	case (caso1)
	
	1: op1=1;
	
	endcase
	end

endmodule
