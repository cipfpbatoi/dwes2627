# Brief Gamma. Teoria R2. Estat, sessió i cookies

## Objectiu

Crear una presentació teòrica curta per preparar `R2M4`, incloent sessió, cookie, `$_SERVER` i base comuna d'includes.

## Referències existents

- `docs/02_reptes/repte_02.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r2s4_estat_sessio_cookies.md`
- `dwes-microreptes-autocorreccio/microreptes/r2-s04-estat-sessio-cookies/`

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

## Format recomanat

- 7-9 diapositives.
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
