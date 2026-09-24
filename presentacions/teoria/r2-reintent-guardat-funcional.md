# Brief Gamma. Teoria R2. Reintent, conservació de dades i guardat funcional

## Objectiu

Crear una presentació de consolidació molt breu per usar després de `R2M2`. Ha de permetre revisar el que s'ha fet, no tornar a explicar tot el microrepte.


## Idees clau

- El servidor pot reconstruir el formulari després d'un error.
- Conservar dades en el reintent no és el mateix que guardar una entrada correcta.
- `value`, `selected` i `checked` o equivalents ajuden a tornar a pintar valors.
- Els valors conservats han de vindre de la petició real, no de literals fixos.
- El cas amb error no s'ha de guardar com a correcte.
- El cas correcte pot guardar-se funcionalment amb un mecanisme simple i explicable.
- Si es mostra text de l'usuari, cal tractar-lo o escapar-lo segons el nivell.

## Exemples mínims que han d'aparéixer

- Un únic exemple que mostre com conservar un camp de text i una opció tancada.
- Les dues vies, PHP i Python amb Flask/Jinja, en pestanyes o columnes equivalents.
- Un esquema amb els dos camins: error i reintent; cas correcte i guardat funcional.
- La diferència entre "conservar per corregir" i "guardar com a dada correcta".

## Codi base per a diapositives

```php
$nom = $_POST['nom'] ?? '';
```

```php
<input name="nom" value="<?= htmlspecialchars($nom) ?>">
```

```python
nom = request.form.get("nom", "").strip()
```

```html
<input name="nom" value="{{ nom }}">
```

No cal mostrar codi separat per a tots els controls. El `select` o el checkbox es pot explicar visualment sobre el mateix patró.

## Format recomanat

- 5-6 diapositives com a màxim.
- 1: recordatori del problema observat en `R2M2`.
- 2: esquema dels dos camins.
- 3: un exemple mínim PHP/Python de dada conservada.
- 4: tres errors habituals i com detectar-los.
- 5: checklist de prova i dues preguntes de comprovació.
- 6 opcional: connexió amb `R2M3`, sense avançar-ne contingut.

## No incloure

- Persistència formal com a requisit.
- Sessió, cookies o login.
- MVC o arquitectura completa.
- Arrays d'errors com a mínim.
- Solució completa del microrepte.
- Repetir la teoria de peticions i validació ja vista en `R2M1`.
- Més d'un exemple complet de codi.

## Preguntes de comprovació

- Quina diferència hi ha entre conservar dades per reintentar i guardar una dada correcta?
- Què no s'ha de guardar si el formulari encara té error?
- On es pot comprovar després la dada correcta guardada funcionalment?
