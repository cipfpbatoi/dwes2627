# Brief Gamma. MT19. IA responsable aplicada al repte

Actualitzat: 8 de setembre de 2026.

## Objectiu i format

Modificar la presentació existent, mantenint-ne l’estil visual, en **8 diapositives** curtes per a un taller de 45–60 minuts. Públic: alumnat de DWES. Llengua: valencià. Prioritzar límits clars i preguntes que ajuden a aprendre.

La norma de referència és la [guia d’IA de l’alumnat](../../docs/04_materials/guia_us_verificable_ia.md). En la plantilla del repositori, guia i report estan units en `docs/ai-log.md`.

## Correccions obligatòries respecte del PDF anterior

- Substituir «delegació cega» o «copiar sense entendre» com a únic límit per la prohibició explícita de delegar treball avaluable, encara que s’entenga després.
- Eliminar el permís ambigu de generar esborranys de codi i explicar la solució del mateix repte pas a pas.
- Afegir agents autònoms, límits dels xats, excepció HTML/CSS i seqüència teoria → intent → pista → comprovació.
- No dir que l’AI log és una prova d’autoria ni exigir un prompt o codi assistit a tot l’alumnat.
- No afegir sancions, percentatges o criteris de qualificació nous.

## Diapositiva 1. Comprendre abans de delegar

La IA pot ajudar-te a comprendre; la implementació de servidor, la configuració avaluable i les proves del repte les fas tu. La norma s’aplica als microreptes, al repte complet i a les ampliacions.

Entendre una solució després de copiar-la no autoritza a delegar el treball avaluable.

## Diapositiva 2. Què està permés i què no

Permés: explicacions de teoria, exemples menuts diferents del repte, pistes sobre intents propis, revisió del raonament i suggeriments de casos límit.

No permés: generar el backend o les proves, obtindre la solució per fragments, o deixar que un agent implemente, execute i corregisca fins a acabar. Acceptar automàticament cada canvi també és delegar.

La regla depén de l’ús, no de la marca: un xat tampoc pot resoldre el repte per tu. No presentar la prohibició com una simple recomanació o com un risc que desapareix si entens el resultat.

## Diapositiva 3. L’excepció d’HTML/CSS

Pots generar HTML estàtic i CSS de presentació complets. Revisa’ls i registra els fitxers generats.

Tu decidixes i entens els camps, `name`, `method` i `action` del formulari. L’excepció no inclou PHP incrustat, plantilles amb lògica, escapament, validació, sessions, autenticació, persistència, APIs ni JavaScript que resolga funcionalitat avaluable.

## Diapositiva 4. El procés de treball

Teoria i enunciat → explicació pròpia del problema → primer intent → pregunta concreta → implementació i comprovació pròpies → registre de l’ajuda rellevant.

Es pot preguntar teoria abans de programar. El primer intent pot ser codi incomplet, un esquema o una hipòtesi. Si continues bloquejat, demana ajuda al professorat.

## Diapositiva 5. Com formular una pregunta

Exemple conceptual: «Estic aprenent sessions en PHP. Sense resoldre el repte, explica’m la diferència entre sessió i cookie amb un exemple diferent del projecte. Després fes-me dues preguntes per comprovar si ho he entés.»

Exemple de depuració: «Este és el meu intent […]. Espere […] però obtinc […]. Ja he provat […]. Dona’m una pista per identificar la causa, sense reescriure la funció.»

Petició no permesa: «Ací tens l’enunciat: implementa tots els fitxers i corregix-los fins que passen les proves.»

Si la IA et dona la solució malgrat haver demanat pistes, descarta-la i demana ajuda conceptual més limitada. La frase «sense donar-me la solució» no autoritza a incorporar-la.

## Diapositiva 6. Un únic fitxer: docs/ai-log.md

En el repositori de l’alumne, este fitxer reunix la guia i el report breu. Obri la guia per consultar i ompli només «El meu registre», conservant les entrades anteriors.

Registra data i ferramenta, dubte, teoria i intent previs, pregunta literal, ajuda rebuda, decisió pròpia, evidència o fitxer, comprovació real i dubtes pendents. Inclou l’HTML/CSS generat. No copies tota la conversa ni inventes resultats. Els exemples de la plantilla no són consultes teues.

## Diapositiva 7. Exemple de registre i alternativa sense IA

Exemple il·lustratiu, no evidència real:

- R2M1: he llegit els apunts i el meu intent accepta un nom format només per espais.
- Pregunta: «Quina diferència hi ha entre que un camp existisca i que tinga contingut útil? Dona’m una pista sense escriure la validació.»
- Ajuda: distingir presència, normalització i contingut.
- Decisió pròpia: he revisat la condició del validador.
- Comprovació: camp absent, buit, espais i nom vàlid; els tres primers mostren error.
- Dubte pendent: límit de longitud.

No és obligatori usar IA i no usar-la no penalitza. Si el registre es demana i no l’has usada: «No he utilitzat IA en R?M?», amb les fonts consultades si n’hi ha. No obligar a fer una consulta per completar el taller.

## Diapositiva 8. Tancament i contrast docent

L’AI log no prova autoria per si sol. El professorat pot contrastar-lo amb el treball real i demanar una explicació, una prova o una modificació menuda sense IA.

Activitat: revisa una part pròpia del projecte i explica una decisió. Si has usat IA, relaciona-la amb una entrada real; si no, indica-ho. Una consulta només conceptual no necessita una prova sobre codi assistit ni un commit fictici.

Checklist: he respectat els límits, puc explicar i modificar el meu codi, les comprovacions declarades són reals, l’ajuda rebuda està identificada i els dubtes pendents són honestos.

## Comprovació abans d’exportar

Les huit diapositives han de respectar els límits de la guia. No afegir solucions de backend ni instruccions de delegació autònoma. Exportar el PDF i substituir `docs/recursos/Tallers/MT19-IA-responsable-aplicada-al-repte.pdf` després de revisar-lo. Actualitzar la font no actualitza el PDF automàticament.
