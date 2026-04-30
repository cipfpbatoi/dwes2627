# Enunciats operatius dels microreptes de R3

## MP1. Arrencada del nou projecte

### Objectiu

Deixar arrancat el projecte en framework amb Docker, configuració mínima i primera ruta verificable.

### Tasques concretes

- Tria `Laravel`, `Symfony` o `NestJS`.
- Crea o inicialitza el projecte base.
- Prepara Docker i els serveis necessaris.
- Crea `.env.example` o documenta les variables mínimes.
- Defineix una ruta inicial o `healthcheck`.
- Declara quins `2` casos d'ús faràs en `R3`.
- Indica quin cas d'ús ve de `R2`.

### Producte esperat

Un projecte en framework que arranca i que ja té una ruta mínima visible.

### Evidències

- Docker funcional.
- Projecte arrancable.
- `.env.example` o instruccions.
- Ruta mínima.
- Issue o llista de tasques de `R3`.
- Llista dels `2` casos d'ús.

### Criteris de qualitat

- Una altra persona pot arrancar el projecte.
- El framework no és només una carpeta buida.
- L'abast de `R3` està clar i no diu "migrar tot".

### Errors habituals

- Instal·lar el framework però no poder arrancar-lo.
- No documentar variables d'entorn.
- No decidir els `2` casos d'ús.
- Triar com a objectiu "tota l'aplicació".

### IA

Pots demanar a la IA:

- ajuda amb errors d'arrencada
- una proposta de `compose.yaml`
- una llista de passos per crear el projecte base
- una comparació ràpida entre convencions de `Laravel`, `Symfony` i `NestJS`

No pots delegar:

- la tria de l'stack sense entendre-la
- la comprovació real que arranca
- la decisió dels casos d'ús

## MP2. Persistència mínima amb migrations i seeders

### Objectiu

Crear una BBDD real, definir l'esquema mínim i carregar dades inicials reproduïbles.

### Tasques concretes

- Configura connexió a BBDD.
- Defineix les taules, entitats o esquemes mínims.
- Crea `migrations`.
- Executa les migracions.
- Crea `seeders`, fixtures o script equivalent.
- Carrega dades de prova.
- Fes una primera lectura real de dades.

### Producte esperat

BBDD reconstruïble des de zero amb dades inicials útils per als fluxos.

### Evidències

- Fitxers de migració.
- Fitxers de seeder, fixtures o script equivalent.
- Comanda o instrucció per crear BBDD.
- Comanda o instrucció per carregar dades.
- Captura, log o demo de lectura real.

### Criteris de qualitat

- Les dades no es carreguen a mà.
- Les taules tenen relació amb els casos d'ús.
- Es pot reiniciar BBDD i recuperar dades de demo.

### Errors habituals

- Crear taules que no s'usen.
- Fer un model de dades massa gran.
- Usar arrays en lloc de BBDD.
- No documentar com executar migracions i seeders.

### IA

Pots demanar a la IA:

- proposta de camps per a una entitat
- ajuda per escriure una migració
- exemples de seeders o fixtures
- explicació d'un error de connexió

No pots delegar:

- decidir quines dades necessita el teu domini
- validar que la BBDD es crea de zero
- comprovar que els seeders carreguen dades reals

## MP3. Primer cas d'ús complet

### Objectiu

Migrar o reconstruir en el framework un cas d'ús real que vinga de `R2`.

### Tasques concretes

- Identifica el flux de `R2` que migraràs.
- Crea ruta.
- Crea controlador o equivalent.
- Usa model, servei o capa de dades.
- Crea vista, plantilla o resposta.
- Llig dades reals de BBDD.
- Afig validació mínima si hi ha entrada d'usuari.
- Controla almenys un error.
- Prova el cas positiu.

### Producte esperat

Un flux end-to-end heretat de `R2` funcionant en el framework.

### Evidències

- Ruta funcional.
- Controlador o equivalent.
- Model, servei o capa de dades.
- Vista, plantilla o resposta.
- Dades reals de BBDD.
- Prova del cas positiu.
- Error controlat.

### Criteris de qualitat

- El flux ve de `R2`.
- No és una pantalla estàtica.
- La BBDD participa en el flux.
- Les responsabilitats no estan totes dins del controlador.

### Errors habituals

- Dir que és migració però fer una funcionalitat nova sense relació.
- Posar tota la lògica en una ruta.
- Mostrar dades falses.
- No provar cap error.

### IA

Pots demanar a la IA:

- esquelet de ruta i controlador
- ajuda per separar controlador i servei
- idees de validació mínima
- proposta de prova del flux

No pots delegar:

- demostrar que el flux ve de `R2`
- entendre el recorregut de la petició
- comprovar que usa BBDD real

## MP4. Segon cas d'ús o ampliació funcional

### Objectiu

Afegir un segon flux end-to-end que demostre que la base en framework pot créixer.

### Tasques concretes

- Decideix si el segon flux és migrat o ampliació.
- Implementa ruta.
- Implementa controlador o equivalent.
- Usa BBDD real.
- Afig validació o error mínim.
- Prova el recorregut complet.

### Producte esperat

Un segon flux funcional. Pot ser xicotet, però ha de tindre valor real.

### Evidències

- Descripció del segon flux.
- Justificació de per què és útil.
- Ruta i controlador o equivalents.
- Interacció amb BBDD.
- Validació o error.
- Demo o prova.

### Criteris de qualitat

- No és només una vista nova.
- No és una còpia del primer flux canviant noms.
- Aprofita estructura del framework.
- No trenca el primer flux.

### Errors habituals

- Fer un canvi visual i presentar-lo com a funcionalitat.
- Obrir una funcionalitat massa gran.
- Duplicar codi sense criteri.
- No comprovar que el primer flux continua funcionant.

### IA

Pots demanar a la IA:

- idees de segon flux xicotet
- ajuda per reaprofitar estructura
- casos de prova
- millora de missatges d'error

No pots delegar:

- justificar el valor funcional
- decidir l'abast
- comprovar els dos fluxos en execució real

## MP5. Qualitat i estabilització

### Objectiu

Fer que el projecte no siga només una demo: ha de tindre validació, errors, proves mínimes i estructura revisada.

### Tasques concretes

- Revisa rutes, controladors, serveis i models.
- Lleva duplicacions evidents.
- Evita controladors massa carregats.
- Completa validacions mínimes.
- Controla errors bàsics.
- Afig proves mínimes o checklist executable.
- Torna a provar migracions i seeders.
- Torna a provar els `2` fluxos.

### Producte esperat

Una base estable, reproduïble i defensable.

### Evidències

- Proves o verificacions registrades.
- Cas positiu i cas negatiu.
- Errors controlats.
- Revisió de responsabilitats.
- Migracions i seeders comprovats.

### Criteris de qualitat

- Els dos fluxos funcionen després de la neteja.
- Les validacions són visibles.
- Els errors no trenquen l'aplicació sense resposta.
- Les proves es poden repetir.

### Errors habituals

- Provar només el cas feliç.
- No repetir seeders després de canvis.
- Fer refactorització i trencar un flux.
- Escriure proves que no s'executen.

### IA

Pots demanar a la IA:

- idees de casos de prova
- detecció de duplicació
- proposta de refactorització xicoteta
- explicació d'errors

No pots delegar:

- executar proves
- decidir si una refactorització és segura
- comprovar que no has trencat res

## MP6. Tancament tècnic

### Objectiu

Deixar el projecte documentat perquè una altra persona puga arrancar-lo, provar-lo i entendre què queda pendent.

### Tasques concretes

- Actualitza README.
- Explica com arrancar Docker.
- Explica `.env`.
- Explica com executar migracions.
- Explica com carregar seeders.
- Descriu els `2` casos d'ús.
- Explica com provar-los.
- Registra decisions tècniques.
- Deixa backlog o mapa del que queda per migrar de `R2`.

### Producte esperat

Projecte tancat per a revisió i preparat per entrar en `R4`.

### Evidències

- README usable.
- Instruccions d'arrencada.
- Instruccions de BBDD.
- Demo final.
- Backlog de migració.
- Decisions tècniques breus.

### Criteris de qualitat

- El README coincideix amb el codi.
- Les instruccions funcionen.
- Queda clar què està fet i què no.
- Es pot identificar què podria publicar-se com a API en `R4`.

### Errors habituals

- README massa bonic però no executable.
- No explicar `.env`.
- Ocultar parts no migrades.
- No deixar clar com provar els fluxos.

### IA

Pots demanar a la IA:

- ordenar el README
- revisar que falten passos
- redactar decisions tècniques curtes
- preparar una checklist final

No pots delegar:

- comprovar que les instruccions funcionen
- inventar decisions que no has pres
- fer una documentació que no correspon al projecte real
