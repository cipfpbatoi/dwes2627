# Brief Gamma. MT07. Migrar un cas d'ús a framework

## Objectiu

Crear una micro-presentació de taller per a `R3S1` que ajude l'alumnat a portar un cas d'ús de `R2` a un framework sense perdre traçabilitat.

## Missatge clau

Migrar no és copiar carpetes. El cas d'ús ha de continuar sent recognoscible i el framework ha d'aportar estructura.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Incloure una taula de correspondència entre flux antic i flux nou.
- Tancar amb un primer punt d'entrada verificat.

## Estructura recomanada

1. Idea central: el framework aporta estructura, no màgia.
2. Què es conserva: actor, regla, entrada, eixida, error i evidència.
3. Què canvia: rutes, controladors, serveis, models, configuració i proves.
4. Mapa de migració: flux antic, punt d'entrada nou, capa que processa, capa que persisteix, resposta i prova.
5. Evidència del dia: taula de correspondència, flux portat parcialment, decisió d'estructura i prova manual.
6. Tancament: quin flux de `R2` continua viu en `R3`?

## Evidència mínima

- Mapa de migració del cas d'ús.
- Punt d'entrada en framework.
- Decisió d'estructura documentada.
- Prova manual del flux o inici del flux.

## No incloure

- Migració completa de tota l'aplicació.
- Tutorial del framework.
- Copiar codi sense entendre responsabilitats.
