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
- vistes, plantilles o respostes
- models, entitats, esquemes o capa equivalent de dades
- BBDD real
- `migrations`
- `seeders` o mecanisme equivalent
- `2` casos d'ús funcionals de punta a punta
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

## Lliurables

Has d'entregar o deixar visible al repositori:

- codi del projecte en framework
- `Dockerfile`, `compose.yaml` o configuració equivalent
- `.env.example` o instruccions de variables
- migracions
- seeders o equivalent
- README actualitzat
- proves mínimes o checklist de verificació
- evidència dels `2` casos d'ús
- mapa curt del que queda pendent de migrar
- AI log si has usat IA de manera rellevant

## Microreptes

- `MP1`: arrencada del nou projecte.
- `MP2`: persistència mínima amb `migrations` i `seeders`.
- `MP3`: primer cas d'ús complet.
- `MP4`: segon cas d'ús o ampliació funcional.
- `MP5`: qualitat i estabilització.
- `MP6`: tancament tècnic.

Consulta el detall en [microreptes.md](microreptes.md).
