# Checklists d'alumnat per a R3

Usa estes llistes abans de dir que tens `R3` tancat.

## 1. Entorn arrancable

- [ ] He triat stack: `Laravel`, `Symfony` o `NestJS`.
- [ ] El projecte està dins del repositori.
- [ ] Docker arranca sense passos ocults.
- [ ] Hi ha `.env.example` o instruccions de variables.
- [ ] Hi ha una ruta mínima o `healthcheck`.
- [ ] El README diu com arrancar el projecte.
- [ ] Sé explicar quins serveis hi ha en Docker.

## 2. BBDD preparada

- [ ] L'aplicació connecta amb una BBDD real.
- [ ] La configuració de BBDD usa variables d'entorn.
- [ ] Hi ha almenys una migració.
- [ ] Les migracions creen les taules necessàries.
- [ ] Puc recrear la BBDD des de zero.
- [ ] Les taules tenen relació amb els casos d'ús.
- [ ] No depenc de canvis manuals en la BBDD.

## 3. Dades de prova carregades

- [ ] Hi ha seeders, fixtures o script equivalent.
- [ ] Les dades inicials són suficients per provar els `2` fluxos.
- [ ] Puc executar la càrrega de dades amb una instrucció clara.
- [ ] Les dades carregades es poden consultar des de l'aplicació.
- [ ] El README explica com carregar-les.
- [ ] No he carregat dades només a mà.

## 4. Cas d'ús 1 complet

- [ ] El cas d'ús 1 ve de `R2`.
- [ ] Hi ha ruta.
- [ ] Hi ha controlador o equivalent.
- [ ] Hi ha model, servei o capa de dades.
- [ ] Hi ha vista, plantilla o resposta.
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
- [ ] He provocat almenys un error controlat.
- [ ] He deixat rastre de les proves: test, checklist, captures, logs o instruccions.
- [ ] Les proves es poden repetir.

## 7. README usable

- [ ] Explica requisits previs.
- [ ] Explica com arrancar Docker.
- [ ] Explica com configurar `.env`.
- [ ] Explica com executar migracions.
- [ ] Explica com carregar seeders.
- [ ] Explica els `2` casos d'ús.
- [ ] Explica com provar-los.
- [ ] Inclou decisions tècniques breus.
- [ ] Inclou què queda pendent de migrar.
- [ ] El README coincideix amb el projecte real.

## Checklist final de tancament

- [ ] Aplicació en framework operativa.
- [ ] Docker funcional.
- [ ] BBDD creada per `migrations`.
- [ ] Dades inicials amb `seeders` o equivalent.
- [ ] `2` casos d'ús funcionals.
- [ ] Almenys `1` cas d'ús ve de `R2`.
- [ ] Validació mínima.
- [ ] Tractament bàsic d'errors.
- [ ] Proves mínimes.
- [ ] Documentació curta d'arrencada i ús.

Si alguna casella final no està marcada, `R3` encara no està complet.
