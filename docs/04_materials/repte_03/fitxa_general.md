# Fitxa general del Repte 3

## Què és `R3`

`R3` és la reconstrucció del teu projecte sobre un framework.

Vens de `R2`, on has treballat una base comuna en `PHP` amb flux de servidor, validació, estat o sessió, autenticació i una primera funcionalitat protegida.

Ara no es tracta de repetir el mateix sense pensar. Es tracta de construir una base nova en framework que siga arrancable, persistent i verificable.

## Què has de construir

Has de lliurar una aplicació en `Laravel`, `Symfony` o `NestJS` amb:

- Docker funcional
- projecte base en framework arrancable
- configuració mínima i `.env.example` o instruccions equivalents
- rutes
- controladors o equivalents
- vistes, plantilles o respostes generades pel framework
- models, entitats, esquemes o capa equivalent de dades
- BBDD real
- `migrations`
- `seeders` o mecanisme equivalent
- justificació del framework triat
- comparació breu amb una altra opció possible
- explicació d'un avantatge de separar presentació i lògica
- conjunt de dades real recuperat i usat en un flux
- `2` casos d'ús funcionals de punta a punta
- almenys `1` cas d'ús server-rendered amb vista o plantilla i resposta `HTML`
- validació mínima
- tractament bàsic d'errors
- proves mínimes
- README curt d'arrencada i ús

## Què no es demana

No es demana migrar tota l'aplicació antiga de `R2`.

Tampoc és suficient:

- copiar fitxers de `R2` dins del framework
- crear només carpetes amb noms correctes
- parlar d'`MVC` sense tindre un flux executable
- usar dades inventades en arrays quan toca BBDD
- carregar dades de demo manualment sense `seeders`
- fer només un cas d'ús
- fer un segon flux que siga només cosmètic
- deixar tots els fluxos com a `API` o JSON sense cap resposta renderitzada en servidor

## Casos d'ús obligatoris

Has de tindre `2` casos d'ús end-to-end.

El primer ha de ser heretat de `R2`. Pot ser una operació protegida, un registre del domini, una consulta amb sentit o un flux que ja existia i ara passa al framework.

El segon pot ser:

- un altre cas d'ús migrat de `R2`
- una ampliació funcional xicoteta i útil

El segon flux ha d'aportar valor real. Exemples:

- crear un recurs
- editar un recurs
- canviar un estat
- vore detall d'un recurs
- filtrar un llistat
- relacionar dues dades simples

Almenys un dels dos casos d'ús ha de ser **server-rendered**. Això vol dir que el framework rep la petició, el controlador obté o prepara dades, les passa a una vista o plantilla i el servidor retorna una pàgina `HTML` amb contingut real del projecte.

## Eines del framework que has d'usar

Segons l'stack, els noms canvien. Però has d'usar peces equivalents a:

| Necessitat | Laravel | Symfony | NestJS |
|---|---|---|---|
| Rutes | `routes/web.php`, `routes/api.php` | atributs o configuració de rutes | controladors i decorators |
| Controladors | Controllers | Controllers | Controllers |
| Vistes o resposta | Blade o JSON | Twig o JSON | JSON, templates si escau |
| Model de dades | Eloquent models | Doctrine entities | entities, schemas o models |
| Migracions | migrations | Doctrine migrations | migrations de l'ORM triat |
| Dades inicials | seeders | fixtures | seeders o script de càrrega |
| Validació | Form requests o validators | forms, constraints o validators | DTO + pipes |
| Proves | tests del projecte | PHPUnit o equivalent | Jest o equivalent |

## Decisió de framework

En `MP1` has de justificar la tria del framework.

La justificació ha de ser curta i concreta:

- quina opció tries
- amb quina altra opció la compares
- quin avantatge aporta per separar presentació i lògica
- com quedarà millor repartit el flux respecte a `R2`

No cal fer una comparativa llarga. Sí cal demostrar que no has triat el framework a cegues.

## Conjunt de dades real

En `MP2` no n'hi ha prou amb crear la BBDD.

Has de recuperar un conjunt de dades real i usar-lo en un flux funcional. Pot ser:

- un llistat
- un detall amb dades relacionades
- un filtre
- una resposta JSON
- una vista amb dades del domini

Si eixe conjunt de dades alimenta el cas server-rendered, la vista o plantilla ha de mostrar que les dades venen de la BBDD i no d'arrays inventats.

## Lliurables

Has d'entregar o deixar visible al repositori:

- codi del projecte en framework
- `Dockerfile`, `compose.yaml` o configuració equivalent
- `.env.example` o instruccions de variables
- migracions
- seeders o equivalent
- nota comparativa curta de framework
- esquema abans/després de responsabilitats
- evidència d'un conjunt de dades recuperat i usat
- evidència d'un flux server-rendered amb vista o plantilla i resposta `HTML`
- README actualitzat
- proves mínimes o checklist de verificació
- evidència dels `2` casos d'ús
- mapa curt del que queda pendent de migrar
- AI log si has usat IA de manera rellevant

## Microreptes

- `MP1`: arrencada del nou projecte, comparació de framework i avantatges de separació.
- `MP2`: persistència mínima amb `migrations`, `seeders` i conjunt de dades real usat en un flux.
- `MP3`: primer cas d'ús complet, preferentment com a flux server-rendered si és viable.
- `MP4`: segon cas d'ús o ampliació funcional amb canvi dinàmic de resposta.
- `MP5`: qualitat i estabilització.
- `MP6`: tancament tècnic.

Consulta el detall en [microreptes.md](microreptes.md).
