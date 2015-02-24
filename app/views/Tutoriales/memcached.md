## Memcached en Ruby on Rails
<hr class="divider">

Para poder seguir este tutorial sin problemas debes saber que al momento de escribir estas lineas se han usado los siguientes programas:

 * Debian 7.7
 * Ruby on Rails 4.1.1
 * Memcached 1.4.13

**En este tutorial no se enseñará a instalar Ruby on Rails ni Debian.**

Es altamente posible que con versiones más actuales el tutorial aún sea 
completamente útil, sin embargo con versiones anteriores no puedo asegurar 
nada. Si identificas alguna falla o algún paso no funciona no dudes en 
[contactarme!](/contacto).

<%= fa_icon "star 2x" %> <%= fa_icon "star 2x" %> <%= fa_icon "star 2x" %>
Código libre para todos! Puedes ver el código fuente completo de este tutorial 
[Aquí!<%= fa_icon "star 2x" %> ](https://github.com/Theby/memcached-tutorial)


<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#tutorial-indice" aria-expanded="false" aria-controls="tutorial-indice">
  <b>Índice</b> <small>Mostrar/Esconder</small>
</button>
<div class="collapse in" id="tutorial-indice">
  <div class="well">
    <ol>
        <li><a href="#¿qué-es-memcached?">¿Qué es Memcached?</a></li>
        <li><a href="#instalar-memcached">Instalar Memcached</a></li>
        <ol>
            <li><a href="#ventajas">Ventajas</a></li>
            <li><a href="#desventajas">Desventajas</a></li>
        </ol>
        <li><a href="#iniciar-memcached">Iniciar Memcached</a></li>
        <li><a href="#preparando-ruby-on-rails">Preparando Ruby on Rails</a></li>
        <ol>
            <li><a href="#instalando-gemas">Instalando Gemas</a></li>
            <li><a href="#configurando-rails">Configurando Rails</a></li>
            <li><a href="#creando-datos-para-las-pruebas">Creando datos para las pruebas</a></li>
            <ol>
                <li><a href="#creando-un-controlador">Creando un controlador</a></li>
                <li><a href="#creando-una-tabla">Creando una tabla</a></li>
                <li><a href="#alimentando-la-base-de-datos">Alimentando la Base de Datos</a></li>
            </ol>
        </ol>
        <li><a href="#implementando-memcached">Implementando Memcached</a></li>
        <ol>
            <li><a href="#cache-a-la-petición-sql">Cache a la petición SQL</a></li>
            <li><a href="#cache-de-una-acción">Cache de una acción</a></li>
            <li><a href="#cache-de-una-vista">Cache de una vista</a></li>
        </ol>
        <li><a href="#comandos-del-cache-de-rails">Comandos del cache de Rails</a></li>
        <li><a href="#enlaces-externos">Enlaces Externos</a></li>
    </ol>
  </div>
</div>





















## ¿Qué es Memcached?
<hr class="divider">

[Página oficial de Memcached](http://memcached.org/)

Memcached es un sistema que mejora el nivel de utilización de el cache de un 
computador o servidor e incluso, si se conecta a varios servidores, puede 
manipular todo el cache como un único cache.

<p align="center">
    <%= image_tag('tutoriales/memcached/captura2.png', :class => 'img-responsive img-thumbnail', :height => '50%', :width => '50%') %> 
</p>

Como se puede ver en la imagen el objetivo de memcached es unir toda el cache 
para crear un único cache con mayor capacidad, de modo que memcached funciona 
de administrador de cache inclusive a través de servidores conectados de forma web.

### Ventajas

Memcached tiene un excelente tiempo de respuesta, es muy útil para hacer cache 
de páginas web o información que no es muy importante y que es estática. 
Memcached difícilmente mejorara la performance del sistema en su totalidad, 
pero puede mejorar sustancialmente el front-end.

Memcached es compatible con muchos frameworks diferentes: C/C++, PHP, Java, 
Python, Ruby, Perl, Windows/.NET, MySQL, PostgreSQL, Erlang, Lua, etc.

### Desventajas

 * Memcached tiene problemas para manejar objetos que por si solo pesan más de 1MB.
 * Existe un bug al guardar un objeto en el cache con un ID mayor a 250 caracteres, sin embargo si necesitas usar un ID de 250 caracteres es porque sin duda estas haciendo algo mal...
 * No tiene un nivel de seguridad muy alto ya que se puede entrar a él usando sistemas como [telnet](http://es.wikipedia.org/wiki/Telnet).
 * **No es consistente, es decir, si el servicio se cierra todo el cache guardado se pierde**





















## Instalar Memcached
<hr class="divider">

Antes de instalar Memcached se deben tener instalada la siguiente librería

~~~
   $ sudo apt-get install libevent-dev
~~~

Luego se puede instalar memcached desde el repositorio

~~~
    $ sudo apt-get install memcached
~~~

Para revisar si se ha instalado correctamente y con la versión correcta podemos hacer:

~~~
    $ memcached -h
    -> memcached 1.4.13    
~~~





















## Iniciar Memcached
<hr class="divider">

Para iniciar memcached como un servicio basta con escribir

~~~
    $ memcached
~~~

Sin embargo es posible configurar varias de sus opciones:

 * -vvv: Modo extremadamente verboso.
 * -m: memoria a usar en megabyts (Default: 64mb)
 * -l: network interface (Default 127.0.0.1).
 * -p: puerto de conexión (Default 11211).
 * -u: Configura el puerto para una conexión UDP (Default: off)
 * -c: número máximo de conexiones simultaneas (Defailt: 1024) 
 * -t: Número de threads usados (Default: 4)
 * -d: Correr el servicio como un Deamon.

 Además en linux contamos con un mar de comandos muy útiles para ver la ram y estadisticas del sistema:

 ~~~
    $ htop
    $ vmstat
 ~~~

En caso de no contar con estos programas basta con instalar los desde los repositorios.

Una vez que ya tengamos decidido como configurar nuestro memcached es hora de iniciar el servicio, para este tutorial usaremos esta configuración de aquí en adelante:

~~~
    $ memcached -vvv -l 127.0.0.1 -p 17898 -m 256
~~~





















## Preparando Ruby on Rails
<hr class="divider">

Para el caso de este tutorial se usara SQLite, sin embargo todo lo explicado 
aquí funciona de la misma manera para MySQL o PostgreSQL.

De modo que el proyecto se creara así:

~~~
    $ rails new memcached-tutorial
~~~



### Instalando Gemas

Instalaremos las gemas usando el Blunder, por lo que se debe abrir el archivo:

~~~
    En: memcached-tutorial/Gemfile

    Agregar:

    [...]
    # Gema que permite comunicar el servicio de memcached con ruby on Rails
    gem 'dalli'

    # Gema que permite hacer cache de paginas web
    gem 'actionpack-page_caching'

    # Gema que permite hacer cache de acciones de rails
    gem 'actionpack-action_caching'
~~~

Gema opcional y recomendada:

~~~
    # Permite silenciar los get y set de los assets en la consola
    # de rails cuando la aplicación está corriendo.
    # Esto hace más fácil ver lo que realmente importa en la consola.
    gem 'quiet_assets', group: :development
~~~

Luego corremos el Blunder con:

~~~
    // En la carpeta del proyecto
    $ bundle install
~~~



### Configurando Rails

Es necesario abrir el archivo de configuración de rails para decirle en que 
ambiente y bajo que condiciones ejecutar la **gema dalli**, esto puede ser 
hecho en el fichero production.rb o development.rb si es que queremos 
configurar para cuando la aplicación este en producción o solo en desarrollo (
o en ambos sí así se desea), para el caso de este tutorial configuraremos 
development.rb:

~~~
    En: memcached-tutorial/config/environments/development.rb

    Buscar la opción "config.cache_store" y remplazarlo por:

    # Asigna dalli como el sistema de almacenamiento de cache.
    # Asigna el cache de rails al puerto 17898 de nuestro localhost,
    # este puerto es el mismo que le dimos a memcached mediante la opción
    # -p al iniciar el servicio.
    # Asigna un namespace con el nombre de la aplicación, esto evita conflictos
    # en caso de existir más de un sistema de cache activo en el sistema.
    # Se asigna un periodo en el que expira todo el cache, en este caso 1 día.
    # Finalmente se le dice que la información guardada en el cache sea
    # comprimida para ahorrar espacio.
    config.cache_store = :dalli_store, 'localhost:17898', { :namespace => "memcached-tutorial", :expires_in => 1.day, :compress => true }

    Luego buscar la opción "config.action_controller.perform_caching" y reemplazarlo por:

    # Permite hacer caching de las acciones, usualmente ya está configurado como true
    config.action_controller.perform_caching = true
~~~

Si se quisiera, se pueden conectar varios servidores para aumentar aún más la 
capacidad de la memoria cache, para ello, en lugar de escribir 
'localhost:17898' se debe escribir la dirección donde están los otros servidores con sus servicios abiertos:

~~~
    config.cache_store = :dalli_store, 'web1.example.com', 'web2.example.com', 'web3.example.com'
~~~



### Creando datos para las pruebas

Para este tutorial haremos una aplicación muy sencilla: Una tabla en la base 
de dato, la tabla tendrá solo dos atributos (nombre y mail) y existiran 200 
entradas. De este modo podremos comparar con y sin memcached los tiempos de 
respuesta.

Para lograr esto primero crearemos un controlador para el index de la página, 
luego un scaffold de la tabla a usar y finalmente alimentar la base de dato 
usando seeds.rb.

#### Creando un controlador

Lo siguiente creará un controlador de nombre home con una acción llamada index.

~~~
    $ rails generate controller home index
~~~

Luego:

~~~
    En: memcached-tutorial/config/routes.rb

    Agregar:

    [...]
    # Define que existe la ruta /index dada por el controlador home y la acción index
    get 'index' => 'home#index'

    # Define que la raiz de la aplicación está dada por el controlador home y la acción index
    root 'home#index'
~~~

Si en este archivo ya se encuentra escrito "get 'home/index'" puedes borrarlo o conservar y borrar "get 'index' => 'home#index'" ya que ambos señalan la ruta que determina el index de la aplicación y tener dos diferentes es repetitivo innecesariamente.

#### Creando una tabla

Lo siguiente creará una entrada en la base de datos, esta será una tabla llamda
"contact" y qué tendrá dos atributos "name y email", ambos de tipo "string".
Luego se ejecuta un rake para mandar esta información a la base de datos.

~~~
    $ rails generate scaffold contact name:string email:string
    $ rake db:migrate
~~~

Luego:

~~~
    En: memcached-tutorial/config/routes.rb

    Agregar:
    
    [...]
    # Define que existe la ruta /contacts dada por el controlador contacts y la acción index
    get 'contacts' => 'contacts#index'

    y En: memcached-tutorial/app/view/home/index.html.erb

    Agregar:

    [...]
    < %= link_to 'Contacts', contacts_path % >
~~~

#### Alimentando la Base de Datos

Agregar muchos datos a una base de datos en Ruby on Rails es muy fácil:

~~~
    En: memcached-tutorial/db/seeds.rb

    Agregar:

    # Esto crea 200 entradas a la tabla Contact.
    # Name: es el nombre y se crean nombres aleatorios.
    # email: es el email y se crean mails aleatorios.
    for i in 0..200
      Contact.create(name: (0...8).map { (65 + rand(26)).chr }.join, email: (0...8).map { (65 + rand(26)).chr }.join);
    end
~~~

Luego para mandar esta información a la base de datos hacemos:

~~~
    $ rake db:seed
~~~




















## Implementando Memcached
<hr class="divider">

Si iniciamos Rails con:

~~~
    $ rails s
~~~

Y entramos a la vista de /contacts nos daremos cuenta que existen 200 
usuarios creados, sin embargo la página ha tomado un tiempo en cargar, esto lo 
podemos comprobar al ver la consola de rails:

<p align="center">
    <%= image_tag('tutoriales/memcached/sinmem.png', :class => 'img-responsive img-thumbnail') %> 
</p>

111ms pueden sonar poco, pero 200 usuarios en una página con el mínimo de css 
y sin javascript es un tiempo considerable por lo que a continuación 
mostraremos como integrar memcached en el código de rails para poner en cache
exactamente lo que deseemos.


**Importante: No olvidar tener activo el servicio de memcached antes de continuar**

~~~
    $ memcached -vvv -l 127.0.0.1 -p 17898 -m 256
~~~



### Cache a la petición SQL

Para incorporar la petición de sql al cache debemos modificar dos archivos:

~~~
    En: memcached-tutorial/models/contact.rb

    Agregar:

    # Está será una la nueva petición.
    # self hace referencia aun metodo que cualquier instancia del modelo
    # podrá llamar.
    # all_cached es el nombre del metodo.
    # Rails.cache.fetch busca en el cache si existe algo con el ID 'Contact.all'
    # si no existe ejecuta el comando entre llaves, si existe se trae el resultando inmediatamente.    
    def self.all_cached
      Rails.cache.fetch('Contact.all') { all }
    end

    En: memcached-tutorial/controllers/contacts_controller.rb

    Cambiar:
        @contats = Contact.all
    Por:
        @contacts = Contact.all_cached
~~~

Reinicia Rails y vuelve a entrar a la vista /contacts.

Al entrar notaras que no han habido cambios, ¿quizás memcached no está 
funcionando? Para responder esto veamos la consola de Rails:

<p align="center">
    <%= image_tag('tutoriales/memcached/mem1.png', :class => 'img-responsive img-thumbnail') %> 
</p>

En la quinta línea podemos ver que la gema dalli se conectó a memcached para 
luego escribir la consulta en cached, esto debido a que no se ha encontrado 
contenido en el cache. Esto produjo que todo se ejecutará normalmente por lo que se demoró aproximadamente lo mismo: 136ms.

Si vemos la consola de memcached tenemos:

<p align="center">
    <%= image_tag('tutoriales/memcached/mem2.png', :class => 'img-responsive img-thumbnail') %>
    </br>
    <%= image_tag('tutoriales/memcached/mem3.png', :class => 'img-responsive img-thumbnail') %> 
</p>

En la primera imagen notamos que al intentar buscar la información tenemos un NOT FOUND y luego en la segunda imagen se escribe la información generada por lo que si volvemos a recargar la página /contacts (sin reiniciar rails esta ves) debieramos tener una mejora en el tiempo de respuesta y un hit en memcached, ¿no?

<p align="center">
    <%= image_tag('tutoriales/memcached/mem4.png', :class => 'img-responsive img-thumbnail') %>
    </br>
    <%= image_tag('tutoriales/memcached/mem5.png', :class => 'img-responsive img-thumbnail') %> 
</p>

Cómo podemos ver... apenas a mejorado a 99ms! Esto no es bueno, claramente no 
estamos realizando eso para apenas ver una mejora de 37ms, sin embargo si 
vemos la primera imagen cuarta línea podemos notar que existe un hit en la 
cache, pero luego en la quinta línea se ejecuta la consulta de todos modo, 
trayendo desde la base de dato a los 200 usuarios en ves desde la cache.

Pero si vemos la segunda imagen podemos comprobar que memcached hizo un hit 
también ya que encontró la llave diciéndonos FOUND KEY.

 * **¿Qué ha ocurrido?** Pues que hemos guardado la consulta SQL en memcached, la 
consulta como tal: SELECT "contacts".* FROM "contacts" y no el resultado de la 
consulta. Esto es un error típico de Ruby on Rails y es debido a que por la 
forma en lo que hicimos el cache "Contact.all" es quien quedá guardado en el cache.
 * **¿Qué hay que hacer entonces?** Lo que necesitamos hacer en este caso es hacer cache de la acción que ejecuta la petición SQL de modo que guardemos el resultado.



### Cache de una acción

Primero:

~~~
    En: memcached-tutorial/controllers/contacts_controller.rb

    Cambiar:
        @contats = Contact.all_cached
    Por:
        @contacts = Contact.all

    Ya que hemos comprobado que no nos resulta útil hacerlo de esta forma.
~~~

Lo que haremos ahora será:

~~~
    En: memcached-tutorial/controllers/contacts_controller.rb

    Agregar:

    [...]
    # Guarda en cache la acción index
    caches_action :index
~~~

Esto debido a que es la acción index la que realiza "Contact.all".

Lo siguiente a hacer es reiniciar rails y volver a entrar a /contacts:

<p align="center">
    <%= image_tag('tutoriales/memcached/action1.png', :class => 'img-responsive img-thumbnail') %>
    </br>
    <%= image_tag('tutoriales/memcached/action2.png', :class => 'img-responsive img-thumbnail') %> 
</p>

Como podemos ver en la primera imagen, a partir de la cuarta línea la gema 
dalli se conecta con memcached y como no encuentra la información que le 
estamos solicitando dalli la escribe en el cache y luego la ejecuta 
normalmente, toda está acción toma 168ms, un poco más que antes.

Si vemos la segunda imagen comprobamos que memcached falló al encontrar la 
información en memcached, por lo que el nuevo contenido ha sido guardado con 
un valor de !5763! Mucho más que antes, sin duda una buena señal.

Si volvemos a recargar la página memcached debiera hacer lo suyo:

<p align="center">
    <%= image_tag('tutoriales/memcached/action3.png', :class => 'img-responsive img-thumbnail') %>
    </br>
    <%= image_tag('tutoriales/memcached/action4.png', :class => 'img-responsive img-thumbnail') %> 
</p>

¡Victoria! Como podemos ver hay mucho menos lineas, la consulta sql ya no ha 
sido ejecutada y en la línea 3 podemos ver como la información se ha leído 
directamente desde el cache tomando unos maravillosos 3ms en total!

En la segunda imagen podemos ver que memcached encontró la llave y por tanto 
retorno el valor que esperabamos, sin embargo esto aún no está terminado... si 
intentas agregar un nuevo usuario nos daremos cuenta que al entrar en 
/contacts este no aparecerá por ningún lado, lo mismo si borramos un usuario o 
si lo editamos. Esto no significa que la base de datos esté fallando, es más 
si vemos la consola podemos ver que la consulta ha sido hecha correctamente:

<p align="center">
    <%= image_tag('tutoriales/memcached/action5.png', :class => 'img-responsive img-thumbnail') %>
    </br>
</p>

Lo que ocurre realmente es que si bien la base de datos ha sido actualizada con
la nueva información, el cache sigue siendo el mismo, por lo tanto aunque 
borraramos todos los usuarios, si el cache sigue siendo el mismo que el 
principio no podríamos ver los cambios. Para arreglar esto debemos hacer que 
el cache de los usuarios expire en memcached.

~~~
    En: memcached-tutorial/controllers/contacts_controller.rb

    Agregar:

    # Provoca que la acción index en el cache se elimine
    expire_action action:[index]

    Se recomienda incluir este código dentro de los metodos edit, create, update y destroy,
    ya que el cache debe actualizarse para todos estos casos.
~~~

Esto provocará que cada vez que se haga una de estas acciones la memoria cache 
sea actualizada.



### Cache de una vista

También llamado **Fragment Cached** debido a que no necesariamente debemos 
poner en cache una página web completa, si no que una fracción de ella puede 
estar en cache mientras que el resto no.

Realizar esto es muy fácil, en cualquier archivo *.html.erb debes agregar:

~~~.ruby
    # "key" representa el string ID que usará memcached para buscar este
    # contenido en la siguiente consulta.
    # x.time determina el tiempo de vida que tendrá este cache en la memoria
    < % cache("key"), expires_in: x.time do % >
        #Porción de la página web a poner en cache
    < % end % >
~~~

Y similar a con las acciones, si la sección en cache es actualizada también se 
debe actualizar la sección en cache, para ello se debe hacer expirar el 
fragmento seleccionado.

~~~
    # "key" misma ID dada anteriormente
    # Esto debe ser usado desde un controlador o en bloques "<%= %>"
    expire_fragment("key")
~~~




















## Estadísticas en una Vista

Es posible incluir estadísticas de forma visual en alguna vista de la página, 
para ello se debe:

~~~.ruby
    En: memcached-tutorial/app/controllers/home_controller.rb:

    Agregar en el metodo Index:

    [...]
    @stats = Rails.cache.stats.first.last
~~~

Y luego en la vista deseada (en este caso el index):


~~~.html.erb
    En: memcached-tutorial/app/views/home/index.html.erb

    Agregar:
    [...]
    <h1>Cache Stats</h1>

    <table>
      <tr>
        <th>Metric</th>
        <th>Value</th>
      </tr>
      <tr>
        <td>Cache hits:</td>
        <td>< %= @stats['get_hits'] % ></td>
      </tr>
      <tr>
        <td>Cache misses:</td>
        <td>< %= @stats['get_misses'] % ></td>
      </tr>
      <tr>
        <td>Cache flushes:</td>
        <td>< %= @stats['cmd_flush'] % ></td>
      </tr>
    </table>
~~~




















## Comandos del cache de Rails

Los comandos a usar en rails para usar la cache son:

 * **Rails.cache.write(:foo, 1):** Escribe en cache el valor 1 con el id "foo".
 * **Rails.cache.read(:foo):** Lee en cache la información guardada con el id "foo".
 * **Rails.cache.read_multi(:foo, :bar):** Lee en cache la información guardada por el id "foo" y "bar".
 * **Rails.cache.fetch(:bar){ 1 }:** Busca el id "bar" en el cache, si lo encuentra traerá su contenido, si no ejecutará lo que se encuentra entré llaves y guardará lo que retorne.
 * **Rails.cache.delete(:foo):**  Borra irremediablemente el contenido referenciado por el id "foo".
 * **Rails.cache.stats:** Permite acceder a diferentes estadísticas de la memoria cache.
 * **Rails.cache.clear:** Limpia el cache borrando todo el contenido e IDs.


 Otros:

 * **Rails.cache.write(:foo, 1, expires_in: x.time):** Hace expirar "foo" en x tiempo.




















## Enlaces Externos
<hr class="divider">

 * [<span class="glyphicon glyphicon-link"></span>Debian](https://www.debian.org/)
 * [<span class="glyphicon glyphicon-link"></span>Ruby on Rails](http://rubyonrails.org/)
 * [<span class="glyphicon glyphicon-link"></span>Gema Dalli](https://github.com/mperham/dalli)
 * [<span class="glyphicon glyphicon-link"></span>Gema Actionpack-action](https://github.com/rails/actionpack-action_caching)
 * [<span class="glyphicon glyphicon-link"></span>Gema Actionpack-page](https://github.com/rails/actionpack-page_caching)
 * [<span class="glyphicon glyphicon-link"></span>Gema Quiet Assets](https://github.com/evrone/quiet_assets)
 * [<span class="glyphicon glyphicon-link"></span>Caching with Rails](http://guides.rubyonrails.org/caching_with_rails.html)
 * [<span class="glyphicon glyphicon-link"></span>Telnet](http://es.wikipedia.org/wiki/Telnet).
 * [<span class="glyphicon glyphicon-link"></span>Memcache en MySQL](https://mega.co.nz/#!yVxiDJ4Q!cxqSkpagZF519M4By5L0hNrkNRz4vHFvIAHvD6IM5VI)
 * [<span class="glyphicon glyphicon-link"></span>Memcached Wiki Oficial](https://code.google.com/p/memcached/source/browse/Resources.wiki?repo=wiki)
 * [<span class="glyphicon glyphicon-link"></span>Redis Vs Memcached](http://stackoverflow.com/questions/2873249/is-memcached-a-dinosaur-in-comparison-to-redis)