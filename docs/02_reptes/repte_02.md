# Repte 2

## Objectiu

En este repte el projecte ha de començar a comportar-se com un sistema real. Ja no basta amb rebre una dada: ara has de tractar-la, gestionar estat quan faça falta i protegir una primera funcionalitat.

## Què has de fer

Per completar el repte, fes evolucionar `R1` amb estes peces:

- tractament real de dades en servidor
- lògica bàsica aplicada al flux
- manteniment d'estat o mecanisme equivalent
- autenticació o control d'accés funcional
- una acció del projecte protegida
- un cas correcte i un cas denegat

## Què has d'entregar

Quan entregues `R2`, ha de quedar visible:

- repositori actualitzat
- `README` amb els passos necessaris per provar el flux
- funcionalitat protegida operativa
- evidència del cas positiu i del cas negatiu
- commits recognoscibles del treball

## Com es comprovarà

La revisió es farà mirant el flux complet:

- com entra la informació al sistema
- què fa el servidor amb eixa informació
- com es manté l'estat, si toca
- en quin punt es permet o es denega l'acció protegida
- què passa quan el cas és incorrecte

## Quan encara no està prou bé

El repte es queda curt si passa alguna d'estes coses:

- hi ha login però no una funcionalitat real protegida
- només es mostra el cas positiu
- no s'entén què es guarda com a estat
- no pots explicar on es decidix l'accés
