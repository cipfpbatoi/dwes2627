# Brief Gamma. Teoria R3. Qualitat, proves i tancament tècnic

## Objectiu

Crear una presentació teòrica curta per preparar `R3M5` i `R3M6`, centrada en estabilitzar els dos fluxos, verificar BBDD/migrations/seeders, documentar decisions i deixar el projecte preparat per a `R4`.

## Referències existents

- `docs/02_reptes/repte_03.md`
- `docs/04_materials/repte_03/checklists.md`
- `docs/04_materials/repte_03/suport_tecnic.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r3s5_qualitat_estabilitzacio.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r3s6_tancament_tecnic.md`
- `dwes-microreptes-autocorreccio/microreptes/r3-s05-qualitat-estabilitzacio/`
- `dwes-microreptes-autocorreccio/microreptes/r3-s06-tancament-tecnic/`

## Idees clau

- Qualitat en `R3` vol dir que els dos fluxos continuen funcionant i es poden verificar.
- Una prova pot ser automatitzada, checklist reproduïble o execució guiada amb evidència.
- Cal provar cas positiu, cas negatiu i almenys un error controlat.
- Les migrations i seeders han de continuar funcionant després dels canvis.
- El README ha de permetre arrancar, crear BBDD, carregar dades i executar els fluxos.
- El backlog ha de ser honest: què s'ha migrat, què s'ha ampliat i què queda fora.
- `R4` només té sentit si `R3` deixa una base persistent i defensable.

## Format recomanat

- 8-10 diapositives.
- Checklist visual de regressió.
- Exemple de registre d'incidència i correcció.
- Exemple d'estructura de README de tancament.
- Diapositiva de decisions tècniques.
- Diapositiva de backlog cap a `R4`.
- Errors habituals.

## No incloure

- Implementació d'API.
- Desplegament.
- Observabilitat avançada.
- Suite completa de proves com a requisit mínim.
