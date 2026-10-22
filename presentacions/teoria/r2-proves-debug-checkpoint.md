# Brief Gamma. Teoria R2. Proves, depuració i checkpoint

## Objectiu

Crear una presentació teòrica curta per preparar `R2M7`.


## Idees clau

- Provar és comparar resultat esperat i resultat real.
- El camí feliç no és suficient.
- Una prova de flux comprova l'aplicació des de fora: HTTP, sessió o token, operació protegida i invalidació.
- `R2M7` demana `tests/flux-r2.php` o una alternativa equivalent que execute els sis passos i faça comprovacions automàtiques.
- l'extensió cURL de PHP és el client HTTP, no la comprovació: obtindre una resposta no és suficient si el programa no decidix si és correcta.
- Les proves unitàries i `PHPUnit` comproven una peça interna i entren en `R2M8`; complementen el flux, no el substituïxen.
- El codi d'eixida és part del resultat: `0` quan passa i diferent de `0` quan falla.
- Primer cal reproduir un error i després corregir-lo.
- Una taula de proves ha d'incloure entrada, passos, resultat esperat, resultat real i incidència.
- El README ha de permetre repetir la demo.
- Les incidències bloquejants van abans que les millores.

## Exemples pràctics que han d'aparéixer

- Taula de prova amb entrada, passos, resultat esperat i resultat real.
- extensió cURL de PHP per obtindre cos i codi HTTP;
- programa PHP amb funció de comprovació, `exit(1)`, cookies temporals i neteja;
- Seqüència: denegació inicial, login incorrecte, login correcte, operació protegida, logout i denegació final.
- Exemple d'incidència: "esperava 403, torna 200".
- Exemple de checklist de regressió del flux de `R2`.

## Codi base per a diapositives

```php
<?php
$curl = curl_init('http://localhost:8000/protegida');
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$cos = curl_exec($curl);
$codi = curl_getinfo($curl, CURLINFO_HTTP_CODE);

if ($cos === false || $codi !== 302) {
    fwrite(STDERR, "ERROR: s'esperava 302\n");
    exit(1);
}
```

## Format recomanat

- 8-10 diapositives.
- Una taula de prova d'exemple.
- Una diapositiva de casos mínims.
- Una diapositiva amb una petició cURL de PHP i la seua comprovació.
- Una diapositiva comparant prova manual, prova de flux i prova unitària.
- Una diapositiva de depuració ordenada.
- Errors habituals.
- Checklist final.
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Proves unitàries obligatòries.
- `PHPUnit` com a mínim.
- Refactorització encara.
- Funcionalitats noves.
- Peticions impreses o col·leccions sense assercions com a lliurable suficient.

## Preguntes de comprovació

- Quin resultat esperaves i quin resultat real has obtingut?
- Quin cas incorrecte pots repetir sempre?
- Quina ordre executa el flux complet i com indica que ha fallat?
- Quina incidència has detectat o descartat?
- El README permet a una altra persona repetir la prova?
