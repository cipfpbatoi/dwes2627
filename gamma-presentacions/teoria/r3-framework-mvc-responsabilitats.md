# Brief Gamma. Teoria R3. Framework, MVC i responsabilitats

## Objectiu

Crear una presentació teòrica curta per preparar `R3M1` i donar criteri comú sobre què vol dir reconstruir el projecte en un framework sense migrar tota l'aplicació de `R2`.

## Referències existents

- `docs/02_reptes/repte_03.md`
- `docs/04_materials/repte_03/fitxa_general.md`
- `docs/04_materials/repte_03/suport_tecnic.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r3s1_arrencada_nou_projecte.md`
- `dwes-microreptes-autocorreccio/microreptes/r3-s01-arrencada-nou-projecte/`

## Idees clau

- `R3` no és copiar fitxers de `R2` dins d'un framework.
- Un framework dona convencions per separar responsabilitats.
- Les peces mínimes són ruta, controlador o equivalent, capa de dades, vista/plantilla o resposta.
- `MVC` o equivalent no és una teoria: és una forma de localitzar on viu cada responsabilitat.
- El repte és neutral respecte a l'stack: `Laravel`, `Symfony` i `NestJS` són vies vàlides si es justifica la tria i es compleixen les evidències comunes.
- Explicar què es pot mantenir de l'aplicació `R2` i què es refà quan es passa a un framework.
- L'objectiu és construir una base real amb `2` fluxos, no migrar-ho tot.
- La tria de stack s'ha de justificar amb avantatges concrets per al projecte.

## Equivalències que han d'aparéixer

| Necessitat comuna | Laravel | Symfony | NestJS |
|---|---|---|---|
| Rutes | `routes/web.php` o `routes/api.php` | atributs o configuració | decorators en controladors |
| Controladors | controllers | controllers | controllers |
| Vista o resposta | Blade o JSON | Twig o JSON | JSON o templates si s'activen |
| Capa de dades | Eloquent | Doctrine | ORM/ODM triat, Prisma o TypeORM |
| Validació | form requests o validators | forms/constraints/validators | DTO + pipes |

## Format recomanat

- 8-10 diapositives.
- Començar amb comparativa visual: `R2` en PHP base vs `R3` en framework.
- Incloure mapa de responsabilitats.
- Incloure taula d'equivalències entre `Laravel`, `Symfony` i `NestJS`.
- Incloure exemple de flux: petició -> ruta -> controlador -> dades -> vista/resposta.
- Incloure diapositiva de "què entra / què no entra".
- Tancar amb checklist de `R3M1`.

## No incloure

- Tutorial complet de Laravel, Symfony o NestJS.
- ORM, migracions o dades inicials en profunditat; això va en una teoria específica.
- API com a objectiu de `R3`; pertany a `R4`.
