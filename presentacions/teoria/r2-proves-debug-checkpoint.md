# Brief Gamma. Teoria R2. Proves, depuració i checkpoint

## Objectiu

Crear una presentació teòrica curta per preparar `R2M7`.


## Idees clau

- Provar és comparar resultat esperat i resultat real.
- El camí feliç no és suficient.
- Una prova de flux comprova l'aplicació des de fora: HTTP, sessió o token, operació protegida i invalidació.
- `R2M7` demana `tests/flux-r2.sh` o una alternativa equivalent que execute els sis passos i faça assercions automàtiques.
- `curl` és el client HTTP, no l'asserció: mostrar una resposta no és suficient si el script no decidix si és correcta.
- Les proves unitàries i `PHPUnit` comproven una peça interna i entren en `R2M8`; complementen el flux, no el substituïxen.
- El codi d'eixida és part del resultat: `0` quan passa i diferent de `0` quan falla.
- Primer cal reproduir un error i després corregir-lo.
- Una taula de proves ha d'incloure entrada, passos, resultat esperat, resultat real i incidència.
- El README ha de permetre repetir la demo.
- Les incidències bloquejants van abans que les millores.

## Exemples pràctics que han d'aparéixer

- Taula de prova amb entrada, passos, resultat esperat i resultat real.
- `curl -o ... -w '%{http_code}'` per separar cos i codi.
- Script `.sh` amb asserció, `exit 1`, cookies temporals i neteja.
- Seqüència: denegació inicial, login incorrecte, login correcte, operació protegida, logout i denegació final.
- Exemple d'incidència: "esperava 403, torna 200".
- Exemple de checklist de regressió del flux de `R2`.

## Codi base per a diapositives

```bash
CODI=$(curl -sS -o resposta.html -w '%{http_code}' http://localhost:8000/protegida)
[[ "$CODI" == "302" ]] || exit 1
```

```bash
#!/usr/bin/env bash
set -euo pipefail
TEMP="$(mktemp -d)"
trap 'rm -rf "$TEMP"' EXIT
curl -sS -c "$TEMP/cookies" -d 'email=demo@example.test&password=demo-password' http://localhost:8000/login
curl -sS -b "$TEMP/cookies" http://localhost:8000/protegida | grep -Fq 'text estable'
```

## Format recomanat

- 8-10 diapositives.
- Una taula de prova d'exemple.
- Una diapositiva de casos mínims.
- Una diapositiva amb una petició `curl` i la seua asserció.
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
