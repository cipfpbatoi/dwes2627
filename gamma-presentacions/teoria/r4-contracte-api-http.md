# Brief Gamma. R4. Contracte d'API, HTTP i respostes

## Objectiu

Crear una presentació teòrica curta per donar suport a `R4M1` i `R4M2`: contracte d'API, recursos, endpoints, request/response, codis d'estat i errors.

## Idees clau

- Una API és una interfície pública del producte.
- El contracte diu com s'usa el servei i què pot esperar el consumidor.
- Els codis d'estat formen part de la resposta funcional.
- Els errors també han d'estar dissenyats.
- La resposta real ha de coincidir amb la documentació.

## Estructura proposada

1. De funcionalitat interna a servei reusable.
2. Recurs, endpoint i verb o acció.
3. Request: ruta, paràmetres, cos i capçaleres.
4. Response: estructura, dades i codis.
5. Errors: què pot fallar i com es comunica.
6. Mini exemple de contracte.
7. Check final abans d'implementar.

## Evitar

- Entrar en REST avançat com a teoria pesada.
- Convertir OpenAPI en requisit obligatori.
- Separar el contracte del producte real.
