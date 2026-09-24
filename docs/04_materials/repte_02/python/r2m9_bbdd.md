# R2M9 amb Python: persistència mínima amb BBDD

La BBDD ha de guardar una dada significativa i permetre una lectura posterior. Separa connexió, configuració i presentació.

Amb SQLite, el patró DB-API mínim és:

```python
import sqlite3

with sqlite3.connect("data/app.db") as connexio:
    connexio.execute(
        "INSERT INTO reserves (nom, estat) VALUES (?, ?)",
        (nom, estat),
    )
    reserves = connexio.execute(
        "SELECT id, nom, estat FROM reserves WHERE nom = ?",
        (nom,),
    ).fetchall()
```

Amb MySQL o PostgreSQL usa el driver corresponent i el marcador de paràmetres que indique. No concatenes ni interpol·les dades de l’usuari dins de l’SQL. No versions credencials reals.

## Comprovació

- Esquema o instruccions reproduïbles.
- Alta amb dades ja validades.
- Lectura en una petició posterior.
- Consulta parametritzada.
- Prova amb un valor com `D'Alcoi`.
- Explicació de què es professionalitzarà en `R3`.

