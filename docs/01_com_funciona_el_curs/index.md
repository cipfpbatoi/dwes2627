# 📘 Com funciona el curs

## 💡 Idea general

Este mòdul es treballa com un **projecte evolutiu basat en reptes**.

No faràs pràctiques inconnexes ni un projecte diferent en cada tema. Treballaràs sobre un mateix producte backend que anirà creixent, canviant i millorant al llarg del curs.

La idea clau és simple: el que construeixes en un repte ha de servir per al següent.

Presentació d'inici: [Benvinguda al curs](../recursos/Presentacions/Benvinguda-al-curs.pdf).

## 🧭 Seqüència del curs

La seqüència general és esta:

- `R1`: obri el projecte i deixa una primera peça funcional real.
- `R2`: es resol sobre una base comuna en `PHP` per consolidar dades, lògica, estat o sessió, autenticació i funcionalitat protegida.
- `R3`: és on entra el contrast de frameworks i el mateix projecte es reconstrueix amb Docker, BBDD real, `migrations`, `seeders` i `2` casos d'ús funcionals.
- `R4`: el producte passa a publicar i consumir una `API` real.
- `R5`: el curs es tanca amb integració, manteniment, revisió i defensa del producte.

Els reptes no són entregues independents. Cada repte aprofita l’anterior i prepara el següent.

## 🗓️ Ritme per avaluacions

A nivell pràctic, el curs es repartix així:

- **Avaluació 1**: `Repte 1`, `Repte 2` i entrada a `Repte 3`.
- **Avaluació 2**: tancament de `Repte 3`, `Repte 4`, `Repte 5` i defensa.
- **Avaluació 3**: tram residual de tancaments, millores o connexió amb empresa/FCT, si correspon.

És una orientació de ritme. El detall concret pot ajustar-se durant el curs segons el calendari real.

## 🔀 Què canvia entre `R2` i `R3`

`R2` és un tram comú. En esta fase, la prioritat no és comparar frameworks.

En `R2`, el focus està en:

- Tractar dades en servidor.
- Aplicar lògica bàsica amb sentit.
- Gestionar estat o sessió.
- Fer autenticació funcional.
- Protegir una primera funcionalitat real del projecte.

El contrast de frameworks entra després, a partir de `R3`.

A partir d’eixe moment, el mateix projecte i el mateix encàrrec funcional poden continuar amb:

- `Laravel`.
- `Symfony`.
- `NestJS`.

Si vols treballar amb `FastAPI`, acorda-ho abans amb el professorat. És una opció reservada per a casos amb prou autonomia tècnica.

## 🧱 Mateix projecte, diferents fases

Quan passa el curs del tram comú al tram de framework, no canvies de problema ni migres tota l'aplicació antiga.

El que fas en `R3` és construir una base nova i real en framework, amb almenys `2` fluxos funcionals. Com a mínim un ha de vindre de `R2`.

Continues el mateix projecte. El que canvia és la manera d’organitzar-lo, fer-lo créixer i professionalitzar-lo.

Per això, des del principi convé que el projecte:

- Tinga un cas d’ús recognoscible.
- Puga créixer de `R1` a `R5` sense reiniciar-lo.
- Admeta autenticació, persistència, `API` i integració.
- Et permeta explicar decisions tècniques reals, no només estructures buides.

## 🗂️ Repositori del curs

Treballaràs en un repositori individual que crea el professorat. En `R1S1`, acceptaràs la invitació com a col·laborador i faràs `git clone` de la URL assignada al teu ordinador.

Eixe repositori és el mateix per a tot el curs. No has de crear un repositori nou per a cada repte ni treballar sobre el repositori base. Les instruccions per clonar, fer commit, fer `push` i deixar el treball preparat per a l'autocorrecció estan en [Repositori, branques i entrega](../04_materials/guia_pujar_treball_autocorreccio.md).

## 🤝 Cooperació i autoria

La cooperació és possible, però no substituïx l’autoria individual.

El model base de treball és el de **parelles de contrast tècnic**.

Es pot compartir parcialment:

- El mateix projecte.
- El mateix encàrrec funcional.
- Alguns checkpoints o moments de contrast.
- La comparació de decisions tècniques.

Però continuen sent individuals:

- El repositori.
- Les evidències.
- La defensa.

## ✅ Què s’espera del teu treball

Al llarg del curs s’espera que sigues capaç de:

- Treballar de manera regular sobre el mateix repositori.
- Deixar una part funcional i provable del producte en cada repte.
- Mantindre al dia `README.md`, proves, decisions i documentació mínima.
- Explicar què has fet, per què ho has fet i com ho has comprovat.
- Arribar als checkpoints amb una base revisable i no improvisada.
- Defendre individualment el teu resultat.

No és suficient:

- Muntar esquelets buits.
- Fer només la tècnica aïllada del tema.
- Deixar funcionalitat sense proves ni comprovació real.
- Entregar codi que no pots explicar.

## 🤖 Ús de la IA

La IA es pot usar com a ferramenta de suport.

Et pot explicar teoria, donar pistes sobre un intent propi i suggerir casos límit. No pot implementar el backend ni les proves per tu, tampoc mitjançant agents autònoms. Es permet generar HTML estàtic/CSS de presentació, amb registre i revisió.

Però hi ha una condició clara: has de **validar, provar i defendre** el que presentes.

Si uses IA, has de poder:

- Explicar el resultat.
- Corregir-lo si falla.
- Justificar què has acceptat i què has descartat.
- Demostrar que encaixa amb el comportament real del teu repositori.

Si vols el criteri complet, consulta la [Guia d'ús verificable de la IA](../04_materials/guia_us_verificable_ia.md).

## 🎯 Idea final

L’objectiu del curs no és només arribar a un producte que funcione.

L’objectiu és arribar a un producte que pugues:

- Construir.
- Provar.
- Mantindre.
- Explicar.
- I defendre.


## 🌟 Via d'excel·lència 9→10

Cada repte pot incloure una ampliació `9→10`. Esta ampliació no substituïx el nucli obligatori: només compta quan el repte base ja està complet i validat.

La idea és simple:

- primer resols bé el nucli
- després, si toca, aprofundixes amb una millora tècnica real
- l'ampliació només compta si la pots provar, explicar i defensar

Tens el resum comú en [Ampliacions d'excel·lència 9→10](../ampliacions-excellencia.md).

## Entendre i corregir abans de continuar

Les sessions reserven temps de retorn, correcció guiada i comprovació de la comprensió. Consulta [què fer si encara no has assolit un microrepte](../04_materials/guia_consolidacio_i_recuperacio_repte.md). Els microreptes són treball d’aula sense recuperació individual. La recuperació correspon al repte complet.
