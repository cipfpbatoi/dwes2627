# Suport ràpid del Repte 3

| Necessite... | Recurs |
|---|---|
| veure l'enunciat | [Repte 3](../../02_reptes/repte_03.md) |
| consultar com s'avalua cada microrepte | [Guies d'avaluació de R3](../../03_com_s_avalua/rubriques/index.md#repte-3) |
| ubicar rutes, controladors, models, BBDD, migracions o proves | [Suport tècnic mínim](suport_tecnic.md) |
| comprovar el tancament de R3 | [Checklist de R3](#checklist-de-r3) |
| repassar el mapa general de R3 | [R3. Framework, arquitectura i persistència real](../../recursos/Repte3/R3-Framework-arquitectura-i-persistencia-real.pdf) |
| repassar arrencada del nou projecte | [R3M1. Arrencada del nou projecte](../../recursos/Repte3/R3M1-Arrencada-del-nou-projecte.pdf) |
| repassar persistència mínima | [R3M2. Persistència mínima](../../recursos/Repte3/R3M2-Persistencia-minima.pdf) |
| repassar primer cas d'ús complet | [R3M3. Primer cas d'ús complet](../../recursos/Repte3/R3M3-Primer-cas-dus-complet.pdf) |
| repassar segon cas d'ús o ampliació | [R3M4. Segon cas d'ús o ampliació funcional](../../recursos/Repte3/R3M4-Segon-cas-dus-o-ampliacio-funcional.pdf) |
| repassar autenticació i autorització | [R3M5. Autenticació, autorització i middleware](../../recursos/Repte3/R3M5-Autenticacio-autoritzacio-i-middleware.pdf) |
| repassar qualitat i estabilització | [R3M6. Qualitat i estabilització](../../recursos/Repte3/R3M6-Qualitat-i-estabilitzacio.pdf) |
| repassar tancament tècnic | [R3M7. Tancament tècnic](../../recursos/Repte3/R3M7-Tancament-tecnic.pdf) |

## Checklist de R3

Usa estes llistes abans de dir que tens `R3` tancat.

### 1. Entorn arrancable

- [ ] He triat stack: `Laravel`, `Symfony` o `NestJS`.
- [ ] He comparat el stack triat amb almenys una altra opció.
- [ ] He justificat per què el framework triat ajuda a separar presentació i lògica.
- [ ] Tinc un esquema abans/després entre `R2` i la nova estructura.
- [ ] El projecte està dins del repositori.
- [ ] Docker arranca sense passos ocults.
- [ ] Hi ha `.env.example` o instruccions de variables.
- [ ] Hi ha una ruta mínima o `healthcheck`.
- [ ] Hi ha una primera resposta generada pel framework.
- [ ] He decidit quin cas d'ús serà server-rendered amb vista o plantilla.
- [ ] `README.md` diu com arrancar el projecte.
- [ ] Sé explicar quins serveis hi ha en Docker.

### 2. BBDD preparada

- [ ] L'aplicació connecta amb una BBDD real.
- [ ] La configuració de BBDD usa variables d'entorn.
- [ ] Hi ha almenys una migració.
- [ ] Les migracions creen les taules necessàries.
- [ ] Puc recrear la BBDD des de zero.
- [ ] Les taules tenen relació amb els casos d'ús.
- [ ] Puc recuperar un conjunt de dades real des de la BBDD.
- [ ] Eixe conjunt de dades alimenta un llistat, detall, filtre o resposta.
- [ ] No depenc de canvis manuals en la BBDD.

### 3. Dades de prova carregades

- [ ] Hi ha fixtures/seeders o script equivalent.
- [ ] Les dades inicials són suficients per provar els `2` fluxos.
- [ ] Puc executar la càrrega de dades amb una instrucció clara.
- [ ] Les dades carregades es poden consultar des de l'aplicació.
- [ ] Les dades carregades s'usen en un flux funcional, no només en una prova aïllada.
- [ ] `README.md` explica com carregar-les.
- [ ] No he carregat dades només a mà.

### 4. Cas d'ús 1 complet

- [ ] El cas d'ús 1 ve de `R2`.
- [ ] Hi ha ruta.
- [ ] Hi ha controlador o equivalent.
- [ ] Hi ha model, servei o capa de dades.
- [ ] Hi ha vista, plantilla o resposta.
- [ ] Si és el flux server-rendered, la vista o plantilla rep dades reals del controlador.
- [ ] Si és el flux server-rendered, el servidor genera una resposta `HTML` verificable.
- [ ] Usa dades reals de BBDD.
- [ ] Té validació mínima si rep entrada.
- [ ] Té almenys un error controlat.
- [ ] He provat el cas positiu.
- [ ] Puc explicar el recorregut de la petició.

### 5. Cas d'ús 2 complet

- [ ] He decidit si és migració o ampliació.
- [ ] El segon flux és funcional, no cosmètic.
- [ ] Hi ha ruta.
- [ ] Hi ha controlador o equivalent.
- [ ] Interactua amb BBDD.
- [ ] El contingut generat canvia segons dades, paràmetres, estat, filtre o formulari.
- [ ] Si és el flux server-rendered, usa vista o plantilla i resposta `HTML`.
- [ ] Té validació o error mínim.
- [ ] He provat el recorregut complet.
- [ ] No trenca el cas d'ús 1.
- [ ] Puc explicar quin valor aporta.

### 6. Autenticació i autorització

- [ ] Hi ha login o mecanisme d'autenticació funcional.
- [ ] Hi ha logout o invalidació de sessió/token.
- [ ] Hi ha un usuari demo reproduïble.
- [ ] Hi ha una ruta o acció significativa protegida.
- [ ] La protecció està en servidor, no només en la vista.
- [ ] S'usa middleware, guard, voter, policy o equivalent.
- [ ] Hi ha una regla d'autorització mínima vinculada al domini.
- [ ] He provat el cas sense autenticar.
- [ ] He provat el cas autoritzat.
- [ ] He provat el cas denegat.
- [ ] L'error de permisos és controlat.
- [ ] `README.md` explica com provar-ho.

### 7. Proves mínimes

- [ ] He provat que Docker arranca.
- [ ] He provat migracions.
- [ ] He provat la càrrega inicial de dades.
- [ ] He provat el cas d'ús 1.
- [ ] He provat el cas d'ús 2.
- [ ] He provat una acció protegida amb cas autoritzat i denegat.
- [ ] He provat el cas server-rendered amb dades reals visibles en la resposta.
- [ ] He provocat almenys un error controlat.
- [ ] He deixat rastre de les proves: test, checklist, captures, logs o instruccions.
- [ ] Les proves es poden repetir.

### 8. Entrega usable

- [ ] Explica requisits previs.
- [ ] Explica com arrancar Docker.
- [ ] Explica com configurar `.env`.
- [ ] Explica breument per què s'ha triat el framework.
- [ ] Explica com executar migracions.
- [ ] Explica com carregar fixtures/seeders o script equivalent.
- [ ] Explica els `2` casos d'ús.
- [ ] Explica quin cas d'ús és server-rendered i quina vista o plantilla usa.
- [ ] Explica la ruta o acció protegida i la regla d'autorització.
- [ ] Explica com provar-los.
- [ ] Inclou decisions tècniques breus.
- [ ] Inclou què queda pendent de migrar.
- [ ] `README.md` coincideix amb el projecte real.

### Checklist final de tancament

- [ ] Aplicació en framework operativa.
- [ ] Framework triat justificat amb comparació curta i avantatge de separació.
- [ ] Docker funcional.
- [ ] BBDD creada per migracions o equivalent.
- [ ] Dades inicials amb fixtures/seeders o equivalent.
- [ ] Conjunt de dades real recuperat i usat en un flux.
- [ ] `2` casos d'ús funcionals.
- [ ] Almenys `1` cas d'ús ve de `R2`.
- [ ] Almenys `1` cas d'ús és server-rendered amb vista o plantilla i resposta `HTML`.
- [ ] Hi ha autenticació funcional.
- [ ] Hi ha una acció protegida en servidor.
- [ ] Hi ha cas autoritzat i cas denegat.
- [ ] Validació mínima.
- [ ] Tractament bàsic d'errors.
- [ ] Proves mínimes.
- [ ] Documentació curta d'arrencada i ús.

Si alguna casella final no està marcada, `R3` encara no està complet.
