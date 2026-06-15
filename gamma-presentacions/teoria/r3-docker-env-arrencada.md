# Brief Gamma. Teoria R3. Docker, entorn i arrencada reproduïble

## Objectiu

Crear una presentació teòrica curta per preparar `R3M1`, centrada en arrancar el projecte de manera reproduïble amb Docker o entorn equivalent, configuració mínima i `.env.example`.


## Idees clau

- Un projecte que només funciona en l'ordinador d'una persona no és una base suficient per a `R3`.
- Docker ha de permetre arrancar aplicació i BBDD o deixar clar l'entorn equivalent.
- `.env` conté configuració local; `.env.example` documenta variables sense secrets.
- La primera ruta o `healthcheck` servix per verificar que el framework respon.
- El README ha d'explicar com arrancar, no només dir que cal arrancar.
- Els errors d'arrencada han de quedar registrats si han condicionat el treball.

## Format recomanat

- 7-9 diapositives.
- Diagrama de serveis: app, BBDD, variables d'entorn.
- Exemple de `.env.example` sense contrasenyes reals.
- Exemple de checklist d'arrencada.
- Errors habituals i com detectar-los.
- Tancament amb evidències de `R3M1`.

## No incloure

- Configuracions avançades de producció.
- Desplegament.
- Seguretat avançada de secrets.
- Optimització de contenidors.
