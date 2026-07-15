---
layout: post
title: "Resolent problemes del llibre: The Ultimate Mathematical Challenge"
subtitle: Respostes i explicacions als problemes plantejats
description: Contingut amb solucions i raonaments propis.
image: /assets/img/uploads/mathematics-pattern-background-design_260839-54.avif
optimized_image: /assets/img/uploads/mathematics-pattern-background-design_260839-54-1.avif
category: math-challenge
tags: maths
author: horacio
paginate: "true"
maths: "true"
---
# The Ultimate Mathematical Challenge

<figure style="text-align: center;">
    <img src="/assets/img/uploads/Math Challenge/book.jpg"
         alt="Portada del llibre"
         width="300">
    <figcaption>
        Figura 1: Portada del llibre 'The Ultimate Mathematical Challenge'
    </figcaption>
</figure>

En aquesta entrada del blog aniré pujant les respostes a cadascun dels problemes plantejats en el llibre. Jo el vaig comprar al Science Museum de Londres, però el podeu trobar a pràcticament qualsevol llibreria i en unes búsquedes per Anna's Archive també el podreu trobar per descarregar-lo. De totes maneres, com que els problemes del llibre s'han tret de diferents competicions de matemàtiques organitzades pel *United Kingdom Mathematics Trust (UKMT)*, aquests són d'origen públic, per tant aniré ficant els enunciats de cada problema.

Altra cosa a tindre en compte és la dificultat dels mateixos. Abans de cada exercici ficaré com de difícil m'ha paregut a mi, el temps que he invertit... així com altres aspectes rellevants. Després de ficar l'enunciat, ficaré dues respostes: la resposta numèrica directa i la meua resposta explicada.

El llibre es divideix per setmanes, amb un problema per a cada dia. En principi la graduació de la dificultat anirà pujant segons avancem, però pot haver-hi excepcions. Amb això crec que seria tot. Segons diu el llibre no es necessiten coneixements avançats ni res paregut. També hauríeu de ser capaços de fer-los sense ferramentes com calculadores o, evidentment, intel·ligència artificial. Dit això, comencem :3



# Problemes

## Week 1

### 1. How many van loads?

> A transport company's vans each carry a maximum load of 12 tonnes. A firm needs to deliver 24 crates each weighing 5 tonnes.  
> How many van loads will be needed to do this?

- **La meua dificultat:** 1/10
- **Temps invertit:** 5 min
- **Primer resolt:** 13 de juliol de 2026


<div class="callout answer">
  **✅ Solució numèrica**

  <p><strong>10 furgonetes.</strong></p>
</div>

<div class="callout solution">

<h4>📖 Solució explicada</h4>

<p>
Comencem considerant que cada furgoneta pot portar 12 tones. La firma necessita
enviar 24 caixes de 5 tones cadascuna. En total, enviarà
\(24\cdot5=120\) tones. Com que cada furgoneta pot transportar 12 tones,
necessitem
\[
\frac{120}{12}=10
\]
viatges.
</p>

</div>
### 2. An L-ish puzzle

> Beatrix places copies of the L-shape shown on a $4 \times 4$ board so that each L-shape covers exactly three cells of the board.

- **La meua dificultat:** 1/10
- **Temps invertit:** 5 min
- **Primer resolt:** 14 de juliol de 2026

<figure style="text-align: center;">
    <img src="/assets/img/uploads/Math Challenge/week 1/problem2_week1.png"
         alt="4x4 board and L-shape"
         width="400">
    <figcaption>
        Figura 2: 4x4 board and L-shape
    </figcaption>
</figure>

<div class="callout answer">

<h4>✅ Solució numèrica</h4>

<p><strong>5</strong></p>

</div>

<div class="callout solution">

<h4>📖 Solució explicada</h4>

<p>
Tenim un tauler de \(4\times4\), és a dir, un total de 16 caselles. Cada peça en forma de L n'ocupa 3, de manera que, com a màxim, en podríem col·locar
\[
\left\lfloor\frac{16}{3}\right\rfloor = 5.
\]
En efecte, és possible aconseguir-ho col·locant les peces als extrems del tauler de manera que només quede una única casella lliure al centre, tal com es mostra en la figura següent.
</p>

</div>

<figure style="text-align: center;">
    <img src="/assets/img/uploads/Math Challenge/week 1/sol_problem2_week1.png"
         alt="4x4 board and L-shape SOLUTION"
         width="400">
    <figcaption>
        Figura 3: 4x4 board and L-shape SOLUTION
    </figcaption>
</figure>

### 3. Granny's meter

> Yesterday, the reading on Granny's electricity meter was 098657. She was shocked to realise that all six of these digits are different.
> How many more units of electricity will she use before the next time all the digits are diffents?

- **La meua dificultat:** 1/10
- **Temps invertit:** 5 min
- **Primer resolt:** 15 de juliol de 2026

<div class="callout answer">
<h4>✅ Solució numèrica</h4>
  <p><strong>55 unitats</strong></p>
</div>

<div class="callout solution">

<h4>📖 Solució explicada</h4>

<p>
Hem de tindre en compte les desenes i les centenes. Vegem que el 0, 9 i 8 estan ocupats, aleshores hem de pujar fins a $0987xx$, on els últims dos nombres tampoc han de coincidir. Els dos nombres més pròxims que tenim lliures són el 1 i el 2, per tant: $098712$. Això són $55$ unitats.
</p>
</div>
