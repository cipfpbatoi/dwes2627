# Brief Gamma. MT05. Auth mínima defensable

## Objectiu

Crear una micro-presentació de taller per a `R2S5-R2S6` que ajude l'alumnat a protegir una operació real i demostrar cas permés i cas denegat.

## Missatge clau

L'autenticació no és el producte: protegeix una acció del producte. Si no pots ensenyar el cas denegat, la protecció és feble.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Incloure diferència entre autenticació i autorització.
- Tancar amb una prova de cas permés i cas denegat.

## Estructura recomanada

1. Idea central: auth protegeix una operació real.
2. Tres preguntes: qui eres, què vols fer i tens permís?
3. Mínim defensable: login, usuari o rol, acció protegida i resposta sense sessió o permís.
4. Errors habituals: pantalla decorativa, permisos fora del servidor, provar només l'usuari correcte.
5. Evidència del dia: acció protegida, cas autoritzat, cas denegat, codi localitzat i nota al README.
6. Tancament: què impedeix ara el backend que abans no impedia?

## Evidència mínima

- Acció real protegida.
- Prova amb usuari autoritzat.
- Prova sense sessió o sense permís.
- Punt del codi on es comprova l'accés.

## No incloure

- OAuth, JWT professional o seguretat de producció.
- Login com a única evidència.
- Protecció només visual.
