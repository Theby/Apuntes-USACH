## _Clase 1 - Introducción_

Todos los procesadores tienen una **velocidad secuencial** que determina 
cuantas instrucciones son capaces de hacer por ciclo del reloj. Sin embargo 
los accesos a memoria limitan la capacidad del procesador para lograr este 
optimo, ya que en varias ocasiones, usualmente al hacer fetch, el procesador 
se queda en espera de la memoria.

Los **procesadores escalares** son aquellos que emiten 1 instrucción por 
ciclo, para mejorar el paralelismo de un pipeline de instrucciones se ejecutan 
diferentes instrucciones al mismo tiempo dentro del procesador. Esto se le 
conoce como el alto y el ancho(ways) del pipeline. También existen los **super escalares** que pueden tener un pipeline completo corriendo de forma 
simultanea, pero esto implica que tiene partes como la ALU replicadas en el 
procesador.

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

### Ensalada de términos:
 
 * SMP: Symmetric Multi Processing.
 * NOW: Network of Workstations.
 * Clusters Beowulf: clusters compuesto de computadores comerciales
 de propósito general.
 * PVP: Parallel Vector Processing, procesadores vectoriales en
 computadores paralelos.
 * MPP: Massively Parallel Processing; muuuuuchos procesadores
 * Computación distribuida.
 * Computación Grid: unifica recursos dispersos geográficamente para
 sistema computacional virtual y transparente.

### ¿Qué es paralelismo?
 * Una estrategia compuesta de elementos de hardware y software para
 resolver complejos problemas computacionales, en forma más rápida.
 * En términos simples, paralelismo se logra realizando las siguientes
 etapas
    1. Dividir el problema en tareas más pequeñas.
    2. Asignar las tareas a un conjunto de procesadores que trabajen simultáneamente.
    3. Coordinar a los procesadores.
 * Una solución secuencial sólo se preocupa de encontrar un algoritmo
 que resuelva el problema.
 * Paralelismo implica además considerar la infraestructura paralela.

### Programación paralela
* Programación paralela involucra
    1. Descomposición de la tarea en partes más simples
    2. Distribución de las tareas en un pool de procesadores
    3. Coordinación del trabajo y comunicación entre procesadores
* Consideraciones
    1. Tipo de arquitectura paralela usada
    2. Tipo de comunicación entre procesadores usada
