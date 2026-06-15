# Brief Gamma. Teoria R2S0. PHP dins d'HTML

## Objectiu

Crear una presentació teòrica de transició per a la sessió `R2S0`: introduir `PHP` com a llenguatge executat al servidor i mostrar com es pot barrejar de manera controlada amb `HTML` abans d'entrar en formularis, validació i estat. Pot ser més extensa perquè obri conceptes nous que l'alumnat usarà durant tot `R2`.

## Audiència

Alumnat que acaba `R1` amb un backend executable i un primer punt d'entrada, però que encara necessita situar la sintaxi bàsica de `PHP` i el patró `servidor genera HTML`.

## Missatge clau

`PHP` no s'executa al navegador. El servidor executa el codi, calcula valors i retorna `HTML`. La barreja `HTML/PHP` pot ser útil al principi, però s'ha de fer amb ordre: càlcul abans, presentació després i eixides escapades.

## Idees clau

- El fitxer `.php` pot contindre `HTML` i blocs `<?php ... ?>`.
- `<?= ... ?>` serveix per imprimir un valor dins de l'HTML.
- Variables, condicions i llistes permeten generar respostes dinàmiques.
- `htmlspecialchars` s'introdueix com a hàbit per mostrar dades amb seguretat.
- Cal evitar pàgines on tot estiga barrejat sense estructura.

## Estructura proposada

1. De `R1` a `R2`
   - En `R1` el backend respon.
   - En `R2` el backend comença a decidir què mostra segons dades.
2. Què passa quan demanes un `.php`
   - Petició del navegador.
   - Execució al servidor.
   - Resposta `HTML`.
3. Primer exemple: variable dins d'HTML
   - Nom o títol dinàmic.
   - Ús de `<?= htmlspecialchars(...) ?>`.
4. Segon exemple: condició simple
   - Missatge diferent segons una edat, estat o opció.
5. Tercer exemple: llista amb `foreach`
   - Array curt.
   - Generació d'elements `li`.
6. Barreja controlada
   - Preparar dades dalt.
   - Pintar HTML baix.
   - Evitar lògica llarga dins de la vista.
7. Connexió amb `R2S1`
   - El pas següent serà rebre dades d'un formulari i validar-les al servidor.

## Exemples PHP que han d'aparéixer

- Variable dins d'HTML amb eixida escapada.
- Condició que decideix un missatge.
- `foreach` per pintar una llista d'opcions del projecte.
- Separació mínima entre zona de càlcul i zona de presentació.
- Exemple roí de barreja caòtica i versió millorada.

## Exemples visuals suggerits

- Diagrama: navegador -> servidor PHP -> HTML final.
- Comparació: codi `.php` abans d'executar-se / HTML rebut pel navegador.
- Tres targetes de codi: variable, condició i `foreach`.
- Mini avís visual: no exposar dades sense escapar.

## Codi base per a diapositives

```php
<?php
$nom = 'Aina';
?>
<h1>Benvinguda, <?= htmlspecialchars($nom) ?></h1>
```

```php
<?php
$estat = 'pendent';
$classe = $estat === 'confirmada' ? 'ok' : 'avis';
?>
<p class="<?= htmlspecialchars($classe) ?>">
  Estat: <?= htmlspecialchars($estat) ?>
</p>
```

```php
<?php
$edat = 18;
$missatge = $edat >= 18 ? 'Pot continuar' : 'Cal revisar l'edat';
?>
<p><?= htmlspecialchars($missatge) ?></p>
```

```php
<?php
$opcions = ['alta', 'consulta', 'modificacio'];
?>
<ul>
  <?php foreach ($opcions as $opcio): ?>
    <li><?= htmlspecialchars($opcio) ?></li>
  <?php endforeach; ?>
</ul>
```

## Evitar

- Entrar encara en sessions, cookies, autenticació o `Composer`.
- Fer una classe completa de seguretat.
- Introduir plantilles avançades o frameworks.
- Presentar `PHP` com si fóra només decoració dins d'HTML.

## Preguntes de comprovació

- Quin codi s'executa en el servidor i quin resultat rep el navegador?
- Per què convé separar càlcul i presentació encara que estiguen en el mateix fitxer?
- Quan has d'usar `htmlspecialchars`?
- Quin exemple del teu projecte podria generar una resposta dinàmica amb PHP?
- Què canviarà quan afegim formularis en `R2S1`?
