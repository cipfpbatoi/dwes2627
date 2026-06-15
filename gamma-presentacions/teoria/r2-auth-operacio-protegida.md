# Brief Gamma. Teoria R2. Autenticació, autorització i operació protegida

## Objectiu

Crear una presentació teòrica curta per preparar `R2M5`, incloent registre mínim, hash de contrasenya, login i operació protegida.


## Idees clau

- Identificació: l'usuari diu qui és.
- Registre: el sistema crea o prepara una identitat amb credencial.
- Les contrasenyes no es guarden en clar.
- `password_hash` o equivalent genera un hash segur.
- `password_verify` o equivalent comprova la contrasenya introduïda contra el hash.
- Autenticació: el sistema comprova que és qui diu.
- Autorització: el sistema decideix què pot fer.
- Autenticació i autorització són coses diferents: comprovar qui ets no és igual que comprovar què pots fer.
- La protecció ha d'estar en servidor.
- Ocultar un botó no protegeix una operació.
- Una operació protegida ha de tindre valor dins del producte.
- Cal provar cas permés, cas denegat i logout.

## Exemples PHP que han d'aparéixer

- Registre mínim amb `password_hash`.
- Login amb `password_verify`.
- Guardar només identificador mínim d'usuari en sessió.
- Funció `requereixLogin()` o comprovació equivalent.
- Cas denegat abans de mostrar o executar una operació.
- Logout amb `session_destroy()` o invalidació equivalent.

## Codi base per a diapositives

```php
$hash = password_hash($password, PASSWORD_DEFAULT);
```

```php
if (password_verify($password, $usuari['password_hash'])) {
    $_SESSION['user_id'] = $usuari['id'];
}
```

```php
if (!isset($_SESSION['user_id'])) {
    http_response_code(403);
    exit('Accés denegat');
}
```

## Format recomanat

- 9-11 diapositives.
- Esquema identificació -> autenticació -> autorització.
- Diapositiva sobre registre i hash de contrasenya.
- Diapositiva amb operació protegida real.
- Diapositiva de casos de prova.
- Errors habituals.
- Checklist final.

## No incloure

- OAuth, JWT o sistemes avançats.
- Rols complexos com a mínim.
- Registre públic complet o recuperació de contrasenya.
- Base de dades obligatòria.
- Arquitectura completa.
