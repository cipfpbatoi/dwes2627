# Repte 5. Integració híbrida i tancament

## Finalitat del repte

En este repte el producte deixa de funcionar com un sistema tancat i s'obri a fonts, serveis o repositoris externs.

L'objectiu no és "cridar una API" ni fer una automatització vistosa. L'objectiu és construir una funcionalitat híbrida amb valor real: seleccionar una font externa, recuperar informació o servei real, transformar-lo, integrar-lo en el producte i deixar-lo provat i defensable.

Continua vigent la mateixa regla del curs:

- es pot compartir context o contrast tècnic;
- implementació, evidències i defensa continuen sent individuals.

## Resultat principal que treballes

El centre del repte és `RA9`: aplicacions web híbrides i ús de fonts o serveis externs.

També poden aparéixer com a suport:

- `RA7`, si consumeixes o combines serveis web;
- `RA8`, si la integració modifica un flux dinàmic del backend;
- `RA6`, només si persistixes o combines dades pròpies amb dades externes.

## Vista ràpida

| Bloc | Què has de deixar fet |
|---|---|
| Font externa | Selecció crítica d'una font, servei o repositori extern amb valor real per al producte. |
| Connexió | Recuperació real i reproduïble de dades o servei extern. |
| Transformació | Mapping i adaptació de la informació externa al domini propi. |
| Integració | Funcionalitat híbrida integrada en una pantalla, endpoint, procés o automatització del producte. |
| Robustesa | Tractament mínim d'errors i prova d'una fallada controlada. |
| Documentació | Proves, mapa del flux, configuració i defensa tècnica. |

## Què no és suficient

- una automatització decorativa;
- mostrar un JSON extern tal qual;
- integrar un servei extern sense valor de negoci clar;
- no poder explicar el recorregut complet de dades;
- dependre d’una configuració copiada sense entendre-la;
- tancar el repte sense prova d'error.

## Microreptes del repte

| Microrepte | Focus | Pes |
|---|---|---:|
| `R5M1` | Selecció de font externa i disseny de la integració. | `15%` |
| `R5M2` | Connexió amb la font externa i recuperació real. | `20%` |
| `R5M3` | Transformació, mapping i valor afegit. | `20%` |
| `R5M4` | Integració de la funcionalitat híbrida en el producte. | `25%` |
| `R5M5` | Prova, documentació i defensa de la integració. | `20%` |

## Seqüència recomanada

1. Tria una font externa que aporte valor real al teu producte.
2. Implementa una connexió mínima i comprova resposta real.
3. Transforma les dades externes perquè encaixen amb el teu domini.
4. Integra el resultat en una pantalla, endpoint, procés o automatització del producte.
5. Prova el cas correcte, prova una fallada i documenta el flux complet.

Guies d'avaluació:

- [R5M1. Guia d'avaluació](../03_com_s_avalua/rubriques/r5m1.md)
- [R5M2. Guia d'avaluació](../03_com_s_avalua/rubriques/r5m2.md)
- [R5M3. Guia d'avaluació](../03_com_s_avalua/rubriques/r5m3.md)
- [R5M4. Guia d'avaluació](../03_com_s_avalua/rubriques/r5m4.md)
- [R5M5. Guia d'avaluació](../03_com_s_avalua/rubriques/r5m5.md)

Materials de suport:

- [R5. Integració híbrida i defensa final](../recursos/Repte5/R5-Integracio-hibrida-i-defensa-final.pdf)
- [R5M1. Selecció de font externa i disseny de la integració](../recursos/Repte5/R5M1-Seleccio-de-font-externa-i-disseny-de-la-integracio.pdf)
- [R5M2. Connexió amb la font externa](../recursos/Repte5/R5M2-Connexio-amb-la-font-externa.pdf)
- [R5M3. Transformació, mapping i valor afegit](../recursos/Repte5/R5M3-Transformacio-mapping-i-valor-afegit.pdf)
- [R5M4. Funcionalitat híbrida integrada](../recursos/Repte5/R5M4-Funcionalitat-hibrida-integrada.pdf)
- [R5M5. Prova, documentació i defensa](../recursos/Repte5/R5M5-Prova-documentacio-i-defensa.pdf)

Teoria relacionada per microrepte:

- `R5M1`: [Integració externa i flux híbrid](../recursos/Teoria/Teoria-R5-Integracio-externa-i-flux-hibrid.pdf)
- `R5M2`: [Integració externa i flux híbrid](../recursos/Teoria/Teoria-R5-Integracio-externa-i-flux-hibrid.pdf)
- `R5M3`: [Mapping, proves i defensa d'una integració](../recursos/Teoria/Teoria-R5-Mapping-proves-i-defensa-duna-integracio.pdf)
- `R5M4`: [Integració externa i flux híbrid](../recursos/Teoria/Teoria-R5-Integracio-externa-i-flux-hibrid.pdf) i [Mapping, proves i defensa d'una integració](../recursos/Teoria/Teoria-R5-Mapping-proves-i-defensa-duna-integracio.pdf)
- `R5M5`: [Mapping, proves i defensa d'una integració](../recursos/Teoria/Teoria-R5-Mapping-proves-i-defensa-duna-integracio.pdf)

## Presentació i entrega

Per preparar l'entrega, la demo i la defensa breu, usa la [guia de presentació dels reptes](guia_presentacio.md#repte-5).

## Connexió amb el tancament final

Després de `R5` ja no hi ha un nou repte. El següent pas és el tancament del producte i la defensa final individual.

La defensa final usarà esta integració per comprovar:

- criteri tècnic;
- autoria;
- comprensió del flux complet;
- ús verificable de la IA, si n'hi ha hagut.

## Ampliació 9→10

**Finalitat**  
Aprofundir en la integració híbrida i demostrar més control sobre fluxos, fonts externes, errors i traçabilitat tècnica.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

**Opcions d'ampliació**

- Fer més robust el mapa d'integració: font, contracte, mapping, resultat i errors.
- Afegir reintents, cache, fallback, observabilitat bàsica o comparació entre dues estratègies d'integració.
- Automatitzar una part del flux si aporta valor real i continua sent defensable.

**Proposta pròpia**  
També es pot proposar una ampliació pròpia si té valor tècnic real sobre la integració i es valida prèviament.

**Evidències mínimes**

- commit o branca identificable;
- esquema o nota breu del flux híbrid;
- demo funcional de la integració;
- rastre de l'ús assistit per IA, si l'has usat.

**Ús assistit per IA**  
La IA pot servir per contrastar estratègies, revisar transformacions o suggerir millores, però no substituïx la teua comprensió del flux ni la teua validació.

**Defensa**  
L'ampliació només compta si pots explicar què s'integra, com circula la informació i per què la solució està ben resolta.
