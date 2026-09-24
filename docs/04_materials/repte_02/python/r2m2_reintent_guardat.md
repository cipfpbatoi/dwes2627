# R2M2 amb Python: reintent i guardat funcional

Mantín el formulari de `R2M1`. Ara, si hi ha error, Flask torna a renderitzar-lo amb les dades aprofitables; si és correcte, guarda la informació amb un mecanisme simple.

```python
@app.route("/visites", methods=["GET", "POST"])
def visites():
    nom = request.form.get("nom", "").strip()
    motiu = request.form.get("motiu", "").strip()
    torn = request.form.get("torn", "")
    error = ""

    if request.method == "POST":
        if not motiu:
            error = "Explica el motiu."
        elif torn not in {"mati", "vesprada"}:
            error = "Tria un torn vàlid."
        else:
            guardar_sollicitud({"nom": nom, "motiu": motiu, "torn": torn})
            return redirect(url_for("ultima_visita"), code=303)

    return render_template("visites.html", nom=nom, torn=torn, error=error)
```

En Jinja, usa `value="{{ nom }}"` i `{% if torn == 'mati' %}selected{% endif %}`. L’escapament és automàtic. El guardat pot ser provisional, però una petició posterior ha de recuperar la dada: mostrar el mateix `POST` no és guardar.

## Comprovació

- Error: conserva text i opció, però no guarda.
- Correcció: canvia només la dada errònia.
- Cas correcte: guarda i permet una lectura posterior.
- No cal encara BBDD, sessió ni arrays d’errors.

