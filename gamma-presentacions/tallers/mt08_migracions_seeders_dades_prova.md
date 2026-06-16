# Brief Gamma. MT08. Migracions, seeders i dades de prova

## Objectiu

Crear una micro-presentació de taller per a `R3S2` que ajude l'alumnat a fer que la base de dades siga reconstruïble i útil per provar fluxos.

## Missatge clau

Un flux sense dades realistes no es pot defensar bé. La BBDD ha de poder reconstruir-se i carregar dades inicials sense artesania local.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Incloure exemples de dades amb sentit de negoci.
- Tancar amb instrucció de reset i càrrega en README.

## Estructura recomanada

1. Idea central: BBDD reconstruïble i dades de prova útils.
2. Migracions: estructura, evolució, entorn repetible i model del domini.
3. Seeders o fixtures: dades mínimes, rols, estats, demo reproduïble i sentit de negoci.
4. Dades útils: dos usuaris, estats diferents, cas correcte, cas conflictiu i cas denegat.
5. Evidència del dia: migracions de zero, dades carregades, flux provat, README i commit.
6. Tancament: pots esborrar i reconstruir la base sense perdre el flux?

## Evidència mínima

- Migracions o equivalent.
- Seeder, fixture o script de càrrega.
- Dades inicials amb sentit.
- Instrucció de reconstrucció.

## No incloure

- Model de dades complet de producció.
- Dades manuals no reproduïbles.
- Optimització avançada de BBDD.
