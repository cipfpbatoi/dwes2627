# Repte 3. Reconstrucció en framework i persistència real

## Finalitat del repte

En `R3` deixes de treballar sobre la base comuna de `R2` i reconstrueixes el projecte sobre un framework.

No es demana migrar tota l'aplicació antiga. Es demana construir una base real, arrancable i verificable en `Laravel`, `Symfony` o `NestJS`, amb base de dades real i `2` casos d'ús funcionals.

La idea central és:

> Reconstrucció del projecte en framework amb base operativa real, persistència mínima real i primers fluxos funcionals verificables.

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

Guies d'avaluació:

- [R3M1. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m1.md)
- [R3M2. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m2.md)
- [R3M3. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m3.md)
- [R3M4. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m4.md)
- [R3M5. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m5.md)
- [R3M6. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m6.md)
- [R3M7. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m7.md)

El detall operatiu està en els materials de `R3`:

- [Fitxa general del Repte 3](../04_materials/repte_03/fitxa_general.md)
- [Enunciats dels microreptes](../04_materials/repte_03/microreptes.md)
- [Suport tècnic mínim](../04_materials/repte_03/suport_tecnic.md)
- [Checklists d'alumnat](../04_materials/repte_03/checklists.md)

Materials de suport:

- [R3. Framework, arquitectura i persistència real](../recursos/Repte3/R3-Framework-arquitectura-i-persistencia-real.pdf)
- [R3M1. Arrencada del nou projecte](../recursos/Repte3/R3M1-Arrencada-del-nou-projecte.pdf)
- [R3M2. Persistència mínima](../recursos/Repte3/R3M2-Persistencia-minima.pdf)
- [R3M3. Primer cas d'ús complet](../recursos/Repte3/R3M3-Primer-cas-dus-complet.pdf)
- [R3M4. Segon cas d'ús o ampliació funcional](../recursos/Repte3/R3M4-Segon-cas-dus-o-ampliacio-funcional.pdf)
- [R3M5. Autenticació, autorització i middleware](../recursos/Repte3/R3M5-Autenticacio-autoritzacio-i-middleware.pdf)
- [R3M6. Qualitat i estabilització](../recursos/Repte3/R3M6-Qualitat-i-estabilitzacio.pdf)
- [R3M7. Tancament tècnic](../recursos/Repte3/R3M7-Tancament-tecnic.pdf)

Teoria relacionada per microrepte:

- `R3M1`: [Docker, entorn i arrencada reproduïble](../recursos/Teoria/Teoria-R3-Docker-entorn-i-arrencada-reproduible.pdf) i [Framework MVC i responsabilitats](../recursos/Teoria/Teoria-R3-Framework-MVC-i-responsabilitats.pdf)
- `R3M2`: [Persistència, migracions i seeders](../recursos/Teoria/Teoria-R3-Persistencia-migracions-i-seeders.pdf)
- `R3M3`: [Rutes, controladors, vistes i flux end-to-end](../recursos/Teoria/Teoria-R3-Rutes-controladors-vistes-i-flux-end-to-end.pdf)
- `R3M4`: [Rutes, controladors, vistes i flux end-to-end](../recursos/Teoria/Teoria-R3-Rutes-controladors-vistes-i-flux-end-to-end.pdf)
- `R3M5`: [Autenticació, autorització i middleware](../recursos/Teoria/Teoria-R3-Autenticacio-autoritzacio-i-middleware.pdf)
- `R3M6`: [Qualitat, proves i tancament tècnic](../recursos/Teoria/Teoria-R3-Qualitat-proves-i-tancament-tecnic.pdf)
- `R3M7`: [Qualitat, proves i tancament tècnic](../recursos/Teoria/Teoria-R3-Qualitat-proves-i-tancament-tecnic.pdf)

## Presentació i entrega

Per preparar l'entrega, la demo i la defensa breu, usa la [guia de presentació dels reptes](guia_presentacio.md#repte-3).

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
