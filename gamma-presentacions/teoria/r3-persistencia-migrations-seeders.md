# Brief Gamma. Teoria R3. Persistència, migrations i seeders

## Objectiu

Crear una presentació teòrica curta per preparar `R3M2`, introduint BBDD real, migrations, seeders o equivalents i recuperació d'un conjunt de dades que alimente un flux funcional.

## Referències existents

- `docs/02_reptes/repte_03.md`
- `docs/04_materials/repte_03/suport_tecnic.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r3s2_persistencia_minima_migrations_seeders.md`
- `dwes-microreptes-autocorreccio/microreptes/r3-s02-persistencia-minima-migrations-seeders/`

## Idees clau

- Persistència real vol dir que les dades viuen en BBDD, no en arrays o literals.
- Una migration crea o modifica l'estructura de la BBDD de manera versionada.
- Un seeder, fixture o script equivalent carrega dades inicials reproduïbles.
- Les dades de prova han de servir als fluxos de `R3`.
- Una consulta de consola no és suficient si no alimenta cap vista, resposta o flux.
- El README ha d'explicar com reconstruir BBDD i dades.

## Format recomanat

- 8-10 diapositives.
- Exemple de model mínim: entitat, taula, camps i dades.
- Diagrama: migration -> BBDD -> seeder -> lectura -> vista/resposta.
- Comparar dades manuals, arrays i BBDD real.
- Incloure checklist de reset i càrrega.
- Errors habituals.

## No incloure

- Model complet de tot el producte.
- Relacions complexes obligatòries.
- Optimització de consultes.
- API o serialització avançada.
