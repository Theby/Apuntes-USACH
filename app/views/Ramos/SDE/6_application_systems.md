## _Clase 6 - Scalable Application Systems_

### Scalable Web Architecture

Puntos importante de una arquitectura web:

 * Disponibilidad: Rebundancia para componentes claves.
 * Performance: Afecta el uso y la satisfacción del usuario.
 * Consistencia: La información es consistente en el sistema.
 * Escalabilidad: Incrementa la capacidad de manejar grandes cantidades de datos.
 * Manegabilidad: Facilita el diagnostico y entiende problemas, actualizaciones, modificaciones y operaciones.
 * Cost: Hardware-Software.

Estas aplicaciones web son una interfaz para el usuario, creando así una 
relación Cliente-Servidor.



### Data Access

Para acceder la información se usan diversos metodos:

* LAMP: Linux, Apacje, MySQL/MariaDB, Perl/PHP/Python
* Cache: De forma global, distribuida o con módulos tales como Memcached.
* Proxies: Son intermediarios entre Hardware y Software.
* Index: Agilizan la búsqueda en bases de datos.
* Load Balancer: Balancea la carga de los datos. Ya sea en lectura o escritura.
* Queues: Mensajes enviados al servidor solicitando datos.

#### Manejo de fallas

Para manejar fallas se busca el siguiente escenario:

 * La red es confiable
 * La latencia es 0.
 * Banda ancha infinita.
 * La red es segura.
 * La topología no cambia.
 * Existe solo un administrador.
 * Coste de transporte nulo.
 * La red es homogénea.

De modo que se usan:

 * Tiempos de espera
 * Levantamiento de banderas de estado
 * Asincronía.

#### Monitoreo

Para detectar errores o estados particulares de la aplicaciones se debe usar 
un sistema de monitoreo, estos tienen el siguiente impacto en la aplicación:

 * Separación y servicios añaden complejidad.
 * Monitoreo puede tener un impacto en performance.
 * Se debe monitorear la funcionalidad end-to-end.
 * Se monitorea cada servicio de manera independiente.
 * Se monitorea frecuentemente para detectar errores antes que afecten a los usuarios.
 * Establece una línea base y un sistema de historial.
 * Se debe monitorear el sistema de monitoreo.