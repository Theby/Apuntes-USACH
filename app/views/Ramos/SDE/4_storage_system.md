## _Clase 4 - Scalable Storage Systems_

En sistemas de almacenamiento en los que se maneja muchos discos de 
información es necesario tener sistemas de tolerancia a fallas. Para poder 
hacer esto hay que invertir en grandes costos de rebundancia. Demodo que son 
las operaciones de Input y Output las que se escalan.


### BD Relacionales

Son de fácil Setup, tienen una gran cantidad de usuarios.

Las replicas suelen estar en un estado de Master -> Slave. También es posible fraccionar y replicar una tabla de la base de datos.

Usualmente se eligen dos elementos del CAP Theorem: Consistency, Availability and Partition.




### Bigtable: SD

Útil para datos estructurados. No consiste en una BD completamente relacional. 
Es fácil acceder a los datos. Hay un rango de filas dinámicamente 
particionadas.




### OceanStore

Busca ser persistente en una estructura no confiable.

Herramientas:

 * Rebundancia
 * Cryptographic
 * Caching
 * Monitoring

#### Naming & Access Control

Cada objeto con un GUID(Global Unique ID) fijo. La búsqueda es basada en pre-
fijos. La actualización de datos es mediante acuerdos.




### Amazon Dynamo

Es confiable y a gran escala. Es eficiente, consiste de muchos datacenters. 
Usa sistemas simples de Query.

Solo se usa un: 

 * Get(key)
 * Put(key, context, object)        

Tiene un has consistente, esto permite replicar el nodo que recibe la query.

#### Data versioning

La modificación de un archivo puede ser mediante branch y merge, las versiones 
antiguas no se elimiman. Cuando existen fallas se llega a un acuerdo.

#### Membership

Mediante el traspaso de mensajes a ciertos nodos.