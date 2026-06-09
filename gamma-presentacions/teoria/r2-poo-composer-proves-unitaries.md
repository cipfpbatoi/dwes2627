# Brief Gamma. Teoria R2. POO, Composer i proves unitàries

## Objectiu

Crear una presentació teòrica curta per preparar `R2M7`, introduint una classe simple, Composer, autoload i una primera prova unitària.

## Referències existents

- `docs/02_reptes/repte_02.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r2s7_primera_peca_testable_poo_composer.md`
- `dwes-microreptes-autocorreccio/microreptes/r2-s07-primera-peca-testable-poo-composer/`

## Idees clau

- Una classe simple pot encapsular una regla del domini sense convertir tot el projecte a POO.
- Composer permet definir autoload i deixar de fer càrregues manuals disperses.
- Una prova unitària comprova una peça xicoteta sense navegador.
- Una prova del flux comprova que l'aplicació web continua funcionant.
- La classe no ha de dependre directament de `$_POST`, `$_SESSION`, `$_COOKIE` ni HTML.
- El mínim és classe, autoload i una prova automàtica; MVC, ORM i framework queden per a més endavant.

## Format recomanat

- 7-9 diapositives.
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
