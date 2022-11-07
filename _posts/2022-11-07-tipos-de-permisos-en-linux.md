---
date: 2022-07-11T19:00:00.000Z
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
  - Linux
author: h0r4ci0
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

Vale, muy bien todo esto, pero ¿cómo puedo saber que permisos tienen los archivos?

Pues mi sencillo, con el comando `ls -l` o `ls --long`.
Ambos son los mismos parámetros solo que uno es la versión contraída y otro la versión extendida.


> Si quieres ver los permisos de archivos ocultos tendrás que añadir el parámetro -a o --all. `ls -la` o `ls --long --all`

![ls -l](http://telegra.ph/file/0deebdc8b0dc870600fe2.jpg)

- 🔴​ En la primera columna podemos ver los permisos asignados.
- 🟡​ En la segunda columna podemos ver el usuario propietario.


<!-- --page-break-- -->

