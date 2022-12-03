---
date: 2022-11-07T22:00:00.000Z
layout: post
title: Tipos de permisos en Linux.
subtitle: '¿Qué son y cómo funcionan los permisos en Linux?'
description: >-
  Artículo sobre los distintos permisos básicos en Linux.
image: >-
  https://www.prored.es/wp-content/uploads/2018/11/prored-bits-de-permisos-unix-permission-bits.png
optimized_image: >-
  https://www.prored.es/wp-content/uploads/2018/11/prored-bits-de-permisos-unix-permission-bits.png
category: linux
tags:
  - linux
author: horacio
paginate: true
---

¿Alguna vez has tratado de limitar el acceso a un documento o fichero para que solo puedan acceder un grupo de peronas en concreto? Como por ejemplo utilizando la opción de
dar acceso de escritura y lectura a x persona en un archivo de Google Drive. Bien, pues los permisos de Linux siguen una filosofía bastante similar.

![Permisos en Google Drive](https://d2x3xhvgiqkx42.cloudfront.net/12345678-1234-1234-1234-1234567890ab/119522e8-5a8d-47c6-814f-ebabe28d68d7/2021/01/20/955a4d37-c8d0-4578-8ab6-f780eb50814f/9665a934-f429-485d-bbba-c73ba5911068.jpg)

---

## ¿Qué son?

Los permisos de ficheros en Linux **nos permiten designar que usuarios tendrán acceso a modificar, leer y ejecutar cada fichero** de una manera bastante personalizable y adaptable
según las necesidades de cada uno.

Esto es bastante útil ya que por ejemplo un documento que está en el usuario José, el propietario que es José, no querrá que el usuario Carlos pueda acceder y modificarlo. Y aquí es donde entran
los permisos.

## Tipos de permisos o niveles de permisos.

- **Permisos del propietario:** Son aquellos permisos que se designan automáticamente al propietario/creador del archivo en cuestión. Este usuario es inicialmente el que
tiene permisos para modificar, ver y ejecutar aquellos archivos en el que él tenga permisos de propietario.

- **Permisos del grupo:** En Linux tenemos la posibilidad de crear grupos de usuarios con permisos específicos que nos permiten administrar mejor el acceso a ciertos documentos.
Un ejemplo rápido: Imagínate que tenemos una carpeta que se llama 'Instituto', en la que dentro de ella tenemos 3 carpetas más ('1ºESO', '2ºESO' y '3ºESO'). Y nosotros queremos que
los alumnos de 1ero de la ESO **solo** tengan acceso a la carpeta de '1ºESO', los de 2nd de la ESO a la carpeta de '2ºESO'... Bien, pues en vez de ir alumno por alumno otorgándole
o quitándole permisos, lo que haríamos sería meter todos los alumnos de un curso en un grupo y a la carpeta en cuestión decirle que únicamente los usuarios que pertenezcan al grupo
de 1ºESO, puedan acceder a la carpeta de 1ºESO.

- **Permisos del resto de usuarios:** Por último, pero no menos importante, tenemos los permisos de aquellos usuarios que no sean propietarios o pertenezcan a un grupo específico.
Es decir, los permisos de otros.

---

## Estructura de permisos.

Vale, muy bien todo esto, pero ¿cómo puedo saber que permisos tienen los archivos?

Pues mi sencillo, con el comando `ls -l` o `ls --long`.
Ambos son los mismos parámetros solo que uno es la versión contraída y otro la versión extendida.


> Si quieres ver los permisos de archivos ocultos tendrás que añadir el parámetro -a o --all. `ls -la` o `ls --long --all`

![ls -l](http://telegra.ph/file/393e180dcbaa93a5373fa.jpg)

- 🔴​ En la primera columna podemos ver los permisos asignados.
- 🟡​ En la segunda columna podemos ver el usuario propietario.

Como hemos podido observar, los permisos tienen la siguiente estructura:

![estructura de los permisos](https://computernewagedotcom.files.wordpress.com/2015/06/representacion-permisos-en-linux1.png)

### Tipo de fichero.

Esta información la encontraremos en la primera columna de la estructura de los permisos y nos muestra el tipo de archivo que es.

| Identificador | Información |
| ------- | ----------- |
| -       | Archivo |
| b | Archivo de bloques especiales |
| c | Archivo de caracteres especiales |
| d | Directorio |
| l | Vínculo o enlace |
| p | Pipes (_tuberías_) |

Los más comunes son **-** y **d**.

### Tipos de permisos básicos.

| Permiso | Información |
| ------- | ----------- |
| - | Sin permiso |
| r | Permiso de lectura (read)|
| w | Permiso de escritura (write)|
| x | Permiso de ejecución (execute)|

- **Lectura (r) ->** Si este permiso está presente indica que podremos leer el contenido de un archivo.
- **Escritura (w) ->** Si este permiso está presente indica que podremos modificar el contenido de un archivo.
- **Ejecución (x) ->** Si este permiso está presente indica que podremos ejecutar el archivo. Generalmente este permiso se aplica a archivos ejecutables como scripts o programas.

> ⚠️ OJO! En el caso de querer que una carpeta sea visible, no bastará con que tenga el permiso de lectura, también tendrá que tener el de ejecución.
> Si solo aplicamos el de lectura, únicamente podremos ver que la carpeta existe, pero no podremos acceder a su contenido.

---

## Gestionar permisos en GNU/Linux.

Una vez que sepamos identificar los distintos permisos, vamos a aplicarlos a un archivo.

Ahora abriremos nuestra consola y crearemos un archivo llamado prueba.md _el nombre puede ser cualquiera, esto es solo un ejemplo_.

`touch prueba.md`

Bien, una vez creado vamos a ver que permisos tiene:

`ls -l`

![ls -l prueba.md](http://telegra.ph/file/a66dc8833698ac7b774af.jpg)

Y podemos comprobar que el archivo 'prueba.md' tiene asignados los permisos **rw- r-- r--**

Eso significa que el **propietario** tiene permisos de **lectura (r)** y **escritura (w)**, pero no de **ejecución (x)**; también podemos ver como tanto el **grupo** como **otros**,
solo tienen permisos de **lectura (r)**.

### Asignar permisos.

Una vez identificados los permisos de un archivo, vamos a cambiarlos.

En este caso vamos a asignarle al archivo 'prueba.md' que el **propietario** tenga permisos de **ejecución (x)** y que tanto el **grupo** como los **otros** tengan permisos
de escritura.

Nos tendrían que quedar algo así: `rwx rw- rw-`

En GNU/Linux, para asignar permisos usamos el comando `chmod`, entonces para aplicar los permisos anteriormente mecionados tendríamos que ejecutar:

`chmod u+x,g+w,o+w prueba.md`

- La "u" es para decirle que vamos a modificar los permisos del propietario (user).
- El "+" es para decirle que vamos a añadir permisos.
- La "x" es el tipo de permiso que queremos asignarle. En este caso ejecución (execute).
- La "g" es para decirle que vamos a modificar los permisos del grupo (group).
- La "w" es el tipo de permiso que queremos asignarle. En este caso escritura (write).
- La "o" es para decirle que vamos a modificar los permisos de otros (others).

> ℹ️ Cuando usamos el comando `chmod` para asignar varios permisos, tenemos que separar cada asignación por una coma.

Este sería el resultado:

![asignando permisos](http://telegra.ph/file/544cbe9e9fb2a8d85c77a.jpg)

Ahora si quisiéramos quitar permisos, lo único que tendríamos que cambiar es el "+" por un "-".

Por ejemplo, vamos a quitar todos los permisos de **otros**. Por lo que nos tendría que quedar algo así `rwx rw- ---`

Ejecutamos chmod...

`chmod o-r,o-w prueba.md`

![resultado quitando permisos](http://telegra.ph/file/dd26e65c7e3208bd53b15.jpg)

> 💡 ¡Tip extra!
>
> A la hora de asignar permisos para el propietario, es decir el user, si nosotros somos los propietarios no hace falta que escribamos `chmod u+x archivo`,
> podemos directamente escribir `chmod +x archivo`.
>
> Ahorrándonos así tener que poner "u" (user).

<!-- --page-break-- -->
