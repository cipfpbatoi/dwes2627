# Repte 2. Processament, estat i funcionalitat protegida

## Finalitat del repte

Este repte servix per convertir la base funcional de `R1` en un flux complet de servidor: entrada de dades, validació, processament, conservació d'informació, estat, autenticació, funcionalitat protegida, prova mínima, primera peça testable i persistència mínima amb BBDD.

## 🌟 Via 9→10 en este repte

Este repte també té una via d'excel·lència `9→10`: **primer has de tancar bé el nucli i després pots obrir una ampliació amb valor tècnic real**. La secció completa està al final del repte.

## Vista ràpida

| Bloc | Què has de deixar fet |
|---|---|
| Entrada i validació | Formulari o entrada equivalent vinculada al projecte, recuperació de dades en servidor, error visible i possibilitat de correcció. |
| Processament | Codi servidor integrat amb `HTML` o plantilla, ús de variables, operadors, sentències simples, directives i àmbits dins d'un flux real. |
| Conservació | La informació correcta no es perd: es guarda amb un mecanisme simple i es pot reutilitzar després dins del producte. |
| Lògica i estat | Regles pròpies del projecte, funcions, arrays o bucles, i estat temporal amb sessió o cookies quan faça falta. |
| Accés protegit | Autenticació funcional i una operació real del projecte protegida, amb cas autoritzat i cas denegat. |
| Mini API | API d'autenticació per a client amb resposta `JSON`, cas `200`, cas `401` i ruta protegida. |
| Codi testable | Classe simple del domini o servei, autoload amb Composer o equivalent, prova unitària mínima i comprovació que el flux web continua funcionant. |
| BBDD mínima | Connexió, taula, alta, lectura, consultes preparades i instruccions per reproduir-ho. |
| Verificació | Prova del cas positiu, cas negatiu, error de validació, reutilització de dades i documentació del flux. |

No cal que siga un producte gran. Sí que cal que siga un flux complet, explicable i verificable. El formulari no compta com a repte complet si només envia dades i torna un missatge genèric.

## Persistència en R2

En este repte la persistència és **funcional i de suport**. Servix perquè la informació correcta torne a aparéixer en el producte: un llistat, una reserva, una publicació, un recurs, una activitat o qualsevol dada significativa del domini.

Es pot resoldre amb un mecanisme simple i controlat, sempre que siga coherent amb el projecte. La base de dades apareix al final del nucli amb una persistència mínima en `PHP`, però `R2` encara no és un repte centrat en arquitectura completa d'accés a dades.

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
- Convertir les fases finals en una reescriptura completa, en MVC complet, en ORM o en migració de framework.

## Relació amb el projecte base

La funcionalitat protegida ha d’estar lligada al projecte que ja vas definir al `Repte 1`.

No es considera suficient construir un formulari genèric desconnectat del domini. El que compta és que el flux servisca per crear, modificar, reservar, publicar, pujar, recuperar o gestionar alguna cosa que tinga sentit dins del teu producte.

La pregunta útil no és només “quin formulari faré?”, sinó “quina acció real del meu projecte vull validar, processar, conservar i protegir en servidor?”.

## Exemples breus segons projecte base

- **Plataforma de productes**: alta o edició d’un producte amb nom, categoria i confirmació. Si falta la dada triada per validar, el sistema ho mostra, permet correcció i, quan la dada siga correcta, deixa el producte preparat per al processament posterior.
- **Gestor de reserves o activitats**: creació d’una reserva o d’una activitat amb nom, franja i confirmació. El flux ha de validar almenys una dada clau, respondre amb un error clar si no és correcta i deixar la reserva preparada per continuar el recorregut.
- **Plataforma de recursos o publicacions**: alta d’un recurs, notícia o publicació amb títol, tipus i confirmació. El servidor ha de validar una dada inicial i permetre que el recurs es puga processar més avant dins del projecte.

## Microreptes del Repte 2

Per treballar bé este repte convé dividir-lo en nou peces clares. Això ajuda a no reduir-lo a un simple `login` i a entendre què s’està construint en cada fase.

La base del repte queda en `27` hores, organitzades en `9` sessions de `3` hores.

La progressió també és important: en el microrepte 1 entra i es valida la informació; en el 2 es processen i es guarden les dades correctes; en el 3 s’apliquen regles reals del projecte amb funcions pròpies; en el 4 es conserva estat temporal del flux i s'estabilitzen includes; en el 5 es protegix una operació real; en el 6 s'exposa una mini API d'autenticació per a client; en el 7 es prova, es depura i es tanca un checkpoint tècnic; en el 8 s’introduïx una classe simple carregada amb Composer i verificada amb una primera prova unitària; i en el 9 es fa una persistència mínima amb BBDD.

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

Perquè este microrepte siga concret, hauràs de crear una **llibreria pròpia mínima** del projecte: un fitxer separat de funcions o regles, per exemple `src/regles.php`, `includes/regles.php`, `lib/funcions.php` o equivalent, carregat des del flux amb `require_once`, `include_once` o una alternativa equivalent del teu entorn.

**Què s’espera**

- Almenys una decisió significativa.
- Una repetició o un recorregut quan el flux ho necessite.
- Ús d’arrays o estructures equivalents quan faça falta.
- Una funció pròpia útil situada en un fitxer separat de llibreria pròpia.
- Ús real de `require_once`, `include_once` o equivalent per carregar eixa llibreria.
- Aplicació recognoscible d’alguna regla bàsica del projecte.
- Reutilització de la informació guardada quan faça falta per decidir, calcular o mostrar.
- Lògica connectada al flux real del producte.

**Criteris d’avaluació que es treballen**

- **RA3.a - RA3.f**: Aplicar decisions, repeticions, estructures de dades i funcions dins d’un flux de servidor amb sentit.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Fer que el sistema prenga decisions segons les dades rebudes
- Aplicar alguna regla del projecte
- Reutilitzar codi amb funcions pròpies en un fitxer separat
- Carregar una llibreria pròpia amb `require_once`, `include_once` o equivalent
- Treballar amb llistes, etiquetes o estructures semblants
- Demostrar que el backend està pensant i no només rebent dades

**Exemples segons projecte**

#### Exemple si el projecte és una tenda

Pots fer que el sistema:

- decidisca si un producte queda visible o pendent
- calcule o transforme alguna informació del producte
- gestione una llista d’etiquetes o categories
- use una funció per validar o preparar dades abans de guardar-les
- carregue eixa funció des d’un fitxer propi de regles o funcions

#### Exemple si el projecte és un gestor d’activitats o reserves

Pots fer que el sistema:

- decidisca si una activitat està oberta o tancada
- valide regles sobre dates o places
- construïsca missatges diferents segons l’estat
- use funcions per separar comprovacions
- tinga eixes funcions en una llibreria pròpia senzilla

#### Exemple si el projecte és una plataforma de recursos o publicacions

Pots fer que el sistema:

- decidisca si una publicació queda en esborrany o publicada
- genere un resum o classificació bàsica
- tracte una llista d’etiquetes
- use funcions per preparar el recurs abans de mostrar-lo o guardar-lo
- importe eixes funcions des d’un fitxer propi

**Evidències principals**

- Cas de decisió observable o recorregut significatiu.
- Array o estructura equivalent usada amb sentit.
- Fitxer separat de llibreria pròpia importat pel flux.
- Funció pròpia útil dins d’eixa llibreria.
- Dos casos de prova amb resultats visibles diferents.
- Nota breu al `README`, issue o registre explicant la regla i com repetir els dos casos.
- Demo de reutilització de la informació correcta.
- Demo del comportament resultant.

**Com es comprovarà**

- Execució del flux funcional
- Revisió del codi principal i del fitxer de llibreria pròpia
- Pregunta oral breu sobre la regla implementada
- Comprovació que la lògica no és ornamental, sinó útil per al projecte
- Comprovació que `require_once`, `include_once` o equivalent carrega codi que s’usa realment

**Què no es penalitza encara**

- No tindre sessió, cookies, login, rols o autorització.
- No tindre base de dades obligatòria ni persistència formal.
- No haver refactoritzat encara cap a MVC o arquitectura completa.

### Microrepte 4. Estat i sessió per conservar el flux

**Autocorrecció associada**

`r2-s04-estat-sessio-cookies`

**Objectiu**

Demostrar que el sistema pot recordar informació provisional entre peticions per no perdre el fil del recorregut, recuperar un esborrany o unes seleccions temporals i invalidar-les quan ja no facen falta, sense convertir encara este punt en un model complet d’usuari.

En este microrepte hauràs d’usar **sessió i cookie**. No és suficient triar només una de les dues. També hauràs de llegir alguna dada de `$_SERVER` amb una finalitat clara i preparar una base comuna de rutes perquè els `include` / `require` partisquen del mateix lloc.

**Què s’espera**

- Una dada significativa del projecte guardada en sessió: esborrany, pas actual, selecció temporal o informació pendent de confirmar.
- Una cookie pròpia no sensible amb sentit funcional: preferència de vista, últim filtre, idioma, avís vist o última secció consultada.
- Evidència de què es guarda en sessió i de com es recupera.
- Evidència de què es guarda en cookie i de com es recupera.
- Lectura acotada d’alguna dada de `$_SERVER`, com `REQUEST_METHOD`, `HTTP_USER_AGENT` o `REMOTE_ADDR` tractada amb prudència.
- Un fitxer comú de configuració o bootstrap amb una ruta base per fer `include` / `require` de manera estable.
- Recuperació del flux després d’un error, una recàrrega o un pas intermedi.
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
- Explicar què aporta `$_SERVER` i per què no substitueix autenticació.
- Evitar rutes relatives fràgils en els includes.
- Demostrar que el flux es pot reprendre sense dependre encara d’un model complet d’usuari.
- Explicar quan toca netejar o invalidar eixa informació temporal.

**Evidències principals**

- Dada de sessió implementada i recuperada.
- Cookie pròpia implementada, recuperada i observable.
- Dada de `$_SERVER` utilitzada amb finalitat clara.
- Fitxer comú de configuració/bootstrap amb ruta base per als includes.
- Demo de recuperació d’un esborrany, d’una selecció temporal o d’un pas del flux.
- Demo de neteja o invalidació.
- Explicació clara de la frontera entre estat temporal i guardat funcional.
- Commits associats.

**Com es comprovarà**

- Execució en directe de la recuperació del flux.
- Pregunta breu sobre què es guarda en sessió, què queda en cookie, què ve de `$_SERVER`, amb quina finalitat i si queda en client o en servidor.
- Revisió del fitxer comú que defineix la ruta base dels includes.
- Contrast entre el que dius i el que realment passa al flux.

**Què no es penalitza encara**

- No tindre login, rols o autorització.
- No tindre base de dades obligatòria ni persistència formal.
- No haver refactoritzat cap a MVC o arquitectura completa.

### Microrepte 5. Autenticació i funcionalitat protegida

**Autocorrecció associada**

`r2-s05-autenticacio-funcionalitat-protegida`

**Objectiu**

Connectar tot el flux anterior amb una necessitat real del producte: una operació que només es pot executar si es complixen unes condicions d’accés i que deixa clar què passa en el cas autoritzat i en el cas denegat.

En este microrepte també has de mostrar un registre o alta mínima d’usuari. No cal una base de dades ni un sistema complet d’usuaris, però sí cal guardar la contrasenya amb hash, encara que siga en un array, fitxer o estructura equivalent del projecte.

**Què s’espera**

- Registre o alta mínima d’usuari.
- Contrasenya guardada amb `password_hash` o mecanisme equivalent.
- Autenticació real amb verificació de hash, per exemple `password_verify`.
- Comprovació d’accés.
- Una operació del domini protegida, vinculada al projecte base i aplicada sobre dades reals del projecte.
- Un cas autoritzat i un cas denegat.

**Criteris d’avaluació que es treballen**

- **RA4.d - RA4.e**: Implementar autenticació funcional i restringir una acció del sistema de manera real i verificable.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Diferenciar entre estar autenticat i estar autoritzat.
- Explicar on es genera el hash de la contrasenya i on es verifica.
- Evitar guardar contrasenyes en clar.
- Protegir una acció amb valor real dins del projecte, no un exemple genèric.
- Demostrar què passa quan l’acció està permesa i quan no ho està.
- Mostrar que la funcionalitat protegida treballa amb informació que després continua tenint sentit dins del producte.

**Evidències principals**

- Flux d’autenticació funcional.
- Registre o estructura d’usuaris amb contrasenya hashejada.
- Operació protegida real i lligada al projecte base.
- Dada o conjunt de dades reutilitzables dins del projecte.
- Cas positiu.
- Cas negatiu.
- Evidència de la restricció aplicada.

**Com es comprovarà**

- Execució real del cas autoritzat.
- Revisió de l’alta o registre mínim.
- Revisió que la contrasenya no queda guardada en clar.
- Revisió de la verificació del hash en el login.
- Execució real del cas denegat.
- Revisió de si la dada creada o recuperada forma part del flux protegit.
- Pregunta oral sobre en quin punt es bloqueja o es permet l’acció.

**Què no es penalitza encara**

- No tindre rols avançats.
- No tindre registre públic complet, recuperació de contrasenya, OAuth o JWT.
- No tindre arquitectura completa ni persistència formal com a centre.

### Microrepte 6. Mini API d'autenticació per a client

**Autocorrecció associada**

`r2-s06-mini-api-autenticacio-client`

En este microrepte hauràs d'exposar l'autenticació que ja tens en `R2M5` com una mini API consumible des d'un client extern.

Açò no convertix `R2` en el repte d'API. El que es busca és donar a `Desenvolupament Web en Entorn Client` un contracte mínim i estable per poder practicar autenticació amb `fetch`, `curl`, Postman o Insomnia abans d'arribar a `R4`.

Ací sí que hauràs de:

- crear un endpoint `POST /api/login` o equivalent
- rebre credencials i validar-les contra el sistema de `R2M5`
- retornar sempre una resposta `JSON`
- retornar `200` quan les credencials són correctes
- retornar `401` quan són incorrectes o falta autenticació
- generar o retornar un token simple o mecanisme equivalent documentat
- crear una ruta protegida com `GET /api/me`, `GET /api/protected` o equivalent
- llegir el token amb `Authorization: Bearer ...` o mecanisme documentat
- comprovar realment el token en la ruta protegida
- no retornar contrasenyes ni hashes
- provar cas correcte i cas incorrecte amb una eina externa
- documentar el contracte perquè DWEC el puga consumir
- deixar un usuari demo i les limitacions conegudes, incloent CORS si afecta el consum

Este microrepte no vol dir:

- fer una API REST completa
- fer CRUD
- usar OpenAPI
- implementar OAuth
- implementar JWT professional
- fer refresh tokens
- resoldre rols complexos
- substituir el treball propi de `R4`

**Evidències principals**

- Endpoint de login API.
- Resposta `JSON`.
- Codi `200` en cas correcte.
- Codi `401` en cas incorrecte o no autenticat.
- Token simple o mecanisme equivalent.
- Ruta protegida que comprova el token.
- Prova externa amb `curl`, Postman/Insomnia o `fetch`.
- Contracte documentat amb mètode, URL, entrada, headers i resposta.
- Usuari demo i limitacions conegudes.

**Com es comprovarà**

- Execució de `POST /api/login` amb credencials correctes.
- Execució de `POST /api/login` amb credencials incorrectes.
- Execució de la ruta protegida sense token.
- Execució de la ruta protegida amb token vàlid.
- Revisió que no es retornen contrasenyes ni hashes.
- Revisió del contracte perquè una altra persona puga consumir-lo sense mirar el codi.
- Pregunta oral sobre què ha de fer el client quan rep `401`.

**Què no es penalitza encara**

- No tindre una API completa.
- No tindre documentació OpenAPI.
- No tindre JWT professional.
- No tindre refresh tokens.
- No haver resolt CORS si el client encara no el necessita.

### Microrepte 7. Prova, depuració i checkpoint tècnic

**Autocorrecció associada**

`r2-s07-proves-depuracio-checkpoint`

**Objectiu**

Comprovar que el flux complet funciona, que queda registrat amb una checklist o taula simple de proves, que es pot demostrar en una demo breu i que el repte arriba a les fases finals amb una base tècnica clara.

En este microrepte no es demanen encara proves unitàries ni `PHPUnit` com a mínim. Sí que has d’introduir una **prova automàtica lleugera de flux**, encara que siga una comanda `curl`, un script `.sh`, un script PHP senzill o una col·lecció de peticions documentada.

**Què s’espera**

- Checklist o taula simple de casos de prova.
- Prova del cas correcte.
- Prova d’un cas d’error o denegació.
- Revisió d’errors i validacions.
- Comprovació que la informació guardada es pot recuperar o reutilitzar.
- Ús visible d’alguna eina o entorn simple de prova i depuració.
- Almenys una prova automàtica lleugera d’un cas observable del flux.
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
- Automatitzar almenys una comprovació de caixa negra o de flux.
- Explicar per què encara no s’estan demanant proves unitàries completes.
- Deixar rastre del que has provat i del que encara cal millorar.
- Explicar com has organitzat la prova i quins casos has verificat.
- Explicar per què la conservació de dades que has fet és suficient per a `R2`, encara que no siga encara el centre del curs.
- Deixar clar quines parts del codi convé revisar en el microrepte 8.

**Evidències principals**

- Checklist o taula de proves mínimes.
- Cas positiu i cas negatiu documentats.
- Incidències detectades o correccions rellevants.
- Rastre de l’eina o entorn utilitzat per provar o depurar.
- Script, comanda o col·lecció que execute una prova automàtica simple.
- Evidència de reutilització de dades.
- Documentació tècnica actualitzada.
- Demo breu o guia de reproducció del flux.

**Com es comprovarà**

- Execució dels casos documentats.
- Execució o revisió de la prova automàtica lleugera.
- Revisió de l’eina o entorn utilitzat per provar o depurar.
- Contrast entre documentació, repositori i resultat real.
- Defensa tècnica breu sobre el flux complet.

**Què no es penalitza encara**

- No tindre una suite completa de proves automatitzades.
- No tindre proves unitàries ni `PHPUnit`.
- No haver refactoritzat encara el codi.
- No afegir funcionalitats noves si el flux ja està tancat i verificat.

### Microrepte 8. Primera peça testable amb POO i Composer

**Autocorrecció associada**

`r2-s08-primera-peca-testable-poo-composer`

En este microrepte hauràs de convertir una regla, comprovació o càlcul del flux que ja funciona en una classe simple carregada amb Composer i provar-la de manera automàtica.

Este microrepte no substituïx la resta del repte ni convertix `R2` en `R3`.

Ací sí que hauràs de:

- partir d’un flux ja provat en `R2M7`
- crear o ajustar `composer.json`
- configurar autoload per carregar classes pròpies
- crear una classe simple en `src/` o carpeta equivalent
- posar dins de la classe una regla, comprovació o càlcul real del projecte
- evitar que eixa classe depenga directament de `$_POST`, `$_SESSION`, `$_COOKIE` o del codi `HTML`
- escriure una prova unitària mínima amb `PHPUnit`, `Pest` o un script automàtic equivalent
- executar la prova i documentar el resultat
- repetir un cas clau del flux web per comprovar que no s’ha trencat res
- explicar què queda per reorganitzar en `R3`

Este microrepte no vol dir:

- convertir tot el projecte a objectes
- fer una arquitectura `MVC` completa
- usar `ORM`
- migrar a un framework
- consumir una API externa com a mínim obligatori
- substituir el treball propi de `R3`

Si després d’esta peça afegixes més classes, una llibreria externa menuda via Composer o una crida a una API externa, això s’ha d’entendre com a ampliació o pont cap als reptes següents, no com a exigència central per a tot l’alumnat dins de `R2`.

**Evidències principals**

- `composer.json` amb autoload configurat o alternativa equivalent justificada.
- Classe pròpia en `src/` o carpeta equivalent.
- Ús de `vendor/autoload.php` o mecanisme equivalent.
- Prova unitària mínima.
- Execució documentada de la prova.
- Prova de no regressió del flux.
- Nota breu sobre què queda pendent per a `R3`.

**Com es comprovarà**

- Revisió de `composer.json` i de l’autoload.
- Revisió de la classe creada.
- Execució o revisió de la prova unitària.
- Execució d’un cas clau de `R2M7`.
- Pregunta oral sobre què prova la prova unitària i què prova el flux web.

**Què no es penalitza encara**

- No tindre MVC complet.
- No tindre ORM ni migracions.
- No haver passat el projecte a un framework.
- No fer POO completa.
- No consumir API externa.

### Microrepte 9. Persistència mínima amb BBDD en PHP

**Autocorrecció associada**

`r2-s09-persistencia-minima-bbdd-php`

En este microrepte hauràs de fer que una dada significativa del projecte quede guardada en una base de dades i es puga recuperar després.

Este microrepte arriba després de les funcions, l'estat, l'autenticació, les proves i la primera peça testable perquè ara la pregunta és una altra: quina informació del projecte ha de sobreviure més enllà de la sessió o d'un array provisional?

Ací sí que hauràs de:

- triar una dada real del projecte, no una prova artificial
- crear o documentar una taula mínima
- separar la configuració de connexió del codi principal
- evitar pujar secrets reals al repositori
- connectar amb `PDO` o un mecanisme equivalent justificat
- fer una alta amb dades que ja passen per la validació del flux
- fer una lectura posterior, llistat o detall
- usar consultes preparades quan hi haja dades d'usuari
- documentar com crear la BBDD i com provar alta i lectura
- comprovar que el flux principal continua funcionant
- explicar què quedarà per professionalitzar en `R3`

Este microrepte no vol dir:

- convertir el projecte a `Laravel`, `Symfony` o un altre framework
- usar `ORM`
- fer migrations o seeders com a mínim obligatori
- crear una administració completa de BBDD
- modelar moltes taules
- substituir la validació, la sessió o l'autenticació per la BBDD
- guardar contrasenyes en clar

Si ja tens Composer introduït en `R2M8`, pots usar-lo per organitzar millor la connexió o carregar una llibreria menuda com `vlucas/phpdotenv`, però això no és el mínim obligatori. El mínim és entendre i demostrar connexió, alta i lectura amb dades pròpies.

**Evidències principals**

- Taula o script SQL relacionat amb el domini.
- Configuració de connexió separada i sense secrets reals.
- Alta funcional amb dades del flux.
- Lectura funcional de dades persistides.
- Consulta preparada quan entren dades d'usuari.
- Instruccions de reproducció en `README`.
- Prova manual documentada o script simple.
- Nota breu sobre què queda per a `R3`.

**Com es comprovarà**

- Execució d'una alta.
- Consulta posterior de la dada guardada.
- Revisió de la configuració i de l'absència de secrets.
- Revisió de la consulta preparada.
- Pregunta oral sobre la diferència entre sessió, cookie, fitxer provisional i BBDD.

**Què no es penalitza encara**

- No tindre ORM.
- No tindre migrations ni seeders.
- No tindre relacions complexes entre taules.
- No fer una capa de repositori completa.
- No tindre proves automàtiques de BBDD si almenys hi ha prova manual reproduïble.

## Com es reparteixen els criteris dins del repte

Per orientar-te sense convertir el repte en una llista normativa, pots llegir-lo així:

- `RA2` apareix sobretot en el microrepte 2: ací entra la base comuna en `PHP`, la generació de pàgines o respostes amb codi embegut, la sintaxi, les sentències, les directives, les variables, els operadors i els àmbits.
- `RA3` apareix sobretot en els microreptes 1, 3 i 8: formularis, recuperació de dades, comentaris útils, decisions, bucles, arrays, funcions i encapsulació mínima d’una regla en una classe.
- `RA4` apareix sobretot en els microreptes 4, 5, 6, 7 i 8: estat, emmagatzematge en client quan toque, autenticació, funcionalitat protegida, mini API autenticada, prova, depuració, prova unitària inicial i comprovació final del flux.
- `RA6` apareix de manera introductòria en el microrepte 9: connexió a BBDD, alta, lectura, consultes preparades i reproducció mínima abans de treballar migrations, seeders i models en `R3`.

## Pes dels microreptes dins del nucli de R2

La `nota_nucli_R2` no és una mitjana simple de tots els microreptes. Es calcula amb estos pesos per fer seguiment del repte, però cada microrepte genera nota només per al seu **RA avaluat**. Els RA de context poden aparéixer en el producte, però no puntuen en eixe microrepte.

| Microrepte | Focus principal | RA avaluat | CA avaluats | RA de context | Pes dins del nucli |
|---|---|---|---|---|---:|
| `R2M1` | Entrada i validació bàsica | `RA2` | `RA2.a`, `RA2.b`, `RA2.c`, `RA2.d` | `RA3.e`, `RA3.f`, `RA3.g` | `12%` |
| `R2M2` | Processament, reintent i guardat funcional | `RA2` | `RA2.a-h` | `RA3.e`, `RA3.f`, `RA3.g` | `12%` |
| `R2M3` | Lògica, arrays, funcions i llibreria pròpia | `RA3` | `RA3.a`, `RA3.b`, `RA3.c`, `RA3.d` | - | `12%` |
| `R2M4` | Estat, sessió, cookie, `$_SERVER` i includes estables | `RA4` | `RA4.a`, `RA4.b`, `RA4.c` | - | `12%` |
| `R2M5` | Registre, hash, autenticació i operació protegida | `RA4` | `RA4.d`, `RA4.e` | - | `16%` |
| `R2M6` | Mini API d'autenticació per a client | `RA4` | `RA4.d`, `RA4.e` | pont DWEC | `10%` |
| `R2M7` | Proves automàtiques lleugeres, depuració i checkpoint | `RA4` | `RA4.f` | - | `8%` |
| `R2M8` | Primera peça testable amb POO i Composer | `RA3` | `RA3.d`, `RA3.g` | `RA4.f` | `8%` |
| `R2M9` | Persistència mínima amb BBDD en PHP | `RA6` | `RA6.a`, `RA6.b`, `RA6.c`, `RA6.d`, `RA6.f` | `RA3`, `RA4` | `10%` |

El microrepte `R2M5` pesa més perquè concentra la part més significativa del repte: demostrar que l'estat i el control d'accés servixen per protegir una acció real del projecte. `R2M6` pesa prou perquè és el pont intermodular amb DWEC, però queda acotat a autenticació mínima consumible. `R2M9` és obligatori dins del nucli, però queda acotat com a introducció a BBDD abans de `R3`. `R2M7` i `R2M8` pesen menys per separat, però fan verificable i defensable el que s'ha construït.

Si un microrepte posterior depén d'un anterior, el pes no elimina la dependència. Per exemple, un bon `R2M5` necessita un flux d'entrada, processament, lògica i estat suficientment funcional.

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
- Primera peça testable amb POO i Composer.

Això significa que la informació correcta ha de poder continuar viva dins del projecte. El sistema ha de poder aprofitar-la després per mostrar-la, recuperar-la, llistar-la o continuar treballant amb ella.

En `R2M8`, això implica triar una regla o comprovació del flux, encapsular-la en una classe simple, carregar-la amb Composer i provar-la sense navegador amb una prova unitària mínima.

Però això no vol dir que ara toque convertir el repte en un bloc d’accés a dades, modelat complet o arquitectura de persistència.

El contrast de frameworks i la consolidació arquitectònica encara no són el focus principal. No toca reescriure el projecte en `Laravel`, `Symfony` o `NestJS` abans d’hora, ni convertir `R2` en una carrera per veure qui munta la persistència més sofisticada.

Ara toca demostrar una base funcional comuna i defensable. Després arribarà el contrast amb itineraris com `Laravel`, `Symfony` o `NestJS`, i serà en `R3` quan la persistència passarà a tindre un pes més central en l’arquitectura.

`R2M8` ha de servir per fer el primer pas real cap a codi testable amb POO i Composer, no per fer una reescriptura arquitectònica completa.

## Si et bloqueges

Per no perdre el fil del repte:

- Treballa amb un únic actor i una sola operació protegida.
- Tria una dada del domini que després pugues tornar a mostrar o recuperar.
- Tanca primer el flux principal abans d’afegir rols o extres.
- Si hi ha imatge o fitxer com a ampliació, comença per un únic tipus acceptat i una regla de grandària clara.
- No canvies de framework per intentar desbloquejar este repte.
- No compliques la persistència si el flux principal encara no està tancat.
- Assegura’t que el `README` o la documentació equivalent expliquen com reproduir el cas bo, el cas denegat i la reutilització de la dada correcta.

## Checklist final del Repte 2

| Bloc | Evidència mínima | Com es comprovarà |
|---|---|---|
| Traçabilitat | Repositori actualitzat, issue o registre equivalent, commits significatius i registre breu de temps per microrepte. | Revisió de commits, issues, temps registrat i coherència amb el treball presentat. |
| Entrada i validació | Formulari o entrada equivalent, recuperació real de dades, error visible i correcció. | Cas correcte, cas amb error i reintent corregit. |
| Processament | Lògica de servidor aplicada al producte amb variables, condicions, bucles, arrays o funcions. | Execució del flux i preguntes sobre què passa en servidor. |
| Conservació | Informació correcta guardada o conservada i reutilitzada després dins del projecte. | Prova que una dada es pot tornar a mostrar, recuperar o llistar. |
| Estat | Sessió, cookies o mecanisme equivalent si el flux ho necessita. | Prova de recuperació del flux sense perdre informació temporal. |
| Accés protegit | Autenticació funcional i operació real protegida vinculada al domini. | Cas autoritzat i cas denegat. |
| Mini API | Endpoint d'autenticació amb `JSON`, resposta `200`, resposta `401` i ruta protegida. | Peticions documentades i comprovables. |
| R2M8 POO/Composer | `composer.json` o equivalent, classe pròpia en `src/` o carpeta equivalent, prova unitària mínima i resultat documentat. | Execució o revisió de la prova i comprovació que el flux web continua funcionant. |
| BBDD mínima | Connexió, taula, alta, lectura, consultes preparades i instruccions de reproducció. | Alta i lectura d'una dada significativa. |
| Documentació i IA | README o documentació del flux, checklist de proves, incidències i `AI log` si hi ha ús rellevant. | Contrast entre documentació, codi i comportament real. |

En este repte no n’hi ha prou amb dir que el sistema funciona. Les proves han de quedar registrades en una checklist o taula simple amb cas de prova, entrada, resultat esperat, resultat obtingut i incidències.

## Documentació del codi

La documentació ha de ser útil i proporcionada: on es valida, on es processa, on es comprova l'accés, com es conserva la informació i on es tracta un fitxer o imatge si n'hi ha.

PHPDoc és recomanable només en funcions pròpies amb lògica rellevant. No es demana documentar cada variable, omplir fitxers trivials de DocBlocks, generar documentació automàtica completa, convertir tot el projecte a POO completa ni fer de la base de dades el centre del repte.

## Ús de la IA en este repte

La IA et pot ajudar, per exemple, a:

- Proposar estructures de formulari.
- Suggerir validacions.
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

Este repte es considera superat quan la checklist final està completa, el flux es pot provar de punta a punta i pots defensar tècnicament per què la persistència ací és de suport, quina operació has protegit i quina regla o comprovació has convertit en una classe simple.

## Què prepara este repte

Este repte deixa el producte preparat per al següent pas del curs:

- Mantindre viu el flux funcional que has construït ací.
- Reorganitzar millor el codi.
- Millorar l’arquitectura.
- Donar més pes a la persistència quan arribe `R3`.
- Introduir el framework sense canviar de projecte.

`R2M8` ha de servir justament per arribar a `R3` amb una primera peça testable, no per consumir abans d’hora tot el que correspon al repte següent.

## Ampliació 9→10

**Finalitat**  
Millorar la robustesa del flux en servidor i demostrar més control sobre validació, estat, autenticació, proves i mantenibilitat.

**Autocorrecció associada**  
`r2-ampliacio-9-10`

Esta autocorrecció no posa automàticament un `10`. Servix per filtrar si la teua ampliació pot optar a la franja `9→10` i quina revisió docent necessita.

## Com es calcula la nota final de R2

Les autocorreccions dels microreptes `R2M1` a `R2M9` valoren el **nucli obligatori** del repte.

La nota final de `R2` es calcula així:

```text
nota_final_R2 = min(nota_nucli_R2, 9) + ampliacio_9_10
```

On:

- `nota_nucli_R2` és la nota ponderada obtinguda amb el conjunt dels microreptes obligatoris, segons els pesos indicats en la taula anterior;
- `min(nota_nucli_R2, 9)` vol dir que el nucli obligatori pot arribar com a màxim a `9` en la nota final del repte;
- `ampliacio_9_10` pot sumar de `0` a `1` punt només si l’ampliació està validada;
- la nota final mai pot superar `10`.

Per tant, si tens una mitjana de `10` en els microreptes però no presentes una ampliació `9→10` validada, la nota final del repte serà `9`.

No és una baixada de nota: és separar el **nucli obligatori** de la **via d’excel·lència**.

| Situació | Resultat |
|---|---:|
| Nucli de R2 incomplet | no pot optar a `9→10` |
| Nucli de R2 complet, sense ampliació | màxim `9` |
| Nucli de R2 complet, ampliació no vàlida o decorativa | màxim `9` |
| Nucli de R2 complet, ampliació útil però limitada | entre `9` i `9,5`, segons revisió docent |
| Nucli de R2 complet, ampliació integrada, provada i defensada | fins a `10` |

**A quin nivell s'aplica**  
La via `9→10` s'aplica al **Repte 2 complet**, no a cada microrepte de manera independent.

Això vol dir que no has de fer una ampliació diferent per a `R2M1`, una altra per a `R2M2`, una altra per a `R2M3`, etc. Primer has de completar bé el conjunt del repte: entrada, processament, lògica, estat, autenticació, mini API d'autenticació per a client, proves, primera peça testable i persistència mínima amb BBDD.

Després, si el nucli ja està complet i validat, pots presentar **una ampliació integrada** que millore una part important del flux. Pot nàixer d’un microrepte concret, però ha de tindre impacte sobre el repte complet.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

Esta ampliació no compensa mancances del nucli. Si falten evidències obligatòries, proves mínimes, autenticació funcional o defensa del flux, primer cal reparar el repte base.

Tampoc és un requisit per aprovar el repte ni per tancar els microreptes. La seua absència no penalitza mentre el nucli obligatori estiga ben resolt.

**Opcions d'ampliació**
- Reforçar la validació, els errors visibles o la funcionalitat protegida amb un cas crític millor resolt.
- Afegir una llibreria externa menuda amb Composer o una crida a una API externa si té sentit real en el projecte i queda documentat com a ampliació.

**Exemples vàlids en R2**
- Millorar la validació del flux principal amb més casos d’error reals, missatges més útils i prova documentada.
- Afegir una comprovació de seguretat o autorització més fina sobre l’operació protegida.
- Automatitzar millor una bateria de proves del flux amb diversos casos rellevants.
- Usar una llibreria externa menuda amb Composer si resol una necessitat real del projecte i queda explicada.
- Consumir una API externa només si aporta dades útils al flux i no substituïx el treball obligatori de R2.

**Exemples que no compten com a 9→10**
- Afegir pantalles decoratives sense millorar el flux.
- Fer una ampliació que no es pot provar.
- Usar una API externa només perquè parega avançat.
- Afegir codi generat per IA que no pots explicar.
- Presentar una ampliació mentre encara fallen el login, les proves mínimes o l’operació protegida.

**Proposta pròpia**  
També pots proposar una ampliació pròpia si té valor tècnic real i es valida abans amb el professorat.

**Evidències mínimes**
- commit o branca identificable
- justificació tècnica breu
- prova funcional dels casos millorats
- rastre de l'ús assistit per IA, si l'has usat
- referència a l'autocorrecció `r2-ampliacio-9-10` o informe equivalent de candidatura

**Ús assistit per IA**  
La IA et pot ajudar a contrastar validacions, proves, classes o ús de Composer, però no substituïx la teua decisió ni la teua comprovació real.

**Defensa**  
L'ampliació només compta si la pots explicar amb criteri i sense delegació excessiva.

**Regla curta**  
Nucli primer, ampliació després. En `R2`, la via `9→10` és una ampliació integrada del repte complet, no una col·lecció de punts extra per microrepte. Una ampliació no puja a `9→10` si el treball base encara no és funcional, verificable i defensable.
