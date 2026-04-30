# Enunciats operatius dels microreptes de R3

## MP1. Arrencada del nou projecte

### Objectiu

Deixar arrancat el projecte en framework amb Docker, configuració mínima, primera ruta verificable i una justificació curta de la tria tècnica.

### Tasques concretes

- Tria `Laravel`, `Symfony` o `NestJS`.
- Compara l'opció triada amb almenys una altra alternativa possible.
- Explica un avantatge clar de separar presentació i lògica amb el framework triat.
- Fes un esquema curt abans/després entre la base de `R2` i la nova estructura.
- Crea o inicialitza el projecte base.
- Prepara Docker i els serveis necessaris.
- Crea `.env.example` o documenta les variables mínimes.
- Defineix una ruta inicial o `healthcheck`.
- Declara quins `2` casos d'ús faràs en `R3`.
- Indica quin cas d'ús ve de `R2`.
- Indica quin cas d'ús serà server-rendered amb vista o plantilla.

### Producte esperat

Un projecte en framework que arranca i que ja té una ruta mínima visible.

### Evidències

- Docker funcional.
- Projecte arrancable.
- Nota comparativa curta de framework.
- Esquema abans/després de responsabilitats.
- Justificació breu dels avantatges de separar presentació i lògica.
- `.env.example` o instruccions.
- Ruta mínima.
- Primera resposta generada pel framework, encara que siga una vista mínima.
- Issue o llista de tasques de `R3`.
- Llista dels `2` casos d'ús.

### Criteris de qualitat

- Una altra persona pot arrancar el projecte.
- El framework no és només una carpeta buida.
- La tria del framework està justificada amb un avantatge concret, no amb frases genèriques.
- L'esquema abans/després mostra millor separació de ruta, controlador, vista o resposta i model.
- L'abast de `R3` està clar i no diu "migrar tot".

### Errors habituals

- Instal·lar el framework però no poder arrancar-lo.
- No documentar variables d'entorn.
- No decidir els `2` casos d'ús.
- Dir "Laravel/Symfony/NestJS és millor" sense explicar per què ajuda a separar responsabilitats.
- Fer una comparativa llarga però inútil per al projecte.
- Triar com a objectiu "tota l'aplicació".

### IA

Pots demanar a la IA:

- ajuda amb errors d'arrencada
- una proposta de `compose.yaml`
- una llista de passos per crear el projecte base
- una comparació ràpida entre convencions de `Laravel`, `Symfony` i `NestJS`
- preguntes per revisar avantatges de separar presentació i lògica

No pots delegar:

- la tria de l'stack sense entendre-la
- la justificació de per què l'stack triat ajuda al teu projecte
- l'esquema abans/després
- la comprovació real que arranca
- la decisió dels casos d'ús

## MP2. Persistència mínima amb migrations i seeders

### Objectiu

Crear una BBDD real, definir l'esquema mínim, carregar dades inicials reproduïbles i usar un conjunt de dades recuperat dins d'un flux funcional.

### Tasques concretes

- Configura connexió a BBDD.
- Defineix les taules, entitats o esquemes mínims.
- Crea `migrations`.
- Executa les migracions.
- Crea `seeders`, fixtures o script equivalent.
- Carrega dades de prova.
- Fes una primera lectura real de dades.
- Recupera un conjunt de dades real des de la BBDD.
- Prepara eixe conjunt de dades perquè alimente una vista, llistat, filtre, detall o resposta.
- Demostra que la informació recuperada arriba al flux funcional.

### Producte esperat

BBDD reconstruïble des de zero amb dades inicials útils i un conjunt de dades real usat en un flux.

### Evidències

- Fitxers de migració.
- Fitxers de seeder, fixtures o script equivalent.
- Comanda o instrucció per crear BBDD.
- Comanda o instrucció per carregar dades.
- Captura, log o demo de lectura real.
- Consulta o recuperació que retorne un conjunt de dades.
- Ús d'eixe conjunt de dades en un llistat, filtre, detall o resposta.
- Prova que les dades recuperades arriben al flux.

### Criteris de qualitat

- Les dades no es carreguen a mà.
- Les taules tenen relació amb els casos d'ús.
- Es pot reiniciar BBDD i recuperar dades de demo.
- El conjunt de dades recuperat té estructura clara i no és una consulta solta sense ús.
- Les dades alimenten una vista, resposta o flux funcional.

### Errors habituals

- Crear taules que no s'usen.
- Fer un model de dades massa gran.
- Usar arrays en lloc de BBDD.
- No documentar com executar migracions i seeders.
- Fer una lectura de prova que no arriba a cap flux.
- Recuperar dades però no tractar-les de manera estructurada.

### IA

Pots demanar a la IA:

- proposta de camps per a una entitat
- ajuda per escriure una migració
- exemples de seeders o fixtures
- explicació d'un error de connexió
- exemples de consulta per llistar o filtrar dades

No pots delegar:

- decidir quines dades necessita el teu domini
- validar que la BBDD es crea de zero
- comprovar que els seeders carreguen dades reals
- demostrar que el conjunt de dades alimenta un flux funcional

## MP3. Primer cas d'ús complet

### Objectiu

Migrar o reconstruir en el framework un cas d'ús real que vinga de `R2`.

### Tasques concretes

- Identifica el flux de `R2` que migraràs.
- Crea ruta.
- Crea controlador o equivalent.
- Usa model, servei o capa de dades.
- Crea vista, plantilla o resposta.
- Passa dades del controlador a una vista o plantilla si aquest serà el flux server-rendered.
- Genera una resposta `HTML` en servidor en almenys un cas d'ús de `R3`.
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
- Si és el flux server-rendered, pàgina `HTML` generada pel servidor amb dades reals.
- Dades reals de BBDD.
- Prova del cas positiu.
- Error controlat.

### Criteris de qualitat

- El flux ve de `R2`.
- No és una pantalla estàtica.
- La BBDD participa en el flux.
- Almenys aquest flux o un altre de `R3` és server-rendered.
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
- Fes que el contingut generat canvie segons dades, paràmetres, estat, filtre o formulari.
- Afig validació o error mínim.
- Prova el recorregut complet.

### Producte esperat

Un segon flux funcional. Pot ser xicotet, però ha de tindre valor real.

### Evidències

- Descripció del segon flux.
- Justificació de per què és útil.
- Ruta i controlador o equivalents.
- Interacció amb BBDD.
- Canvi dinàmic visible en la resposta generada.
- Vista o plantilla si aquest és el flux triat com a server-rendered.
- Validació o error.
- Demo o prova.

### Criteris de qualitat

- No és només una vista nova.
- No és una còpia del primer flux canviant noms.
- Aprofita estructura del framework.
- El canvi és funcional i modifica la resposta segons dades o interacció real.
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
