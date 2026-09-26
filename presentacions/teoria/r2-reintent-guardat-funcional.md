# Brief Gamma. Teoria R2. Reintent, conservació de dades i confirmació

## Objectiu

Crear una presentació de consolidació molt breu per usar després de `R2M2`. Ha de permetre revisar el que s'ha fet, no tornar a explicar tot el microrepte.


## Idees clau

- El servidor pot reconstruir el formulari després d'un error.
- Conservar dades en el reintent no és el mateix que confirmar una entrada correcta.
- `value`, `selected` i `checked` o equivalents ajuden a tornar a pintar valors.
- Els valors conservats han de vindre de la petició real, no de literals fixos.
- El cas amb error no ha de mostrar-se com a correcte.
- El cas correcte es processa i es mostra en una confirmació o resum.
- Guardar-lo per recuperar-lo en una altra petició és una ampliació.
- L'ampliació pot usar un fitxer `JSON` per guardar casos correctes i mostrar-los després.
- La pujada bàsica d'un fitxer del domini és obligatòria, amb validació de mida i tipus o extensió, intent de guardat i una prova d'acceptació i rebuig.
- Si es mostra text de l'usuari, cal tractar-lo o escapar-lo segons el nivell.

## Exemples mínims que han d'aparéixer

- Un únic exemple que mostre com conservar un camp de text i una opció tancada.
- Les dues vies, PHP i Python amb Flask/Jinja, en pestanyes o columnes equivalents.
- Un esquema amb els dos camins: error i reintent; cas correcte i confirmació.
- La diferència entre "conservar per corregir", "confirmar el resultat" i "persistir entre peticions".

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

- Persistència entre peticions com a requisit.
- Convertir la pujada de fitxers en el focus principal: té un pes menor que el reintent.
- Sessió, cookies o login.
- MVC o arquitectura completa.
- Arrays d'errors com a mínim.
- Solució completa del microrepte.
- Repetir la teoria de peticions i validació ja vista en `R2M1`.
- Més d'un exemple complet de codi.

## Preguntes de comprovació

- Quina diferència hi ha entre conservar dades per reintentar i confirmar un cas correcte?
- Què no s'ha de confirmar si el formulari encara té error?
- Quines dades processades han d'aparéixer en el resum del cas correcte?
