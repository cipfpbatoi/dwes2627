# Brief Gamma. MT04. Sessió, cookies i estat

## Objectiu

Crear una micro-presentació de taller per a `R2S4` que ajude l'alumnat a decidir què ha de viure en sessió, en cookies o en base de dades.

## Missatge clau

No tot el que l'aplicació recorda és persistència del domini. Sessió i cookies resolen estat temporal; la base de dades guarda fets del producte.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `45 min`.
- Usar exemples del projecte de cada equip.
- Tancar amb una decisió documentada.

## Estructura recomanada

1. Idea central: estat temporal contra persistència del domini.
2. Què pot anar en sessió: usuari, missatges temporals, pas actual i dades provisionals.
3. Què no convé guardar: contrasenyes, decisions permanents, dades sensibles innecessàries i informació auditada.
4. Cookies: preferències simples, identificació de sessió, abast, duració i manipulació.
5. Evidència del dia: llista de dades temporals i permanents, decisió de lloc i prova sense sessió.
6. Tancament: què recorda el backend i durant quant de temps?

## Evidència mínima

- Taula de dades: sessió, cookie o BBDD.
- Justificació de la vida útil.
- Prova d'inici/tancament o comportament sense sessió.

## No incloure

- Persistència formal completa.
- Autenticació avançada.
- Cookies com a magatzem de dades sensibles.
