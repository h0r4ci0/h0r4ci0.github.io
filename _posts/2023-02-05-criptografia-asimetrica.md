---
date: 2023-02-05T19:30:00.000Z
layout: post
title: Criptografía asimétrica o criptografía de clave pública.
subtitle: 'Entiende cómo funciona la criptografía asimétrica.'
description: >-
  Funcionamiento y uso de las claves públicas y privadas.
image: >-
  https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.alvarovf.com%2Fassets%2Fimages%2Fbanners%2Fcifrado.jpg
optimized_image: >-
  https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.alvarovf.com%2Fassets%2Fimages%2Fbanners%2Fcifrado.jpg
category: cybersecurity
tags:
  - cryptography
  - cybersecurity
author: horacio
paginate: true
---

Actualmente la mayor parte del tráfico de internet encriptado, utiliza este sistema de criptografía basado en clave pública y clave privada. Es más, ahora mismo estás haciendo
uso de este sistema al acceder a mi blog.

## ¿Qué es la criptografía asimétrica?

La criptografía asimétrica o criptografía de clave pública es un método que se basa en la creación de dos llaves, una **llave pública** y una **llave privada** para encriptar datos.
Estas claves se generan a la par a través de un algoritmo matemático bastante complejo, pero de esto ya hablaremos después.


### Llave pública y llave privada.

Hemos dicho que este método se basa en la creación de estas dos llaves, bien, pues estas llaves tienen como función <u>encriptar</u> y <u>descencriptar</u> datos. Aunque una de ellas tiene una función más.

Concretamente:

- **Llave pública**: Se utiliza para **encriptar** los datos.
- **Llave privada**: Se utiliza para **desencriptar** y **firmar** los datos.

¿Qué es eso de firmar los datos? Uno de los puntos fuertes del sistema asimétrico es que nos permite verificar que la información proviene de la persona que nosotros
esperamos. Esto sucede porque cuando encriptamos los datos, a la vez estamos firmándolos con nuestra clave privada. Entonces el receptor del mensaje puede coger nuestra
clave pública y verificar la identidad del emisor.

### ¿Cómo funciona?

Vamos a ver de manera superficial el funcionamiento de este sistema:

1. Se generan dos claves, una pública y una privada. Estas mantienen una relación matemática.
2. A través de la clave pública del destinatario se encripta una información y a través de la privada se firma.
3. Se envia la información previamente encriptada y firmada al destinatario a través de internet.
4. El destinatario desencripta la información con su clave privada.

<img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fnic.ar%2Fsites%2Fdefault%2Ffiles%2Finline-images%2FCriptografia-Ambas-Nota.png">

En esta imagen podemos ver de manera gráfica el proceso de encriptación y desencriptación.

Básicamente si nosotros queremos enviarle un mensaje privado a Carlos, necesitamos tener la clave pública de Carlos. Como es de esperar, tener la clave pública no supone ningún riesgo,
por algo se llama "pública". Una vez que Carlos nos da su clave pública, nosotros podemos usarla para encriptar una información. Una vez encriptada, podremos pasarle el output
(la info. encriptada) por un medio no seguro, ya que aunque sea interceptada, para ojos de quien no tenga la clave privada de Carlos, será una cadena con caracteres aleatorios y sin
sentido.

Otro ejemplo más. Imagina que queremos enviarle la contraseña del netflix a nuestro primo Ernesto, pero no queremos que nadie más la tenga, entonces para
ello vamos pedirle a Ernesto que genere sus claves y nos pase la pública. Cuando tengamos la pública, a través de unos cálculos que realizará nuestro
ordenador, encriptará la contraseña de manera que de verse así `miContraseña1234Netflis` pasará a verse algo así `'��<;giHtvQ
           SHm
a�LAezqn�-[�}
    J'fH=`

Una vez esté encriptada podremos pasarle ese "texto" a Ernesto, y Ernesto con mi clave pública comprobará que yo soy efectivamente su primo. Entonces
con su clave privada desencriptará la cadena esa obteniendo `miContraseña1234Netflis`.

<center><img src="https://telegra.ph/file/6020c2acfbc2ab5de07de.png" width="5000" alt="Esquema gráfico sobre el ejemplo"></center>

Es posible que pienses que es un proceso relativamente sencillo, sin embargo por detrás hay unas operaciones matemáticas bastante complejas que son las encargadas de generar las claves
y garantizar la seguridad e integridad de nuestra información encriptada. A estas operaciones se les llama algoritmos.

### Algoritmos.

Los algoritmos más conocidos y usados son los siguientes:

- **RSA**: Este es uno de los más antiguos y se sigue usando bastante actualmente. RSA se basa en el [teorema de los números primos](https://es.wikipedia.org/wiki/Teorema_de_los_n%C3%BAmeros_primos).
- **Eliptic Curve Cryptography (ECC)**: Este está basado en [curvas elípticas](https://es.wikipedia.org/wiki/Criptograf%C3%ADa_de_curva_el%C3%ADptica) y es bastante popular debido a su eficiencia y seguridad.

Aquí es donde está la "magia" matemática que nos permite cifrar de manera segura información. A día de hoy es totalmente imposible romper la seguridad de uno de estos cifrados
debido a la complejidad matemática por la que están formados. Claro está, a menos que no se tenga acceso a la clave privada, en dicho caso estás jodido.

### Ventajas y desventajas de la encriptación asimétrica.

Todo parecía muy bonito, no? Bueno, pues como todo, no es perfecto.

#### Ventajas.

- **Seguridad**: La criptografía asimétrica es mucho más segura que la [criptografía simétrica](https://es.wikipedia.org/wiki/Criptograf%C3%ADa_sim%C3%A9trica).
- **Verificación de la identidad**: La criptografía asimétrica también se utiliza para autenticar la veracidad del remitente.
- **No requiere confianza previa**: Al tratarse de un sistema que no funciona por contraseñas, ninguna de las partes tiene que facilitar ninguna contraseña y confiar en que la otra
parte la mantendrá segura.

#### Desventajas.

- **Menor velocidad**: La criptografía asimétrica es más lenta que la criptografía simétrica, especialmente cuando se trata de grandes cantidades de datos.
- **Mayor requisito de recursos**: Tanto al encriptar como al desencriptar se requieren más recursos computacionales para hacer los cálculos necesarios.
- **Mayor complejidad**: Al ser mucho más complejo que la criptografía simétrica, puede dificultar su uso.

### ¿Y si combinamos la criptografía asimétrica y la simétrica aprovechando las ventajas de cada uno?

Pues así es, esto es posible y de hecho se usa bastante. Este método recibe el nombre de sistema híbrido.

Los sistemas de cifrado híbridos se basan en la combinación de criptografía asimétrica junto con la simétrica para proporcionar seguridad y eficiencia en la encriptación y transmisión
de la información. En un sistema de estos, la criptografía asimétrica se usa para intercambiar una clave simétrica de manera segura, y la criptografía simétrica se utiliza para cifrar
y descifrar la información de manera eficiente.

La combinación de estos dos tipos de cifrado aprovecha la seguridad de los sistemas asimétricos y la eficiencia de los sistemas simétricos.


### Usos de la criptografía asimétrica.

Como he dicho al principio de este artículo, este sistema es el más usado a la hora de encriptar información por internet. Uno de los casos más comunes en los que se usa
este sistema es en el envío de correos electrónicos. Este envío de información usa el método [S/MIME](https://es.wikipedia.org/wiki/S/MIME).

Otro de los usos que se le da es en las firmas digitales y algunos protocolos criptográficos como HTTPS, SSL/TLS,SSH...

También podemos verlo cuando usamos aplicaciones de mensajería instantánea como Telegram, Signal, WhatsApp... aunque de esta última no estoy muy seguro.

## Conclusión y despedida.

En conclusión, a día de hoy transmitir información de manera privada y segura se ha vuelto bastante difícil, pero gracias a estos sistemas de encriptación podemos añadirle
esa capa extra de seguridad a la información. En un próximo artículo estaré hablando del algoritmo RSA que se usa para generar claves públicas y privadas y de la complejidad
que este tiene hasta tal punto que a día de hoy es imposible de romper.
<!-- --page-break-- -->
