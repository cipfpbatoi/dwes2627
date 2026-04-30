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
- vistes, plantilles o respostes
- models, entitats, esquemes o capa equivalent de dades
- BBDD real
- `migrations` per crear l'estructura de dades
- `seeders` o equivalent per carregar dades inicials
- `2` casos d'ús end-to-end
- almenys `1` cas d'ús migrat de `R2`
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

El codi de `R2` és punt de partida i referència. La nova via principal del projecte en `R3` és el framework.

## Stacks base

Els stacks base són:

- `Laravel`
- `Symfony`
- `NestJS`

La nomenclatura canvia segons l'stack, però el criteri és el mateix: ruta, controlador, capa de dades, persistència real, resposta visible, validació, error i prova.

## Microreptes

`R3` es treballa en 6 microreptes:

| Microrepte | Producte principal |
|---|---|
| `MP1` Arrencada del nou projecte | Docker, framework, `.env`, ruta mínima i abast dels 2 fluxos |
| `MP2` Persistència mínima | BBDD, `migrations`, `seeders` i primera lectura real |
| `MP3` Primer cas d'ús complet | flux heretat de `R2` funcionant en framework |
| `MP4` Segon cas d'ús o ampliació | segon flux real, migrat o ampliació funcional útil |
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
- `.env.example` o instruccions de configuració
- `migrations`
- `seeders` o equivalent
- dades de demostració reproduïbles
- prova dels `2` casos d'ús funcionals
- prova que almenys `1` flux ve de `R2`
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
4. executar els `2` casos d'ús
5. veure una validació o error controlat
6. executar o revisar proves mínimes
7. entendre què s'ha migrat, què s'ha ampliat i què queda pendent

Si falta Docker, BBDD reconstruïble, seeders o els `2` fluxos, el repte encara no està tancat.
