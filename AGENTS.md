# AGENTS.md

## Criteri transversal d'alineació

Els continguts de `dwes-restructuracio-modul`, `dwes-documentacio-alumnat` i `dwes-microreptes-autocorreccio` han d'estar alineats. Quan es cree, canvie o elimine un repte, sessió o microrepte en un d'estos repositoris, cal revisar si també cal actualitzar els altres dos.

La coherència mínima ha d'incloure:

- mateix codi de repte, sessió i microrepte, per exemple `R2`, `R2S2`, `R2M2`;
- mateix nom funcional del microrepte;
- mateix abast pedagògic;
- mateixos criteris d'avaluació treballats;
- evidències compatibles entre programació d'aula, documentació d'alumnat i autocorrecció;
- mateixa decisió sobre què entra com a mínim i què queda com a ampliació.

## Paper de cada projecte

- `dwes-restructuracio-modul`: font docent de planificació, programació d'aula, seqüenciació, criteris curriculars i decisions metodològiques.
- `dwes-documentacio-alumnat`: materials que veu l'alumnat: reptes, microreptes, instruccions de treball, rúbriques/checklists i materials de suport.
- `dwes-microreptes-autocorreccio`: definició executable de les autocorreccions: `challenge.json`, `rubric.json`, prompts, evidències esperades i proves de revisió.
- `dwes-microreptes-alumnes`: base o plantilla de treball de l'alumnat; ha de reflectir el que es demana en la documentació i el que després es podrà autocorregir.

## Estructura esperada de `dwes-documentacio-alumnat`

Este repositori ha de diferenciar clarament tres blocs:

- Reptes i microreptes: què ha de construir l'alumnat, què ha d'entregar, requisits mínims i què queda per a més avant.
- Rúbriques, checklists o criteris de sessió/microrepte: com es valorarà cada sessió o microrepte, amb evidències observables.
- Materials de suport per als reptes: guies, consulta tècnica, exemples, plantilles i recursos que ajuden a resoldre el repte sense substituir l'enunciat.

No s'han de mesclar en una mateixa pàgina instruccions de lliurament, rúbrica i material teòric extens si això dificulta que l'alumnat entenga què ha de fer.

## Directori intern per a Gamma

Este repositori ha d'incloure un directori intern, fora de `docs/`, amb instruccions per a Gamma. Este directori no ha de ser visible en la web generada per MkDocs.

El directori recomanat és `gamma-presentacions/`.

Ha de contindre instruccions per construir:

- una presentació per cada repte;
- una presentació per cada microrepte o sessió;
- les presentacions teòriques necessàries perquè l'alumnat tinga els coneixements previs per encarar cada microrepte.

Les instruccions de Gamma han d'estar alineades amb:

- la documentació publicada per a alumnat;
- la programació d'aula de `dwes-restructuracio-modul`;
- les evidències i rúbriques de `dwes-microreptes-autocorreccio`.

Les presentacions no han de substituir l'enunciat del repte ni les rúbriques. Han de servir per introduir, contextualitzar, explicar conceptes i donar suport a l'execució del microrepte.

## Estructura obligatòria de les programacions d'aula

Les programacions d'aula de `dwes-restructuracio-modul` han de tractar sempre els mateixos punts i mantindre un ordre coherent entre pàgines. Quan la documentació d'alumnat es cree o s'ajuste a partir d'una programació d'aula, cal comprovar que estos apartats tenen correspondència clara amb el que veu l'alumnat:

- Finalitat de la sessió.
- Encaix dins del repte.
- Relació amb RA, CA i criteris de treball.
- Producte esperat.
- Preparació prèvia del professorat.
- Continguts a explicar.
- Seqüenciació de la sessió.
- Tasques concretes de l'alumnat.
- Evidències mínimes.
- Criteris d'èxit.
- Què no és suficient.
- Ús de la IA.
- Suport per a l'alumnat amb dificultats.
- Ampliació per a l'alumnat més avançat.
- Checklist de tancament.
- Connexió amb el microrepte posterior.

La documentació d'alumnat no ha de copiar literalment tots els apartats docents, però sí ha de reflectir amb claredat els que afecten directament l'alumne: objectiu, tasques, producte, evidències, criteris, suport, ampliació i connexió amb el següent microrepte.

## Relació entre sessions i microreptes

Cada sessió ordinària ha de tindre associat un microrepte. La nomenclatura ha de permetre veure la relació entre repte, sessió i microrepte, per exemple `R2S2` i `R2M2`.

Les úniques excepcions són les sessions de presentació o tancament dels reptes `2`, `3`, `4` i `5`. Estes sessions poden no tindre microrepte associat si la seua funció és introduir el repte, organitzar el treball, fer síntesi, revisar evidències o tancar el procés.

Quan la documentació d'alumnat descriga una sessió sense microrepte, ha de quedar clar que és una sessió de presentació o tancament i que no genera lliurable de microrepte propi.

## Forma de treball

Abans d'editar:

- revisar com està definit el mateix repte o microrepte en `dwes-restructuracio-modul` i `dwes-microreptes-autocorreccio`;
- comprovar la nomenclatura existent;
- mantindre llenguatge clar i directe per a alumnat;
- evitar avançar continguts que encara no pertoquen segons la seqüència acordada.

Després d'editar:

- executar `mkdocs build`;
- revisar que els enllaços, títols i codis continuen sent coherents;
- comprovar que les evidències demanades siguen autocorregibles o revisables.
- si es modifica l'estructura de reptes o microreptes, revisar també les instruccions de `gamma-presentacions/`.
- al final de cada iteració, fer commit i push dels repositoris afectats;
- fer staging selectiu dels fitxers de la iteració i no incloure fitxers aliens o temporals, com `.DS_Store`.
