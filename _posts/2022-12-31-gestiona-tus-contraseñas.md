---
date: 2023-01-02T09:00:00.000Z
layout: post
title: Refuerza la seguridad de tus cuentas y contraseñas.
subtitle: 'Gestión de contraseñas y refuerzo de seguridad para acceder a tus cuentas.'
description: >-
  Uso y gestión correcto de las contraseñas.
image: >-
  https://phantom-elmundo.unidadeditorial.es/c09db430de44bb16ffb1860adadeee8f/resize/473/f/webp/assets/multimedia/imagenes/2021/06/08/16231453334795.png
optimized_image: >-
  https://phantom-elmundo.unidadeditorial.es/c09db430de44bb16ffb1860adadeee8f/resize/473/f/webp/assets/multimedia/imagenes/2021/06/08/16231453334795.png
category: cybersecurity
tags:
  - guía
  - cybersecurity
author: horacio
paginate: true
---

Primero de todo y antes de nada, feliz año para los que me leáis durante estas fechas.

Este 2023 nos espera un año con una mayor digitalización y tenemos que estar preparados.

Uno de los aspectos más críticos actualmente en la ciberseguridad y en tecnología en general, es el tema de las contraseñas. Ese conjunto de números, letras, símbolos... que nos
dan acceso prácticamente a cualquier cosa. Desde tu cuenta de Netflix, pasando por tu correo, wi-fi, dispositivo móvil, amazon... hasta tu banco.

Muchas veces pensamos que nuestras claves son seguras o que es improbable que nos vayan a acceder a nostros a un servicio como puede ser nuestro correo... hasta que pasa. Entonces ya es tarde.

Como seres humanos que somos, hasta que no nos pasa, no empezamos a darle importacia. Así que espero que os toméis de una menera seria este tema y después de leer este artículo apliquéis
las medidas que veáis necesarias a vuestras contraseñas.


## Definición de contraseña segura.

Cuando hablamos de contraseñas seguras, suele haber un estándar de un conjunto de letras, símbolos, números... de como mínimo 12 caracteres. Algo de este estilo:

```bash
2Qf4*4t&Z6#C
`````````

Y hace falta recalcar que además la contraseña no debería de usarse en más de un servicio, además de no tenerla apuntada en un word, excel o bloc de notas. Por favor, mucha atención
a esto último. Por muy larga y segura que sea nuestra contraseña, si la usamos en más de un servicio y/o la apuntamos en un medio poco seguro como los antes mencionados, la contraseña
pierde prácticamente toda su seguridad.

Entoncecs os preguntaréis, ¿cómo cojones piensas que me voy a aprender una contraseña así? Tranquilos, que alguien ya ha pensado en ello y ha creado espacios "seguros" para
almacenar nuestras contraseñas. **Los gestores de contraseñas**. He puesto _"seguros"_ entre comillas porque ya sabéis que en esta vida, cuando hablamos de informática, no hay NADA seguro.
Pero algo siempre es mejor que nada.


## Gestores de contraseñas.

Los gestores de contraseñas son servicios que operan tanto en la nube como en local y nos permiten almacenar nuestras contraseñas de manera segura. Básicamente es como el Exel, Word...
pero destinado a almacenar contraseñas. A diferencia de estos, los gestores encriptan nuestras contraseñas para mantenerlas seguras.

Como he dicho antes, existen gestores que operan en local y en la nube, estas son las diferencias:

- Local: Al ser local, las contraseñas se almacenan en nuestro dispositivo de manera encriptada. De esta manera, nuestras contraseñas solo residen en nuestro PC y únicamente nosotros
somos los responsables de ellas.

- Nube: Al estar las contraseñas alojadas en la nube, podemos acceder a ellas desde cualquier dispositivo conectado a internet. Nuestras contraseñas son almacenadas y encriptadas en
la nube. Pero claro, al estar en la nube tenemos que confiar en el servicio en cuestión. Si estos tienen una filtración masiva de nuestros datos, no podemos hacer nada.

Yo personalmente uso Bitwarden en la versión gratuita como gestor, y mis contraseñas suelen ser de 120 caracteres. Pero existen más gestores, algunos que podéis usar son los siguientes:

### Gestores de contraseñas locales.

- [KeePass](https://keepass.info/)

### Gestores de contraseñas en la nube.

- [Bitwarden](https://bitwarden.com/)
- [1Password](https://1password.com/)
- [LastPass](https://www.lastpass.com/)

He dudado en si poneros o no LastPass, este servicio ha tenido brechas de seguridad bastante importantes. Por lo que ojo con él.

Y por su puesto que existen más servicios, pero yo no los he probado. Si tenéis curiosidad, [aquí](https://www.xataka.com/basics/gestores-contrasenas-que-cuales-populares-como-utilizarlo) os dejo un artículo al respecto.

Como nuestras contraseñas se encriptan, necesitaremos una única contraseña para poder acceder a todas las demás. A esta contraseña se le conoce como **contraseña maestra** y debe de ser
bastante segura, ya que a partir de esta podremos acceder al resto.

Así dicho suena bastante inseguro, ya que podemos pensar que si nos consiguen esa contraseña, tendrán acceso a todas las demás. Y eso es así, pero alguien ha pensado en ello y nos
ha dado una solución, el **2FA (Segundo Factor de Autenticación)**.


## 2FA (Segundo Factor de Autenticación).

Este es un sistema que nos permite añadirle una capa extra de seguridad a nuestras cuentas.

Consiste en que cuando iniciamos sesión con nuestro usuario y contraseña en un servicio, además de que el servicio nos solicite nuestras credenciales, nos solicitará un código que
se regenera cada 30 segundos que podremos ver desde nuestro dispositivo móvil.

![Figure 2: Google Authenticator](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.FyxYeq3x3fKGzkbbsP7VvQHaFj%26pid%3DApi&f=1&ipt=841650e7a9df1299ccb0cc65e7d59d8e428a6fd3607210e43ac56e3461ae4d33&ipo=images)

Estos servicios, al igual que los gestores, existen de manera local y en la nube. Yo aquí os voy a recomendar usar uno en la nube por el siguiente motivo:

Al tener tus claves de 2FA en local, si pierdes el móvil o desinstalas la aplicación donde están tus claves de 2FA, pierdes totalmente el acceso a ellas. Y es muy probable que también pierdas
el acceso a varios de tus servicios ya que no dispondrás de estas claves para poder desactivar el método de 2FA. Por lo que ya no podrás volver a iniciar sesión en nuevos dispositivos.

Aquí te dejo dos aplicaciones para poder gestionar tus códigos de 2FA.

### Segundo Factor de Autenticación (Local).

- [Google Authenticator](https://support.google.com/accounts/answer/1066447?hl=en&co=GENIE.Platform%3DAndroid&co=GENIE.Platform%3DiOS)

### Segundo Factor de Autenticación (Nube).

- [Authy](https://support.authy.com/hc/en-us/articles/115001943608-Welcome-to-Authy-)

Quiero recalcar que además de añadirle esta seguridad extra a nuestro gestor de contraseñas, también es recomendable añadirla al resto de servicios como pueden ser gmail, instagram...

> Y para finalizar, si tenéis cualquier duda, podéis ponérmela por los comentarios aquí abajo o bien a mi correo [horamalean@protonmail.com](mailto:horamalean@protonmail.com).
>
> ¡Feliz año!
<!-- --page-break-- -->
