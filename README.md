# lab04
BCD2SSeg

GRUPO DE LABORATORIO #5

Integrantes:

-Luis Fernando Garcia Romero

Cod: 84948.
CC: 1023913296.

-Daniel Eduardo Hernandez

Cod:67632-cc:1022392048

visualizacion dinamica de numero decimal de 16 bits en 5 display de 7 segmentos.

Descripcion:

Un numero decimal de 16 bist sin signo, es aquel que comprende desde la cantidad 0 hasta la cantidad 65535, razon por la cual para vizualizar este tipo de dato se usarán 5 display de 7 segmentos mediante visualizacion dinamica.

La visualizacion dinamica es implementada cuando se requiere visualizar datos en mas de un display de 7 segmentos, esto con el fin de ahorrar pines de conexion en el circuito integrado, como lo es en este caso la FPGA.

En la mayoría de los casos, los 7 pines de los cátodos están inter-conectados entre cada display, como se observa en la figura:
 
Teniendo en cuenta lo anterior, se debe realizar una multiplexación entre los Anodos de cada Display, con el fin de visualizar en cada display un número diferente. En otras palabras, en cada instante de tiempo, solo un display se encuentra activo. En este sentido, se debe garantizar que el destello en la visualización entre cada display no se perciba. Para ello, cada display debe activarse máximo cada 16 ms.

Caja negra:

El diseño de la caja negra para la implementacion del ejercicio planteado es el siguiente:

 

## Descripcion funcional:

La funcionalidad del sistema se describe a continuacion:

1) **Decodificacion** decimal BCD a 7 segmentos: basicamente se tiene en cuenta la tabla de equivalencias presentada a continuacion:


2) Identificacion de decenas de miles, miles, centenas, decenas y unidades: Para la identificacion de cada una de las cantidades y por tanto el numero que se visualizará en cada display se implementó el siguiente algoritmo:
 

Diagrama estructural:

![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/figs/display7s.jpg)
 




```verilog
module BCDtoSSeg (BCD, SSeg, an); // este linea indica el nombre del módulo inicial  y nos sirve para .....

  input [3:0] BCD;
  output reg [0:6] SSeg;
  output [3:0] an;

assign an=4'b1110;


always @ ( * ) begin
  case (BCD)
   4'b0000: SSeg = 7'b0000001; // "0"  
	4'b0001: SSeg = 7'b1001111; // "1" 
	4'b0010: SSeg = 7'b0010010; // "2" 
	4'b0011: SSeg = 7'b0000110; // "3" 
	4'b0100: SSeg = 7'b1001100; // "4" 
	4'b0101: SSeg = 7'b0100100; // "5" 
	4'b0110: SSeg = 7'b0100000; // "6" 
	4'b0111: SSeg = 7'b0001111; // "7" 
	4'b1000: SSeg = 7'b0000000; // "8"  
	4'b1001: SSeg = 7'b0000100; // "9" 
   4'ha: SSeg = 7'b0001000;  
   4'hb: SSeg = 7'b1100000;
   4'hc: SSeg = 7'b0110001;
   4'hd: SSeg = 7'b1000010;
   4'he: SSeg = 7'b0110000;
   4'hf: SSeg = 7'b0111000;
    default:
    SSeg = 0;
  endcase
end

endmodule

```




 
