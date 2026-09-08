# Presentacions: revisió des de l’1 de juliol de 2026

Auditoria feta el 8 de setembre de 2026. No s’han regenerat PDF ni modificat dissenys dins de Gamma en esta revisió.

## Mètode i límits

Comparació de contingut amb l’últim commit anterior a juliol: `11a86db` (23 de juny) en alumnat i `3eacfa5` (15 de juny) en documentació docent. S’ha tingut en compte el canvi de nom de `gamma-presentacions/` a `presentacions/` del 21 d’agost: no s’ha comptat com si totes les fonts foren noves.

S’han comparat els briefs actuals amb els anteriors i l’historial dels guions docents. També s’ha extret el text dels PDF publicats per comprovar divergències concretes. Les dates Git indiquen canvis versionats, no la data d’edició d’un disseny privat en Gamma. No és una certificació exhaustiva de totes les diapositives ni de tots els canvis curriculars.

## Prioritat 1: MT19

Fonts actualitzades hui:

- [Brief Gamma MT19](tallers/mt19_ia_responsable_repte.md).
- Guió docent equivalent: `dwes-restructuracio-modul/docs/07_presentacions/microtallers/mt19_ia_responsable_repte.md`.
- [Text per pegar en Gamma](tallers/mt19-instruccions-actualitzacio-gamma.md).

Cal modificar la presentació i reexportar el [PDF MT19](../docs/recursos/Tallers/MT19-IA-responsable-aplicada-al-repte.pdf). El PDF actual continua amb la norma anterior: prohibix només delegació sense comprensió, presenta el registre com a prova d’autoria i exigix ús d’IA. La nova font ho corregix i inclou HTML/CSS i el fitxer únic `docs/ai-log.md`.

## Fonts de presentacions amb canvis de contingut des de juliol

Onze briefs de presentacions existents tenen canvis de contingut anteriors a esta revisió. Els PDF corresponents no tenen una actualització versionada després de juliol. Per tant, cal revisar-los i exportar-ne una versió que incorpore els canvis; en teoria R2 HTML/PHP el canvi és només contextual.

| Presentació i font | Últim canvi de font abans d’esta revisió | Què ha canviat / acció | PDF |
|---|---|---|---|
| [R1M1](microreptes/r1m1.md) | 2026-08-23 (db7c4c1) | Decisió tècnica orientativa i preparació del repositori. Font corregida el 8 de setembre: invitació docent i clonació. | [PDF](../docs/recursos/Repte1/R1M1-Model-clientservidor-i-eleccio-guiada-de-stack.pdf) |
| [R1M2](microreptes/r1m2.md) | 2026-09-06 (48b15b8) | Landing obligatòria servida pel backend i ampliació global. Font corregida el 8 de setembre: invitació docent i clonació. | [PDF](../docs/recursos/Repte1/R1M2-Entorn-executable-punt-dentrada-i-tancament-de-R1.pdf) |
| [R2M2](microreptes/r2m2.md) | 2026-08-29 (7c9d222) | Abast del mínim: arrays d’errors no obligatoris ací, possibles després. Revisar també el PDF: tracta fitxers com a prohibits i esmenta sessió bàsica. | [PDF](../docs/recursos/Repte2/R2M2-Processament-reintent-i-guardat-funcional.pdf) |
| [R2M3](microreptes/r2m3.md) | 2026-08-29 (cf64993) | Array d’errors com a ampliació guiada, després de la regla de domini mínima. | [PDF](../docs/recursos/Repte2/R2M3-Logica-del-flux-i-regles-del-projecte.pdf) |
| [R2M9](microreptes/r2m9.md) | 2026-09-06 (48b15b8) | Ampliació única del repte complet, separada de la nota del microrepte. | [PDF](../docs/recursos/Repte2/R2M9-Persistencia-minima-amb-BBDD-en-PHP.pdf) |
| [R3M7](microreptes/r3m7.md) | 2026-09-06 (48b15b8) | Ampliació global validada pel professorat. | [PDF](../docs/recursos/Repte3/R3M7-Tancament-tecnic.pdf) |
| [R4M5](microreptes/r4m5.md) | 2026-09-06 (48b15b8) | Ampliació global validada pel professorat. | [PDF](../docs/recursos/Repte4/R4M5-Documentacio-i-prova-del-servei.pdf) |
| [R5M5](microreptes/r5m5.md) | 2026-09-06 (48b15b8) | Ampliació global validada pel professorat. | [PDF](../docs/recursos/Repte5/R5M5-Prova-documentacio-i-defensa.pdf) |
| [Repte 1](reptes/r1.md) | 2026-08-23 (db7c4c1) | Decisió tècnica inicial; complementar amb el guió docent actualitzat que exigix landing. | [PDF](../docs/recursos/Repte1/R1-Kickoff-backend-i-base-executable.pdf) |
| [Teoria R1: stack i entorn](teoria/r1-stack-i-entorn.md) | 2026-08-23 (db7c4c1) | Landing en /; /health només auxiliar. El PDF encara proposa / o /health com a entrada mínima. | [PDF](../docs/recursos/Teoria/Teoria-R1-Stack-servidor-i-entorn-executable.pdf) |
| [Teoria R2: HTML/PHP](teoria/r2-php-html-base.md) | 2026-08-23 (db7c4c1) | Canvi contextual: es parteix de la landing de R1. Revisió puntual, no cal refer tota la teoria. | [PDF](../docs/recursos/Teoria/Teoria-R2-Codi-Embegut-HTML-PHP.pdf) |

En els cinc tancaments (`R1M2`, `R2M9`, `R3M7`, `R4M5`, `R5M5`) la font especifica `0,9 × nucli ponderat + ampliació validada`, amb ampliació de 0–1 del repte complet i validació docent. Els PDF inspeccionats no inclouen esta explicació; és una actualització prioritària d’avaluació.

## Benvinguda i fonts docents

[Benvinguda / curs](reptes/curs.md) és una font nova del 21 d’agost, no existia en juliol. El PDF de benvinguda també es va publicar en agost: això no significa que continue alineat amb setembre. La diapositiva d’IA conserva el criteri general de generar, validar i assumir responsabilitat; falta la norma explícita nova.

La font de benvinguda s’ha corregit el 8 de setembre per explicar invitació del professorat i `git clone`, `main` més una branca per microrepte, merge senzill, retorn/consolidació d’aula i recuperació només del repte complet. Les fonts de Benvinguda, R1M1 i R1M2 ja incorporen estos canvis; els PDF continuen pendents de regenerar.

En `dwes-restructuracio-modul/docs/07_presentacions/` també han canviat:

- `presentacio_00_visio_curs.md`: 21 d’agost (`688cba6`, `f4acdd6`), opcions de projecte, mapa del producte i checkpoint inicial. Usar-lo per contrastar benvinguda, junt amb les normes actuals.
- `presentacio_01_repte_1.md`: 23 d’agost (`133eb40`), landing servida pel backend en producte, evidències i checklist. Incorporar-lo a la revisió de la presentació R1.
- `microtallers/mt19_ia_responsable_repte.md`: actualitzat en esta iteració.

No són tres PDF addicionals a comptar: corresponen a les presentacions de curs, R1 i MT19 ja indicades.

## Fonts que necessiten revisió abans de tornar a Gamma

Una font sense canvis en Git pot haver quedat desactualitzada perquè ha canviat la norma comuna. Les referències antigues de `reptes/curs.md`, `microreptes/r1m1.md` i `microreptes/r1m2.md` s’han corregit el 8 de setembre. Ara especifiquen invitació docent, una branca per microrepte, merge a main i la norma vigent d’IA; ja es poden usar per actualitzar Gamma.

Per a qualsevol presentació que parle d’IA, aplicar la [guia vigent](../docs/04_materials/guia_us_verificable_ia.md), encara que el brief no haja canviat. Per a Git i entregues, consultar la [guia d’entrega vigent](../docs/04_materials/guia_pujar_treball_autocorreccio.md). Les referències antigues a esquelets o codi assistit no autoritzen delegar el backend.

## Què no cal regenerar només per l’historial

La resta de briefs de repte, microrepte, teoria i tallers no presenta diferències de contingut respecte de la base de juny, excloent el MT19 corregit hui i la nova benvinguda. No hi ha motiu per regenerar-los tots només pel canvi de carpeta. Açò no garantix alineació semàntica completa amb cada norma nova.

`presentacions/README.md` i `recursos-existents.md` també han canviat, però són instruccions/inventari; no representen presentacions addicionals.

## Ordre de treball recomanat

1. MT19, amb les fonts i el text per a Gamma ja preparats.
2. Benvinguda i R1M1/R1M2, amb les fonts corregides el 8 de setembre.
3. Tancaments R2M9, R3M7, R4M5 i R5M5: ampliació global.
4. R1 i teoria de stack/entorn: landing; R2M2/R2M3: límits de validació i ampliació.
5. Teoria HTML/PHP: revisió puntual del context inicial.

Després de cada revisió en Gamma, exportar i substituir el PDF de `docs/recursos/` corresponent; actualitzar només el Markdown no canvia les diapositives publicades.
