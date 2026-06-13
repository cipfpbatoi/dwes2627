# Brief Gamma. Teoria R2. Proves, depuració i checkpoint

## Objectiu

Crear una presentació teòrica curta per preparar `R2M7`.

## Referències existents

- `docs/02_reptes/repte_02.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r2s7_proves_depuracio_checkpoint.md`
- `dwes-microreptes-autocorreccio/microreptes/r2-s07-proves-depuracio-checkpoint/`

## Idees clau

- Provar és comparar resultat esperat i resultat real.
- El camí feliç no és suficient.
- Una prova automàtica lleugera de flux comprova una resposta observable sense entrar encara en unit testing.
- `curl`, scripts `.sh`, scripts PHP senzills o col·leccions de peticions són suficients per a `R2M7`.
- Les proves unitàries i `PHPUnit` queden com a pont cap a fases amb més separació de responsabilitats.
- Primer cal reproduir un error i després corregir-lo.
- Una taula de proves ha d'incloure entrada, passos, resultat esperat, resultat real i incidència.
- El README ha de permetre repetir la demo.
- Les incidències bloquejants van abans que les millores.

## Format recomanat

- 6-8 diapositives.
- Una taula de prova d'exemple.
- Una diapositiva de casos mínims.
- Una diapositiva amb una comanda `curl`.
- Una diapositiva comparant prova manual, prova de flux i prova unitària.
- Una diapositiva de depuració ordenada.
- Errors habituals.
- Checklist final.

## No incloure

- Proves unitàries obligatòries.
- `PHPUnit` com a mínim.
- Refactorització encara.
- Funcionalitats noves.
