# R2S0. Primers passos pràctics amb PHP i HTML

Ja saps programar: ara practicaràs la sintaxi de PHP, com el servidor genera HTML i una separació inicial entre les dades i la seua presentació. Escriu, executa, canvia dades i explica què passa en cada exercici.

És una pràctica de la sessió introductòria del Repte 2, sense microrepte ni nota pròpia. No substituïx les evidències de R2M1 ni de R2M2. Treballarem amb dades escrites al codi; els formularis vindran en R2S1.

Si treballes amb Python, tens [la mateixa bateria adaptada a Flask i Jinja](practica_python_html.md), amb els mateixos problemes i resultats esperats.

## Preparació i execució amb Docker

Treballa en el repositori que vas preparar en R1. En principi, la carpeta `src/` és el document root: el servidor publica el que guardes dins d’ella. Crea `src/practiques/r2s0/` i executa, des de l’arrel del repositori on està el fitxer Compose:

```sh
docker compose up -d
docker compose ps
```

Consulta en `docker compose ps` quin port del teu ordinador publica el servei web. Si el Compose associa, per exemple, el port `8080` del teu ordinador amb el port web del contenidor, l’exercici 1 estarà en:

```text
http://localhost:8080/practiques/r2s0/01-hola/
```

Substituïx `8080` pel port real del teu Compose. Si publica directament el port `80`, usa `http://localhost/practiques/r2s0/01-hola/`. No òbrigues els fitxers amb doble clic: una adreça `file://` no executa PHP.

Quan canvies un fitxer, guarda’l i recarrega la pàgina. No cal reiniciar el contenidor per cada canvi si `src/` està muntada com a volum. Si no veus els canvis o la pàgina no respon, comprova:

```sh
docker compose ps
docker compose logs --tail=30
```

Per comprovar la sintaxi des del contenidor, adapta el nom del servei i la ruta interna al teu Compose. En una configuració habitual amb el servei `web` i `src/` muntada en `/var/www/html`, pots executar:

```sh
docker compose exec web php -l /var/www/html/practiques/r2s0/01-hola/index.php
```

Repetix la comprovació per als altres fitxers `.php`, inclosos els de `templates/`. En acabar la pràctica, pots parar els serveis des de l’arrel del repositori amb `docker compose down`.

`php -S localhost:8000` és només una alternativa opcional si tens PHP instal·lat localment i el contenidor no està disponible. No el necessites mentre Docker estiga en marxa.

## De PHP a una plantilla senzilla

En el primer exercici, PHP i HTML conviuen en un únic fitxer. En el segon, refactoritzaràs la mateixa idea en dos fitxers. A partir del tercer, cada exercici tindrà esta estructura:

```text
03-preu/
├── index.php
└── templates/
    └── preu.php
```

- `index.php` prepara les dades: declara variables, calcula resultats i decidix estats.
- El fitxer de `templates/` presenta eixes dades amb HTML.
- Al final d’`index.php`, `require __DIR__ . '/templates/preu.php';` carrega i executa la plantilla.
- Les variables definides en `index.php` abans del `require` estan disponibles en el fitxer requerit. No s’envien per xarxa ni es copien: la plantilla s’executa en eixe mateix context de PHP.
- `__DIR__` representa la carpeta del fitxer actual. Així, el `require` no depén de la carpeta des d’on s’haja iniciat PHP.
- Si el fitxer requerit no existix, `require` deté l’execució amb un error. Açò evita continuar amb una pàgina incompleta.

Quan mostres text variable en HTML, usa `htmlspecialchars($text, ENT_QUOTES, 'UTF-8')`. Esta funció convertix caràcters amb significat en HTML, com `<`, `>` o `&`, perquè es mostren com a text i no s’interpreten com a etiquetes o entitats. Escapa en la plantilla, just en el moment de generar l’HTML.

## Recordatori mínim

- Les variables comencen per `$` i les sentències acaben habitualment en `;`.
- `<?php ... ?>` delimita codi PHP; `<?= ... ?>` mostra el valor d’una expressió.
- `.` concatena text; `+` suma números. `===` compara també el tipus; `=` assigna.
- Prepara les dades abans de carregar la plantilla.
- Usa `htmlspecialchars($text, ENT_QUOTES, 'UTF-8')` quan mostres text variable en HTML.

Suport: [teoria de codi embegut, HTML i PHP](../../recursos/Teoria/Teoria-R2-Codi-Embegut-HTML-PHP.pdf).

## 1. Del servidor al navegador — 15 minuts

Crea `01-hola/index.php` amb este punt de partida:

```php
<?php
$nom = 'Aina';
?>
<!doctype html>
<html lang="ca">
<meta charset="utf-8">
<title>Primera pràctica PHP</title>
<h1>Hola, <?= htmlspecialchars($nom, ENT_QUOTES, 'UTF-8') ?></h1>
<p>Esta pàgina s’ha generat al servidor.</p>
</html>
```

**Tasca:** visita l’URL de l’exercici, canvia el nom i recarrega. Consulta el codi font de la pàgina des del navegador i compara’l amb el fitxer de l’editor.

**Resultat esperat:** apareix «Hola, Aina» inicialment; el navegador rep el nom dins de l’HTML, sense la declaració `$nom` ni les etiquetes de PHP.

**Variació:** afegix una variable `$curs` i mostra-la en un paràgraf. Explica per què modificar el fitxer no canvia una pestanya fins que fas una nova petició.

## 2. La mateixa pàgina en dos fitxers — 15 minuts

Copia la solució de l’exercici 1 en `02-fitxa/` i refactoritza-la així:

```text
02-fitxa/
├── index.php
└── fitxa.php
```

En `index.php`, prepara les dades i carrega la presentació:

```php
<?php
$nom = 'Aina';
$edat = 18;
$projecte = 'Material Viu';
$edatLAnyQueVe = $edat + 1;

require __DIR__ . '/fitxa.php';
```

En `fitxa.php`, conserva l’estructura HTML de l’exercici anterior i convertix-la en una targeta amb un títol i dos paràgrafs. Mostra el nom, el projecte, l’edat actual i l’edat de l’any següent. Escapa el nom i el projecte en el punt on els mostres.

**Tasca:** comprova que la pàgina continua funcionant després de separar-la. Explica per què `$nom` i la resta de variables estan disponibles en `fitxa.php`, i què passaria si el nom del fitxer del `require` fora incorrecte.

**Resultat esperat:** amb edat `18`, la fitxa mostra `19` com a edat de l’any següent. El càlcul es fa en `index.php` i `fitxa.php` presenta el resultat.

**Variació:** posa `Aina & Marc <equip>` com a nom. Ha d’aparéixer tot com a text, inclòs `<equip>`. Revisa el codi font i explica l’efecte de `htmlspecialchars()`.

## 3. Un preu calculat — 15 minuts

Crea `03-preu/index.php` i `03-preu/templates/preu.php`. En `index.php`, definix `$preu = 40`, `$quantitat = 3` i `$descompte = 10` (percentatge). Calcula subtotal, import del descompte i total, i després carrega la plantilla amb:

```php
require __DIR__ . '/templates/preu.php';
```

En `templates/preu.php`, mostra un resum HTML amb les tres quantitats i la unitat monetària. La plantilla no ha de repetir els càlculs.

**Resultat esperat:** subtotal `120`, descompte `12` i total `108` euros.

**Variació:** prova descompte `0` (total `120`) i quantitat `0` (total `0`). No cal implementar encara formularis ni validació d’entrades.

## 4. Missatges i estils condicionals — 20 minuts

Crea `04-estat/index.php` i `04-estat/templates/estat.php`. En `index.php`, usa una variable `$places` i un `if/else` per preparar `$missatge` amb «Disponible» si és major que zero i «Complet» en cas contrari. Prepara també `$classe` amb `disponible` o `complet`, i carrega la plantilla.

En `templates/estat.php`, mostra el missatge amb la classe calculada i definix els dos estils en un bloc `<style>`. Escapa tant el missatge com el nom de classe quan els inserisques en l’HTML.

**Resultat esperat:** amb `3` places apareix «Disponible» amb un estil; amb `0`, «Complet» amb l’altre. La decisió es pren en `index.php` i la plantilla només la presenta.

**Variació:** distingix «Última plaça» quan el valor siga `1`. Comprova `0`, `1` i `3` i explica l’ordre de les condicions.

## 5. Una llista i una taula — 25 minuts

Crea `05-cataleg/index.php` i `05-cataleg/templates/cataleg.php`. En `index.php`, prepara estes dades i carrega la plantilla:

```php
<?php
$tallers = [
    ['nom' => 'Taller PHP', 'places' => 3],
    ['nom' => 'Taller HTML', 'places' => 0],
    ['nom' => 'Taller CSS', 'places' => 1],
];

require __DIR__ . '/templates/cataleg.php';
```

En `templates/cataleg.php`, recorre primer `$tallers` amb `foreach` per generar una llista `<ul>`. Després genera una taula amb nom i places; escriu una sola vegada l’HTML de la fila dins del bucle. Escapa cada nom quan el mostres.

**Resultat esperat:** tres elements en la llista i tres files de dades en la taula. Els noms es mostren escapats com a text.

**Variació:** afegix un quart taller només a l’array i comprova que apareix. Prova un array buit i mostra «No hi ha tallers» en lloc d’una taula buida.

## 6. Llegir i corregir errors — 15 minuts

Crea `06-errors/index.php` i `06-errors/templates/resultat.php`. Posa este fragment deliberadament incorrecte en `index.php`. Localitza i corregix els problemes un a un; comprova la sintaxi des del contenidor i observa també els seus logs.

```php
<?php
$nom = 'Aina'
$places = 0;
if ($places = 0) {
    $missatge = 'Complet';
} else {
    $missatge = 'Disponible';
}

require __DIR__ . '/templates/resultat.php';
```

Usa este contingut inicial en `templates/resultat.php`:

```php
<h1><?= htmlspecialchars($Nom, ENT_QUOTES, 'UTF-8') ?></h1>
<p><?= htmlspecialchars($missatge, ENT_QUOTES, 'UTF-8') ?></p>
```

**Resultat esperat després de corregir-lo:** nom «Aina», missatge «Complet» amb `0` places i «Disponible» amb `2`.

**Pistes:** revisa el final de les sentències, majúscules de variables i assignació davant de comparació. Un fitxer pot passar `php -l` i continuar tenint un error lògic. Recorda comprovar els dos fitxers PHP.

**Variació:** explica quin problema detecta el comprovador de sintaxi i quin descobrixes canviant les dades. Anota un error real, la causa i la correcció.

## 7. Una pàgina del teu projecte — 25 minuts

Crea `07-projecte/index.php` i una plantilla amb un nom adequat dins de `07-projecte/templates/`. En `index.php`, prepara dades fictícies del teu domini: activitats, recursos, reserves o un altre element del projecte. Prepara una capçalera variable, un valor calculat, un missatge condicional i una llista, i finalment carrega la plantilla amb `require`.

En la plantilla, genera l’HTML i recorre la llista amb `foreach`. Mostra el text variable amb `htmlspecialchars()`. No afegisques encara Twig, classes, controladors ni un sistema de rutes: l’URL arriba directament a este `index.php` i el fitxer de `templates/` s’encarrega de la presentació.

**Resultat esperat:** la pàgina canvia quan modifiques les dades d’`index.php`, sense haver d’editar cada fragment HTML. Pots explicar quina part s’executa al servidor, com arriben les variables a la plantilla i quin resultat veu el navegador.

**Variació:** prova un cas normal i un cas sense elements. Explica quina dada podria arribar d’un formulari en R2S1, sense implementar-lo encara.

## Comprovació de tancament

Conserva els fitxers de pràctica i unes notes breus per revisar-los a classe. No hi ha lliurament ni autocorrecció separada de R2S0.

- [ ] He arrancat l’entorn amb Docker Compose i he visitat els exercicis mitjançant `localhost`.
- [ ] He escrit i executat codi, i he provat canvis de dades.
- [ ] Puc distingir el PHP de l’editor de l’HTML rebut pel navegador.
- [ ] Use variables, operadors, condicions i un bucle dins d’una pàgina.
- [ ] Puc explicar què fa `require` i per què la plantilla veu les variables preparades abans.
- [ ] Mostre el text variable amb `htmlspecialchars()` i separe preparació de dades i presentació.
- [ ] Puc explicar un error que he corregit i demostrar dos casos de la pàgina final.

Si uses IA, demana una pista sobre un error concret abans de demanar una solució completa. Guarda en les notes la pregunta real, què has aprofitat i com ho has comprovat; si uses el registre habitual `ai.log`, anota-ho allí. Si no uses IA, no inventes consultes.

## Suport i pràctica opcional

Si et bloqueges, torna a l’exercici 1, canvia una sola variable i comprova el resultat abans d’afegir una condició o un bucle. Pots treballar en parella alternant qui escriu i qui explica.

Si acabes abans, afegix un recompte de tallers amb places o extrau un càlcul a una funció senzilla. És pràctica opcional, sense punts d’ampliació del repte.

Queden per a sessions posteriors els formularis complets, validació d’entrades, sessions, cookies, autenticació, BBDD, Composer, Twig, controladors, sistemes de rutes i frameworks.
