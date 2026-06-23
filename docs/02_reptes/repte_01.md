# Repte 1. Kickoff funcional del backend

## Finalitat del repte

Este primer repte servix per iniciar el backend en condicions professionals bàsiques. No es tracta només d’obrir un repositori o de deixar un esquelet buit, sinó de començar el projecte del curs amb una base tècnica executable, documentada i defensable.

## 🌟 Via 9→10 en este repte

Este repte també té una via d'excel·lència `9→10`: **primer has de tancar bé el nucli i després pots obrir una ampliació amb valor tècnic real**. La secció completa està al final del repte.

## Vista ràpida

| Apartat | Què has de deixar fet |
|---|---|
| Base tècnica | Repositori funcional, estructura mínima coherent i entorn executable amb Docker o equivalent. |
| Backend inicial | Primer punt d’entrada servit pel backend: ruta, vista, endpoint, landing mínima o healthcheck. |
| Documentació | `README` executable amb arrancada, parada, ports, URL i comprovació del resultat. |
| Decisió tècnica | Fitxa inicial, justificació breu del stack i dubtes tècnics detectats. |
| Traçabilitat | Issue mare, microtasques, commits o registre equivalent del treball fet. |
| Verificació | Evidència que el projecte arranca i que el punt d’entrada respon. |

El mínim obligatori no exigix encara una funcionalitat de domini rica. El que sí exigix és una base real de treball, una primera resposta del backend i evidència que el sistema es pot revisar.

## Microreptes del Repte 1

Este repte té `2` microreptes, un per sessió. El primer et dona criteri per entendre el backend i triar una base tècnica inicial. El segon transforma eixa decisió en un repositori executable, amb un primer punt d'entrada funcional i documentació suficient per passar a `R2`.

L'autocorrecció també es farà per sessió. Per tant, `R1M1` té un pes del `25%` dins del repte i `R1M2` té un pes del `75%`.

| Sessió | Autocorrecció | Microreptes inclosos | Pes dins del repte | Focus principal |
|---|---|---|---:|---|
| `R1-S01` | `r1-s01-model-client-servidor-stack` | `R1M1` | `25%` | Model client/servidor, backend i decisió inicial de stack. |
| `R1-S02` | `r1-s02-entorn-executable` | `R1M2` | `75%` | Entorn executable amb Docker, PHP i servidor web, punt d'entrada funcional, documentació, verificació i defensa breu. |

Guies d'avaluació del repte:

- [R1M1. Guia d'avaluació](../03_com_s_avalua/rubriques/r1m1.md)
- [R1M2. Guia d'avaluació](../03_com_s_avalua/rubriques/r1m2.md)

Abans de començar, consulta els [materials de suport del Repte 1](../04_materials/repte_01/index.md). Allí tens els PDF d’explicació del professorat organitzats per microrepte.

### R1M1. Model d'execució client/servidor i elecció guiada de stack

**Objectiu**

Entendre què s’executa en client i què s’executa en servidor, i prendre una primera decisió tècnica inicial amb criteri.

Abans d'entregar, revisa la [guia d'avaluació de R1M1](../03_com_s_avalua/rubriques/r1m1.md).

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

**Materials de suport**

- [R1M1. Model client-servidor i elecció guiada de stack](../recursos/Repte1/R1M1-Model-clientservidor-i-eleccio-guiada-de-stack.pdf)
- [R1. Kickoff backend i base executable](../recursos/Repte1/R1-Kickoff-backend-i-base-executable.pdf)

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

### R1M2. Entorn executable, punt d'entrada i tancament de R1

**Objectiu**

Deixar el projecte preparat perquè es puga arrancar de manera clara, reproduïble i usable, i perquè ja tinga una primera resposta real del backend.

Abans d'entregar, revisa la [guia d'avaluació de R1M2](../03_com_s_avalua/rubriques/r1m2.md).

**Què has de fer**

Has de muntar i tancar una base inicial amb:

- Docker o equivalent.
- PHP.
- Servidor web.
- Base de dades i phpMyAdmin quan el model docent ho demane.
- Estructura mínima del projecte.
- Un primer punt d'entrada funcional: ruta, vista, endpoint, landing mínima o healthcheck servit pel backend.
- `README` amb instruccions d'arrancada, parada i comprovació.
- Documentació del repte dins del repositori.

En este microrepte encara **no es demana la instal·lació completa del framework**.

La prioritat és tindre una base comuna i controlada sobre la qual després es puga continuar construint en `R2`.

**Materials de suport**

- [R1M2. Entorn executable, punt d'entrada i tancament de R1](../recursos/Repte1/R1M2-Entorn-executable-punt-dentrada-i-tancament-de-R1.pdf)
- [R1. Kickoff backend i base executable](../recursos/Repte1/R1-Kickoff-backend-i-base-executable.pdf)

**Criteris d’avaluació que es treballen**

- **RA1.c**: Identificar el paper del servidor d’aplicacions i la seua integració.
- **RA1.d**: Reconéixer tecnologies, ferramentes i entorn propi del backend.
- **RA1.e**: Preparar un entorn executable i funcional.
- **RA1.f**: Comprovar la posada en marxa del servei i la seua resposta bàsica.
- **RA1.b**: Comprendre el valor d'una resposta generada pel backend.
- **RA1.g**: Justificar decisions tècniques a partir de l'experiència real.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Posar en marxa el projecte.
- Entendre què fa cada peça de l’entorn.
- Arrancar-lo amb instruccions clares.
- Demostrar que realment funciona.
- Crear una primera resposta mínima del backend.
- Documentar i defensar el que has construït.

**Evidències obligatòries**

- Fitxers de configuració mínims.
- Contenidor o estructura executable.
- `README` funcional.
- Evidència que el servei arranca correctament.
- Punt d’entrada funcional.
- Evidència que la resposta ve del backend.
- Evidència de prova, captura, log o URL de comprovació.
- `README` final revisat.
- Justificació tècnica breu.
- Preparació per a checkpoint o defensa.

**Com es comprovarà**

- Revisió del `README`.
- Execució real del projecte.
- Prova del punt d'entrada funcional.
- Defensa tècnica breu.
- Preguntes sobre decisions, model d’execució i funcionalitat mínima.

## Checklist final del Repte 1

| Bloc | Evidència mínima | Com es comprovarà |
|---|---|---|
| Repositori | Repositori actualitzat, usable i amb commits significatius. | Revisió de commits, issues o registre equivalent. |
| Decisió inicial | Fitxa breu de `R1M1`, justificació del stack i dubtes tècnics. | Revisió de la fitxa i preguntes sobre client, servidor i tecnologia triada. |
| Entorn executable | Docker Compose, `Dockerfile` o equivalent funcional. | Execució real seguint el `README`. |
| Punt d’entrada | Ruta, vista, endpoint, landing mínima o healthcheck servit pel backend. | Prova de la URL o ruta documentada. |
| Documentació | `README` amb requisits, arrancada, parada, ports, URL i resultat esperat. | Una altra persona ha de poder arrancar el projecte només amb el `README`. |
| Verificació | Captura, log, URL o prova mínima del servei en marxa. | Contrast entre documentació, codi i resultat real. |
| Defensa | Explicació breu de què has fet, per què i com prepara `R2`. | Preguntes tècniques breus o microcanvis en viu. |
| Ús d’IA | `AI log`, si hi ha ús rellevant d’IA. | Revisió del registre i de la validació feta després. |

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

Este repte es considera superat quan la checklist final està completa i pots explicar què has fet, per què i com prepara el pas al `Repte 2`.

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
Aprofundir el kickoff del backend amb una millora funcional visible i defensable: el projecte ha de deixar de ser només una comprovació tècnica d'arrencada i ha de mostrar una primera entrada real al producte.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

**Millora demanada**

Per optar a la franja `9→10` en este repte, la millora principal és dissenyar i implementar una primera experiència visible del producte:

- Una `landing page` pròpia del projecte, servida pel backend.
- Una pàgina `Sobre nosaltres` o `Sobre el projecte`, també servida pel backend.
- Navegació mínima entre les dos pàgines.
- Contingut adaptat al producte concret, no text genèric ni plantilla sense personalitzar.
- Evidència que les pàgines es poden executar seguint el `README`.

Esta ampliació ha de mostrar que el projecte ja té una porta d'entrada comprensible per a una persona usuària o revisora. Un `healthcheck` pot ser útil com a comprovació tècnica del nucli, però **no compta com a ampliació 9→10** si és l'única millora presentada.

**Altres millores complementàries**

Si ja tens la landing i la pàgina `Sobre nosaltres`, pots reforçar l'ampliació amb alguna d'estes accions:

- Deixar l'entorn encara més reproductible amb automatització bàsica d'arrencada o millor contenidorització.
- Redactar un `ADR` curt o una nota tècnica més sòlida sobre l'arquitectura inicial i la decisió de stack.
- Documentar breument com la landing prepara el pas cap a formularis, dades o fluxos de `R2`.

**Proposta pròpia**  
També pots proposar una ampliació pròpia si està alineada amb el repte i la valides abans amb el professorat. En qualsevol cas, ha d'aportar valor visible al producte i no limitar-se a una comprovació tècnica d'estat.

**Evidències mínimes**
- commit o branca identificable
- justificació tècnica breu
- prova funcional de la landing i de la pàgina `Sobre nosaltres`
- URL o ruta documentada de cada pàgina
- rastre de l'ús assistit per IA, si n'hi ha hagut

**Ús assistit per IA**  
La IA et pot ajudar a comparar opcions o revisar configuració, però la decisió, la prova i la validació han de ser teues.

**Defensa**  
Perquè compute com a `9→10`, has de poder explicar què aporta la landing, per què la pàgina `Sobre nosaltres` encaixa amb el projecte, com es generen o servixen des del backend i com esta millora prepara el treball posterior.
