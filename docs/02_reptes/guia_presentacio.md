# Guia de presentació dels reptes

Esta guia t'ajuda a preparar l'entrega i la defensa d'un repte sense haver de rellegir tota la rúbrica.

La pàgina del repte explica **què has de construir**. Les guies d'avaluació expliquen **amb quin criteri es revisarà**. Esta guia et dona una checklist pràctica per preparar **què mostraràs i com ho defensaràs**.

## Abans d'entregar qualsevol repte

| Revisió | Fet |
|---|---|
| El projecte arranca seguint el `README` o les instruccions documentades. | ☐ |
| La funcionalitat principal no és només decorativa. | ☐ |
| Hi ha una prova o evidència del funcionament real. | ☐ |
| Hi ha commits, issue o registre del treball fet. | ☐ |
| Puc explicar una decisió tècnica important. | ☐ |
| He revisat la guia d'avaluació dels microreptes corresponents. | ☐ |
| Si he usat IA de manera rellevant, he deixat rastre i he validat el resultat. | ☐ |

## Demo recomanada

1. Obrir el repositori.
2. Mostrar el `README` o instruccions d'arrencada.
3. Arrancar el projecte o mostrar la prova reproduïble.
4. Executar el cas principal del repte.
5. Mostrar un error, cas denegat o fallada controlada quan corresponga.
6. Ensenyar on està documentada la prova.
7. Explicar una decisió tècnica.
8. Indicar què queda preparat per al repte següent.

## Repte 1

| Bloc | Què has de poder mostrar |
|---|---|
| Repositori | Repositori actualitzat, usable i amb commits significatius. |
| Decisió inicial | Fitxa breu de `R1M1`, justificació del stack i dubtes tècnics. |
| Entorn executable | Docker Compose, `Dockerfile` o equivalent funcional. |
| Punt d'entrada | Ruta, vista, endpoint, landing mínima o healthcheck servit pel backend. |
| Documentació | `README` amb requisits, arrencada, parada, ports, URL i resultat esperat. |
| Verificació | Captura, log, URL o prova mínima del servei en marxa. |
| Defensa | Què has fet, per què i com prepara `R2`. |

## Repte 2

| Bloc | Què has de poder mostrar |
|---|---|
| Entrada i validació | Formulari o entrada equivalent, recuperació real de dades, error visible i correcció. |
| Processament | Lògica de servidor aplicada al producte amb variables, condicions, bucles, arrays o funcions. |
| Conservació | Informació correcta guardada o conservada i reutilitzada després dins del projecte. |
| Estat | Sessió, cookies o mecanisme equivalent si el flux ho necessita. |
| Accés protegit | Autenticació funcional i operació real protegida vinculada al domini. |
| Mini API | Endpoint d'autenticació amb `JSON`, resposta `200`, resposta `401` i ruta protegida. |
| POO/Composer | `composer.json` o equivalent, classe pròpia i prova unitària mínima. |
| BBDD mínima | Connexió, taula, alta, lectura, consultes preparades i instruccions de reproducció. |

## Repte 3

| Bloc | Què has de poder mostrar |
|---|---|
| Arrencada | Docker i framework arrancables, `.env.example` o instruccions de configuració. |
| Persistència | Migracions o equivalent, dades inicials reproduïbles i recuperació de dades reals. |
| Fluxos | `2` casos d'ús end-to-end, amb almenys `1` flux migrat de `R2`. |
| Server-rendered | Un flux que passa dades del controlador a una vista o plantilla i genera `HTML` en servidor. |
| Accés protegit | Login o autenticació equivalent, acció protegida, cas autoritzat i cas denegat. |
| Qualitat | Validació, errors controlats i proves mínimes o checklist verificable. |
| Criteri tècnic | Comparació de framework, esquema abans/després i mapa del que queda pendent. |

## Repte 4

| Microrepte | Què has de poder mostrar |
|---|---|
| `R4M1` | Contracte d'API amb mapa d'endpoints i errors. |
| `R4M2` | Endpoint funcional amb resposta estructurada i prova del cas correcte. |
| `R4M3` | Petició autoritzada i petició denegada. |
| `R4M4` | Consumidor, script o col·lecció amb cas correcte i error. |
| `R4M5` | Documentació executable, registre de proves i commits del procés. |

## Repte 5

| Microrepte | Què has de poder mostrar |
|---|---|
| `R5M1` | Comparativa de fonts, justificació, mapa inicial i riscos. |
| `R5M2` | Connector funcional, resposta real i cas d'error controlat. |
| `R5M3` | Taula de mapping, codi de transformació i comparativa abans/després. |
| `R5M4` | Funcionalitat híbrida integrada, demo completa i commit comentat. |
| `R5M5` | Proves, mapa final, documentació tècnica, `AI log` si cal i mini defensa. |

## Preguntes de defensa

- Quina funcionalitat real has construït?
- Quin cas correcte pots demostrar?
- Quin error, cas denegat o fallada controlada pots demostrar?
- Quina decisió tècnica has pres i per què?
- On es veu que el backend fa treball real?
- Quina evidència mostra que el resultat és reproduïble?
- Què queda preparat per al repte següent?

Per al criteri detallat, consulta sempre les [guies d'avaluació dels microreptes](../03_com_s_avalua/rubriques/index.md).
