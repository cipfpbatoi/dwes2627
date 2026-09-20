# R2S0. Primers passos pràctics amb Python i HTML

Ja saps programar: ara practicaràs com Python executa la lògica al servidor i com una plantilla Jinja genera l’HTML que rep el navegador. Els problemes i els resultats esperats són els mateixos que en la [via PHP](practica_php_html.md); només canvien la sintaxi i les eines.

És una pràctica de la sessió introductòria del Repte 2, sense microrepte ni nota pròpia. No substituïx les evidències de R2M1 ni de R2M2. Treballarem amb dades escrites al codi; els formularis vindran en R2S1.

## Preparació i execució

Crea una carpeta `practiques/r2s0-python`, entra-hi i prepara un entorn virtual:

```sh
python3 --version
python3 -m venv .venv
source .venv/bin/activate
python -m pip install Flask
mkdir templates
```

En Windows, activa l’entorn amb `.venv\Scripts\activate`. Per a cada exercici, inicia el programa corresponent, per exemple:

```sh
python 01-hola.py
```

Mantín el terminal obert, visita l’adreça que mostra Flask —normalment `http://127.0.0.1:5000`— i para el servidor amb `Ctrl+C`. No òbrigues la plantilla amb doble clic: una adreça `file://` no executa Python ni processa Jinja.

Per comprovar la sintaxi sense iniciar el servidor:

```sh
python -m py_compile 01-hola.py
```

## Recordatori mínim

- En Python no s’usa `$` davant de les variables ni `;` al final de cada línia.
- La indentació delimita els blocs d’un `if`, un `else` o un `for`.
- `render_template(...)` envia dades de Python a un fitxer HTML de `templates/`.
- En Jinja, `{{ expressio }}` mostra un valor i `{% ... %}` controla condicions i bucles.
- Jinja escapa per defecte el text mostrat amb `{{ ... }}` en plantilles HTML. No uses `|safe` amb dades variables.
- Calcula en el fitxer Python i usa la plantilla principalment per presentar el resultat.

## 1. Del servidor al navegador — 15 minuts

Crea `01-hola.py`:

```python
from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def inici():
    nom = "Aina"
    return render_template("01-hola.html", nom=nom)


if __name__ == "__main__":
    app.run(debug=True)
```

I crea `templates/01-hola.html`:

```html
<!doctype html>
<html lang="ca">
<meta charset="utf-8">
<title>Primera pràctica Python</title>
<h1>Hola, {{ nom }}</h1>
<p>Esta pàgina s’ha generat al servidor.</p>
</html>
```

**Tasca:** executa’l, canvia el nom i recarrega. Consulta el codi font de la pàgina des del navegador i compara’l amb els dos fitxers de l’editor.

**Resultat esperat:** apareix «Hola, Aina» inicialment; el navegador rep el nom dins de l’HTML, sense la declaració `nom = "Aina"` ni les marques `{{ ... }}` de Jinja.

**Variació:** afegix una variable `curs` i mostra-la en un paràgraf. Explica per què modificar el fitxer no canvia una pestanya fins que fas una nova petició.

## 2. Una fitxa amb dades variables — 15 minuts

Crea `02-fitxa.py` i `templates/02-fitxa.html`. Declara nom, edat i nom del projecte dins de la funció de la ruta. Calcula també l’edat de l’any que ve, passa les dades a `render_template` i mostra-les en una targeta HTML amb un títol i dos paràgrafs.

**Resultat esperat:** amb edat `18`, la fitxa mostra `19` com a edat de l’any següent. El càlcul es fa en Python, no en la plantilla.

**Variació:** posa `Aina & Marc <equip>` com a nom. Ha d’aparéixer tot com a text, inclòs `<equip>`. Revisa el codi font i explica l’escapament automàtic de Jinja.

## 3. Un preu calculat — 15 minuts

Crea `03-preu.py` i `templates/03-preu.html`. Usa `preu = 40`, `quantitat = 3` i `descompte = 10` com a percentatge. Calcula subtotal, import del descompte i total en Python abans de cridar `render_template`. Mostra en HTML les tres quantitats i la unitat monetària.

**Resultat esperat:** subtotal `120`, descompte `12` i total `108` euros.

**Variació:** prova descompte `0` (total `120`) i quantitat `0` (total `0`). No cal implementar encara formularis ni validació d’entrades.

## 4. Missatges i estils condicionals — 20 minuts

Crea `04-estat.py` i `templates/04-estat.html`. Amb una variable `places`, usa `if/else` en Python per decidir el missatge «Disponible» o «Complet» i la classe CSS `disponible` o `complet`. Passa els dos valors a la plantilla i definix els estils en un bloc `<style>`.

**Resultat esperat:** amb `3` places apareix «Disponible» amb un estil; amb `0`, «Complet» amb l’altre. La decisió la pren Python.

**Variació:** distingix «Última plaça» quan el valor siga `1`. Comprova `0`, `1` i `3` i explica l’ordre de les condicions.

## 5. Una llista i una taula — 25 minuts

Crea `05-cataleg.py` i `templates/05-cataleg.html`. Primer recorre en la plantilla `['Taller Python', 'Taller HTML', 'Taller CSS']` per generar una llista `<ul>` amb un bucle Jinja:

```html
<ul>
  {% for taller in noms_tallers %}
    <li>{{ taller }}</li>
  {% endfor %}
</ul>
```

Després usa estes dades en Python per generar una taula amb nom i places. Escriu una sola vegada l’HTML de la fila dins del bucle:

```python
tallers = [
    {"nom": "Taller Python", "places": 3},
    {"nom": "Taller HTML", "places": 0},
    {"nom": "Taller CSS", "places": 1},
]
```

**Resultat esperat:** tres elements en la llista i tres files de dades en la taula. Els noms es mostren escapats com a text.

**Variació:** afegix un quart taller només a la llista de Python i comprova que apareix. Prova una llista buida i usa `{% if tallers %}` / `{% else %}` per mostrar «No hi ha tallers» en lloc d’una taula buida.

## 6. Llegir i corregir errors — 15 minuts

Crea `06-errors.py` amb este fragment deliberadament incorrecte. Localitza i corregix els problemes un a un; comprova la sintaxi i observa també el terminal del servidor.

```python
from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def inici():
    nom = "Aina"
    places = 0
    if places = 0:
        missatge = "Complet"
    else:
        missatge = "Disponible"
    return render_template("06-errors.html", nom=nom, missatge=missatge)


if __name__ == "__main__":
    app.run(debug=True)
```

I crea `templates/06-errors.html`:

```html
<h1>{{ Nom }}</h1>
<p>{{ missatge }}</p>
```

**Resultat esperat després de corregir-lo:** nom «Aina», missatge «Complet» amb `0` places i «Disponible» amb `2`.

**Pistes:** revisa l’operador d’assignació davant del de comparació i les majúscules dels noms. Un fitxer pot passar `py_compile` i continuar tenint un error lògic o una dada que no apareix en la plantilla.

**Variació:** explica quin problema detecta el comprovador de sintaxi i quin descobrixes observant la pàgina i canviant les dades. Anota un error real, la causa i la correcció.

## 7. Una pàgina del teu projecte — 25 minuts

Crea `07-projecte.py` i `templates/07-projecte.html` amb dades fictícies del teu domini: activitats, recursos, reserves o un altre element del projecte. Integra una capçalera variable, un valor calculat, un missatge condicional i una llista generada amb un bucle Jinja.

**Resultat esperat:** la pàgina canvia quan modifiques les dades del fitxer Python, sense haver d’editar cada fragment HTML. Pots explicar què executa el servidor, què resol la plantilla i quin HTML veu el navegador.

**Variació:** prova un cas normal i un cas sense elements. Explica quina dada podria arribar d’un formulari en R2S1, sense implementar-lo encara.

## Comprovació de tancament

Conserva els fitxers de pràctica i unes notes breus per revisar-los a classe. No hi ha lliurament ni autocorrecció separada de R2S0.

- [ ] He escrit i executat codi, i he provat canvis de dades.
- [ ] Puc distingir el Python i la plantilla de l’HTML rebut pel navegador.
- [ ] Use variables, operadors, condicions i un bucle per generar una pàgina.
- [ ] Mostre el text variable escapat i separe càlcul i presentació.
- [ ] Puc explicar un error que he corregit i demostrar dos casos de la pàgina final.

Si uses IA, demana una pista sobre un error concret abans de demanar una solució completa. Guarda en les notes la pregunta real, què has aprofitat i com ho has comprovat; si uses el registre habitual `ai.log`, anota-ho allí. Si no uses IA, no inventes consultes.

## Suport i pràctica opcional

Si et bloqueges, torna a l’exercici 1, canvia una sola variable i comprova el resultat abans d’afegir una condició o un bucle. Pots treballar en parella alternant qui escriu i qui explica.

Si acabes abans, afegix un recompte de tallers amb places o extrau un càlcul a una funció senzilla. És pràctica opcional, sense punts d’ampliació del repte.

Queden per a sessions posteriors els formularis complets, validació d’entrades, sessions, cookies, autenticació, BBDD i una arquitectura més completa de l’aplicació.
