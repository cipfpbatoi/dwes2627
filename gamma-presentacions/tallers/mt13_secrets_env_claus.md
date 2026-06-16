# Brief Gamma. MT13. Secrets, .env i claus

## Objectiu

Crear una micro-presentació de taller per a `R5S2` que ajude l'alumnat a configurar integracions sense exposar secrets en el repositori.

## Missatge clau

Una clau exposada és una incidència. `.env` separa configuració i codi; el repositori no ha de contindre secrets reals.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `45 min`.
- Incloure exemples de `.env`, `.env.example` i `.gitignore`.
- Tancar amb prova sense clau i documentació segura.

## Estructura recomanada

1. Idea central: secrets fora del repositori.
2. Què és un secret: contrasenya, token, clau privada, application password, cadena sensible o credencial externa.
3. Bones pràctiques: `.env` fora de Git, `.env.example`, noms clars, error comprensible i revocació.
4. Errors habituals: commitejar `.env`, tokens al README, captures amb claus, claus personals i entorn no documentat.
5. Evidència del dia: `.gitignore`, `.env.example`, lectura de configuració, prova sense clau i README.
6. Tancament: què passaria si publiques ara el repositori?

## Evidència mínima

- `.gitignore` revisat.
- `.env.example` actualitzat.
- Configuració llegida des de variables.
- Instrucció segura al README.

## No incloure

- Secrets reals en diapositives.
- Captures amb claus.
- Gestió professional avançada de secrets.
