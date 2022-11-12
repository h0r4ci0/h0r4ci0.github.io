---
date: 2022-11-11T15:00:00.000Z
layout: post
title: Cómo instalar YAY (el asistente de AUR) en Arch Linux.
subtitle: 'Guia de instalación y uso de yay.'
description: >-
  Guia sobre el asistente de AUR, yay.
image: >-
  https://pingvinus.ru/cr_images/modelImage/article/3769-teaser-rgm4bhko9r.png
optimized_image: >-
  https://pingvinus.ru/cr_images/modelImage/article/3769-teaser-rgm4bhko9r.png
category: arch
tags:
  - Linux
  - Guía
  - Tutorial
  - Arch
author: h0r4ci0
paginate: true
---

¿Alguna vez has intentado instalar un paquete pero *pacman* no lo ha encontrado? Bien, pues puede que estés en el sitio indicado.

## ¿Qué es Yay?

Es bastante probable que si usas Arch Linux o lo has llegado a usar, conozcas que es *pacman*. Si no es así, *pacman* es un gestor de paquetes propio de Arch Linux y derivadas
que nos permite descargar paquetes de repositorios.

Vale, pues yay es algo parecido. Pero antes de entrar con yay vamos a ver lo que es AUR.

El AUR o *Arch User Repository*, es un repositorio manejado por la comunidad de usuarios de Arch Linux en la cuál encontramos diversos paquetes. Pero a diferencia de *pacman*, en el
AUR solo se alojan los repositorios, no existe un programa llamado AUR que compile y ejecute los programas alojados en los distintos repositorios. Para descargarlos necesitaríamos
llevar un proceso no muy costoso ni difícil, pero que sí puede confundir a los nuevos usuarios en Linux.

Y aquí es donde entra el asistente de AUR, yay (*AUR assistant*). Yay hace por nosotros ese trabajo de descargarnos el repositorio, compilarlo... dejándonos únicamente la tarea
de ejecutar su comando y escribir "y" para continuar.

> 💡 Además de Yay, existen más asistentes de AUR.
> Uno de los más conocidos es paru.

---

## Instalación de Yay.

1.- Lo primero que necesitaremos será instalar los paquetes `base-devel` y `git`. Es bastante probable que ya los tengáis, pero en caso contrario:

```bash
  sudo pacman -S base-devel

  sudo pacman -S git
```

2.- Ahora instalaremos Yay.

```bash
  cd /opt/

  sudo git clone https://aur.archlinux.org/yay.git
```

3.- En este paso cambiaremos el propietario del directorio ya que la instalación la hemos realizado con *sudo*.

```bash
  sudo chown -R $USER:users yay/
```

> ℹ️ En el caso de tener porblemas con la variable de entorno *$USER*, sustitúyela por tu nombre de usuario.
> Para consultarlo puedes usar el comando `whoami`

4.- Ahora nos tocaría acceder al repositorio y compilarlo.

```bash
  cd yay
  makepkg -si
```

> ℹ️ Siguiendo estos pasos estaremos instalando la versión **estable** de yay.


---

## Uso de yay.

El uso de yay es prácticamente idéntico al de *pacman*.

- **Instalación de una aplicación en específico:**

  ~~~bash
    yay -S paquete
  ~~~

- **Búsqueda de un paquete:**

  ~~~bash
    yay paquete
  ~~~

- **Actualizar paquetes:**

  ~~~bash
    yay -Syu
  ~~~

- **Desinstlar un paquete:**

  ~~~bash
    yay -R paquete
  ~~~

- **Desinstalar un paquete y todas sus dependencias:**

  ~~~bash
    yay -Rns paquete
  ~~~

<!-- --page-break-- -->
