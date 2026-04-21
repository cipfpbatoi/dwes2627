# Programació d’aula operativa del Repte 2

## Finalitat del document

Esta programació d’aula concreta com desplegar el `Repte 2` en aula real sense separar-lo dels microprojectes que estructuren el repte.

La idea és treballar sobre la base comuna en `PHP` i fer avançar el mateix projecte del `Repte 1` fins a un flux complet amb dades, lògica, estat, autenticació, funcionalitat protegida i prova verificable.

## Dades generals

- Finalitat del repte: consolidar un flux complet de servidor sobre la base comuna en `PHP`, sense entrar encara en el contrast fort de frameworks.
- Duració total: `18 hores`.
- Número de sessions: `6`.
- Duració de cada sessió: `3 hores`.
- Punt de partida: projecte viu del `Repte 1`.
- Punt de tancament: checkpoint final del `Repte 2` en la sessió `6`.

La correspondència de treball és esta:

1. Sessió 1: microprojecte `1` — formulari i validació visible.
2. Sessió 2: microprojecte `2` — processament i guardat funcional.
3. Sessió 3: microprojecte `3` — lògica del flux i regles del projecte.
4. Sessió 4: microprojecte `4` — estat, sessió i/o cookies.
5. Sessió 5: microprojecte `5` — autenticació i funcionalitat protegida.
6. Sessió 6: microprojecte `6` — prova, depuració, documentació mínima i checkpoint.

## Cobertura curricular visible

- `RA2` es treballa sobretot en la sessió `2`, on el professorat fa explícita la base comuna en `PHP`, la generació de resposta i el processament en servidor.
- `RA3` es reforça sobretot en les sessions `1` i `3`, amb formularis, recuperació de dades, decisions, estructures i funcions.
- `RA4` pren més pes en les sessions `4`, `5` i `6`, amb estat, sessió, emmagatzematge en client quan toque, autenticació, funcionalitat protegida, prova i depuració.

## Criteris operatius de desplegament

- Cada sessió ha d’acabar amb una evidència concreta i revisable del tram treballat.
- La prova no es reserva només per a la sessió `6`: en cada sessió s’ha de verificar almenys un cas funcional o un error controlat.
- La persistència es treballa com a suport funcional del flux. Si apareix base de dades, no ha de desplaçar el focus metodològic del repte.
- La funcionalitat protegida ha d’estar vinculada al projecte real de l’alumnat, no a un exemple genèric de `login`.
- El `README` o la documentació equivalent s’ha d’actualitzar al llarg del repte, no només al final.

## Materials comuns de treball

- Document del [Repte 2](repte_02.md).
- [Checklist de proves del Repte 2](../03_com_s_avalua/checklists_de_prova.md).
- Repositori actualitzat del projecte.
- Entorn local de treball amb `PHP`, servidor local o equivalent i navegador.
- Terminal, eines de depuració del navegador i suport mínim per revisar peticions, sessions i errors.

## Ritme base de cada sessió

- `0:00 - 0:20`: arranque, recordatori del microprojecte i revisió del punt de partida.
- `0:20 - 0:50`: explicació docent o modelatge curt sobre el focus tècnic del dia.
- `0:50 - 2:20`: taller d’implementació amb seguiment del professorat.
- `2:20 - 2:45`: contrast, proves, depuració i revisió d’evidències.
- `2:45 - 3:00`: tancament de sessió, commit orientatiu i pas següent.

## Sessió 1. Formulari i validació visible

**Microprojecte associat**

- `1`. Formulari i validació visible.

**Objectiu de la sessió**

- Delimitar una acció real del projecte.
- Construir el punt d’entrada de dades.
- Fer visible la validació en servidor i el reintent.

**Què explica el professorat**

- Com triar una única operació del projecte que tinga recorregut fins a la funcionalitat protegida.
- Diferència entre enviar dades, validar-les i continuar el flux.
- Criteris mínims de validació visible, missatges d’error i conservació de dades útils després d’un error.

**Què fa l’alumnat**

- Defineix l’acció del domini que treballarà durant el repte.
- Identifica camps obligatoris, opcionals i regles mínimes de validació.
- Implementa formulari o entrada equivalent.
- Recupera dades en servidor, mostra errors i prova un reenviament corregit.

**Materials necessaris**

- Materials comuns del repte.
- Esquema simple dels camps del projecte.
- Exemple de dades vàlides i invàlides per provar el formulari.

**Evidències esperades**

- Formulari funcional o entrada equivalent.
- Error visible de validació.
- Reenviament corregit sense perdre el fil del flux.
- Primer commit o registre de treball del tram.

**Tancament de sessió**

- Mini demo amb un cas incorrecte i el mateix cas corregit.
- Anotació curta al `README` o a la guia de reproducció sobre com provar este primer tram.

## Sessió 2. Processament i guardat funcional

**Microprojecte associat**

- `2`. Processament i guardat funcional.

**Objectiu de la sessió**

- Fer visible el processament en servidor.
- Guardar la informació correcta amb un mecanisme simple.
- Tornar a mostrar o reutilitzar la dada dins del projecte.

**Què explica el professorat**

- Com la base comuna en `PHP` genera resposta i on viu el codi de servidor.
- Ús mínim de variables, operadors, sentències i àmbits dins del flux.
- Diferència entre guardar de manera funcional i convertir el repte en un bloc d’accés a dades.
- Tractament bàsic de fitxer o imatge, només si el flux del projecte ho necessita.

**Què fa l’alumnat**

- Processa en servidor una entrada que ja ha passat la validació.
- Aplica un mecanisme simple de guardat o persistència funcional.
- Reutilitza la dada creada en una vista, llistat, detall o resposta equivalent.
- Si toca, valida tipus i grandària d’un fitxer o imatge.

**Materials necessaris**

- Materials comuns del repte.
- Suport de guardat triat per a cada projecte.
- Mostres de dades o fitxers permesos i no permesos, si aplica.

**Evidències esperades**

- Flux de processament executable.
- Dada correcta guardada i recuperable.
- Primera reutilització visible dins del projecte.
- Explicació mínima del mecanisme triat per guardar la informació.

**Tancament de sessió**

- Revisió ràpida de quin punt del codi processa, guarda i torna a mostrar la dada.
- Verificació que, si hi ha base de dades, queda clar que ací és suport funcional i no el focus central del repte.

## Sessió 3. Lògica del flux i regles del projecte

**Microprojecte associat**

- `3`. Lògica del flux i regles del projecte.

**Objectiu de la sessió**

- Fer que el backend prenga decisions amb sentit.
- Incorporar almenys una regla del projecte.
- Tancar un checkpoint curt de coherència del flux.

**Què explica el professorat**

- Com passar de rebre i guardar dades a aplicar regles reals del projecte.
- Quan convé usar decisions, repeticions, arrays o funcions pròpies.
- Com evitar una lògica ornamental que no canvia cap comportament real.

**Què fa l’alumnat**

- Implementa una regla significativa del projecte.
- Usa una funció pròpia, una estructura de dades o un recorregut quan siga necessari.
- Prova almenys dos casos que mostren comportaments diferents.
- Ajusta el flux perquè la regla treballe amb dades ja guardades o recuperades.

**Materials necessaris**

- Materials comuns del repte.
- Casos de prova breus per a la regla implementada.
- Notes o esquema del domini del projecte.

**Evidències esperades**

- Decisió o regla observable en execució.
- Ús funcional de funcions, arrays o recorreguts.
- Canvi visible de comportament segons les dades.
- Checkpoint curt del flux complet fins ací.

**Tancament de sessió**

- Checkpoint intern de `10-15` minuts per mostrar el recorregut dels microprojectes `1`, `2` i `3`.
- Ajust de tasques pendents abans d’entrar en estat i sessió.

## Sessió 4. Estat, sessió i/o cookies

**Microprojecte associat**

- `4`. Estat, sessió i/o cookies per conservar el flux.

**Objectiu de la sessió**

- Mantindre informació provisional entre peticions.
- Recuperar el flux després d’un error, una recàrrega o un pas intermedi.
- Distingir estat temporal de guardat funcional del domini.

**Què explica el professorat**

- Diferència entre estat, sessió, cookies i altres mecanismes equivalents.
- Què convé guardar en servidor, què pot quedar en client i què no hauria d’anar en cada lloc.
- Neteja o invalidació de l’estat quan el flux canvia o es tanca.

**Què fa l’alumnat**

- Implementa un mecanisme d’estat temporal coherent amb el seu flux.
- Recupera esborrany, selecció temporal o pas actual.
- Prova la recuperació després d’un error, una recàrrega o una navegació intermèdia.
- Neteja o invalida la informació temporal quan deixa de tindre sentit.

**Materials necessaris**

- Materials comuns del repte.
- Navegador amb eines de desenvolupament.
- Casos de prova per comprovar recuperació i invalidació.

**Evidències esperades**

- Recuperació funcional del flux sense perdre informació provisional.
- Explicació clara de què queda en client i què queda en servidor.
- Evidència de neteja o invalidació.
- Anotació de prova afegida a la checklist o al `README`.

**Tancament de sessió**

- Demo curta de creació, recuperació i invalidació de l’estat.
- Verificació oral de la frontera entre estat temporal i persistència funcional.

## Sessió 5. Autenticació i funcionalitat protegida

**Microprojecte associat**

- `5`. Autenticació i funcionalitat protegida.

**Objectiu de la sessió**

- Connectar el flux anterior amb una necessitat real d’accés.
- Diferenciar autenticació i autorització.
- Protegir una operació del domini construïda sobre dades reals del projecte.

**Què explica el professorat**

- Diferència entre estar autenticat i estar autoritzat.
- Com lligar la protecció a una acció amb valor real del projecte.
- Com preparar un cas autoritzat i un cas denegat sense quedar-se en una ruta decorativa.

**Què fa l’alumnat**

- Implementa l’autenticació funcional mínima que necessita el seu flux.
- Protegix una acció real del projecte.
- Prova el cas autoritzat i el cas denegat.
- Revisa que la funcionalitat protegida treballe amb dades creades o recuperades en sessions anteriors.

**Materials necessaris**

- Materials comuns del repte.
- Credencials o usuaris de prova.
- Guia curta de reproducció per al cas autoritzat i el cas denegat.

**Evidències esperades**

- Flux d’autenticació executable.
- Operació protegida lligada al domini.
- Prova visible de denegació i prova visible d’autorització.
- Commit o registre del tram protegit.

**Tancament de sessió**

- Revisió docent de la funcionalitat protegida i del seu valor real dins del projecte.
- Ajust final del que haurà d’entrar en la checklist i en la demo del checkpoint.

## Sessió 6. Prova, depuració, documentació mínima i checkpoint

**Microprojecte associat**

- `6`. Prova, depuració, documentació mínima i revisió final.

**Objectiu de la sessió**

- Tancar el flux complet del repte.
- Deixar proves mínimes registrades.
- Preparar una demo breu i defensable.

**Què explica el professorat**

- Com usar la checklist de proves per recórrer tot el flux.
- Quins casos mínims s’han de poder mostrar al checkpoint final.
- Com deixar una documentació curta però útil al `README` o en la documentació del projecte.

**Què fa l’alumnat**

- Executa els casos mínims del repte de punta a punta.
- Revisa errors, logs, missatges i incidències detectades.
- Actualitza checklist, `README` i guia de reproducció.
- Prepara una defensa tècnica breu del recorregut complet.

**Materials necessaris**

- Materials comuns del repte.
- Checklist de proves completada o en procés de tancament.
- Notes de depuració i registre d’incidències.

**Evidències esperades**

- Checklist o taula simple de proves.
- Cas positiu i cas negatiu registrats.
- Rastre d’eina o entorn de depuració utilitzat.
- `README` o documentació equivalent actualitzada.
- Demo breu reproduïble del flux complet.

**Tancament de sessió**

- Checkpoint final del `Repte 2`.
- Revisió conjunta entre finalitat del repte, microprojectes, `RA2`, `RA3`, `RA4` i seqüència de proves.

## Checkpoint final i criteris de tancament

En acabar la sessió `6`, el professorat hauria de poder comprovar:

- Que el flux complet es pot executar sense salts artificials.
- Que hi ha un cas de validació visible, un cas autoritzat i un cas denegat.
- Que la informació correcta es guarda i es reutilitza dins del projecte.
- Que l’estat temporal no es confon amb la persistència del domini.
- Que l’autenticació protegix una acció real i no només una pantalla decorativa.
- Que la documentació mínima permet reproduir el recorregut.

Si algun tram no queda tancat, el tancament del repte ha de deixar clar quin microprojecte queda feble i quina correcció concreta falta per reobrir-lo.
