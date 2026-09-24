# R2M6 amb Python: mini API d’autenticació

El contracte és el mateix que en PHP: login amb JSON, `200` o `401`, token simple documentat i ruta protegida.

```python
from flask import jsonify, request

@app.post("/api/login")
def api_login():
    dades = request.get_json(silent=True) or {}
    if not credencials_valides(dades):
        return jsonify(error="Credencials incorrectes"), 401
    return jsonify(token=crear_token_demo(dades["usuari"])), 200
```

En la ruta protegida, llig `Authorization`, comprova el prefix `Bearer` i valida realment el token. No retornes contrasenyes ni hashes.

## Comprovació

- Login correcte: `200` i JSON.
- Login incorrecte: `401` i cap dada protegida.
- Token vàlid: accés permés.
- Token alterat o absent: `401`.
- Documenta URL, headers, cos, usuari demo i limitacions de CORS.

