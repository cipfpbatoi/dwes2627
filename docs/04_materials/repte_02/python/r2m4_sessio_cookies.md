# R2M4 amb Python: sessió, cookies i context de petició

En Flask, `session` conserva estat temporal al servidor o en una cookie de sessió signada segons la configuració. Una cookie pròpia guarda només una preferència no sensible.

```python
from flask import make_response, request, session

session["recurs_id"] = recurs_id
recurs_id = session.get("recurs_id")

metode = request.method
agent = request.headers.get("User-Agent", "")

response = make_response(render_template("resum.html"))
response.set_cookie("vista", "compacta", httponly=True, samesite="Lax")
vista = request.cookies.get("vista", "normal")
```

Configura `SECRET_KEY` amb una variable d’entorn i no versions el secret real. Organitza la creació de l’aplicació i les importacions des d’un punt estable.

## Comprovació

- Recupera sessió i cookie en una petició posterior.
- Invalida l’estat i comprova que el comportament canvia.
- No uses IP o `User-Agent` com a identitat autenticada.
- No guardes contrasenyes ni tokens sensibles en una cookie pròpia.

