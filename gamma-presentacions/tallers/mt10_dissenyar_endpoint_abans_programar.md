# Brief Gamma. MT10. Dissenyar endpoint abans de programar

## Objectiu

Crear una micro-presentació de taller per a `R4S1` que obligue a definir el contracte d'un endpoint abans d'implementar-lo.

## Missatge clau

Una API no és una col·lecció improvisada de rutes. Primer es dissenya el contracte; després s'implementa i es prova.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Incloure una fitxa de contracte d'endpoint.
- Tancar amb exemples de petició, resposta i errors.

## Estructura recomanada

1. Idea central: dissenyar abans de programar.
2. Contracte mínim: recurs, mètode, URL, paràmetres, body, resposta correcta i errors.
3. Preguntes útils: consumidor, operació de domini, dades que falten, permisos i estat HTTP.
4. Errors habituals: programar primer, JSON sense criteri, codis mal diferenciats i dades internes exposades.
5. Evidència del dia: fitxa de contracte, petició, resposta, dos errors i decisió d'autenticació.
6. Tancament: què pot fer exactament este endpoint i què no?

## Evidència mínima

- Fitxa de contracte abans del codi.
- Exemple de request/response.
- Dos errors previstos.
- Decisió sobre autenticació.

## No incloure

- Implementació completa de l'API.
- Teoria extensa de REST.
- Consum extern de `R5`.
