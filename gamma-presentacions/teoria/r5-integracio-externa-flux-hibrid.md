# Brief Gamma. R5. Integració externa i flux híbrid

## Objectiu

Crear una presentació teòrica de transició per passar de l'API pròpia de `R4` a la integració híbrida de `R5`. Ha d'explicar amb més calma què és integrar sistemes, com es tria una font externa i com es construeix una primera connexió real.

## Idees clau

- Una integració híbrida combina producte propi i font externa.
- La font externa ha de resoldre una necessitat del producte.
- El contracte extern condiciona codi, errors i límits.
- Les credencials i configuració s'han de tractar amb cura.
- El primer objectiu és una connexió reproduïble, no una funcionalitat enorme.
- Una integració té frontera: què és responsabilitat del producte propi i què depén de fora.
- El valor no és "connectar per connectar", sinó millorar un flux del producte.
- El cas d'error és part del disseny de la integració.

## Estructura proposada

1. Què és una font externa.
2. Integració útil versus integració ornamental.
3. Contracte, format, permisos i límits.
4. Mapa inicial del flux híbrid.
5. Connector mínim i configuració.
6. Cas positiu i error extern.
7. Checklist abans de passar a mapping.

## Exemples que han d'aparéixer

- Font externa útil per a inventari, reserves o incidències.
- Mapa: backend propi -> connector -> font externa -> resposta -> producte.
- Exemple de configuració amb `.env.example` sense secrets.
- Exemple de resposta externa correcta.
- Exemple de fallada: credencial absent, timeout, resposta buida o format inesperat.

## Format recomanat

- 10-12 diapositives.
- Diagrama de frontera entre sistemes.
- Taula de valor: necessitat, font, dada, ús, risc.
- Diapositiva de secrets i configuració.
- Diapositiva d'errors habituals.

## Evitar

- Fer teoria extensa de totes les APIs possibles.
- Presentar una tecnologia concreta com a única via.
- Oblidar el risc de secrets exposats.
