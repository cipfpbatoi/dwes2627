# Brief Gamma. MT03. Validació de servidor amb casos roïns

## Objectiu

Crear una micro-presentació de taller per a `R2S1-R2S2` que ajude l'alumnat a provar validacions de servidor amb casos vàlids i invàlids.

## Missatge clau

Validar no és comprovar només el cas bo. El servidor ha de protegir el flux davant entrades errònies, manipulades o fora d'estat.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Incloure una taula de casos de prova.
- Tancar amb una validació implementada i verificable.

## Estructura recomanada

1. Idea central: els errors també formen part del producte.
2. Casos que cal pensar: camp buit, format incorrecte, valor fora de rang, duplicat, dada manipulada i operació fora d'estat.
3. Validació útil: regla en servidor, missatge comprensible, dada bona conservada i dada roïna rebutjada.
4. Taula mínima: entrada, resultat esperat, error, punt de validació, prova i registre.
5. Evidència del dia: casos vàlids i invàlids, dues validacions i prova manual o automatitzada.
6. Tancament: quina entrada errònia bloqueja ara el teu projecte?

## Evidència mínima

- Taula de casos vàlids i invàlids.
- Almenys dues validacions en servidor.
- Prova o comprovació reproduïble.

## No incloure

- Validació només de client.
- Classe completa de seguretat.
- Formularis sense domini.
