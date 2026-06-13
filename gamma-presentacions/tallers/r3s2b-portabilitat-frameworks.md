# Gamma brief - R3S2B. Taller de portabilitat entre frameworks

## Objectiu de la presentació

Guiar una sessió taller de 3 hores perquè l'alumnat comprove que el seu projecte de `R3` no depén d'una recepta concreta de `Laravel`, `Symfony` o `NestJS`, sinó que cobreix responsabilitats equivalents: ruta, controlador, capa de dades, migració o equivalent, càrrega inicial, vista/resposta i verificació.

La presentació no ha de ser un tutorial de cap framework. Ha de servir per auditar el projecte propi i preparar el primer flux complet de `R3M3`.

## Públic

Alumnat que ja ha completat o està tancant:

- `R3M1. Arrencada del nou projecte`
- `R3M2. Persistència mínima`

## Missatge central

El criteri del repte no és usar una paraula concreta com `migration` o `seeder`. El criteri és poder reconstruir la BBDD, carregar dades inicials, seguir una petició fins a la resposta i defensar on viu cada responsabilitat en el framework triat.

## Estructura suggerida

1. **Per què fem este taller**
   - L'alumnat pot triar framework.
   - El repte ha de ser comparable entre stacks.
   - Abans de fer el primer flux complet cal comprovar responsabilitats.
   - El taller no és un microrepte nou: és un checkpoint formatiu.

2. **Mateix problema, noms diferents**
   - Ruta.
   - Controlador.
   - Servei o capa de dades.
   - Model, entitat o schema.
   - Migració o equivalent.
   - Fixtures/seeders o script de càrrega.
   - Vista, plantilla o resposta.
   - Prova o checklist.

3. **Taula d'equivalències**

   | Necessitat comuna | Laravel | Symfony | NestJS |
   |---|---|---|---|
   | Ruta | `routes/web.php` o `routes/api.php` | atributs o configuració | decorators en controladors |
   | Controlador | controller | controller | controller |
   | Capa de dades | Eloquent/service | Doctrine repository/service | service + ORM/ODM |
   | Model | model Eloquent | entity Doctrine | entity/schema/model |
   | Esquema | migrations | Doctrine migrations | Prisma/TypeORM migrations o equivalent |
   | Dades inicials | seeders | fixtures | seed script o equivalent |
   | Vista/resposta | Blade o JSON | Twig o JSON | JSON o templates si s'activen |

4. **Activitat 1: completar la taula pròpia**
   - L'alumnat ompli la columna del seu stack.
   - Afegeix una columna amb un altre stack.
   - Escriu quin fitxer o comanda del seu projecte ho demostra.

5. **Activitat 2: auditoria del projecte**
   - Què ja podem demostrar?
   - Què només està mig documentat?
   - Què no sabríem explicar?
   - Com es reconstrueix la BBDD?
   - Com es carreguen dades inicials?
   - Quin conjunt de dades alimentarà `R3M3`?

6. **Activitat 3: recorregut petició -> resposta**
   - Petició.
   - Ruta.
   - Controlador.
   - Validació mínima.
   - Capa de dades.
   - Vista/resposta.
   - Error controlat.

7. **Mini defensa tècnica**
   - `3-4` minuts per grup.
   - Preguntes curtes del professorat.
   - L'objectiu és detectar riscos, no posar nota separada.

8. **Preguntes de control**
   - On està la ruta?
   - Quina comanda reconstrueix la BBDD?
   - Com sé que les dades no són manuals?
   - Quina peça equivaldria a un `seeder` si no uses Laravel?
   - On canviaries la validació?
   - Com arriba la dada a la vista o resposta?

9. **Microtasca de tancament**
   - Completar README.
   - Corregir càrrega inicial.
   - Separar responsabilitats.
   - Documentar recorregut del flux.
   - Preparar prova o checklist.

10. **Pas a R3M3**
    - El primer flux complet ha d'usar esta auditoria.
    - Si la persistència no és defensable, no té sentit afegir més funcionalitat.

## Activitat central de la sessió

L'alumnat ha de deixar al repositori o issue una nota curta amb esta estructura:

```md
# Auditoria R3S2B

## Stack triat

Laravel / Symfony / NestJS / altre autoritzat

## Equivalències

| Necessitat | En el nostre projecte | Evidència |
|---|---|---|
| Ruta |  |  |
| Controlador |  |  |
| Capa de dades |  |  |
| Model/entitat/schema |  |  |
| Migració o equivalent |  |  |
| Càrrega inicial |  |  |
| Vista/resposta |  |  |
| Prova/checklist |  |  |

## Reconstrucció de dades

Comandes o passos:

## Primer flux previst

Petició -> ruta -> controlador -> dades -> vista/resposta

## Risc detectat

## Microtasca de correcció
```

## To visual

- Pràctic, de taller.
- Taules comparatives clares.
- Poca teoria.
- Mostrar que tots els stacks són vàlids si cobreixen les responsabilitats comunes.
- Evitar que la presentació parega una defensa de Laravel.

## Límit

No demanar implementar el primer flux complet durant el taller. El taller prepara `R3M3`, però no el substitueix.
