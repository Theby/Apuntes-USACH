## _Clase 1 - Introducción_

La razón de Ockham, la navaja de ockham, razón de Occam, parsimonia: *Si dos modelos dan el mismo resultado(a nivel estadístico) se debe elegir el que es más simple.*

### Objetivos de la Minería

Está orientado a sacar información.

 * Datos: : Hechos o medidas que describen características de objetos, eventos 
   o personas, es la materia prima de la cual se obtendrá la información. Son 
   datos muertos. Incluso sin formato. Son iguales para todos los observadores
 * Información: Datos procesados y presentados en forma adecuada, de interés 
   para un observador en un tiempo determinado. Son diferentes para cada 
   observador.
 * Conocimiento: Información procesada para emitir juicios que llevan a 
   conclusiones. Es una estructura de información que permite juicios. 
   Requiere contexto. Depende del conocimiento previo. Si algo es conocido por 
   pocos aún así es importante.
 * Meta-conocimiento:  Reglas que permiten obtener conocimiento. Estás reglas 
   son las que define la minería de datos.

   Minería de datos en general: KDD - Knowledge Discovery in Database.

<%= image_tag('tmd/objetivos_mineria.png', :class => 'img-responsive img-thumbnail') %> 


### Definiciones

Minería de dato es un proceso de varias partes.

En 1989:

*Proceso no trivial de identificación válido, novedoso, potencialmente útil, y esencialmente entendible de obtención de patrones[^1] de los datos*

[^1]: Patrón: es algo que se repite a través de los datos.

En 1995:

*KDD es “La extracción no-trivial de conocimiento implícito en los datos que resulte ser previamente desconocido y potencialmente útil”*

En 1996:

*“La utilización de las Bases de Datos a lo largo de un proceso de selección, pre-procesamineto, sub-muestreo y transformación; aplicando los métodos de minería de datos (algoritmos) para enumerar patrones y evaluar los productos de la minería, como un proceso de identificación de subconjuntos de patrones enumerables, denominado conocimiento*

En este sentido minería de datos es solo el proceso de obtención de datos del proceso KDD.

### Tipos de Minería de Datos

 * MD Indirecta: Se basa en preguntas generales sin restricciones al sistema. 
   El riesgo está en que toda la información obtenida ya sea conocida.
 * MD Directa (Inductiva): Basado en preguntas especificas. 
 * Evaluación de Hipótesis y Refinamiento: Se necesita un test de hipótesis.

### Modelo del sistema de información operacional

Un Sistema de Información (SI) es una
representación de datos generados de la medida
de algún fenómeno físico como imagen, voz,
texto, proceso industrial, etc.

Un SI está compuesto de 4-tupla como: SI=< U, Q, V, f >

Donde:

 * U universo cerrado: un conjunto finito, no vacío, de n objetos, {x1, x2, …, 
   xn}
 * Q: un conjunto finito, no vacío, de p atributos {q1, q2, …, qp}
 * V= q∈Q en U de Vq , donde Vq es un dominio (valor) de los atributos q.
 * f:UxQ→V es una función de decisión llamada función de información, tal que f
   (x,q)∈Vq para cualquier q∈Q, x∈U.
 * Un par (q,v) para q∈Q, v∈Vq es llamado descriptor en un sistema de 
   información SI.

El SI puede ser representado por una tabla finita
de datos, donde las columnas están indicadas
por los atributos, las filas por los objetos y la
entrada por la columna q y la fila xi resulta la
instancia de la función de información f(xi
,q).

Ejemplo:

<%= image_tag('tmd/si.png', :class => 'img-responsive img-thumbnail') %> 

 * U={x1, x2, x3, x4, x5, x6}
 * Q={Potencia, Caja Velocidades, Tipo}
 * Vpotencia= {100, 120, 140}, Vc.v.{4, 5, Automático}, Vtipo{Sedan, Hashback, 
   SW}
 * f(x3,Tipo)=SW.

En general este sistema se denomina
Sistema de Información Operacional o
Base de Datos Operacional, pues está
destinado a la realización de consultas
(tipo SQL) que tienen que ver con la
operación normal del proceso que apoya,
desde el punto de vista informático.

## Citas 