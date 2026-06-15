# Brief Gamma. Teoria R3. Qualitat, proves i tancament tècnic

## Objectiu

Crear una presentació teòrica curta per preparar `R3M6` i `R3M7`, centrada en estabilitzar els fluxos, verificar reconstrucció de BBDD, càrrega inicial reproduïble i protecció d'accessos, documentar decisions i deixar el projecte preparat per a `R4`.


## Idees clau

- Qualitat en `R3` vol dir que els dos fluxos continuen funcionant i es poden verificar.
- Una prova pot ser automatitzada, checklist reproduïble o execució guiada amb evidència.
- Cal provar cas positiu, cas negatiu i almenys un error controlat.
- Les migracions o mecanisme equivalent i la càrrega inicial reproduïble han de continuar funcionant després dels canvis.
- L'acció protegida de `R3M5` ha de continuar denegant accés quan toca.
- El README ha de permetre arrancar, crear BBDD, carregar dades i executar els fluxos.
- El backlog ha de ser honest: què s'ha migrat, què s'ha ampliat i què queda fora.
- `R4` només té sentit si `R3` deixa una base persistent i defensable.

## Equivalències que han d'aparéixer

- `Laravel`: provar comandes d'arrencada, migracions, seeders, rutes i fluxos.
- `Symfony`: provar comandes d'arrencada, Doctrine migrations, fixtures, rutes i fluxos.
- `NestJS`: provar scripts d'arrencada, migracions o equivalent de l'ORM, seed script i endpoints/respostes.
- En tots els casos: el criteri és que una altra persona puga reconstruir BBDD, carregar dades i executar els dos fluxos.

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

## Preguntes de comprovació

- Els dos fluxos principals continuen funcionant després dels canvis?
- Pots reconstruir BBDD i dades inicials?
- Quin cas negatiu o error controlat has provat?
- El README permet arrancar, carregar dades i executar els fluxos?
- Què queda pendent per a `R4` i què queda fora?
