# Gamma brief - R2S10. Taller de contracte d'autenticació per a DWEC

## Objectiu de la presentació

Guiar una sessió taller de 3 hores perquè l'alumnat de `DWES` deixe la mini API d'autenticació de `R2M6` preparada per ser consumida pel mòdul de `DWEC`.

La presentació no ha d'ensenyar a programar el client amb `fetch`. Ha de centrar-se en què ha de publicar el backend: contracte, formats, headers, codis, usuari demo i limitacions conegudes.

## Públic

Alumnat que acaba de construir `R2M6. Mini API d'autenticació per a client`.

## Missatge central

Una API no està preparada per a un client només perquè funcione en el teu codi. Està preparada quan una altra persona pot consumir-la llegint el contracte.

## Estructura suggerida

1. **Per què fem este taller**
   - DWEC necessita consumir una autenticació real.
   - DWES no farà el client.
   - DWES sí ha de deixar un backend consumible.
   - El taller compta dins de la qualitat de `R2M6`.

2. **Què ja hauria d'existir**
   - `POST /api/login` o equivalent.
   - Resposta `JSON`.
   - Cas `200`.
   - Cas `401`.
   - Token simple o mecanisme documentat.
   - Ruta protegida.

3. **Què falta perquè DWEC ho puga usar**
   - URL base.
   - Mètodes HTTP.
   - Headers.
   - Body esperat.
   - Exemples de resposta.
   - Usuari demo.
   - Limitacions conegudes.

4. **Contracte mínim**
   - Fitxer recomanat: `docs/api-auth-contract.md`.
   - Taula d'endpoints.
   - Exemples de petició.
   - Exemples de resposta.
   - Què ha de fer el client quan rep `401`.

5. **Normalitzar respostes**
   - Camps estables.
   - Errors interpretables.
   - No retornar contrasenyes.
   - No retornar hashes.
   - No canviar noms de camps sense avisar.

6. **Headers i CORS**
   - `Content-Type: application/json`.
   - `Authorization: Bearer ...`.
   - Quan pot aparéixer CORS.
   - Si no es resol encara, com documentar la limitació.

7. **Dades demo**
   - Usuari de prova.
   - Contrasenya de prova no personal.
   - Dades mínimes esperades.
   - Què no s'ha de posar mai com a dada demo.

8. **Prova creuada**
   - Una altra persona llig el contracte.
   - Executa login.
   - Copia token.
   - Executa ruta protegida.
   - Detecta ambigüitats.

9. **Valoració**
   - El taller no té nota separada.
   - Es valora dins de `R2M6`.
   - Sense contracte mínim per a DWEC, `R2M6` no pot superar el 8.

10. **Tancament**
   - Què s'entrega a DWEC.
   - Què queda per a `R4`.
   - Quines decisions són provisionals.

## Activitat central de la sessió

L'alumnat ha de crear o completar:

```text
docs/api-auth-contract.md
```

Amb una estructura semblant:

```md
# Contracte mini API auth

## URL base

http://localhost:8000

## Login

POST /api/login

Headers:
Content-Type: application/json

Body:
{
  "email": "demo@example.test",
  "password": "secret"
}

Resposta 200:
{
  "token": "...",
  "user": {
    "name": "Demo"
  }
}

Resposta 401:
{
  "error": "Credencials incorrectes"
}

## Perfil autenticat

GET /api/me

Headers:
Authorization: Bearer TOKEN

Resposta 200:
{
  "user": {
    "name": "Demo"
  }
}

Resposta 401:
{
  "error": "No autenticat"
}

## Limitacions conegudes

- Token provisional per a R2.
- CORS pendent / configurat de manera local.
- En R4 es formalitzarà el contracte API.
```

## To visual

Pràctic, sobri i orientat a taller. Evitar diapositives teòriques llargues. Incloure taules, fragments de contracte i exemples de resposta.

## Frase final

En `DWES` no fem la interfície de client; fem que el backend siga prou clar perquè `DWEC` la puga construir.
