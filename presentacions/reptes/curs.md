# Brief Gamma. Presentacio 00. Visio del curs

## Objectiu

Crear una presentacio inicial del curs per explicar a l'alumnat com funciona el modul abans d'entrar en `R1M1`: treball per reptes, producte evolutiu, evidencies, avaluacio, autoria, us verificable de la IA, primer mapa del producte i checkpoint inicial.

La versio generada actual és `presentacions/presentacio/Benvinguda-al-curs.pdf`. Esta presentacio refon els quatre PDF antics:

- `Com-funciona-el-curs.pdf`;
- `Que-es-valorara-al-llarg-del-curs.pdf`;
- `Com-treballarem-parelles-trios-i-stacks.pdf`;
- `Tres-possibles-projectes-del-curs.pdf`.

Els quatre PDF antics no s'han de recuperar ni publicar tal qual: podien contindre criteris antics, referencies a una organitzacio previa o exemples de projecte que calia adaptar al model actual.

## Audiencia

Alumnat que comenca DWES i necessita entendre que no fara practiques inconnexes, sino un mateix producte backend que creix de `R1` a `R5`.

## Missatge clau

El curs es basa en construir, provar, documentar i defensar un producte backend. Cada repte deixa una evidencia util per al seguent, i el treball nomes compta si es pot comprovar i explicar.

## Estructura recomanada

1. **Portada**
   - `DWES 2627. Com funciona el curs`.
   - Subtitol: reptes, producte, evidencies i defensa.
2. **Que es este curs**
   - Backend basat en producte real.
   - No son exercicis solts ni projectes diferents.
   - El mateix producte evoluciona de `R1` a `R5`.
3. **El model de treball**
   - Treball per reptes.
   - Cada repte resol una part recognoscible del producte.
   - Un repte superficial debilita el seguent.
4. **Sequencia `R1 -> R5`**
   - `R1`: arrancada funcional real.
   - `R2`: processament, estat i autenticacio.
   - `R3`: framework, arquitectura i persistencia.
   - `R4`: `API` publicada i consumida.
   - `R5`: integracio hibrida i defensa.
5. **Ritme per avaluacions**
   - Avaluacio 1: `R1`, `R2` i entrada a `R3`.
   - Avaluacio 2: tancament de `R3`, `R4`, `R5` i defensa.
   - Avaluacio 3: tancaments residuals o connexio amb empresa/FCT si correspon.
6. **Treball cooperatiu i evidencia individual**
   - Es pot contrastar amb altres persones.
   - Parelles de contrast tecnic com a model base.
   - Trios nomes com a opcio puntual si el ritme i la complexitat ho justifiquen.
   - El repositori, les evidencies i la defensa son individuals.
   - Compartir decisions no substitueix explicar el propi treball.
7. **Stacks i transicio `R2 -> R3`**
   - `R2` es treballa sobre una base comuna en `PHP`.
   - El contrast de frameworks entra a partir de `R3`.
   - Itineraris base: `Laravel`, `Symfony` o `NestJS`.
   - `FastAPI` no es itinerari base general; nomes opcio avancada o excepcional.
8. **Que es deixa com a evidencia**
   - Repositori viu i tracable.
   - `README.md` actualitzat.
   - Proves o comprovacions reproduibles.
   - Commits recognoscibles.
   - `AI log` quan la IA ajuda en parts rellevants.
9. **Com es valorara**
   - Funcionalitat real i provable.
   - Traçabilitat del proces.
   - README i documentacio operativa que coincidisquen amb el repositori.
   - Proves o verificacions reproduibles.
   - Defensa individual curta i concreta.
   - Us responsable de la IA quan aparega.
10. **Paper de la IA**
   - Pot ajudar a idear, depurar, revisar o proposar proves.
   - No pot substituir la validacio ni l'autoria.
   - L'alumnat ha de poder explicar que ha acceptat, que ha descartat i com ho ha comprovat.
11. **Projectes base recomanats**
   - Opcio mes equilibrada: gestor d'incidencies amb seguiment.
   - Opcio molt clara per a regles i estats: sistema de reserves.
   - Opcio mes professional pero menys propera: gestor d'inventari.
   - Variants possibles si el grup necessita mes motivacio: activitats/esdeveniments, biblioteca de recursos o torns/cites.
   - Totes les variants han de permetre usuaris, rols, persistencia, API, integracio i defensa.
12. **Primer mapa del producte**
   - No es un disseny final.
   - Ha de deixar una fitxa curta en el `README.md`.
   - Camps: producte, usuari principal, necessitat real, primera accio util, dades minimes i risc inicial.
13. **Checkpoint inicial**
    - No es revisa codi encara.
    - Es comprova repositori, `README.md`, criteri d'evidencies i preparacio per a `R1S1`.
    - Cada alumne ha de poder explicar el producte i la primera accio real.
14. **Errors habituals**
    - Dir "fare una web" sense producte concret.
    - Plantejar nomes un CRUD generic.
    - No saber on quedaran les evidencies.
    - Confondre ajuda d'IA amb autoria.
    - Arribar a `R1S1` sense decisio inicial de producte.
15. **Checklist final**
    - Puc explicar el producte en una frase.
    - Se qui l'usara primer.
    - Tinc una primera accio real.
    - Tinc repositori i `README.md` ubicats.
    - Se com es valorara i com he de defensar el treball.

## Format recomanat

- 12-15 diapositives.
- To clar, directe i d'inici de curs.
- Usar exemples de producte: incidencies, reserves, inventari i alguna variant propera si ajuda a motivar.
- Evitar teoria tecnica de backend; aixo entra en les presentacions de `R1`.
- Tancar amb una accio concreta: completar el primer mapa del producte en el `README.md`.

## No incloure

- Instal-lacio d'entorns.
- Explicacio detallada de frameworks.
- Solucions de codi.
- Rubriques completes.
- Contingut propi de `R1M1` o `R1M2`.
- Els PDF antics com a quatre presentacions separades. La versio nova ha de ser una presentacio inicial unica i coherent.
