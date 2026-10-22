# R2M7 amb Python: prova del flux HTTP i depuració

Convertix les comprovacions manuals de `R2M4`-`R2M6` en una prova executable. Ha de recórrer: accés protegit sense autenticar denegat, login incorrecte, login correcte, operació protegida permesa, logout i nou accés denegat.

Pots usar [`tests/flux-r2.sh`](../r2m7_flux_http.md) independentment del llenguatge. Si preferixes Python, usa `requests.Session()` contra el servidor real o el client de proves de Flask, que conserva cookies entre peticions:

```python
from app import app

with app.test_client() as client:
    sense_sessio = client.get("/protegida")
    assert sense_sessio.status_code in (302, 401, 403)

    login_incorrecte = client.post("/login", data={"email": "demo@example.test", "password": "incorrecta"})
    assert b"Credencials incorrectes" in login_incorrecte.data  # adapta el text estable

    login = client.post("/login", data={"email": "demo@example.test", "password": "demo-password"})
    assert login.status_code in (200, 302)

    protegida = client.get("/protegida")
    assert protegida.status_code == 200

    client.post("/logout")
    despres_logout = client.get("/protegida")
    assert despres_logout.status_code in (302, 401, 403)
```

Adapta rutes, camps i codis al contracte real del teu projecte. Executa el script dins del mateix entorn i assegura't que qualsevol `assert` fallit produïx un codi d'eixida diferent de `0`. Una prova que només imprimix la resposta o comprova un únic cas no és suficient.

## Comprovació

- Registra almenys una incidència o confirma que no n’has trobat.
- Repetix la prova després de corregir.
- Documenta l’ordre d’execució i les dades demo necessàries.
- Guarda l'eixida real en `evidence/r2m7/verificacio.txt` o equivalent.
- Encara no cal una suite unitària ni `pytest`; això entra en `R2M8`.

