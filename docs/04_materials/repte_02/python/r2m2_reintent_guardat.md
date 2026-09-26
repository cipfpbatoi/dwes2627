# R2M2 amb Python: reintent i confirmació

Mantín el formulari de `R2M1`. Ara, si hi ha error, Flask torna a renderitzar-lo amb les dades aprofitables; si és correcte, processa la informació i mostra una confirmació o resum.

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
            confirmacio = {"nom": nom, "motiu": motiu, "torn": torn}
            return render_template("confirmacio.html", visita=confirmacio)

    return render_template("visites.html", nom=nom, torn=torn, error=error)
```

En Jinja, usa `value="{{ nom }}"` i `{% if torn == 'mati' %}selected{% endif %}`. L’escapament és automàtic. En el mínim no cal conservar dades entre peticions: la confirmació mostra el resultat del processament del `POST` correcte.

## Comprovació

- Error: conserva text i opció, però no confirma el cas com a correcte.
- Correcció: canvia només la dada errònia.
- Cas correcte: processa les dades i mostra una confirmació o resum.
- No cal encara BBDD, sessió ni arrays d’errors.

## Ampliació opcional

Després de tancar el mínim, es pot guardar l'entrada i recuperar-la en una petició posterior amb un mecanisme simple. Esta ampliació no és necessària per superar `R2M2` i no substituïx el reintent.
