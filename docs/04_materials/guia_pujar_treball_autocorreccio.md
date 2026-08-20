# Com pujar el treball per a l'autocorrecció

Esta guia explica com has de deixar el teu repositori perquè l'autocorrecció puga revisar el microrepte correctament.

## Idea bàsica

L'autocorrecció no revisa converses externes, captures soltes ni fitxers que només tens al teu ordinador. Revisa el que està pujat al teu repositori individual de GitHub.

Per tant, abans de donar un microrepte per entregat, has de comprovar tres coses:

1. El treball està dins del repositori correcte.
2. Les evidències són fàcils de trobar.
3. Tot està en la branca que es corregirà.

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

Pots treballar en una branca pròpia, per exemple `r2m3`, `r3m5` o `feature/auth`, però abans de demanar correcció has d'integrar el treball en `main`.

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

Si treballes en branques pròpies, usa-les només per organitzar-te:

```bash
git switch -c r2m3
```

Abans de la correcció, integra el treball en `main`:

```bash
git switch main
git merge r2m3
git push origin main
```

Si el professorat ho demana, també pots marcar una entrega amb una etiqueta:

```bash
git tag r2m3-entrega
git push origin r2m3-entrega
```

La regla pràctica és esta: `main` és la branca corregible, però cada microrepte ha de tindre nom, carpeta o document propi perquè es puga trobar.

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

Des del teu repositori:

```bash
git status
git add .
git commit -m "Entrega R2M3"
git push origin main
```

Canvia `R2M3` pel microrepte que estàs entregant.

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
