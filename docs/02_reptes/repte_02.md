# Repte 2. Processament, estat i funcionalitat protegida

## Finalitat del repte

Este repte servix per consolidar un flux complet de programació en servidor i fer que el projecte deixe de ser només una base funcional.

Ara el backend ja no ha de limitar-se a rebre una petició i respondre. Ha de ser capaç de:

- Recollir dades útils del projecte.
- Validar-les en servidor i mostrar errors clars.
- Permetre correcció i reintent.
- Processar la informació amb lògica bàsica.
- Conservar la informació correcta perquè després es puga reutilitzar.
- Mantindre estat quan faça falta.
- Autenticar usuaris i gestionar sessions quan toque.
- Protegir una primera funcionalitat del projecte.

## Context professional

L’equip ja té una base executable del producte després del `Repte 1`.

Ara toca fer un pas més seriós: convertir eixa base en una funcionalitat real de producte, amb entrada de dades, comportament coherent de servidor, conservació d’informació útil i control d’accés.

En un entorn professional, este és el moment en què el sistema deixa de ser només una prova tècnica i comença a gestionar informació que després torna a aparéixer dins del mateix producte.

## Què has de construir

En este repte has de fer evolucionar el projecte fins a deixar, com a mínim:

- Un formulari o una entrada de dades real vinculada al projecte triat.
- Recollida de dades, validació, errors visibles i possibilitat de correcció.
- Recuperació i tractament de la informació en servidor.
- Processament real de la petició amb lògica bàsica.
- Conservació o persistència funcional de la informació correcta.
- Reutilització posterior d’eixa informació dins del projecte.
- Si el flux ho demana, tractament d’imatge o fitxer amb control bàsic de tipus i grandària.
- Evidència de manteniment d’estat o sessió.
- Autenticació funcional.
- Una operació real del projecte protegida i lligada al domini triat.
- Un cas positiu i un cas negatiu.
- Prova mínima i documentació bàsica del flux.

## Producte mínim esperat

Al final del repte hauries de poder mostrar un recorregut complet com este:

- L’usuari inicia una acció útil del projecte base.
- El sistema recull les dades i les valida en servidor.
- Si hi ha error, el sistema el mostra de manera clara.
- L’usuari pot corregir i tornar a provar.
- El servidor processa la petició correcta.
- Si hi ha una imatge o un fitxer, el sistema en valida tipus i grandària abans d’acceptar-lo.
- La informació correcta queda conservada en un mecanisme controlat.
- El projecte pot recuperar o reutilitzar eixa informació més avant.
- El sistema aplica una regla o una decisió.
- Es manté estat quan és necessari.
- El sistema comprova si l’acció està permesa.
- Una funcionalitat del producte queda protegida.
- Es pot demostrar què passa en el cas correcte i en el cas denegat.

No cal que siga un producte gran. Sí que cal que siga un flux complet, explicable i verificable.

Per tant, el formulari no compta com a repte complet si només envia dades i torna un missatge genèric. Ha d’estar integrat en una funcionalitat real del projecte, amb tractament, conservació i reutilització posterior.

## Persistència funcional de suport

En este repte, la informació que entra per formulari o per una entrada equivalent ha de poder-se guardar d’alguna manera útil perquè el projecte la torne a aprofitar després.

Això pot voler dir, per exemple:

- Mostrar productes d’una tenda.
- Recuperar usuaris.
- Tornar a mostrar activitats o reserves.
- Tornar a carregar recursos, publicacions, fitxers o imatges creades.
- Llistar elements que formen part del projecte.

Però esta conservació no convertix encara el `Repte 2` en un repte centrat en accés a dades o base de dades.

La prioritat continua sent:

- Tractament de dades.
- Lògica bàsica.
- Estat o sessió.
- Autenticació.
- Funcionalitat protegida.

La persistència ací és funcional i de suport. Servix perquè el flux tinga sentit i no es quede en una demo efímera.

## Com es pot resoldre la conservació de dades

La persistència d’este repte es pot resoldre preferentment amb un mecanisme simple i controlat, sempre que siga coherent amb el projecte.

Per exemple, es pot treballar amb:

- Persistència estructurada senzilla.
- Estat o emmagatzematge controlat.
- Mecanismes simples de conservació dins del backend.
- Base de dades, només si el professorat ho establix o si el projecte realment ho demana.

En `R2` no es valora principalment la sofisticació de la persistència. El que es valora és que el flux complet funcione, que la informació correcta no es perda sense sentit i que la funcionalitat protegida es puga demostrar de punta a punta.

La base de dades pot aparéixer, però no constituïx encara el focus principal del repte.

## Què no és suficient

En este repte no n’hi ha prou amb:

- Fer només registre, `login` i `logout`.
- Protegir una ruta decorativa o sense valor dins del projecte.
- Confondre estat, autenticació, autorització i persistència.
- Validar només el cas feliç.
- Quedar-se en “formulari + validació + missatge d’error” sense obrir una funcionalitat del producte.
- Guardar dades de manera aparent si després no es poden reutilitzar.
- Muntar una base de dades com a reclam tècnic mentre el flux principal continua dèbil.
- Portar una demo que funciona una vegada però no es pot explicar ni reproduir.

## Relació amb el projecte base

La funcionalitat protegida ha d’estar lligada al projecte que ja vas definir al `Repte 1`.

No es considera suficient construir un formulari genèric desconnectat del domini. El que compta és que el flux servisca per crear, modificar, reservar, publicar, pujar, recuperar o gestionar alguna cosa que tinga sentit dins del teu producte.

La pregunta útil no és només “quin formulari faré?”, sinó “quina acció real del meu projecte vull validar, processar, conservar i protegir en servidor?”.

## Exemples breus segons projecte base

- **Plataforma de productes**: alta o edició d’un producte amb nom, preu, categoria i imatge. Si falta un camp o la imatge no compleix tipus o grandària, el sistema ho ha de mostrar, permetre correcció i, quan la dada siga correcta, deixar el producte guardat per poder-lo tornar a mostrar en el catàleg o en una zona protegida.
- **Gestor de reserves o activitats**: creació d’una reserva o d’una activitat amb data, places i possibles dades adjuntes com un cartell o comprovant. El flux ha de validar dades, respondre amb errors clars si alguna cosa no és correcta i deixar l’activitat o la reserva disponible per recuperar-la o gestionar-la després.
- **Plataforma de recursos o publicacions**: alta d’un recurs, notícia o publicació amb títol, descripció i, quan toque, miniatura, imatge o document adjunt. El servidor ha de validar l’entrada, controlar el fitxer i permetre que la publicació o el recurs es puguen tornar a mostrar més avant dins del projecte.

## Microreptes del Repte 2

Per treballar bé este repte convé dividir-lo en sis peces clares. Això ajuda a no reduir-lo a un simple `login` i a entendre què s’està construint en cada fase.

### Microrepte 1. Formulari base, validació visible i primera conservació de dades

**Objectiu**

Construir un punt d’entrada de dades usable i demostrar que el sistema rep la informació correctament, valida el que toca, mostra feedback útil a l’usuari i no perd la informació correcta sense més.

**Què s’espera**

- Un formulari funcional o una entrada equivalent.
- Camps amb sentit dins del projecte base.
- Recuperació real de les dades en servidor.
- Validació mínima al servidor.
- Visualització clara dels errors de validació.
- Possibilitat de corregir i tornar a enviar.
- Comentaris breus en el codi quan facen falta per entendre el flux.
- Conservació de la informació correcta en un mecanisme controlat.
- Primera prova que la dada es podrà reutilitzar després.

**Criteris d’avaluació que es treballen**

- **RA3.e**: Utilitzar formularis o mecanismes equivalents per interactuar amb l’usuari.
- **RA3.f**: Recuperar correctament les dades introduïdes.
- **RA3.g**: Deixar comentaris útils i claredat mínima en el codi perquè el flux es puga revisar.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Fer arribar dades reals al servidor.
- Explicar d’on ix cada dada i com es recupera.
- Relacionar els camps del formulari amb la resposta que genera el sistema.
- Mostrar què passa quan una dada no és vàlida.
- Permetre correcció i reintent dins del mateix flux.
- Explicar on queda la dada correcta i per què després es podrà tornar a usar.

**Evidències principals**

- Formulari funcional o entrada equivalent.
- Recuperació correcta de dades.
- Error de validació visible.
- Reintent amb correcció.
- Primera dada conservada de manera verificable.
- Commits associats.

**Com es comprovarà**

- Execució real del formulari o de l’entrada equivalent.
- Revisió del flux de dades, dels errors mostrats i del punt on la informació correcta queda guardada.
- Pregunta breu sobre com arriba la informació al servidor, com es valida i com es conserva.

### Microrepte 2. Processament bàsic de la petició, codi embegut i tractament d’imatge o fitxer

**Objectiu**

Fer visible el treball bàsic de programació en servidor que transforma les dades rebudes en comportament real, les deixa en un estat aprofitable per al projecte i tracta correctament els fitxers o imatges quan formen part del flux.

**Què s’espera**

- Comprensió bàsica de com la base comuna en `PHP` genera una pàgina o una resposta amb codi embegut o equivalent.
- Identificació clara de les peces tècniques associades al flux: petició, servidor, fitxer o plantilla i resposta.
- Inclusió recognoscible de codi de servidor dins del punt on es genera la resposta.
- Sintaxi correcta.
- Variables amb sentit.
- Operadors i sentències bàsiques ben aplicats.
- Tractament clar de la petició.
- Una resposta generada a partir de les dades rebudes.
- Un mecanisme simple i controlat per conservar la informació útil.
- Si hi ha imatge o fitxer en el flux, validació bàsica de tipus i grandària.
- Error interpretable si el fitxer no és correcte.
- Integració funcional del fitxer o la imatge dins del projecte.

**Criteris d’avaluació que es treballen**

- **RA2.a - RA2.b**: Entendre el mecanisme bàsic de generació de pàgines o respostes amb codi embegut sobre la base comuna en `PHP` i les tecnologies associades.
- **RA2.c**: Integrar codi de servidor dins del flux o de la resposta generada.
- **RA2.d - RA2.e**: Usar sintaxi i sentències simples amb correcció i amb efecte visible.
- **RA2.f - RA2.h**: Utilitzar directives, variables, operadors i àmbits de variables amb sentit funcional.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Explicar on s’executa el codi de servidor i com arriba el resultat al navegador o al client.
- Identificar quin paper té cada peça tècnica mínima del flux sobre la base comuna en `PHP`.
- Explicar què fa el codi quan arriben les dades.
- Demostrar que el tractament no és decoratiu.
- Relacionar les dades d’entrada amb la resposta final.
- Explicar quin mecanisme uses per guardar el que toca sense convertir el repte en un exercici d’arquitectura de dades.
- Explicar com controles una imatge o un fitxer incorrectes quan el teu flux els usa.

**Evidències principals**

- Tram recognoscible de codi embegut o equivalent dins de la resposta generada.
- Codi executable de processament.
- Evidència d’ús real de variables i operadors.
- Evidència d’alguna directiva o configuració bàsica aplicada amb sentit.
- Demo del tractament correcte.
- Demo d’una dada guardada de manera funcional.
- Demo d’un error de validació o de fitxer no vàlid quan corresponga.
- Commits o issues relacionades.

**Com es comprovarà**

- Execució del flux amb dades reals.
- Revisió del tram de codi que processa la petició, del punt on es conserva la informació i del control de fitxer o imatge quan existisca.
- Pregunta breu sobre com es genera la pàgina o resposta, i sobre variables, operadors o pas de dades.

### Microrepte 3. Decisions, arrays, funcions i reutilització del que ja has guardat

**Objectiu**

Aplicar lògica bàsica de programació per controlar el comportament del sistema segons les dades, les regles del projecte i la informació que ja ha quedat conservada.

**Què s’espera**

- Almenys una decisió significativa.
- Una repetició o un recorregut quan el flux ho necessite.
- Ús d’arrays o estructures equivalents quan faça falta.
- Una o més funcions útils.
- Reutilització posterior de la informació guardada.
- Lògica connectada al flux real del producte.

**Criteris d’avaluació que es treballen**

- **RA3.a - RA3.d**: Aplicar decisions, repeticions, estructures de dades i funcions dins d’un flux de servidor amb sentit.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Fer que el sistema no responga sempre igual.
- Organitzar millor el comportament amb estructures bàsiques.
- Justificar per què uses una funció, un array o una condició.
- Tornar a mostrar, llistar o recuperar allò que ja s’ha guardat dins del flux.

**Evidències principals**

- Cas de decisió observable o recorregut significatiu.
- Array o estructura equivalent usada amb sentit.
- Funció o funcions útils.
- Demo de reutilització de la informació correcta.
- Demo del comportament resultant.

**Com es comprovarà**

- Prova del flux amb més d’un cas.
- Revisió de la lògica aplicada i de com reapareix la informació guardada.
- Microcanvi en viu sobre una condició o una funció quan siga necessari.

### Microrepte 4. Estat, sessió, cookies i frontera amb la persistència

**Objectiu**

Demostrar que el sistema pot conservar informació rellevant entre interaccions, que entens què és estat i què no ho és, i que saps diferenciar-ho d’un mecanisme de persistència del projecte.

**Què s’espera**

- Un mecanisme d’estat real.
- Evidència de què es guarda en estat o sessió.
- Recuperació correcta de la informació guardada.
- Si hi ha informació guardada en client, prova de lectura i recuperació.
- Distinció clara entre estat temporal i dades que el projecte necessita reutilitzar després.
- Neteja o invalidació quan toque.

**Criteris d’avaluació que es treballen**

- **RA4.a - RA4.b**: Identificar i usar mecanismes de manteniment d’informació i d’estat per a un client concret.
- **RA4.c**: Emmagatzemar informació en client, recuperar-la i explicar quan convé usar-ho.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Explicar què guarda el sistema i per què.
- Distingir entre estat, sessió, cookies i altres mecanismes.
- Distingir què queda en client i què manté el servidor.
- Demostrar que el comportament canvia segons l’estat.
- Explicar per què una dada del domini pot necessitar un mecanisme diferent de la sessió si l’has de tornar a usar després.

**Evidències principals**

- Mecanisme d’estat implementat.
- Demo de recuperació de la informació.
- Si hi ha cookies o emmagatzematge en client, demo de lectura i recuperació.
- Demo de neteja o invalidació.
- Explicació clara de la frontera entre estat i persistència funcional.
- Commits associats.

**Com es comprovarà**

- Execució en directe del canvi d’estat.
- Pregunta breu sobre què es guarda, on, amb quina finalitat i si queda en client o en servidor.
- Contrast entre el que dius i el que realment passa al flux.

### Microrepte 5. Autenticació i primera funcionalitat protegida amb dades reutilitzables

**Objectiu**

Connectar tot el flux anterior amb una primera necessitat real del producte: una operació que només es pot executar si es complixen unes condicions d’accés i que té efecte sobre dades útils del projecte.

**Què s’espera**

- Autenticació real.
- Comprovació d’accés.
- Una operació del domini protegida i vinculada al projecte base.
- Dades creades, recuperades, publicades o gestionades dins d’eixa operació.
- Un cas autoritzat i un cas denegat.

**Criteris d’avaluació que es treballen**

- **RA4.d - RA4.e**: Implementar autenticació funcional i restringir una acció del sistema de manera real i verificable.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Diferenciar entre estar autenticat i estar autoritzat.
- Protegir una acció amb valor real dins del projecte, no un exemple genèric.
- Demostrar què passa quan l’acció està permesa i quan no ho està.
- Mostrar que la funcionalitat protegida treballa amb informació que després continua tenint sentit dins del producte.

**Evidències principals**

- Flux d’autenticació funcional.
- Operació protegida real i lligada al projecte base.
- Dada o conjunt de dades reutilitzables dins del projecte.
- Cas positiu.
- Cas negatiu.
- Evidència de la restricció aplicada.

**Com es comprovarà**

- Execució real del cas autoritzat.
- Execució real del cas denegat.
- Revisió de si la dada creada o recuperada forma part del flux protegit.
- Pregunta oral sobre en quin punt es bloqueja o es permet l’acció.

### Microrepte 6. Prova, depuració i revisió final del repte

**Objectiu**

Comprovar que el flux complet funciona, que els errors es poden observar, que les dades correctes continuen disponibles i que el repte queda prou net per continuar després.

**Què s’espera**

- Prova del cas correcte.
- Prova d’un cas d’error o denegació.
- Revisió d’errors i validacions.
- Comprovació que la informació guardada es pot recuperar o reutilitzar.
- Ús visible d’alguna eina o entorn simple de prova i depuració.
- Documentació mínima actualitzada.
- Preparació per al checkpoint o la defensa.

**Criteris d’avaluació que es treballen**

- **RA4.f**: Provar, depurar i documentar el comportament real del sistema.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Demostrar que el flux funciona de veritat.
- Detectar errors i explicar-los.
- Fer servir algun suport real de prova o depuració, com ara navegador, terminal, registres, `curl`, col·leccions de peticions o equivalent.
- Deixar rastre del que has provat i del que encara cal millorar.
- Explicar per què la conservació de dades que has fet és suficient per a `R2`, encara que no siga encara el centre del curs.

**Evidències principals**

- Registre de proves mínimes.
- Cas positiu i cas negatiu documentats.
- Incidències detectades o correccions rellevants.
- Rastre de l’eina o entorn utilitzat per provar o depurar.
- Evidència de reutilització de dades.
- Documentació tècnica actualitzada.

**Com es comprovarà**

- Execució dels casos documentats.
- Revisió de l’eina o entorn utilitzat per provar o depurar.
- Contrast entre documentació, repositori i resultat real.
- Defensa tècnica breu sobre el flux complet.

## Com es reparteixen els criteris dins del repte

Per orientar-te sense convertir el repte en una llista normativa, pots llegir-lo així:

- `RA2` apareix sobretot en el microrepte 2: ací entra la base comuna en `PHP`, la generació de pàgines o respostes amb codi embegut, la sintaxi, les sentències, les directives, les variables, els operadors i els àmbits.
- `RA3` apareix sobretot en els microreptes 1 i 3: formularis, recuperació de dades, comentaris útils, decisions, bucles, arrays i funcions.
- `RA4` apareix sobretot en els microreptes 4, 5 i 6: estat, emmagatzematge en client quan toque, autenticació, funcionalitat protegida, prova i depuració.

## Criteris que es treballen en este repte

En llenguatge clar, en este repte es treballa sobretot que sigues capaç de:

- Entendre com la base comuna en `PHP` genera una pàgina o resposta amb codi embegut o equivalent.
- Identificar les peces tècniques bàsiques que intervenen en eixe flux.
- Rebre i recuperar dades d’un formulari o entrada equivalent.
- Mostrar errors de validació de manera clara i permetre correcció.
- Aplicar lògica bàsica de servidor amb sentit, usant sintaxi, sentències, directives, variables i operadors.
- Entendre on viu cada variable i quin àmbit afecta el comportament.
- Validar al servidor les dades i, quan toque, els fitxers o imatges.
- Conservar informació útil perquè després es puga reutilitzar dins del projecte.
- Deixar comentaris útils en el codi quan facen falta per explicar el flux.
- Utilitzar decisions, bucles, arrays o funcions quan realment fan falta.
- Entendre i usar mecanismes d’estat.
- Entendre què queda en client i què queda en servidor quan mantens informació.
- Distingir entre estat temporal i conservació funcional de dades.
- Distingir entre estat, autenticació i autorització.
- Aplicar autenticació funcional.
- Protegir una operació real del domini vinculada al projecte base.
- Provar, depurar i documentar el flux complet amb eines o entorns simples.

No es tracta de memoritzar noms de funcions o paraules tècniques. Es tracta de demostrar que entens el recorregut complet del que passa al servidor i per què la informació útil no es queda en una prova que desapareix.

## Idea metodològica important d’este repte

Este repte es resol sobre una **base comuna en `PHP`**.

Això implica també entendre, encara que siga a un nivell bàsic, com es genera una pàgina o una resposta des del servidor amb codi embegut o equivalent, i quines peces tècniques intervenen en eixe recorregut.

En este moment del curs, la prioritat és consolidar el flux complet en servidor:

- Entrada de dades.
- Processament.
- Conservació funcional de la informació.
- Lògica bàsica.
- Estat o sessió.
- Autenticació.
- Funcionalitat protegida.

Això significa que la informació correcta ha de poder continuar viva dins del projecte. El sistema ha de poder aprofitar-la després per mostrar-la, recuperar-la, llistar-la o continuar treballant amb ella.

Però això no vol dir que ara toque convertir el repte en un bloc d’accés a dades, modelat complet o arquitectura de persistència.

El contrast de frameworks i la consolidació arquitectònica encara no són el focus principal. No toca reescriure el projecte en `Laravel`, `Symfony` o `NestJS` abans d’hora, ni convertir `R2` en una carrera per veure qui munta la persistència més sofisticada.

Ara toca demostrar una base funcional comuna i defensable. Després arribarà el contrast amb itineraris com `Laravel`, `Symfony` o `NestJS`, i serà en `R3` quan la persistència passarà a tindre un pes més central en l’arquitectura.

## Si et bloqueges

Per no perdre el fil del repte:

- Treballa amb un únic actor i una sola operació protegida.
- Tria una dada del domini que després pugues tornar a mostrar o recuperar.
- Tanca primer el flux principal abans d’afegir rols o extres.
- Si hi ha imatge o fitxer, comença per un únic tipus acceptat i una regla de grandària clara.
- No canvies de framework per intentar desbloquejar este repte.
- No compliques la persistència si el flux principal encara no està tancat.
- Assegura’t que el `README` o la documentació equivalent expliquen com reproduir el cas bo, el cas denegat i la reutilització de la dada correcta.

## Evidències obligatòries

Per considerar complet el repte, hauràs d’aportar com a mínim:

- Repositori actualitzat.
- Issue principal del repte o registre equivalent.
- Seqüència de commits significativa.
- Formulari funcional o entrada equivalent.
- Recuperació real de dades.
- Error de validació visible i possibilitat de correcció.
- Processament bàsic en servidor.
- Conservació o persistència funcional de la informació correcta.
- Reutilització posterior d’eixa informació dins del projecte.
- Si el flux inclou imatge o fitxer, prova de validació de tipus i grandària.
- Ús visible de lògica amb decisions, bucles, arrays o funcions.
- Evidència d’estat, sessió o cookies.
- Autenticació funcional.
- Operació real protegida i vinculada al projecte base.
- Cas positiu i cas negatiu.
- Prova o verificació mínima del flux.
- Documentació tècnica actualitzada.
- `AI log`, quan hi haja ús rellevant d’IA.

## Com es comprovarà

El professorat podrà comprovar el treball amb mecanismes com:

- Execució real del flux complet.
- Prova del cas positiu, del cas negatiu i d’almenys un error de validació.
- Revisió de com es mostren els errors i de com es reprén el flux després de corregir-los.
- Prova que una dada correcta queda guardada i es pot tornar a mostrar, recuperar o llistar.
- Revisió de si el mecanisme de conservació triat és coherent i prou controlat per a `R2`.
- Si hi ha fitxer o imatge, prova d’un cas acceptable i d’un cas rebutjat.
- Revisió de commits i issues.
- Preguntes tècniques breus.
- Defensa oral curta.
- Microcanvis en viu quan siga necessari.
- Contrast entre documentació, codi i comportament real.

## Ús de la IA en este repte

La IA et pot ajudar, per exemple, a:

- Proposar estructures de formulari.
- Sugerir validacions.
- Recordar patrons de sessió o autenticació.
- Proposar un mecanisme simple de conservació de dades.
- Detectar errors.
- Proposar casos de prova.
- Ajudar a documentar el flux.

El que no pots delegar és:

- Entendre d’on ix cada dada i on es tracta.
- Distingir entre estat, persistència funcional, autenticació i autorització.
- Comprovar que el cas positiu i el negatiu funcionen de veritat.
- Explicar per què una acció queda protegida i una altra no.
- Explicar com reapareix després la informació correcta dins del projecte.

Encara que uses IA, es comprovarà igualment si pots validar, adaptar, corregir i defendre el que presentes.

## Errors habituals

Convindria evitar errors com estos:

- Fer només el cas feliç.
- Quedar-se en un formulari genèric sense funcionalitat real de projecte.
- Reduir el repte a formulari, validació i missatge d’error.
- Guardar dades però no reutilitzar-les després.
- Confondre estat amb persistència del domini.
- Confondre estat amb autenticació.
- Acceptar una imatge o un fitxer sense comprovar tipus o grandària.
- Tindre `login` però no una funcionalitat real protegida.
- Muntar una base de dades sense necessitat mentre la funcionalitat principal continua sense tancar.
- Mostrar dades sense tractar-les realment.
- Afegir lògica artificial només per complir.
- Portar una solució que no es pot explicar.

## Quan es considera superat

Este repte es considera superat quan:

- El sistema rep i tracta dades en servidor dins d’un flux complet.
- La validació és visible, interpretable i permet correcció.
- La informació correcta queda conservada amb sentit funcional.
- Eixa informació es pot reutilitzar després dins del projecte.
- Hi ha lògica bàsica aplicada amb sentit.
- Si hi ha imatge o fitxer, el sistema el valida i l’integra amb criteri bàsic.
- Existix una evidència clara de manteniment d’estat.
- L’autenticació o control d’accés és funcional.
- Hi ha una operació real del projecte protegida i vinculada al domini triat.
- Es poden demostrar un cas positiu i un cas negatiu.
- El treball està prou documentat i traçat.
- Pots defendre tècnicament el flux complet i explicar per què la persistència ací és de suport i no encara el centre del repte.

## Què prepara este repte

Este repte deixa el producte preparat per al següent pas del curs:

- Mantindre viu el flux funcional que has construït ací.
- Reorganitzar millor el codi.
- Millorar l’arquitectura.
- Donar més pes a la persistència quan arribe `R3`.
- Introduir el framework sense canviar de projecte.
