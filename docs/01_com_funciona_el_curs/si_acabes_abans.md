# Si acabes abans un microrepte

Acabar el mínim abans de temps no canvia el que s’avalua. Usa el temps restant per aprofundir en el microrepte actual: comprova més casos, compara una alternativa, millora la traçabilitat o prepara una modificació que pugues explicar en directe.

Estes propostes són **opcionals**:

- no penalitzen qui no les faça;
- no substituïxen cap evidència obligatòria;
- no permeten delegar en la IA parts que continuen sent treball propi;
- no són l’[ampliació global 9→10](../ampliacions-excellencia.md), que té una validació separada;
- no s’han d’usar per avançar continguts del microrepte següent.

Tria una proposta amb el professorat o adapta-la als errors i decisions del teu projecte. Normalment ha de poder completar-se en `20–30 minuts`. Deixa una evidència curta: cas provat i resultat, comparació breu, captura, commit menut o explicació en el `README.md`.

## Repte 1

### R1M1. Model client/servidor i decisió tècnica inicial

- **Pots aprofundir en:** comparar el stack preferent amb una alternativa mitjançant tres criteris mesurables, o dibuixar un segon flux client/servidor del producte.
- **Evidència curta:** taula de contrast i una conclusió pròpia que indique quina dada podria fer canviar la decisió en `R3`.
- **No avances encara:** instal·lació de frameworks, autenticació o persistència.

### R1M2. Entorn executable i landing inicial

- **Pots aprofundir en:** provar l’arrancada des de zero, afegir un `healthcheck` complementari o comprovar què passa si falta una variable d’entorn no secreta.
- **Evidència curta:** ordre executada, resultat observat i una millora concreta del `README.md`.
- **No avances encara:** formularis processats, sessions o BBDD funcional.

## Repte 2

### R2M1. Entrada de dades i validació bàsica

- **Pots aprofundir en:** provar camp absent, buit, amb espais i valor límit, o revisar que el missatge d’error siga útil i no revele informació tècnica.
- **Evidència curta:** taula amb entrada, resultat esperat i resultat observat.
- **No avances encara:** conservació completa de dades, guardat funcional o múltiples errors acumulats.

### R2M2. Processament, reintent i guardat funcional

- **Pots aprofundir en:** conservar només les dades aprofitables, evitar duplicats en un reenviament o comparar dos mecanismes simples de guardat.
- **Evidència curta:** un cas de reintent i un cas correcte reproduïbles, amb el canvi respecte de `R2M1`.
- **No avances encara:** sessió, autenticació o BBDD obligatòria.

### R2M3. Lògica del flux i regles del projecte

- **Pots aprofundir en:** afegir un cas límit a la regla, acumular errors en un array o extraure una decisió repetida a una funció pròpia.
- **Evidència curta:** exemples d’entrada que recorren tres branques diferents i explicació de la regla que decidix cada resultat.
- **No avances encara:** estat de sessió o autenticació.

### R2M4. Estat, sessió i cookies

- **Pots aprofundir en:** comprovar expiració, absència o manipulació d’una cookie, o justificar quina dada no s’ha de guardar al client.
- **Evidència curta:** seqüència de dues o tres peticions amb l’estat abans i després.
- **No avances encara:** login complet o protecció de permisos.

### R2M5. Autenticació i funcionalitat protegida

- **Pots aprofundir en:** provar credencial correcta, incorrecta i sessió absent, regenerar l’identificador de sessió o revisar que una URL directa també quede protegida.
- **Evidència curta:** matriu d’accés amb estat inicial, acció i resultat observat.
- **No avances encara:** tokens d’API, rols complexos o OAuth.

### R2M6. Mini API d’autenticació per a client

- **Pots aprofundir en:** distingir errors `400`, `401` i `405`, comprovar el `Content-Type` o definir una resposta JSON coherent per a credencials incorrectes.
- **Evidència curta:** tres peticions reproduïbles amb codi HTTP i cos real.
- **No avances encara:** API completa del producte, OAuth o consum avançat des d’un frontend.

### R2M7. Proves, depuració i checkpoint tècnic

- **Pots aprofundir en:** convertir una comprovació manual repetida en una prova executable o reproduir i documentar una incidència real fins trobar-ne la causa.
- **Evidència curta:** prova que falla abans del canvi i passa després, o registre de depuració amb hipòtesi i conclusió.
- **No avances encara:** reestructuració completa amb framework.

### R2M8. Primera peça testable amb POO i dependències

- **Pots aprofundir en:** afegir un segon cas unitari, provar una excepció o comparar la dependència directa amb una versió injectada de manera simple.
- **Evidència curta:** ordre de prova, resultat i explicació de per què la classe es pot provar sense navegador.
- **No avances encara:** arquitectura MVC completa, contenidor de dependències o ORM.

### R2M9. Persistència mínima amb BBDD

- **Pots aprofundir en:** provar una restricció, usar una transacció curta o separar la configuració de connexió sense exposar secrets.
- **Evidència curta:** alta, lectura i un cas d’error reproduïble amb l’estat final de les dades.
- **No avances encara:** migració completa a framework o modelatge avançat de totes les entitats.

## Repte 3

### R3M1. Arrencada del nou projecte

- **Pots aprofundir en:** comprovar una instal·lació neta, documentar una variable d’entorn o comparar on situa cada stack la ruta, el controlador i la vista mínima.
- **Evidència curta:** checklist d’arrancada neta i esquema abans/després respecte de `R2`.
- **No avances encara:** migracions completes ni casos d’ús sencers.

### R3M2. Persistència mínima

- **Pots aprofundir en:** afegir una restricció útil, fer els seeders idempotents o preparar dos conjunts de dades que representen casos diferents.
- **Evidència curta:** reconstrucció de BBDD des de zero i consulta que confirme les dades esperades.
- **No avances encara:** implementar el cas d’ús complet de `R3M3`.

### R3M3. Primer cas d’ús complet

- **Pots aprofundir en:** provar un camí alternatiu, revisar la separació de responsabilitats o eliminar una duplicació detectada en el flux.
- **Evidència curta:** recorregut feliç i un cas incorrecte, amb la capa que resol cada pas.
- **No avances encara:** un segon cas d’ús independent.

### R3M4. Segon cas d’ús o ampliació funcional

- **Pots aprofundir en:** connectar millor els dos fluxos, afegir una regla de domini rellevant o comprovar un canvi d’estat no permés.
- **Evidència curta:** estat inicial, acció, estat final i regla que impedix el cas incorrecte.
- **No avances encara:** autenticació o autorització de `R3M5` si encara no formen part del flux.

### R3M5. Autenticació, autorització i middleware

- **Pots aprofundir en:** provar accés anònim, autenticat sense permís i autoritzat, o centralitzar una comprovació repetida en el mecanisme propi del framework.
- **Evidència curta:** matriu d’identitat, permís, resposta i capa que pren la decisió.
- **No avances encara:** sistema complet de rols o permisos administrables.

### R3M6. Qualitat i estabilització

- **Pots aprofundir en:** afegir una prova de regressió per un error real, revisar logs i missatges d’error o mesurar i reduir una duplicació concreta.
- **Evidència curta:** problema inicial, canvi acotat i prova que evita que reaparega.
- **No avances encara:** funcionalitats noves que amplien l’abast del producte.

### R3M7. Tancament tècnic

- **Pots aprofundir en:** provar el `README.md` en una còpia neta, preparar una decisió arquitectònica breu o assajar una modificació sorpresa de cinc minuts.
- **Evidència curta:** incidència trobada durant l’assaig i correcció documental o tècnica aplicada.
- **No avances encara:** dissenyar o implementar l’API de `R4`.

## Repte 4

### R4M1. Disseny del contracte del servei

- **Pots aprofundir en:** afegir un cas d’error al contracte, comparar dos codis HTTP possibles o revisar consistència de noms i formats entre endpoints.
- **Evidència curta:** decisió de contracte amb alternativa descartada i exemple de request/response.
- **No avances encara:** implementar endpoints complets.

### R4M2. Primer endpoint funcional

- **Pots aprofundir en:** provar dades inexistents, entrada mal formada o resposta buida, o comprovar capçaleres i serialització.
- **Evidència curta:** petició correcta i dos casos incorrectes amb resposta real.
- **No avances encara:** autenticació completa o consum des d’un client final.

### R4M3. Protecció de l’API

- **Pots aprofundir en:** provar token absent, incorrecte, caducat o reutilitzat, o comprovar que el secret no apareix en logs ni repositori.
- **Evidència curta:** matriu de credencials i respostes sense mostrar secrets reals.
- **No avances encara:** OAuth, refresh tokens o gestió complexa de permisos.

### R4M4. Consum real del servei

- **Pots aprofundir en:** reproduir un timeout o error del servei, comparar dos clients o evitar que una dada invàlida trenque la presentació.
- **Evidència curta:** petició, tractament de la resposta i comportament observable davant d’un error.
- **No avances encara:** integració amb una font externa de `R5`.

### R4M5. Documentació i prova del servei

- **Pots aprofundir en:** executar la documentació des de zero, automatitzar una col·lecció curta o comprovar que exemples i contracte coincidixen amb l’API real.
- **Evidència curta:** informe breu de discrepància trobada i correcció aplicada.
- **No avances encara:** funcionalitat híbrida ni dependència externa.

## Repte 5

### R5M1. Selecció de font externa i disseny de la integració

- **Pots aprofundir en:** comparar dues fonts amb criteris de disponibilitat, límits, autenticació i valor per al producte, o definir una alternativa de contingència.
- **Evidència curta:** taula de decisió i risc principal que cal validar.
- **No avances encara:** implementar la connexió completa.

### R5M2. Connexió amb la font externa

- **Pots aprofundir en:** provar credencial absent, timeout o resposta no correcta, o revisar que els secrets queden fora del repositori i dels logs.
- **Evidència curta:** connexió correcta i un error controlat amb dades sensibles ocultes.
- **No avances encara:** mapping complet o integració en la interfície final.

### R5M3. Mapping, transformació i valor afegit

- **Pots aprofundir en:** tractar camps absents, formats inesperats o duplicats, o justificar una transformació amb valor real per al domini.
- **Evidència curta:** tres mostres d’entrada externa i eixida interna esperada.
- **No avances encara:** integrar tota la funcionalitat híbrida en el producte.

### R5M4. Funcionalitat híbrida integrada

- **Pots aprofundir en:** definir degradació quan la font falla, afegir memòria cau curta o comprovar que l’usuari distingix dades pròpies i externes.
- **Evidència curta:** recorregut normal i recorregut amb dependència externa no disponible.
- **No avances encara:** redissenyar tot el producte o afegir una segona integració.

### R5M5. Prova, documentació i defensa

- **Pots aprofundir en:** fer una prova de principi a fi en entorn net, preparar una modificació sorpresa o revisar que la documentació no revele secrets ni depenga de passos ocults.
- **Evidència curta:** guió de defensa, incidència detectada i millora final comprovada.
- **No avances encara:** funcionalitats noves que no pugues provar i defensar amb garanties.

## Com es comprovarà una extensió curta

El professorat pot demanar-te una d’estes accions:

- explicar per què has triat eixa extensió;
- reproduir el cas provat;
- modificar una dada o condició i predir el resultat;
- identificar què has fet tu i quina ajuda has rebut;
- retirar l’extensió si posa en risc el mínim del microrepte.

Si l’extensió no funciona, això no ha de perjudicar un nucli que ja estava complet, sempre que quede separada, documentada i no trenque el comportament obligatori.
