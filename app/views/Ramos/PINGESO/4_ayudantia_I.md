## _Clase 4 - Ayudantía I: JavaEE_

JaveEE es una plataforma de desarrollo, base sobre la cual se fija un 
estándar.

En el se desarrollan y ejecutan aplicaciones. Comprende módulos de Hardware y 
Software.

Además esta orientado a componentes.

<%= image_tag('pingeso/pingeso_c4_1.PNG', :class => 'img-responsive img-thumbnail') %>

EAR: Eterprise Archive:

 * EJB (Enterprise Java Bean): lógica de negocio:        
   * Transacciones.
   * Manejo de concurrencia.
   * Colas de mensajería.
   * Lógica de negocios.
   * Seguridad.
   * Beans: Pieza de software:
     * Entidad: modelo; representa un objeto concreto(una tabla de la 
       BD).
     * Mensaje: escucha mensajes en un servicio JMS.(se le puede enviar 
       solicitudes).
     * Sesión: Mantienen un estado de sesión para un cliente.
 * WAR (Aplicación Web) != JAR:        
   * Consume recursos EJB, REST, Web-service, etc.
   * Servicio de archivos html, xml, css, js, etc.
   * Framework web: tempate, routers, componentes web.
   * Tecnología JSP (Java Server Pages): Primefaces.
        
    


### Ambiente de desarrollo

 * Base de datos.
 * Servidor de aplicaciones JavaEE.
 * EAR = WAR + EJB + etc.
 * IDE (Netbeans || Eclipse).
 * Maven (Gestión de paquetes).
 * Control de versiones.
 * Servidor de testing.




### Artefactos

 * Maven:        
   * El npm de Java.
   * Apoya el control de versiones y el gestor de paquetes.
   * Funciona en base a la configuración de los archivos XML llamados pom.
 * Git.
 * LESS/SASS:
   * Pre-procesador de hojas de estilo CSS.
   * Integración con algunos IDE.
   * Agiliza y organiza los estilos de las páginas web.
 * JUnit:
   * Construcción y ejecución de test unitarios.
   * Verificar el estado de los métodos de la aplicación.
 * Selenium:        
   * Es para firefox.
   * Automatiza pruebas para aplicaciones WEB.
 * CDI: Herramienta que inyecta dependencias.


### Otros Tips

@PersistenceContext() permite traer un objeto previamente creado para poder 
optimizar memoria re-utilizándolos.

Los Entity manager tienen sus tablas en memoria por lo que no se actualizan si 
otro entity manager crea objetos del tipo que el manejaba.

**Sería ideal tener un único EntityManager para toda la aplicación.**

Código para obligar que una query cree persistencia en la base de datos:

~~~java
public void create(T entity){
    /* Al crear "algo" estos datos pasan al cache y el EntityManager decide 
    cuando pasarlos a la BD */
    getEntityManager().persist(entity);

    /* Esto fuerza que los nuevos datos pasen efectivamente a la base de 
    datos, ignorando el cache */
    getEntityManager().flush();

    /* Saca un objeto de la base de dato y actualiza su versión en la RAM, 
    provocando que los datos esten disponibles de inmediato*/
    getEntityManager().refresh(object o);
}

~~~