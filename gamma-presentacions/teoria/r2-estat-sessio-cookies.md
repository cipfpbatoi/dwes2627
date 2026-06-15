# Brief Gamma. Teoria R2. Estat, sessió i cookies

## Objectiu

Crear una presentació teòrica curta per preparar `R2M4`, incloent sessió, cookie, `$_SERVER` i base comuna d'includes.


## Idees clau

- HTTP no recorda estat per si mateix.
- Estat temporal ajuda a continuar un flux entre peticions.
- Sessió: dades associades al client i mantingudes al servidor.
- Cookie: dada en client, sovint identificador o preferència limitada.
- La cookie de sessió no és tota la sessió.
- `$_SERVER` aporta context de petició, com mètode, agent o IP, però no autentica una persona.
- Les rutes relatives en `include` o `require` poden trencar-se si els fitxers canvien de carpeta.
- Un `config.php` o `bootstrap.php` amb ruta base ajuda a fer includes estables.
- Estat temporal no és persistència del domini.
- Cal invalidar o netejar quan la dada deixa de tindre sentit.

## Exemples PHP que han d'aparéixer

- `session_start()` abans d'usar `$_SESSION`.
- Guardar una dada temporal no sensible en sessió.
- Llegir la dada en una petició posterior.
- Crear una cookie de preferència no sensible.
- Llegir `$_SERVER['REQUEST_METHOD']`.
- Definir una ruta base per a includes.
- Netejar o invalidar la dada temporal.

## Codi base per a diapositives

```php
session_start();
$_SESSION['usuari_demo'] = 'aina';
```

```php
$metode = $_SERVER['REQUEST_METHOD'] ?? 'GET';
```

```php
setcookie('tema', 'clar', time() + 3600, '/');
```

```php
define('BASE_PATH', dirname(__DIR__));
require_once BASE_PATH . '/src/regles.php';
```

## Format recomanat

- 9-11 diapositives.
- Mapa client -> cookie -> servidor -> sessió -> `$_SERVER`.
- Exemple d'una dada temporal en sessió.
- Exemple de cookie no sensible.
- Exemple de `BASE_PATH` i `require_once`.
- Exemple d'invalidació.
- Errors habituals.
- Preguntes finals de comprovació.

## No incloure

- Login complet.
- Autorització.
- Persistència formal.
- Arquitectura MVC.
