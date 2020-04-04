# lab04: BCDtoSSeg

GRUPO DE LABORATORIO #5

Integrantes:

-Luis Fernando Garcia Romero

Cod: 84948.
CC: 1023913296.

-Daniel Eduardo Hernandez

Cod:67632-CC:1022392048


# **Implementación de la visualización dinamica en display 7 segmentos para mostrar numero decimal de 16 bits.**

## **Descripcion:**

16 bist sin signo,comprende la cantidad de 0 hasta la cantidad de 65535 en decimal,por lo cual para vizualizar este tipo de dato es necesario usar 5 display de 7 segmentos anodo-común mediante visualizacion dinamica.
![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/Images/DISPLAY.jpg)

La visualizacion dinamica es implementada cuando se requiere mostar datos en mas de un display de 7 segmentos,mediante la proyeccion de datos por intervalos pequeños de tiempo,este tipo de visualización se realiza con el fin de ahorrar pines de conexion en un circuito integrado ó en este caso la FPGA.

En la mayoría de los casos, los 7 pines de los cátodos están inter-conectados entre cada display, como se observa en la figura de ejemplo mostrada a continuacion:

![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/Images/VISUALIZACION%20DINAMICA%205D7SG.png)
 
Teniendo en cuenta lo anterior, se realizar una multiplexación de los Anodos de cada Display necesarios para la visualizacion del dato requerido, esto con el fin de descomponer el dato en cada uno de los display(una unidad por cada display). En otras palabras, en cada instante de tiempo, solo un display se encuentra activo. En este sentido, se debe garantizar que el destello en la visualización entre cada display no se perciba para engañar al ojo. Para ello, cada display debe tener un tiempo de activación máximo cada 16 ms.
![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/Images/DISPLAYS.jpg)

## **Caja negra:**

El diseño de la caja negra para la implementacion del ejercicio planteado es el siguiente:

![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/Images/bcd%20a%207seg.png)

 

## **Descripcion funcional:**

La funcionalidad del sistema se describe a continuacion:


1) Decodificacion decimal BCD a 7 segmentos: basicamente se tiene en cuenta la tabla de equivalencias presentada a continuacion:

![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/Images/tabla.png)

2) Identificacion de decenas de miles, miles, centenas, decenas y unidades: Para la identificacion de cada una de las cantidades y por tanto el numero que se visualizará en cada display se implementó el siguiente algoritmo:

![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/Images/diagrama%20de%20flujo.png)
 

## **Diagrama estructural:**

![image](https://github.com/ELINGAP-7545/lab04-grupo-5/blob/master/Images/diagrama%20estructural.png)
 



