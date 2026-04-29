# Repte 3. Framework, arquitectura mantenible i persistència suficient

## Finalitat del repte

El `Repte 3` servix per professionalitzar una funcionalitat que ja existix dins del teu projecte.

El projecte continua sent el mateix. El que canvia ara és la manera de construir-lo i d’explicar-lo.

En `R2` el focus estava en obrir un flux complet en servidor: formulari, validació, processament, estat, autenticació i una primera funcionalitat protegida. En `R3` el focus passa sobretot a:

- arquitectura més clara
- separació de responsabilitats
- codi més mantenible
- persistència suficient i explicable del recurs principal
- comprovació que la funcionalitat continua viva després del canvi

Este és també el moment en què entra el **framework**.

El contrast tecnològic ja pot començar ara, però no per repetir `R2` dins d’un altre entorn. El sentit del repte és millorar estructuralment el que ja funciona.

## Context professional

L’equip ja té una funcionalitat real del producte que funciona, però el codi encara és massa fràgil per créixer amb tranquil·litat.

Abans de publicar una API, obrir integracions o afegir més funcionalitats, cal reorganitzar el backend perquè siga més net, més extensible i més professional. Açò implica separar millor les peces del flux, donar-li una estructura coherent amb el framework triat i deixar una persistència suficient perquè el recurs principal no depenga d’un muntatge provisional.

## Què has de construir

En este repte has de deixar, com a mínim:

- una funcionalitat ja existent del projecte refeta o migrada amb millor estructura
- entrada real del framework triat dins del mateix projecte
- separació mínima de capes o responsabilitats
- una primera organització pròpia del framework que siga comprensible i defensable
- persistència suficient del recurs o cas d’ús principal
- validacions i errors coherents dins de la nova estructura
- prova que el comportament funcional continua funcionant després del canvi
- documentació tècnica mínima del que has migrat o reconstruït

## Producte mínim esperat

Al final del repte hauries de poder mostrar un recorregut com este:

- parteixes d’un cas d’ús real que ja existia en `R2`
- tries `Laravel`, `Symfony` o `NestJS`
- reorganitzes la funcionalitat dins d’una arquitectura més clara
- separes millor qui rep la petició, qui coordina el flux, qui tracta la lògica i qui accedix a dades
- deixes una persistència suficient i verificable del recurs central
- tornes a provar el flux per demostrar que no s’ha trencat
- documentes què ha canviat i per què la nova estructura és millor

No es tracta de fer un projecte nou. Es tracta de fer més professional el mateix projecte.

## Frontera respecte del Repte 2

La frontera entre `R2` i `R3` ha de quedar clara:

- en `R2` treballaves sobre una base comuna en `PHP`
- en `R2` l’objectiu era consolidar el flux complet de servidor
- en `R2` el framework no entrava com a norma general
- en `R3` entra el framework
- en `R3` el mateix projecte pot continuar-se amb itineraris diferents
- en `R3` el repte ja no és només “que funcione”, sinó “que es puga mantindre, explicar i fer créixer millor”

Per tant, `R3` no consistix a repetir el formulari, la validació i l’autenticació dins d’un framework. Consistix a agarrar una funcionalitat que ja existix i reconstruir-la amb una arquitectura millor i amb persistència suficient.

## Com conviuen `R2` i `R3`

En este repte no es demana mantindre dues implementacions actives del mateix flux alhora.

La convivència bona és esta:

- el projecte continua sent el mateix
- el codi de `R2` et servix com a punt de partida, referència o traçabilitat
- el framework nou passa a ser la via principal del cas d’ús que migres
- la resta de peces que encara no hages migrat poden quedar pendents o com a deute tècnic controlat

Per tant:

- no cal muntar un servidor web que servisca alhora el `PHP` antic i el framework nou
- no cal mantindre dues versions igualment actives del mateix cas d’ús
- no convé duplicar indefinidament el mateix flux en dos tecnologies diferents

Si necessites conservar la versió anterior, pots fer-ho com a historial del repositori, en una branca, en un punt de Git, en un directori `legacy/` o en peces que encara no s’han migrat. El que importa és que la implementació nova siga la principal per al cas d’ús que estàs professionalitzant.

## Frameworks base i forma de treball

A partir d’este repte, el projecte pot continuar-se en estes vies base:

- `Laravel`
- `Symfony`
- `NestJS`

`FastAPI` no és itinerari base general del curs.

Només tindria sentit com a via avançada o excepcional si el professorat l’ha autoritzada i si es pot defensar tècnicament sense opacitat.

Encara que a partir d’ara hi haja contrast tècnic compartit, el treball continua sent individual:

- cada persona manté el seu repositori
- cada persona deixa les seues evidències
- cada persona documenta els seus canvis
- cada persona defensa el seu propi codi

Pots comparar decisions, checkpoints i solucions amb altres companys o companyes, però això no substituïx l’autoria, la traçabilitat ni la defensa individual.

## Microreptes del Repte 3

Per treballar bé este repte convé dividir-lo en sis peces clares. La seqüència és esta: primer fas una diagnosi guiada del punt de partida, tries un cas d’ús realment migrable i deixes preparada la infraestructura mínima; després comences la migració amb el terreny tècnic ja preparat; després consolides el cas d’ús principal dins de la nova arquitectura; després assegures la persistència suficient; després confirmes que el comportament continua viu; i finalment deixes documentat i defensable el canvi.

### Microrepte 1. Diagnosi guiada, selecció del cas d’ús i preparació de l’entorn de migració

**Finalitat**

Este microrepte és l’entrada real a `R3`. No és només una anàlisi prèvia: ha de deixar clar què es migrarà, per què eixe punt d’entrada és viable i amb quin entorn tècnic començarà la migració.

Cal assumir que no tot l’alumnat arriba al final de `R2` amb el mateix grau de producte ni amb prou maduresa per fer una diagnosi autònoma útil. Per això, la diagnosi ha d’estar guiada i la preparació de la infraestructura forma part del treball docent del repte, no d’un temps invisible que després acabe carregant `MP2`.

**Objectiu**

Triar un cas d’ús real de `R2` que siga migrable, justificar-lo com a millor punt d’entrada a `R3` i deixar instal·lada o inicialitzada la infraestructura mínima per començar `MP2` sense perdre temps estructural.

**Què s’espera**

- **Part A. Diagnosi guiada**
- revisió del producte real heretat de `R2`, encara que siga incomplet o desigual
- identificació de problemes concrets de mescla de responsabilitats
- detecció de fitxers, pantalles, rutes o fluxos amb excés de càrrega
- selecció d’un cas d’ús realment migrable, no d’un bloc massa gran del projecte
- justificació de per què eixe cas d’ús és el millor punt d’entrada
- esquema breu d’abans i després: què hi ha ara i com hauria de quedar repartit
- **Part B. Preparació de l’entorn de migració**
- tria justificada d’itinerari o stack: `Laravel`, `Symfony` o `NestJS`
- instal·lació o inicialització de la nova infraestructura mínima
- prova d’arrencada del projecte o entorn base
- estructura inicial del projecte de migració
- preparació d’issues, microtasques o roadmap curt per començar `MP2`

**Organització en sessions**

`MP1` ocupa dues sessions:

- **Sessió 1**: diagnosi guiada del producte de `R2`, selecció del cas d’ús i defensa breu de la tria.
- **Sessió 2**: pla curt de migració, decisió de stack i preparació o instal·lació de l’entorn mínim.

**Criteris d’avaluació que es treballen**

- **RA5.c - RA5.d**: Analitzar l’estructura actual i justificar per què convé reorganitzar-la.
- **RA5.e - RA5.f**: Preparar una arquitectura base coherent i arrancable per començar la migració.

**Evidències principals**

- diagnosi breu del codi o del flux de `R2`
- cas d’ús seleccionat i justificat
- esquema abans/després del flux o de les responsabilitats principals
- nota breu de decisions de stack
- projecte o entorn base inicialitzat
- prova que el nou entorn arranca
- estructura inicial del projecte de migració
- issue principal del repte o registre equivalent
- issues, microtasques o roadmap curt de migració
- pla curt de migració validable

**Instruments**

- plantilla curta de diagnosi o checklist docent
- revisió guiada de fitxers, rutes, formularis, controladors o scripts carregats
- mapa senzill de responsabilitats actuals i responsabilitats previstes
- issue principal de `R3` i microtasques associades
- captura, registre o anotació de l’arrencada correcta de l’entorn

**Com es comprovarà**

- defensa breu de la selecció del cas d’ús
- validació docent del pla de migració
- comprovació que l’entorn nou arranca
- revisió que el cas d’ús triat no és inviable, massa gran o massa vague
- contrast entre la diagnosi inicial i els canvis que acabes fent després

**Riscos a evitar**

- triar “tot el projecte” com a cas d’ús
- triar una funcionalitat que encara no existix mínimament en `R2`
- fer una diagnosi abstracta sobre `MVC` sense mirar el codi real
- deixar la instal·lació del framework com a feina invisible fora del repte
- arribar a `MP2` sense entorn arrancable ni tasques concretes

**Relació amb `MP2`**

`MP2` comença amb el terreny preparat: cas d’ús triat, stack decidit, entorn base arrancable i roadmap curt. Això permet que `MP2` es dedique a començar la migració real, no a descobrir tard què es vol migrar ni a consumir mitja sessió instal·lant la base tècnica.

### Microrepte 2. Primer esquelet funcional del cas d’ús dins del framework

**Objectiu**

Començar la migració del cas d’ús triat sobre l’entorn ja preparat en `MP1`, creant el primer esquelet funcional dins del framework sense intentar resoldre encara tota la persistència ni tots els detalls del flux.

**Què s’espera**

- ús real de l’itinerari triat i inicialitzat en `MP1`
- estructura base recognoscible del framework
- primera ruta, controlador, acció, mòdul o equivalent relacionat amb el cas d’ús triat
- primer repartiment de carpetes, mòduls o peces principals amb sentit
- connexió clara entre el projecte de `R2` i la nova base
- pas inicial a la nova base sense necessitat de mantindre dues versions actives del mateix flux alhora
- instruccions clares per tornar a arrancar el projecte

**Criteris d’avaluació que es treballen**

- **RA5.e - RA5.f**: Usar una arquitectura base coherent i començar a ubicar-hi el cas d’ús seleccionat.

**Evidències principals**

- projecte del framework ja creat o integrat des de `MP1`
- estructura base revisable
- primers commits de migració sobre la base preparada
- primera ruta, pantalla, endpoint o acció del cas d’ús dins del framework
- documentació mínima d’arrancada

**Com es comprovarà**

- execució real del projecte
- revisió de l’estructura base
- comprovació que el primer esquelet correspon al cas d’ús validat en `MP1`

### Microrepte 3. Migració o reconstrucció del cas d’ús principal

**Objectiu**

Portar el cas d’ús triat a una arquitectura més clara, separant millor qui rep la petició, qui coordina el flux, qui tracta la lògica i qui prepara la resposta.

**Què s’espera**

- migració o reconstrucció d’un cas d’ús real del projecte
- separació visible de responsabilitats
- controladors, serveis, casos d’ús, vistes o equivalents amb rols clars
- reducció de mescles entre lògica, entrada HTTP, presentació i dades
- conservació del comportament funcional principal

**Criteris d’avaluació que es treballen**

- **RA5.e - RA5.h**: Separar presentació, lògica i coordinació del flux amb sentit real dins del projecte.

**Evidències principals**

- cas d’ús migrat o reconstruït
- comparació breu entre abans i després
- commits de migració incremental
- demo del flux principal dins de la nova arquitectura

**Com es comprovarà**

- execució real del cas d’ús reconstruït
- revisió del repartiment de responsabilitats
- pregunta breu sobre què ha deixat de viure en cada capa

### Microrepte 4. Persistència suficient del recurs

**Objectiu**

Deixar el recurs principal del cas d’ús amb una persistència real, suficient i explicable dins del framework triat.

**Què s’espera**

- un model de dades o equivalent coherent amb el cas d’ús
- lectura i ús real d’informació persistent
- almenys una operació d’escriptura, creació, actualització o equivalent
- integració neta de la persistència dins del flux refet
- criteri suficient: no cal modelar-ho tot, però sí deixar persistent allò que dona sentit al repte

**Criteris d’avaluació que es treballen**

- **RA6.a - RA6.d**: Integrar accés a dades real dins del cas d’ús prioritzat.

**Evidències principals**

- persistència funcional i verificable
- lectura real de dades
- escriptura o actualització real quan corresponga
- demo del recurs persistent dins del flux

**Com es comprovarà**

- execució en directe d’una lectura i d’una escriptura o actualització
- revisió del punt on la funcionalitat accedix a dades
- pregunta breu sobre per què esta persistència és suficient per a `R3`

### Microrepte 5. Regressió mínima i comprovació del flux

**Objectiu**

Demostrar que la funcionalitat que has reestructurat continua viva després del canvi i que el pas al framework no ha sigut només arquitectònic, sinó també funcional.

**Què s’espera**

- prova del cas positiu principal
- prova d’almenys un cas negatiu o d’error
- validacions i errors coherents dins del nou entorn
- comprovació que el flux principal de `R2` continua funcionant
- alguna forma simple i visible de prova o verificació de regressió

**Criteris d’avaluació que es treballen**

- **RA6.f - RA6.g**: Verificar el comportament real del cas d’ús i controlar errors mínims després de la migració.

**Evidències principals**

- registre de proves mínimes o checklist
- cas positiu i cas negatiu
- error visible o controlat
- demo de regressió mínima superada

**Com es comprovarà**

- execució real del flux refet
- contrast entre el comportament esperat i el resultat obtingut
- revisió de la prova mínima que confirma que no has trencat el cas d’ús

### Microrepte 6. Documentació tècnica i defensa breu del canvi

**Objectiu**

Deixar clar què has canviat, per què ho has canviat i per què la nova arquitectura és millor per continuar el projecte.

**Què s’espera**

- `README` o documentació equivalent actualitzada
- explicació breu de l’arquitectura adoptada
- justificació de la migració o reconstrucció
- indicació del que queda pendent o del deute tècnic més visible
- preparació per al pas següent del projecte

**Criteris d’avaluació que es treballen**

- **RA5.f - RA5.g** i **RA6.g**: Explicar, documentar i defensar la nova estructura i la persistència adoptada.

**Evidències principals**

- `README` tècnic actualitzat
- nota breu de decisions tècniques
- revisió de commits i issues relacionades
- defensa tècnica breu

**Com es comprovarà**

- contrast entre documentació, repositori i comportament real
- pregunta breu sobre què és millor ara que abans de `R3`

## Criteris en llenguatge clar

En este repte es valorarà sobretot si eres capaç de:

- reorganitzar una funcionalitat existent i no inventar-ne una només per al repte
- usar el framework de manera coherent i no com a decorat
- separar responsabilitats amb sentit real
- deixar una persistència suficient del recurs principal
- mantindre el comportament funcional després de la migració
- documentar i justificar el canvi arquitectònic
- explicar per què la nova estructura és més mantenible que l’anterior

No es tracta de memoritzar ordres del framework ni de repetir paraules com `MVC`, `service` o `repository`. El que compta és que el producte continue viu i que la nova estructura siga millor.

## Evidències obligatòries

Per considerar complet el repte, hauràs d’aportar com a mínim:

- repositori actualitzat
- issue principal del repte o registre equivalent
- seqüència de commits significativa
- cas d’ús real seleccionat i justificat a partir de `R2`
- evidència de diagnosi guiada i pla curt de migració
- esquema abans/després del flux o de les responsabilitats
- nota breu de decisions de stack
- issues o microtasques de migració
- prova que el nou entorn arranca
- estructura inicial del projecte de migració
- projecte arrencable en `Laravel`, `Symfony` o `NestJS`
- arquitectura més clara i separació visible de responsabilitats
- persistència suficient i verificable del recurs principal
- prova mínima de regressió o comprovació del flux
- `README` o documentació tècnica actualitzada
- `AI log`, quan hi haja ús rellevant d’IA

## Com es comprovarà

El professorat podrà comprovar el treball amb mecanismes com:

- execució real de la funcionalitat reconstruïda
- revisió del repositori
- revisió de commits i issues
- defensa breu de la selecció del cas d’ús
- validació del pla de migració
- comprovació que l’entorn nou arranca
- verificació que el cas d’ús triat no és inviable o massa gran
- comparació entre abans i després
- revisió de la persistència aplicada al cas d’ús
- preguntes tècniques breus
- defensa oral curta
- comprovació que la funcionalitat continua viva després de la reestructuració

## Ús de la IA en este repte

La IA et pot ajudar, per exemple, a:

- explorar estructura de carpetes, mòduls o capes
- revisar codi i detectar acoblaments
- proposar refactoritzacions per iteracions
- interpretar errors del framework o de persistència
- ajudar a preparar l’entorn base o interpretar errors d’arrencada
- proposar casos de prova o comprovacions mínimes
- ajudar a redactar documentació tècnica

El que no pots delegar és:

- decidir quina arquitectura adoptes i per què
- justificar per què una responsabilitat ha d’anar en una capa i no en una altra
- comprovar que la persistència funciona de veritat
- demostrar que el cas d’ús continua funcionant després del canvi
- defendre tècnicament la migració o reconstrucció

Encara que uses IA, es comprovarà igualment si pots explicar l’arquitectura final, modificar-la amb criteri i justificar-la.

## Errors habituals

Convindria evitar errors com estos:

- limitar-te a canviar fitxers sense millora real d’estructura
- introduir un framework però continuar barrejant responsabilitats
- repetir el mateix flux de `R2` sense professionalitzar-lo
- arribar a `MP2` sense cas d’ús validat ni entorn arrancable
- convertir la instal·lació del stack en temps invisible no planificat
- fer persistència sense criteri o sense relació amb el cas d’ús
- reescriure massa i perdre la funcionalitat que ja existia
- deixar el projecte arrancat però no explicable
- no poder justificar per què l’arquitectura final és millor
- donar a entendre que `FastAPI` és un itinerari base general

## Quan es considera superat

Este repte es considera superat quan:

- el mateix projecte continua viu després del pas a `R3`
- el framework ha entrat de manera coherent
- hi ha una arquitectura més clara i més mantenible
- la separació de responsabilitats és visible i defensable
- el recurs principal té una persistència suficient i verificable
- el cas d’ús migrat continua funcionant
- hi ha prova mínima de regressió o comprovació equivalent
- la documentació tècnica reflectix el canvi real
- pots explicar per què la nova estructura és millor que la de `R2`

Si açò queda ben tancat, el projecte estarà en condicions molt més serioses per obrir `R4` sense penjar una API damunt d’una base encara fràgil.
