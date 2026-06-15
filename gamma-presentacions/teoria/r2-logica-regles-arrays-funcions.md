# Brief Gamma. Teoria R2. Decisions, arrays, funcions i regles de domini

## Objectiu

Crear una presentació teòrica curta per preparar `R2M3`, incloent funcions pròpies en un fitxer separat i ús bàsic de `require_once`, `include_once` o equivalent.


## Idees clau

- Una regla de domini és una decisió del producte expressada en codi.
- Una condició ha de canviar el comportament del sistema de manera visible.
- Un array o estructura equivalent ha de representar alguna cosa útil: catàleg, opcions, prioritats, etiquetes, regles o elements.
- Una funció útil té nom clar, dades d'entrada i responsabilitat recognoscible.
- Una llibreria pròpia mínima és un fitxer separat amb funcions o regles del projecte.
- `require_once` o `include_once` permet carregar eixe fitxer des del flux principal.
- Separar una funció de regla no és encara MVC ni arquitectura completa.
- Dos casos de prova diferents són la manera mínima de demostrar que la regla funciona.
- La lògica ha d'estar connectada a dades reals del flux, no a literals fixos.

## Exemples PHP que han d'aparéixer

- Regla escrita en llenguatge natural i traduïda a condició.
- Array de prioritats, estats, tipus o recursos del projecte.
- Funció simple que rep dades i retorna una decisió.
- Fitxer `regles.php` carregat amb `require_once`.
- Dos casos de prova amb resultat diferent.

## Codi base per a diapositives

```php
$prioritats = [
    'baixa' => 1,
    'normal' => 2,
    'alta' => 3,
];
```

```php
function potConfirmarReserva(string $estat, bool $teConflicte): bool
{
    return $estat === 'pendent' && !$teConflicte;
}
```

```php
require_once __DIR__ . '/../src/regles.php';

if (potConfirmarReserva($estat, $teConflicte)) {
    $missatge = 'Reserva confirmable';
} else {
    $missatge = 'Cal revisar la reserva';
}
```

## Format recomanat

- 9-11 diapositives.
- Una diapositiva de regla en llenguatge natural -> condició.
- Una diapositiva d'exemple d'array de domini.
- Una diapositiva d'exemple de fitxer `regles.php` o equivalent.
- Una diapositiva d'exemple de funció útil importada amb `require_once`.
- Una diapositiva amb exemples per inventari, reserves i incidències.
- Una diapositiva amb dos casos de prova.
- Una diapositiva d'errors habituals.
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Classes, patrons o arquitectura avançada.
- Sessió, cookies, login o autorització.
- Persistència formal.
- Refactorització general.
- Solució completa del microrepte.

## Preguntes de comprovació

- Quina regla real del teu projecte pots escriure en llenguatge natural?
- Quina dada del formulari o del flux alimenta eixa regla?
- Quin array representa informació del domini i no només un exemple solt?
- Què rep i què retorna la funció que has creat?
- Quins dos casos produeixen resultats visibles diferents?
