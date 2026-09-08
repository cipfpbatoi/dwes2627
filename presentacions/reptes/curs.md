# Brief Gamma. Presentacio 00. Visio del curs

## Objectiu

Crear una presentacio inicial del curs per explicar a l'alumnat com funciona el modul abans d'entrar en `R1M1`: treball per reptes, producte evolutiu, evidencies, avaluacio, autoria, us verificable de la IA, primer mapa del producte i checkpoint inicial.

La còpia publicada que cal actualitzar és `docs/recursos/Presentacions/Benvinguda-al-curs.pdf`. Esta presentacio refon els quatre PDF antics:

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
7. **Repositori individual del curs**
   - En `R1S1` el professorat crea el repositori individual i convida l’alumne com a col·laborador.
   - L’alumnat accepta la invitació, fa `git clone` del repositori assignat una sola vegada i prepara el primer treball en `microrepte/r1m1`.
   - No s'ha de clonar el repositori base directament ni crear un repositori nou.
   - Eixe mateix repositori s'usa de `R1` a `R5`.
   - `README.md` es modifica en cada microrepte; `ENTREGA.md` conserva les instruccions base del repositori.
8. **Stacks i transicio `R2 -> R3`**
   - `R2` es treballa sobre una base comuna en `PHP`.
   - El contrast de frameworks entra a partir de `R3`.
   - Itineraris base: `Laravel`, `Symfony` o `NestJS`.
   - `FastAPI` no es itinerari base general; nomes opcio avancada o excepcional.
9. **Que es deixa com a evidencia**
   - Repositori viu i tracable.
   - `README.md` actualitzat.
   - Proves o comprovacions reproduibles.
   - Commits recognoscibles.
   - `AI log` quan la IA ajuda en parts rellevants.
10. **Com es valorara**
   - Funcionalitat real i provable.
   - Traçabilitat del proces.
   - README i documentacio operativa que coincidisquen amb el repositori.
   - Proves o verificacions reproduibles.
   - Defensa individual curta i concreta.
   - Us responsable de la IA quan aparega.
11. **Paper de la IA**
   - Primer teoria, després intent propi, pregunta concreta, implementació i comprovació pròpies.
   - Es permeten explicacions, pistes i casos límit. No es pot delegar backend, configuració avaluable ni proves en agents o xats, encara que després s’entenguen.
   - Es permet generar HTML estàtic/CSS de presentació, sense PHP ni lògica funcional. Guia i report units en `docs/ai-log.md`; declarar no ús és vàlid i no penalitza.
12. **Projectes base recomanats**
   - Opcio mes equilibrada: gestor d'incidencies amb seguiment.
   - Opcio molt clara per a regles i estats: sistema de reserves.
   - Opcio mes professional pero menys propera: gestor d'inventari.
   - Variants possibles si el grup necessita mes motivacio: activitats/esdeveniments, biblioteca de recursos o torns/cites.
   - Totes les variants han de permetre usuaris, rols, persistencia, API, integracio i defensa.
13. **Primer mapa del producte**
   - No es un disseny final.
   - Ha de deixar una fitxa curta en el `README.md`.
   - Camps: producte, usuari principal, necessitat real, primera accio util, dades minimes i risc inicial.
14. **Checkpoint inicial**
    - No es revisa codi encara.
    - Abans de `R1S1`, es comprova el mapa del producte i que s’entén on aniran les evidències; no s’exigix haver clonat un repositori que encara no s’ha assignat. En `R1S1` es comproven invitació acceptada, clonació i `README.md`.
    - Cada alumne ha de poder explicar el producte i la primera accio real.
15. **Errors habituals**
    - Dir "fare una web" sense producte concret.
    - Plantejar nomes un CRUD generic.
    - No saber on quedaran les evidencies.
    - Clonar el repositori base en lloc del repositori individual assignat pel professorat.
    - Confondre ajuda d'IA amb autoria.
    - Arribar a `R1S1` sense decisio inicial de producte.
16. **Checklist final**
    - Puc explicar el producte en una frase.
    - Se qui l'usara primer.
    - Tinc una primera accio real.
    - Sé que en `R1S1` acceptaré la invitació, clonaré el repositori assignat i prepararé el `README.md`.
    - Se com es valorara i com he de defensar el treball.

## Format recomanat

- 13-16 diapositives.
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

## Procediment Git que ha de mostrar Gamma

El professorat crea el repositori i convida l’alumne. No s’usa GitHub Classroom ni es clona la plantilla. Només hi ha `main` i una branca per microrepte; no crear branques de repte ni exigir pull requests.

Una vegada acceptada la invitació, clonar la URL real del repositori assignat i entrar en la carpeta. No copiar una URL d’exemple com si fora la pròpia.

Des de la còpia local, amb el treball anterior guardat:

```bash
git switch main
git pull --ff-only origin main
git switch -c microrepte/r1m1
```

Treballar, comprovar i guardar només els fitxers de l’entrega amb `git add` i `git commit`. Pujar la branca:

```bash
git push -u origin microrepte/r1m1
```

Per entregar, integrar el treball personalment:

```bash
git switch main
git pull --ff-only origin main
git merge --no-edit microrepte/r1m1
git push origin main
```

L’autocorrecció llig `main`: pujar només la branca del microrepte no completa l’entrega. Conservar les branques anteriors per consultar-les. Per reprendre un microrepte ja començat, usar `git switch microrepte/r1m1`, sense tornar a crear-lo. Davant d’un conflicte, demanar ajuda; no forçar ni descartar treball.

## Retorn, consolidació i ús d’IA

Els microreptes són treball d’aula consecutiu. El retorn i la correcció guiada ajuden a continuar el projecte; no són una recuperació ni una nova qualificació individual del microrepte. Només es recupera el repte complet segons el procediment docent. Les fitxes de consolidació es consulten quan el professorat les publique.

La IA pot explicar teoria i donar pistes sobre un intent propi. No pot implementar la configuració avaluable, el backend ni les proves en lloc de l’alumne. L’excepció d’HTML/CSS es limita a presentació estàtica: camps, `name`, `method`, `action` i processament s’han d’entendre i decidir personalment. Registre únic en `docs/ai-log.md`, amb guia i apartat «El meu registre». Si no hi ha ús d’IA, declarar-ho sense inventar consultes.

## Fonts vigents i exportació

- [Repositori, branques i entrega](../../docs/04_materials/guia_pujar_treball_autocorreccio.md).
- [Norma d’ús d’IA](../../docs/04_materials/guia_us_verificable_ia.md).

Mostrar els passos Git amb un esquema breu i deixar les ordres completes en notes si cal. No afegir solucions del microrepte. Després d’actualitzar Gamma, exportar i substituir el PDF corresponent de `docs/recursos/`; editar el brief no actualitza el PDF.
