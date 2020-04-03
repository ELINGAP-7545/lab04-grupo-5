module BCDtoSSeg (EQDEC, SSeg);

  input [3:0]EQDEC;
  output reg [6:0] SSeg;

  always @ ( * ) begin
  
  case (EQDEC)
   0: SSeg = 7'b0000001; // "0"  
	1: SSeg = 7'b1001111; // "1" 
	2: SSeg = 7'b0010010; // "2" 
	3: SSeg = 7'b0000110; // "3" 
	4: SSeg = 7'b1001100; // "4" 
	5: SSeg = 7'b0100100; // "5" 
	6: SSeg = 7'b0100000; // "6" 
	7: SSeg = 7'b0001111; // "7" 
	8: SSeg = 7'b0000000; // "8"  
	9: SSeg = 7'b0000100; // "9" 
 
 /*
   4'ha: SSeg = 7'b0001000;  
   4'hb: SSeg = 7'b1100000;
   4'hc: SSeg = 7'b0110001;
   4'hd: SSeg = 7'b1000010;  
   4'he: SSeg = 7'b0110000;
   4'hf: SSeg = 7'b0111000;
  */

  // default:
  // SSeg = 7'b1111111;
	endcase

	end

endmodule
