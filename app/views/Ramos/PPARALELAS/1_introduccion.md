## _Clase 1 - Introducción_

Todos los procesadores tienen una **velocidad secuencial** que determina 
cuantas instrucciones son capaces de hacer por ciclo del reloj. Sin embargo 
los accesos a memoria limitan la capacidad del procesador para lograr este 
optimo, ya que en varias ocasiones, usualmente al hacer fetch, el procesador 
se queda en espera de la memoria.

Los **procesadores escalares** son aquellos que emiten 1 instrucción por 
ciclo, para mejorar el paralelismo de un pipeline de instrucciones se ejecutan 
diferentes instrucciones al mismo tiempo dentro del procesador. Esto se le 
conoce como el alto y el ancho(ways) del pipeline. También existen los super 
escalares que pueden tener un pipeline completo corriendo de forma simultanea, 
pero esto implica que tiene partes como la ALU replicadas en el procesador.

También están los **procesadores vectoriales** los cuales toman grandes 
operaciones matemáticas ordenadas en vectores y las pueden ejecutar en pocos 
ciclos del reloj. Sin embargo, estos procesadores no proliferaron debido a las 
condiciones especificas en la que las operaciones vectoriales debían 
ejecutarse.

 * Nota: HyperThreading es a nivel de hardware y por tanto no es afectado por 
   la programación paralela implicada.

Los **multi-procesadores** de hoy en día pueden usar memoria compartida 
mediante:

 * UMA: Uniform Memory Access
 * NUMA: Non-Uniform Memory Acess

