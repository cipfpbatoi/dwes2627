# Repte 4. API i consum

## Finalitat del repte

En este repte el backend deixa de ser només usable des de dins i passa a ser publicable i consumible.

El treball continua sobre el mateix projecte i sobre el mateix encàrrec funcional. L’objectiu és convertir casos d’ús reals del producte en una API clara, provada i documentada.

## Vista ràpida

| Bloc | Què has de deixar fet |
|---|---|
| Contracte | Endpoints lligats a casos d’ús reals, request/response i errors previstos. |
| Implementació | Respostes estructurades amb dades reals, validació d’entrada i codis d’estat coherents. |
| Protecció | Autenticació o permisos en punts sensibles, amb cas autoritzat i denegat. |
| Consum | Prova real amb client, script, col·lecció o eina equivalent. |
| Documentació | Documentació operativa que coincidix amb el comportament real de l’API. |

## Què no és suficient

- obrir rutes soltes sense valor de producte
- generar documentació que no coincideix amb el codi
- oblidar autenticació o permisos en punts sensibles
- donar per bo un consum només manual o parcial

## Microreptes del repte

| Microrepte | Focus | Pes |
|---|---|---:|
| `R4M1` | Disseny del contracte del servei: recurs, endpoints, request/response i errors. | `15%` |
| `R4M2` | Primer endpoint funcional amb resposta estructurada i dades reals. | `20%` |
| `R4M3` | Protecció de l'API amb cas autoritzat i denegat. | `20%` |
| `R4M4` | Consum real del servei amb eina, script, client o col·lecció. | `20%` |
| `R4M5` | Documentació, proves, incidències i tancament cap a `R5`. | `25%` |

## Seqüència recomanada

1. Defineix el contracte abans de tocar codi.
2. Implementa primer un endpoint nuclear i comprova la resposta real.
3. Afig control d'accés si el recurs ho requereix.
4. Consumeix el servei com si fores una tercera persona.
5. Documenta, prova i registra incidències abans de donar per tancat el repte.

Guies d'avaluació:

- [R4M1. Guia d'avaluació](../03_com_s_avalua/rubriques/r4m1.md)
- [R4M2. Guia d'avaluació](../03_com_s_avalua/rubriques/r4m2.md)
- [R4M3. Guia d'avaluació](../03_com_s_avalua/rubriques/r4m3.md)
- [R4M4. Guia d'avaluació](../03_com_s_avalua/rubriques/r4m4.md)
- [R4M5. Guia d'avaluació](../03_com_s_avalua/rubriques/r4m5.md)

Materials de suport:

- [R4. API pròpia, consum i documentació](../recursos/Repte4/R4-API-propia-consum-i-documentacio.pdf)
- [R4M1. Disseny del contracte del servei](../recursos/Repte4/R4M1-Disseny-del-contracte-del-servei.pdf)
- [R4M2. Primer endpoint funcional](../recursos/Repte4/R4M2-Primer-endpoint-funcional.pdf)
- [R4M3. Protecció de l'API](../recursos/Repte4/R4M3-Proteccio-de-lAPI.pdf)
- [R4M4. Consum real del servei](../recursos/Repte4/R4M4-Consum-real-del-servei.pdf)
- [R4M5. Documentació i prova del servei](../recursos/Repte4/R4M5-Documentacio-i-prova-del-servei.pdf)

Teoria relacionada per microrepte:

- `R4M1`: [Contracte d'API, HTTP i respostes](../recursos/Teoria/Teoria-R4-Contracte-dAPI-HTTP-i-respostes.pdf)
- `R4M2`: [Contracte d'API, HTTP i respostes](../recursos/Teoria/Teoria-R4-Contracte-dAPI-HTTP-i-respostes.pdf)
- `R4M3`: [Protecció, consum i documentació d'API](../recursos/Teoria/Teoria-R4-Proteccio-consum-i-documentacio-dAPI.pdf)
- `R4M4`: [Protecció, consum i documentació d'API](../recursos/Teoria/Teoria-R4-Proteccio-consum-i-documentacio-dAPI.pdf)
- `R4M5`: [Protecció, consum i documentació d'API](../recursos/Teoria/Teoria-R4-Proteccio-consum-i-documentacio-dAPI.pdf)

## Presentació i entrega

Per preparar l'entrega, la demo i la defensa breu, usa la [guia de presentació dels reptes](guia_presentacio.md#repte-4).

## Connexió amb el següent pas

En `R5`, esta API formarà part d’un flux híbrid o automatitzat. Si el contracte no està clar, la integració final es trenca.

## Ampliació 9→10

**Finalitat**  
Fer l'API més robusta, més clara i més verificable des del punt de vista del productor i del consumidor.

**Condició prèvia**  
El nucli del repte ha d'estar complet, funcional i validat.

**Opcions d'ampliació**
- Millorar la documentació de l'API, la coherència dels codis de resposta i la gestió d'errors dels endpoints principals.
- Afegir comprovacions o proves addicionals sobre contracte, autenticació o casos crítics de consum.

**Proposta pròpia**  
Pots proposar una ampliació pròpia si continua centrada en qualitat d'API i es valida abans amb el professorat.

**Evidències mínimes**
- commit o branca identificable
- README tècnic curt o nota de canvis
- prova funcional amb client, script, Postman o equivalent
- rastre de l'ús assistit per IA, si n'hi ha hagut

**Ús assistit per IA**  
La IA pot ajudar a revisar endpoints, generar proves o comparar respostes, però has de validar tu el comportament real de l'API.

**Defensa**  
Perquè compte com a `9→10`, l'ampliació ha d'estar integrada, aportar robustesa real i poder-se defensar.
