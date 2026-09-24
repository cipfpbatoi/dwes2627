# R2M8 amb Python: classe i prova unitària

Convertix una regla estable del flux en una classe que puga provar-se sense Flask, navegador, `request`, `session` ni Jinja.

`app/regles.py`:

```python
class ReglaPlaces:
    def accepta(self, places: int, persones: int) -> bool:
        return persones <= places
```

`tests/test_regles.py`:

```python
from app.regles import ReglaPlaces

def test_accepta_i_rebutja():
    regla = ReglaPlaces()
    assert regla.accepta(4, 3) is True
    assert regla.accepta(4, 6) is False
```

Declara `pytest` en `requirements.txt` o `pyproject.toml` i executa `pytest`. `unittest` també és vàlid. Després repetix un cas web per comprovar que la integració continua funcionant.

## Comprovació

- Classe vinculada a una regla real.
- Importació reproduïble.
- Prova que falla si canvies deliberadament l’esperat.
- Prova de no regressió del flux web.

