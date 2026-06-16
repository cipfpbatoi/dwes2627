# Brief Gamma. MT09. On pose la lògica

## Objectiu

Crear una micro-presentació de taller per a `R3S3-R3S4` que ajude l'alumnat a decidir si una regla va en controlador, servei, model o una altra peça equivalent.

## Missatge clau

La lògica no ha d'acabar tota en el controlador. Cada capa té una responsabilitat i la decisió ha de poder defensar-se.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Comparar controlador, servei/cas d'ús i model/entitat.
- Tancar amb una regla reubicada o una decisió documentada.

## Estructura recomanada

1. Idea central: responsabilitats clares.
2. Controlador: rep petició, valida o delega, crida el cas d'ús i prepara resposta.
3. Servei o cas d'ús: coordina operacions, aplica regles i facilita proves.
4. Model o entitat: representa dades, protegeix invariants i evita dependència de la interfície.
5. Evidència del dia: regla al lloc adequat, explicació, prova del flux i codi localitzable.
6. Tancament: on canviaries esta regla si demà canviara el negoci?

## Evidència mínima

- Regla de negoci localitzada.
- Decisió controller/service/model documentada.
- Prova del flux després del canvi.

## No incloure

- Arquitectura perfecta o massa abstracta.
- Refactors grans sense prova.
- Patrons avançats sense necessitat.
