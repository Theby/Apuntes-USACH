## _Clase 2 - Metodología RUP_ <small>(Rational Unified Process)</small>

### Aspectos Generales

La empresa **Rational** genero el Proceso Unificado (Unified Process)

Elementos claves de la metodología

 * Proceso -> Producto.
 * Busca aumentar la productividad permitiendo que todos los roles del grupo 
   de trabajo tenga acceso a todo el material del proyecto.
 * Utiliza UML.
 * Las actividades crean y mantienen Modelos.
 * Es un proceso configurable que puede cambiar según las necesidades 
   particulares del proyecto.
 * Contempla las mejores practicas:        
   * <a href="#desarrollo-de-software-iterativo">
     <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
     _Desarrollo de Software Iterativo_</a>
   * <a href="#gestión-de-requerimientos">
     <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
     _Gestión de Requerimientos_</a>
   * <a href="#arquitectura-basada-en-componentes">
     <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
     _Arquitectura basada en componentes_</a>
   * <a href="#visualmente-modelar-software">
     <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
     _Visualmente Modelar Software_</a>
   * <a href="#verificar-calidad-del-software">
     <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
     _Verificar calidad del Software_</a>
   * <a href="#controles-de-cambio-de-software">
     <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
     _Controles de cambio de Software_</a>

#### Desarrollo de Software Iterativo

Incrementa la comprensión con el Cliente ya que se produce mayor feedback. 
También incrementan las funcionalidades. Cada iteración debe entregar de 
resultado una entrega funcionable del proyecto.

#### Gestión de Requerimientos

Se generan y organizan requerimientos con el cliente analizando los 
requerimientos originales del mismo.
Al <b>organizar</b> los requerimientos se puede ver en que área actúa cada uno 
y como dependen entre ellos.

También se generan casos de uso y documentos de Arquitectura de Alto Nivel

#### Arquitectura Basada en Componentes

Es resistente y flexible, permite re-utilización de componentes, es más 
entendible y permite una generación temprana.

#### Visualmente Modelar Software

Mendiante UML se intentan modelar los sistemas de la organización que desea el 
proyecto.

#### Verificar Calidad del Software

Confiabilidad, funcionalidad, performance de la aplicación(arquitectura) y del 
sistema(Comunicación con otros sistemas).

#### Controles de Cambio de Software

Monitorear cambios, aceptar cambios, desarrollo iterativo, trabajo con todo el 
equipo para asegurar un buen cambio







### Generalidades del proceso

<%= image_tag('pingeso/rup-fases-e-iteraciones.jpg', :class => 'img-responsive img-thumbnail') %> 

 * <a href="#incepción">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
   _Incepción: Que es lo que se va a hacer._</a>
 * <a href="#elaboración">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
   _Elaboración: Analisis del proyecto._</a>
 * <a href="#construcción">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span>
   _Construcción: Donde se crea el proyecto._</a>
 * <a href="#transición">
   <span class="glyphicon glyphicon-link" aria-hidden="true"></span> 
   _Transición: Periodo de pruebas._</a>

Deployment: Pruebas de performance, pasar el sistema a un estado de producción.

#### Incepción

 * **Documento Global:** RFP, Anteproyecto. Corresponde a documentos con 
   requerimientos o propuestas de desarrollo de proyectos.
 * **Casos de uso:** Mediante varias reuniones.
 * **Glosario:** Analista de funcionalidades.
 * **Caso de negocio Inicial y Riesgos:** Reuniones y planes de mitigación.
 * **Plan de proyecto:** Carta Gantt mediante el estudio de proyectos 
   anteriores.

##### Resultados

* Se define el Stakeholder, se define el costo y se planifica.
* Se comprenden los requerimientos.
* Se analizan costos, riesgos y **primera desviación del proyecto**.
* Hay prototipos de diseño arquitectural.

#### Elaboración

* Mediante muchas muchas reuniones se analiza el dominio del problema.
* Se ven las bases arquitecturales: tecnologías a usar y metodologías.
* Se documenta todo y se crea un esqueleto del software.
* Se genera un plan de proyecto y de mitigación. (se negocia según los riegos).
* Se decide si se avanza a las siguientes dos etapas.
* Gestión de cambios y actualización de Documentos. Demanda mucho trabajo.

En esta fase es donde se contrata a toda la gente que trabajará en el 
proyecto, después del análisis de trabajo.

##### Resultados

* Modelos de caso de uso a un 80%.
* Requerimientos No Funcionales: Restricciones según leyes o normativas, 
  especificaciones técnicas.
* Documentos de Arquitectura de alto nivel.
* Debe considerar un prototipo funcional.
* Lista de riesgos, casos de negocios y plan de desarrollo del proyecto a un 
  nivel grueso.

#### Construcción

Paraleliza actividades, se integran componentes, se divide la actividad en 
sprint o entregas parciales y se realizan pruebas unitarias (QA) para analizar 
los componentes.

#### Transición

Beta testing, operaciones en paralelo(nuevo con el viejo corriendo en 
paralelo), conversión de BD operacionales, entrenamiento de usuarios, puesta 
en producción.

Para las operaciones en paralelo se debe hacer una transición de lo viejo a lo 
nuevo hasta que el nuevo tome todo el control.

##### Objetivos

Lograr capacitar al usuario, lograr concurrencia del stakeholder para realizar 
una critica, lograr un producto final base, rápidamente a un costo efectivo.




### Estructura estática del proceso <small>Roles</small>

Iterar permite generar mayor calidad debido a que en cada iteración se revisa 
el programa en su totalidad con test de regresión. Los cambios son más 
manejables, los riegos se mitigan de forma temprana, el equipo aprende más 
rápido.

Trabajor:

 * Comportamiento y responsabilidades.
 * Analistas:
   * Analista de procesos de negocio.
   * Diseñador del negocio.
   * Analista de sistema.
   * Especificador de requisitos.
 * Desarrolladores:
   * Arquitecto de software.
   * Diseñador.
   * Diseñador de interfaz de usuario.
   * Diseñador de cápsulas.
   * Diseñador de base de datos.
   * Implementador.
   * Integrador.
 * Gestores/jefes:
   * Jefe de proyecto.
   * Jefe de control de cambios.
   * Jefe de configuración.
   * Jefe de pruebas.
   * Jefe de despliegue.
   * Ingeniero de procesos.
   * Revisor de gestión del proyecto.
   * Gestor de pruebas.
 * Apoyo:
   * Documentador técnico.
   * Administrador de sistema.
   * Especialista en herramientas.
   * Desarrollador de cursos.
   * Artista gráfico.
 * Especialistas en pruebas:
   * Especialista en pruebas (tester)
   * Analista de pruebas.
   * Diseñador de pruebas.
 * Otros:
   * Stakeholder.
   * Revisor.
   * Coordinador de revisiones.
   * revisor técnico.
   
Artefactos:

 * Modelos de Caso de Uso
 * Documentos de arquitectura
 * Código Fuente
 * Ejecutables





### Workflows principales

Modelamiento del negocio:

 * Casos de negocio.
 * Claridad del proceso de negocio por parte del cliente.
 * Reuniones periódicas.

Requerimientos:

 * Describir que debe hacer el sistema.
 * Funcionalidades y restricciones.
 * Identificar Actores.
 * Casos de Uso.
 * Requerimientos no funcionales.

Análisis y diseño:

 * Como se realizara el sistema.
 * Rendimiento en un ambiente específico.
 * Completa todos los requerimientos.
 * Robusto: fácil de modificar si hay cambio en requerimientos funcionales.
 * Integración de la solución.

Implementación:

 * Definir organización del código (Sub-sistemas/Negocio, Capas).
 * Implementar clases y objetos en términos de componentes (Estructura del 
   proyecto).
 * Test unitarios (Cobertura funcionalidades).
 * Integración de resultados (servidores de integración continua).

Test:

 * Verificar interacción entre objetos.
 * Verificar integración entre componentes del sistema.
 * Verificar requerimientos funcionales.
 * Identificar defectos y corregirlos previo a la puesta en producción.

Despliegue/Instalación:

 * Releases.
 * Empaquetamiento Entregables.
 * Distribuir el software.
 * Instalación.
 * Soporte.
 * Adicionalmente:        
   * Plan beta test
   * Migración de datos
   * Aceptación Formal

Gestión de Proyectos:

 * Lograr objetivos.
 * Gestión de riesgos.
 * Planes de mitigación.
 * Restricciones en las entradas.
 * Monitoreo del proyecto(herramientas).

Configuración y gestión del cambio:

 * Problemas:
   * Actualizaciones simultaneas de artefactos (SVN).
   * Notificaciones Limitadas.
   * Versiones Múltiples.    
 * Soluciones:        
   * SVN.
   * Reuniones periódicas.

Ambiente:

 * Ambiente de desarrollo:        
   * Servidores de desarrollo.
   * Servidores de QA.
   * Servidores de integración continua.
   * Servidores de pruebas de estrés.
 * Herramientas de gestión de proyecto.
 * Maquinas para los desarrolladores.
 * Infraestructura para trabajar.