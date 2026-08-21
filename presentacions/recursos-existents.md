# Recursos existents generats amb Gamma

## Finalitat

Este inventari recull els PDF ja publicats en `docs/recursos/` que poden servir com a base per crear o revisar prompts de Gamma.

Els PDF no es dupliquen en este directori. Es referencien per decidir:

- quines presentacions ja existixen;
- quines es poden reutilitzar;
- quines cal separar en presentació de repte, microrepte o teoria;
- quines cal actualitzar quan canvien els reptes, microreptes o criteris.

## Presentacio inicial del curs

PDF actual localitzat en `presentacions/presentacio/`:

| Fitxer | Ús probable | Estat |
|---|---|---|
| `Benvinguda-al-curs.pdf` | Presentacio inicial del curs | Versio refosa dels materials antics. Revisar abans de publicar en `docs/recursos/` si es vol fer visible a l'alumnat. |

PDF antics substituits per la versio refosa:

| Fitxer | Ús probable | Estat |
|---|---|---|
| `Com-funciona-el-curs.pdf` | Base antiga sobre organitzacio general del curs | Substituit per `Benvinguda-al-curs.pdf` |
| `Que-es-valorara-al-llarg-del-curs.pdf` | Base antiga sobre criteris generals d'avaluacio | Substituit per `Benvinguda-al-curs.pdf` |
| `Com-treballarem-parelles-trios-i-stacks.pdf` | Base antiga sobre cooperacio, autoria i itineraris tecnologics | Substituit per `Benvinguda-al-curs.pdf` |
| `Tres-possibles-projectes-del-curs.pdf` | Base antiga sobre projectes base | Substituit per `Benvinguda-al-curs.pdf` |

Criteri actual: estos quatre PDF no han de tornar com a quatre accessos separats per a l'alumnat. La referencia de treball és una presentacio inicial unica, alineada amb `presentacions/reptes/curs.md`, que explique el funcionament del curs sense duplicar la documentacio principal.

## Repte 1

Directori publicat:

```text
docs/recursos/Repte1/
```

Abans del Repte 1 hi ha una presentació general del curs generada en `presentacions/presentacio/Benvinguda-al-curs.pdf`. El brief intern de referència és:

| Fitxer | Ús probable | Observacions |
|---|---|---|
| `presentacions/reptes/curs.md` | Presentació inicial del curs | Ha d'explicar model per reptes, avaluacions, evidències, IA, primer mapa del producte i checkpoint inicial abans de `R1M1`. |

PDF localitzats:

| Fitxer | Ús probable | Observacions |
|---|---|---|
| `Repte-1-Kickoff-Professional-del-Backend.pdf` | Presentació de repte | Base per a `presentacions/reptes/r1.md`. |
| `Repte-1-Criteris-dAvaluacio-i-Evidencies.pdf` | Presentació de criteris i evidències | Pot alimentar rúbriques, checklist i diapositiva final de tancament de `R1`. |
| `Client-Servidor.pdf` | Teoria de suport | Coneixement previ per a `R1M1`: model client/servidor. |
| `Que-es-el-backend.pdf` | Teoria de suport | Coneixement previ per a entendre el valor del backend. |
| `Arquitectura-web-basica.pdf` | Teoria de suport | Coneixement previ sobre peces d'una aplicació web. |
| `Llenguatges-frameworks-i-full-stack.pdf` | Teoria de suport | Suport per a triar o justificar stack. |
| `Entorn-executable-servidor-i-Docker.pdf` | Teoria de suport | Suport per a entorn executable. |
| `Muntar-lentorn-executable.pdf` | Microrepte o guia pràctica | Pot alimentar una presentació de sessió sobre entorn executable. |

## Lectura per a Gamma

Per al Repte 1, els PDF existents suggereixen esta separació:

- Presentació de repte:
  - kickoff professional del backend;
  - criteris d'avaluació i evidències.
- Presentacions de microrepte:
  - `R1M1`: model client/servidor i elecció guiada de stack;
  - `R1M2`: entorn executable, primer punt d'entrada, tancament, verificació i evidències de pas a `R2`.
- Presentacions teòriques:
  - client-servidor;
  - què és el backend;
  - arquitectura web bàsica;
  - llenguatges, frameworks i full stack;
  - entorn executable, servidor i Docker.

## Criteri d'actualització

Quan es regenere una presentació amb Gamma:

- revisar abans la versió PDF existent;
- comprovar si el nom i abast continuen alineats amb els microreptes actuals;
- evitar duplicar una presentació que ja cobrix el mateix objectiu;
- crear un prompt nou només si el PDF existent no reflectix la seqüència actual.

## Repte 2

Encara no hi ha PDFs publicats localitzats en `docs/recursos/Repte2/`.

Briefs interns creats per preparar les presentacions de la seqüència actual:

| Fitxer | Ús probable | Observacions |
|---|---|---|
| `presentacions/reptes/r2.md` | Presentació de repte | Visió general de processament, reintent, guardat funcional, estat i autenticació. |
| `presentacions/microreptes/r2m1.md` | Presentació de microrepte | Entrada variada i validació bàsica de servidor. |
| `presentacions/microreptes/r2m2.md` | Presentació de microrepte | Processament, reintent i guardat funcional. |
| `presentacions/microreptes/r2m3.md` | Presentació de microrepte | Lògica del flux i regles del projecte. |
| `presentacions/microreptes/r2m4.md` | Presentació de microrepte | Estat, sessió i cookies. |
| `presentacions/microreptes/r2m5.md` | Presentació de microrepte | Autenticació i funcionalitat protegida. |
| `presentacions/microreptes/r2m6.md` | Presentació de microrepte | Mini API d'autenticació per a client. |
| `presentacions/microreptes/r2m7.md` | Presentació de microrepte | Proves, depuració i checkpoint tècnic. |
| `presentacions/microreptes/r2m8.md` | Presentació de microrepte | Primera peça testable amb POO i Composer. |
| `presentacions/microreptes/r2m9.md` | Presentació de microrepte | Persistència mínima amb BBDD en PHP. |
| `presentacions/reptes/r3.md` | Presentació de repte | Visió general de reconstrucció en framework, persistència real i dos fluxos. |
| `presentacions/microreptes/r3m1.md` | Presentació de microrepte | Arrencada del nou projecte en framework. |
| `presentacions/microreptes/r3m2.md` | Presentació de microrepte | Persistència mínima amb migracions o equivalent i dades inicials reproduïbles. |
| `presentacions/microreptes/r3m3.md` | Presentació de microrepte | Primer cas d'ús complet heretat de `R2`. |
| `presentacions/microreptes/r3m4.md` | Presentació de microrepte | Segon cas d'ús o ampliació funcional. |
| `presentacions/microreptes/r3m5.md` | Presentació de microrepte | Autenticació, autorització i middleware. |
| `presentacions/microreptes/r3m6.md` | Presentació de microrepte | Qualitat i estabilització. |
| `presentacions/microreptes/r3m7.md` | Presentació de microrepte | Tancament tècnic i pas cap a `R4`. |
| `presentacions/reptes/r4.md` | Presentació de repte | Visió general d'API, contracte, consum i documentació. |
| `presentacions/microreptes/r4m1.md` | Presentació de microrepte | Contracte inicial del servei API. |
| `presentacions/microreptes/r4m2.md` | Presentació de microrepte | Primer endpoint funcional. |
| `presentacions/microreptes/r4m3.md` | Presentació de microrepte | Protecció de l'API. |
| `presentacions/microreptes/r4m4.md` | Presentació de microrepte | Consum real del servei. |
| `presentacions/microreptes/r4m5.md` | Presentació de microrepte | Documentació i prova del servei. |
| `presentacions/reptes/r5.md` | Presentació de repte | Visió general d'integració híbrida, font externa, mapping, proves i defensa. |
| `presentacions/microreptes/r5m1.md` | Presentació de microrepte | Selecció de font externa i disseny de la integració. |
| `presentacions/microreptes/r5m2.md` | Presentació de microrepte | Connexió amb la font externa i recuperació real. |
| `presentacions/microreptes/r5m3.md` | Presentació de microrepte | Transformació, mapping i valor afegit. |
| `presentacions/microreptes/r5m4.md` | Presentació de microrepte | Funcionalitat híbrida integrada en el producte. |
| `presentacions/microreptes/r5m5.md` | Presentació de microrepte | Prova, documentació i defensa de la integració. |
| `presentacions/tallers/r2s10-contracte-auth-dwec.md` | Presentació de taller | Contracte d'autenticació perquè DWEC puga consumir la mini API de `R2M6`. |
| `presentacions/tallers/r3s2b-portabilitat-frameworks.md` | Presentació de taller | Portabilitat entre `Laravel`, `Symfony` i `NestJS` abans del primer flux complet de `R3`. |
| `presentacions/teoria/r2-formularis-validacio-servidor.md` | Teoria de suport | Coneixement previ per a `R2M1`. |
| `presentacions/teoria/r2-php-html-base.md` | Teoria de suport | Introducció prèvia de `R2S0` a `PHP`, execució al servidor i barreja controlada `HTML/PHP`. |
| `presentacions/teoria/r2-reintent-guardat-funcional.md` | Teoria de suport | Coneixement previ per a `R2M2`. |
| `presentacions/teoria/r2-logica-regles-arrays-funcions.md` | Teoria de suport | Coneixement previ per a `R2M3`. |
| `presentacions/teoria/r2-estat-sessio-cookies.md` | Teoria de suport | Coneixement previ per a `R2M4`. |
| `presentacions/teoria/r2-auth-operacio-protegida.md` | Teoria de suport | Coneixement previ per a `R2M5`. |
| `presentacions/teoria/r2-mini-api-auth-json.md` | Teoria de suport | JSON, codis HTTP i autenticació mínima consumible per a `R2M6`. |
| `presentacions/teoria/r2-proves-debug-checkpoint.md` | Teoria de suport | Coneixement previ per a `R2M7`. |
| `presentacions/teoria/r2-poo-composer-proves-unitaries.md` | Teoria de suport | POO, Composer i proves unitàries per a `R2M8`. |
| `presentacions/teoria/r2-bbdd-php-pdo.md` | Teoria de suport | BBDD en PHP amb PDO, connexió, consultes preparades i persistència mínima per a `R2M9`. |
| `presentacions/teoria/r3-framework-mvc-responsabilitats.md` | Teoria de suport | Framework, MVC o equivalent i separació de responsabilitats per a `R3M1`. |
| `presentacions/teoria/r3-docker-env-arrencada.md` | Teoria de suport | Docker, `.env.example` i arrencada reproduïble per a `R3M1`. |
| `presentacions/teoria/r3-persistencia-migrations-seeders.md` | Teoria de suport | BBDD real, migracions o equivalent i dades inicials reproduïbles per a `R3M2`. |
| `presentacions/teoria/r3-rutes-controladors-vistes-flux.md` | Teoria de suport | Rutes, controladors, vistes/respostes i flux end-to-end per a `R3M3-R3M4`. |
| `presentacions/teoria/r3-auth-autoritzacio-middleware.md` | Teoria de suport | Autenticació, autorització, middleware/guards/voters/policies i cas denegat per a `R3M5`. |
| `presentacions/teoria/r3-qualitat-proves-tancament.md` | Teoria de suport | Qualitat, proves, README i tancament tècnic per a `R3M6-R3M7`. |
| `presentacions/teoria/r4-contracte-api-http.md` | Teoria de suport | Contracte d'API, HTTP, request/response, codis i errors. |
| `presentacions/teoria/r4-proteccio-consum-documentacio-api.md` | Teoria de suport | Protecció, consum, documentació i proves d'API. |
| `presentacions/teoria/r5-integracio-externa-flux-hibrid.md` | Teoria de suport | Font externa, contracte, flux híbrid, connector i error. |
| `presentacions/teoria/r5-mapping-proves-defensa-integracio.md` | Teoria de suport | Mapping, transformació, integració en producte, proves i defensa. |
