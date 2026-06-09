# Report breu d’ús de la IA

Usa esta plantilla quan la IA haja tingut pes real en el treball que presentes. No cal fer-la per consultes menudes o trivials.

El pots entregar com a report independent o mantindre'l dins del repositori en:

```text
docs/ai-log.md
```

No copies tota la conversa amb la IA. Resumeix només les intervencions rellevants i deixa clara la teua verificació.

Este report no compta només per estar ben redactat. Ha de poder contrastar-se amb el teu repositori: commits, fitxers, proves, errors corregits i decisions que pots explicar en una defensa curta.

## Dades bàsiques

- Nom i cognoms:
- Repte / microrepte:
- Data:
- Projecte:

## Bloc 1. En què he utilitzat la IA

Marca el que toque.

- [ ] Entendre el problema
- [ ] Comparar opcions
- [ ] Generar esquelet de codi
- [ ] Corregir errors
- [ ] Documentar
- [ ] Pensar proves
- [ ] Altra cosa:

Resum breu del que necessitava:

...

## Bloc 2. Què m’ha aportat

Resum breu de la resposta o ajuda rebuda:

...

## Bloc 3. Què he aprofitat realment

Marca el que toque.

- [ ] Només la idea
- [ ] Una part adaptada
- [ ] Una proposta quasi completa
- [ ] Altra situació:

Què he incorporat finalment:

...

## Bloc 4. Què he validat jo

Marca el que toque.

- [ ] He provat el codi
- [ ] He corregit errors
- [ ] He revisat la lògica
- [ ] He comparat amb documentació o apunts
- [ ] Puc relacionar-ho amb un commit, fitxer o prova concreta
- [ ] Altra validació:

Explicació breu de com ho he comprovat:

...

## Bloc 5. Què puc explicar o defendre

- Com funciona:
- Què he canviat:
- Quins errors he detectat:
- Com ho provaria:
- En quin fitxer o commit es veu:

## Com es pot revisar

El professorat pot triar una entrada d'este report i demanar-te que ensenyes:

- el fitxer o fragment relacionat;
- el commit o moment del procés;
- la prova executada;
- què vas acceptar de la IA;
- què vas modificar o rebutjar;
- què canviaries si apareix un cas nou.

Si no pots relacionar el report amb el teu projecte real, el report no és una evidència suficient d'ús responsable de la IA.

## Exemple d'entrada breu

```md
## Consulta 1 - R2M5 - Error en autenticació

- Objectiu de la consulta: entendre per què el login sempre fallava encara que l'usuari existia.
- Resum del suggeriment: la IA ha indicat que podia haver-hi un problema en la comparació de contrasenyes i ha proposat revisar `password_verify()`.
- Què s'ha acceptat: he revisat el punt on comprovava la contrasenya i he canviat la comparació directa per `password_verify()`.
- Què s'ha rebutjat o modificat: no he incorporat el sistema complet d'usuaris que proposava la IA perquè era massa ampli per al microrepte.
- Com s'ha verificat: he provat login correcte, login amb contrasenya incorrecta i accés a la funcionalitat protegida sense sessió.
- En quin fitxer o commit es veu: `src/auth.php` i commit `a1b2c3d`.
```
