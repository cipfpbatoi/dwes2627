# Brief Gamma. R4. Protecció, consum i documentació d'API

## Objectiu

Crear una presentació teòrica curta per preparar `R4M3`, `R4M4` i `R4M5`: control d'accés en API, consum verificat, documentació executable i proves.

## Idees clau

- Una API oberta sense criteri pot exposar dades o accions sensibles.
- El cas denegat és una evidència obligatòria quan hi ha protecció.
- Consumir una API implica actuar com un tercer.
- La documentació ha de permetre repetir les peticions.
- Les proves han de contrastar contracte, codi i resposta real.

## Estructura proposada

1. Control d'accés en context d'API.
2. Credencial: token, capçalera o clau didàctica.
3. Cas autoritzat i cas denegat.
4. Consumidor mínim: eina, script o client.
5. Documentació que una altra persona pot executar.
6. Registre d'incidències i correccions.
7. Pas cap a `R5`.

## Evitar

- Exigir seguretat de producció.
- Repetir login web de `R2` com si fora el centre.
- Fer documentació bonica però no executable.

## Preguntes de comprovació

- Quina credencial o capçalera necessita el consumidor?
- Quina petició demostra el cas autoritzat?
- Quina petició demostra el cas denegat?
- On està documentat perquè una altra persona puga repetir-ho?
- La resposta real coincideix amb el contracte escrit?
