# Brief Gamma. Teoria R3. Autenticació, autorització i middleware

## Objectiu

Crear una presentació teòrica curta per preparar `R3M5`, centrada en diferenciar autenticació i autorització, entendre middleware/guards/voters/policies i evitar proteccions només visuals.

## Referències existents

- `docs/02_reptes/repte_03.md`
- `docs/04_materials/repte_03/microreptes.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r3s5_autenticacio_autoritzacio_middleware.md`
- `dwes-microreptes-autocorreccio/microreptes/r3-s05-autenticacio-autoritzacio-middleware/`

## Idees clau

- Autenticació: saber qui és l'usuari.
- Autorització: decidir què pot fer eixe usuari.
- Protegir una vista no és protegir una ruta.
- El control ha d'estar en servidor.
- El cas denegat és una evidència obligatòria.
- Les credencials demo no han de ser personals ni secrets reals.

## Equivalències que han d'aparéixer

| Necessitat comuna | Laravel | Symfony | NestJS |
|---|---|---|---|
| Autenticació | guard/session/auth scaffolding | security/firewall | guard/strategy |
| Protecció de ruta | middleware | access control | guard/middleware/decorator |
| Autorització | policy/gate | voter | guard/decorator/service |
| Usuari demo | seeder/factory | fixture | seed script |
| Cas denegat | `403`/redirect | `403`/redirect | `403`/exception filter |

## Format recomanat

- 8-10 diapositives.
- Exemple visual: botó ocult vs ruta protegida.
- Diagrama: petició -> middleware/guard -> controlador -> resposta.
- Taula d'equivalències entre stacks.
- Checklist de prova: sense autenticar, autoritzat, denegat, logout.
- Errors habituals.

## No incloure

- OAuth.
- 2FA.
- JWT avançat.
- Sistema complet de rols.
- API completa de `R4`.
