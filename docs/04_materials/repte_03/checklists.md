# Checklists d'alumnat per a R3

Usa estes llistes abans de dir que tens `R3` tancat.

## 1. Entorn arrancable

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
- [ ] El README diu com arrancar el projecte.
- [ ] Sé explicar quins serveis hi ha en Docker.

## 2. BBDD preparada

- [ ] L'aplicació connecta amb una BBDD real.
- [ ] La configuració de BBDD usa variables d'entorn.
- [ ] Hi ha almenys una migració.
- [ ] Les migracions creen les taules necessàries.
- [ ] Puc recrear la BBDD des de zero.
- [ ] Les taules tenen relació amb els casos d'ús.
- [ ] Puc recuperar un conjunt de dades real des de la BBDD.
- [ ] Eixe conjunt de dades alimenta un llistat, detall, filtre o resposta.
- [ ] No depenc de canvis manuals en la BBDD.

## 3. Dades de prova carregades

- [ ] Hi ha seeders, fixtures o script equivalent.
- [ ] Les dades inicials són suficients per provar els `2` fluxos.
- [ ] Puc executar la càrrega de dades amb una instrucció clara.
- [ ] Les dades carregades es poden consultar des de l'aplicació.
- [ ] Les dades carregades s'usen en un flux funcional, no només en una prova aïllada.
- [ ] El README explica com carregar-les.
- [ ] No he carregat dades només a mà.

## 4. Cas d'ús 1 complet

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

## 5. Cas d'ús 2 complet

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

## 6. Proves mínimes

- [ ] He provat que Docker arranca.
- [ ] He provat migracions.
- [ ] He provat seeders.
- [ ] He provat el cas d'ús 1.
- [ ] He provat el cas d'ús 2.
- [ ] He provat el cas server-rendered amb dades reals visibles en la resposta.
- [ ] He provocat almenys un error controlat.
- [ ] He deixat rastre de les proves: test, checklist, captures, logs o instruccions.
- [ ] Les proves es poden repetir.

## 7. README usable

- [ ] Explica requisits previs.
- [ ] Explica com arrancar Docker.
- [ ] Explica com configurar `.env`.
- [ ] Explica breument per què s'ha triat el framework.
- [ ] Explica com executar migracions.
- [ ] Explica com carregar seeders.
- [ ] Explica els `2` casos d'ús.
- [ ] Explica quin cas d'ús és server-rendered i quina vista o plantilla usa.
- [ ] Explica com provar-los.
- [ ] Inclou decisions tècniques breus.
- [ ] Inclou què queda pendent de migrar.
- [ ] El README coincideix amb el projecte real.

## Checklist final de tancament

- [ ] Aplicació en framework operativa.
- [ ] Framework triat justificat amb comparació curta i avantatge de separació.
- [ ] Docker funcional.
- [ ] BBDD creada per `migrations`.
- [ ] Dades inicials amb `seeders` o equivalent.
- [ ] Conjunt de dades real recuperat i usat en un flux.
- [ ] `2` casos d'ús funcionals.
- [ ] Almenys `1` cas d'ús ve de `R2`.
- [ ] Almenys `1` cas d'ús és server-rendered amb vista o plantilla i resposta `HTML`.
- [ ] Validació mínima.
- [ ] Tractament bàsic d'errors.
- [ ] Proves mínimes.
- [ ] Documentació curta d'arrencada i ús.

Si alguna casella final no està marcada, `R3` encara no està complet.
