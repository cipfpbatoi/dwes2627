# Repte 2. Processament, estat i funcionalitat protegida

## Finalitat del repte

Este repte servix per consolidar un flux complet de programació en servidor i fer que el projecte deixe de ser només una base funcional.

Ara el backend ja no ha de limitar-se a rebre una petició i respondre. Ha de ser capaç de:

- Integrar codi de servidor amb `HTML` o una plantilla equivalent.
- Usar variables, operadors, sentències simples, directives i àmbits dins del flux.
- Recollir dades útils del projecte.
- Validar-les en servidor i mostrar errors clars.
- Generar el document o resposta resultant des del servidor.
- Permetre correcció i reintent.
- Processar la informació amb lògica bàsica.
- Conservar la informació correcta perquè després es puga reutilitzar.
- Mantindre estat quan faça falta.
- Autenticar usuaris i gestionar sessions quan toque.
- Protegir una primera funcionalitat del projecte.

## 🌟 Via 9→10 en este repte

Este repte també té una via d'excel·lència `9→10`: **primer has de tancar bé el nucli i després pots obrir una ampliació amb valor tècnic real**. La secció completa està al final del repte.

## Context professional

L’equip ja té una base executable del producte després del `Repte 1`.

Ara toca fer un pas més seriós: convertir eixa base en una funcionalitat real de producte, amb entrada de dades, comportament coherent de servidor, conservació d’informació útil i control d’accés.

En un entorn professional, este és el moment en què el sistema deixa de ser només una prova tècnica i comença a gestionar informació que després torna a aparéixer dins del mateix producte.

## Què has de construir

En este repte has de fer evolucionar el projecte fins a deixar, com a mínim:

- Un formulari o una entrada de dades real vinculada al projecte triat.
- Codi servidor integrat amb llenguatge de marques o plantilla, no una pàgina estàtica separada del flux.
- Ús visible de variables, operadors, sentències simples, directives i àmbits.
- Recollida de dades, validació inicial bàsica, error visible i possibilitat de correcció.
- Recuperació i tractament de la informació en servidor.
- Processament real de la petició amb lògica bàsica.
- Resposta o document generat pel servidor a partir de les dades rebudes.
- Conservació o persistència funcional de la informació correcta.
- Reutilització posterior d’eixa informació dins del projecte.
- Si el flux ho demana i ja tens el mínim tancat, tractament d’imatge o fitxer com a ampliació amb control bàsic de tipus i grandària.
- Evidència de manteniment d’estat o sessió.
- Autenticació funcional.
- Una operació real del projecte protegida i lligada al domini triat.
- Un cas positiu i un cas negatiu.
- Prova mínima i documentació bàsica del flux.
- Revisió final del codi per millorar mantenibilitat, traure funcions comunes a fitxers separats, usar `include` / `require` amb sentit, incorporar almenys un objecte simple del domini i justificar per què la versió final és millor.

## Producte mínim esperat

Al final del repte hauries de poder mostrar un recorregut complet com este:

- L’usuari inicia una acció útil del projecte base.
- El sistema recull les dades i aplica una validació bàsica en servidor.
- Si hi ha error, el sistema mostra almenys un missatge clar.
- L’usuari pot corregir i tornar a provar.
- El servidor processa la petició correcta amb variables, operadors i sentències simples aplicades al flux.
- El sistema genera una resposta o document on es veu el resultat del tractament en servidor.
- Si hi ha una imatge o un fitxer com a ampliació, el sistema en valida tipus i grandària abans d’acceptar-lo.
- La informació correcta queda conservada en un mecanisme controlat.
- El projecte pot recuperar o reutilitzar eixa informació més avant.
- El sistema aplica una regla o una decisió.
- Es manté estat quan és necessari.
- El sistema comprova si l’acció està permesa.
- Una funcionalitat del producte queda protegida.
- Es pot demostrar què passa en el cas correcte i en el cas denegat.

No cal que siga un producte gran. Sí que cal que siga un flux complet, explicable i verificable.

La seqüència ha de quedar clara: primer arriben les dades i es fa una validació inicial bàsica; després, només si són correctes, es processen i es guarden per poder reutilitzar-les; després s’apliquen regles del projecte; després es manté estat quan fa falta; després es protegix una acció real; i, al final, es prova i es revisa tot el recorregut.

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
- Escriure `HTML` estàtic sense codi servidor integrat en el flux.
- Usar variables o operadors només com a exemples desconnectats del producte.
- Protegir una ruta decorativa o sense valor dins del projecte.
- Confondre estat, autenticació, autorització i persistència.
- Validar només el cas feliç.
- Quedar-se en “formulari + validació + missatge d’error” sense obrir una funcionalitat del producte.
- Guardar dades de manera aparent si després no es poden reutilitzar.
- Muntar una base de dades com a reclam tècnic mentre el flux principal continua dèbil.
- Portar una demo que funciona una vegada però no es pot explicar ni reproduir.
- Convertir la sessió final en una reescriptura completa o en una entrada obligatòria a POO i BBDD.

## Relació amb el projecte base

La funcionalitat protegida ha d’estar lligada al projecte que ja vas definir al `Repte 1`.

No es considera suficient construir un formulari genèric desconnectat del domini. El que compta és que el flux servisca per crear, modificar, reservar, publicar, pujar, recuperar o gestionar alguna cosa que tinga sentit dins del teu producte.

La pregunta útil no és només “quin formulari faré?”, sinó “quina acció real del meu projecte vull validar, processar, conservar i protegir en servidor?”.

## Exemples breus segons projecte base

- **Plataforma de productes**: alta o edició d’un producte amb nom, categoria i confirmació. Si falta la dada triada per validar, el sistema ho mostra, permet correcció i, quan la dada siga correcta, deixa el producte preparat per al processament posterior.
- **Gestor de reserves o activitats**: creació d’una reserva o d’una activitat amb nom, franja i confirmació. El flux ha de validar almenys una dada clau, respondre amb un error clar si no és correcta i deixar la reserva preparada per continuar el recorregut.
- **Plataforma de recursos o publicacions**: alta d’un recurs, notícia o publicació amb títol, tipus i confirmació. El servidor ha de validar una dada inicial i permetre que el recurs es puga processar més avant dins del projecte.

## Microreptes del Repte 2

Per treballar bé este repte convé dividir-lo en set peces clares. Això ajuda a no reduir-lo a un simple `login` i a entendre què s’està construint en cada fase.

La base del repte queda en `21` hores, organitzades en `7` sessions de `3` hores.

La progressió també és important: en el microrepte 1 entra i es valida la informació; en el 2 es processen i es guarden les dades correctes; en el 3 s’apliquen regles reals del projecte; en el 4 es conserva estat temporal del flux; en el 5 es protegix una operació real; en el 6 es prova, es depura i es tanca un checkpoint tècnic; i en el 7 es revisa el codi, es trau el que es repetix a fitxers comuns, s’usen `include` / `require` amb sentit i es fa visible almenys un objecte simple del domini.

### Microrepte 1. Entrada de dades i validació bàsica

**Objectiu**

Construir un punt d’entrada de dades usable i demostrar que el sistema rep la informació correctament, aplica una validació bàsica en servidor, mostra un error visible i permet reenviar el formulari corregit.

**Què s’espera**

- Un formulari funcional o una entrada equivalent.
- Camps mínims amb sentit dins del projecte base: text, llista o opció tancada i checkbox.
- Recuperació real de les dades en servidor amb `$_POST` o mecanisme equivalent.
- Una validació bàsica al servidor amb una condició simple.
- Un missatge d’error visible quan la dada triada no és acceptable.
- Possibilitat de corregir i tornar a enviar.
- Comentaris breus en el codi quan facen falta per entendre el flux.

No cal encara acumular errors en arrays, validar tots els controls alhora, conservar tots els valors del formulari, gestionar fitxers ni fer checkbox múltiples. Això es pot millorar més avant.

**Criteris d’avaluació que es treballen**

- **RA3.e**: Utilitzar formularis o mecanismes equivalents per interactuar amb l’usuari.
- **RA3.f**: Recuperar correctament les dades introduïdes.
- **RA3.g**: Deixar comentaris útils i claredat mínima en el codi perquè el flux es puga revisar.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Fer arribar dades reals al servidor.
- Explicar d’on ix cada dada i com es recupera.
- Relacionar els camps del formulari amb la resposta que genera el sistema.
- Mostrar què passa quan una dada clau no és vàlida.
- Permetre correcció i reenviament dins del mateix flux.
- Explicar la condició simple que genera l’error.

**Evidències principals**

- Formulari funcional o entrada equivalent.
- Recuperació correcta de dades.
- Error visible generat per una condició de servidor.
- Reenviament amb correcció.
- Evidència clara que el cas incorrecte no continua com si fora correcte.
- Commits associats.

**Com es comprovarà**

- Execució real del formulari o de l’entrada equivalent.
- Revisió del flux de dades, de l’error mostrat i de com es reenvia el formulari després de corregir-lo.
- Pregunta breu sobre com arriba la informació al servidor i quina condició genera l’error.

### Microrepte 2. Processament, reintent i guardat funcional

**Objectiu**

Millorar el flux d’error del formulari i completar el cas correcte. Quan una dada no és correcta, el servidor torna a generar el formulari conservant les dades que sí eren aprofitables. Quan l’entrada ja és correcta, el servidor la processa i la guarda funcionalment amb un mecanisme simple.

Este microrepte continua directament el `R2M1`. No has de començar de zero ni construir un formulari nou si el que tens ja envia dades i valida almenys una dada clau. Ara la pregunta és una altra: què fa el servidor amb la informació correcta quan ja pot confiar mínimament en ella?

**Què s’espera**

- Comprensió bàsica de com la base comuna en `PHP` genera una pàgina o una resposta amb codi embegut o equivalent.
- Identificació clara de les peces tècniques associades al flux: petició, servidor, fitxer o plantilla i resposta.
- Inclusió recognoscible de codi de servidor dins del punt on es genera la resposta.
- Sintaxi correcta.
- Variables amb sentit.
- Operadors i sentències bàsiques ben aplicats.
- Tractament clar de les dades rebudes abans de tornar-les al formulari.
- Error visible generat en servidor.
- Formulari regenerat amb les dades aprofitables conservades.
- Reintent corregit sense haver de repetir totes les dades.
- Guardat funcional simple quan l’entrada és correcta.
- Explicació clara de per què conservar dades en el reintent no és el mateix que guardar funcionalment un cas correcte.
- Els arrays d’errors, fitxers, checkbox múltiples i validacions més completes queden com a ampliació o per a una fase posterior.

**Què has de construir**

Has de completar un recorregut curt però real:

1. Enviar el formulari amb algun error.
2. Recuperar les dades enviades en el servidor.
3. Mostrar un missatge d’error clar.
4. Tornar a generar el formulari amb les dades aprofitables ja escrites o seleccionades.
5. Corregir només la dada errònia.
6. Reenviar correctament i obtindre una resposta final.
7. Processar i guardar funcionalment la informació correcta.
8. Mostrar o recuperar la dada guardada en una pantalla, llista o resum simple.

Exemples:

- Si tens una tenda, pots enviar un producte sense nom però conservar la categoria triada; quan el nom ja és correcte, el producte queda guardat en una llista provisional.
- Si tens reserves, pots enviar una reserva amb una franja no vàlida però conservar el nom; quan la franja ja és correcta, la reserva queda guardada funcionalment.
- Si tens publicacions o recursos, pots enviar una publicació amb títol massa curt però conservar el tipus; quan el títol ja és correcte, el recurs queda registrat en una llista simple.

**Què has d’entregar**

- Codi del flux actualitzat.
- Evidència d’un cas amb error i reintent: enviar, mostrar error, conservar dades, corregir i reenviar.
- Evidència d’un cas correcte: processar, guardar funcionalment i mostrar o recuperar la dada.
- README, issue o registre amb:
  - com provocar l’error;
  - quines dades es conserven;
  - on es preparen els valors que tornen al formulari;
  - com es fa el reenviament correcte;
  - què es guarda quan el cas és correcte;
  - què queda fora del mínim.
- Commits relacionats amb el processament, el reintent i el guardat funcional.
- `AI log` si has usat IA de manera rellevant.

**Requisits mínims**

- El flux ha de partir del formulari o entrada de `R2M1`.
- Si la validació falla, el formulari ha de tornar amb dades aprofitables conservades.
- La resposta del servidor ha de dependre de les dades enviades, no de valors fixos.
- Hi ha d’haver ús real de variables, operadors o sentències simples.
- Has de conservar almenys un camp de text i una opció tancada, i revisar què passa amb un checkbox simple.
- Quan el cas és correcte, la informació ha de quedar guardada amb un mecanisme simple que pugues explicar.
- Has de poder assenyalar en el codi el punt de recepció, validació, preparació de valors, reconstrucció del formulari i guardat del cas correcte.

**Què es deixa per a més avant**

No cal encara:

- acumular errors en arrays;
- convertir el formulari en una validació completa de tots els camps;
- fer checkbox múltiples si no aporten res al flux;
- pujar fitxers o imatges com a mínim obligatori;
- crear funcions i arrays com a centre del microrepte;
- iniciar sessió, cookies, login o rols;
- usar base de dades com a mínim obligatori;
- muntar una arquitectura MVC o una persistència formal.

Els arrays, funcions i regles del projecte apareixen amb més sentit en `R2M3`. Estat, sessió i cookies apareixen en `R2M4`. Autenticació i operació protegida apareixen en `R2M5`.

**Criteris d’avaluació que es treballen**

- **RA2.a - RA2.b**: Entendre el mecanisme bàsic de generació de pàgines o respostes amb codi embegut sobre la base comuna en `PHP` i les tecnologies associades.
- **RA2.c**: Integrar codi de servidor dins del flux o de la resposta generada.
- **RA2.d - RA2.e**: Usar sintaxi i sentències simples amb correcció i amb efecte visible.
- **RA2.f - RA2.h**: Utilitzar directives, variables, operadors i àmbits de variables amb sentit funcional.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Explicar on s’executa el codi de servidor i com arriba el resultat al navegador o al client.
- Identificar quin paper té cada peça tècnica mínima del flux sobre la base comuna en `PHP`.
- Explicar què fa el codi quan hi ha un error.
- Demostrar que el formulari no es reconstrueix amb valors fixos.
- Relacionar les dades enviades amb els valors que tornen a aparéixer.
- Explicar com es conserva un text, una opció tancada i un checkbox simple.
- Diferenciar conservar dades per al reintent de guardar funcionalment el cas correcte.

**Evidències principals**

- Tram recognoscible de codi embegut o equivalent dins de la resposta generada.
- Codi executable de processament del reintent.
- Evidència d’ús real de variables i operadors.
- Evidència d’alguna directiva o configuració bàsica aplicada amb sentit.
- Demo d’un enviament amb error.
- Demo del formulari recarregat amb dades conservades.
- Demo del reenviament corregit.
- Demo del cas correcte guardat funcionalment.
- Explicació breu de què es conserva i què no.
- Commits o issues relacionades.

**Com es comprovarà**

- Execució del flux amb dades reals.
- Revisió del tram de codi que recupera dades, prepara valors i regenera el formulari.
- Pregunta breu sobre com es genera la resposta d’error, com es conserven les dades i què es guarda quan el cas és correcte.
- Microcanvi en viu sobre un valor conservat per comprovar que entens el recorregut.

### Microrepte 3. Lògica del flux i regles del projecte

**Autocorrecció associada**

`r2-s03-logica-flux-regles-projecte`

**Objectiu**

Aplicar lògica bàsica de programació perquè el backend no es limite a rebre i guardar dades, sinó que aplique regles reals del projecte sobre la informació disponible.

**Què s’espera**

- Almenys una decisió significativa.
- Una repetició o un recorregut quan el flux ho necessite.
- Ús d’arrays o estructures equivalents quan faça falta.
- Una o més funcions útils.
- Aplicació recognoscible d’alguna regla bàsica del projecte.
- Reutilització de la informació guardada quan faça falta per decidir, calcular o mostrar.
- Lògica connectada al flux real del producte.

**Criteris d’avaluació que es treballen**

- **RA3.a - RA3.f**: Aplicar decisions, repeticions, estructures de dades i funcions dins d’un flux de servidor amb sentit.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Fer que el sistema prenga decisions segons les dades rebudes
- Aplicar alguna regla del projecte
- Reutilitzar codi amb funcions pròpies
- Treballar amb llistes, etiquetes o estructures semblants
- Demostrar que el backend està pensant i no només rebent dades

**Exemples segons projecte**

#### Exemple si el projecte és una tenda

Pots fer que el sistema:

- decidisca si un producte queda visible o pendent
- calcule o transforme alguna informació del producte
- gestione una llista d’etiquetes o categories
- use una funció per validar o preparar dades abans de guardar-les

#### Exemple si el projecte és un gestor d’activitats o reserves

Pots fer que el sistema:

- decidisca si una activitat està oberta o tancada
- valide regles sobre dates o places
- construïsca missatges diferents segons l’estat
- use funcions per separar comprovacions

#### Exemple si el projecte és una plataforma de recursos o publicacions

Pots fer que el sistema:

- decidisca si una publicació queda en esborrany o publicada
- genere un resum o classificació bàsica
- tracte una llista d’etiquetes
- use funcions per preparar el recurs abans de mostrar-lo o guardar-lo

**Evidències principals**

- Cas de decisió observable o recorregut significatiu.
- Array o estructura equivalent usada amb sentit.
- Funció o funcions útils.
- Dos casos de prova amb resultats visibles diferents.
- Nota breu al `README`, issue o registre explicant la regla i com repetir els dos casos.
- Demo de reutilització de la informació correcta.
- Demo del comportament resultant.

**Com es comprovarà**

- Execució del flux funcional
- Revisió del codi
- Pregunta oral breu sobre la regla implementada
- Comprovació que la lògica no és ornamental, sinó útil per al projecte

**Què no es penalitza encara**

- No tindre sessió, cookies, login, rols o autorització.
- No tindre base de dades obligatòria ni persistència formal.
- No haver refactoritzat encara cap a MVC o arquitectura completa.

### Microrepte 4. Estat i sessió per conservar el flux

**Objectiu**

Demostrar que el sistema pot recordar informació provisional entre peticions per no perdre el fil del recorregut, recuperar un esborrany o unes seleccions temporals i invalidar-les quan ja no facen falta, sense convertir encara este punt en un model complet d’usuari.

**Què s’espera**

- Un mecanisme d’estat real o equivalent.
- Dades provisionals amb sentit dins del flux: esborranys, seleccions temporals, pas actual o informació pendent de confirmar.
- Evidència de què es guarda en estat o sessió i de com es recupera.
- Recuperació del flux després d’un error, una recàrrega o un pas intermedi.
- Si hi ha informació guardada en client, prova de lectura i recuperació.
- Distinció clara entre estat temporal del flux i guardat funcional del recurs.
- Neteja o invalidació quan toque.

**Criteris d’avaluació que es treballen**

- **RA4.a - RA4.b**: Identificar i usar mecanismes de manteniment d’informació i d’estat per a un client concret.
- **RA4.c**: Emmagatzemar informació en client, recuperar-la i explicar quan convé usar-ho.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Explicar què guarda el sistema i per què és provisional.
- Distingir entre estat, sessió, cookies i altres mecanismes equivalents.
- Distingir què queda en client i què manté el servidor.
- Demostrar que el flux es pot reprendre sense dependre encara d’un model complet d’usuari.
- Explicar quan toca netejar o invalidar eixa informació temporal.

**Evidències principals**

- Mecanisme d’estat implementat.
- Demo de recuperació d’un esborrany, d’una selecció temporal o d’un pas del flux.
- Si hi ha cookies o emmagatzematge en client, demo de lectura i recuperació.
- Demo de neteja o invalidació.
- Explicació clara de la frontera entre estat temporal i guardat funcional.
- Commits associats.

**Com es comprovarà**

- Execució en directe de la recuperació del flux.
- Pregunta breu sobre què es guarda, on, amb quina finalitat i si queda en client o en servidor.
- Contrast entre el que dius i el que realment passa al flux.

### Microrepte 5. Autenticació i funcionalitat protegida

**Objectiu**

Connectar tot el flux anterior amb una necessitat real del producte: una operació que només es pot executar si es complixen unes condicions d’accés i que deixa clar què passa en el cas autoritzat i en el cas denegat.

**Què s’espera**

- Autenticació real.
- Comprovació d’accés.
- Una operació del domini protegida, vinculada al projecte base i aplicada sobre dades reals del projecte.
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

### Microrepte 6. Prova, depuració i checkpoint tècnic

**Objectiu**

Comprovar que el flux complet funciona, que queda registrat amb una checklist o taula simple de proves, que es pot demostrar en una demo breu i que el repte arriba a la sessió final amb una base tècnica clara.

**Què s’espera**

- Checklist o taula simple de casos de prova.
- Prova del cas correcte.
- Prova d’un cas d’error o denegació.
- Revisió d’errors i validacions.
- Comprovació que la informació guardada es pot recuperar o reutilitzar.
- Ús visible d’alguna eina o entorn simple de prova i depuració.
- Documentació mínima actualitzada.
- Demo reproduïble del flux complet.
- Defensa tècnica breu del recorregut.

**Criteris d’avaluació que es treballen**

- **RA4.f**: Provar, depurar i documentar el comportament real del sistema.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Demostrar que el flux funciona de veritat.
- Detectar errors i explicar-los.
- Fer servir algun suport real de prova o depuració, com ara navegador, terminal, registres, `curl`, col·leccions de peticions o equivalent.
- Deixar rastre del que has provat i del que encara cal millorar.
- Explicar com has organitzat la prova i quins casos has verificat.
- Explicar per què la conservació de dades que has fet és suficient per a `R2`, encara que no siga encara el centre del curs.
- Deixar clar quines parts del codi convé revisar en el microrepte 7.

**Evidències principals**

- Checklist o taula de proves mínimes.
- Cas positiu i cas negatiu documentats.
- Incidències detectades o correccions rellevants.
- Rastre de l’eina o entorn utilitzat per provar o depurar.
- Evidència de reutilització de dades.
- Documentació tècnica actualitzada.
- Demo breu o guia de reproducció del flux.

**Com es comprovarà**

- Execució dels casos documentats.
- Revisió de l’eina o entorn utilitzat per provar o depurar.
- Contrast entre documentació, repositori i resultat real.
- Defensa tècnica breu sobre el flux complet.

### Microrepte 7. Refactorització i millora de mantenibilitat

En este microrepte hauràs de revisar el codi que ja funciona i aplicar una millora clara de mantenibilitat.

Este microrepte no substituïx la resta del repte ni convertix `R2` en `R3`.

Ací sí que hauràs de:

- revisar parts repetides
- reduir barreja excessiva de `HTML + PHP`
- extraure funcions comunes a un fitxer separat
- començar a repartir el codi en fitxers de manera simple i clara
- usar `include` / `require` o, quan toque, `include_once` / `require_once` amb sentit
- millorar noms
- ordenar millor el codi
- separar millor preparació de dades i renderitzat
- representar almenys una part del projecte amb un objecte simple
- justificar per què la versió final és més clara o mantenible

Este microrepte no vol dir:

- convertir tot el projecte a objectes
- fer una arquitectura completa
- passar-ho tot a base de dades
- substituir el treball propi de `R3`

Si després d’esta revisió afegixes més classes, més objectes o una persistència més formal, això s’ha d’entendre com a ampliació, millora o avançament controlat cap al repte següent, no com a exigència central per a tot l’alumnat dins de `R2`.

## Com es reparteixen els criteris dins del repte

Per orientar-te sense convertir el repte en una llista normativa, pots llegir-lo així:

- `RA2` apareix sobretot en el microrepte 2: ací entra la base comuna en `PHP`, la generació de pàgines o respostes amb codi embegut, la sintaxi, les sentències, les directives, les variables, els operadors i els àmbits.
- `RA3` apareix sobretot en els microreptes 1, 3 i 7: formularis, recuperació de dades, comentaris útils, decisions, bucles, arrays, funcions i revisió de claredat del codi.
- `RA4` apareix sobretot en els microreptes 4, 5, 6 i 7: estat, emmagatzematge en client quan toque, autenticació, funcionalitat protegida, prova, depuració i comprovació final després de la revisió.

## Criteris que es treballen en este repte

En llenguatge clar, en este repte es treballa sobretot que sigues capaç de:

- Entendre com la base comuna en `PHP` genera una pàgina o resposta amb codi embegut o equivalent.
- Identificar les peces tècniques bàsiques que intervenen en eixe flux.
- Rebre i recuperar dades d’un formulari o entrada equivalent.
- Mostrar almenys un error de validació de manera clara i permetre correcció.
- Aplicar lògica bàsica de servidor amb sentit, usant sintaxi, sentències, directives, variables i operadors.
- Entendre on viu cada variable i quin àmbit afecta el comportament.
- Fer una validació bàsica al servidor i millorar-la progressivament quan el flux ja s'entén.
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

- Entrada de dades i validació bàsica.
- Processament, reintent i guardat funcional.
- Lògica del flux i regles del projecte.
- Estat o sessió quan faça falta.
- Autenticació i funcionalitat protegida.
- Prova, depuració i checkpoint tècnic.
- Refactorització i millora de mantenibilitat.

Això significa que la informació correcta ha de poder continuar viva dins del projecte. El sistema ha de poder aprofitar-la després per mostrar-la, recuperar-la, llistar-la o continuar treballant amb ella.

En la sessió `7`, això implica revisar el que ja tens, traure funcions comunes a fitxers separats, usar `include` / `require` o `include_once` / `require_once` amb sentit i donar forma a almenys una entitat del projecte amb un objecte simple.

Però això no vol dir que ara toque convertir el repte en un bloc d’accés a dades, modelat complet o arquitectura de persistència.

El contrast de frameworks i la consolidació arquitectònica encara no són el focus principal. No toca reescriure el projecte en `Laravel`, `Symfony` o `NestJS` abans d’hora, ni convertir `R2` en una carrera per veure qui munta la persistència més sofisticada.

Ara toca demostrar una base funcional comuna i defensable. Després arribarà el contrast amb itineraris com `Laravel`, `Symfony` o `NestJS`, i serà en `R3` quan la persistència passarà a tindre un pes més central en l’arquitectura.

La sessió `7` de `R2` ha de servir per netejar i aclarir el codi que ja funciona, organitzar-lo millor en fitxers i introduir un objecte mínim del domini, no per fer una reescriptura arquitectònica completa.

## Si et bloqueges

Per no perdre el fil del repte:

- Treballa amb un únic actor i una sola operació protegida.
- Tria una dada del domini que després pugues tornar a mostrar o recuperar.
- Tanca primer el flux principal abans d’afegir rols o extres.
- Si hi ha imatge o fitxer com a ampliació, comença per un únic tipus acceptat i una regla de grandària clara.
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
- Error de validació bàsic visible i possibilitat de correcció.
- Processament bàsic en servidor.
- Conservació o persistència funcional de la informació correcta.
- Reutilització posterior d’eixa informació dins del projecte.
- Si el flux inclou imatge o fitxer com a ampliació, prova de validació de tipus i grandària.
- Ús visible de lògica amb decisions, bucles, arrays o funcions.
- Evidència d’estat, sessió o cookies.
- Autenticació funcional.
- Operació real protegida i vinculada al projecte base.
- Cas positiu i cas negatiu.
- Prova o verificació mínima del flux.
- Documentació tècnica actualitzada.
- Evidència de revisió final del codi i justificació de la millora de mantenibilitat.
- Almenys un fitxer comú o una peça reutilitzable importada amb `include` / `require` i almenys un objecte simple del domini.
- `AI log`, quan hi haja ús rellevant d’IA.

## Evidències de la sessió final de revisió

En el microrepte 7, una bona evidència és:

- comparació breu abans/després
- explicació de quina duplicació, mescla `HTML + PHP` o responsabilitat has netejat
- almenys un fitxer comú o peça reutilitzable importada amb `include` / `require`
- almenys una entitat del projecte representada amb un objecte simple
- justificació de per què la versió revisada és millor
- si després d’això has afegit més classes, més objectes o persistència més formal, explicació de per què això és una ampliació o un pont cap a `R3`

## Forma de prova del repte

En este repte no n’hi ha prou amb dir que el sistema funciona. Cal **provar-lo de manera visible i verificable**.

La prova mínima del repte ha d’incloure, com a mínim, estos casos:

- enviament correcte del formulari
- error de validació visible per a l’usuari
- correcció d’un formulari inicialment incorrecte
- tractament del reintent amb dades conservades en servidor i guardat funcional del cas correcte
- aplicació d’alguna regla bàsica del projecte
- recuperació d’informació temporal d’estat o sessió, si forma part del flux
- conservació o reutilització posterior de la informació
- cas autoritzat de la funcionalitat protegida
- cas denegat de la funcionalitat protegida
- tractament d’imatge o fitxer, si forma part del flux del projecte

## Com s’han de presentar les proves

Les proves del repte han de quedar registrades d’una manera simple però clara.

Es recomana usar una **checklist de verificació** o una **taula de casos de prova** amb una estructura com esta:

- cas de prova
- entrada
- resultat esperat
- resultat obtingut
- incidències detectades

## Què es comprovarà en la prova

En la revisió del repte, el professorat podrà comprovar:

- si el flux complet funciona realment
- si els errors de validació es mostren de manera visible
- si la informació correcta es conserva i es pot reutilitzar
- si l’estat temporal permet reprendre el flux quan toca
- si la funcionalitat protegida respon diferent en cas autoritzat i en cas denegat
- si l’alumne o alumna pot explicar què s’ha provat i per què

## Com es comprovarà

El professorat podrà comprovar el treball amb mecanismes com:

- Execució real del flux complet.
- Prova del cas positiu, del cas negatiu i d’almenys un error de validació bàsic.
- Revisió de com es mostren els errors i de com es reprén el flux després de corregir-los.
- Prova que una dada correcta queda guardada i es pot tornar a mostrar, recuperar o llistar.
- Si hi ha estat temporal, prova de recuperació del flux sense perdre la informació provisional.
- Revisió de si el mecanisme de conservació triat és coherent i prou controlat per a `R2`.
- Si hi ha fitxer o imatge, prova d’un cas acceptable i d’un cas rebutjat.
- Revisió de commits i issues.
- Preguntes tècniques breus.
- Defensa oral curta.
- Microcanvis en viu quan siga necessari.
- Contrast entre documentació, codi i comportament real.

## Documentació del codi

En este repte, la documentació del codi ha de ser **útil i proporcionada**.

No es demana documentar de manera exhaustiva tot el projecte, però sí deixar clar:

- què fa cada part important del flux
- on es valida la informació
- on es tracta l’autenticació o la comprovació d’accés
- on es processa la imatge o el fitxer, si n’hi ha
- com es conserva després la informació

## Ús de PHPDoc

Es recomana usar **PHPDoc DocBlocks** de manera selectiva en funcions pròpies amb lògica rellevant, especialment en casos com:

- funció o condició de validació quan ja entengues el `if/else` bàsic
- funcions de tractament de dades
- funcions de tractament d’imatge o fitxer
- funcions de comprovació d’accés
- funcions reutilitzables que no siguen evidents a simple vista

## Què s’espera del PHPDoc en este repte

Si s’utilitza PHPDoc, hauria de servir sobretot per millorar la comprensió del codi.

Com a mínim, en les funcions on toque, pot ser útil incloure:

- una descripció breu
- `@param`
- `@return`
- `@throws`, si realment aplica

## Què no es demana

En este repte no es demana:

- documentar cada variable
- omplir de DocBlocks fitxers trivials
- generar documentació automàtica completa
- convertir la documentació en una capa decorativa sense utilitat real
- convertir tot el projecte a POO completa
- muntar una arquitectura completa abans d’hora
- fer de la base de dades el centre del repte

## Idea clau

En este repte es valorarà sobretot que:

- proves realment el que has programat
- pots demostrar què funciona i què falla
- documentes de manera útil les parts importants
- i deixes el codi prou clar perquè una altra persona puga entendre el flux principal

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
- La validació inicial és visible, interpretable i permet correcció.
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
- Pots justificar per què la versió revisada en la sessió `7` és més clara i mantenible que la inicial.
- La sessió `7` deixa almenys una reutilització real en fitxers amb `include` / `require` i una entitat mínima del domini com a objecte simple.

## Què prepara este repte

Este repte deixa el producte preparat per al següent pas del curs:

- Mantindre viu el flux funcional que has construït ací.
- Reorganitzar millor el codi.
- Millorar l’arquitectura.
- Donar més pes a la persistència quan arribe `R3`.
- Introduir el framework sense canviar de projecte.

La sessió `7` de revisió en `R2` ha de servir justament per arribar a `R3` amb una base més clara, no per consumir abans d’hora tot el que correspon al repte següent.

## Ampliació 9→10

**Finalitat**  
Millorar la robustesa del flux en servidor i demostrar més control sobre validació, estat, autenticació i mantenibilitat.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

**Opcions d'ampliació**
- Reforçar la validació, els errors visibles o la funcionalitat protegida amb un cas crític millor resolt.
- Fer una refactorització tècnica breu i justificada que deixe el flux més clar, reutilitzable o mantenible.

**Proposta pròpia**  
També pots proposar una ampliació pròpia si té valor tècnic real i es valida abans amb el professorat.

**Evidències mínimes**
- commit o branca identificable
- justificació tècnica breu
- prova funcional dels casos millorats
- rastre de l'ús assistit per IA, si l'has usat

**Ús assistit per IA**  
La IA et pot ajudar a contrastar validacions, proves o refactoritzacions, però no substituïx la teua decisió ni la teua comprovació real.

**Defensa**  
L'ampliació només compta si la pots explicar amb criteri i sense delegació excessiva.
