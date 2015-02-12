## _Clase 2 - Data Centers y Cloud Computing_

Se espera de los sistemas que tengan buen:

 * Tiempo de respuesta
 * Utilización de recursos de la red
 * Eficiencia energética

**Cluester:** es un conjunto de nodos conectados entre ellos. Suelen ser 
idénticos y manejados por una sola organización.

Usan mucha energía, la mayoría de esta se transforma en calor por lo que se 
necesita invertir en sistemas de enfriamiento. Cuando se tiene demasiados 
clusters, como para construir un edificio solo para ellos, se tiene un:




### Data Center Network

Usualmente estas redes están distribuidas geográficamente, están bajo un 
dominio administrativo y third party buscan poner sus aplicaciones en ellas.
Están compuestas de racks, cada uno con 100 cores aprox.

La conexión es entre 20-40 servidores, existe redundancia, balance de carga, 
firewalls y otros. Cada core tiene una alta tasa de transferencia.

Los principales problemas de esta topología son:

 * Escalabilidad
 * Capacidad
 * Fiabilidad
 * Utilización
 * Alto costo Económico
 * Temperatura

Desafios de esta topología:

 * Todos los servidores deben poder comunicarse con su maxima capacidad de banda ancha.
 * Deben perderse pocos paquete de información.
 * Buena congestión para transmisiones simultaneas.
 * Usar Spanning Tree con caminos distribuidos.

Para optimizar esto se han usado sistemas centrados en los Switch de conexión 
y centrados en los Servidores.

#### Switch vs Servidores

