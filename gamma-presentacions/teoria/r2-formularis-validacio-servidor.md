# Brief Gamma. Teoria R2. Formularis, petició POST i validació de servidor

## Objectiu

Crear una presentació teòrica curta per preparar `R2M1`.

## Referències existents

- `docs/02_reptes/repte_02.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r2s1_entrada_variada_validacio_servidor.md`
- `dwes-microreptes-autocorreccio/microreptes/r2-s01-entrada-validacio-basica/`

## Idees clau

- Un formulari genera una petició real cap al servidor.
- `method="post"` no valida per si mateix; només indica com s'envien les dades.
- `$_POST` o el mecanisme equivalent recull dades que venen de la petició.
- Text, select/radio i checkbox no arriben igual.
- Un checkbox simple pot no aparéixer si no està marcat.
- Cal tractar camps inexistents, checkbox no marcats i dades malformades com a part del flux normal.
- No confiar en el client: la validació real s'ha de fer en servidor.
- Una condició simple pot bloquejar un cas incorrecte i mostrar un error útil.

## Format recomanat

- 7-9 diapositives.
- Una diapositiva amb mapa petició -> servidor -> resposta.
- Una diapositiva comparant text, opció tancada i checkbox.
- Una diapositiva amb exemple curt de validació de servidor.
- Una diapositiva d'errors habituals.
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Arrays d'errors complets.
- Pujada de fitxers com a mínim.
- Sessió, cookies o login.
- Base de dades.
- Solució completa del microrepte.
