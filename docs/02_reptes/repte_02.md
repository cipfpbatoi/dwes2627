# Repte 2. Processament, estat i funcionalitat protegida

## Finalitat del repte

En este repte el projecte deixa de ser només una base funcional i passa a comportar-se més com un sistema real.

Ara no n’hi ha prou amb rebre una dada i respondre. El sistema ha de ser capaç de:

- tractar informació d’entrada amb més criteri
- aplicar lògica bàsica de programació
- mantindre estat quan faça falta
- gestionar autenticació
- protegir una primera funcionalitat real del domini

## Context professional

El projecte ja té una base executable i un primer flux mínim.

Ara l’equip ha de fer un pas important: construir una funcionalitat del producte que no estiga oberta a qualsevol situació, sinó controlada per l’estat del sistema o per la identitat de l’usuari.

En entorns professionals, este és un moment clau: passar d’un backend que “respon” a un backend que “gestiona comportament real”.

## Encàrrec

Has de fer evolucionar el projecte del Repte 1 fins a arribar a una primera funcionalitat protegida.

El sistema ha de ser capaç de:

- rebre dades
- tractar-les en servidor
- aplicar lògica bàsica
- mantindre informació d’estat quan siga necessari
- comprovar condicions d’accés
- permetre o impedir una acció real del producte

## Què has de construir

El repte ha d’incloure, com a mínim:

- un formulari o entrada de dades real
- recuperació i tractament de la informació en servidor
- ús de decisions, estructures de dades o funcions quan tinga sentit
- una evidència de manteniment d’estat
- autenticació funcional o mecanisme equivalent
- una operació del projecte protegida
- tractament mínim d’errors
- proves o verificacions bàsiques del flux

## Idea clau del repte

Este repte **no és només fer login**.

El valor real està en arribar a una situació com esta:

- l’usuari introduïx dades
- el sistema les rep i les tracta
- el sistema aplica lògica
- el sistema manté alguna informació d’estat quan toca
- el sistema comprova qui és l’usuari o en quina situació està
- el sistema permet o impedix una acció real del producte

## Producte final esperat

Al final del repte hauries de tindre una primera funcionalitat del projecte que estiga realment protegida.

Això vol dir que hi ha d’haver:

- un cas correcte
- un cas incorrecte o denegat
- una explicació clara de què controla el sistema
- evidència de què passa quan l’acció està permesa i quan no

## Seqüència de treball recomanada

### 1. Formulari base i recuperació de dades

Has de construir una entrada de dades funcional i demostrar que el backend rep correctament la informació.

Això implica, com a mínim:

- camps útils
- recepció real de dades
- una resposta observable del sistema

### 2. Processament bàsic de la petició

Has de tractar la informació en servidor de manera clara i funcional.

Això vol dir que hi ha d’haver:

- variables amb sentit
- operacions bàsiques
- tractament del flux
- una resposta construïda a partir de les dades rebudes

### 3. Lògica del flux

Has d’aplicar lògica bàsica de programació allà on faça falta.

Per exemple:

- decisions
- estructures iteratives
- arrays o estructures equivalents
- funcions útils

No es tracta d’afegir-les per decorar, sinó perquè la funcionalitat ho necessite.

### 4. Estat, sessió o mecanisme equivalent

Has de demostrar que el sistema pot mantindre informació entre interaccions quan siga necessari.

Això pot implicar, segons l’stack:

- sessió
- cookies
- un altre mecanisme equivalent

El més important és que pugues explicar:

- què es guarda
- per què es guarda
- quan es recupera
- quan es deixa de considerar vàlid

### 5. Autenticació i funcionalitat protegida

Has d’implementar una primera funcionalitat del projecte que només puga executar-se si es complixen unes condicions.

Ha d’existir:

- identificació o autenticació funcional
- comprovació d’accés
- una acció real del domini protegida
- almenys un cas autoritzat
- almenys un cas denegat

### 6. Tancament, prova i revisió

Has de deixar el repte preparat per a revisió.

Això implica:

- prova del cas correcte
- prova d’un cas d’error
- documentació mínima del flux
- preparació per al checkpoint o la defensa

## Evidències obligatòries

Per considerar complet el repte, hauràs d’aportar com a mínim:

- repositori actualitzat
- commits amb sentit
- issue principal del repte o registre equivalent
- formulari o entrada funcional
- tractament real de dades en servidor
- evidència d’ús de lògica bàsica
- evidència de manteniment d’estat
- autenticació funcional o equivalent
- una operació protegida del projecte
- un cas positiu i un cas negatiu
- prova o verificació bàsica del flux
- documentació mínima del repte

## Què s’entén per funcionalitat protegida

No és suficient tindre un formulari de login aïllat.

Hi ha d’haver una acció real del producte que només es puga fer en determinades condicions.

Per exemple:

- crear un recurs
- modificar una informació
- accedir a una part restringida
- executar una operació només per a un tipus concret d’usuari
- impedir una acció si no es complix una regla del sistema

## Què es comprovarà

Es comprovarà si:

- el sistema rep i tracta realment dades
- hi ha lògica de servidor amb sentit
- diferencies bé entre tractament de dades, estat i autenticació
- la funcionalitat protegida és real
- els errors no queden amagats
- pots demostrar un cas correcte i un cas incorrecte
- pots explicar el flux complet

## Checkpoint del repte

En el checkpoint hauràs de poder mostrar:

- com entra la informació al sistema
- què fa el servidor amb eixa informació
- quina lògica s’està aplicant
- què es guarda com a estat, si és el cas
- com es comprova l’accés
- quina funcionalitat queda protegida
- què passa quan el cas és incorrecte

## Defensa tècnica breu

En la defensa o revisió hauràs de poder respondre preguntes com:

- quina diferència hi ha entre estat i autenticació?
- en quin punt es decidix si una acció està permesa o no?
- què passa quan les dades són incorrectes?
- què guarda el sistema i amb quina finalitat?
- quina part del flux és pública i quina és protegida?

## Ús de la IA en este repte

La IA et pot ajudar, per exemple, a:

- proposar estructures de formulari
- suggerir validacions
- revisar errors
- generar esquelets inicials de flux
- proposar casos de prova
- ajudar a documentar el comportament

Però has de poder:

- explicar el codi
- validar el que fa
- demostrar que funciona
- corregir-lo si falla
- justificar per què la funcionalitat protegida està construïda així

## Errors habituals

Convindria evitar estos errors:

- fer només el cas feliç
- confondre estat amb autenticació
- tindre login però no cap funcionalitat real protegida
- mostrar dades sense tractar-les de veritat
- afegir lògica artificial només per cobrir apartats
- portar una solució que no pots explicar

## Quan es considera superat

Este repte es considera superat quan:

- el sistema rep i tracta dades en servidor
- hi ha lògica bàsica aplicada amb sentit
- existix una evidència clara de manteniment d’estat
- l’autenticació o control d’accés és funcional
- hi ha una operació real del projecte protegida
- es poden demostrar un cas positiu i un cas negatiu
- el treball està prou documentat i traçat
- pots defendre tècnicament el flux complet

## Què prepara este repte

Este repte deixa el producte preparat per al següent pas del curs:

- millorar l’arquitectura
- separar responsabilitats
- consolidar persistència
- i professionalitzar una funcionalitat que ja funciona, però encara ha de ser més mantingable