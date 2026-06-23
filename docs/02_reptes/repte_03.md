# Repte 3. Reconstrucció en framework i persistència real

## Finalitat del repte

En `R3` deixes de treballar sobre la base comuna de `R2` i reconstrueixes el projecte sobre un framework.

No es demana migrar tota l'aplicació antiga. Es demana construir una base real, arrancable i verificable en `Laravel`, `Symfony` o `NestJS`, amb base de dades real i `2` casos d'ús funcionals.

La idea central és:

> Reconstrucció del projecte en framework amb base operativa real, persistència mínima real i primers fluxos funcionals verificables.

## 🌟 Via 9→10 en este repte

Este repte també té una via d'excel·lència `9→10`: **primer has de tancar bé el nucli i després pots obrir una ampliació amb valor tècnic real**. La secció completa està al final del repte.

## Vista ràpida

| Bloc | Què has de deixar fet |
|---|---|
| Projecte base | Framework arrancable amb Docker, configuració mínima i `.env.example` o instruccions equivalents. |
| Arquitectura | Rutes, controladors o equivalents, vistes/plantilles/respostes i capa de dades pròpia de l'stack. |
| Persistència | BBDD real, migracions o mecanisme equivalent, fixtures/seeders o script de dades inicials. |
| Criteri tècnic | Comparació curta del framework triat i esquema abans/després de responsabilitats respecte a `R2`. |
| Fluxos | `2` casos d'ús end-to-end, almenys `1` migrat de `R2` i almenys `1` server-rendered amb `HTML` generat en servidor. |
| Accés i qualitat | Autenticació, acció protegida, autorització amb cas autoritzat i denegat, validació, errors i proves mínimes. |
| Documentació | README curt d'arrencada, ús i mapa del que queda pendent. |

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

Per evitar confusions, estes equivalències compten igual si estan ben aplicades:

| Criteri comú | Laravel | Symfony | NestJS |
|---|---|---|---|
| Ruta | route | route | controller route |
| Controlador | controller | controller | controller |
| Vista/resposta | Blade/view | Twig/Response | template/response o resposta server-rendered equivalent |
| Model/capa de dades | Eloquent model | Doctrine entity/repository | Prisma/TypeORM entity, schema o service |
| Migració d'esquema | migration | Doctrine migration | Prisma/TypeORM migration o equivalent |
| Dades inicials | seeder | fixture | seed script o seeder |
| Validació | Form Request/validator | Validator/Form | DTO + class-validator o equivalent |
| Protecció d'accés | middleware, guard, policy | security, voter, access control | guard, middleware, decorator o pipe |
| Configuració | `.env` | `.env` | `.env` |

## Microreptes

`R3` es treballa en 7 microreptes:

| Microrepte | Producte principal | Autocorrecció |
|---|---|---|
| `R3M1` Arrencada del nou projecte | Docker, framework, `.env`, ruta mínima, comparació de stack i esquema abans/després | `r3-s01-arrencada-nou-projecte` |
| `R3M2` Persistència mínima | BBDD, migracions o equivalent, dades inicials reproduïbles i conjunt de dades real usat en un flux | `r3-s02-persistencia-minima-migrations-seeders` |
| `R3M3` Primer cas d'ús complet | flux heretat de `R2` funcionant en framework, preferentment com a cas server-rendered | `r3-s03-primer-cas-us-complet` |
| `R3M4` Segon cas d'ús o ampliació | segon flux real, migrat o ampliació funcional útil amb canvi dinàmic de resposta | `r3-s04-segon-cas-us-ampliacio-funcional` |
| `R3M5` Autenticació i autorització | acció significativa protegida amb middleware, guard, voter, policy o equivalent | `r3-s05-autenticacio-autoritzacio-middleware` |
| `R3M6` Qualitat i estabilització | validació, errors, proves i revisió d'estructura | `r3-s06-qualitat-estabilitzacio` |
| `R3M7` Tancament tècnic | README, demo, decisions i mapa del que queda pendent | `r3-s07-tancament-tecnic` |

Entre `R3M2` i `R3M3` hi haurà un taller formatiu, `R3S2B`, per comprovar equivalències entre frameworks i auditar el projecte abans del primer flux complet. No és un microrepte amb nota separada, però la taula d'equivalències i la microtasca resultant poden ajudar-te a millorar `R3M3`, `R3M5`, `R3M6` i el README final.

El detall operatiu està en els materials de `R3`:

- [Fitxa general del Repte 3](../04_materials/repte_03/fitxa_general.md)
- [Enunciats dels microreptes](../04_materials/repte_03/microreptes.md)
- [Suport tècnic mínim](../04_materials/repte_03/suport_tecnic.md)
- [Checklists d'alumnat](../04_materials/repte_03/checklists.md)

## Checklist final del Repte 3

| Bloc | Evidència mínima | Com es comprovarà |
|---|---|---|
| Traçabilitat | Repositori actualitzat, commits significatius i issue o llista de tasques de `R3`. | Revisió de commits, tasques i decisions. |
| Arrencada | Docker i framework arrancables, `.env.example` o instruccions de configuració. | Execució seguint el README. |
| Persistència | Migracions o equivalent, fixtures/seeders o script, i dades de demostració reproduïbles. | Crear BBDD, carregar dades i recuperar un conjunt de dades real. |
| Fluxos | Prova dels `2` casos d'ús, amb almenys `1` flux migrat de `R2`. | Execució end-to-end dels casos d'ús. |
| Server-rendered | Un flux passa dades del controlador a una vista o plantilla i genera `HTML` en servidor. | Revisió del codi i comprovació visual del resultat. |
| Accés protegit | Login o autenticació equivalent, acció protegida, cas autoritzat i cas denegat. | Prova dels dos casos. |
| Qualitat | Validació, errors controlats i proves mínimes o checklist verificable. | Execució o revisió de proves i errors. |
| Criteri tècnic | Comparació de framework, esquema abans/després i mapa del que queda pendent. | Defensa breu de decisions. |
| Ús d'IA | `AI log`, si has usat IA de manera rellevant. | Revisió del registre i de la validació feta. |

Si falta Docker, BBDD reconstruïble, fixtures/seeders o càrrega equivalent, els `2` fluxos, el cas server-rendered o la protecció d'una acció significativa, el repte encara no està tancat.

## Ampliació 9→10

**Finalitat**  
Aprofundir en la qualitat de l'arquitectura en framework i demostrar millor criteri sobre `MVC`, persistència i mantenibilitat.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

**Opcions d'ampliació**
- Millorar un flux amb paginació, filtrat, cerca o una autorització més fina que amplie la regla mínima sense trencar la coherència del projecte.
- Fer una refactorització justificada del repartiment entre ruta, controlador, capa de dades i vista o plantilla.

**Proposta pròpia**  
Es pot presentar una ampliació pròpia si continua centrada en qualitat arquitectònica i es valida abans amb el professorat.

**Evidències mínimes**
- commit o branca identificable
- nota tècnica breu o `ADR`
- demo funcional del flux millorat
- rastre de l'ús assistit per IA, si n'hi ha hagut

**Ús assistit per IA**  
La IA et pot ajudar a comparar estructures, revisar codi o suggerir proves, però la decisió d'arquitectura i la defensa han de ser teues.

**Defensa**  
Perquè compute com a `9→10`, has de poder justificar per què la millora aporta qualitat real al projecte.
