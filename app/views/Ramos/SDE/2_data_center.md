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
 * Debe optimizar los problemas de energía.

Para optimizar esto se han usado sistemas centrados en los Switch de conexión 
y centrados en los Servidores.

#### Switch vs Servidores

Los **Switch** corresponden al componente dominante en la interconneción y 
ruteo, mientras que los servidores tienen diferentes tarjetas de red usadas en 
el ruteo y direccionamiento.

#### Protocolos

A continuación una serie de protocolos que usan switchs y servidores de diferentes formas:

 * <a href="#fattree">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
   _FatTree_</a>
 * <a href="#vl2">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
   _VL2_</a>
 * <a href="#b-cube">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
   _B-Cube_</a>
 * <a href="#dcell">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
   _DCell_</a>






#### FatTree 

K grupos con k/2 switch bordes y k/2 switch de agregación. Cada grupo está 
conectado a todos los switch principales. 

 * TCAM: Ternary Content Addressable Memory - Sistema que guarda las direcciones y realiza búsquedas paralelas entre las entradas.

Se busca en dos tablas, primero TCAM y luego se realiza el index en SRAM. Las 
tablas de ruteo deben ser estáticas para evitar retrasos.

<%= image_tag('sde/fattree.png', :class => 'img-responsive img-thumbnail') %>







#### VL2

Soporta sistemas con excesivas subscripciones, es ágil y tolerante a fallas. 
Es Multipath, soporta más conectividad entre dos layers.

Usa VLB(Valiant Load Balancing) para cargar el trafico de forma balanceada. 
También busca tener elección de caminos con costo similar usando ECMP (Equal 
Cost Multi Path)

<%= image_tag('sde/vl2.png', :class => 'img-responsive img-thumbnail') %>







#### B-Cube

Provee una topología con menos diámetro. Los servidores equipados con 
múltiples puertos de red se conectan con múltiples mini-switch de bajo costo. 
Los servidores toman parte del direccionamiento.

Este protocolo tiene poco coste de manufacturación y poco enfriamiento.

<%= image_tag('sde/b-cube.png', :class => 'img-responsive img-thumbnail') %>








#### DCell

No usa switchs principales ni switchs de agregación. Introduce costos 
adicionales en links de comunicación inalambricos. Cada célula está conectada
en una sola estructura. Cada servidor tiene dos interfaces.

<%= image_tag('sde/dcell.png', :class => 'img-responsive img-thumbnail') %>



#### Virtualización

La virtualización permite a los servicios moverse entre servidores y tener 
varias maquinas virtuales.

Da la ilusión de que todos los servicios están conectados al mismo switch. 
También permite tener la habilidad de modificar dinamicamente el crecimiento 
de los recursos.

Desafíos de la virtualización: