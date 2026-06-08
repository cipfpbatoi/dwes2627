# Brief Gamma. Teoria R2. Decisions, arrays, funcions i regles de domini

## Objectiu

Crear una presentació teòrica curta per preparar `R2M3`, incloent funcions pròpies en un fitxer separat i ús bàsic de `require_once`, `include_once` o equivalent.

## Referències existents

- `docs/02_reptes/repte_02.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r2s3_logica_flux_regles_projecte.md`
- `dwes-microreptes-autocorreccio/microreptes/r2-s03-logica-flux-regles-projecte/`

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

## Format recomanat

- 7-9 diapositives.
- Una diapositiva de regla en llenguatge natural -> condició.
- Una diapositiva d'exemple d'array de domini.
- Una diapositiva d'exemple de fitxer `regles.php` o equivalent.
- Una diapositiva d'exemple de funció útil importada amb `require_once`.
- Una diapositiva amb dos casos de prova.
- Una diapositiva d'errors habituals.
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Classes, patrons o arquitectura avançada.
- Sessió, cookies, login o autorització.
- Persistència formal.
- Refactorització general.
- Solució completa del microrepte.
