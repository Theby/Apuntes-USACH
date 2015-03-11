[![Build Status](https://travis-ci.org/Theby/Apuntes-USACH.svg?branch=master)](https://travis-ci.org/Theby/Apuntes-USACH)

Apuntes-USACH
=============

Página Web En Ruby On Rails - Dedicada a Apuntes de Ingeniería Civil en Informática

El código es libre y puedes usarlo para lo que desees, sin embargo agradecería mucho si mencionas el origen de este código :)

Aspectos importantes para montar esta aplicación RoR

* Sistema Operativo: Debian 7.7 Wheezy

* Versión Ruby: ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-linux]  

* Versión Ruby On Rails: Rails 4.1.1

* Base de datos: psql (PostgreSQL) 9.2.9 

Configuración
=============

La base de dato usa un administrador el cuál puede ser creado mediante el 
archivo seed.rb, el formato debe corresponder al de la gema Devise (gema para 
gestión y autentificación de usuarios.)

El resto de las gemas importantes que son usadas pueden ser revisadas en 
Gemfile, cada una tiene sus respectivos comentarios en ese archivo.

Para hacer uso de ellas basta con hacer "bundle install", cada gema cuenta con documentación en su respectivo repositorio.

Ante cualquier duda contactame a esteban.gaete@usach.cl