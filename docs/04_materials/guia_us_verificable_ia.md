# Ús de la IA: què pots fer i com demanar ajuda

**La IA pot ajudar-te a comprendre. La implementació de servidor i les proves del repte les has de fer tu.** Esta norma s’aplica als microreptes, al repte complet i a les ampliacions.

## Què està permés i què no

| Situació | Criteri del mòdul |
|---|---|
| Demanar que t’explique teoria, sintaxi o un concepte amb un exemple menut diferent del repte | Permés. Contrasta-ho amb els apunts i comprova que ho entens. |
| Mostrar el teu intent i demanar pistes, preguntes o possibles causes d’un error | Permés. Tu escrius i comproves la correcció. |
| Demanar revisió del teu raonament, alternatives o casos límit que convé provar | Permés. Tu decideixes i escrius les proves. |
| Millorar la redacció d’una explicació pròpia o ordenar l’AI log | Permés, sense inventar decisions, dubtes, proves ni resultats. |
| Generar la presentació HTML/CSS completa | Permés dins dels límits explicats més avall. Cal registrar-ho. |
| Demanar la solució del microrepte, el backend complet o una funcionalitat avaluable ja resolta | No permés, encara que després la lliges o canvies els noms. |
| Demanar un esquelet que ja resolga la lògica avaluable, o generar-la per fragments fins a completar-la | No permés. Dividir la petició no canvia que estàs delegant el treball. |
| Fer que un agent implemente, execute proves i corregisca el projecte fins que funcione | No permés. Tampoc si vas acceptant automàticament cada canvi. |
| Inventar converses, proves, resultats o ocultar ajuda rebuda | No permés. |

La norma depén de **l’ús**, no de la marca de la ferramenta. Un agent de programació en mode autònom no pot fer-te el repte. Un xat convencional tampoc pot donar-te la solució perquè l’entregues. Pots consultar conceptes en una ferramenta que també tinga funcions d’agent, mantenint desactivada la delegació del treball avaluable.

## Agents d’IA instal·lats en local

Pots usar un agent d’IA des del terminal o l’editor del teu ordinador, però està
sotmés als mateixos límits que un xat. Que l’agent puga llegir fitxers, executar
ordres o proposar canvis no significa que puga fer el treball avaluable per tu.

### Usos permesos

- Llegir l’enunciat i ajudar-te a localitzar apunts o fitxers rellevants.
- Explicar conceptes i sintaxi amb exemples menuts diferents del repte.
- Fer-te preguntes per revisar el teu raonament.
- Analitzar un error després que aportes el teu intent, el resultat esperat i
  l’observat, i donar-te pistes limitades.
- Revisar canvis escrits per tu, assenyalar riscos i suggerir casos límit perquè
  tu els comproves.
- Executar comprovacions no destructives i explicar-te’n l’eixida, sempre que
  no implemente ni corregisca automàticament la solució avaluable.
- Generar o modificar només l’HTML estàtic, el CSS de presentació i el
  JavaScript de navegador permés per les normes del repositori.
- Ordenar `docs/`, `evidence/`, el registre d’IA i la base de coneixement sense
  inventar contingut, resultats ni reflexions personals.

### Usos no permesos

- Implementar o completar PHP, lògica de servidor, configuració avaluable,
  persistència, autenticació, APIs o proves del repte.
- Encadenar generació, execució de proves i correccions fins que el projecte
  quede resolt, encara que revises el resultat al final.
- Dividir una solució prohibida en moltes peticions menudes.
- Canviar o esquivar `AGENTS.md`, `CLAUDE.md`, `GEMINI.md` o altres controls del
  repositori.
- Inventar comprovacions, evidències, decisions, aprenentatges o entrades del
  registre.
- Fer operacions destructives, publicar canvis o actuar sobre serveis externs
  sense una petició explícita quan les normes del repositori la requerisquen.

Abans d’acceptar una modificació proposada per un agent, mira el `diff`, entén
què canvia i comprova el comportament. Si l’agent produïx una part no permesa,
no la incorpores: demana una explicació o una pista més limitada.

## Primer comprén, després intenta i pregunta

1. **Llig la teoria i l’enunciat.** Identifica el concepte que necessites. Pots demanar una explicació abans de programar; no cal entendre-ho tot a la primera.
2. **Explica amb les teues paraules què ha de passar.** Per exemple: què entra, què ha de comprovar el servidor i quin resultat esperes.
3. **Fes un primer intent propi.** Pot ser codi incomplet, un esquema o una hipòtesi.
4. **Pregunta sobre una dificultat concreta.** Inclou l’intent, el resultat esperat i el resultat observat; demana pistes, no la implementació.
5. **Aplica tu el que has entés i comprova-ho.** Prova casos correctes i d’error. Si continues bloquejat, demana ajuda al professorat.
6. **Registra l’ajuda rellevant.** Anota també què no has entés encara. Un dubte real és informació útil.

## Exemples de preguntes adequades

### Per comprendre la teoria

> Estic aprenent sessions en PHP. Sense resoldre el meu repte, explica’m la diferència entre una sessió i una cookie amb un exemple menut diferent del projecte. Després fes-me dues preguntes per comprovar si ho he entés.

### Per passar de la teoria al problema

> He llegit els apunts de validació. Crec que el servidor ha de comprovar estes tres condicions: […]. Sense escriure’m la solució, ajuda’m a revisar el raonament i indica quin concepte hauria de repassar.

### Per depurar un intent propi

> Este és el meu codi: […]. Amb esta entrada espere […] però obtinc […]. Ja he provat […]. Dona’m una pista per identificar la causa, sense reescriure la funció ni mostrar-me la solució.

### Per pensar les comprovacions

> He implementat esta regla i ja he comprovat […]. Quins altres casos límit hauria de considerar? Explica per què, sense generar el codi de les proves.

### Peticions que no has de fer

- «Ací tens l’enunciat: fes-me tots els fitxers i deixa-ho preparat per entregar.»
- «Implementa el login del meu projecte i escriu els tests.»
- «Executa l’autocorrecció i modifica el codi fins que obtinga la màxima nota.»
- «Inventa’m preguntes i errors per omplir l’AI log.»

Escriure «sense donar-me la solució» no autoritza a usar una resposta que acaba resolent el repte. Si la IA es passa de l’ajuda demanada, no incorpores eixa solució: demana una explicació conceptual o una pista més limitada i deixa constància del que has descartat.

## Excepció: HTML i CSS de presentació

Pots generar amb IA la maquetació, els estils i l’HTML estàtic complet, perquè la presentació visual no és l’objectiu d’este mòdul. Revisa el resultat i identifica en l’AI log els fitxers generats.

En un formulari, **tu has de decidir i entendre** els camps, `name`, `method`, `action` i com els rep el servidor. Una maquetació generada no acredita estos coneixements.

L’excepció no inclou PHP incrustat en HTML, plantilles amb lògica de servidor, escapament de dades, validació, sessions, autenticació, persistència, APIs ni JavaScript que resolga funcionalitat avaluable. Estes parts i la configuració tècnica avaluable continuen sent treball teu.

Exemple de petició permesa:

> Genera només HTML estàtic i CSS per presentar este formulari. Jo he decidit els camps, els seus noms, el mètode i l’acció: […]. No afegisques PHP, JavaScript funcional, validació ni connexions a serveis. La lògica de servidor la faré jo.

## Com omplir l’AI log

Usa **`docs/ai-log.md`**; «AI log» o «ai.log» es referixen a este registre, no a un segon fitxer. No cal copiar tota la conversa ni duplicar-la en un report separat.

Per mantindre el registre manejable:

- agrupa en una sola entrada les preguntes que compartisquen un mateix objectiu;
- crea una entrada nova quan canvie l’objectiu, no per cada missatge;
- conserva totes les preguntes de l’alumne literalment i en el mateix ordre,
  sense corregir-les, resumir-les ni parafrasejar-les;
- resumix l’ajuda rebuda i la resta de camps;
- no copies respostes completes ni fragments grans de codi;
- agrupa les entrades per microrepte i conserva sempre les anteriors.

Si demanes a un agent que emplene el registre, primer ha d’identificar el
microrepte. Si no el pot deduir amb seguretat del context o dels fitxers, et
preguntarà quin és abans d’escriure.

Per cada objectiu consultat, registra:

- Data i microrepte, ferramenta utilitzada.
- Dubte i teoria consultada; intent propi abans de preguntar.
- Preguntes literals de l’alumne, en el mateix ordre en què les va fer.
- Ajuda rebuda i qualsevol codi generat, indicant si l’has incorporat o descartat.
- Decisió pròpia i fitxer o commit relacionat, si n’hi ha.
- Comprovació real: passos o ordre, dades i resultat observat.
- Dubtes que continuen oberts.

**No és obligatori usar IA i no usar-la no penalitza.** Si el microrepte demana el registre i no l’has usada, escriu «No he utilitzat IA en R?M?» i indica les fonts que sí has consultat, si n’hi ha. No inventes consultes per omplir una plantilla. Una consulta conceptual pot enllaçar els apunts i una explicació pròpia; no necessita un commit de codi fictici.

### Exemple d’entrada (il·lustratiu; no el copies com si fora teu)

```md
## R2M1 — Dubte sobre un camp buit
- Data i ferramenta: [data real i ferramenta usada].
- Teoria consultada: apunts de validació d’entrada.
- Intent propi: havia comprovat que el camp existia, però acceptava només espais.
- Preguntes literals de l’alumne: «El meu formulari accepta un nom amb espais. He comprovat
  que el camp existeix. Quina diferència conceptual hi ha entre existir i
  tindre contingut útil? Dona’m una pista sense escriure la validació.»
- Ajuda rebuda: distingir presència, normalització i contingut.
- Decisió pròpia: he revisat la condició del meu validador; no he copiat codi.
- Evidència: [ruta real del validador].
- Comprovació: camp absent, cadena buida, tres espais i nom vàlid.
  Els tres primers mostren error; el nom vàlid continua el flux.
- Dubte pendent: encara he de revisar els límits de longitud.
```

## Base de coneixement personal

La plantilla inclou `docs/base-coneixement/`, un espai opcional per transformar
allò que realment has comprés en notes que pugues reutilitzar. No és un segon
registre d’IA:

- `docs/ai-log.md` conserva la traçabilitat de què vas preguntar, quina ajuda
  vas rebre i com la vas comprovar en cada microrepte;
- `docs/base-coneixement/` organitza per temes les explicacions i els exemples
  que et seran útils més avant.

Crea un fitxer curt per tema, amb noms descriptius com `sessions.md`,
`validacio.md` o `apis.md`. Abans de crear-ne un, comprova si ja hi ha una nota
del mateix tema i amplia-la per evitar duplicats.

Una nota útil pot incloure:

- una explicació amb les teues paraules;
- conceptes relacionats i errors habituals;
- un exemple menut diferent de la solució avaluable;
- preguntes que encara tens obertes;
- un enllaç a l’entrada d’`ai-log.md` o als apunts que en són l’origen.

Un agent local pot ajudar-te a detectar temes, agrupar preguntes i ordenar una
nota a partir d’informació que tu hages aportat. No pot inventar què has comprés,
redactar reflexions personals en nom teu, copiar converses completes ni guardar
una solució prohibida dins de la base de coneixement.

La base és una ajuda d’estudi. No substituïx `ai-log.md`, les evidències ni els
lliurables exigits pel microrepte, i no és obligatòria ni puntuable per si sola.

## Com es comprova la comprensió

El professorat pot demanar-te que expliques una decisió, reproduïsques una prova o faces una modificació menuda sense IA. Un registre ben redactat no demostra autoria per si sol: ha de correspondre al treball real.

Abans d’entregar, comprova que pots explicar i modificar la lògica de servidor, que has executat les proves que declares i que has identificat l’ajuda rebuda, inclosa la generació d’HTML/CSS. Les mateixes regles s’apliquen a les ampliacions 9→10.
