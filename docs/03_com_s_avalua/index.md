# 📏 Com s’avalua

## 💡 Idea general

En este curs no s’avalua només si el producte “funciona”.

També s’avalua si eres capaç de:

- Entendre el que has fet.
- Justificar decisions tècniques.
- Provar el sistema.
- Detectar i corregir errors.
- Documentar el treball.
- Defendre tècnicament el resultat.

La idea clau és esta: no n’hi ha prou amb entregar una solució. Cal poder demostrar què fa, com ho fa i per què està feta així.

## 🧾 Què és una evidència

Una evidència és una prova real del treball que has fet i del que saps fer.

Pot ser, per exemple:

- Codi funcional.
- Commits.
- Issues o tasques registrades, quan toque.
- Proves o verificacions.
- Documentació tècnica.
- Una demo o una execució reproduïble.
- Una defensa tècnica.
- `Report breu d’ús de la IA` o registre equivalent, quan corresponga.

Les evidències no servixen per decorar l’entrega. Servixen perquè es puga revisar el teu treball real.

## 🗂️ Tipus d’evidències

Les evidències que es poden demanar solen caure en tres grups.

### 🧱 Evidències de producte

Mostren què has construït.

Per exemple:

- Una funcionalitat executable.
- Una operació protegida.
- Una `API` publicada.
- Una integració que funciona.

### 🔄 Evidències de procés

Mostren com has treballat.

Per exemple:

- El repositori actualitzat.
- Commits amb sentit.
- Issues o tasques.
- Documentació de decisions.
- Comparació entre versions.
- Comparació breu abans/després de la revisió final de codi del `Repte 2`.
- `Report breu d’ús de la IA`, si la IA ha tingut pes rellevant.

### 🧠 Evidències de comprensió

Mostren que entens el que presentes.

Per exemple:

- Una defensa breu.
- Respostes a preguntes tècniques.
- Un canvi menut en directe.
- L’explicació d’un error, una correcció o una decisió.

## 🔍 Com es comprova l’aprenentatge real

L’aprenentatge real es pot comprovar de diverses maneres.

Per exemple:

- Revisió del repositori.
- Revisió de commits i issues.
- Execució del producte.
- Proves funcionals.
- Checkpoints.
- Defenses breus.
- Preguntes tècniques.
- Canvis menuts en directe.
- Comparació entre versions.

El criteri de fons és sempre el mateix: si pots traçar, explicar, provar i defensar el que presentes.

## 🎯 Notes per RA

Cada microrepte avaluable té **un únic RA avaluat**. Pot treballar idees d'altres RA perquè el projecte és integrat, però només els **CA avaluats** d'eixe RA generen nota en eixe microrepte.

Per això, en les rúbriques i autocorreccions trobaràs tres camps:

| Camp | Què significa |
|---|---|
| **RA avaluat** | El resultat d'aprenentatge que puntua en el microrepte. Sempre és un únic RA. |
| **CA avaluats** | Els criteris d'avaluació d'eixe RA que es valoren en el microrepte. |
| **RA de context** | Altres RA que poden aparéixer en el producte, però que no sumen nota en eixe microrepte. |

La nota d'un repte no s'ha de llegir només com una mitjana única. Un mateix repte pot aportar diverses notes separades: per exemple, `R3` pot aportar una nota de `RA5`, una de `RA6` i una de `RA8`, segons quins microreptes hages completat i quin RA avalua cadascun.

Els tallers, microdefenses, ampliacions i checkpoints poden condicionar la revisió docent, però no generen una nota RA pròpia si no indiquen explícitament un **RA avaluat**.

## 🕒 Temps de treball, commits i traçabilitat

No es controlarà el temps amb un cronòmetre. El temps de treball es revisarà com a **evidència de procés**, junt amb commits, issues, proves, documentació i defensa.

Per cada microrepte has de deixar una traça mínima:

| Moment | Evidència esperada | Exemple de commit |
|---|---|---|
| Inici | estructura, primer intent o decisió inicial | `R2M3 inici regla de domini` |
| Progrés | canvi funcional parcial | `R2M3 afegeix funcio calcularPrioritat` |
| Prova o tancament | comprovació, correcció, README o checklist | `R2M3 prova casos valid i invalid` |

Com a criteri general, cada microrepte hauria de tindre **almenys 3 commits significatius**. No compten com a commits significatius els canvis buits, massius o amb missatges genèrics com `canvis`, `final`, `coses` o `update`.

En el `README`, issue del microrepte o registre equivalent, has d'indicar el temps aproximat:

```md
## R2M3

- Inici: 2026-10-14 09:10
- Final: 2026-10-14 11:35
- Temps aproximat: 2h 25m
- Commits relacionats:
  - a1b2c3d R2M3 inici regla de domini
  - e4f5g6h R2M3 afegeix funcio calcularPrioritat
  - i7j8k9l R2M3 prova casos valid i invalid
- Què he fet:
- Què m'ha costat:
- Què he comprovat:
- IA usada, si aplica:
```

El temps declarat no dona punts per si sol. Servix per detectar si el procés és coherent. Si hi ha un únic commit enorme al final, temps declarat poc creïble, falta de proves o explicacions genèriques, el professorat podrà demanar una defensa més concreta o un microcanvi en directe.

## 🧪 Recursos de verificació

Si estàs tancant el `Repte 2`, tens una [checklist de proves](checklists_de_prova.md) que et pot ajudar a registrar casos de prova, errors visibles, estat, autenticació i funcionalitat protegida.

Esta checklist és una ajuda útil per provar el repte i deixar una evidència de verificació, però no substituïx la demo ni la defensa tècnica.

En `R2S8`, una evidència bona és `composer.json` o equivalent, una classe simple del domini o servei, una prova unitària mínima executada i una comprovació que el flux web continua funcionant. En `R2S9`, la persistència mínima amb BBDD ha de quedar reproduïble.

No es tracta encara d’una reescriptura completa, ni de convertir-ho tot a objectes, ni d’anticipar tot `R3`.

## 🤖 Ús de la IA i avaluació

En este curs es dona per fet que usaràs la IA de manera habitual.

No es tracta d’evitar-la ni d’amagar-la. Es tracta d’usar-la amb criteri i de poder demostrar què has entés, què has aprofitat i què has validat tu.

El que es valorarà és si pots:

- Validar el resultat.
- Adaptar-lo al teu projecte.
- Justificar les decisions preses.
- Corregir-lo si falla.
- Defendre el que presentes.

### 📝 Report breu d’ús de la IA

Quan la IA haja influït de manera rellevant en el treball que presentes, has d’entregar el [Report breu d’ús de la IA](report_breu_ús_ia.md).

S’ha d’entregar:

- Almenys al final de cada repte.
- També es pot demanar en checkpoints importants.
- En defenses tècniques.
- En microreptes amb ús intensiu d’IA.
- En situacions en què calga verificar millor l’autoria.

No cal:

- Fer un report per cada consulta menuda o trivial.
- Registrar cada ús menor.
- Omplir-lo si la IA no ha afectat de manera rellevant el treball presentat.

La idea és deixar un rastre breu del que has demanat, del que has aprofitat realment i del que pots explicar o defendre després.

El format recomanat és un fitxer del repositori anomenat `docs/ai-log.md`. Cada entrada hauria d'incloure: objectiu de la consulta, resum del suggeriment, què has acceptat, què has rebutjat o modificat, com ho has verificat i en quin fitxer, commit o prova es pot veure. En la pàgina del report tens una plantilla i un exemple omplit.

Un `AI log` ben escrit no acredita autoria per si sol. Es revisarà junt amb commits, codi, proves i defensa curta. Si el registre és genèric, no coincideix amb el repositori o no el pots explicar, no comptarà com a evidència suficient d'ús responsable de la IA.

## 🤝 Treball cooperatiu i autoria individual

El curs pot tindre treball cooperatiu, però l’avaluació continua sent individual.

La modalitat base és la de **parelles de contrast tècnic**.

De manera puntual es poden donar **trios avançats**, però no són la forma general de treball.

Es pot compartir:

- El mateix projecte.
- El mateix encàrrec funcional.
- Part del context de treball.
- Comparació de tecnologies o decisions.
- Alguns checkpoints o moments de contrast.

Però continuen sent individuals:

- El repositori.
- Les evidències.
- La defensa.

Això vol dir que no et pots amagar darrere del treball de la parella o del trio. Has de poder explicar i defensar la teua part.

## 🎓 Checkpoints i defenses

Un checkpoint és una revisió curta del punt en què està el teu treball.

En un checkpoint s’espera que pugues mostrar:

- Què tens fet.
- Què funciona.
- Què no està tancat encara.
- Quines decisions has pres.
- Quin serà el pas següent.

Una defensa és una explicació breu del teu propi treball.

En una defensa s’espera que pugues:

- Mostrar el sistema funcionant.
- Explicar el flux principal.
- Justificar decisions importants.
- Parlar d’errors i correccions.
- Explicar l’ús de la IA, si n’has fet.
- Respondre preguntes o fer un microcanvi.

## ⚠️ Què no és suficient

No és suficient:

- Mostrar captures sense prova reproduïble.
- Portar codi que no entens.
- Confiar només en el cas feliç.
- Improvisar la documentació al final.
- Delegar massa en la IA.
- Amagar-te darrere del treball de la parella o del trio.

Una presentació que parega correcta no compensa falta de proves, falta de traçabilitat o falta de comprensió real.

## 🎯 Idea final

En este curs es valora sobretot si el teu treball és:

- Real.
- Verificable.
- Comprensible.
- Traçable.
- I defensable.


## 🌟 Com compta la franja 9→10

La franja `9→10` no és un sistema de punts extra. Requerix una ampliació amb valor tècnic real sobre un repte que ja estiga ben resolt.

La nota final d'un repte es llig així:

```text
nota_final_repte = min(nota_nucli_repte, 9) + ampliacio_9_10
```

Per això una mitjana excel·lent dels microreptes acredita un nucli excel·lent, però no dona automàticament un `10` final de repte. Sense ampliació validada, la nota final del repte queda limitada a `9`.

Perquè una ampliació compte de veritat, ha de:

- partir d'un nucli complet i validat
- aportar una millora integrada i no ornamental
- deixar evidències mínimes revisables
- poder-se explicar i defensar
- no dependre d'una delegació excessiva en IA
