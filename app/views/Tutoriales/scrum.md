## Metodología Ágil: Scrum
<hr class="divider">

<%= fa_icon "star 2x" %> **Antes de comenzar este tutorial por favor leer esto**. <%= fa_icon "star 2x" %>

Este tutorial ha nacido del gran desempeño que mi equipo tuvo usando esta 
metodología en el ramo PINGESO durante el segundo semestre del año 2014 y desde
entonces lo hemos seguido usando en proyectos personales y reales por lo que 
este tutorial abarca incluso más de lo que se ve en PINGESO.

SIN EMBARGO: el que esta metodología te sea útil para trabajar de 
forma ágil, efectiva y productiva depende más de la confianza y compromiso
del resto de las personas de tu equipo que de ser capaz de seguir esta guía y 
los métodos propuestos aquí para cada escenario.

Recuerda: La responsabilidad es tuya! Pero no por eso no vamos a ayudar :)
Ante cualquier consulta, duda o conflicto no dudes en [contactarme!](\contacto).

<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#tutorial-indice" aria-expanded="false" aria-controls="tutorial-indice">
  <b>Índice</b> <small>Mostrar/Esconder</small>
</button>
<div class="collapse in" id="tutorial-indice">
  <div class="well">
    <ol>
        <li><a href="#¿qué-es-una-metodología-ágil?">¿Qué es una metodología ágil?</a>
            <ol>
                <li><a href="#el-manifiesto-Ágil">El Manifiesto Ágil</a></li>
                <li><a href="#principios-Ágiles">Principios Ágiles</a></li>
                <li><a href="#¿cuándo-ser-Ágil?">¿Cuándo ser Ágil?</a></li>
                <li><a href="#contrato-Ágil">Contrato Ágil</a></li>
            </ol>
        </li>
        <li><a href="#scrum">Scrum</a>
            <ol>
                <li><a href="#breve-introducción">Breve Introducción</a></li>
                <li><a href="#características-importantes">Características Importantes</a></li>
                <li><a href="#¿cuándo-usar-scrum?">¿Cuándo usar Scrum?</a></li>
                <li><a href="#otras-metodologías-Ágiles">Otras metodologías Ágiles</a></li>
            </ol>
        </li>
        <li><a href="#el-ciclo-scrum">El ciclo Scrum</a>
            <ol>
                <li><a href="#el-sprint">El Sprint</a></li>
                <li><a href="#producto-final-de-un-sprint">Producto final de un Sprint</a></li>
                <li><a href="#cancelando-un-sprint">Cancelando un Sprint</a></li>
            </ol>
        </li>
        <li><a href="#roles">Roles</a>
            <ol>
                <li><a href="#product-ower">Product Owner</a></li>
                <li><a href="#scrum-master">Scrum Master</a></li>
                <li><a href="#team">Team</a></li>
                <li><a href="#stakeholder">Stakeholder</a></li>
                <li><a href="#gerentes">Gerentes</a></li>
                <li><a href="#usuarios">Usuarios</a></li>
                <li><a href="#relación-entre-roles">Relación entre Roles</a></li>
            </ol>
        </li>
        <li><a href="#artefactos">Artefactos</a>
            <ol>
                <li><a href="#¿qué-es-la-transparencia?">¿Qué es la transparencia?</a></li>
                <li><a href="#historia-de-usuario-y-tasks">Historia de Usuario y Tasks</a></li>
                <li><a href="#product-backlog">Product Backlog</a></li>
                <li><a href="#sprint-backlog">Sprint Backlog</a></li>
                <li><a href="#métricas">Métricas</a>
                    <ol>
                        <li><a href="#burn-up">Burn-Up</a></li>
                        <li><a href="#burn-down">Burn-Down</a></li>
                        <li><a href="#entendiendo-las-burndown">Entendiendo las Burndown</a></li>
                        <li><a href="#calidad">Calidad</a></li>
                        <li><a href="#seguridad">Seguridad</a></li>
                    </ol>
                </li>
            </ol>
        </li>
        <li><a href="#artefactos">Reuniones</a>
            <ol>
                <li><a href="#backlog-refinement-meeting">Backlog Refinement Meeting</a></li>
                <li><a href="#sprint-planning-meeting">Sprint Planning Meeting</a>
                    <ol>
                        <li><a href="#objetivo-del-sprint">Objetivo del Sprint</a></li>
                        <li><a href="#recomendaciones-i">Recomendaciones I</a></li>
                    </ol>
                </li>
                <li><a href="#daily-scrum-meeting">Daily Scrum Meeting</a></li>
                <li><a href="#sprint-review-meeting">Sprint Review Meeting</a>
                    <ol>
                        <li><a href="#recomendaciones-ii">Recomendaciones II</a></li>
                    </ol>
                </li>
                <li><a href="#sprint-retrospective-meeting">Sprint Retrospective Meeting</a>
                    <ol>
                        <li><a href="#recomendaciones-iii">Recomendaciones III</a></li>
                    </ol>
                </li>
            </ol>
        </li>
        <li><a href="#criterio-de-listo-y-de-aceptación">Criterio de listo y de aceptación</a>
            <ol>
                <li><a href="#criterio-de-listo">Criterio de Listo</a></li>
                <li><a href="#criterio-de-aceptación">Criterio de Aceptación</a></li>
            </ol>
        </li>
        <li><a href="#empezando-tu-primer-sprint">Empezando tu Primer Sprint</a></li>
        <li><a href="#material-de-ayuda">Material de Ayuda</a></li>
        <li><a href="#software-de-ayuda">Software de Ayuda</a></li>
        <li><a href="#enlaces-externos">Enlaces Externos</a></li>
        <li><a href="#citas">Citas</a></li>
        <li><a href="#comentarios">Comentarios</a></li>
    </ol>
  </div>
</div>

























## ¿Qué es una metodología ágil?
<hr class="divider">

Las metodologías ágiles son técnicas de desarrollo de software nacidos a 
mediados de la década de 1990 con el objetivo de atacar los puntos débiles de 
metodologías duras como OMT++ o RUP.

Las metodologías duras suelen ser muy estructuradas y poco reactivas al cambio 
ya que cada vez que hay modificaciones se debe cambiar toda la documentación y 
volver a etapas anteriores para dejar el proyecto en un estado consistente. 
Este tipo de metodologías también consiste en mucha documentación y poco 
contacto con el cliente, de modo que suele ser común que el producto final no
es lo que el cliente deseaba en primer lugar.

<div class="row">
    <div class="col-md-6">
        <p>
            Otra de las características de las metodologías duras es que se 
            basan en el desarrollo cascada (waterfall), pasando de análisis de 
            requerimiento a diseño, luego desarrollo, integración, pruebas y 
            finalmente producción. Esto trae consigo muchos problemas ya que 
            el desarrollo Cascada implica que en la fase de requerimientos el 
            cliente sabe a la perfección que es lo que desea, lo que por 
            supuesto nunca ocurre, provocando así errores, cambios y 
            conflictos durante toda la vida del software.
            </br></br>
            La gran razón de porque el desarrollo de software ha sido así se 
            debe a que estos modelos son una herencia del desarrollo de 
            proyectos de otras ingenierías, como arquitectura u obras civiles, 
            donde un contexto duro y rígido es más útil debido a la naturaleza 
            de los problemas que estos profesionales enfrentan, sin embargo el 
            software es un ente vivo que cambia continuamente según las 
            necesidades del cliente o del mercado.
        </p>
    </div>
    <div class="col-md-6">
        <p align="center">
            <%= image_tag('tutoriales/scrum/traditional-waterfall-development.png', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %>
            </br><small>Fuente original de la imagen: <a href="http://scrumreferencecard.com/scrum-reference-card/">Scrum Reference Card</a></small>
        </p>
    </div>
</div>



### El Manifiesto Ágil

En este contexto nacieron las metodologías ágiles en conjunto con el
[Manifiesto Ágil](http://www.agilemanifesto.org), el cual prioriza:
 
 * **Individuos e interacciones** sobre Procesos y herramienta.
 * **Software que funciona** sobre Documentación exhaustiva.
 * **Colaboración con el cliente** sobre negociación de contratos.
 * **Responder ante el cambio** sobre seguimiento de un plan.


### Principios Ágiles

Las metodologías ágiles se caracterizan por los siguientes principios básicos:

 * Nuestra principal prioridad es satisfacer al cliente a través de la entrega 
   temprana y continua de software de valor[^1].
 * Son bienvenidos los requisitos cambiantes, incluso si llegan tarde al 
   desarrollo. Los procesos ágiles se doblegan al cambio como ventaja 
   competitiva para el cliente.
 * Entregar con frecuencia software que funcione, en periodos de un par de 
   semanas hasta un par de meses, con preferencia en los periodos breves.
 * Las personas del negocio y los desarrolladores deben trabajar juntos de
   forma cotidiana a través del proyecto.
 * Construcción de proyectos en torno a individuos motivados, dándoles la
   oportunidad y el respaldo que necesitan y procurándoles confianza para que 
   realicen las tareas.
 * La forma más eficiente y efectiva de comunicar información de ida y vuelta 
   dentro de un equipo de desarrollo es mediante la conversación cara a cara.
 * El software que funciona es la principal medida del progreso.
 * Los procesos ágiles promueven el desarrollo sostenido. Los patrocinadores,
   desarrolladores y usuarios deben mantener un ritmo constante de forma 
   indefinida.
 * La atención continua a la excelencia técnica enaltece la agilidad.
 * La simplicidad como arte de maximizar la cantidad de trabajo que se hace, 
   es esencial.
 * Las mejores arquitecturas, requisitos y diseños emergen de equipos que se 
   auto-organizan.
 * En intervalos regulares, el equipo reflexiona sobre la forma de ser más 
   efectivo y ajusta su conducta en consecuencia.

[^1]: Es un software que no solo cumple con las expectativas del cliente, sino a demás mejora sustancialmente el negocio en el que se aplica, dando así no solo valor a la empresa si no que también valor de satisfacción y usabilidad.



### ¿Cuándo ser Ágil?

Las metodologías ágiles son por excelencia la mejor alternativa al desarrollo 
de software, siempre y cuando se cumplan los siguientes requerimientos[^2]:

 * Prioridad de negocios: sí es importante crear valor conviene ágil.
 * Estabilidad de Requisitos: Si son poco estables conviene ágil.
 * Rigidez del producto: si es muy grande no conviene ágil.
 * Costo del prototipo: si es muy grande no conviene ágil.
 * Criticidad del sistema: si es muy alta no conviene ágil (si por un problema 
   muere gente en el caso de, por ejemplo, desarrollar un sistema para una 
   planta nuclear.)
 * Tamaño del sistema: si es muy grande no conviene ágil.

Ágil es una buena alternativa pero no es la perfecta ni la mejor en todos los 
casos, **Recuerda siempre evaluar correctamente el tamaño, costo y riesgos de 
un proyecto antes de elegir la metodología de trabajo** ya que elegir mal puede
significar que el proyecto siempre estuvo condenado al fracaso.

[^2]: Cuando es mucho y cuando es poco depende completamente bajo que criterios se realiza la comparación, esto es absolutamente dependiente de cada proyecto por lo que no es posible acotarlo a una regla mundial.


### Contrato Ágil

Existen dos extremos para contratos ágiles:

 * Pago con tiempo fijo: Software llave en mano: Se estima tiempo y costo. El 
   Cliente tiene el poder, si existen problemas que atrasen el proyecto, los 
   gastos involucrados son responsabilidad de los desarrolladores.

 * Pago por hora: El poder es del desarrollador. Se paga por hora trabajada, 
   por lo que los problemas y cambios surgidos serán pagados de forma extra 
   por el Cliente hasta que el software esté terminado.

Lo ideal es llegar a un punto central entre estos dos extremos.























## Scrum
<hr class="divider">

### Breve Introducción

Scrum es un proceso ágil que nos permite centrarnos en ofrecer el más alto 
valor de negocio en el menor tiempo posible. Nos permite rápidamente, y en 
repetidas ocasiones, inspeccionar software real de trabajo (cada dos semanas o 
un mes).
El negocio fija las prioridades. Los equipos se auto-organizan a fin de 
determinar la mejor manera de entregar las funcionalidades de más alta 
prioridad. Cada dos semanas o un mes, cualquiera puede ver el software real 
funcionando y decidir si liberarlo o seguir mejorándolo en otro Sprint[^3].

Scrum se caracteriza por constar con equipos, los cuales cuentan con roles, 
artefactos y reuniones, de forma que estas tres partes interaccionan 
continuamente entre ellas.

La definición formal[^4] de Scrum es:

~~~
    Scrum (n): Un marco de trabajo por el cual las personas pueden acometer 
    problemas complejos adaptativos, a la vez que entregar productos del 
    máximo valor posible productiva y creativamente.
~~~

Scrum está basado en el conocimiento dado por la experiencia, por lo que todo
lo que plantea debe ser tomado como un método para ir aprendiendo mientras se 
ejecuta, siempre buscando ver que es lo que funciona y lo que no para sacar el 
máximo provecho.

Es importante que exista transparencia en el equipo, de forma que el 
conocimiento generado por uno sea aprovechado por todos, aumentando así la 
productividad del equipo y el conocimiento de este sobre el software 
desarrollado, permitiendo así que todos los miembros sean multi-disciplinados.

[^3]: Un Sprint es una iteración completa, desde ver requisitos hasta entregar el software funcional.
[^4]: http://www.scrumguides.org/scrum-guide.html#definition

Scrum ha sido usado por:

<div class="row">
    <div class="col-md-6">
        <ul>
            <li>Microsoft</li>
            <li>Yahoo</li>
            <li>Google</li>
            <li>Electronic Arts</li>
            <li>High Moon Studios</li>
            <li>Lockheed Martin</li>
            <li>Philips</li>
            <li>Siemens</li>
            <li>Nokia</li>
            <li>Capital One</li>
            <li>BBC</li>
            <li>Intuit</li>
        </ul>
    </div>
    <div class="col-md-6">
        <ul>
            <li>Nielsen Media</li>
            <li>First American Real Estate</li>
            <li>BMC Software</li>
            <li>Ipswitch</li>
            <li>John Deere</li>
            <li>Lexis Nexis</li>
            <li>Sabre</li>
            <li>Salesforce.com</li>
            <li>Time Warner</li>
            <li>Turner Broadcasting</li>
            <li>Oce</li>
        </ul>
    </div>
</div>

Y utilizado para:
<div class="row">
    <div class="col-md-6">
        <ol>
            <li>Software comercial</li>
            <li>Desarrollos internos</li>
            <li>Desarrollos bajo Contrato</li>
            <li>Proyectos Fixed-price</li>
            <li>Aplicaciones Financieras</li>
            <li>Aplicaciones certificadas ISO 9001</li>
            <li>Sistemas Embebidos</li>
            <li>Joint Strike Fighter</li>
            <li>Desarrollo de vídeo juegos</li>
        </ol>
    </div>
    <div class="col-md-6">
        <ol>
            <li>Sistemas críticos de soporte vital, aprobados por la FDA</li>
            <li>Software de control satelital</li>
            <li>Sitios Web</li>
            <li>Software para Handheld</li>
            <li>Teléfonos portátiles</li>
            <li>Aplicaciones de Network switching</li>
            <li>Aplicaciones de ISV</li>
        </ol>
    </div>
</div>

### Características Importantes

Dentro de las características más importantes se encuentran los siguientes 
puntos:

 * Es simple de usar y entender aunque es difícil de perfeccionar en la
   práctica.
 * Equipos auto-organizados.
 * El producto avanza con Sprints de dos semanas hasta uno o dos meses de 
   duración.
 * La duración constante conduce a un mejor ritmo.
 * Se intenta hacer todo de una cosa a la vez (requisitos, diseño, código y 
   test).
 * Antes de cada Sprint se hace una planificación estratégica para ver que se 
   realizará en cada Sprint.
 * Los requisitos son capturados como elementos en una lista llamada "Product 
   Backlog".
 * No hay prácticas de ingeniería prescritas.
 * El producto es diseñado, codificado y testeado durante el Sprint.
 * Se deben usar herramientas o prácticas para facilitar un entorno ágil de 
   trabajo.
 * La incertidumbre existe y debe aceptarse.
 * Las fases del desarrollo son solapadas.
 * Se realiza un control sutil.
 * Se debe difundir el conocimiento entre los miembros del equipo.
 * No hay cambios durante la ejecución de un Sprint.

Probablemente mucho de estos términos no te sean claros al comienzo, pero para 
eso está esta guía!

### ¿Cuándo usar Scrum?

Scrum es óptimo cuando los siguientes escenarios están presentes:

 * Hay una prioridad de negocios en la que es de suma importancia entregar un 
   software que cree valor para el cliente.
 * Hay poca estabilidad en los requerimientos y estos cambian frecuentemente.
 * El producto a generar no es muy rígido o grande.
 * El costo de generar prototipos no es elevado.
 * El sistema no es de criticidad elevada, es decir, cuando las posibles 
   fallas tienen un costo mínimo y recuperable.
 * No están bien definidos los alcances.
 * El producto va a ir apareciendo gradualmente a medida que avanza el 
   proyecto.
 * Los clientes aprenden más sobre lo que quieren a medida que avanza el 
   proyecto.
 * Las actividades no puede ser bien definidas.
 * La estimación (planificación) es difícil.
 * Los procesos son iterativos.
 * Cada ciclo depende mucho de los pasados.
 * El éxito está medido por la satisfacción del cliente.
 * Los resultados incrementales son útiles y pueden ser usados por los 
   clientes.


### Otras metodologías Ágiles

Existen variadas metodologías ágiles, cada una pensada para diferentes 
escenarios, por lo que a continuación podrás ver una imagen comparativa entre
las metodologías ágiles más usadas:

<p align="center">
    <%= image_tag('tutoriales/scrum/comparacion.jpg', :class => 'img-responsive img-thumbnail', :height => '100%', :width => '100%') %>
</p>







## El ciclo Scrum
<hr class="divider">

Esta es la vista general del ciclo completo de Scrum, probablemente te sea muy 
compleja de entender a primera vista, pero al entender cada una de las partes 
y como se relacionan entre ellas podrás ver que la naturaleza repetitiva de 
Scrum hace que esta sea una metodología bastante fácil de aprender.

<p align="center">
    <%= image_tag('tutoriales/scrum/ciclo_vida_scrum.png', :class => 'img-responsive img-thumbnail') %> 
</p>

<div class="row">
    <div class="col-md-6">
        <p>
            En resumen Scrum se compone de una lista de Requerimientos llamada 
            Product Backlog, de esta lista se selecciona un número acotado de 
            requerimientos, también llamados Historias de Usuario, este 
            listado de requerimientos conforma el Sprint Backlog, el cual se 
            usa durante un Sprint. Un Sprint es una iteración del ciclo, en 
            ella se realiza una serie de reuniones y se desarrolla el software 
            según los requerimientos seleccionados. Este proceso se repite 
            hasta que el cliente está satisfecho con el software creado, ya 
            que cada Sprint entrega un incremento de software.
            </br></br>
            Esto fue una descripción bien breve de lo que es el Ciclo Scrum, 
            por lo que desde este punto en adelante se revisará, explicará y 
            se recomendarán las mejores prácticas para cada aspecto de Scrum.
        </p>
    </div>
    <div class="col-md-6">
        <p align="center">
            <%= image_tag('tutoriales/scrum/scrum-iteration-detail.png', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %>
            </br><small>Fuente original de la imagen: <a href="http://scrumreferencecard.com/scrum-reference-card/">Scrum Reference Card</a></small>
        </p>
    </div>    
</div>


### El Sprint

El corazón de Scrum es el Sprint, es en este en donde se usan la mayoría de 
los artefactos y en donde ocurren la mayoría de las reuniones. Un proyecto 
siempre está dividido en varios Sprints.

Debe tener un tiempo fijo y que, idealmente, debe mantenerse igual para todos 
los demás Sprints. Se recomienda que dure entre 2 semanas y un mes según la
envergadura del proyecto.

Un nuevo Sprint debe empezar inmediatamente después que ha acabado uno, de 
esta forma no se pierde el ritmo de trabajo y se puede aplicar más 
efectivamente el desarrollo ágil de proyectos.

A grandes rasgos el Sprint consiste de un Sprint Planning, Reuniones diarias, 
trabajo de desarrollo, Sprint Review y Sprint Retrospective.

Durante el Sprint:
                         
 * No deben existir cambios que afecten o pongan en peligro el Objetivo del 
   Sprint.
 * La calidad de los objetivos no debe disminuir de un Sprint a otro.
 * El scope[^5] debe ser clarificado y re-negociado entre el Product Owner y 
   el equipo mientras se avanza en los Sprints y mientras más se aprende.
 * Cada Sprint tiene una definición de que es lo que se desea construir; un 
   plan flexible y bien diseñado que guiará a construirlo y el producto 
   resultante.

Sin embargo es importante tener en cuenta que durante el Sprint pueden haber 
reuniones aclaratorias respecto a las historias, el feedback entre el Team y 
el Product Owner es muy importante.

[^5]: Alcance del software, que tan grande es y cuantas funcionalidades tiene

### Producto final de un Sprint

Se compone de todo el software desarrollado en un Sprint que esté directamente 
vinculado con las historia terminada bajo el criterio de listo del equipo.
Aquellas características que no corresponden a una historia terminada no deben 
formar parte de este producto.

Este software debe ser compatible con el software realizado en Sprint 
anteriores de modo que este nuevo software representa un incremento en 
funcionalidades, cualidades y calidad.

El producto en su totalidad debe ser capaz de desplegarse en un ambiente de 
producción talque el Cliente pueda usarlo para su negocio, a menos que el 
Product Owner especifique lo contrario.

Además no hay que olvidar la documentación básica:

 * Manuales de Instalación
 * Manuales de Uso para Mantención
 * Manuales de Uso para Usuarios (de bajo y alto nivel)

### Cancelando un Sprint

Un Sprint puede ser cancelado antes de que acabe su tiempo. Solo el Product 
Owner tiene la autorización para cancelar un Sprint, aunque este lo haga bajo 
la influencia de stakeholders, el equipo de trabajo o el Scrum Master.

Un Sprint solo debe ser cancelado cuando: el objetivo del Sprint se vuelve 
obsoleto, la compañía cambio de directorio o si existe un cambio de tecnología 
importante. Nunca se debe cancelar un Sprint porque el tiempo dado es muy 
corto.

Todas las tareas o historias realizadas deben ser revisadas por el Product 
Owner, si tienen la capacidad de ser implementadas por si solas es posible 
hacerlo. Las que no y las que no se completaron deben ser re-estimadas y 
re-valoradas para volver a incluirlas en el Product Backlog.

Es muy extraño que esto ocurra, solo deséaselo a tus *peores enemigos*.






























## Roles
<hr class="divider">

En Scrum existen diversos roles, los cuales se pueden dividir en dos grandes 
grupos: los roles comprometidos y los roles involucrados.

Los **roles comprometidos** son aquellos realmente afectados en el proceso, 
fallar puede significar la muerte ya que son los que ponen la materia prima 
más importante, estos roles corresponden al Product Owner, Scrum Master y al 
Team.

Los **roles involucrados** son aquellos que apoyan el proyecto, pero que no 
pierden nada si el proyecto falla, estos roles corresponden los Usuarios, 
Stakeholders y gerentes de la empresa donde se implementará el software.


### Product Owner

Es la voz del cliente. Define las funcionalidades del producto y decide las 
fechas y el contenidos que cada Sprint debe tener. El Product Owner debe ser 
responsable de la rentabilidad del producto, de modo que prioriza 
funcionalidades y las ajusta en cada iteración.

Finalmente es quién acepta o rechaza el trabajo del Team al finalizar cada
Sprint y por tanto decide si el desarrollo continua o no.

Este miembro no es parte del Team(equipo de desarrolladores), sino que es 
aquel que conoce a la perfección el negocio donde el software será aplicado y 
quien dirá al Team que es lo que se necesita y cuáles son los requerimientos.

El Product Owner DEBE ser solo una persona y no un comité, en caso de existir 
un comité el Product Owner debe ser el representante de dicho comité.



### Scrum Master

Facilita Scrum asegurando y guiando el proceso. Representa la gestión del 
proyecto y es responsable de que los valores de Scrum se cumplan. Debe 
asegurar que el Team trabaja funcional y productivamente, además de incentivar 
la cooperación entre los diferentes roles. También debe tomar decisiones de forma empírica.

El Scrum Master es el escudo para interferencias externas, es decir, todo 
agente externo o perturbación externa pasas a través del Scrum master antes de 
llegar al Team, quiénes están enfocados en desarrollar el software. 

En teoría el Scrum Master no desarrolla ni hace test ni QA, pero en caso de 
ser necesario este puede ayudar, ya sea porque el Team es pequeño o porque 
es necesario incrementar la producción.

El Scrum Master ayuda al Product Owner en varia formas, incluidas:

 * Encontrando técnicas para manejar efectivamente el Product Backlog.
 * Ayudando al Team a entender las necesidades de forma clara para cada ítem 
   del Product Backlog.
 * Dando a entender como es el manejo de proyectos en ambientes empíricos
   (basados en la experiencia).
 * Asegurando que el Product Owner sabe cómo ordenar el Product Backlog para 
   maximizar el valor entregado.
 * A que el Product Owner entienda y practique la agilidad.
 * Facilitando las reuniones de Scrum cuando se solicite o se necesite.

El Scrum Master ayuda al Team en varias formas, incluidas:

 * Entrenando al Team para que sean auto-organizados y multi-funcionales.
 * Ayudando al Team a crear productos de alto nivel.
 * Removiendo impedimentos en el progreso del Team.
 * Facilitando las reuniones de Scrum cuando sean requeridas o necesarias.
 * Entrenando al Team en ambientes organizacionales en donde Scrum aún no ha 
   sido totalmente adaptado.

El Scrum Master ayuda a la Organización a la que se trabaja en varias formas, incluidas:

 * Guíando y entrenando la organización para que adopte Scrum
 * Planeando implementaciones en Scrum dentro de la organización,
 * Ayudando a los empleados y stakeholders a entender y promulgar Scrum y desarrollo  de productos empíricos.
 * Causando cambios que incrementan la productividad del Team Scrum
 * Trabajando con otros Scrum Master para incrementar la eficiencia de la 
   aplicación de Scrum en la organización.




### Team

Responsables de crear el producto. Típicamente el Team se conforma de 7+-2 
personas, donde cada uno de ellos es multi-funcional. El Team es auto-
organizados. 

Si llegasen a existir miembros con roles específicos estos no deben cambiar 
durante la ejecución de un Sprint. Lo ideal es que todos los miembros realicen 
todos los roles, ya sea Front-end, Back-end, testing, QA, diseñador, etc. Por 
lo general a todos los miembros del Team se les llama "desarrolladores", pero 
es importante saber que o cuáles roles un desarrollador a cumplido a lo largo 
de un Sprint, para así ver en cuales a participado menos y pueda enfocarse en 
esos también.

**No confundir los roles dentro del Team con los roles de Scrum**
                              


### Stakeholders

Aquellos que permiten que exista el proyecto, quienes ponen el dinero o desean 
que el software se complete. El Product Owner suele ser un Stakeholder más. Un 
Stakaholder en general es todo aquél que desea que el proyecto se termine y que
es beneficiado por esto.


### Gerentes

Administradores de la organización que solicita el producto. Los gerentes 
suelen solo preocuparse de la rentabilidad y muchas veces no tienen intereses
en el proyecto dado ya que solo ven la rentabilidad de la empresa.

Este rol no debiera interferir durante el desarrollo de un proyecto, pero es
quien puede cortar el suministro económico, incluso por razones externas al
proyecto.


### Usuarios

Corresponde a quienes usarán el software cuando este haya terminado de 
desarrollarse, los usuarios en su gran mayoría no tienen voz ni voto en
el desarrollo del software, sin embargo es un rol importante a considerar
ya que como son ellos quienes usarán la aplicación es bueno tener en cuenta
los costos asociados a entrenamiento.



### Relación entre Roles

 La interacción normal entre roles es:

Los Stakeholders, financiados por los Gerentes, le dicen al Product Owner que 
es lo que desean y sus intereses, luego el Product Owner se contacta con el 
Scrum Master para fijar una reunión en la que se habla con el Team completo 
para decidir qué es lo que se requiere para el siguiente Sprint.

Al final de cada Sprint se pueden usar usuarios para Testing en ambientes de 
producción o estos ya pueden ser usados cuando el proyecto ha sido finalizado.


















## Artefactos
<hr class="divider">

Los artefactos existen para representar transparencia a todo el Team, Scrum 
Master y Product Owner, de forma que el avance y estado actual del proyecto
sea transparente para todos.

### ¿Qué es la transparencia?

La transparencia es muy importante en Scrum, ya que asegura que todos los 
miembros entienden a la perfección que es lo que se está representando. Una 
buena transparencia asegura que lo que el equipo desarrolla es exactamente lo 
que el Product OWner desea. 

Que exista transparencia es completa responsabilidad del Scrum Master ya que 
el debe asegurarse que los temas sean discutidos y aclarados, así como también 
el Scrum Master debe estar regularmente repasando cada uno de los artefactos 
para verificar la transparencia de estos elementos.



### Historia de Usuario y Tasks

Una historia de usuario representa una necesidad o requerimiento del Product
Owner de forma transparente para todos.

La idea es que la historia de usuario esté escrita como un deseo de un usuario: 

~~~
    YO COMO "rol", QUIERO "necesidad", PARA "razón".
~~~

Una buena historia de usuario se crea a partir de un método llamado **INVEST**:

 * **I**ndependiente: Describe una funcionalidad completa, que no tiene una 
   dependencia inherente con otra historia.
 * **N**egociable: Puede ser modificada hasta que no está en proceso de 
   desarrollo, o incluida en un Sprint que se está ejecutando.
 * **V**aliosa: El producto tiene más valor para el cliente cuando la 
   funcionalidad está completada.
 * **E**stimable: Es posible estimar el tamaño de la historia. Esto se realiza 
   asignando Story Points a cada historia.
 * Pequeña (**S**hort en inglés): Tiene que poder estimarse con precisión 
   suficiente empleando técnicas ágiles, que se basan en juicio de expertos y 
   emplean unidades de medida relativas.
 * Comprobable (**T**estable en inglés): Debe incluir información para 
   determinar cuándo está terminada y cumple las expectativas del cliente, es 
   decir, cumple con un criterio de listo y con un criterio de aceptación.

Existen historias de usuario llamadas **transversales**, ya que debido a la 
características de estas, las historias transversales deben ser aplicadas a
todos los Sprint del proyecto. Estas no son ni estimadas ni valoradas. Un 
ejemplo de historia transversal es: "Aplicar heurísticas de Nielsen para 
aumentar la usabilidad."

También existen historias de usuarios llamadas **Epic**, la cual es una 
historia de usuario que por su gran tamaño el TEAM debe descomponer en 
historias más pequeñas y más precisas. Si existe un conjunto de Epics 
relacionados, estos se dicen que son parte de un "Tema", ya que apuntan a
una misma funcionalidad del sistema.

Cada historia se compone de un conjunto de **Tasks** (tareas), las cuales 
corresponden a todos los pasos que debieran llevarse a cabo para poder 
completar la historia satisfactoriamente. Las Task no se reparten ni se 
asignan entre los miembros del Team, sino más bien, cada miembro del Team 
elige que Task realizar. La idea es que las Tasks no duren más allá de una 
jornada de trabajo. 

Otro tipo de historia son las Tasks técnicas, estás representan tareas
independiente de cualquier historia y que existen para satisfacer necesidades
técnicas del Team, estás no deben ser discutidas con el Product Owner ya que
satisfacen necesidades especificas del Team durante el desarrollo, como por 
ejemplo: Conectar la Base de datos con el Framework.

En resumen, las Task:

 * Especifican como lograr la historia
 * Requiere un día o menos de trabajo
 * Es responsabilidad de todo el equipo
 * Un miembro debe ofrecerse a realizarla y nunca ser obligado a hacerlo.

### Product Backlog

El Product Backlog es una lista de todos los trabajos deseados en el proyecto, 
una lista de requerimientos. Cada ítem del Product Backlog es una historia del 
usuario.

El Product Backlog es manejado principalmente por el Product Owner, quién
prioriza las diferentes historias desde la más importante(la que está más
arriba) a la menos importante(la que está más abajo). Esta importancia debe
reflejar el valor de negocio de dicha historia, este valor también es asignado
por el Product Owner. Él puede actualizar el Product Backlog cuando lo desee y 
puede cambiar cualquier aspecto de él.

La vida del producto está unida a la vida del Product Backlog. El Product 
Backlog nunca debe completarse, ya que representa absolutamente todas las 
necesidades del Product Owner, como estas son ordenadas siempre se abarcaran 
las más importantes y con el avance del proyecto surgirán nuevos 
requerimientos, incluso en el último Sprint. Si el Product Backlog se ha 
completado solo se puede deber a que el Product Owner no ha dicho todas sus 
necesidades. 

Toda historia en el Produc Backlog debe tener un título, una descripción, un 
orden y un valor, al menos. Donde los primeros ítems son los más detallados 
ya que representan los más importantes. **Las historias a este nivel no deben tener Tasks.**

El Product Backlog es un **ente vivo**, siempre va a cambiar por lo que es un 
artefacto que el Scrum Master siempre debe tener presente.

El Product Backlog representa el valor total del proyecto y debe representar 
claramente este valor en conjunto con su asociado burndown o burnup, además 
debe ser posible ver el avance del valor entregado en cada Sprint.




### Sprint Backlog

<p align="center">
    <%= image_tag('tutoriales/scrum/Sprint-Backlog.png', :class => 'img-responsive img-thumbnail', :height => '50%', :width => '50%') %>
    </br><small>Fuente original de la imagen: <a href="http://scrumreferencecard.com/scrum-reference-card/">Scrum Reference Card</a></small>
</p>

El Sprint Backlog consiste de una serie de historias seleccionadas del Product 
Backlog, estás historias serán las que se realizarán durante el Sprint. **Ha 
este nivel todas las historias deben dividirse en diferentes Task**. Estas 
Tasks no son asignadas, cada individuo elige su Task. Para ver la estimación 
de trabajo se usa gráficos BurnDown. Estos deben actualizarse diariamente. 
También es posible añadir, modificar o borrar Tasks del Sprint Backlog siempre 
y cuando no se cambie el objetivo del Sprint ni de las historias.

Todas las historias del sprint backlog debe estar enfocadas a cumplir con el 
objetivo del Sprint. Sin embargo en este punto puede que el Team se dé cuenta
que harán falta trabajos extras y de carácter técnico para avanzar en el 
Sprint, como por ejemplo:

 * Configurar la Base de Datos y conectarla al Framework de Trabajo.
 * Establecer un ambiente de trabajo para todos los miembros del Team.
 * Aspectos relacionados a la Usabilidad de la aplicación.
 * Aspectos relacionados al diseño gráfico de la aplicación.
 * etc.

Estás se denominan Tasks técnicas y cumplen con las mismas características que 
las otras Tasks, con la única diferencia de que no son valoradas por el 
Product Owner ya que por si solas no entregan valor al cliente, sino más 
bien, estás Tasks son solo estimadas por el Team y son responsabilidad de 
ellos mismos. Además Estás Tasks son independientes de cualquier Historia.

El Sprint Backlog refleja el plan de trabajo del Team, representa que 
historias y Tasks se harán primero y es un buen artefacto a usar en reuniones 
diarias.

Es natural que las Tasks de cada historia vayan cambiando mientras se trabaja 
en el Sprint, así como también el hecho que se agreguen nuevas historias 
técnicas para cumplir con ciertos requerimientos. Las Tasks no son discutidas 
con el Product Owner y son de total responsabilidad del Team, por lo que no 
pueden ser una escusa para decir porque un Sprint no ha sido terminado.

Todo el trabajo avanzado, el nuevo trabajo y el trabajo eliminado del Sprint 
Backlog durante el Sprint, ya sean Tasks técnicas, task normales, nuevas 
estimaciones para historias, etc., debe estar claramente reflejado burndown 
relacionada.

El incremento entregado por un Sprint Backlog es representado por todas las 
Historias de Usuario completadas en el Sprint Backlog (las Tasks técnicas no 
cuentan), es decir, cada historia completada cumple con el criterio de listo y 
por tanto, por si solas, son capaces de ser desplegadas en un ambiente de 
producción.



### Métricas

En metodologías ágiles existen diversas métricas, algunas más útiles que otras 
dependiendo el tipo de proyecto y la naturaleza del equipo. Sin embargo las 
métricas a continuación representan algunas de las más generales y útiles 
para todo tipo de proyecto.


#### Burn-Up

Se hace a partir del Product Backlog, muestra el avance estimado para el 
proyecto completo y de todos los Sprints, no solo del Sprint actual.

Se hace respecto al valor de negocio total de cada Sprint, a modo de ver si el 
estimado y el actual son iguales.

Permite saber con qué velocidad se le está haciendo entrega al Product Owner
el valor del proyecto, lo ideal es que al final del último Sprint se entregue
el total del valor estimado.

Este gráfico debe llevar fechas y etiquetas para identificar cada Sprint, 
también debe tener una línea del valor esperado, del peor caso y del mejor 
caso (con un desvió del 10%).

Este gráfico debe ser actualizado al finalizar cada Sprint.



#### Burn-Down

Se debe re-estimar diariamente.

Da visibilidad sobre si llegaremos a la fecha de entrega en el tiempo dado. 
Muestra la habilidad de los equipos para entregar funcionalidades (terminar 
historias y/o tareas).

**Representan lo que falta para terminar, no lo que se lleva terminado.**

Si bien permiten tener un poco de proyección del futuro se recomienda 
totalmente tomar decisiones respecto eventos pasados y en como la burndown a
cambiado y nunca basarse en proyecciones como "debiera cambiar así".

Las burndown pueden ser:

 * Product Burndown: Es del proyecto completo y todas sus tareas conocidas 
   hasta el momento. Se actualiza después de cada sprint. Está basada en el 
   Product Backlog.
 * Sprint Burndown: Es del sprint, cada sprint tiene una diferente. Se 
   actualiza diariamente. Está basada en el Sprint Backlog.

Además, el Sprint Burndown puede hacerse de dos maneras diferentes:

 * **Respecto a las Task**: Se grafican los Story Points restantes respecto a 
   las Task realizadas. Cada vez que una Task ha sido terminada se restan los 
   Story Points de aquella Task en el gráfico. Lo ideal es llegar a 0 el día 
   final del Sprint.
     - Ventaja: Muestra el avance de cada Task y que tan rápido están 
       siendo resultas las tareas de cada historia. 
     - Desventaja: No permite saber si se han terminado historias por lo 
       que no garantiza que se haya entregado valor real al cliente.
     - Útil para: El equipo, no tiene valor para gente fuera del grupo de 
       trabajo.
 * **Respecto a las Historias**: Se grafican los Story Points restantes 
   respecto a las historias realizadas. Cada vez que una historias ha sido 
   terminada se restan los Story Points de aquella historias en el gráfico. Lo 
   ideal es llegar a 0 el día final del Sprint.
     - Ventaja: Muestra el avance por historia, por lo que permite saber si
       se está entregando valor real al cliente y en qué velocidad y magnitud.
     - Desventaja: No permite saber si el proyecto va avanzando ya que no 
       se sabe cuándo se terminan las Task, por lo que si este gráfico no 
       avanza no significa realmente que el proyecto no avance.
     - Útil para: El equipo y gente externa al grupo de trabajo.

**Se recomienda** que al finalizar un Sprint se realice una nueva burndown, 
para ello se deben re-estimar todas las historias, pero como está vez todo el 
Team ya sabe que tan compleja **fueron** entonces serán capaces de dar Story 
Points reales, lo que permitirá tener una burndown con la capacidad real del 
equipo, esto permite también estimar la velocidad real del equipo.

#### Entendiendo las Burndown

Durante el desarrollo de cada Sprint las burndown irán cambiando de una u otra 
forma, por lo que es muy importante poder identificar cuando estos cambios 
realmente significan que el Team va bien o que todo va mal. Para poder leer 
apropiadamente las burndown se deben reconocer primero los casos generales[^6]
[^7] [^8] y desde allí comenzar a entender que quiere decir tu propia burndown:

[^6]: http://www.scrumdesk.com/is-it-your-burn-down-chart/
[^7]: https://www.scrumalliance.org/community/articles/2013/august/burn-down-chart-%E2%80%93-an-effective-planning-and-tracki
[^8]: http://www.methodsandtools.com/archive/scrumburndown.php

* **El Team ideal**

<p align="center">
    <%= image_tag('tutoriales/scrum/teamIdeal.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Cuando veas un Burndown como esta se debe felicitar al Team, es un reflejo 
de un gran trabajo, de que no se sobrecargan de trabajo, no van ni tarde ni 
adelantados, entregan el producto a tiempo y son totalmente auto-organizados. 
Una Burndown así solo se presenta en Team con vasta experiencia.

Esto también refleja que el Product Owner es experimentado ya que las historias
han de estar en perfecto estado para poder trabajar de esta forma. También 
refleja un gran Scrum Master ya que el Team ha trabajado sin impedimentos. 

Para que la Burndown sea así el Team sabe estimar correctamente la complejidad 
de cada historia.

**¿Qué mejorar?** ¡Nada, sigan así!

* **Un gran Team**

<p align="center">
    <%= image_tag('tutoriales/scrum/granTeam.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Esta es la Burndown típica que se suele ver en Team con experiencia, esto 
refleja que el Team está comprometido con el objetivo del Sprint, se adaptan 
correctamente a los cambios del scope, son capaces de mejorar la velocidad 
para lograr el objetivo, es un Team que continuamente se pregunta como 
lograr llegar a la fecha de entrega.

**¿Qué mejorar?** El Team debe cuestionarse en el Sprint Retrospetive 
Meeting que es lo que los está haciendo tener un mal comienzo en el Sprint y 
mejorarlo, también deben cuestionarse sobre la carga de historias y la 
precisión de las estimaciones hechas.

* **Un buen Team**

<p align="center">
    <%= image_tag('tutoriales/scrum/buenTeam.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Esta es la típica Burndown de Team con cierta experiencia en Scrum, el team 
está comprometido con el objetivo del Sprint, se han logrado adaptar al cambio 
de scope, el Team aumenta su velocidad para llegar al objetivo, es un Team 
que continuamente se pregunta cómo lograr llegar a la fecha de entrega.

**¿Qué mejorar?** El Team debe cuestionarse en el Sprint Retrospetive 
Meeting porque el Team no puede avanzar a la velocidad estimada, se puede 
deber a mala estimación de historias, mal uso de herramientas o métodos de 
Scrum mal empleados o que no funcionan con este Team. Quizás se deban mover 
algunas historias para el siguiente Sprint.

* **Muy Tarde**

<p align="center">
    <%= image_tag('tutoriales/scrum/tarde.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Esta Burndown nos dice que no lograron entregar todo el trabajo prometido y 
que estuvieron atrasados todo el tiempo. El Team no es capaz de adaptarse al 
scope del Sprint.

**¿Qué mejorar?** Revisa el tamaño de las historias incluida en el Sprint 
Backlog, quizás las historias son muy grandes y se pueden dividir, conviene 
dejar historias con menos prioridad para otros Sprints, enfóquense en dar 
valor al cliente con pocas historias. Se deben tomar menos historias en el 
siguiente Sprint.

* **Muy temprano**

<p align="center">
    <%= image_tag('tutoriales/scrum/temprano.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Está Burndown nos dice que el trabajo fue terminado antes de lo estimado, esto 
no es exactamente bueno ni un reflejo de un buen Team Scrum, en esta 
situación se entiende que el Team sobre-estimo las historias, no hay mucho 
compromiso de parte del Team, se ha calculado mal la capacidad del Sprint, 
algunos miembros del Team no trabajaron y que no se ha suplantado la 
necesidad de trabajo con historias del Product Backlog.

**¿Qué mejorar?** Estimación de las historias o en su defecto el Scrum Master 
debe ser muy proactivo para así asignar nuevas historias al Sprint Backlog.

* **Tomándose un descanso**

<p align="center">
    <%= image_tag('tutoriales/scrum/descanso.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Esta Burndown demuestra que el Team se está tomando un descanso ya que el 
Team está terminando historias antes de lo esperado, por lo que podría hacer 
más o quizás no hay suficientes ítems en el Sprint Backlog o el Product Owner 
no ha sabido explicar sus requerimientos. Es posible que el team tenga muchos 
miembros o que las historias estén sobre-estimadas.

**¿Qué mejorar?** Incluye más historias al Sprint Backlog. Esto debe ser 
hablado con el Product Backlog, aumentando así la carga de trabajo de cada 
Sprint.

* **La línea recta**

<p align="center">
    <%= image_tag('tutoriales/scrum/recta.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Esta Burndown no nos permite saber si el trabajo ha sido hecho apropiadamente 
o no y si es que el Team sabía si iban a terminar el Sprint a tiempo o no.

Quizás el equipo está trabajando bien, pero alguien está agregando trabajo con 
una complejidad igual al trabajo terminado. También puede ser que el Team no 
actualiza la Burndown cuando corresponde o las historias fueron sobre-
estimadas. Puede que el Product Owner no se preocupe realmente de las 
metodologías ágiles o no entienda su rol.

**¿Qué mejorar?** Tanto el Team como el Scrum Master necesitan más 
entrenamiento con Scrum a nivel teórico. Si el caso es que se está añadiendo 
trabajo en la misma magnitud que se termina es responsabilidad del Scrum Master
evitar este fenómeno y organizar el proyecto.

Si se ve que este fenómeno de la línea recta ocurre durante tres días el Scrum 
Master debe tomar las riendas y hacer una reunión con el equipo para detectar 
el problema.

* **Cumple con tus obligaciones**

<p align="center">
    <%= image_tag('tutoriales/scrum/obligaciones.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

En esta Burdown se puede ver como el equipo no es para nada funcional ni auto-
organizado. El Team no es capaz de llegar a la meta ni cumplir con historias. 
El Scrum Master no es capaz de ayudar al Team para que realicen su trabajo ni 
incentivarlos a ello. El Product Owner tampoco debe estar preocupado del 
desarrollo del software para hacer notar la falta de trabajo.

**¿Qué mejorar?** En esta situación el equipo debe comenzar de 0, estudiando 
Scrum y reforzando la metodología. Se recomienda hacer una retrospectiva para 
encontrar el problema principal de este fenómeno.

* **Cero esfuerzo**

<p align="center">
    <%= image_tag('tutoriales/scrum/cero.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Claramente no hay historias estimadas o es posible que no existan historias en 
el Sprint Backlog, esto se puede deber a que el Sprint no ha comenzado 
oficialmente aun.

**¿Qué mejorar?** El Team debe estimar las historias, conformar el Sprint 
Backlog, estimar la velocidad y capacidad del Team y comenzar el Sprint!

* **Vuela alto Burndown**

<p align="center">
    <%= image_tag('tutoriales/scrum/arriba.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Esto suele ocurrir en el primer Sprint de tu vida, si es así es totalmente 
aceptable :)

Aquí se puede ver que continuamente se agregan nuevas historias al Sprint 
Backlog, se añade más trabajo del que es completado, puede que alguien esté re-
estimando constantemente las historias durante el Sprint. Es probable que el 
Team no sepa cuál es el problema que existe al ver este Burndown, el Scrum 
Master es crucial en estos casos.

**¿Qué mejorar?** El Sprint Backlog debe ser re-estimado una única vez, de 
forma que en este caso todo el Team debe hacerlo para dejar un valor que deje 
a todos conformes. Se debe pedir consulta a Scrum Master experimentados para 
poder arreglar la situación en caso de que el Team no cuente con uno.

* **Lomo de Toro**

<p align="center">
    <%= image_tag('tutoriales/scrum/toro.jpg', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
</p>

Claramente las historias no han sido estimadas antes de comenzar el Sprint, 
además a la mitad del Sprint se han agregado historias nuevas, sin embargo 
demuestra que el Team se dio cuenta del error y logro llegar a la meta, aunque 
probablemente no ha entregado un valor importante al cliente ni ha cumplido el 
objetivo del Sprint.

**¿Qué mejorar?** Lo mejor es reiniciar el ciclo Scrum desde el Sprint 
Planning Meeting, este nuevo Sprint puede durar meno si es necesario ya que 
esto entregará mucho más valor que antes.

#### Calidad:

   Es importante demostrar de alguna forma cuantitativa la calidad del 
   software entregado en cada Sprint, así como también medir la calidad de 
   valor entregado al cliente.

   Para esto no existe un modo específico por lo que se pueden usar 
   herramientas o métricas ya establecidas así como métricas nuevas inventadas
   por el equipo de trabajo.

 * Auto-capacitación: Es importante que lo que aprenda un miembro del equipo 
   lo sepan todos. Esto puede realizarse mediante reuniones, peer programming, 
   creación de foros o blogs.

 * Diseño Ágil con TDD: El diseño no debe dejarse de lado en metodologías 
   ágiles. Una de las mejores formas de afrontar esto es aplicando TDD. Revisa 
   la sección de material extra para bajar un excelente libro en TDD.

 * SonarQube es una herramienta que permite medir la calidad del código fuente
   de una aplicación, el nivel de las pruebas unitarias y fallas en las buenas 
   practicas.

 * Pruebas unitarias, pruebas de integración y pruebas de regresión son de 
   suma importancia en la calidad del software.


#### Seguridad   

Uno de los aspectos que son poco revisados es la seguridad del software.
Aquí se deben revisar los aspectos más importantes y de preferencia se 
recomienda utilizar algún estándar existente.

Por ejemplo, si la aplicación es web se recomienda usar OWASP.



















## Reuniones

<div>
    <div class="col-md-6">
        <p>
            La razón de estas reuniones es para evitar tener otras reuniones 
            innecesarias que quiten tiempo de desarrollo al Team, todas estas 
            reuniones son en ventanas de tiempo fijas y ayudan a mantener la 
            transparencia del proyecto. 
            </br></br>
            El orden de las reuniones es:
             <ol>
                 <li>Sprint Planning Meeting: Al comenzar el Sprint.</li>
                 <li>Daily Scrum: diariamente durante el Sprint.</li>
                 <li>Sprint Review Meeting: Al finalizar el Sprint.</li>
                 <li>Sprint Retrospective: Antes de comenzar el siguiente Sprint.</li>
             </ol>

            Adicionalmente existe la Backlog Refinement Meeting, la cual puede 
            ocurrir en cualquier momento, aunque es altamente recomendable que 
            por lo menos ocurra una vez antes del Sprint Planning Meeting.
        </p>
    </div>
    <div class="col-md-6">
        <p align="center">
            <%= image_tag('tutoriales/scrum/scrum-flow.png', :class => 'img-responsive img-thumbnail', :height => '50%', :weight => '50%') %> 
            </br><small>Fuente original de la imagen: <a href="http://scrumreferencecard.com/scrum-reference-card/">Scrum Reference Card</a></small>
        </p>
    </div>
</div>

### Backlog Refinement Meeting

Esta reunión debe durar 2 horas en un Sprint de dos semanas y hasta 8 horas en 
un Sprint de un mes.

En esta reunión se capturan las necesidades actuales del Product Owner en una 
lista llamada Product Backlog, estás no necesariamente son escritas 
formalmente, pero hacerlo así agiliza la planificación. Una vez que se ha 
capturado el mayor número de requisitos posibles se le solicita al Product 
Owner que valore sus historias según cuanto valor de negocio estas le 
entregan, para realizar la evaluación se le dan $10.000 pesos (no de verdad, 
solo como valor a repartir) los cuáles debe repartir entre todas las historias 
o requerimientos capturados, el valor asignado representa la magnitud de 
importancia, es decir, aquella con mayor valor es la más importante, si una 
historia vale la mitad de otra es porque es la mitad de importante, etc.

Con esto el Product Owner ha dado a conocer que es lo más importante para él, 
sin embargo en este proceso se debe guiar al Product Owner, preguntándole 
porque él piensa que una historia es más importante que otra y mostrándole 
otras alternativas hasta que tanto el Product Owner y el Team esté satisfecho 
en el orden dado. Para esto, tanto el Team como el Scrum Master deben ser los 
guías.

Dos historias o requisitos no pueden tener el mismo valor ni la misma 
prioridad, si esto sucede se debe guiar al Product Owner a que piense cual de 
las dos realmente es más importante y entrega más valor, si es imposible 
separarlas ya que existe dependencia entre ellas, entonces ambas han de 
conformar una única historia.

No importa si quedan historias sin valorar al terminar la reunión ya que se ha 
demostrado que el 20% de las historias más importantes suele entregar un 80% 
de valor de negocio al cliente.

Aquí también se pueden discutir riesgos, costes, fechas, etc. Es una reunión a 
alto nivel.

En caso de que ya exista un Product Backlog establecido en esta reunión se 
pueden añadir detalles, estimaciones y nuevo orden a las historias. El foco 
debe estar en las historias que están más arriba en la lista de prioridad, de 
modo que las historias más importantes sean lo más transparente posible.

Tanto en esta reunión como en el Sprint Planning el Team debe aprender a 
decirle "NO" al Product Owner, muchas veces sueña muy grande y es 
responsabilidad del Team y el Scrum Master el saber cuándo decir que no a 
ciertos requerimientos.



### Sprint Planning Meeting

Esta reunión debe durar 2 horas en un Sprint de dos semanas y hasta 8 horas en 
un Sprint de un mes.

Se seleccionan historias a partir del Product Backlog, los cuales intentarán 
cumplirse en el Sprint. Debe participar el Product Owner, Scrum Master y el 
Team, además es importante establecer el objetivo del Sprint.

Es responsabilidad del Scrum Master que esta reunión se realice y que se 
cumplan los tiempos.

Se intentan responder al menos estas dos preguntas:

 * ¿Qué podemos hacer para aumentar el Incremento en el siguiente Sprint?

    * El Team discute las funcionalidades que serán implementadas en el Sprint.
    * El Product Owner discute el objetivo que debe tener este Sprint y que 
      ítems del Product Backlog ayudarán a cumplir este objetivo.
    * Todos comparten lo que piensan al respecto para que las razones y 
      objetivos sean claros para todos.
    * Solo el Team puede decir que son capaces de cumplir 
      durante un Sprint.

 * ¿Cómo se logrará realizar el trabajo para entregar este Incremento?

    * Una vez seleccionadas las historias de usuarios y armado el Sprint 
      backlog el Team discute como van a lograr que estas historias cumplan 
      con el criterio de listo. Si este criterio no existe debe ser fijado 
      ahora.
    * Se recomienda que en esta reunión se deje fijo el trabajo a realizar en 
      los siguientes dos días y que el Team se auto-organice para repartir 
      algunas tareas.
    * El Product Owner puede y debe ayudar a clarificar cada historia de 
      usuario seleccionada.
    * El Team determina si es mucho o poco trabajo y por tanto puede re-
      negociar historias de usuario.
    * También el Team puede invitar a otras personas para poder dar consejos 
      técnicos o en dominios particulares.

Con las historias seleccionadas se crea el Sprint Backlog.

El Sprint Planning Meeting parte con un repaso al Product Backlog resultante 
del Backlog Refinement Meeting, a este punto todas los requerimientos del 
Product Owner han sido escritos apropiadamente como historia. Esto debe ser 
repasado con el Product Owner para comprobar que no se ha perdido la intención 
de ninguna historia, luego se le pide al Product Owner que re-ordene y re-
valore las historias de ser necesario. Es posible que en este punto el Product 
Owner tenga nuevos requisitos, los cuáles deben ser implementados en el 
Product Backlog, re-valorados y re-ordenados.

Luego los miembros del Team y el Scrum Master comienzan a evaluar las 
historias en Story Points, en particular se recomienda usar el método Scrum 
Poker[^9]. Este proceso consiste en estimar la complejidad de una historia del 
Sprint Backlog, cada miembro del Team y el Scrum Master elige un número de la 
escala de Fibonacci modificado[^10] en silencio y de forma privada (nadie debe 
saber el número del otro), una vez que todos tienen claro su número se procede 
a que todos revelen su número al mismo tiempo, esto es muy importante, una vez 
que todos revelan sus números aquellos que dieron el menor y mayor valor deben 
opinar porqué piensan que ese valor es el indicado, en esta discusión puede 
intervenir todo el Team, y el Product Owner, luego de llegar a un acuerdo el 
Scrum Master asigna un valor a la historia y se procede con la siguiente. En 
este proceso el Product Owner solo participa en la discusión de los temas pero 
nunca interviene en los Story Points.

[^9]: http://www.planningpoker.com/
[^10]: Para Scrum Poker se pueden usar otras escalas, el usar la de Fibonacci modificada es una recomendación personal.

El valor dado representa la complejidad de dicha historia, mientras más alto 
más difícil será de hacer y más tiempo tomará. Si una historia es 
increíblemente compleja se debe repasar las razones de porqué es así, ya que
historias con una estimación muy alta implican un riesgo para el proyecto. 
Algunos métodos para abarcar historias con Story Points muy altos son:

 * Dividir la historia en partes, ya que seguramente se trata de un Epic.
 * Re-negociar el scope de la historia con el Product Owner.
 * Re-plantear la necesidad de dicha historia.
 * Abarcar historias que creen demos o diseños de dicha historia.

Es bueno dar un número estimado de cuál es la capacidad máxima de Story Points 
que se pueden abarcar durante un solo Sprint, probablemente durante el primer 
Sprint este número será muy inexacto, pero mientras se avanza se podrá llegar 
a un valor más estable, de modo que en cada Sprint se pueda ofrecer un poco 
más que la vez anterior.

Una vez que se han valorizado y evaluado todas las historias se procede a 
elegir cuales formaran parte del Sprint Backlog a realizar en este Sprint. 
Esta selección se lleva en conjunto con el Product Owner para que todos estén 
de acuerdo a lo elegido. El objetivo principal es maximizar el valor entregado 
al cliente.

Adicionalmente es posible tener una lista de historias llamada **NICE TO HAVE**
, las cuáles son historias que el Product Owner quisiera terminar durante este 
Sprint, pero que solo serán tomadas en cuenta si el Team termina antes el 
Sprint Backlog, lo que le da tiempo para avanzar en estas historias, las 
cuales no deben ser terminadas necesariamente.

Al final de esta reunión el Team debe ser capaz de explicar al Product Owner y 
al Scrum Master como va a trabajar durante el Sprint para lograr el objetivo 
del Sprint. Luego de llegar a un acuerdo se da por finalizada la reunión y se 
comienza el Sprint.

Es importante que luego, sin el Product Owner presente, el Team se reúna, ya 
que las historias deben ser subdivididas en Tasks. Esto es un aspecto técnico 
qué no debe afectar al Product Owner ya que son propias del Team. Es posible 
valorar con Story Points cada tarea si se desea. Es probable que durante la 
ejecución de alguna tarea se den cuenta de que existen nuevas, estas pueden 
ser implementadas sin problema, siempre y cuando no afecten las historias ni 
agregue historias nuevas ya que esto no debe cambiar durante la ejecución del 
Sprint.

#### Objetivo del Sprint

Un Objetivo del Sprint es asignado a cada Sprint, el cuál debe cumplirse 
completando las historias de usuario del Sprint Backlog. Tener un objetivo le 
permite al Team tener claro las razones por lo que están haciendo estas 
historias. También le da flexibilidad al Team ya que pueden tomar decisiones 
basadas en este objetivo para aumentar el valor entregado.

Permite que el Team trabaje en una meta unificada. El Team trabaja con este 
objetivo en mente, ayudando así a priorizar tareas e historias durante el 
Sprint.


#### Recomendaciones I

**1.- Revisar resultados pasados y artefactos**

Es muy importante que el Scrum Master, al menos, tenga perfectamente claro el 
estado actual del software al momento de comenzar esta reunión, para ello se 
recomienda que previamente revise profundamente el estado de todos los 
artefactos y las métricas pasadas, que vea el historial de trabajo, la 
velocidad y lo que se podría a llegar a esperar del Team para este Sprint, de 
esta forma el Team estará más preparado y dispuesto a ir hacia un horizonte un 
poco más estable en vez de enfrentar un nuevo Sprint como algo totalmente 
desconocido.

**2.- Partir por el Objetivo del Sprint**

Lo primero a discutir durante el Sprint Planning es el objetivo del Sprint, de 
modo que toda la reunión se enfoque en cumplir este objetivo. En la reunión 
deben participar todos: Product Owner, Scrum Master y Team.

**3.- Guiar al Product Owner**

Al comenzar el Scrum Master debe presentar cuales son los ítems más 
importantes del Product Backlog y luego el Product Owner debe actualizar al 
Team sobre las nuevas condiciones del negocio, que ha cambiado, que es nuevo y 
que ha dejado de ser importante.

Idealmente el Product Owner debe ser quién, después de poner todos al día con 
el estado del negocio, comienza la discusión sobre la planificación del
Sprint, el Product Owner debiera comenzar por ver la velocidad del Team para 
tener una idea de cuantas historias el Team es capaz de abarcar en el
siguiente Sprint. El Product Owner también debiera considerar:

 * Días feriados, vacaciones del personal, eventos del Team y/u organización.
 * Prioridad de las historias en el Product Backlog.
 * Como y cuando esa historia ayudará a terminar el producto.

En caso de que sea el primer Sprint y no exista velocidad aún, todo el Team 
debe participar en estimar cuanto trabajo serán capaces de realizar. Es 
responsabilidad del Scrum Master guiar tanto al Team como al Product Owner 
para que cumplan con sus roles en esta reunión.

**4.- Revisar el último Sprint Review**

En caso de que en el Sprint Review anterior se hayan encontrado varios bugs (
incidencias), es en esta reunión en el que se deben discutir cuál de esos bugs 
(los cuáles debieran estar anotados en el Product Backlog), pasarán al Sprint 
Backlog para ser reparado durante el Sprint.

**5.- Armar el Sprint Backlog una historia a la vez**

Una vez establecido el alcance máximo del Team para este Sprint se comienza a 
repasar historia a historia para ver cuales formaran parte del Sprint Backlog. 
Las preguntas que ayudan a guiar este proceso son:

 * ¿Ha cambiado la definición de esta historia desde la última vez? ¿Hay nueva
   información sobre el contexto de esta que el Team necesita considerar?
 * ¿Es válida la estimación actual de la historia? ¿Todo el Team está 
   de acuerdo con este valor? Si no, el Scrum Master debe guiar el proceso 
   para volver a estimar.
 * ¿Qué tareas se deberán hacer para completar esta historia? Si al momento de 
   pensar en las tareas de la historia surgen nuevas historias estas se deben 
   discutir para ser implementadas en el Product Backlog.
 * ¿Cuáles son las implicaciones en Testing que tiene esta historia? ¿Se puede 
   automatizar el testing?
 * ¿Se necesita habilidades o conocimientos técnicos específicos para realizar 
   esta historia? De ser así, ¿Cómo optimizar el tiempo del especialista que 
   realizara esta historia?
 * ¿Como afecta a la arquitectura del producto esta historia? ¿Hay gente 
   especifica del Team que deberá involucrarse en el diseño y revisión del 
   código?
 * ¿Existen dependencia entre historias? ¿Se puede completar todo el trabajo 
   durante este Sprint considerando estas dependencias?

El Scrum Master guía esta discusión, pero todos participan. Es importante 
entrar en detalle al momento de hablar de cada historia y que estas sean 
transparente de modo que una vez empezado el Sprint el Team pueda trabajar de 
forma independiente y auto-organizada.

**6.- Asignar el trabajo de los primeros días**

Una vez asignadas todas las historias necesarias en el Sprint Backlog, y si el 
tiempo lo permite, es bueno que en esta reunión cada miembro del Team
se asigne una tarea para comenzar el trabajo. Una vez terminado esto es bueno 
repasar y leer en voz alta el Sprint Backlog antes de dar por terminada 
la sesión.
        
**7.- No confundir con Sprint Retrospective Meeting**

Es importante que esta reunión sea independiente y no ocurra al mismo tiempo 
que el Sprint Retrospective.




### Daily Scrum Meeting

Es una de las reuniones más importantes de Scrum, estas duran 15 minutos y son 
de a pie. Todo el mundo está invitado, pero solo el Team, Scrum Master y 
Product Owner pueden hablar.

Se pregunta:

 * ¿Qué hiciste ayer?
 * ¿Qué vas a hacer hoy? 
 * ¿Hay obstáculos en tu camino?

Se busca hacer compromisos. Para el día siguiente. Debe ser precisa y compacta.

Se repasa si los compromisos hechos en la reunión diaria anterior se 
cumplieron. Debe ser todos los días a la misma hora para reducir complejidad y 
estrés en la reunión. Se recomienda sin embargo que estas sean temprano o al 
comienzo de una jornada de trabajo, de esta forma el Team estará informado de 
lo que ocurrió ayer y lo que ocurrirá hoy.

El Scrum Master debe asegurarse que esto ocurre todos los días y que se cumplan 
con precisión los 15 minutos, sin embargo el Scrum Master debe dejar al equipo 
guiar la reunión.

El Scrum Master debe asegurarse de que todos los miembros del equipo 
participan, para ello se suele usar algún objeto pesado o una pelota, la cual 
se entrega al miembro que hablará, una vez terminado de hablar se pasa al 
siguiente.

Estas reuniones diarias:

 * mejoran la comunicación.
 * Elimina la necesidad de otras reuniones.
 * Identifica impedimentos para poder removerlos.
 * resalta y promueve el proceso de tomar decisiones rápidas.
 * mejora el nivel de conocimiento del equipo de desarrollo.
 * Aumenta la probabilidad de que el equipo alcance el objetivo del sprint.
 * Mantiene a todo el equipo actualizado en el trabajo del equipo.
 * Ayuda a repartir bien las tareas para que todos trabajen de forma 
   auto-organizada.

Lo que se suele explicar en esta reunión es:

 * ¿En qué ayudé ayer para alcanzar el objetivo del sprint?
 * ¿En qué ayudaré hoy?
 * ¿Veo algún impedimento en mi trabajo o en el de otros?

Se aconseja tener una lista de los impedimentos encontrados durante estas 
reuniones.

Finalmente, sabrán que están haciendo una buena Daily Scrum Meeting cuando los 
miembros hablan mirando a todos y no directamente al Scrum Master como si le 
estuvieran rindiendo cuentas a él.

También es importante discutir la eficiencia de estas reuniones en cada Sprint 
Retrospective.




### Sprint Review Meeting

Esta reunión debe durar 2 horas en un Sprint de dos semanas y hasta 4 horas en 
un Sprint de un mes.

Se presenta lo realizado en el Sprint, a modo de demo o arquitectura. Es 
informal (sin ppt o archivos formales). Todo el mundo participa y se puede 
invitar a gente externa.

Se debe pasar un checklist para comprobar el trabajo hecho y el trabajo 
faltante. También se deben anotar todos los Bugs encontrados y todos los 
comentarios del Product Owner, ya que este podría querer algunos cambios en el 
trabajo realizado o podrían ocurrirse cosas nuevas, todo esto debe ser anotado 
en el Product Backlog para luego ser discutido en el siguiente Backlog 
Refinement Meeting.

Cada error, bug o incidencia encontrada durante el review se considera un 
Escaped Defects[^11], los cuales además pueden ser considerados menores, 
regulares, importantes u bloqueantes[^12].

[^11]: http://www.agilebok.org/index.php?title=Escaped_Defects
[^12]: Un Escaped Defect bloqueante implica que debido a él el programa no puede seguir su funcionamiento regular, en caso de encontrarse con este tipo de bugs se debe indicar al Product Owner algún "Work Around", o forma alternativa de realizar el trabajo afectado. Si el Work Around no existe entonces este Escaped Defect debe ser una historia con alta prioridad para ser reparada en el siguiente Sprint.

Esta reunión se realiza en el momento de haber terminado el desarrollo del 
Sprint y antes del Sprint Retrospective Meeting.

El Scrum Master debe asegurarse que se lleva a cabo y de que se cumplen los 
tiempos.

Elementos importantes:

 * Debe estar presente el Team, el Scrum Master, el Product Owner y cualquier 
   stakeholder invitado por el Product Owner.
 * El Product Owner verifica que ítems del Product Backlog han sido 
   terminados y cuáles no.
 * El Team discute que cosas salieron bien en el Sprint, que problemas 
   hubieron y como se resolvieron. Esto respecto a las historias, enfocándose 
   más en el negocio que en los aspectos técnicos.
 * El Team muestra el trabajo hecho y responde preguntas sobre el incremento 
   realizado en comparación con lo que ya existía(Sprint anterior).
 * El Product Owner discute el estado actual del Product Backlog.
 * Se discute a muy alto nivel que se hará en el siguiente Sprint, de modo que 
   en el Sprint Planning y en el Backlog Refinement ya existan puntos para 
   discutir y negociar.
 * Como ha mejorado y que ha cambiado del producto, así como también que es lo 
   más valioso(a nivel de negocio) que se podría hacer después.
 * Repaso del tiempo, presupuesto, capacidades, viabilidad, rentabilidad, etc. 
   para poder realizar el siguiente sprint.

#### Recomendaciones II

**1.- Criterio de Listo y aceptación transparente**

Es totalmente importante que cada miembro del Team tenga perfectamente claro 
cuál es el criterio de listo y aceptación del proyecto, de esta forma se puede 
revisar cada ítem respecto a estas criterios.

Cuando una historia no cumple con un criterio de aceptación ni con el criterio 
de listo no se puede considerar como una historia terminada.

Para aprender a hacer buenos criterios se recomienda revisar la sección 
dedicada a ello en esta guía.

**2.- No confundir con Sprint Retrospective Meeting**

Es importante que esta reunión sea independiente y no ocurra al mismo tiempo 
que el Sprint Retrospective.

**3 .- Celebrar con el Team**

Este es un buen momento para felicitar a todos e incitar el buen trabajo. 
Deben ser informales y cómodas para todos los miembros del Team. Debe usarse 
esta instancia para subir la **moral** del Team. Se espera que surjan dudas 
sobre los métodos, tecnologías y formas en la que se hizo el trabajo para que 
todos los miembros puedan tener feedback al respecto.

Sin embargo, si la moral del Team es baja y estas reuniones son tensas, ya sea 
por problemas internos o porque el Sprint del que se habla no resulto bien, no 
se desesperen, es normal, a veces ocurre, sobre todo al comenzar con Scrum, por 
lo que esta reunión debe darse para identificar lo que falló para luego en el 
Sprint Retrospective abarcar los aspectos a fondo y mejorar el estado actual 
del proyecto en el siguiente Sprint.

Finalmente, como recomendación personal, recomiendo que después de esta 
reunión el Team de desarrollo se junte y vaya a celebrar a un bar
o a la casa de algún miembro, esto aumenta la satisfacción de trabajar en 
equipo, afirma las amistades y permite discutir algunos temas
con más sinceridad. Nada mejor que compartir un vaso de cerveza con un 
compañero de trabajo después de una excelente jornada laboral.






### Sprint Retrospective Meeting

Esta reunión debe durar 1 horas en un Sprint de dos semanas y hasta 3 horas en 
un Sprint de un mes.

Se realiza antes de comenzar el siguiente Sprint. Se revisa lo que funciona y 
lo que no. Se busca mejorar el proceso discutiendo:

 * Que les gustaría empezar a hacer
 * Que les gustaría dejar de hacer 
 * Que les gustaría continuar haciendo.

Estas preguntas deben estar orientadas con estos 3 puntos de vista:

 * Felicidad
 * Productividad
 * Calidad

Se recomienda usar la lista de impedimentos creada durante las reuniones 
diarias para establecer temas de discusión.

El objetivo máximo de esta reunión es mejorar la calidad de trabajo del Team y 
el Scrum Master para el siguiente Sprint, tanto personalmente como a nivel 
grupal.

Esta reunión **debe** ocurrir después del Sprint Review.

El Scrum Master debe asegurarse que esto ocurra y que los miembros entiendan 
el propósito de esta reunión. Debe asegurarse que se cumplan los tiempos y que 
absolutamente todos participen, incluido él.

Objetivo:

 * Inspeccionar como fue el último Sprint enfocándose en la gente, las 
   relaciones, el proceso y las herramientas.
 * Identificar y ordenar los ítems más importantes que resultaron bien y que 
   dieron mejoras potenciales.
 * Crear un plan para implementar mejoras a como el sistema Scrum funciona, 
   puede que algunas cosas sobre Scrum no funcionen bien en el
   Team, por lo que pueden sacarse o modificarse totalmente, es posible que el 
   Team llegué a nuevos métodos en este proceso por lo que 
   el Scrum Master debe asegurarse que aunque sea algo nuevo este se encuentre 
   en la definición de ágil.
 * Si en el Retrospective anterior se planteó usar algún método nuevo es en 
   esta reunión donde se debe evaluar el desempeño de dicho método.
 * Es bueno replantearse el criterio de listo y de aceptación que el equipo 
   tiene, para ver si es necesario mejorarla o cambiarla totalmente.

Al final de la reunión el Scrum Master debe tener claro que cosas nuevas 
implementar en el siguiente Sprint, cuales modificar y cuales quitar.

#### Recomendaciones III

**1.- Elegir moderador**

Antes de comenzar se debe elegir un moderador, lo normal es elegir como 
moderador al Scrum Master o algún miembro del Team, pero se recomienda,
si es posible, que un miembro o Scrum Master de otro equipo Scrum (hasta de 
otro proyecto), sea el moderador, permitiendo así que todos en el Team
puedan participar libremente mientras que el miembro externo aprende como otro 
equipo trabaja y mejora sus técnicas.

**2.- Conocer la impresión del equipo sobre el Sprint**

Para empezar la reunión se recomienda hacer que cada integrante escriba en un 
post-it un número del 1 (terrible) al 10 (increíble)
representando como ellos se sienten respecto al Sprint en general. 
Esto debe ser hecho de forma que nadie pueda ver tu número, por lo que al 
escribirlo se debe entregar al Scrum Master quién luego calcula el promedio,
finalmente se comunica este número el equipo y se compara con el del Sprint 
Retrospective anterior.

Opcionalmente se puede dar una ventana de 4 minutos para que los miembros 
dibujen en un post-it algo que describa el Sprint desde el punto de vista de 
ellos. Esto es recomendable para equipos tímidos ya que rompe el hielo y ayuda 
a que todos comiencen a pensar desde un principio.

**3.- Análisis de los artefactos**

Se deben analizar los diferentes artefactos usados durante el Sprint. Se debe 
ver cuál fue el trabajo hecho y cuál quedó pendiente, cuales son las tareas o 
historias que se tuvieron que agregar durante el Sprint y porqué.

También al analizar la Burndown se deben hacer las siguientes preguntas:

* ¿El equipo cumplió con el objetivo que se esperaba?
* ¿Es la Burndown que todos esperaban?
* ¿En qué momentos se añadió o quitó trabajo durante el Sprint?

Es importante comparar la curva esperada con la curva real y entender porque 
son diferentes.

Otro dato importante a usar es la **Velocidad**, esta representa cuantos Story 
Points y cuanto valor se ha entregado en los últimos 7 Sprints (o menos si
no existen tantos). Un buen desarrollo de Scrum asegura que la velocidad 
siempre va en aumento.

Al analizar la velocidad se debe preguntar cuál es la velocidad actual y si 
esta es igual, peor o mejor que antes.

**4.- Start / Stop / Continue**

Idealmente usar post-it y separar en una pizarra estas tres columnas para que 
cada equipo coloque sus inquietudes.

En:
 * Start: Lo que les gustaría empezar a hacer
 * Stop: Lo que les gustaría dejar de hacer
 * Continue: Lo que les gustaría seguir haciendo

Cada miembro escribe, durante un tiempo predeterminado, post-it para cada 
columna, luego el moderador va poniendo de pie a cada uno
para que coloquen y digan porque escribieron eso.

**5.- Votación de tópicos importantes**

Usando los post-it anteriores, el moderador intenta ordenar los post-it, 
agrupando aquellos similares o que están en áreas de interés similar, esto por 
cada columna. Luego se le da tres puntos (o menos si el equipo es pequeño) a 
cada miembro para cada columna. La idea es que con sus plumones marquen puntos 
en los post-it en los que votan.

Luego se toman los tres post-it más votados de cada columna y la reunión 
continuara discutiendo estos puntos.

**6.- Discusión**

Esta es la parte más importante de la reunión, se recomienda que esta parte 
dure una hora o más si es necesario para que todos los puntos sean discutidos, 
también, cada ítem debe tener un tiempo establecido para que todos los ítems 
tengan el mismo nivel de atención. El moderador se preocupa de que esto se 
cumpla así como también evita que durante una discusión se salgan del tópico 
central.

La idea de esta etapa es llegar a soluciones y consensos, por lo que durante 
la discusión el moderador debe ir tomando nota y una vez que 
se llegue a un consenso entre todos el moderador debe decir a todo el 
equipo el consenso al que han llegado y si están de acuerdo. Luego
se anota este consenso y se le asigna un responsable quién debe ser parte del 
equipo. El responsable debe ofrecerse por sí mismo. Esto se hace por cada tema.

**7.- Resultados públicos**

Al finalizar la reunión debe quedar registro de todo lo discutido y de las 
métricas obtenidas (punto 2 y 3), este registro debe estar accesible a todo el 
Team y debe ser transparente para todos.



























## Criterio de listo y de aceptación
<hr class="divider">

Los criterios de listo y de aceptación ayudan a entender cuando una historia ha
sido completada satisfactoriamente, asegurando su calidad. Es importante que 
ambos términos se discutan a fondo con el Product Owner hasta que ambos 
criterios sea transparentes para todos.

En caso de que el Team de Scrum trabaje en una organización se debe revisar si 
existe alguna definición formal de criterio de listo o aceptación a nivel 
organizacional y usar esa definición como línea base. Esto asegura 
compatibilidad con los negocios de la organización. Además estos criterios 
pueden cambiar de Team en Team.

Este criterio puede cambiar durante el desarrollo del software, es decir, un 
Sprint puede tener un criterio de listo o aceptación diferente al de otro 
Sprint, pero nunca se debe cambiar durante el desarrollo de un Sprint. Se 
aconseja que este punto sea repasado durante el Sprint Retrospective. Mientras 
se avanza en el proyecto se espera que el Team pueda tener un criterios más 
estrictos y severos para aumentar la calidad del producto.

Para mejorar el entendimiento y la transparencia de estos criterios se 
recomienda hacerse las siguientes preguntas:

* ¿Están las historias bien definidas por el Product Owner, Scrum Master y por 
  todo el Team antes de implementarse?
* ¿Todos en el Team entienden y viven la cultura y valores de un Team de 
  ingenieros?
* ¿Están claras las definiciones y requerimientos sobre test automatizados, 
  revisión de código e integración continua para
  asegurar un desarrollo ágil?
* ¿Una vez completada una historia aparecen muchos bugs? En otras palabras, 
  terminar, completar o dejar algo listo realmente significa que está listo?

### Criterio de Listo

El criterio de listo se establece en el Sprint Planning y se aplica de forma 
global a todos los ítems del Product Backlog, por lo que determina que se 
debe hacer como mínimo para terminar una historia. Cuando una historia ha sido 
terminada y se dice que está "lista" quiere decir que todos entienden 
porque está lista y que es lo que esto implica.

Está definición permite decidir cuánto trabajo es capaz de hacer un Team 
durante un Sprint, dándoles así un buen criterio para decidir qué historia de
usuario irá en el Sprint Backlog o no.

Un ejemplo normal de criterio de listo es:

 * Cada método generado tiene un caso de prueba para cada aspecto de él. (
  usualmente es fácil de cumplir con esto usando TDD).
 * Todos los casos de prueba asociados no fallan.
 * La integración no ha arruinado otras historias ni sus casos de pruebas (en 
   caso de que si lo haga deben ser reparadas).
 * El código fuente está apropiadamente comentado.
 * El Product Owner ha aceptado le estado actual de la historia. (Esto es muy 
   importante, el Product Owner debe evaluar cada historia para considerarla 
   lista)

El Workflow de trabajo para las Task también es parte del criterio de listo, 
por ejemplo que una Task tenga que pasar de "A hacer" a "Haciendo", "Testing" 
y "Listo".

Estos criterios se aplican para todos los aspectos del software, sin embargo si
existen historias particulares que no pueden cumplir con uno o más puntos del 
criterio se debe especificar esto en el criterio de aceptación y el Product 
Owner debe estar de acuerdo con ello.

### Criterio de Aceptación

Se establece en el Sprint Planning, sirve para saber que se debe cumplir para 
que una historia en particular esté completa. Esto debe ser bastante detallado
por lo que solo debe aplicarse en las historias del Sprint Backlog.

La mejor forma de crear criterios de aceptación es creando diversos escenarios 
de prueba para todas las funcionalidades de la historia, esto se puede hacer 
siguiendo este esquema:

~~~
    Historia: [Nombre]

    Escenario 1: [Titulo]
    Dado [Contexto]
      Y [Más contexto]...
    Cuando  [Evento]
    Entonces  [Resultado/Output]
      Y [Otro resultado/output]...
     
    Escenario 2: ...
~~~

Ejemplo:

~~~
    "Historia: El Dueño de la cuenta puede retirar dinero
     Yo como 'Dueño de la cuenta'
     Quiero 'quiero retirar dinero de una ATM'
     Para 'poder retirar dinero cuando el banco esté cerrado'"
     
    Escenario 1: [la cuenta tiene suficientes fondos]
    Dado [el balance de la cuenta es $100]
     Y [la tarjeta es válida]
     Y [la maquina tiene suficiente dinero]
    Cuando [el dueño de la cuenta requiera $20]
    Entonces [el ATM debiera entregar $20]
     Y [el balance de la cuenta debiera ser $80]
     Y [la tarjeta debiera ser devuelta]
     
    Escenario 2: [la cuenta tiene fondos insuficientes]
    Dado [el balance de la cuenta es $10]
     Y [la tarjeta es válida]
     Y [la maquina tiene suficiente dinero]
    Cuando [el dueño de la cuenta requiera $20]
    Entonces [el ATM no debe entregar ningún dinero]
     Y [el ATM debe decir que no hay suficientes fondos]
     Y [el balance de la cuenta debiera ser $20]
     Y [la tarjeta debiera ser devuelta]
     
    Escenario 3: [La tarjeta ha sido deshabilitada]
    Dado [que la tarjeta está deshabilitada]
    Cuando [el dueño de la cuenta requiera $20]
    Entonces [el ATM debiera retener la tarjeta]
    Y [el ATM debiera decir que la tarjeta ha sido retenida]
     
    Escenario 4: [el ATM tiene fondos insuficientes]
    ...
~~~

En este proceso se deben abarcar absolutamente todos los escenarios posibles.
















## Empezando tu Primer Sprint
<hr class="divider">

Esta sección es una recomendación personal para todos aquellos comenzando 
Scrum por primera vez, en esta página contiene todo lo necesario para usar 
Scrum, sin embargo puedo imaginarme como se agarran la cabeza para poder 
entender esta gran cantidad de contenido en tan poco tiempo, pues la 
recomendación es: *no lo hagas*. No todo al mismo tiempo al menos.

Scrum se desarrolla en Sprints de dos o 4 semanas y no todas las reuniones 
ocurren el mismo día, lo que te permite ir aprendiendo mientras lo vives.

Por ello a continuación les dejo con una serie de recomendaciones para comenzar
a ser ágil y aprender Scrum!

**1.- Armar el equipo**

En este sentido el equipo es: Scrum Master + Team. Al armar el equipo se debe 
repasar muy bien cuál es el rol y responsabilidad de estos aspectos, de forma 
que el Scrum Master se ofrezca por sí mismo y no que sea impuesto por el resto 
del equipo.

También es importante que exista confianza en el equipo, para ello se 
recomienda pasar más tiempo juntos, ya sea en el ambiente laboral o 
compartiendo tiempo libre.

**2.- Reuniones previas**

Antes de empezar cualquier Sprint lo más probable es que no se tenga ni idea 
de lo que se va a hacer, para ello se recomienda tener una reunión previa en 
la que el Product Owner explicará el negocio a grandes rasgos, todo lo que el 
anhela y lo maravilloso de su idea. Asegúrense de hacer todas las preguntas 
posibles para entender de qué se trata, no se preocupen todavía de si es 
factible o no, solo preocúpense de entender el negocio.

En esta reunión es posible que noten que el cliente no sabe lo que es un 
Product Owner, esta reunión sirve también para explicar este rol.

**3.- Backlog Refinement + Sprint Planning**

Esta es la primera reunión de Scrum, infórmate muy bien de ellas en esta guía 
antes de continuar.

La primera vez es bueno realizar ambas en una sola reunión, esto ayudará tanto 
al Product Owner a entender a Scrum como al Team comprender el sistema de 
trabajo ágil. Ahora, este primer Sprint debe considerar historias importantes 
pero no muy complejas, es el comienzo de varias iteraciones por lo que no hay 
que ser ambicioso.

El objetivo máximo para el Team durante este Sprint debe ser el entender Scrum 
y todas sus partes.

**4.- Feedback y reuniones diarias**

Se aconseja tener una o dos reuniones semanales con el Product Owner para ir 
aclarando dudas sobre las historias del Sprint Backlog, siempre y cuando sea 
necesario, no hay que ser muy riguroso en esto y se debe pedir la colaboración
del Product Owner. Si no pueden ser presenciales se recomienda usar un chat 
asíncrono.

Respecto a las reuniones diarias, **háganlas todos los días en el mismo lugar 
a la misma hora**. Usar una minuta es buena idea :)

**5.- Auto-organización**

Es importante que el Team se auto-organice y que cada miembro tome sus 
propias Historias y Task para comenzar el trabajo, sin embargo trabajar auto-
organizadamente sin objetivo claro es complicado, para ello el Objetivo del 
Sprint ayuda bastante, sin embargo puede surgir la duda ¿Y qué historia 
debiéramos hacer primero?

Naturalmente cada historia debiera tener el valor de negocio del cliente y la 
estimación de complejidad dada por el Team, pero ambos indicadores no nos 
ayudan a entender a simple vista que historias hacer primero para agilitar el 
proceso.

Pues yo les tengo una solución bastante sencilla llamada MoSCoW, esto consiste 
en clasificar cada historia en:

 * **M** (Must): Describe un requerimiento de muy alta prioridad y que no debe 
   dejarse de lado.
 * **S** (Should): Representa a un requerimiento de alta prioridad que debe 
   completarse si es posible.
 * **C** (Could): Describe requerimientos que se desea que se completen pero 
   que pueden esperar.
 * **W** (Won't): Representa requerimientos que el Product Owner desea que se 
   implementen pero quizás en un futuro y si el tiempo lo permite (También 
   conocidos como **NICE TO HAVE**)

Esta clasificación debe hacerse en el Sprint Planning con el Product Owner 
presente, de forma que todos estén de acuerdo con la prioridad dada.

**6.- Sprint Review informal y cómodo**

Esta reunión no es de estrés, es para mostrar lo avanzado. No terminar un 
Sprint no significa haber fallado. Se debe aprender de los errores y mejorar 
para el siguiente Sprint, por ello, en esta reunión, se debe anotar cada 
acotación dada por el Product Owner para entregar mucho más valor en la 
siguiente iteración.

También se recomienda que el Product Owner se quede con el software terminado 
para que el tenga todo el tiempo del mundo de experimentar con él, esto 
provocará que en el siguiente Backlog Refinement la discusión sea más fluida, 
el Product Owner sabrá con un poco más de claridad que es lo que quiere.

**7.- Sprint Retrospective, a celebrar!**

Tal cuál como allí dice, esto se puede hacer de dos simples formas, realizar 
la reunión primero y luego celebrar o hacer ambas cosas al mismo tiempo. Lo 
que mejor resulte para ustedes.

**8.- Transparencia**

Todo el contenido, todos los errores, todas tareas, todo de todo debe ser 
transparente para el Team, el Scrum Master y el Product Owner. Mayor 
transparencia da mayor confianza, lo que creará un ambiente de trabajo más 
amigable.

**9.- Ingeniero en experimentación**

Uno de los grandes aspectos de las metodologías ágiles y de Scrum en general 
es que no son metodologías rígidas in-alterables, ¿Crees que lo que haces no 
funciona para tu equipo? ¿Crees que sería mejor implementar el siguiente 
esquema de trabajo? ¿Quizás usar la siguiente métrica nos pueda ser útil?

En Scrum todo esto es posible y debe ser discutido por el Team en las Sprint 
Retrospective, experimenten prueben y mejoren! Tan solo no olviden el 
manifiesto ágil y serán capaces de mejorar sus aspectos de trabajo de forma 
increíble.

**10.- Compartir el conocimiento**

"Claro, todos en el equipo deben saber cómo se hacen las cosas y blah blah", 
sí es cierto, el equipo debe transmitir el conocimiento técnico entre ellos, 
pero también es **sumamente importante** compartir con otros equipos Scrum, 
sin importar si ellos están haciendo un proyecto absolutamente diferente.

Compartir con otro equipo el como ellos abarcan, desde la perspectiva de la 
metodología, los diferentes problemas, reuniones y artefactos es un excelente 
método para mejorar la agilidad. Se deben compartir herramientas, métodos, 
sistemas, etc.

Tan solo recuerda, si estos se implementan o no se debe decidir durante un 
Sprint Retrospective para implementarlos en el siguiente Sprint!


**11.- Herramientas**

Por último, es importante usar herramientas que ayuden a ser ágil, usar 
sistemas como Google Drive para compartir archivos está bien, pero usarlo para 
graficar Burndowns y tener tableros Kanban, oh no.

Al final de esta guía encontraras tres secciones: material de ayuda, software 
de ayuda y enlaces externos.

Te aconsejo revisar los tres e intentar usar algunos de los softwares
propuestos, verás como la vida es más fácil cuando sabes que pegamento usar 
para diferentes superficies :)


























## Material de Ayuda
<hr class="divider">

 * [Glosario Scrum](https://www.scrum.org/Resources/Scrum-Glossary)
 * [CollabNet - Videos de Scrum](https://www.youtube.com/channel/UCRttfRo2G_Vp8pPFGqDKVwQ)
 * [Canal de Atlassian](https://www.youtube.com/channel/UCL1yMVRMh3vxitPiVaXfkoA)
 * [Libro Diseño Agil con TDD](http://www.carlosble.com/libro-tdd/)
 * [Libro AgileBok](http://www.agilebok.org/)
 * [Libro Scrum Shortcuts](http://www.axisagile.com.au/about-the-book-scrum-shortcuts-without-cutting-corners/buy-the-book/)
 * [Scrum - Carta de Referencia](http://scrumreferencecard.com/scrum-reference-card/)
 * [Scrum Master Checklist](http://scrumreferencecard.com/ScrumMasterChecklist.pdf)
 * [What's in a Story?](http://dannorth.net/whats-in-a-story/)
 * [From Story Points to #NoEstimates](http://devteams.at/from_story_points_to_noestimates)
 * [AgileContracts](http://www.agilecontracts.org/)
 * [FlexibleContracts](http://www.flexiblecontracts.com/ )
 * [Ofertas y Contratos en Scrum](https://leanpub.com/Ofertasycontratacionscrum)
 * [PDF: Optional Scope Contracts](http://www.xprogramming.com/ftp/Optional+scope+contracts.pdf)
 * [Bugs: Escaped Defects](http://www.agilebok.org/index.php?title=Escaped_Defects)
 * [Atlassian: Sprint Planning](http://blogs.atlassian.com/2015/01/sprint-planning-atlassian/)
 * [Atlassian: Stand-Up](http://blogs.atlassian.com/2015/03/standup-atlassian/)
 * [Atlassian: Sprint Review](http://blogs.atlassian.com/2015/02/sprint-review-atlassian/)
 * [Atlassian: Retrospectives](http://blogs.atlassian.com/2014/12/retrospectives-atlassian/)
 * [OWASP - Seguridad Web](https://www.owasp.org/index.php/Main_Page)
 * [Libro - OWASP Testing Guide](https://mega.co.nz/#!PcYSxCwQ!HKtqRvXO131WpFErFEsyTHA9QA3BVyfi3QI9_2pOqSw)
 * [MoSCoW Method](http://en.wikipedia.org/wiki/MoSCoW_method)
 * [Libro - The Lean StartUp](http://theleanstartup.com/)
 * [Libro - Is Design Dead](https://mega.co.nz/#!fNoyTYBS!mmEZCGziDYrUkyrsqs1YDHkQqVstMkutM44mAIVtsjM)













## Software de Ayuda
<hr class="divider">

 * [SonarQube](http://www.sonarqube.org/)
 * [JIRA - Atlassian](https://www.atlassian.com/software/jira/)
 * [Git-Flow](http://nvie.com/posts/a-successful-git-branching-model/)
 * [Wapiti](http://wapiti.sourceforge.net/)
 * [Bamboo - Atlassian](https://www.atlassian.com/software/bamboo)
 * [Travis CI](https://travis-ci.org/recent)
 * [Jenkins CI](http://jenkins-ci.org/)
 * [HipChat](https://haskmell.hipchat.com/home)

















## Enlaces Externos
<hr class="divider">

 * [Chile Ágil](http://www.chileagil.cl/)
 * [Agile Methodology](http://agilemethodology.org/)
 * [Agile Manifesto](http://www.agilemanifesto.org)
 * [Scrum](https://www.scrum.org/)
 * [Scrum Methodology](http://scrummethodology.com/)
 * [Guía Scrum](http://www.scrumguides.org/scrum-guide.html)
 * [AgileContracts](http://www.agilecontracts.org/)
 * [Foros FailFast](http://failfast.chileagil.cl/)
 * [Planning Poker](http://www.planningpoker.com/)
 * [Scrum Alliance](https://www.scrumalliance.org/)
 * [Mountain Goat Software](http://www.mountaingoatsoftware.com/agile/scrum)
 * [Scrum Development: Yahoo Groups](https://groups.yahoo.com/neo/groups/scrumdevelopment/info)
 * [Lean StartUp](https://en.wikipedia.org/wiki/Lean_startup)

## Citas
