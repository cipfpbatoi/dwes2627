# Repte 3. Reconstrucció en framework i persistència real

## Finalitat del repte

En `R3` deixes de treballar sobre la base comuna de `R2` i reconstrueixes el projecte sobre un framework.

No es demana migrar tota l'aplicació antiga. Es demana construir una base real, arrancable i verificable en `Laravel`, `Symfony` o `NestJS`, amb base de dades real i `2` casos d'ús funcionals.

La idea central és:

> Reconstrucció del projecte en framework amb base operativa real, persistència mínima real i primers fluxos funcionals verificables.

## Què has de construir

Al final de `R3` has de poder mostrar:

- projecte en framework arrancable
- Docker funcional
- configuració mínima i `.env.example` o instruccions equivalents
- rutes reals
- controladors o equivalents
- vistes, plantilles o respostes generades pel framework
- models, entitats, esquemes o capa equivalent de dades
- BBDD real
- `migrations` per crear l'estructura de dades
- `seeders` o equivalent per carregar dades inicials
- comparació curta del framework triat amb una altra opció possible
- esquema abans/després de responsabilitats respecte a `R2`
- recuperació i ús d'un conjunt de dades real dins d'un flux funcional
- `2` casos d'ús end-to-end
- almenys `1` cas d'ús migrat de `R2`
- almenys `1` cas d'ús server-rendered amb vista o plantilla i resposta `HTML` generada en servidor
- validació mínima
- tractament bàsic d'errors
- proves mínimes
- documentació curta d'arrencada i ús

## Què no es demana

No es demana:

- migrar tota l'aplicació de `R2`
- copiar fitxers antics dins del framework i prou
- fer teoria sobre `MVC` sense producte executable
- crear només un esquelet del framework
- usar BBDD amb dades carregades a mà
- fer un segon flux que siga només una pantalla o un canvi visual
- formular-ho tot com a `API` o JSON sense cap pàgina renderitzada en servidor

El codi de `R2` és punt de partida i referència. La nova via principal del projecte en `R3` és el framework.

## Stacks base

Els stacks base són:

- `Laravel`
- `Symfony`
- `NestJS`

La nomenclatura canvia segons l'stack, però el criteri és el mateix: ruta, controlador, capa de dades, persistència real, resposta visible, validació, error i prova. En almenys un flux, la resposta visible ha de ser una pàgina o plantilla renderitzada pel servidor.

## Microreptes

`R3` es treballa en 6 microreptes:

| Microrepte | Producte principal |
|---|---|
| `MP1` Arrencada del nou projecte | Docker, framework, `.env`, ruta mínima, comparació de stack i esquema abans/després |
| `MP2` Persistència mínima | BBDD, `migrations`, `seeders` i conjunt de dades real usat en un flux |
| `MP3` Primer cas d'ús complet | flux heretat de `R2` funcionant en framework, preferentment com a cas server-rendered |
| `MP4` Segon cas d'ús o ampliació | segon flux real, migrat o ampliació funcional útil amb canvi dinàmic de resposta |
| `MP5` Qualitat i estabilització | validació, errors, proves i revisió d'estructura |
| `MP6` Tancament tècnic | README, demo, decisions i mapa del que queda pendent |

El detall operatiu està en els materials de `R3`:

- [Fitxa general del Repte 3](../04_materials/repte_03/fitxa_general.md)
- [Enunciats dels microreptes](../04_materials/repte_03/microreptes.md)
- [Suport tècnic mínim](../04_materials/repte_03/suport_tecnic.md)
- [Checklists d'alumnat](../04_materials/repte_03/checklists.md)

## Evidències obligatòries

Has d'aportar:

- repositori actualitzat
- commits significatius
- issue o llista de tasques de `R3`
- Docker i framework arrancables
- justificació del framework triat i avantatge de separar presentació i lògica
- comparació breu amb una altra opció de framework
- esquema abans/després de responsabilitats entre `R2` i `R3`
- `.env.example` o instruccions de configuració
- `migrations`
- `seeders` o equivalent
- dades de demostració reproduïbles
- consulta o recuperació d'un conjunt de dades real
- ús d'eixe conjunt de dades en un llistat, detall, filtre o resposta
- prova dels `2` casos d'ús funcionals
- prova que almenys `1` flux ve de `R2`
- evidència que almenys `1` flux passa dades del controlador a una vista o plantilla i genera `HTML` en servidor
- validació i errors mínims
- proves mínimes o checklist verificable
- README curt d'arrencada i ús
- mapa del que quedaria per migrar
- `AI log` si has usat IA de manera rellevant

## Quan es considera superat

`R3` es considera superat quan una altra persona pot:

1. arrancar el projecte amb les instruccions del README
2. crear la BBDD amb `migrations`
3. carregar dades inicials amb `seeders` o equivalent
4. recuperar un conjunt de dades real i vore'l dins d'un flux funcional
5. executar els `2` casos d'ús
6. vore almenys `1` cas d'ús server-rendered amb dades reals en una vista o plantilla
7. veure una validació o error controlat
8. executar o revisar proves mínimes
9. entendre què s'ha migrat, què s'ha ampliat i què queda pendent

Si falta Docker, BBDD reconstruïble, seeders, els `2` fluxos o el cas server-rendered, el repte encara no està tancat.
