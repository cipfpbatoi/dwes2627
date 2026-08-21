# Brief Gamma. MT17. Tokens funcionals del backend

## Objectiu

Crear una micro-presentació opcional per a `R4S6` sobre tokens funcionals del backend aplicats a operacions puntuals del domini.

## Missatge clau

Un token funcional permet una operació limitada. No és OAuth, JWT professional ni blockchain: ha d'estar lligat a un cas real i controlat.

## Format recomanat

- 6 diapositives.
- Duració aproximada: `60 min`.
- Incloure cicle de vida del token.
- Tancar amb cas vàlid i cas invàlid o caducat.

## Estructura recomanada

1. Idea central: token com a permís puntual i limitat.
2. Exemples: confirmar reserva, cancel·lar cita, consultar incidència, acceptar invitació o validar entrega.
3. Cicle de vida: generació, associació, caducitat, validació, consum i registre o revocació.
4. Errors habituals: sense caducitat, massa permisos, consum no registrat, confondre token amb login i no provar invàlid.
5. Evidència del dia: flux tokenitzat, cas vàlid, cas invàlid, decisió d'ús únic i riscos.
6. Tancament: què podria fer una persona amb este token?

## Evidència mínima

- Flux tokenitzat documentat.
- Cas vàlid.
- Cas invàlid o caducat.
- Decisió sobre ús únic o revocació.

## No incloure

- OAuth o JWT professional com a requisit.
- Blockchain o actius digitals.
- Token amb permisos il·limitats.
