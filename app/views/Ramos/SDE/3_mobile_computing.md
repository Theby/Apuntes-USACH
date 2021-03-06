## _Clase 3 - Mobile Computing y P2P_

### MANET: Mobile Ad-Hoc Networks

**Limitaciones:** Propagación de la información. Banda Ancha y energía.
Movilidad de los Nodos (Topológía).

**Características:** Sin infraestructuras. Uno o varios saltos de transmisión. 
Nodos Host-Client.

#### Protocolos de Routing

* Pro-Active Routing
  * Usa Tablas de Ruta
  * DSDV: Destination Sequenced Distant Vector
    * Evita Loops
    * Para redes más estáticas
* Reactive Routing
  * Sin tablas, debe buscar la conexión y el camino antes de enviar la 
    información.
  * DSR.
  * AODV: Ad-hoc On-Demand Distance Vector
    * Usado en redes Densas
* Geo-Routing
  * Se conocen las posiciones físicas, vecinos a un salto de distancia. Se 
    envía el mensaje al nodo más cerca del destino físico.
  * Tiene problemas ya que el destino más cercano (físicamente) podría no 
    tener conexión con el receptor.  
* Heirarchical Routing
  * Tiene una búsqueda escalable. Usa protocolos de Clustering.
  * Tiene uno o varios nodos lideres, se eligen cuando hay varios nodos 
    vecinos que le entregan su información a el.
* Group Comunication
  * Multicast
  * Flooding
  * Hace uso de Trees (Árboles) 






### Delay Tolerant Networks (DTN)

Tolera desconexiones y grandes latencias. Guarda la información antes de 
enviarla. Usa Transportadores de mensajes. Es oportunista con los nodos de 
conexión cercanos que pueda encontrar. No es útil para conexiones de tiempo 
real.

#### Protocolos de Routing


 * Epidemic: Envía información a todos los vecinos.
 * Prophet: Usa las conexiones hechas en el pasado para realizar un calculo 
   probabilistico de cual podría ser el mejor nodo a elegir.
 * Spray and Wait: Eficiencia de recursos ya que determina cuantas copias de 
   la información enviará a la red para que encuentren a su receptor.


#### Desafios de Investigación

Usar poca Energía. Lidiar con particiones de Red. Priorisación y 
diversificación de mensajes.





### Wireless Sensor Network

Corresponde a redes cerradas de sensores que cubren un área en particular para 
realizar diferentes acciones. Fuertemente relacionada con **IoT** - Internet 
of Things; Smart Cities y Aplicaciones de Sensores.

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

#### Desafios de Investigación

 * Consumo de energía
 * Balance de energía
 * Reducción de sobrecargas
 * Rebundancia de información y congestión.
 * Tolerancia a fallos en ambientes inestables.











### Redes P2P

Se comparten los recursos, además todos los nodos son Host-Client. Se auto-
organizan. Es Descentralizado, tolerante a fallas y escalable.

Las conexiones son a nivel lógico, lo que permite tener redes P2P 
estructuradas y no estructuradas.

Son auto-organizadas, con alta escalabilidad y tolerante a fallas.

<kbd>
*Este contenido fue mayormente analizado en el curso de Sistemas Distribuidos*
*del primer semestre del 2014*
</kbd>

<a href="https://mega.co.nz/#!yIYijBhS!7JYu5SYdmjDmv8lYjcwxdlTlNJmNDZkQ02CQ-aFYNac" target="_blank"> Descarga una introducción a P2P aquí - Texto en Inglés</a>