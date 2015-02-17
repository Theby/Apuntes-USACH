## _Clase 7 - Métricas generales en Scrum_

En metodologías ágiles existen diversas métricas, algunas más útiles que otras 
dependiendo el tipo de proyecto y la naturaleza del equipo. Sin embargo las 
métricas a continuación representan algunas de las métricas generales útiles 
para todo tipo de proyecto:

### Burn-Up:

<%= image_tag('pingeso/valor.png', :class => 'img-responsive img-thumbnail') %> 

Es según el product backlog, muestra el avance estimado para el proyecto 
completo y no solo del sprint actual.

Permite saber con que velocidad se le está haciendo entrega al Product Owner
el valor del proyecto, lo ideal es que al final del último sprint se entregue
el total del valor estimado.

Este gráfico debe llevar fechas y etiquetas para identificar cada sprint, 
también debe tener una línea del valor esperado, del peor caso y del mejor 
caso (con un desvió del 10%)

Permite ver la velocidad del equipo



### Burn-Down:

<%= image_tag('pingeso/burndown.png', :class => 'img-responsive img-thumbnail') %> 

Puede ser:

* Respecto a las Task: Se gráfican los SP restantes respecto a las task 
  realizadas. cada vez que una task ha sido terminada se restan los SP de 
  aquella task en el gráfico. Lo ideal es llegar a 0 el día final del sprint.

  * **Ventaja:** Muestra el avance de cada task y que tan rápido están siendo
  resultas las tareas de cada historia.
  * **Desventaja:** No permite saber si se han terminado historias por lo 
  que no garantiza que se haya entregado valor real al cliente.
  * **Útil para:** El equipo, no tiene valor para gente fuera del grupo de 
  trabajo.

* Respecto a las Historias: Se gráfican los SP restantes respecto a las 
  historias realizadas. cada vez que una historias ha sido terminada se restan 
  los SP de aquella historias en el gráfico. Lo ideal es llegar a 0 el día 
  final del sprint.

  * **Ventaja:** Muestra el avance por historia, por lo que permite saber si
  se está entregando valor real al cliente y en que velocidad y magnitud.
  * **Desventaja:** No permite saber si el proyecto va avanzando ya que no 
  se sabe cuando se terminan las task, por lo que si este gráfico no avanza
  no significa realmente que el proyecto no avance.
  * **Útil para:** El equipo y gente externa al grupo de trabajo.

### Calidad:

   Es importante demostrar de alguna forma cuantitativa la calidad del 
   software entregado en cada sprint, así como también medir la calidad de 
   valor entregado al cliente.

   Para esto no existe un modo especifico por lo que se pueden usar 
   herramientas o métricas ya establecidas así como métricas nuevas inventadas
   por el equipo de trabajo.

 * Auto-capacitación: Es importante que lo que aprenda un miembro del equipo 
   lo sepan todos. Esto puede realizarse mediante reuniones, peer programming, 
   creación de foros o blogs.

 * Diseño Ágil con TDD: El diseño no debe dejarse de lado en metodologías 
   ágiles. Una de las mejores formas de afrontar esto es aplicando TDD. Revisa la página principal de este ramo para bajar un excelente libro en TDD.