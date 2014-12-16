## _Clase 3 - Mobile Computing y P2P_

### MANET: Mobile Ad-Hoc Networks

**Limitaciones:** Propagación de la información. Banda Ancha y energía.
Mobilidad de los Nodos (Topológía).

**Carecterísticas:** Sin infrastructuras. Uno o varios saltos de transimisión. 
Nodos Host-Client.

#### Protocolos de Routing

* Pro-Active Routing
  * Usa Tablas de Ruta
  * DSDV: Destination Sequenced Distant Vector
    * Evita Loops
    * Para redes más estáticas
* Reactive Routing
  * Sin tablas, debe buscar la conección y el camino antes de enviar la 
    información.
  * DSR.
  * AODV: Ad-hoc On-Demand Distance Vector
    * Usado en redes Densas
* Geo-Routing
  * Se conocen las posiciones físicas, vecinos a un salto de distancia. Se 
    envia el mensaje al nodo más cerca del destino físico.
  * Tiene problemas ya que el destino más cercano (fisicamente) podría no 
    tener conección con el receptor.  
* Heirarchical Routing
  * Tiene una búsqueda escalable. Usa protocolos de Clustering.
  * Tiene uno o varios nodos lideres, se eligen cuando hay varios nodos 
    vecinos que le entregan su información a el.
* Group Comunication
  * Multicast
  * Flooding
  * Hace uso de Trees (Árboles) 






### Delay Tolerant Networks (DTN)

Tolera desconecciones y grandes latencias. Guarda la información antes de 
enviarla. Usa Transportadores de mensajes. Es oportunista con los nodos de 
conección cercanos que pueda encontrar. No es útil para conecciones de tiempo 
real.

#### Protocolos de Routing


 * Epidemic: Envía información a todos los vecinos.
 * Prophet: Usa las conecciones hechas en el pasado para realizar un calculo 
   probabilistico de cual podría ser el mejor nodo a elegir.
 * Spray and Wait: Eficiencia de recursos ya que determina cuantas copias de 
   la información enviará a la red para que encuentren a su receptor.


#### Desafios de Investigación

Usar poca Energía. Lidear con particiones de Red. Priorisación y 
diversificación de mensajes.





### Wireless Sensor Network

Corresponde a redes cerradas de sensores que cubren un área en particular para 
realizar diferentes acciones.

#### Protocolos de Routing y problemas asociados

	
 * Large Scale: Energía limitada y no recargable. No usa GPS.
 * Flat Network: Todos los nodos con el mismo rol. Se coordinan los Nodos para saber hacia donde y hacia que nodo deben enviar la información.
 * Hierarchical Routing: Se divide la red en dos niveles
   * Nivel Alto: Agrega y maneja la información.
   * Nivel Bajo: Propaga la información.			
 * Location-based: Se necesita hardware externo para conocer las posiciones de 
   los nodos en todo momento.
 * DECROP: Elige un nodo Header según los N vecinos que le envían información 
   a él. 
 * LEACH: Los headers del cluster van rotando aleatoreamente tras un tiempo 
   definido.
 * Tributaries and Deltas: Usa la logica de Árboles y Multipath. Considerando 
   que tiene fallas peligrosas y gasta mucha energía, respectivamente.
 * ONCP: Off Network Control Processing


### Redes P2P

Se comparten los recursos, además todos los nodos son Host-Client. Se auto-
organizan. Es Descentralizado, tolerante a fallas y escalable.

Las conecciones son a nivel lógico, lo que permite tener redes P2P 
estructuradas y no estructuradas.

*Este contenido fue mayormente analisado en el curso de Sistemas Distribuidos*
*del primer semestre del 2014*