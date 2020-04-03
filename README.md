# lab04: BCDtoSSeg

GRUPO DE LABORATORIO #5

Integrantes:

-Luis Fernando Garcia Romero

Cod: 84948.
CC: 1023913296.

-Daniel Eduardo Hernandez

Cod:67632-cc:1022392048


# **Implementacion de la visualización dinamica en diplay 7 segmentos para mostrar numero decimal de 16 bits**

## **Descripcion:**

Un numero decimal de 16 bist sin signo, es aquel que comprende desde la cantidad 0 hasta la cantidad 65535, razon por la cual para vizualizar este tipo de dato se usarán 5 display de 7 segmentos mediante visualizacion dinamica.

La visualizacion dinamica es implementada cuando se requiere visualizar datos en mas de un display de 7 segmentos, esto con el fin de ahorrar pines de conexion en el circuito integrado, como lo es en este caso la FPGA.

En la mayoría de los casos, los 7 pines de los cátodos están inter-conectados entre cada display, como se observa en la figura de ejemplo mostrada a continuacion:

![image](C:\Users\Jose\Documents\Imagenes para git)
 
Teniendo en cuenta lo anterior, se debe realizar una multiplexación entre los Anodos de cada Display, con el fin de visualizar en cada display un número diferente. En otras palabras, en cada instante de tiempo, solo un display se encuentra activo. En este sentido, se debe garantizar que el destello en la visualización entre cada display no se perciba. Para ello, cada display debe activarse máximo cada 16 ms.

## **Caja negra:**

El diseño de la caja negra para la implementacion del ejercicio planteado es el siguiente:

 

## **Descripcion funcional:**

La funcionalidad del sistema se describe a continuacion:

1) Decodificacion decimal BCD a 7 segmentos: basicamente se tiene en cuenta la tabla de equivalencias presentada a continuacion:


2) Identificacion de decenas de miles, miles, centenas, decenas y unidades: Para la identificacion de cada una de las cantidades y por tanto el numero que se visualizará en cada display se implementó el siguiente algoritmo:
 

## **Diagrama estructural:**

![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/figs/display7s.jpg)
 



