# Brief Gamma. Teoria R2. POO, Composer i proves unitàries

## Objectiu

Crear una presentació teòrica curta per preparar `R2M8`, introduint una classe simple, Composer, autoload i una primera prova unitària.


## Idees clau

- Una classe simple pot encapsular una regla del domini sense convertir tot el projecte a POO.
- Composer permet definir autoload i deixar de fer càrregues manuals disperses.
- Una prova unitària comprova una peça xicoteta sense navegador.
- Una prova del flux comprova que l'aplicació web continua funcionant.
- La classe no ha de dependre directament de `$_POST`, `$_SESSION`, `$_COOKIE` ni HTML.
- El mínim és classe, autoload i una prova automàtica; MVC, ORM i framework queden per a més endavant.

## Exemples PHP que han d'aparéixer

- Regla en funció o codi procedural abans de classe.
- Classe simple amb mètode pur.
- `composer.json` amb `autoload`.
- Ús de `vendor/autoload.php`.
- Test mínim que comprova dos casos.

## Codi base per a diapositives

```json
{
  "autoload": {
    "psr-4": {
      "App\\\\": "src/"
    }
  }
}
```

```php
namespace App;

final class ReglaReserva
{
    public function potConfirmar(string $estat, bool $teConflicte): bool
    {
        return $estat === 'pendent' && !$teConflicte;
    }
}
```

```php
require_once __DIR__ . '/../vendor/autoload.php';

$regla = new App\ReglaReserva();
assert($regla->potConfirmar('pendent', false) === true);
assert($regla->potConfirmar('pendent', true) === false);
```

## Format recomanat

- 9-11 diapositives.
- Exemple breu d'una regla com a funció i després com a classe.
- Diapositiva sobre `composer.json` i autoload.
- Diapositiva sobre prova unitària mínima.
- Diapositiva sobre no regressió del flux.
- Errors habituals.
- Checklist final.

## No incloure

- MVC complet.
- ORM.
- Migració a framework.
- Reescriptura total.
- Consum d'API externa com a mínim obligatori.

## Preguntes de comprovació

- Quina regla del flux has tret a una classe simple?
- Per què la classe no ha de dependre directament de `$_POST` o HTML?
- Què aporta Composer/autoload en este punt?
- Quin test mínim comprova la classe?
- Com demostres que el flux web continua funcionant després del canvi?
