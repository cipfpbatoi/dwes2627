# Repte 2. Processament, estat i funcionalitat protegida

## Finalitat del repte

Este repte servix per consolidar el flux complet de programació en servidor i fer que el projecte deixe de ser només una base funcional.

Ara el backend ja no ha de limitar-se a rebre una petició i respondre. Ha de ser capaç de:

- Tractar dades de manera real.
- Aplicar lògica bàsica amb sentit.
- Mantindre estat quan faça falta.
- Autenticar usuaris i gestionar sessions quan toque.
- Protegir una primera funcionalitat del projecte.

## Context professional

L’equip ja té una base executable del producte després del `Repte 1`.

Ara toca fer un pas més seriós: convertir eixa base en una funcionalitat real de producte, amb entrada de dades, comportament de servidor coherent i control d’accés.

En un entorn professional, este és el moment en què el sistema deixa de ser només una prova tècnica i comença a gestionar comportament real.

## Què has de construir

En este repte has de fer evolucionar el projecte fins a deixar, com a mínim:

- Un formulari o una entrada de dades real vinculada al projecte triat.
- Recuperació i tractament de la informació en servidor.
- Validació al servidor, visualització d’errors i possibilitat de correcció.
- Lògica bàsica amb decisions, bucles, arrays o funcions quan toque.
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
- El sistema aplica una regla o una decisió.
- Es manté estat quan és necessari.
- El sistema comprova si l’acció està permesa.
- Una funcionalitat del producte queda protegida.
- Es pot demostrar què passa en el cas correcte i en el cas denegat.

No cal que siga un producte gran. Sí que cal que siga un flux complet, explicable i verificable.

Per tant, el formulari no compta com a repte complet si només envia dades i torna un missatge genèric. Ha d’estar integrat en una funcionalitat real del projecte.

## Què no és suficient

En este repte no n’hi ha prou amb:

- Fer només registre, `login` i `logout`.
- Protegir una ruta decorativa o sense valor dins del projecte.
- Confondre estat, autenticació i autorització.
- Validar només el cas feliç.
- Quedar-se en “formulari + validació” sense obrir una funcionalitat del producte.
- Portar una demo que funciona una vegada però no es pot explicar ni reproduir.

## Relació amb el projecte base

La funcionalitat protegida ha d’estar lligada al projecte que ja vas definir al `Repte 1`.

No es considera suficient construir un formulari genèric desconnectat del domini. El que compta és que el flux servisca per crear, modificar, reservar, publicar, pujar o gestionar alguna cosa que tinga sentit dins del teu producte.

La pregunta útil no és només “quin formulari faré?”, sinó “quina acció real del meu projecte vull validar, processar i protegir en servidor?”.

## Exemples breus segons projecte base

- **Plataforma de productes**: alta o edició d’un producte amb nom, preu, categoria i imatge. Si falta un camp o la imatge no compleix tipus o grandària, el sistema ho ha de mostrar, permetre correcció i només deixar publicar o editar si l’usuari té accés.
- **Gestor de reserves o activitats**: creació d’una reserva o d’una activitat amb data, places i possibles dades adjuntes com un cartell o comprovant. El flux ha de validar dades, respondre amb errors clars si alguna cosa no és correcta i protegir l’operació de confirmació o gestió.
- **Plataforma de recursos o publicacions**: alta d’un recurs, notícia o publicació amb títol, descripció i, quan toque, miniatura, imatge o document adjunt. El servidor ha de validar l’entrada, controlar el fitxer i permetre publicar només a qui corresponga.

## Microreptes del Repte 2

Per treballar bé este repte convé dividir-lo en sis peces clares. Això ajuda a no reduir-lo a un simple `login` i a entendre què s’està construint en cada fase.

### Microrepte 1. Formulari base, validació visible i recuperació de dades

**Objectiu**

Construir un punt d’entrada de dades usable i demostrar que el sistema rep la informació correctament, valida el que toca i mostra feedback útil a l’usuari.

**Què s’espera**

- Un formulari funcional o una entrada equivalent.
- Camps amb sentit dins del projecte base.
- Recuperació real de les dades en servidor.
- Validació mínima al servidor.
- Visualització clara dels errors de validació.
- Possibilitat de corregir i tornar a enviar.

**Criteris d’avaluació que es treballen**

- **RA3.e**: Utilitzar formularis o mecanismes equivalents per interactuar amb l’usuari.
- **RA3.f**: Recuperar correctament les dades introduïdes.
- **RA3.g**: Deixar el codi i el flux prou clars per a poder revisar-los.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Fer arribar dades reals al servidor.
- Explicar d’on ix cada dada i com es recupera.
- Relacionar els camps del formulari amb la resposta que genera el sistema.
- Mostrar què passa quan una dada no és vàlida.
- Permetre correcció i reintent dins del mateix flux.

**Evidències principals**

- Formulari funcional o entrada equivalent.
- Recuperació correcta de dades.
- Error de validació visible.
- Reintent amb correcció.
- Commits associats.

**Com es comprovarà**

- Execució real del formulari o de l’entrada equivalent.
- Revisió del flux de dades i dels errors mostrats.
- Pregunta breu sobre com arriba la informació al servidor i com es valida.

### Microrepte 2. Processament bàsic de la petició i tractament d’imatge o fitxer

**Objectiu**

Fer visible el treball bàsic de programació en servidor que transforma les dades rebudes en comportament real i tracta correctament els fitxers o imatges quan formen part del flux.

**Què s’espera**

- Variables amb sentit.
- Operadors i sentències bàsiques ben aplicats.
- Tractament clar de la petició.
- Una resposta generada a partir de les dades rebudes.
- Si hi ha imatge o fitxer en el flux, validació bàsica de tipus i grandària.
- Error interpretable si el fitxer no és correcte.
- Integració funcional del fitxer o la imatge dins del projecte.

**Criteris d’avaluació que es treballen**

- **RA2.c - RA2.h**: Integrar codi de servidor, usar sintaxi, variables, operadors i directives bàsiques, i entendre com afecta això al comportament del sistema.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Explicar què fa el codi quan arriben les dades.
- Demostrar que el tractament no és decoratiu.
- Relacionar les dades d’entrada amb la resposta final.
- Explicar com controles una imatge o un fitxer incorrectes quan el teu flux els usa.

**Evidències principals**

- Codi executable de processament.
- Evidència d’ús real de variables i operadors.
- Demo del tractament correcte.
- Demo d’un error de validació o de fitxer no vàlid quan corresponga.
- Commits o issues relacionades.

**Com es comprovarà**

- Execució del flux amb dades reals.
- Revisió del tram de codi que processa la petició i del control de fitxer o imatge quan existisca.
- Pregunta breu sobre variables, operadors o pas de dades.

### Microrepte 3. Decisions, arrays i funcions aplicades al flux

**Objectiu**

Aplicar lògica bàsica de programació per controlar el comportament del sistema segons les dades i les regles del projecte.

**Què s’espera**

- Almenys una decisió significativa.
- Una repetició o un recorregut quan el flux ho necessite.
- Ús d’arrays o estructures equivalents quan faça falta.
- Una o més funcions útils.
- Lògica connectada al flux real del producte.

**Criteris d’avaluació que es treballen**

- **RA3.a - RA3.d**: Aplicar decisions, repeticions, estructures de dades i funcions dins d’un flux de servidor amb sentit.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Fer que el sistema no responga sempre igual.
- Organitzar millor el comportament amb estructures bàsiques.
- Justificar per què uses una funció, un array o una condició.

**Evidències principals**

- Cas de decisió observable o recorregut significatiu.
- Array o estructura equivalent usada amb sentit.
- Funció o funcions útils.
- Demo del comportament resultant.

**Com es comprovarà**

- Prova del flux amb més d’un cas.
- Revisió de la lògica aplicada.
- Microcanvi en viu sobre una condició o una funció quan siga necessari.

### Microrepte 4. Estat, sessió i/o cookies

**Objectiu**

Demostrar que el sistema pot conservar informació rellevant entre interaccions i que entens què és estat i què no ho és.

**Què s’espera**

- Un mecanisme d’estat real.
- Evidència de què es guarda.
- Recuperació correcta de la informació guardada.
- Neteja o invalidació quan toque.

**Criteris d’avaluació que es treballen**

- **RA4.a - RA4.c**: Identificar i usar mecanismes d’estat, guardar i recuperar informació del client, i entendre quan deixa de ser vàlida.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Explicar què guarda el sistema i per què.
- Distingir entre estat, sessió i altres mecanismes.
- Demostrar que el comportament canvia segons l’estat.

**Evidències principals**

- Mecanisme d’estat implementat.
- Demo de recuperació de la informació.
- Demo de neteja o invalidació.
- Commits associats.

**Com es comprovarà**

- Execució en directe del canvi d’estat.
- Pregunta breu sobre què es guarda, on i amb quina finalitat.
- Contrast entre el que dius i el que realment passa al flux.

### Microrepte 5. Autenticació i primera funcionalitat protegida

**Objectiu**

Connectar tot el flux anterior amb una primera necessitat real del producte: una operació que només es pot executar si es complixen unes condicions d’accés.

**Què s’espera**

- Identificació o entrada d’usuari funcional.
- Autenticació real.
- Comprovació d’accés.
- Una operació del domini protegida i vinculada al projecte base.
- Un cas autoritzat i un cas denegat.

**Criteris d’avaluació que es treballen**

- **RA4.d - RA4.e**: Implementar autenticació funcional i restringir una acció del sistema de manera real i verificable.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Diferenciar entre estar autenticat i estar autoritzat.
- Protegir una acció amb valor real dins del projecte, no un exemple genèric.
- Demostrar què passa quan l’acció està permesa i quan no ho està.

**Evidències principals**

- Flux d’autenticació funcional.
- Operació protegida real i lligada al projecte base.
- Cas positiu.
- Cas negatiu.
- Evidència de la restricció aplicada.

**Com es comprovarà**

- Execució real del cas autoritzat.
- Execució real del cas denegat.
- Pregunta oral sobre en quin punt es bloqueja o es permet l’acció.

### Microrepte 6. Prova, depuració i revisió final del repte

**Objectiu**

Comprovar que el flux complet funciona, que els errors es poden observar i que el repte queda prou net per continuar després.

**Què s’espera**

- Prova del cas correcte.
- Prova d’un cas d’error o denegació.
- Revisió d’errors i validacions.
- Documentació mínima actualitzada.
- Preparació per al checkpoint o la defensa.

**Criteris d’avaluació que es treballen**

- **RA4.f**: Provar, depurar i documentar el comportament real del sistema.

**Què vol dir això en llenguatge clar**

En este microrepte es valorarà si pots:

- Demostrar que el flux funciona de veritat.
- Detectar errors i explicar-los.
- Deixar rastre del que has provat i del que encara cal millorar.

**Evidències principals**

- Registre de proves mínimes.
- Cas positiu i cas negatiu documentats.
- Incidències detectades o correccions rellevants.
- Documentació tècnica actualitzada.

**Com es comprovarà**

- Execució dels casos documentats.
- Contrast entre documentació, repositori i resultat real.
- Defensa tècnica breu sobre el flux complet.

## Criteris que es treballen en este repte

En llenguatge clar, en este repte es treballa sobretot que sigues capaç de:

- Rebre i recuperar dades d’un formulari o entrada equivalent.
- Mostrar errors de validació de manera clara i permetre correcció.
- Aplicar lògica bàsica de servidor amb sentit.
- Validar al servidor les dades i, quan toque, els fitxers o imatges.
- Utilitzar decisions, bucles, arrays o funcions quan realment fan falta.
- Entendre i usar mecanismes d’estat.
- Distingir entre estat, autenticació i autorització.
- Aplicar autenticació funcional.
- Protegir una operació real del domini vinculada al projecte base.
- Provar i documentar el flux complet.

No es tracta de memoritzar noms de funcions o paraules tècniques. Es tracta de demostrar que entens el recorregut complet del que passa al servidor.

## Idea metodològica important d’este repte

Este repte es resol sobre una **base comuna en `PHP`**.

En este moment del curs, la prioritat és consolidar el flux complet en servidor:

- Entrada de dades.
- Processament.
- Lògica bàsica.
- Estat o sessió.
- Autenticació.
- Funcionalitat protegida.

El contrast de frameworks encara no és el focus principal. No toca reescriure el projecte en `Laravel`, `Symfony` o `NestJS` abans d’hora.

Eixe contrast entrarà després, quan el mateix projecte passe a una fase més arquitectònica i més mantenible.

Ara toca demostrar una base funcional comuna i defensable. Després arribarà el contrast amb itineraris com `Laravel`, `Symfony` o `NestJS`.

## Si et bloqueges

Per no perdre el fil del repte:

- Treballa amb un únic actor i una sola operació protegida.
- Tanca primer el flux principal abans d’afegir rols o extres.
- Si hi ha imatge o fitxer, comença per un únic tipus acceptat i una regla de grandària clara.
- No canvies de framework per intentar desbloquejar este repte.
- Assegura’t que el `README` o la documentació equivalent expliquen com reproduir el cas bo i el cas denegat.

## Evidències obligatòries

Per considerar complet el repte, hauràs d’aportar com a mínim:

- Repositori actualitzat.
- Issue principal del repte o registre equivalent.
- Seqüència de commits significativa.
- Formulari funcional o entrada equivalent.
- Recuperació real de dades.
- Error de validació visible i possibilitat de correcció.
- Processament bàsic en servidor.
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
- Detectar errors.
- Proposar casos de prova.
- Ajudar a documentar el flux.

El que no pots delegar és:

- Entendre d’on ix cada dada i on es tracta.
- Distingir entre estat, autenticació i autorització.
- Comprovar que el cas positiu i el negatiu funcionen de veritat.
- Explicar per què una acció queda protegida i una altra no.

Encara que uses IA, es comprovarà igualment si pots validar, adaptar, corregir i defendre el que presentes.

## Errors habituals

Convindria evitar errors com estos:

- Fer només el cas feliç.
- Quedar-se en un formulari genèric sense funcionalitat real de projecte.
- Confondre estat amb autenticació.
- Mostrar un error però no permetre corregir i continuar el flux.
- Acceptar una imatge o un fitxer sense comprovar tipus o grandària.
- Tindre `login` però no una funcionalitat real protegida.
- Mostrar dades sense tractar-les realment.
- Afegir lògica artificial només per complir.
- Portar una solució que no es pot explicar.

## Quan es considera superat

Este repte es considera superat quan:

- El sistema rep i tracta dades en servidor dins d’un flux complet.
- La validació és visible, interpretable i permet correcció.
- Hi ha lògica bàsica aplicada amb sentit.
- Si hi ha imatge o fitxer, el sistema el valida i l’integra amb criteri bàsic.
- Existix una evidència clara de manteniment d’estat.
- L’autenticació o control d’accés és funcional.
- Hi ha una operació real del projecte protegida i vinculada al domini triat.
- Es poden demostrar un cas positiu i un cas negatiu.
- El treball està prou documentat i traçat.
- Pots defendre tècnicament el flux complet.

## Què prepara este repte

Este repte deixa el producte preparat per al següent pas del curs:

- Introduir el framework sense canviar de projecte.
- Reorganitzar millor el codi.
- Millorar l’arquitectura i la persistència.
- Mantindre viva la funcionalitat construïda ací quan entre el contrast de frameworks.
