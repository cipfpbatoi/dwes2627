# Brief Gamma. Teoria R2. Formularis, petició POST i validació de servidor

## Objectiu

Crear una presentació teòrica curta per preparar `R2M1`.


## Idees clau

- Un formulari genera una petició real cap al servidor.
- `method="post"` no valida per si mateix; només indica com s'envien les dades.
- `$_POST` o el mecanisme equivalent recull dades que venen de la petició.
- Text, select/radio i checkbox no arriben igual.
- Un checkbox simple pot no aparéixer si no està marcat.
- Cal tractar camps inexistents, checkbox no marcats i dades malformades com a part del flux normal.
- No confiar en el client: la validació real s'ha de fer en servidor.
- Una condició simple pot bloquejar un cas incorrecte i mostrar un error útil.

## Exemples PHP que han d'aparéixer

- Formulari `POST` amb text, opció tancada i checkbox.
- Lectura segura amb `$_POST['camp'] ?? ''`.
- Checkbox no marcat que no arriba en `$_POST`.
- Validació de servidor amb variable `$error`.
- Resposta amb error visible i eixida escapada amb `htmlspecialchars`.

## Codi base per a diapositives

```php
$nom = trim($_POST['nom'] ?? '');
$tipus = $_POST['tipus'] ?? '';
$urgent = isset($_POST['urgent']);

$error = '';
if ($nom === '') {
    $error = 'El nom és obligatori';
}
```

```php
<?php if ($error !== ''): ?>
  <p class="error"><?= htmlspecialchars($error) ?></p>
<?php endif; ?>
```

## Format recomanat

- 9-11 diapositives.
- Una diapositiva amb mapa petició -> servidor -> resposta.
- Una diapositiva comparant text, opció tancada i checkbox.
- Una diapositiva amb exemple curt de validació de servidor.
- Una diapositiva amb "què arriba a `$_POST`".
- Una diapositiva amb checkbox marcat/no marcat.
- Una diapositiva d'errors habituals.
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Arrays d'errors complets.
- Pujada de fitxers com a mínim.
- Sessió, cookies o login.
- Base de dades.
- Solució completa del microrepte.
