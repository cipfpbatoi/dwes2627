# Brief Gamma. R4. Contracte d'API, HTTP i respostes

## Objectiu

Crear una presentació teòrica de transició per passar de l'aplicació persistent de `R3` a un servei consumible en `R4`. Ha d'explicar amb més calma contracte d'API, recursos, endpoints, request/response, codis d'estat i errors.

## Idees clau

- Una API és una interfície pública del producte.
- El contracte diu com s'usa el servei i què pot esperar el consumidor.
- Els codis d'estat formen part de la resposta funcional.
- Els errors també han d'estar dissenyats.
- La resposta real ha de coincidir amb la documentació.
- El consumidor de l'API no ha de llegir el codi per saber com usar-la.
- Un endpoint ha de representar una operació o recurs real del projecte.
- Dissenyar errors evita que el client haja d'endevinar què ha passat.

## Estructura proposada

1. De funcionalitat interna a servei reusable.
2. Recurs, endpoint i verb o acció.
3. Request: ruta, paràmetres, cos i capçaleres.
4. Response: estructura, dades i codis.
5. Errors: què pot fallar i com es comunica.
6. Mini exemple de contracte.
7. Check final abans d'implementar.

## Exemples que han d'aparéixer

- Contracte d'un endpoint abans de programar-lo.
- Exemple `GET /api/reserves/{id}` o equivalent del domini.
- Exemple de resposta `200`.
- Exemple d'error `400`, `401`, `403` o `404`.
- Comparació entre resposta HTML de `R3` i resposta JSON de `R4`.

## Format recomanat

- 10-12 diapositives.
- Diagrama: aplicació interna -> contracte -> consumidor.
- Taula amb mètode, URL, entrada, resposta i errors.
- Diapositiva de codis HTTP més habituals.
- Diapositiva d'errors habituals.

## Evitar

- Entrar en REST avançat com a teoria pesada.
- Convertir OpenAPI en requisit obligatori.
- Separar el contracte del producte real.

## Preguntes de comprovació

- Quin recurs real del projecte exposa l'endpoint?
- Quin mètode, URL, request i response formen el contracte?
- Quin codi HTTP correspon al cas correcte?
- Quins errors has previst abans de programar?
- Una altra persona podria consumir l'endpoint sense llegir el codi?
