# Instruccions per a Gamma

Este directori conté instruccions internes per generar presentacions amb Gamma.

No forma part de la web publicada perquè està fora de `docs/`.

## Finalitat

Les presentacions han de donar suport a la documentació d'alumnat, no substituir-la. Han de servir per:

- presentar cada repte abans de començar-lo;
- introduir cada microrepte o sessió;
- explicar els coneixements teòrics necessaris abans que l'alumnat haja de posar-los en pràctica;
- ajudar a connectar objectius, evidències i criteris d'avaluació.

## Tipus de presentacions que cal mantindre

### Presentació de repte

Una presentació per cada repte:

- `R1`: kickoff backend i base executable;
- `R2`: processament, reintent, guardat funcional, estat i autenticació;
- `R3`: reconstrucció en framework i persistència real;
- `R4`: API i consum;
- `R5`: integració híbrida;
- fase final: tancament, defensa i integració.

Ha d'incloure:

- context professional del repte;
- què ha de construir l'alumnat;
- seqüència de microreptes;
- evidències principals;
- criteris d'avaluació treballats;
- errors habituals;
- connexió amb el repte anterior i el posterior.

### Presentació de microrepte

Una presentació per cada microrepte o sessió.

Ha d'incloure:

- codi del microrepte, per exemple `R2M2`;
- sessió associada, per exemple `R2S2`;
- objectiu concret;
- què ha de fer l'alumnat durant la sessió;
- producte o evidència mínima;
- criteris d'avaluació implicats;
- què queda fora del mínim;
- checklist final curta.

### Presentació teòrica de suport

Una o més presentacions per explicar els coneixements necessaris abans de cada microrepte.

Han d'incloure només la teoria necessària per a treballar el microrepte immediat. No han d'avançar continguts que encara no pertoquen.

Exemples:

- petició/resposta HTTP abans de formularis;
- `$_POST`, `value`, `selected` i `checked` abans de reintents;
- diferència entre reintent, guardat funcional i persistència formal;
- arrays i funcions abans de regles de domini;
- sessió, cookies i estat abans d'autenticació;
- autenticació i autorització abans de funcionalitat protegida.

## Regles d'alineació

Abans de generar o actualitzar una presentació, revisa:

- `docs/02_reptes/` per a l'enunciat d'alumnat;
- `docs/03_com_s_avalua/` per a rúbriques o checklists;
- `docs/04_materials/` i `docs/06_recursos_rapid/` per a materials de suport;
- la programació d'aula equivalent en `dwes-restructuracio-modul`;
- l'autocorrecció equivalent en `dwes-microreptes-autocorreccio`.

La presentació ha d'usar el mateix nom, codi, abast i evidències que la documentació d'alumnat.

## Criteris de disseny per a Gamma

- Mantindre les diapositives curtes i accionables.
- Prioritzar exemples del projecte i fluxos reals.
- Evitar blocs llargs de teoria sense connexió amb el microrepte.
- Incloure una diapositiva final amb checklist de tancament.
- Incloure una diapositiva d'errors habituals quan el contingut siga propens a confusió.
- No convertir la presentació en una solució completa.

## Estructura recomanada de fitxers

```text
gamma-presentacions/
  README.md
  reptes/
    r1.md
    r2.md
  microreptes/
    r2m1.md
    r2m2.md
  teoria/
    r2m2-reintent-i-guardat.md
```

Els fitxers poden ser prompts, guions o briefs per a Gamma. No han de generar-se dins de `docs/` llevat que es decidisca publicar una versió final per a l'alumnat.
