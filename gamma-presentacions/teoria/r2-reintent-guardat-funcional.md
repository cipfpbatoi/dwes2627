# Brief Gamma. Teoria R2. Reintent, conservació de dades i guardat funcional

## Objectiu

Crear una presentació teòrica curta per preparar `R2M2`.


## Idees clau

- El servidor pot reconstruir el formulari després d'un error.
- Conservar dades en el reintent no és el mateix que guardar una entrada correcta.
- `value`, `selected` i `checked` o equivalents ajuden a tornar a pintar valors.
- Els valors conservats han de vindre de la petició real, no de literals fixos.
- El cas amb error no s'ha de guardar com a correcte.
- El cas correcte pot guardar-se funcionalment amb un mecanisme simple i explicable.
- Si es mostra text de l'usuari, cal tractar-lo o escapar-lo segons el nivell.

## Exemples PHP que han d'aparéixer

- Reomplir un `<input>` amb `value`.
- Mantindre un `<select>` amb `selected`.
- Mantindre un checkbox amb `checked`.
- Guardar funcionalment el cas correcte en array, fitxer simple o estructura controlada segons el nivell.
- Diferenciar "conservar per corregir" i "guardar com a dada correcta".

## Codi base per a diapositives

```php
$nom = $_POST['nom'] ?? '';
```

```php
<input name="nom" value="<?= htmlspecialchars($nom) ?>">
```

```php
<option value="alta" <?= $tipus === 'alta' ? 'selected' : '' ?>>Alta</option>
```

```php
<input type="checkbox" name="urgent" <?= $urgent ? 'checked' : '' ?>>
```

## Format recomanat

- 9-11 diapositives.
- Una diapositiva amb els dos camins: error/reintent i correcte/guardat.
- Una diapositiva visual sobre `value`, `selected` i `checked`.
- Una diapositiva comparant reintent, guardat funcional i persistència formal.
- Una diapositiva amb exemple complet de reintent.
- Una diapositiva d'errors habituals.
- Una diapositiva final amb checklist de prova.

## No incloure

- Persistència formal com a requisit.
- Sessió, cookies o login.
- MVC o arquitectura completa.
- Arrays d'errors com a mínim.
- Solució completa del microrepte.
