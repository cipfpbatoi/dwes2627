# Gamma brief - JSON, codis HTTP i autenticació mínima per a client

## Objectiu de la presentació

Explicar la teoria mínima necessària per a `R2M6`: com un backend PHP pot respondre `JSON`, usar codis HTTP i protegir una ruta amb un token simple.

## Públic

Alumnat que coneix formularis, sessions i autenticació web bàsica.

## Idees clau

- HTML és per a persones; `JSON` és per a programes.
- Una API mínima necessita un contracte clar.
- Els codis HTTP formen part de la resposta.
- `401` significa no autenticat o credencial no vàlida.
- El token és una prova temporal d'autenticació.
- No s'han de retornar contrasenyes ni hashes.

## Estructura suggerida

1. **De pàgina web a resposta per a client**
   - Diferència entre renderitzar HTML i retornar `JSON`.
   - `Content-Type: application/json`.

2. **Contracte**
   - Mètode.
   - URL.
   - Cos de la petició.
   - Headers.
   - Codi de resposta.
   - Cos de resposta.

3. **Login API**
   - Rebre credencials.
   - Validar amb el sistema existent.
   - Retornar token o error.

4. **Ruta protegida**
   - Llegir `Authorization: Bearer ...`.
   - Comprovar token.
   - Retornar `401` o dades mínimes.

5. **Proves**
   - `curl`.
   - Postman/Insomnia.
   - `fetch`.
   - Cas correcte i cas incorrecte.

6. **Límits**
   - Token simple no és seguretat professional.
   - No hi ha refresh token.
   - No hi ha OAuth.
   - No és encara R4.

## Exemple de narrativa

“El client no necessita veure una pantalla de login del servidor. Necessita enviar credencials i rebre una resposta que puga interpretar.”

## To visual

Curt, amb exemples de petició/resposta i codis HTTP. Evitar aprofundir en estàndards d'API que encara no entren.
