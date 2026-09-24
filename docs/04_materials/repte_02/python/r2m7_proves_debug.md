# R2M7 amb Python: proves i depuració

Mantín una taula amb entrada, passos, resultat esperat i resultat obtingut. Has de provar casos positius i negatius del flux complet.

Pots usar `curl` independentment del llenguatge. Si preferixes Python, el client de proves de Flask permet una comprovació lleugera:

```python
from app import app

with app.test_client() as client:
    resposta = client.get("/api/me")
    assert resposta.status_code == 401
```

Executa el script dins del mateix entorn del projecte. Una prova que només imprimix la resposta no és suficient: ha de fallar quan el resultat no coincidix.

## Comprovació

- Registra almenys una incidència o confirma que no n’has trobat.
- Repetix la prova després de corregir.
- Documenta l’ordre d’execució i les dades demo necessàries.
- Encara no cal una suite unitària ni `pytest`; això entra en `R2M8`.

