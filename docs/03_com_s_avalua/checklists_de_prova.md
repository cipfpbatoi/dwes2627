# Checklist de proves del Repte 2

Esta plantilla et servix per deixar rastre de les proves del `Repte 2`.

No substituïx la demo ni la defensa tècnica, però sí que t’ajuda a provar el flux complet i a explicar què funciona, què falla i què has corregit.

Si una part del teu flux no aplica, marca-la com a `No aplica` i justifica-ho breument. Si tens més casos, afig-los.

## 1. Dades del repte

| Camp | Valor |
|---|---|
| Projecte |  |
| Nom de l’alumne/a |  |
| Data de revisió |  |
| Flux funcional provat |  |

## 2. Proves del formulari

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Formulari buit | No s’ompli cap camp | El sistema no processa i mostra errors visibles |  |  |
| Camp obligatori absent | Falta un camp clau | El sistema marca l’error i no accepta l’enviament |  |  |
| Format incorrecte | Email, data, preu o altre camp amb format no vàlid | El sistema rebutja la dada i mostra un missatge clar |  |  |
| Dades correctes | Tots els camps compleixen el mínim exigit | El sistema accepta l’enviament i passa al següent tram del flux |  |  |

## 3. Proves de validació visible

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Error visible en pantalla | Dada no vàlida | L’error es veu de manera clara i útil per a l’usuari |  |  |
| Conservació de dades útils després d’error | Formulari amb un error i la resta correcta | Es mantenen les dades útils i només cal corregir el que falla |  |  |
| Correcció i reenviament | Formulari primer incorrecte i després corregit | El segon enviament funciona sense perdre el flux |  |  |

## 4. Proves de processament en servidor

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Dades correctes processades | Entrada vàlida | El servidor tracta la informació i genera la resposta esperada |  |  |
| Dades incorrectes rebutjades | Entrada inconsistent o manipulada | El servidor rebutja la petició i no continua el flux |  |  |
| Aplicació de lògica del flux o del negoci | Cas amb condició, regla o càlcul | La decisió, funció, array o bucle afecta el resultat de manera visible |  |  |

## 5. Proves de conservació o persistència funcional

En el `Repte 2` la informació s’ha de poder conservar i reutilitzar.

Això es pot resoldre amb persistència simple o amb base de dades si així ho has decidit, però la persistència no és encara el focus principal del repte. El que compta és que el flux tinga sentit i que la dada correcta es puga tornar a usar.

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Dada guardada | Enviament correcte | La informació queda conservada amb el mecanisme triat |  |  |
| Recuperació posterior | Tornar a carregar el flux o consultar el recurs | La dada reapareix i continua sent usable |  |  |
| Llistat o visualització del recurs | Accés a la vista, llistat o detall | El recurs creat es veu correctament |  |  |

## 6. Proves de fitxer o imatge, si n’hi ha

Si el teu flux no treballa amb fitxers o imatges, marca esta secció com a `No aplica`.

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Fitxer vàlid | Tipus i grandària permesos | El fitxer s’accepta i queda associat al recurs |  |  |
| Tipus no permés | Extensió o tipus incorrecte | El sistema rebutja el fitxer i mostra l’error |  |  |
| Grandària no permesa | Fitxer massa gran | El sistema bloqueja la pujada i informa del problema |  |  |
| Associació del fitxer al recurs | Recurs creat o editat amb fitxer vàlid | El fitxer queda vinculat al recurs correcte |  |  |

## 7. Proves d’estat i sessió

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Estat creat | Inici del flux o acció que crea estat | El sistema guarda la informació necessària |  |  |
| Estat recuperat | Nou pas del flux o recàrrega | El sistema recupera l’estat i manté el comportament esperat |  |  |
| Estat invalidat | Tancament, logout o neteja | L’estat deixa de ser vàlid i el sistema ho reflectix |  |  |

## 8. Proves d’autenticació i funcionalitat protegida

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Accés autoritzat | Usuari amb sessió vàlida | La funcionalitat protegida es pot executar |  |  |
| Accés denegat | Usuari sense permís o sense sessió | El sistema bloqueja l’accés de manera clara |  |  |
| Sessió vàlida | Sessió iniciada correctament | El sistema reconeix l’usuari i manté l’accés mentre toca |  |  |
| Tancament o invalidació | Logout o expiració | La funcionalitat protegida deixa d’estar disponible |  |  |

## 9. Proves d’error i depuració

| Cas de prova | Entrada | Resultat esperat | Resultat obtingut | Incidències detectades |
|---|---|---|---|---|
| Error controlat de formulari | Camp buit, absent o mal format | Error visible i flux controlat |  |  |
| Error controlat d’accés | Acció protegida sense permís | Resposta clara i sense continuar el flux |  |  |
| Error controlat de fitxer | Tipus o grandària no vàlids | Rebuig controlat i missatge entenedor |  |  |

Eina o entorn utilitzat per provar o depurar:

- navegador
- terminal
- `curl`
- col·lecció de peticions
- registres o logs
- altre:  ______________________

## 10. Resum final de la prova

### Casos que funcionen correctament

-  ______________________
-  ______________________
-  ______________________

### Errors detectats

-  ______________________
-  ______________________
-  ______________________

### Correccions aplicades

-  ______________________
-  ______________________
-  ______________________

### Errors pendents

-  ______________________
-  ______________________
-  ______________________

### Valoració final

- [ ] El flux principal està provat de punta a punta.
- [ ] Els errors de validació es mostren de manera visible.
- [ ] La informació correcta es conserva i es pot reutilitzar.
- [ ] La funcionalitat protegida té prova autoritzada i prova denegada.
- [ ] La documentació i les proves em deixen preparada la demo i la defensa.
