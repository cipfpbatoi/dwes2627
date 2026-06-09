# Brief Gamma. Teoria R2. Autenticació, autorització i operació protegida

## Objectiu

Crear una presentació teòrica curta per preparar `R2M5`, incloent registre mínim, hash de contrasenya, login i operació protegida.

## Referències existents

- `docs/02_reptes/repte_02.md`
- `dwes-restructuracio-modul/docs/01_programacio_modul/programacio_aula_r2s5_autenticacio_funcionalitat_protegida.md`
- `dwes-microreptes-autocorreccio/microreptes/r2-s05-autenticacio-funcionalitat-protegida/`

## Idees clau

- Identificació: l'usuari diu qui és.
- Registre: el sistema crea o prepara una identitat amb credencial.
- Les contrasenyes no es guarden en clar.
- `password_hash` o equivalent genera un hash segur.
- `password_verify` o equivalent comprova la contrasenya introduïda contra el hash.
- Autenticació: el sistema comprova que és qui diu.
- Autorització: el sistema decideix què pot fer.
- Autenticació i autorització són coses diferents: comprovar qui ets no és igual que comprovar què pots fer.
- La protecció ha d'estar en servidor.
- Ocultar un botó no protegeix una operació.
- Una operació protegida ha de tindre valor dins del producte.
- Cal provar cas permés, cas denegat i logout.

## Format recomanat

- 7-9 diapositives.
- Esquema identificació -> autenticació -> autorització.
- Diapositiva sobre registre i hash de contrasenya.
- Diapositiva amb operació protegida real.
- Diapositiva de casos de prova.
- Errors habituals.
- Checklist final.

## No incloure

- OAuth, JWT o sistemes avançats.
- Rols complexos com a mínim.
- Registre públic complet o recuperació de contrasenya.
- Base de dades obligatòria.
- Arquitectura completa.
