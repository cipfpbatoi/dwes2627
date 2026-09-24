# R2M3 amb Python: lògica, estructures i funcions

Extrau una regla real del projecte a un mòdul propi. La ruta rep i valida; la funció decidix; Jinja presenta.

`app/regles.py`:

```python
def estat_visita(places: int, persones: int) -> str:
    return "acceptada" if persones <= places else "pendent"
```

Ús des del flux:

```python
from app.regles import estat_visita

visita = {"places": 4, "persones": persones_validades}
estat = estat_visita(visita["places"], visita["persones"])
```

Una llista o un diccionari ha de representar opcions, catàlegs o dades del domini; no l’afegisques només per demostrar sintaxi. El mòdul s’ha d’importar i usar realment.

## Comprovació

- Prova dos casos que produïsquen resultats diferents.
- Confirma que les dades venen del flux de `R2M2`.
- La funció no ha de llegir `request.form` ni renderitzar HTML.
- No cal encara sessió, autenticació ni MVC complet.

