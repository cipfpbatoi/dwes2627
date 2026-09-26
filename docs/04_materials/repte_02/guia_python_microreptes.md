# Continuïtat dels microreptes de R2 amb Python

Esta guia acompanya els microreptes després de la introducció `R2S0`. Si has triat Python, mantín el mateix projecte i resol els mateixos comportaments i casos de prova que la via PHP. La referència tècnica és `Flask` amb plantilles `Jinja`; no has de duplicar el treball en els dos llenguatges.

## Equivalències comunes

| En la documentació PHP | En Python amb Flask |
|---|---|
| `$_POST` | `request.form` |
| `$_GET` | `request.args` |
| `htmlspecialchars()` | escapament automàtic de Jinja amb `{{ ... }}` |
| `include` / `require` | mòduls, paquets i `import` |
| `$_SESSION` | `session` de Flask |
| `$_COOKIE` / `setcookie()` | `request.cookies` / `response.set_cookie()` |
| `$_SERVER` | `request.method`, `request.headers` i `request.remote_addr` |
| `password_hash()` / `password_verify()` | `generate_password_hash()` / `check_password_hash()` de Werkzeug |
| `json_encode()` | `jsonify()` o una resposta JSON de Flask |
| Composer i `vendor/autoload.php` | `requirements.txt` o `pyproject.toml`, paquets i importacions |
| PHPUnit o Pest | `pytest` o `unittest` |
| PDO i consultes preparades | connector DB-API i consultes parametritzades |

Les equivalències no són receptes per copiar. Has de poder explicar on entra la petició, on es valida, on viu l'estat i com es genera la resposta.

## R2M1. Entrada i validació

- Crea una ruta que accepte `GET` per mostrar el formulari i `POST` per processar-lo.
- Recupera les dades amb `request.form.get(...)`; tracta com a absent qualsevol camp que no arribe.
- Valida en Python les opcions tancades, longituds i formats necessaris.
- Torna a renderitzar la plantilla amb un error visible i sense marcar dades variables com a segures.

## R2M2. Reintent i confirmació

- Passa a Jinja els valors aprofitables perquè reapareguen en `value`, `selected` o `checked`.
- Mantín separats l'error de validació, la reconstrucció del formulari i el guardat del cas correcte.
- Usa un mecanisme provisional explicable, com una estructura en memòria o un fitxer controlat. La BBDD encara no és obligatòria.

## R2M3. Regles del projecte

- Extrau les regles a un mòdul propi, per exemple `app/regles.py`.
- Importa les funcions des de la ruta i comprova almenys dos casos que produïsquen resultats diferents.
- Usa llistes o diccionaris quan tinguen sentit; no trasllades tota la lògica a Jinja.

## R2M4. Estat, sessió i cookies

- Configura una `SECRET_KEY` de desenvolupament fora del codi versionat i usa `session` per a l'estat temporal.
- Llig una preferència no sensible amb `request.cookies` i escriu-la sobre una resposta amb `set_cookie()`.
- Consulta una dada de la petició, com `request.method` o `request.headers.get("User-Agent")`, amb una finalitat visible.
- Centralitza la creació de l'aplicació i la configuració en un punt d'arrancada estable.

## R2M5. Autenticació i operació protegida

- Genera i comprova el hash amb les utilitats de Werkzeug; no guardes mai la contrasenya en clar.
- Guarda en sessió només la identitat mínima necessària.
- Protegix una operació real del projecte i demostra tant l'accés autoritzat com el denegat.

## R2M6. Mini API d'autenticació

- Crea un `POST /api/login` que llija JSON amb `request.get_json()` de manera defensiva.
- Retorna JSON i els codis `200` i `401` segons el contracte comú.
- Comprova realment el token o mecanisme documentat en la ruta protegida; no retornes contrasenyes ni hashes.

## R2M7. Prova i depuració

- Conserva la mateixa taula de casos positius i negatius.
- Automatitza almenys un cas amb `curl`, un script Python curt o el client de proves de Flask.
- Registra l'ordre executada i el resultat; activar `debug=True` no és una prova.

## R2M8. Primera peça testable

- Mou una regla real a una classe dins d'un mòdul importable, sense dependència directa de Flask, `request` o `session`.
- Declara les dependències en `requirements.txt` o `pyproject.toml`.
- Escriu i executa almenys una prova amb `pytest` o `unittest`, i torna a comprovar el flux web afectat.

## R2M9. Persistència mínima amb BBDD

- Separa la configuració de connexió i no versions secrets.
- Usa el connector apropiat per a la BBDD triada. Amb SQLite pots usar `sqlite3`; amb MySQL o PostgreSQL necessitaràs el driver corresponent.
- Fes l'alta i la lectura amb consultes parametritzades, mai concatenant dades de l'usuari en SQL.
- Documenta com crear la taula, arrancar l'aplicació i reproduir els dos casos.

## Tancament després de cada microrepte

En la documentació i en la defensa usa els noms reals de Python que has aplicat, però respon sempre les mateixes preguntes:

1. Quina entrada has provat?
2. On es valida o es decidix el resultat?
3. Quina resposta o canvi observable produïx?
4. Com has comprovat el cas correcte i el cas d'error?
5. Quin fitxer o prova permet a una altra persona reproduir-ho?
