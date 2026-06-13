# Brief Gamma. Teoria R3. Persistència, migracions, fixtures/seeders o equivalent

## Objectiu

Crear una presentació teòrica curta per preparar `R3M2`, introduint BBDD real, migracions o mecanisme equivalent, fixtures/seeders o script equivalent i recuperació d'un conjunt de dades que alimente un flux funcional.

## Referències existents

- `docs/02_reptes/repte_03.md`
- `docs/04_materials/repte_03/suport_tecnic.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r3s2_persistencia_minima_migrations_seeders.md`
- `dwes-microreptes-autocorreccio/microreptes/r3-s02-persistencia-minima-migrations-seeders/`

## Idees clau

- Persistència real vol dir que les dades viuen en BBDD, no en arrays o literals.
- Una migració o mecanisme equivalent crea o modifica l'estructura de la BBDD de manera versionada.
- Un seeder, fixture o script equivalent carrega dades inicials reproduïbles.
- Les dades de prova han de servir als fluxos de `R3`.
- Una consulta de consola no és suficient si no alimenta cap vista, resposta o flux.
- El README ha d'explicar com reconstruir BBDD i dades.

## Equivalències que han d'aparéixer

| Necessitat comuna | Laravel | Symfony | NestJS |
|---|---|---|---|
| Esquema versionat | migrations | Doctrine migrations | migrations de Prisma/TypeORM o equivalent |
| Dades inicials | seeders | fixtures | seed script, seeder o fixtures segons eina |
| Lectura de dades | Eloquent query | repository/Doctrine query | service + ORM/ODM |
| Reset verificable | comandes artisan | comandes Symfony/Doctrine | scripts npm o comandes de l'ORM |

## Format recomanat

- 8-10 diapositives.
- Exemple de model mínim: entitat, taula, camps i dades.
- Diagrama: migració/equivalent -> BBDD -> càrrega inicial -> lectura -> vista/resposta.
- Taula d'equivalències per evitar que parega una sessió exclusiva de Laravel.
- Comparar dades manuals, arrays i BBDD real.
- Incloure checklist de reset i càrrega.
- Errors habituals.

## No incloure

- Model complet de tot el producte.
- Relacions complexes obligatòries.
- Optimització de consultes.
- API o serialització avançada.
