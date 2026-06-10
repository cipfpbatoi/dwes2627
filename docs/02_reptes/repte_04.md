# Repte 4. API i consum

## Finalitat del repte

En este repte el backend deixa de ser només usable des de dins i passa a ser publicable i consumible.

El treball continua sobre el mateix projecte i sobre el mateix encàrrec funcional. L’objectiu és convertir casos d’ús reals del producte en una API clara, provada i documentada.

## 🌟 Via 9→10 en este repte

Este repte també té una via d'excel·lència `9→10`: **primer has de tancar bé el nucli i després pots obrir una ampliació amb valor tècnic real**. La secció completa està al final del repte.

## Què has de consolidar

- endpoints lligats a casos d’ús reals
- validació d’entrada i codis d’estat coherents
- errors d’API comprensibles
- documentació operativa
- una prova real de consum amb client, script o eina equivalent

## Què no és suficient

- obrir rutes soltes sense valor de producte
- generar documentació que no coincideix amb el codi
- oblidar autenticació o permisos en punts sensibles
- donar per bo un consum només manual o parcial

## Evidència mínima

- documentació d’API usable
- casos correctes i casos d’error verificats
- col·lecció de proves o script de consum
- commits i documentació del procés
- prova que productor i consumidor parlen el mateix contracte

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

## Evidències per microrepte

| Microrepte | Evidència mínima |
|---|---|
| `R4M1` | Contracte d'API amb mapa d'endpoints i errors. |
| `R4M2` | Endpoint funcional i prova del cas correcte. |
| `R4M3` | Petició autoritzada i petició denegada. |
| `R4M4` | Consumidor o col·lecció amb cas correcte i error. |
| `R4M5` | Documentació executable i registre de proves. |

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
