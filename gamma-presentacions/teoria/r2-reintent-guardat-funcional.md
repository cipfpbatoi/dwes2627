# Brief Gamma. Teoria R2. Reintent, conservació de dades i guardat funcional

## Objectiu

Crear una presentació teòrica curta per preparar `R2M2`.

## Referències existents

- `docs/02_reptes/repte_02.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r2s2_processament_reintent_conservacio_dades.md`
- `dwes-microreptes-autocorreccio/microreptes/r2-s02-processament-reintent-conservacio-dades/`

## Idees clau

- El servidor pot reconstruir el formulari després d'un error.
- Conservar dades en el reintent no és el mateix que guardar una entrada correcta.
- `value`, `selected` i `checked` o equivalents ajuden a tornar a pintar valors.
- Els valors conservats han de vindre de la petició real, no de literals fixos.
- El cas amb error no s'ha de guardar com a correcte.
- El cas correcte pot guardar-se funcionalment amb un mecanisme simple i explicable.
- Si es mostra text de l'usuari, cal tractar-lo o escapar-lo segons el nivell.

## Format recomanat

- 7-9 diapositives.
- Una diapositiva amb els dos camins: error/reintent i correcte/guardat.
- Una diapositiva visual sobre `value`, `selected` i `checked`.
- Una diapositiva comparant reintent, guardat funcional i persistència formal.
- Una diapositiva d'errors habituals.
- Una diapositiva final amb checklist de prova.

## No incloure

- Persistència formal com a requisit.
- Sessió, cookies o login.
- MVC o arquitectura completa.
- Arrays d'errors com a mínim.
- Solució completa del microrepte.
