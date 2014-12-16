## _Clase 5 - Scalable Processing Systems #TODO_

Estos se usan para sistemas de procesamiento masivo de datos. Una de las 
fuente de datos son las redes sociales. Se busca discriminar entre los datos 
que son importantes y los que no.




### Map Reduce

Se maneja los datos mediante un Mapeo y una reducción del volumen de datos.

Para escalar la información se divide todo en sub-partes. Se manejan controles de fallas para no perder información.

Ha sido usado principalmente para calcular cosas en la Web: grafos, busquedas, etc.

Las tareas se dividen en servicios, algunos de ellos son servicios maestros.

Para los errores se mantiene un ping de los workes constantemente.
Tener partición de datos es de suma importancia.    

#### Percolator

Fue creado por google para detectar cambios pequeños dentro de grandes 
cantidades de datos.

Se hace un index de links invertidos para detectar urls cambiantes. No se 
recomienda usar Big Table debido a que es incapaz de generar transacciones 
entre mutiples filas.

Existen Observers que permiten notificar cambios en las líneas de código o 
datos en general.

En las transacciones se controla un estado en el que no se puede alterar hasta 
que se termine la transacción.

La mejora de este tipo a MapReduce crea más gastos en recursos si no se maneja 
bien.




### Streaming Databases

Aurora: Las consultas son representadas por grafos de operadores. Centralizado.

 * Borealis: Aurora distribuido. 
 * Stream: Se procesa la información mientras son leídos, de forma que no se 
   guarda información. Tiene buena latencia. Es en tiempo real y continuo. Las 
   secuencias de datos se leen en tuplas, con un id y la información.

**Load Shedding:** Se eliminan los datos que se reciben si es que llega más 
información de la que se puede procesar.

#### SPS: S4

Existen diferentes eventos con diferentes tareas, cada evento puede emitir un 
evento o más. Los eventos se denominan PE. Se envían Tuplas.

Si un nodo falla se cambia por uno nuevo.

#### Storm

Existen Spouts y Bolts. Similar a S4, pero sin perdida de datos. Agrupa nodos en un flujo de streaming.

#### Samza

Se abstrae el streaming. El streaming se particiona en diferentes tareas pre-
difinidas.

Utiliza Kafka y Haddop en algunos casos.

Tiene tolerancia a fallos: usa modos de checkpoints para hacer respaldos.

#### Capacidad elastica

Todos estos sistemas corren con recursos asignados previamente, los cuales son 
estáticos.

Se busca que puedan adaptarse a la cantidad de datos que llegan.

Los query se manejan en grafos, cada nodo tiene un estado, estos pueden ser 
replicados. Hay nodos que pueden tener un estado fijo y que solo dependen de 
la información que le llega. Sin embargo hay nodos con estado que reaccionan a 
los datos historicos de los demás nodos.