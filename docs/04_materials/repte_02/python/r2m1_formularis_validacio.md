# R2M1 amb Python: formularis i validació de servidor

Esta guia substituïx els exemples PHP de la teoria quan treballes amb Flask. Els objectius, les evidències i els casos de prova de `R2M1` són els mateixos.

## Flux mínim

1. Una ruta mostra el formulari amb `GET`.
2. La mateixa ruta o una altra rep el `POST`.
3. El servidor llig, normalitza i valida.
4. La plantilla mostra un error o una resposta correcta.

```python
from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/visites", methods=["GET", "POST"])
def visites():
    missatge = ""
    if request.method == "POST":
        nom = request.form.get("nom", "").strip()
        torn = request.form.get("torn", "")
        avisos = request.form.get("avisos") == "si"
        if not nom:
            missatge = "Escriu el teu nom."
        elif torn not in {"mati", "vesprada"}:
            missatge = "Tria un torn vàlid."
        else:
            missatge = f"Sol·licitud rebuda. Avisos: {avisos}"
    return render_template("visites.html", missatge=missatge)
```

Jinja escapa `{{ missatge }}` per defecte. No uses `|safe` amb dades de l’usuari. Un checkbox desmarcat no arriba al servidor, per això es llig amb un valor per defecte.

## Comprovació

- Prova `GET`, nom buit, opció manipulada i cas correcte.
- Confirma que la validació continua funcionant sense `required`.
- No cal conservar encara tots els valors ni guardar el cas correcte.

