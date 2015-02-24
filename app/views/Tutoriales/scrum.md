## Metodología Ágil: SCRUM
<hr class="divider">

<%= fa_icon "star 2x" %> **Antes de comenzar este tutorial por favor leer esto**. <%= fa_icon "star 2x" %>

Este tutorial nacido del gran desempeño que mi equipo tuvo usando esta 
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
        <li><a href="#¿qué-es-una-metodología-ágil?">¿Qué es una metodología ágil?</a></li>
        <ol>
            <li><a href="#el-manifiesto-ágil">El Manifiesto Ágil</a></li>
            <li><a href="#principios-agiles">Principios Ágiles</a></li>
            <li><a href="#¿cuándo-ser-ágil?">¿Cuándo ser Ágil?</a></li>
        </ol>
        <li><a href="#scrum">Scrum</a></li>
        <ol>
            <li><a href="#breve-introducción">Breve Introducción</a></li>
            <li><a href="#características-importantes">Características Importantes</a></li>
            <li><a href="#¿cuándo-usar-scrum?">¿Cuándo usar Scrum?</a></li>
            <li><a href="#otras-metodologías-ágiles">Otras metodologías Ágiles</a></li>
        </ol>
        <li><a href="#el-ciclo-scrum">El ciclo Scrum</a></li>
        <li><a href="#material-de-ayuda">Material de Ayuda</a></li>
        <li><a href="#enlaces-externos">Enlaces Externos</a></li>
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

Otra de las características de las metodologías duras es que se basan en el 
desarrollo cascada (waterfall), pasando de análisis de requerimiento a diseño, 
luego desarrollo, integración, pruebas y finalmente producción. Esto trae 
consigo muchos problemas ya que el desarrollo Cascada implica que en la fase 
de requerimientos el cliente sabe a la perfección que es lo que desea, lo que 
por supuesto nunca ocurre, provocando así errores, cambios y conflictos 
durante toda la vida del software.

La gran razón de porque el desarrollo de software ha sido así se debe a que 
estos modelos son una herencia de el desarrollo de proyectos de otras 
ingenierías, como arquitectura u obras civiles, donde un contexto duro y 
rígido es más útil debido a la naturaleza de los problemas que estos 
profesionales enfrentan, sin embargo el software es un ente vivo que cambia 
continuamente según las necesidades del cliente o del mercado.

### El Manifiesto Ágil

En este contexto nacieron las metodologías ágiles en conjunto con el [manifiesto Ágil](www.agilemanifesto.org), el cual prioriza:
 
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

[^1]: Software de valor: Es un software que no solo cumple con las expectativas del cliente, sino a demás mejora sustancialmente el negocio en el que se aplica, dando así no solo valor a la empresa si no que también valor de satisfacción y usabilidad.



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


























## Scrum
<hr class="divider">

### Breve Introducción

Scrum es un proceso ágil que nos permite centrarnos en ofrecer el más alto 
valor de negocio en el menor tiempo. Nos permite rápidamente y en repetidas 
ocasiones inspeccionar software real de trabajo (cada dos semanas o un mes).
El negocio fija las prioridades. Los equipos se auto-organizan a fin de 
determinar la mejor manera de entregar las funcionalidades de más alta 
prioridad. Cada dos semanas o un mes, cualquiera puede ver el software real 
funcionando y decidir si liberarlo o seguir mejorandolo en otro sprint[^3].

[^3]: Un sprint es una iteración completa, desde ver requisitos hasta entregar el software funcional.

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
            <li>Desarrollo de video juegos</li>
        </ol>
    </div>
    <div class="col-md-6">
        <ol>
            <li>Sistemas críticos de soporte vital, aprobados por laFDA</li>
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

 * Equipos auto-organizados.
 * El producto avanza con Sprints de dos semanas hasta uno o dos mese de 
   duración.
 * Antes de cada Sprint se hace una planificación estratégica para ver que se 
   realizará en cada Sprint.
 * Los requisitos son capturados como elementos en una lista llamada "Product 
   Backlog".
 * No hay prácticas de ingeniería prescritas.
 * Se deben usar herramientas o practicas para facilitar un entorno ágil de 
   trabajo.
 * La incertidumbre existe y debe aceptarse.
 * Las fases del desarrollo son solapadas.
 * Se realiza un control sutil.
 * Se debe difundir el conocimiento entre los miembros del equipo.
 * No hay cambios en un Sprint.

Probablemente mucho de estos términos no te sean claros al comienzo, pero para 
eso está esta guía!

### ¿Cuándo usar Scrum?

Scrum es optimo cuando los siguientes escenarios están presentes:

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

<%= image_tag('tutoriales/scrum/comparacion.jpg', :class => 'img-responsive img-thumbnail', :height => '100%', :width => '100%') %>







## El ciclo Scrum
<hr class="divider">

~~~ página en construcción ~~~




























 










## Material de Ayuda
<hr class="divider">



























## Enlaces Externos
<hr class="divider">

 * [Agile Methodology](http://agilemethodology.org/)
 * [Agile Manifesto](www.agilemanifesto.org)
 * [Scrum](https://www.scrum.org/)

</br>