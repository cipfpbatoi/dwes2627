# Com pujar el treball per a l'autocorrecció

Esta guia explica com has de deixar el teu repositori perquè l'autocorrecció puga revisar el microrepte correctament.

Pots consultar els [exemples de README omplits per a R1M1 i R1M2](#exemples-de-readme-omplits) abans de preparar la teua entrega.

## Idea bàsica

L'autocorrecció no revisa converses externes, captures soltes ni fitxers que només tens al teu ordinador. Revisa el que està pujat al teu repositori individual de GitHub.

Per tant, abans de donar un microrepte per entregat, has de comprovar tres coses:

1. El treball està dins del repositori correcte.
2. Les evidències són fàcils de trobar.
3. Tot està en la branca que es corregirà.

## Primer pas del curs: GitHub Classroom

En la primera sessió del curs, `R1S1`, el professorat et donarà l'enllaç de GitHub Classroom. No has de clonar el repositori base directament ni crear un repositori nou pel teu compte.

El procés correcte és:

1. Accepta l'enllaç de GitHub Classroom amb el teu usuari de GitHub.
2. Espera que Classroom cree el teu repositori individual.
3. Obri el teu repositori individual en GitHub.
4. Copia la URL des del botó `Code`.
5. Clona eixe repositori al teu ordinador.

Exemple:

```bash
git clone URL_DEL_TEU_REPOSITORI
cd NOM_DEL_TEU_REPOSITORI
git status
```

Eixe és el repositori on treballaràs durant tot el curs. Cada repte i cada microrepte han de quedar dins d'eixe mateix repositori.

En `R1S1`, abans d'acabar la sessió, has de deixar com a mínim un primer canvi en `README.md`, fer commit i fer `push` a GitHub. Això servix per comprovar que el repositori està ben creat, clonat i connectat amb l'autocorrecció.

## On ha d'estar el treball

| Tipus de contingut | On posar-ho |
|---|---|
| Fitxa d'entrega del microrepte, com arrancar i com provar | `README.md` |
| Decisions tècniques, notes breus o registre d'ús d'IA | `docs/` |
| Captures textuals, logs, resultats de proves o comprovacions | `evidence/` |
| Tests automàtics o fitxers relacionats amb proves | `tests/` |
| Codi de l'aplicació | `src/`, `app/` o l'estructura pròpia del projecte |

Si una evidència és important, ha d'estar en el repositori i ha de tindre un nom clar.

## Branca que es corregeix

La correcció ordinària revisa la branca:

```text
main
```

Recomanem una branca `repte/r2` i una `microrepte/r2m3`, amb el flux **microrepte → repte → main**. Seguix la [guia de branques, PR i entregues](guia_branques_i_entregues.md), amb les dues PR que tu mateix pots integrar i etiquetes per conservar cada entrega.

No uses el nom de la branca per indicar quin microrepte vols corregir. El microrepte actiu el configura el professorat des del sistema d'autocorrecció.

## Com evitar que `main` siga un caos

La branca `main` és la referència ordinària perquè l'autocorrecció i el professorat no hagen de buscar en branques diferents. Però això no vol dir que tot haja de quedar barrejat.

Cada microrepte ha de deixar el seu treball localitzable.

Una estructura recomanada és:

```text
README.md
ENTREGA.md
docs/
  r2m3.md
  r2m4.md
  ai-log.md, si cal
evidence/
  r2m3/
  r2m4/
tests/
src/ o app/
```

El `ENTREGA.md` és la guia base del repositori i no cal modificar-lo en cada microrepte. En `README.md`, mantín sempre un apartat de microrepte actual:

```md
## Microrepte actual

Microrepte: R2M3

Què he fet:

Com provar-ho:

Evidències:
- evidence/r2m3/
- docs/r2m3.md
```

Conserva les branques de repte i microrepte i una etiqueta per entrega. La [guia de branques i entregues](guia_branques_i_entregues.md) explica com crear-les, integrar-les i recuperar una versió anterior.

## Exemples de README omplits

Pots partir d'estos dos exemples del projecte fictici **Material Viu**, un servei per reservar material reutilitzable. Mostren com canvia el README entre una entrega documental i una entrega executable:

- [R1M1: fitxa i decisió tècnica](#exemple-r1m1-entrega-documental).
- [R1M2: entorn i landing](#exemple-r1m2-entrega-executable).

Són models de redacció: no acrediten proves fetes per tu ni creen els fitxers enllaçats. Adapta el producte, els noms de fitxer, els serveis, els ports, les ordres i els resultats al teu repositori. Conserva només els enllaços que existisquen i les afirmacions que pugues demostrar. Si una prova falla o queda pendent, escriu-ho amb el seu resultat real.

El README orienta la revisió; la fitxa, el codi i els logs han d'estar també dins del repositori. No cal modificar els README de les carpetes ni copiar tots els exemples d'ordres de la plantilla.

### Exemple R1M1: entrega documental

En R1M1 encara no es demana un servidor executable. La comprovació se centra en la fitxa, la coherència de la decisió i les fonts o consultes contrastades. Pots usar este contingut com a punt de partida del `README.md` de l'arrel:

````md
# Material Viu — R1M1

Material Viu vol facilitar la reserva de material reutilitzable per a activitats del barri.
La primera acció útil prevista serà sol·licitar un material per a una franja horària.

## Microrepte actual

| Camp | Valor |
|---|---|
| Microrepte | R1M1 — Model client/servidor i decisió tècnica inicial |
| Què he fet | He explicat el flux del producte, comparat PHP base, Laravel i NestJS i proposat una base inicial per a R1M2. |
| Com provar-ho | Llegir la fitxa i contrastar el flux i les decisions amb les preguntes de verificació d'este README. |
| Evidències principals | [Fitxa d'exploració](docs/r1m1.md) i [registre d'ús d'IA](docs/ai-log.md). |

## Model client/servidor del producte

El navegador mostrarà el material disponible amb HTML i CSS i enviarà peticions HTTP.
El servidor web rebrà les peticions i PHP executarà la lògica del backend.
El servidor retornarà HTML amb el resultat; el navegador no executarà PHP.

Quan implementem les reserves, el backend haurà de validar la franja sol·licitada.
No bastarà amb validar-la al navegador, perquè eixa comprovació es pot evitar.
La base de dades es consultarà des del backend, no directament des del client.

## Com executar-lo

Esta entrega és documental: encara no inclou una aplicació per arrancar.
Obri [docs/r1m1.md](docs/r1m1.md) en GitHub o en un editor de Markdown.

## Com verificar-lo

1. Localitza en la fitxa què fa el navegador, què fa el servidor web i què executa PHP.
2. Seguix l'exemple de petició de reserva: entrada, processament i resposta prevista.
3. Revisa la comparació de tecnologies, l'alternativa descartada i les fonts consultades.
4. Comprova que la decisió separa la base de R1M2 del framework ajornat a R3.

Resultat esperat: poder explicar el flux sense confondre PHP amb el navegador o amb la base de dades.
La defensa oral amb el professorat està pendent.

## Decisions tècniques

- Decisió: començar R1M2 amb PHP base i Apache en Docker.
- Motiu: entendre una petició i una resposta abans d'introduir un framework complet.
- Alternativa descartada ara: NestJS, perquè implicaria canviar la base PHP del curs.
- Ajornat: valorar Laravel en R3, quan el projecte necessite més estructura.
- Dubte pendent: com evitarem dues reserves simultànies del mateix material?

## Registre d'ús d'IA

He usat IA per aclarir la diferència entre servidor web i runtime i comparar opcions.
En [docs/ai-log.md](docs/ai-log.md) he registrat la pregunta literal, el suggeriment,
què he acceptat o modificat i com ho he contrastat amb el material del curs.
La fitxa conté l'explicació aplicada a Material Viu.

## Pròxim pas

En R1M2 muntaré l'entorn i comprovaré una primera landing servida amb PHP.
````

Si no has usat IA, substituïx l'últim apartat per una indicació breu i les fonts que sí has consultat. No inventes preguntes ni converses per omplir el registre.

### Exemple R1M2: entrega executable

Este exemple pressuposa un `compose.yaml` amb serveis `web`, `db` i `phpmyadmin`; web en el port `8115`, phpMyAdmin en `8215`, i MySQL només accessible dins de Docker. En el servei `db`, les variables `MYSQL_USER`, `MYSQL_PASSWORD` i `MYSQL_DATABASE` configuren un usuari local de pràctiques. La portada està en `src/index.php` i el CSS en `src/style.css`. **Les ordres s'han d'adaptar si la teua configuració és diferent.**

````md
# Material Viu — R1M2

Material Viu presenta un servei de reserva de material reutilitzable per a activitats del barri.
Esta versió mostra el producte; encara no permet enviar reserves.

## Microrepte actual

| Camp | Valor |
|---|---|
| Microrepte | R1M2 — Entorn executable, landing inicial i tancament de R1 |
| Què he fet | He configurat PHP/Apache, MySQL i phpMyAdmin i creat una landing pròpia amb CSS. |
| Com provar-ho | Arrancar Docker Compose, obrir la portada i seguir les comprovacions HTTP i SQL indicades més avall. |
| Evidències principals | [Decisions i incidències](docs/r1m2.md), [log de comprovacions](evidence/r1m2/verificacio.txt) i [AI log](docs/ai-log.md). |

La [fitxa de R1M1](docs/r1m1.md) es conserva com a antecedent de la decisió tècnica.

## Requisits

- Docker Engine o Docker Desktop en marxa, amb Docker Compose v2.
- Ports 8115 i 8215 lliures.
- Connexió per descarregar les imatges la primera vegada.
- Executar les ordres des de l'arrel del repositori, on està compose.yaml.

## Com executar-lo

```bash
docker compose up -d --wait --wait-timeout 180
docker compose ps
```

| Servei | Funció | Accés |
|---|---|---|
| web | Apache executa PHP i servix la portada i el CSS | http://127.0.0.1:8115/ |
| db | MySQL, preparat per a fases posteriors | db:3306 dins de la xarxa Docker; sense port publicat al host |
| phpmyadmin | Administració de MySQL | http://127.0.0.1:8215/ |

Per entrar a phpMyAdmin, usa l'usuari local de pràctiques definit en compose.yaml
amb MYSQL_USER i MYSQL_PASSWORD; el servidor MySQL és db.
Les credencials de demostració no són contrasenyes personals ni de producció.

Per parar els serveis conservant el volum de dades:

```bash
docker compose down
```

## Com verificar-lo

### Portada i CSS

```bash
curl -i http://127.0.0.1:8115/
curl -I http://127.0.0.1:8115/style.css
```

Resultat esperat: resposta HTTP 200, HTML amb el nom «Material Viu» i CSS accessible.
Obri també la portada al navegador: ha de mostrar el propòsit, l'estat inicial i el pròxim pas de R2.
L'HTML rebut no ha de contindre codi PHP sense executar.

### Base de dades

```bash
docker compose exec -T db sh -c 'MYSQL_PWD="$MYSQL_PASSWORD" mysql -u"$MYSQL_USER" -D"$MYSQL_DATABASE" -e "SELECT 1 AS connexio, DATABASE() AS base;"'
```

Resultat esperat: connexio igual a 1 i el nom de la base configurada en MYSQL_DATABASE.
La landing encara no consulta MySQL; esta prova comprova la infraestructura per separat.

### phpMyAdmin

Obri http://127.0.0.1:8215/, entra amb l'usuari local indicat i comprova que pots consultar la base de pràctiques.
Carregar la pàgina d'accés i entrar a la base són comprovacions diferents: registra quines has fet.

### Evidències i errors

Guarda les ordres, la data i les eixides reals en [verificacio.txt](evidence/r1m2/verificacio.txt).
Els resultats esperats d'este README no substituïxen eixe log.
Si falla l'arrancada, consulta docker compose ps i docker compose logs,
i registra el missatge, la hipòtesi i el següent intent en [docs/r1m2.md](docs/r1m2.md).

## Decisions tècniques i traçabilitat

- He mantingut PHP sense framework per entendre el flux HTTP; Laravel queda ajornat a R3.
- He adaptat el nom del producte, els textos, els ports i el CSS.
- Apache rep la petició, PHP genera HTML i el navegador interpreta HTML/CSS.
- El registre de tasques d'entorn, portada, documentació i comprovacions està en [docs/r1m2.md](docs/r1m2.md).
- El dubte sobre reserves simultànies continua obert: encara no hi ha persistència del domini.

## Registre d'ús d'IA

En [docs/ai-log.md](docs/ai-log.md) he registrat les consultes reals sobre configuració i CSS,
les propostes adaptades i les comprovacions executades. Els resultats es poden contrastar amb el log.

## Pas a R2

Preparar un formulari de reserva amb material i franja horària, validar-lo en PHP
i conservar els valors quan hi haja errors. Formularis, sessions i login encara no formen part d'esta entrega.

## Ampliació del repte

No presente ampliació de R1. La landing forma part del nucli obligatori.
````

Si presentes l'ampliació, substituïx només eixe últim apartat per una descripció real i un enllaç a `docs/r1-ampliacio.md`, amb les rutes i les proves corresponents. Es recull en R1M2 com a últim microrepte de R1 i queda pendent de validació docent; no cal incloure-la en el README de R1M1. Consulta la [regla d'ampliació del repte](../ampliacions-excellencia.md).

En passar de R1M1 a R1M2, actualitza el README amb l'entrega actual i conserva `docs/r1m1.md`. En entregues posteriors, aplica el mateix criteri amb els codis i les evidències que pertoquen.

## Abans de fer el commit

Comprova que el repositori conté:

- [ ] el codi o documentació demanada pel microrepte;
- [ ] `README.md` actualitzat;
- [ ] un apartat de microrepte actual en `README.md`;
- [ ] instruccions per arrancar o provar el treball;
- [ ] evidències dins de `docs/`, `evidence/` o `tests/`, amb nom del microrepte quan siga possible;
- [ ] cap secret real, contrasenya personal, token o clau privada;
- [ ] cap fitxer temporal innecessari.

## Com pujar el treball

Fes commit i push en la branca del microrepte. Després integra la PR **microrepte → repte** i la PR **repte → main**, comprova el contingut de `main` i marca l’entrega amb una etiqueta. Tens les comandes i els passos de GitHub en la [guia de branques i entregues](guia_branques_i_entregues.md).

Si el teu repositori encara usa `master`, consulta el professorat abans d'entregar. La referència ordinària de correcció és `main`.

## Després del push

Després de fer `push`, revisa GitHub:

1. Entra al teu repositori.
2. Comprova que els fitxers apareixen en GitHub.
3. Entra a la pestanya `Actions`.
4. Revisa si el workflow ha acabat correctament.

El workflow que s'executa amb cada `push` pot fer una comprovació automàtica bàsica. La correcció real amb IA pot executar-la el professorat des del repositori central.

## Resultat de l'autocorrecció

Quan el professorat execute la correcció, el teu repositori pot rebre:

```text
autograde/latest.md
autograde/latest.json
```

El fitxer que has de llegir és:

```text
autograde/latest.md
```

Ahí trobaràs el resum llegible de la correcció: nota provisional, feedback i punts que poden requerir revisió.

## Errors habituals

- Fer el treball però no fer `push`.
- Pujar només codi i no explicar com provar-lo.
- Deixar evidències fora del repositori.
- Treballar en una branca i no integrar-la en `main`.
- Fer un únic commit enorme sense rastre del procés.
- Pujar secrets reals en `.env`, tokens o captures.
- Pensar que la IA o el professorat ja sabran on mirar sense documentar-ho.

## Checklist final

- [ ] He comprovat `git status`.
- [ ] He actualitzat `README.md`.
- [ ] He indicat quin és el microrepte actual.
- [ ] He deixat evidències dins del repositori.
- [ ] Les evidències tenen nom o carpeta del microrepte.
- [ ] He fet commit amb un missatge comprensible.
- [ ] He fet `push` a `main`.
- [ ] He comprovat en GitHub que els fitxers estan pujats.
- [ ] He revisat `Actions` després del `push`.
- [ ] No he pujat secrets ni fitxers temporals.

Si alguna casella no està marcada, l'autocorrecció pot no trobar el treball o no entendre bé què ha de revisar.
