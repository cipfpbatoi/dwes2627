# Repte 1. Kickoff funcional del backend

## Finalitat del repte

Este primer repte servix per iniciar el backend en condicions professionals bàsiques.

No es tracta només d’obrir un repositori o de deixar un esquelet buit. Es tracta de començar el projecte del curs amb una base tècnica executable, documentada i defensable.

En concret, este repte ha de servir per:

- Deixar una base tècnica executable.
- Prendre una primera decisió tècnica justificada.
- Obrir el treball amb criteri professional mínim.
- Construir una primera peça funcional real del producte.

## Context professional

Imagina que formes part d’un equip que rep l’encàrrec de posar en marxa un nou servei web.

Encara no es demana un producte complet, però sí una base fiable que permeta:

- Arrancar el projecte sense improvisació.
- Entendre com s’executa el backend.
- Deixar un punt d’entrada funcional simple.
- Documentar com es posa en marxa.
- Continuar el projecte amb criteri en els reptes següents.

## Què has de construir

En este repte has de deixar, com a mínim:

- Un repositori funcional.
- Un entorn executable.
- Docker o equivalent per reproduir l’arrancada.
- Un `README` executable.
- Una estructura base coherent del servei.
- Un punt d’entrada funcional simple del producte.
- Una justificació tècnica breu.
- Traçabilitat del treball amb issues i commits o registre equivalent.

El mínim obligatori no exigix encara una funcionalitat de domini rica. El que sí exigix és una base real de treball, un punt d’entrada funcional i evidència que el sistema arranca i es pot revisar.

Si el teu kickoff ja inclou formulari, validació mínima o primer registre de dades, pot ser una bona ampliació, però no ha de substituir la qualitat de la base tècnica.

## Producte mínim esperat

Al final del repte hauries de poder mostrar una seqüència com esta:

- El projecte arranca seguint el `README`.
- El servei es posa en marxa amb Docker o equivalent.
- Hi ha una resposta real del backend.
- El punt d’entrada és visible, simple i comprensible.
- La base creada es pot reutilitzar per al `Repte 2`.

## Microreptes del Repte 1

Este repte funciona millor si el dividixes en quatre peces clares. Això t’ajuda a no quedar-te només en la infraestructura i a entendre què es valora en cada part.

### Microrepte 1. Model d’execució client/servidor i elecció guiada de stack

**Objectiu**

Entendre què s’executa en client i què s’executa en servidor, i prendre una primera decisió tècnica inicial amb criteri.

**Què has de fer**

Has de completar una [fitxa breu d’exploració tècnica inicial](../04_materials/fitxa_exploracio_tecnica_inicial.md) i justificar quina base tècnica utilitzaràs per començar el projecte.

Esta exploració es pot fer amb ajuda d’IA.

No busca una comparativa exhaustiva ni un informe llarg. Busca sobretot comprensió inicial, criteri tècnic i capacitat d’explicar amb què començaries i quins dubtes tècnics tens oberts.

No cal adjuntar captures de totes les converses amb IA.

En este microrepte no es tracta encara d’instal·lar el framework complet, sinó de:

- Entendre el paper del navegador.
- Entendre el paper del servidor web.
- Entendre el paper del codi de servidor.
- Identificar tecnologies de client i de servidor.
- Explorar de manera breu possibles stacks o frameworks.
- Comparar de manera inicial exemples com `Laravel`, `Symfony` i `NestJS`.
- Decidir amb quin marc tècnic inicial arrancarà el projecte.

**Criteris d’avaluació que es treballen**

- **RA1.a**: Diferenciar què s’executa en client i què s’executa en servidor.
- **RA1.b**: Comprendre el valor del backend i del seu comportament dinàmic.
- **RA1.c**: Identificar el paper del servidor d’aplicacions i el seu funcionament bàsic.
- **RA1.g**: Justificar la tecnologia triada amb criteri.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Explicar què fa el client i què fa el servidor.
- Distingir una pàgina servida d’una resposta generada en backend.
- Entendre per què fa falta un entorn de servidor.
- Justificar per què tries una tecnologia i no una altra.

**Evidències obligatòries**

- Esquema simple client/servidor.
- Fitxa breu d’exploració tècnica inicial.
- Primera decisió tècnica orientativa.
- Justificació breu de la base triada.
- Dubtes tècnics detectats.

**Com es comprovarà**

- Revisió de l’esquema, de la fitxa i de la justificació.
- Posada en comú oral breu al final del microrepte o a l’inici del següent tram.
- Pregunta oral breu sobre què s’executa en client i què en servidor.
- Contrast entre la decisió tècnica i el projecte que després es munta.

### Microrepte 2. Entorn executable amb Docker, PHP i servidor web

**Objectiu**

Deixar el projecte preparat perquè es puga arrancar de manera clara, reproduïble i usable.

**Què has de fer**

Has de muntar un entorn executable amb:

- Docker o equivalent.
- PHP.
- Servidor web.
- Estructura mínima del projecte.
- `README` amb instruccions d’arrancada.

En este microrepte encara **no es demana la instal·lació completa del framework**.

La prioritat és tindre una base comuna i controlada sobre la qual després es puga continuar construint.

**Criteris d’avaluació que es treballen**

- **RA1.c**: Identificar el paper del servidor d’aplicacions i la seua integració.
- **RA1.d**: Reconéixer tecnologies, ferramentes i entorn propi del backend.
- **RA1.e**: Preparar un entorn executable i funcional.
- **RA1.f**: Comprovar la posada en marxa del servei i la seua resposta bàsica.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Posar en marxa el projecte.
- Entendre què fa cada peça de l’entorn.
- Arrancar-lo amb instruccions clares.
- Demostrar que realment funciona.

**Evidències obligatòries**

- Fitxers de configuració mínims.
- Contenidor o estructura executable.
- `README` funcional.
- Evidència que el servei arranca correctament.

**Com es comprovarà**

- Execució real del `README`.
- Arrencada amb Docker o equivalent.
- Comprovació que el servei respon.
- Preguntes breus sobre l’entorn muntat.

### Microrepte 3. Primer punt d’entrada funcional del backend

**Objectiu**

Construir una primera peça funcional real del projecte, encara que siga simple.

**Què has de fer**

Has de crear un primer punt d’entrada funcional que permeta demostrar que el backend ja està fent una tasca real.

Per exemple:

- Una pàgina inicial generada pel servidor.
- Una resposta dinàmica mínima.
- Una entrada simple amb tractament bàsic.
- Una validació mínima en servidor.
- Un primer registre o persistència molt bàsica.

**Criteris d’avaluació que es treballen**

- **RA1.b**: Comprendre el valor d’un backend que genera comportament real.
- **RA1.e**: Construir una primera funcionalitat executable.
- **RA1.f**: Comprovar la integració entre resposta del servidor i punt d’entrada funcional.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Passar d’un esquelet a una funcionalitat mínima.
- Demostrar que el backend rep, tracta o genera una resposta.
- Mostrar una primera interacció real amb el sistema.

**Evidències obligatòries**

- Punt d’entrada funcional.
- Evidència de validació mínima o tractament bàsic.
- Evidència d’un registre o persistència simple, si apareix.
- Demo funcional breu.

**Com es comprovarà**

- Execució real del punt d’entrada.
- Prova del flux mínim.
- Revisió del codi i de la resposta generada.
- Pregunta oral sobre què fa exactament el backend en eixe punt.

### Microrepte 4. Documentació tècnica, verificació i defensa breu

**Objectiu**

Deixar el repte preparat per a revisió i demostrar que el que s’ha construït és executable i explicable.

**Què has de fer**

Has de tancar el repte amb:

- `README` revisat.
- Evidència de prova del flux.
- Decisions bàsiques documentades.
- Preparació per al checkpoint o la defensa.

Este microrepte també servix per revalidar si realment comprens el model client/servidor, la base tècnica muntada i la funcionalitat construïda.

**Criteris d’avaluació que es treballen**

- **RA1.d**: Reconéixer i documentar adequadament tecnologies i eines.
- **RA1.g**: Justificar decisions tècniques i el camí triat.
- **RA1.a**: Explicar de manera solvent el paper de client i servidor en la solució implementada.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Documentar el projecte de manera útil.
- Demostrar que el que has construït funciona.
- Explicar com està muntat.
- Justificar les decisions preses.

**Evidències obligatòries**

- `README` final revisat.
- Evidència de prova o execució.
- Justificació tècnica breu.
- Preparació per a checkpoint o defensa.

**Com es comprovarà**

- Revisió del `README`.
- Execució real del projecte.
- Defensa tècnica breu.
- Preguntes sobre decisions, model d’execució i funcionalitat mínima.

## Resum dels criteris d’avaluació del Repte 1

En este repte es treballen especialment estos criteris:

- Entendre la diferència entre client i servidor.
- Comprendre el paper del backend.
- Identificar el paper del servidor d’aplicacions.
- Reconéixer tecnologies i eines del backend.
- Posar en marxa un entorn executable.
- Demostrar una primera funcionalitat real.
- Justificar la base tècnica triada.

## Evidències obligatòries

Per considerar complet el repte, hauràs d’aportar com a mínim:

- Repositori actualitzat i usable.
- Issue mare del kickoff o registre equivalent.
- Historial de commits significatiu.
- Fitxa breu d’exploració tècnica inicial del microrepte `1`.
- `README` executable.
- Docker Compose o equivalent funcional.
- Justificació tècnica breu o `ADR` curt.
- Punt d’entrada funcional simple.
- Evidència de validació tècnica mínima.
- Defensa tècnica breu.
- `AI log`, quan hi haja ús rellevant d’IA.

## Com es comprovarà

El professorat podrà comprovar el treball amb mecanismes com:

- Execució real del `README`.
- Arrencada amb Docker o equivalent.
- Prova del punt d’entrada funcional.
- Revisió de commits i issues.
- Preguntes tècniques breus.
- Defensa oral curta.
- Microcanvis en viu quan siga necessari.
- Contrast entre documentació, codi i resultat real.

## Ús de la IA en este repte

La IA et pot ajudar, per exemple, a:

- Explorar opcions tècniques.
- Preparar un primer esquelet.
- Proposar fitxers de Docker.
- Revisar el `README`.
- Detectar errors de configuració.

El que no pots delegar és:

- Entendre l’entorn que has muntat.
- Verificar que arranca realment.
- Explicar què fa cada peça important.
- Justificar per què has adoptat eixa solució.

Encara que uses IA, es comprovarà igualment si pots validar, adaptar i defendre el que presentes.

## Errors habituals

Convindria evitar errors com estos:

- Esquelet buit sense producte real.
- Comparativa superficial.
- Docker present però no usable.
- `README` que no permet arrancar el projecte.
- Punt d’entrada només decoratiu.
- Codi que no es pot explicar.

## Quan es considera superat

Este repte es considera superat quan:

- El projecte arranca seguint el `README`.
- L’entorn és executable de manera reproductible.
- Hi ha una primera peça funcional real del producte.
- Existix un punt d’entrada funcional simple i defensable.
- La decisió tècnica inicial està justificada.
- El treball deixa traçabilitat real.
- Pots explicar què has fet, per què i com prepara el pas al `Repte 2`.

## Decisió metodològica important d’este repte

En el **Repte 1** no es demana encara la instal·lació completa d’un framework.

La prioritat és disposar d’un entorn executable en **Docker + PHP + servidor web** i construir una primera peça funcional mínima del backend.

La decisió sobre el framework pot aparéixer com a exploració inicial o orientació tècnica dins de la fitxa breu del microrepte `1`, però la seua incorporació efectiva es reserva per a fases posteriors del curs.

## Què prepara este repte

Este repte deixa la base preparada per al següent pas del curs:

- Tractar millor les dades.
- Incorporar lògica de processament.
- Gestionar estat o sessió.
- Protegir funcionalitats.
- Convertir la base inicial en un flux de servidor més complet en `R2`.

## Ampliació 9→10

**Finalitat**  
Aprofundir el kickoff del backend amb una millora tècnica real sobre entorn, arrencada o traçabilitat inicial.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

**Opcions d'ampliació**
- Deixar l'entorn encara més reproductible amb automatització bàsica d'arrencada o millor contenidorització.
- Redactar un `ADR` curt o una nota tècnica més sòlida sobre l'arquitectura inicial i la decisió de stack.

**Proposta pròpia**  
També pots proposar una ampliació pròpia si està alineada amb el repte i la valides abans amb el professorat.

**Evidències mínimes**
- commit o branca identificable
- justificació tècnica breu
- prova funcional de l'arrencada o de la millora aplicada
- rastre de l'ús assistit per IA, si n'hi ha hagut

**Ús assistit per IA**  
La IA et pot ajudar a comparar opcions o revisar configuració, però la decisió, la prova i la validació han de ser teues.

**Defensa**  
Perquè compute com a `9→10`, l'ampliació ha d'aportar valor real i l'has de poder explicar i defensar.
