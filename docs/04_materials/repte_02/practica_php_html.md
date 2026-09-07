# R2S0. Primers passos pràctics amb PHP i HTML

Ja saps programar: ara practicaràs la sintaxi de PHP i com el servidor genera HTML. Escriu, executa, canvia dades i explica què passa en cada exercici.

És una pràctica de la sessió introductòria del Repte 2, sense microrepte ni nota pròpia. No substituïx les evidències de R2M1 ni de R2M2. Treballarem amb dades escrites al codi; els formularis vindran en R2S1.

## Preparació i execució

Crea una carpeta de pràctiques `practiques/r2s0` i treballa dins d’ella. Pots usar l’entorn PHP preparat a classe. Si tens PHP instal·lat localment, comprova’l i inicia el servidor des d’eixa carpeta:

```sh
php -v
php -S localhost:8000
```

Mantín el terminal obert, visita `http://localhost:8000/01-hola.php` i para el servidor amb `Ctrl+C` quan acabes. Si el port està ocupat, usa `8001` tant en la comanda com en l’adreça. No òbrigues el fitxer amb doble clic: una adreça `file://` no executa PHP.

Per comprovar la sintaxi d’un fitxer sense iniciar una petició web:

```sh
php -l 01-hola.php
```

Si `php` no està disponible, demana ajuda per usar l’entorn de classe abans de continuar.

## Recordatori mínim

- Les variables comencen per `$` i les sentències acaben habitualment en `;`.
- `<?php ... ?>` delimita codi PHP; `<?= ... ?>` mostra el valor d’una expressió.
- `.` concatena text; `+` suma números. `===` compara també el tipus; `=` assigna.
- Pots calcular al principi del fitxer i mostrar els resultats després dins de l’HTML.
- Usa `htmlspecialchars($text, ENT_QUOTES, 'UTF-8')` quan mostres text variable en HTML.

Suport: [teoria de codi embegut, HTML i PHP](../../recursos/Teoria/Teoria-R2-Codi-Embegut-HTML-PHP.pdf).

## 1. Del servidor al navegador — 15 minuts

Crea `01-hola.php` amb este punt de partida:

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

**Tasca:** executa’l, canvia el nom i recarrega. Consulta el codi font de la pàgina des del navegador i compara’l amb el fitxer de l’editor.

**Resultat esperat:** apareix «Hola, Aina» inicialment; el navegador rep el nom dins de l’HTML, sense la declaració `$nom` ni les etiquetes de PHP.

**Variació:** afegix una variable `$curs` i mostra-la en un paràgraf. Explica per què modificar el fitxer no canvia una pestanya fins que fas una nova petició.

## 2. Una fitxa amb dades variables — 15 minuts

Crea `02-fitxa.php`. Declara nom, edat i nom del projecte al principi. Mostra’ls en una targeta HTML amb un títol i dos paràgrafs. Calcula també l’edat que tindrà la persona l’any que ve.

**Resultat esperat:** amb edat `18`, la fitxa mostra `19` com a edat de l’any següent. El càlcul es fa en PHP.

**Variació:** posa `Aina & Marc <equip>` com a nom. Ha d’aparéixer tot com a text, inclòs `<equip>`. Revisa el codi font i explica l’efecte de `htmlspecialchars`.

## 3. Un preu calculat — 15 minuts

Crea `03-preu.php` amb `$preu = 40`, `$quantitat = 3` i `$descompte = 10` (percentatge). Calcula subtotal, import del descompte i total abans del bloc HTML. Mostra un resum amb les tres quantitats i la unitat monetària.

**Resultat esperat:** subtotal `120`, descompte `12` i total `108` euros.

**Variació:** prova descompte `0` (total `120`) i quantitat `0` (total `0`). No cal implementar encara formularis ni validació d’entrades.

## 4. Missatges i estils condicionals — 20 minuts

Crea `04-estat.php`. Amb una variable `$places`, mostra «Disponible» si és major que zero i «Complet» en cas contrari. Usa `if/else` per triar també una classe CSS: `disponible` o `complet`. Definix els dos estils en un bloc `<style>`.

**Resultat esperat:** amb `3` places apareix «Disponible» amb un estil; amb `0`, «Complet» amb l’altre. La decisió la pren PHP.

**Variació:** distingix «Última plaça» quan el valor siga `1`. Comprova `0`, `1` i `3` i explica l’ordre de les condicions.

## 5. Una llista i una taula — 25 minuts

Crea `05-cataleg.php`. Primer recorre `['Taller PHP', 'Taller HTML', 'Taller CSS']` amb `foreach` per generar una llista `<ul>`.

Després usa estes dades per generar una taula amb nom i places; escriu una sola vegada l’HTML de la fila dins del bucle:

```php
<?php
$tallers = [
    ['nom' => 'Taller PHP', 'places' => 3],
    ['nom' => 'Taller HTML', 'places' => 0],
    ['nom' => 'Taller CSS', 'places' => 1],
];
?>
```

**Resultat esperat:** tres elements en la llista i tres files de dades en la taula. Els noms es mostren escapats com a text.

**Variació:** afegix un quart taller només a l’array i comprova que apareix. Prova un array buit i mostra «No hi ha tallers» en lloc d’una taula buida.

## 6. Llegir i corregir errors — 15 minuts

Crea `06-errors.php` amb este fragment deliberadament incorrecte. Localitza i corregix els problemes un a un; comprova la sintaxi i observa també el terminal del servidor.

```php
<?php
$nom = 'Aina'
$places = 0;
if ($places = 0) {
    $missatge = 'Complet';
} else {
    $missatge = 'Disponible';
}
?>
<h1><?= htmlspecialchars($Nom, ENT_QUOTES, 'UTF-8') ?></h1>
<p><?= htmlspecialchars($missatge, ENT_QUOTES, 'UTF-8') ?></p>
```

**Resultat esperat després de corregir-lo:** nom «Aina», missatge «Complet» amb `0` places i «Disponible» amb `2`.

**Pistes:** revisa el final de les sentències, majúscules de variables i assignació davant de comparació. Un fitxer pot passar `php -l` i continuar tenint un error lògic.

**Variació:** explica quin problema detecta el comprovador de sintaxi i quin descobrixes canviant les dades. Anota un error real, la causa i la correcció.

## 7. Una pàgina del teu projecte — 25 minuts

Crea `07-projecte.php` amb dades fictícies del teu domini: activitats, recursos, reserves o un altre element del projecte. Integra una capçalera variable, un valor calculat, un missatge condicional i una llista generada amb `foreach`.

**Resultat esperat:** la pàgina canvia quan modifiques les dades del principi, sense haver d’editar cada fragment HTML. Pots explicar quina part s’executa al servidor i quin resultat veu el navegador.

**Variació:** prova un cas normal i un cas sense elements. Explica quina dada podria arribar d’un formulari en R2S1, sense implementar-lo encara.

## Comprovació de tancament

Conserva els fitxers de pràctica i unes notes breus per revisar-los a classe. No hi ha lliurament ni autocorrecció separada de R2S0.

- [ ] He escrit i executat codi, i he provat canvis de dades.
- [ ] Puc distingir el PHP de l’editor de l’HTML rebut pel navegador.
- [ ] Use variables, operadors, condicions i un bucle dins d’una pàgina.
- [ ] Mostre el text variable escapat i separe càlcul i presentació.
- [ ] Puc explicar un error que he corregit i demostrar dos casos de la pàgina final.

Si uses IA, demana una pista sobre un error concret abans de demanar una solució completa. Guarda en les notes la pregunta real, què has aprofitat i com ho has comprovat; si uses el registre habitual `ai.log`, anota-ho allí. Si no uses IA, no inventes consultes.

## Suport i pràctica opcional

Si et bloqueges, torna a l’exercici 1, canvia una sola variable i comprova el resultat abans d’afegir una condició o un bucle. Pots treballar en parella alternant qui escriu i qui explica.

Si acabes abans, afegix un recompte de tallers amb places o extrau un càlcul a una funció senzilla. És pràctica opcional, sense punts d’ampliació del repte.

Queden per a sessions posteriors els formularis complets, validació d’entrades, sessions, cookies, autenticació, BBDD, Composer i frameworks.
