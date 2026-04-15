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

Per treballar bé este repte convé dividir-lo en sis peces clares. La seqüència és esta: primer detectes què cal millorar del flux actual; després introduïxes el framework i la base del projecte; després migres el cas d’ús principal; després assegures la persistència suficient; després confirmes que el comportament continua viu; i finalment deixes documentat i defensable el canvi.

### Microrepte 1. Diagnosi del codi actual i del flux a millorar

**Objectiu**

Triar quin cas d’ús de `R2` mereix passar a una arquitectura més professional i detectar què té ara de poc mantenible.

**Què s’espera**

- selecció clara d’una funcionalitat real del projecte
- diagnosi breu del punt de partida
- detecció d’acoblaments, duplicitats o barreges de responsabilitats
- identificació de quines parts del flux convé conservar i quines convé reconstruir
- primer pla curt de migració o reconstrucció

**Criteris d’avaluació que es treballen**

- **RA5.c - RA5.d**: Analitzar l’estructura actual i justificar per què convé reorganitzar-la.

**Evidències principals**

- diagnosi breu del codi o del flux
- cas d’ús triat
- issue principal del repte o registre equivalent
- pla curt de migració

**Com es comprovarà**

- pregunta breu sobre quin problema real vols corregir
- contrast entre la diagnosi inicial i els canvis que acabes fent després

### Microrepte 2. Entrada del framework i estructura base del projecte

**Objectiu**

Introduir el framework triat sense perdre el fil del projecte i deixar una estructura base comprensible per continuar treballant.

**Què s’espera**

- elecció justificada de `Laravel`, `Symfony` o `NestJS`
- projecte arrancable i reproduïble amb instruccions clares
- estructura base recognoscible del framework
- primera organització de carpetes, mòduls o peces principals amb sentit
- connexió clara entre el projecte de `R2` i la nova base

**Criteris d’avaluació que es treballen**

- **RA5.e - RA5.f**: Introduir una arquitectura base coherent i usable per al mateix projecte.

**Evidències principals**

- projecte del framework creat o integrat
- estructura base revisable
- commits inicials de l’entrada al framework
- documentació mínima d’arrancada

**Com es comprovarà**

- execució real del projecte
- revisió de l’estructura base
- pregunta breu sobre per què has triat eixe framework i no un altre

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
- cas d’ús real seleccionat a partir de `R2`
- evidència de diagnosi i pla curt de migració
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
