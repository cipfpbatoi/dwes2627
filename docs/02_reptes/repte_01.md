# Repte 1. Kickoff funcional del backend

## Finalitat del repte

Este primer repte servix per iniciar el backend en condicions professionals bàsiques. No es tracta només d’obrir un repositori o de deixar un esquelet buit, sinó de començar el projecte del curs amb una base tècnica executable, documentada i defensable.

## Vista ràpida

| Apartat | Què has de deixar fet |
|---|---|
| Base tècnica | Repositori funcional, estructura mínima coherent i entorn executable amb Docker o equivalent. |
| Backend inicial | Landing inicial del projecte servida pel backend, amb CSS senzill i URL documentada. |
| Documentació | `README.md` executable amb arrancada, parada, ports, URL i comprovació del resultat. |
| Decisió tècnica | Fitxa inicial, justificació breu del stack i dubtes tècnics detectats. |
| Traçabilitat | Issue mare, microtasques, commits o registre equivalent del treball fet. |
| Verificació | Evidència que el projecte arranca i que la landing inicial respon des del backend. |

El mínim obligatori no exigix encara una funcionalitat de domini rica. El que sí exigix és una base real de treball, una primera resposta del backend i evidència que el sistema es pot revisar.

## Repositori de treball del curs

En la primera sessió, `R1S1`, acceptaràs l'enllaç de GitHub Classroom que done el professorat i clonaràs el teu repositori individual. No has de treballar sobre el repositori base ni crear-ne un altre.

Eixe repositori individual serà el teu repositori de treball durant tot el curs. En ell aniran quedant els microreptes, les evidències, el `README.md`, les decisions tècniques i els commits.

Tens el procés detallat en la guia [Com pujar el treball per a l'autocorrecció](../04_materials/guia_pujar_treball_autocorreccio.md).

## Microreptes del Repte 1

Este repte té `2` microreptes, un per sessió. El primer et dona criteri per entendre el backend i proposar una base tècnica inicial. El segon valida o ajusta eixa decisió en execució i la transforma en un repositori executable, amb una landing inicial servida pel backend i documentació suficient per passar a `R2`.

L'autocorrecció també es farà per sessió. Per tant, `R1M1` té un pes del `25%` dins del repte i `R1M2` té un pes del `75%`.

| Sessió | Autocorrecció | Microreptes inclosos | Pes dins del repte | Focus principal |
|---|---|---|---:|---|
| `R1-S01` | `r1-s01-model-client-servidor-stack` | `R1M1` | `25%` | Model client/servidor, backend i decisió tècnica inicial orientativa. |
| `R1-S02` | `r1-s02-entorn-executable` | `R1M2` | `75%` | Entorn executable amb Docker, PHP i servidor web, landing inicial servida pel backend, documentació, verificació i defensa breu. |

Guies d'avaluació:

- [R1M1. Guia d'avaluació](../03_com_s_avalua/rubriques/r1m1.md)
- [R1M2. Guia d'avaluació](../03_com_s_avalua/rubriques/r1m2.md)

Guies de suport: [Repte 1](../04_materials/repte_01/index.md).

Taller d'arrancada del curs: [MT19. IA responsable aplicada al repte](../recursos/Tallers/MT19-IA-responsable-aplicada-al-repte.pdf). Este taller no és un microrepte amb nota pròpia: servix per fixar com usar, registrar i verificar l'ajuda de la IA abans de començar el treball tècnic.

## Tallers relacionats amb els microreptes

| Microrepte | Taller relacionat | Quan encaixa |
|---|---|---|
| `R1M1` | [MT01. Projecte no CRUD](../recursos/Tallers/MT01-Projecte-no-CRUD.pdf) | Abans de tancar la fitxa inicial i la decisió de stack. |
| `R1M2` | [MT02. README executable i commit defensable](../recursos/Tallers/MT02-README-executable-i-commit-defensable.pdf) | Abans de donar per bona l'arrancada, la documentació i el primer commit defensable. |

### R1M1. Model d'execució client/servidor i decisió tècnica inicial

**Objectiu**

Entendre què s’executa en client i què s’executa en servidor, i proposar una primera decisió tècnica inicial amb criteri.

**Teoria relacionada**: [Backend, client-servidor i arquitectura web](../recursos/Teoria/Teoria-R1-Backend-client-servidor-i-arquitectura-web.pdf).

**Què has de fer**

Has de completar una [fitxa breu d’exploració tècnica inicial](../04_materials/fitxa_exploracio_tecnica_inicial.md) i justificar quina base tècnica proposes per començar el projecte.

Esta decisió és **orientativa**. En `R1M1` no estàs triant definitivament el framework del curs. En `R1M2`, amb la teoria de stack servidor i entorn executable, hauràs de confirmar o ajustar eixa decisió i convertir-la en una base que arranque.

També has de deixar preparat el repositori de treball del curs:

- acceptar l'enllaç de GitHub Classroom que done el professorat;
- clonar el teu repositori individual;
- localitzar `README.md`, `ENTREGA.md`, `docs/` i `evidence/`;
- actualitzar `README.md` amb el microrepte actual, el projecte base triat, el primer flux client/servidor i la decisió tècnica inicial;
- guardar la fitxa o evidència equivalent de `R1M1` dins de `docs/`;
- fer un primer commit i `push` a GitHub abans d'acabar la sessió.

Esta exploració es pot fer amb ajuda d’IA.

No busca una comparativa exhaustiva ni un informe llarg. Busca sobretot comprensió inicial, criteri tècnic i capacitat d’explicar amb què començaries i quins dubtes tècnics tens oberts.

No cal adjuntar captures de totes les converses amb IA.

En este microrepte no es tracta encara d’instal·lar el framework complet, sinó de:

- Entendre el paper del navegador.
- Entendre el paper del servidor web.
- Entendre el paper del codi de servidor.
- Identificar tecnologies de client i de servidor.
- Explorar de manera breu possibles stacks o frameworks sense convertir-ho en una instal·lació.
- Comparar de manera inicial exemples com `Laravel`, `Symfony` i `NestJS`.
- Proposar amb quina base tècnica inicial arrancarà el projecte en `R1M2`.
- Indicar què queda ajornat fins a `R3` si parles d'un framework complet.

### R1M2. Entorn executable, landing inicial i tancament de R1

**Objectiu**

Deixar el projecte preparat perquè es puga arrancar de manera clara, reproduïble i usable, i perquè ja tinga una primera entrada visible del producte servida pel backend.

**Teoria relacionada**: [Stack servidor i entorn executable](../recursos/Teoria/Teoria-R1-Stack-servidor-i-entorn-executable.pdf).

**Què has de fer**

Has de muntar i tancar una base inicial amb:

- Docker o equivalent.
- PHP.
- Servidor web.
- Base de dades i phpMyAdmin quan el model docent ho demane.
- Estructura mínima del projecte.
- Una landing inicial del projecte, servida pel backend, amb contingut propi i CSS senzill.
- Una ruta tècnica de comprovació, com `/health`, si t'ajuda a demostrar que l'entorn respon.
- `README.md` amb instruccions d'arrancada, parada i comprovació.
- Documentació del repte dins del repositori.

En este microrepte encara **no es demana la instal·lació completa del framework**.

La prioritat és tindre una base comuna i controlada sobre la qual després es puga continuar construint en `R2`.

Un `healthcheck` és útil com a comprovació tècnica, però no és suficient com a entrega principal de `R1M2`. La part visible del producte ha de ser una landing inicial o vista equivalent, encara que siga estàtica en contingut, sempre que estiga servida pel backend i puga explicar-se.

## Presentació i entrega

Per preparar l'entrega, la demo i la defensa breu, usa la [guia de presentació dels reptes](guia_presentacio.md#repte-1).

## Ús de la IA en este repte

La IA et pot ajudar, per exemple, a:

- Explorar opcions tècniques.
- Preparar un primer esquelet.
- Proposar fitxers de Docker.
- Generar o millorar una landing inicial amb HTML i CSS.
- Revisar `README.md` i les instruccions de reproducció.
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
- `README.md` que no permet arrancar el projecte.
- Només un `healthcheck` sense landing inicial del producte.
- Landing copiada o desconnectada del producte.
- Codi que no es pot explicar.

## Decisió metodològica important d’este repte

En el **Repte 1** no es demana encara la instal·lació completa d’un framework.

La prioritat és disposar d’un entorn executable en **Docker + PHP + servidor web** i construir una primera landing inicial servida pel backend.

La decisió sobre el framework pot aparéixer com a exploració inicial o orientació tècnica dins de la fitxa breu de `R1M1`, però la seua incorporació efectiva es reserva per a fases posteriors del curs. En `R1M2` confirmes o ajustes la base tècnica perquè l'entorn arranque.

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

La landing inicial del producte forma part del nucli de `R1M2`. Per optar a la franja `9→10`, la millora ha d'anar més enllà:

- Una pàgina `Sobre nosaltres` o `Sobre el projecte`, també servida pel backend.
- Navegació mínima entre les dos pàgines.
- Contingut adaptat al producte concret, no text genèric ni plantilla sense personalitzar.
- Millora visible de la landing inicial: estructura més clara, CSS més cuidat o estat inicial del producte millor explicat.
- Evidència que les pàgines es poden executar seguint `README.md` o les instruccions documentades.

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
