# R2M5 amb Python: autenticació i operació protegida

Registrar, autenticar i autoritzar són passos diferents. En Flask pots usar les utilitats de Werkzeug sense instal·lar encara un sistema complet d’identitats.

```python
from werkzeug.security import check_password_hash, generate_password_hash

hash_guardat = generate_password_hash(contrasenya)

if check_password_hash(hash_guardat, contrasenya_rebuda):
    session["user_id"] = user_id
```

La ruta protegida comprova `session.get("user_id")` abans d’executar l’operació. Ocultar el botó en Jinja no és protecció. Per al logout, elimina la identitat de la sessió i torna a provar la ruta.

## Comprovació

- Contrasenya guardada només com a hash.
- Credencial incorrecta rebutjada.
- Accés sense sessió denegat.
- Accés autenticat permés sobre una operació real.
- Després del logout, el mateix accés torna a quedar denegat.

