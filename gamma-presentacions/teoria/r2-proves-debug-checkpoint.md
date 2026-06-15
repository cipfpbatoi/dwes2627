# Brief Gamma. Teoria R2. Proves, depuració i checkpoint

## Objectiu

Crear una presentació teòrica curta per preparar `R2M7`.


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

## Exemples pràctics que han d'aparéixer

- Taula de prova amb entrada, passos, resultat esperat i resultat real.
- `curl` per comprovar una ruta o API mínima.
- Script `.sh` molt curt per repetir una prova.
- Exemple d'incidència: "esperava 403, torna 200".
- Exemple de checklist de regressió del flux de `R2`.

## Codi base per a diapositives

```bash
curl -i http://localhost:8000/protegida
```

```bash
#!/usr/bin/env bash
set -e
curl -s http://localhost:8000/health | grep OK
```

## Format recomanat

- 8-10 diapositives.
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
