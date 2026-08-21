# Brief Gamma. MT14. Mapping de resposta externa

## Objectiu

Crear una micro-presentació de taller per a `R5S3` que ajude l'alumnat a transformar una resposta externa en dades útils del domini propi.

## Missatge clau

Consumir dades externes no és mostrar `JSON` cru. El backend ha de traduir-les al seu domini i controlar absències o canvis.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Incloure una taula de mapping.
- Tancar amb una transformació documentada o prototipada.

## Estructura recomanada

1. Idea central: mapping com a decisió de domini.
2. Què cal transformar: camps, dates, estats, identificadors, unitats, errors i absències.
3. Model propi: necessitat del producte, dada fiable, normalització, guardat i visualització.
4. Errors habituals: acoblament al format extern, camps absents, duplicats, origen perdut i resposta inesperada no provada.
5. Evidència del dia: resposta externa, taula de mapping, transformació, cas incomplet i límits.
6. Tancament: quina dada externa es converteix en valor del producte?

## Evidència mínima

- Exemple de resposta externa.
- Taula de mapping.
- Transformació implementada o prototipada.
- Cas amb dada incompleta.

## No incloure

- Mostrar JSON extern sense transformació.
- Copiar tots els camps sense criteri.
- Persistir dades externes sense justificar-ho.
