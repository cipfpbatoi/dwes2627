# 🌟 Ampliacions d'excel·lència 9→10

Si ja has resolt bé el nucli d'un repte, les ampliacions `9→10` et permeten aprofundir i demostrar excel·lència tècnica.

## Per a què servixen

Servixen per aprofundir amb criteri i demostrar una millora tècnica real: més robustesa, millor estructura, millor traçabilitat, més qualitat de proves, millor documentació o millor integració.

## Regla bàsica: nucli primer, ampliació després

L'ampliació només compta si el nucli obligatori del repte ja està complet, funcional i validat. No servix per compensar mancances del treball base.

Normalment la via `9→10` s'aplica al **repte complet**, no a cada microrepte per separat. Una ampliació pot nàixer d'un microrepte concret, però ha de millorar el conjunt del repte o una part important del seu flux.

## Fórmula general de nota

La idea general és:

```text
nota_final_repte = 0.9 * nota_nucli_repte + ampliacio_9_10
```

La nota del nucli obligatori pot ser excel·lent, però sense ampliació validada la nota final del repte queda limitada a `9`. La franja entre `9` i `10` s'obri només amb una ampliació integrada, provada i defensada.

L'ampliació `9→10` pot sumar entre `0` i `1` punt segons el valor tècnic, la integració, la verificació, la traçabilitat i la defensa.

## Com compten per a la franja 9→10

La franja `9→10` no es resol amb més quantitat ni amb afegits ornamentals. Requerix una ampliació integrada, útil i defensable.

## Evidències mínimes esperades

- commit o branca identificable
- justificació tècnica breu
- prova funcional o demo
- rastre de l'ús assistit per IA, si n'hi ha hagut
- capacitat d'explicar i defensar la decisió presa

## Ús assistit per IA

La IA es pot usar per contrastar enfocaments, revisar codi, suggerir proves o comparar alternatives. No pot substituir la decisió tècnica, la validació ni la defensa de l'ampliació.

## On trobar-les

- [Repte 1](02_reptes/repte_01.md)
- [Repte 2](02_reptes/repte_02.md)
- [Repte 3](02_reptes/repte_03.md)
- [Repte 4](02_reptes/repte_04.md)
- [Repte 5](02_reptes/repte_05.md)

## Càlcul i validació de l'ampliació global

Les notes dels microreptes continuen sobre 10 i valoren només el nucli. La nota global del repte es calcula una sola vegada:

```text
nucli = suma(nota_microrepte × pes) / suma(pesos)
nota_repte = 0,9 × nucli + ampliacio_validada
```

El nucli aporta fins a 9 punts i l'ampliació fins a 1. S'arredonix només el resultat final a dos decimals. Les notes curriculars per RA es mantenen separades: no es torna a sumar l'ampliació a cada RA ni a cada microrepte.

| Repte | Únic microrepte que recull l'ampliació | Declaració |
|---|---|---|
| R1 | R1M2 | `docs/r1-ampliacio.md` |
| R2 | R2M9 | `docs/r2-ampliacio.md` |
| R3 | R3M7 | `docs/r3-ampliacio.md` |
| R4 | R4M5 | `docs/r4-ampliacio.md` |
| R5 | R5M5 | `docs/r5-ampliacio.md` |

La declaració identifica l'últim microrepte, explica el valor aportat al repte complet i enllaça implementació, proves, decisions i ús d'IA. L'ampliació pot desenvolupar-se abans, però només es proposa i valida en este punt final. Les activitats d'aprofundiment anteriors no generen punts independents. El taller opcional R2S10 pot aportar evidències a la declaració de R2, sense crear un nou microrepte amb nota.

| Qualitat de l'ampliació | Punts proposats/validats |
|---|---:|
| Absent o no funcional | 0 |
| Parcial, amb mancances importants | 0,25 |
| Funcional, amb verificació o justificació incompleta | 0,50 |
| Completa i verificada, amb una mancança menor | 0,75 |
| Completa, verificada i ben justificada | 1 |

L'autocorrector proposa els punts i assenyala evidències i preguntes per a la presentació. El professorat confirma o ajusta la proposta, comprova els mínims obligatoris del repte i guarda una observació. Sense mínims coberts no es poden sumar punts d'ampliació. Si no hi ha ampliació, el professorat pot validar explícitament 0; l'absència d'una proposta automàtica no impedix la revisió manual.

Pendent de revisió no significa zero: la base és visible, però la nota global queda pendent. Si falten correccions obligatòries, no es pot validar. Una nova correcció que canvie la instantània revisada torna a deixar la validació pendent. Validar l'ampliació tampoc elimina altres avisos de revisió docent del nucli.

Exemples: nucli 10 sense ampliació validada (0) → 9; nucli 10 amb ampliació 1 → 10; nucli 8 amb ampliació 0,5 i mínims confirmats → 7,70. Fer una ampliació no garantix arribar a 9.

Este criteri substituïx la fórmula anterior `min(nucli, 9) + ampliació`: és un canvi d'escala explícit. Les correccions originals dels microreptes es conserven, i una nova agregació aplica la fórmula actual sense inventar validacions docents.
