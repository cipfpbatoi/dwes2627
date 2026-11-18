# Repte 3. Reconstrucció en framework i persistència real

## Finalitat del repte

En `R3` deixes de treballar sobre la base comuna de `R2` i reconstrueixes el projecte sobre un framework.

No es demana migrar tota l'aplicació antiga. Es demana construir una base real, arrancable i verificable en `Laravel`, `Symfony`, `Django` o `NestJS`, amb base de dades real i `2` casos d'ús funcionals.

La idea central és:

> Reconstrucció del projecte en framework amb base operativa real, persistència mínima real i primers fluxos funcionals verificables.

## Vista ràpida

| Bloc | Què has de deixar fet |
|---|---|
| Projecte base | Framework arrancable amb Docker, configuració mínima i `.env.example` o instruccions equivalents. |
| Arquitectura | Rutes, controladors o equivalents, vistes/plantilles/respostes i capa de dades pròpia de l'stack. |
| Persistència | BBDD real, migracions o mecanisme equivalent, fixtures/seeders o script de dades inicials. |
| Criteri tècnic | Comparació curta del framework triat i esquema abans/després de responsabilitats respecte a `R2`. |
| Fluxos | `2` casos d'ús end-to-end, almenys `1` migrat de `R2` i almenys `1` server-rendered amb `HTML` generat en servidor. |
| Accés i qualitat | Autenticació, acció protegida, autorització amb cas autoritzat i denegat, validació, errors i proves mínimes. |
| Documentació | `README.md` curt d'arrencada, ús i mapa del que queda pendent. |

## Què no es demana

No es demana:

- migrar tota l'aplicació de `R2`
- copiar fitxers antics dins del framework i prou
- fer teoria sobre `MVC` sense producte executable
- crear només un esquelet del framework
- usar BBDD amb dades carregades a mà
- fer un segon flux que siga només una pantalla o un canvi visual
- formular-ho tot com a `API` o JSON sense cap pàgina renderitzada en servidor

El codi de `R2` és punt de partida i referència. La nova via principal del projecte en `R3` és el framework.

## Stacks base

Els stacks base són:

- `Laravel`
- `Symfony`
- `Django`
- `NestJS`

NestJS funciona sobre `Node.js`, que és l'entorn d'execució, no un framework. La nomenclatura canvia segons l'stack, però el criteri és el mateix: ruta, controlador o manejador, capa de dades, persistència real, resposta visible, validació, error i prova. En almenys un flux, la resposta visible ha de ser una pàgina o plantilla renderitzada pel servidor.

Per evitar confusions, estes equivalències compten igual si estan ben aplicades:

| Criteri comú | Laravel | Symfony | Django | NestJS |
|---|---|---|---|---|
| Ruta | route | route | URLconf | controller route |
| Controlador | controller | controller | view | controller |
| Vista/resposta | Blade/view | Twig/Response | plantilles Django/Response | template/response o resposta server-rendered equivalent |
| Model/capa de dades | Eloquent model | Doctrine entity/repository | model Django ORM | Prisma/TypeORM entity, schema o service |
| Migració d'esquema | migration | Doctrine migration | migrations de Django | Prisma/TypeORM migration o equivalent |
| Dades inicials | seeder | fixture | fixtures o management command | seed script o seeder |
| Validació | Form Request/validator | Validator/Form | Forms i validators | DTO + class-validator o equivalent |
| Protecció d'accés | middleware, guard, policy | security, voter, access control | autenticació i permisos Django | guard, middleware, decorator o pipe |
| Configuració | `.env` | `.env` | `settings.py` i variables d'entorn | `.env` |

!!! info "Si tries Node.js en R3M1"
    `Node.js` és l'entorn d'execució; el framework base d'este itinerari és
    `NestJS`. En `R3M1` has de deixar el projecte arrancable i mostrar el
    recorregut mínim equivalent al dels altres stacks:

    - `main.ts` arranca l'aplicació i un mòdul registra el controlador;
    - un controlador de NestJS definix la ruta inicial o el `healthcheck`;
    - la ruta genera una resposta visible i comprovable des del navegador o el
      terminal;
    - Docker o l'entorn equivalent, `.env.example`, la comparació de stack,
      l'esquema abans/després i els dos casos d'ús queden documentats.

    Pots separar la preparació de la resposta en un `service` i afegir una prova
    HTTP si t'ajuda a explicar el recorregut, però no són requisits nous
    d'`R3M1`. Encara no toca implementar BBDD, autenticació ni els fluxos
    complets. Consulta l'[exemple mínim de NestJS](../04_materials/repte_03/mini_apunts_frameworks.md#5-la-mateixa-idea-amb-nestjs).

## Microreptes

`R3` es treballa en 7 microreptes:

| Microrepte | Producte principal | Autocorrecció | Taller relacionat |
|---|---|---|---|
| `R3M1` Arrencada del nou projecte | Docker, framework, `.env`, ruta mínima, comparació de stack i esquema abans/després | `r3-s01-arrencada-nou-projecte` | [MT07. Migrar un cas d'ús a framework](../recursos/Tallers/MT07-Migrar-un-cas-dus-a-framework.pdf) |
| `R3M2` Persistència mínima | BBDD, migracions o equivalent, dades inicials reproduïbles i conjunt de dades real usat en un flux | `r3-s02-persistencia-minima-migrations-seeders` | [MT08. Migracions, seeders i dades de prova](../recursos/Tallers/MT08-Migracions-seeders-i-dades-de-prova.pdf) |
| `R3M3` Primer cas d'ús complet | flux heretat de `R2` funcionant en framework, preferentment com a cas server-rendered | `r3-s03-primer-cas-us-complet` | [MT09. On pose la lògica](../recursos/Tallers/MT09-On-pose-la-logica.pdf) |
| `R3M4` Components de vista i manteniment d'un recurs | segon flux sobre un recurs existent amb component reutilitzable, actualització `PUT/PATCH`, eliminació `DELETE` i BBDD coherent | `r3-s04-segon-cas-us-ampliacio-funcional` | [MT09. On pose la lògica](../recursos/Tallers/MT09-On-pose-la-logica.pdf) |
| `R3M5` Autenticació i autorització | acció significativa protegida amb middleware, guard, voter, policy o equivalent | `r3-s05-autenticacio-autoritzacio-middleware` | [MT16. Portabilitat entre frameworks](../recursos/Tallers/MT16-Portabilitat-entre-frameworks.pdf) |
| `R3M6` Qualitat i estabilització | validació, errors, proves i revisió d'estructura | `r3-s06-qualitat-estabilitzacio` | [MT16. Portabilitat entre frameworks](../recursos/Tallers/MT16-Portabilitat-entre-frameworks.pdf) |
| `R3M7` Tancament tècnic | `README.md`, demo, decisions i mapa del que queda pendent | `r3-s07-tancament-tecnic` | Sense taller específic |

Entre `R3M2` i `R3M3` hi haurà un taller formatiu per comprovar equivalències entre frameworks i auditar el projecte abans del primer flux complet. No és un microrepte amb nota separada, però la taula d'equivalències i la microtasca resultant poden ajudar-te a millorar `R3M3`, `R3M5`, `R3M6` i la documentació final.

Guies d'avaluació:

- [R3M1. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m1.md)
- [R3M2. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m2.md)
- [R3M3. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m3.md)
- [R3M4. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m4.md)
- [R3M5. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m5.md)
- [R3M6. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m6.md)
- [R3M7. Guia d'avaluació](../03_com_s_avalua/rubriques/r3m7.md)

Suport ràpid:

- [Miniapunts de frameworks](../04_materials/repte_03/mini_apunts_frameworks.md)
- [Suport tècnic mínim](../04_materials/repte_03/suport_tecnic.md)
- [Checklist de R3](../04_materials/repte_03/index.md#checklist-de-r3)

Diapositives de suport:

- [R3. Framework, arquitectura i persistència real](../recursos/Repte3/R3-Framework-arquitectura-i-persistencia-real.pdf)
- [R3M1. Arrencada del nou projecte](../recursos/Repte3/R3M1-Arrencada-del-nou-projecte.pdf)
- [R3M2. Persistència mínima](../recursos/Repte3/R3M2-Persistencia-minima.pdf)
- [R3M3. Primer cas d'ús complet](../recursos/Repte3/R3M3-Primer-cas-dus-complet.pdf)
- [R3M4. Components de vista i manteniment d'un recurs](../recursos/Repte3/R3M4-Segon-cas-dus-o-ampliacio-funcional.pdf)
- [R3M5. Autenticació, autorització i middleware](../recursos/Repte3/R3M5-Autenticacio-autoritzacio-i-middleware.pdf)
- [R3M6. Qualitat i estabilització](../recursos/Repte3/R3M6-Qualitat-i-estabilitzacio.pdf)
- [R3M7. Tancament tècnic](../recursos/Repte3/R3M7-Tancament-tecnic.pdf)

Teoria relacionada per microrepte:

- `R3M1`: [Docker, entorn i arrencada reproduïble](../recursos/Teoria/Teoria-R3-Docker-entorn-i-arrencada-reproduible.pdf) i [Framework MVC i responsabilitats](../recursos/Teoria/Teoria-R3-Framework-MVC-i-responsabilitats.pdf)
- `R3M2`: [Persistència, migracions i seeders](../recursos/Teoria/Teoria-R3-Persistencia-migracions-i-seeders.pdf)
- `R3M3`: [Rutes, controladors, vistes i flux end-to-end](../recursos/Teoria/Teoria-R3-Rutes-controladors-vistes-i-flux-end-to-end.pdf)
- `R3M4`: [Components de vista i manteniment d'un recurs](../04_materials/repte_03/manteniment_components.md)
- `R3M5`: [Autenticació, autorització i middleware](../recursos/Teoria/Teoria-R3-Autenticacio-autoritzacio-i-middleware.pdf)
- `R3M6`: [Qualitat, proves i tancament tècnic](../recursos/Teoria/Teoria-R3-Qualitat-proves-i-tancament-tecnic.pdf)
- `R3M7`: [Qualitat, proves i tancament tècnic](../recursos/Teoria/Teoria-R3-Qualitat-proves-i-tancament-tecnic.pdf)

## Com avança el projecte durant R3

Els microreptes no són set exercicis independents. Cada microrepte continua la mateixa aplicació i ha de conservar el que funcionava en l'anterior:

```text
R3M1  projecte arrancable i dos fluxos acotats
  ↓
R3M2  models, migracions, dades inicials i primera lectura real
  ↓
R3M3  primer flux complet: formulari/interacció, validació, regla, BBDD i resposta
  ↓
R3M4  manteniment: component reutilitzable, PUT/PATCH, DELETE i regressió
  ↓
R3M5  identitat real del framework, acció protegida i autorització
  ↓
R3M6  regressió, errors, proves i neteja de responsabilitats
  ↓
R3M7  reproducció des de zero, README, demo, decisions i backlog cap a R4
```

Quan comences un microrepte, no elimines ni simules les peces anteriors. Si una peça imprescindible continua pendent, recupera primer el mínim necessari per poder construir el pas nou.

### Organització recomanada de les evidències

Pots adaptar els noms a l'estructura del teu repositori, però ha de ser fàcil localitzar:

| Element | Organització recomanada |
|---|---|
| Explicació del microrepte | `docs/r3m1.md` … `docs/r3m7.md` o seccions equivalents |
| Resultats executats | `evidence/r3m1/` … `evidence/r3m7/` |
| Ús real d'IA | `docs/ai-log.md` o registre equivalent |
| Proves | carpeta pròpia del framework (`tests/`, `test/` o equivalent) |
| Arrencada i ús general | `README.md` i `.env.example` |

No cal copiar esta estructura literal si el teu projecte ja té una convenció coherent. Sí que cal poder diferenciar codi, documentació, proves i resultats reals.

## R3M1. Arrencada del nou projecte

### Objectiu

Crear una base nova en framework que arranque de manera reproduïble i delimitar què reconstruiràs durant R3. No has de migrar encara tot R2 ni començar la BBDD.

### Punt de partida

Partixes del projecte funcional d'R2. Primer identifica una acció real que val la pena conservar i un segon flux relacionat. Un dels dos ha de vindre clarament d'R2 i almenys un acabarà sent server-rendered amb HTML generat pel framework.

### Què has de fer

1. Tria `Laravel`, `Symfony`, `Django` o `NestJS` i compara'l breument amb una alternativa.
2. Explica un avantatge concret de la tria per al teu projecte: separació de responsabilitats, plantilles, ORM, validació, proves o ecosistema.
3. Crea el projecte dins del repositori i prepara Docker o l'entorn reproduïble equivalent.
4. Crea `.env.example` o instruccions equivalents sense secrets reals.
5. Implementa una ruta mínima gestionada pel framework. Pot ser una portada, un recorregut explicatiu o un `healthcheck`, però ha de respondre realment.
6. Dibuixa el mapa entre R2 i R3: fitxer d'entrada → ruta; coordinació → controlador; SQL → ORM; HTML mesclat → plantilla; funcions/regles → servei o peça equivalent.
7. Declara els dos casos d'ús de R3, indica quin ve d'R2 i quin serà server-rendered.
8. Documenta l'ordre d'arrencada i comprova-la des d'una còpia neta o una situació equivalent.

### Resultat que has de poder mostrar

- El projecte arranca amb una ordre documentada.
- Una URL retorna una resposta generada pel framework.
- Pots assenyalar ruta, controlador o manejador i vista/resposta.
- Els dos fluxos són menuts, concrets i viables en R3.
- No hi ha secrets, `.env` personals ni dependències generades indegudament versionades.

### Exemple de continuïtat

En [la branca `r3m1` de La Roda](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m1), el projecte PHP d'R2 es reconstruïx amb Laravel. `/recorregut` mostra ruta → controlador → servei → Blade, però encara no consulta la BBDD. També es declaren els fluxos **publicar un servici** i **gestionar un intercanvi**.

### Ampliació opcional

- Prova automàtica de la ruta mínima.
- Comprovació de salut del contenidor.
- Segona forma d'arrencada ben documentada.

### Fora d'abast

Encara no cal crear models del domini, migracions, seeders, formularis complets, autenticació ni API. Una ruta mínima no és ja el primer cas d'ús.

Consulta [com s'avalua R3M1](../03_com_s_avalua/rubriques/r3m1.md).

## R3M2. Persistència mínima reproduïble

### Objectiu

Convertir la base arrancable en una aplicació amb BBDD real, esquema versionat, dades inicials reproduïbles i una primera lectura integrada en l'aplicació.

### Què heretes d'R3M1

- El framework i Docker ja han d'arrancar.
- Els dos fluxos ja estan decidits.
- El model mínim ha de preparar eixos fluxos, no tot el producte futur.

### Què has de fer

1. Identifica les entitats i relacions estrictament necessàries per als dos fluxos.
2. Configura la connexió a BBDD amb variables d'entorn.
3. Crea els models o entitats seguint les convencions del framework.
4. Genera i versiona les migracions o el mecanisme equivalent. No crees les taules manualment amb una interfície gràfica.
5. Afig claus foranes, unicitat o restriccions simples que eviten dades impossibles quan siguen necessàries per als fluxos.
6. Prepara seeders, fixtures, factories amb càrrega dirigida o un script equivalent amb dades recognoscibles.
7. Documenta una seqüència que, des d'una BBDD buida, cree l'esquema i carregue les dades.
8. Fes una lectura real amb l'ORM i utilitza-la en un llistat, detall, filtre o resposta de l'aplicació.
9. Comprova que la lectura canvia si canvien les dades de la BBDD i que no prové d'un array escrit al controlador o a la vista.

### Resultat que has de poder mostrar

```text
BBDD buida → migracions → dades inicials → consulta ORM → vista/resposta amb dades reals
```

La comprovació ha d'incloure les ordres reals de reconstrucció, càrrega i lectura. Una consulta feta només en consola ajuda a depurar, però no substituïx la lectura integrada en una ruta o resposta.

### Exemple de continuïtat

En [la branca `r3m2` de La Roda](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m2), les migracions creen `serveis`, `intercanvis` i el saldo de `users`; el seeder crea Aina, Biel i Carla; `GET /` consulta els servicis actius amb Eloquent i Blade mostra el catàleg.

### Ampliació opcional

- Una relació addicional que s'use realment.
- Factory per preparar proves aïllades.
- Prova automàtica de reconstrucció, càrrega o lectura.

### Fora d'abast

No cal implementar encara el formulari complet, els dos casos d'ús, autenticació, rols ni API. Tampoc cal modelar totes les taules imaginables del producte.

Consulta [com s'avalua R3M2](../03_com_s_avalua/rubriques/r3m2.md).

## R3M3. Primer cas d'ús complet

### Objectiu

Reconstruir dins del framework el primer flux real heretat d'R2. Ara ja no és suficient llegir dades: una persona ha de poder iniciar una interacció, enviar dades, rebre errors o completar l'operació i veure el resultat persistent.

### Què canvia respecte d'R3M2

| R3M2 | R3M3 |
|---|---|
| Esquema i dades preparades | L'usuari inicia una operació real |
| Seeder o fixture crea les files | Un formulari o interacció envia l'entrada |
| Consulta i llistat | Validació, regla de negoci i escriptura |
| Prova que les dades es mostren | Prova de l'èxit i d'un error sense efectes parcials |

R3M3 reutilitza els models i migracions d'R3M2. Només crea una migració nova si descobreixes un camp imprescindible per al flux i pots justificar-lo.

### El formulari i els dos recorreguts HTTP

Si el flux crea o modifica dades —que és el recorregut recomanat per a R3M3— has d'implementar explícitament:

1. Una ruta `GET` que prepara i mostra el formulari server-rendered.
2. Una vista o plantilla amb camps del domini, valors previs quan hi ha error i protecció CSRF del framework.
3. Una ruta `POST` que rep l'enviament.
4. Validació en servidor amb les eines del framework; els atributs HTML no són suficients.
5. Missatges d'error visibles i associats als camps o a l'operació.
6. Una regla pròpia del projecte separada del codi de presentació.
7. Persistència mitjançant el model, relació o repositori existent.
8. Redirecció després de l'èxit —patró Post/Redirect/Get— i resultat llegit de nou des de la BBDD.

Si el teu primer flux aprovat és realment de consulta, ha de processar una interacció significativa —per exemple filtre, cerca o detall amb paràmetres validats— i no quedar en un llistat estàtic. En qualsevol cas, abans de tancar R3 hauràs de tindre almenys un flux server-rendered amb entrada processada en servidor.

### Repartiment de responsabilitats

| Peça | Responsabilitat |
|---|---|
| Ruta | mètode HTTP, URL, nom i controlador/manejador |
| Formulari o DTO | contracte de l'entrada |
| Validador/Form Request/Form | autorització inicial, regles i missatges |
| Controlador o view | coordinar entrada validada, operació i resposta |
| Servei o regla | decisió pròpia del domini que no depén d'HTML |
| Model/ORM/repositori | llegir o escriure dades persistents |
| Vista/plantilla | presentar camps, errors i resultat; no consultar la BBDD |

No és obligatori crear una classe de servei per qualsevol `if`. Sí que cal evitar que ruta, controlador o plantilla concentren tot el flux.

### Què has de provar

- **Cas positiu:** entrada correcta, resposta esperada i canvi verificat en BBDD.
- **Cas negatiu:** dada invàlida o manipulada, error visible i absència d'inserció o canvi parcial.
- **Regla de negoci:** si té límits o trams, prova almenys els valors frontera importants.
- **Resultat visible:** després de guardar, la nova dada apareix en un llistat, detall o confirmació llegida de la BBDD.

### Exemple de continuïtat

En [la branca `r3m3` de La Roda](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m3):

```text
GET /serveis/nou
  → formulari Blade amb CSRF i valors previs
POST /serveis
  → StoreServeiRequest valida
  → CalculadoraCostServei calcula tokens
  → ServeiController crea mitjançant la relació de l'oferent
  → redirecció al catàleg amb missatge d'èxit
```

La prova funcional comprova una publicació correcta i una duració invàlida que no crea cap fila. Aina és encara una identitat de demostració explícita; l'autenticació real arriba en R3M5.

### Ampliació opcional

- Prova unitària de la regla de negoci.
- Validacions de frontera addicionals.
- Pujada de fitxer només quan el flux sense fitxer ja siga atòmic i estiga provat.

### Fora d'abast

No toca encara implementar el segon flux, autenticació completa, autorització, API ni una refactorització total. No avances funcionalitats si el cas positiu i l'error del primer flux no estan tancats.

Consulta [com s'avalua R3M3](../03_com_s_avalua/rubriques/r3m3.md).

## R3M4. Components de vista i manteniment d'un recurs

### Objectiu

Demostrar que l'arquitectura aguanta el manteniment d'un recurs existent. A partir del primer flux d'R3M3, has de reutilitzar una peça de vista i implementar una actualització i una eliminació controlades amb les convencions del framework, BBDD real i respostes observables.

### Progressió respecte d'R3M3

| R3M3 | R3M4 |
|---|---|
| `GET` mostra el formulari i `POST` crea | `GET` mostra el recurs i `PUT/PATCH` l'actualitza |
| Vista completa del primer flux | Component, parcial o fragment reutilitzat almenys en dos llocs |
| Alta i validació inicial | Edició, eliminació i regles sobre un recurs existent |
| Persistència d'una operació | Coherència, `404`, denegació i transacció si hi ha diversos canvis |

El segon recorregut ha d'aportar valor al projecte. Pot mantindre un recurs creat en R3M3 o actuar sobre una altra entitat relacionada, però no pot ser una còpia del primer formulari amb noms diferents.

### Mètodes HTTP i formularis server-rendered

Els formularis HTML només envien `GET` i `POST` de manera nativa. Per expressar actualització i eliminació, usa el mecanisme propi del framework:

- mètode real des d'un client que el permeta;
- *method override* o camp ocult reconegut pel framework;
- convenció server-rendered equivalent, si el framework no oferix simulació nativa, explicant en el README com es correspon amb `PUT/PATCH` o `DELETE`.

Usa `PATCH` quan canvies només alguns camps o l'estat; reserva `PUT` per a una substitució completa. Usa `DELETE` per eliminar un recurs. Cancel·lar, completar o arxivar és normalment un canvi d'estat amb `PATCH`, no una eliminació.

### Component de vista reutilitzable

Crea una peça de presentació amb una entrada clara i reutilitza-la almenys en dos llocs. Pot ser, per exemple:

- una targeta o fila de recurs;
- una etiqueta d'estat;
- un resum d'errors;
- un grup de botons d'edició i eliminació;
- un fragment de formulari compartit entre alta i edició.

Pot ser un component, parcial, macro, *include*, *inclusion tag* o equivalent. No és suficient comptar el *layout* general que ja tenia el projecte ni duplicar el mateix HTML.

| Framework | Equivalent acceptable |
|---|---|
| Laravel | component Blade anònim o de classe amb propietats explícites |
| Symfony | component Twig, macro o `include` amb dades explícites |
| Django 6 o superior | *template partial* amb `partialdef` i `partial` |
| Django 5.2 o anterior | `include ... with ... only`; `inclusion_tag` si cal preparar dades amb Python |
| NestJS server-rendered | parcial o component del motor de plantilles configurat |

En Django, un `include` amb `only` és suficient quan la peça només presenta dades. Usa un `inclusion_tag` quan la reutilització necessita lògica Python. No cal instal·lar una biblioteca externa de components.

### Què has de fer

1. Identifica el recurs, els camps editables i en quines condicions es pot eliminar.
2. Crea i reutilitza un component de vista amb dades rebudes explícitament.
3. Afig la ruta d'edició i l'operació `PUT` o `PATCH`, o l'equivalent server-rendered documentat.
4. Valida en servidor i mostra els errors conservant els valors introduïts.
5. Afig una operació `DELETE`, o l'equivalent natiu documentat, amb CSRF i una regla que impedisca almenys una eliminació no vàlida.
6. Recupera el recurs amb el mecanisme del framework i controla l'identificador inexistent amb `404` o resposta equivalent.
7. Mostra el resultat de l'actualització o l'eliminació llegint de nou l'estat real de la BBDD.
8. Si una operació modifica diverses files o registres relacionats, fes-la atòmica amb una transacció o mecanisme equivalent.
9. Prova actualització, error, eliminació i regressió d'R3M3.

### Exemple de continuïtat

Si R3M3 permet publicar un servici, R3M4 pot reutilitzar una targeta de servici en el catàleg i en el detall, editar-ne parcialment la descripció amb `PATCH` i eliminar amb `DELETE` només un servici que encara no tinga intercanvis. Si l'eliminació afecta registres relacionats, l'operació usa una transacció i fa `rollback` davant d'error. La identitat pot continuar sent una substitució docent explícita perquè l'autenticació real arriba en R3M5.

### Què has de provar

- Actualització correcta amb `PUT/PATCH` o equivalent i canvi verificat en BBDD.
- Actualització invàlida sense canvi persistent.
- Eliminació correcta i eliminació denegada o incompatible amb les regles del domini.
- Identificador inexistent amb resposta `404` o equivalent controlat.
- Absència de canvis parcials si falla una operació múltiple.
- Component de vista renderitzat en almenys dos llocs.
- Regressió del primer flux d'R3M3.

### Ampliació opcional

- Component amb variants o *slots* justificats.
- *Soft delete* si el domini necessita conservar traçabilitat.
- Prova específica de `rollback` o concurrència si el domini ho necessita.

### Fora d'abast

No toca encara una API, integració externa, autenticació, rols complexos ni un sistema genèric de components. No cal construir un CRUD complet d'entitats que el projecte no necessita: tanca l'actualització i l'eliminació del recurs triat i deixa-les preparades per protegir-les en R3M5.

Consulta [com s'avalua R3M4](../03_com_s_avalua/rubriques/r3m4.md).

## R3M5. Autenticació, autorització i protecció real

### Objectiu

Substituir qualsevol identitat de demostració per l'autenticació pròpia del framework i protegir una acció significativa amb una regla d'autorització del domini.

### Tres conceptes que no has de confondre

| Concepte | Pregunta que respon | Exemple |
|---|---|---|
| Autenticació | Qui és la persona? | login i sessió del framework |
| Middleware/guard | Pot arribar a esta ruta sense identificar-se? | convidat redirigit a login |
| Autorització/policy/voter | Esta persona concreta pot fer esta acció sobre este registre? | només l'oferent completa l'intercanvi |

Ocultar un botó en la vista millora la interfície, però no protegix l'operació. La comprovació decisiva ha d'estar en servidor.

### Què has de fer

1. Usa el mecanisme d'autenticació del framework; no reconstruïsques manualment el login d'R2.
2. Prepara almenys dos usuaris demo reproduïbles, amb credencials didàctiques i no personals.
3. Implementa login correcte, login incorrecte i logout o invalidació equivalent.
4. Protegix en servidor les operacions d'escriptura significatives amb middleware, guard o equivalent.
5. Tria una acció sobre un registre i definix una regla d'autorització: propietari, oferent, responsable, participant o rol mínim justificat.
6. Retorna una redirecció, `403` o error controlat coherent quan no hi ha permís.
7. Elimina el selector, usuari fix o substitució provisional utilitzada en R3M3/R3M4.
8. Repetix els dos fluxos amb identitat autenticada.

### Casos obligatoris de verificació

- Sense autenticar: no accedix a l'acció protegida.
- Autenticat i autoritzat: completa l'acció.
- Autenticat però no autoritzat: rep denegació i la BBDD no canvia.
- Després de logout: torna a quedar fora de l'acció protegida.

### Exemple de continuïtat

En [la branca `r3m5` de La Roda](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m5), desapareixen el selector docent i `ContextMembreDemo`. Laravel aporta login, logout i middleware `auth`; `IntercanviPolicy` permet completar només a l'oferent del servici.

### Ampliació opcional

- Limitació d'intents de login.
- Una segona policy sobre una altra operació ja existent.
- Millora de missatges sense revelar si un correu està registrat.

### Fora d'abast

No cal registre públic, recuperació de contrasenya, OAuth, 2FA, JWT avançat, administració completa de rols ni API d'autenticació.

Consulta [com s'avalua R3M5](../03_com_s_avalua/rubriques/r3m5.md).

## R3M6. Qualitat i estabilització

### Objectiu

Deixar de construir funcionalitat nova i demostrar que la base acumulada és repetible, provable i mantenible. R3M6 és una sessió de regressió, correcció i criteri tècnic.

### Inventari mínim que has de revisar

1. Arrencada des de les instruccions actuals.
2. Reconstrucció de la BBDD i càrrega inicial.
3. Lectura real d'R3M2.
4. Cas positiu i negatiu d'R3M3.
5. Component, actualització, eliminació, error i regressió d'R3M4.
6. Accés sense autenticar, autoritzat, denegat i logout d'R3M5.
7. Eixida segura i errors comprensibles.

### Què has de fer

- Executa la suite o una checklist reproduïble i guarda el resultat real.
- Provoca almenys un error de validació i un error de domini o autorització.
- Anota incidència, causa, correcció i prova de regressió.
- Revisa que la vista no consulte la BBDD i que ruta/controlador no concentren regles llargues.
- Extrau una peça només si reduïx una responsabilitat barrejada real; no refactoritzes per aparença.
- Comprova que migracions i seeders continuen funcionant després dels canvis.
- Elimina proves inicials del framework que ja no representen el projecte o adapta-les correctament.

### Exemple de continuïtat

En [la branca `r3m6` de La Roda](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m6), no apareix un tercer flux. S'amplien proves de saldo insuficient, rollback, accés i regressió; es documenten incidències reals i es comprova `migrate:fresh --seed`, la suite completa i el format del codi.

### Evidència que has de conservar

| Evidència | Contingut mínim |
|---|---|
| Resultat de proves | ordre executada, casos i resultat |
| Incidències | símptoma, causa, correcció i prova posterior |
| Regressió | primer i segon flux continuen funcionant |
| Persistència | reconstrucció i càrrega inicial continuen funcionant |
| Qualitat | responsabilitat revisada o justificació de per què ja és adequada |

### Ampliació opcional

- Convertir una comprovació manual important en test funcional.
- Mesurar consultes i corregir un N+1 real.
- Afegir validacions de frontera que falten.

### Fora d'abast

No afiges una funcionalitat gran, un tercer flux, API ni desplegament per evitar corregir el que ja existix.

Consulta [com s'avalua R3M6](../03_com_s_avalua/rubriques/r3m6.md).

## R3M7. Tancament tècnic

### Objectiu

Deixar R3 reproduïble i defensable per una altra persona i preparar una continuïtat concreta cap a R4. El README ha de descriure el projecte real, no el projecte que voldries tindre.

### Prova principal de tancament

Imagina una còpia neta del repositori. Amb només el README i els fitxers versionats, una altra persona ha de poder:

1. preparar `.env` sense inventar variables;
2. arrancar l'aplicació;
3. reconstruir la BBDD;
4. carregar usuaris i dades demo;
5. executar el primer flux i el seu error;
6. executar el segon flux i el seu error;
7. comprovar login, acció protegida i cas denegat;
8. executar les proves o la checklist final.

### Contingut mínim del README final

- Requisits previs i ordres d'arrencada.
- Variables d'entorn necessàries, sense secrets reals.
- Migracions, reset i càrrega inicial.
- Usuaris demo i credencials didàctiques.
- Descripció i passos dels dos fluxos.
- Acció protegida i regla d'autorització.
- Ordres de proves i resultats esperats.
- Decisions tècniques breus.
- Què s'ha migrat, què s'ha adaptat i què continua pendent.
- Backlog cap a R4 amb un primer recurs o endpoint candidat.

### Demo recomanada

Prepara una demo de 5–7 minuts: reconstrucció, lectura inicial, cas positiu i error d'R3M3, component, actualització i eliminació d'R3M4, canvi d'usuari i denegació d'R3M5, i suite/checklist final.

### Exemple de continuïtat

En [la branca `r3m7` de La Roda](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m7), el tancament diferencia **migrat**, **adaptat** i **pendent**, simplifica l'entorn, deixa una demo completa i proposa `GET /api/v1/serveis` com a primera lectura d'R4 sense implementar-la encara.

### Ampliació global 9→10

Només després de tancar el nucli, declara l'ampliació en `docs/r3-ampliacio.md`. Ha de tindre commit identificable, decisió tècnica, prova i demo. No compensa migracions trencades, fluxos incomplets o documentació fictícia.

### Fora d'abast

No implementes encara l'API d'R4, integracions externes, desplegament productiu ni funcionalitats grans noves.

Consulta [com s'avalua R3M7](../03_com_s_avalua/rubriques/r3m7.md).

## Correspondència amb el repositori docent

El repositori [`microreptes-c-igomis`](https://github.com/batoi-dwes-2026/microreptes-c-igomis) mostra la mateixa aplicació en set moments. Les branques servixen per comparar què s'afig en cada microrepte, no per copiar una solució Laravel en un projecte diferent.

| Branca | Canvi principal respecte de l'anterior |
|---|---|
| [`r3m1`](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m1) | Projecte Laravel arrancable, mapa R2→R3, ruta mínima i dos fluxos acotats. |
| [`r3m2`](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m2) | Models, relacions, migracions, factories/seeder i catàleg llegit de BBDD. |
| [`r3m3`](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m3) | Formulari GET/POST, CSRF, Form Request, regla de cost, alta Eloquent, PRG i proves. |
| [`r3m4`](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m4) | Sol·licitud/finalització d'intercanvi, estats, transacció i regressió del primer flux. |
| [`r3m5`](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m5) | Login/logout, middleware `auth`, policy i eliminació de la identitat demo. |
| [`r3m6`](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m6) | Proves negatives i de rollback, correcció d'incidències i estabilització sense nou flux. |
| [`r3m7`](https://github.com/batoi-dwes-2026/microreptes-c-igomis/tree/r3m7) | README reproduïble, demo, decisions, estat honest i backlog cap a R4. |

## Presentació i entrega

Per preparar l'entrega, la demo i la defensa breu, usa la [guia de presentació dels reptes](guia_presentacio.md#repte-3).

## Ampliació 9→10

**Finalitat**  
Aprofundir en la qualitat de l'arquitectura en framework i demostrar millor criteri sobre `MVC`, persistència i mantenibilitat.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

**Opcions d'ampliació**
- Millorar un flux amb paginació, filtrat, cerca o una autorització més fina que amplie la regla mínima sense trencar la coherència del projecte.
- Fer una refactorització justificada del repartiment entre ruta, controlador, capa de dades i vista o plantilla.

**Proposta pròpia**  
Es pot presentar una ampliació pròpia si continua centrada en qualitat arquitectònica i es valida abans amb el professorat.

**Evidències mínimes**
- commit o branca identificable
- nota tècnica breu de decisió
- demo funcional del flux millorat
- rastre de l'ús assistit per IA, si n'hi ha hagut

**Ús assistit per IA**  
La IA et pot ajudar a comparar estructures, revisar codi o suggerir proves, però la decisió d'arquitectura i la defensa han de ser teues.

**Defensa**  
Perquè compute com a `9→10`, has de poder justificar per què la millora aporta qualitat real al projecte.

## Registre final de l’ampliació

L’ampliació de R3 es declara una sola vegada en `docs/r3-ampliacio.md` i es recull exclusivament en **R3M7**. La proposta automàtica queda separada de la nota del microrepte i el professorat la valida durant la defensa. Consulta l’[escala comuna](../ampliacions-excellencia.md).
