# Recursos existents generats amb Gamma

## Finalitat

Este inventari recull els PDF ja publicats en `docs/recursos/` que poden servir com a base per crear o revisar prompts de Gamma.

Els PDF no es dupliquen en este directori. Es referencien per decidir:

- quines presentacions ja existixen;
- quines es poden reutilitzar;
- quines cal separar en presentació de repte, microrepte o teoria;
- quines cal actualitzar quan canvien els reptes, microreptes o criteris.

## Repte 1

Directori publicat:

```text
docs/recursos/Repte1/
```

PDF localitzats:

| Fitxer | Ús probable | Observacions |
|---|---|---|
| `Repte-1-Kickoff-Professional-del-Backend.pdf` | Presentació de repte | Base per a `gamma-presentacions/reptes/r1.md`. |
| `Repte-1-Criteris-dAvaluacio-i-Evidencies.pdf` | Presentació de criteris i evidències | Pot alimentar rúbriques, checklist i diapositiva final de tancament de `R1`. |
| `Client-Servidor.pdf` | Teoria de suport | Coneixement previ per a `R1M1`: model client/servidor. |
| `Que-es-el-backend.pdf` | Teoria de suport | Coneixement previ per a entendre el valor del backend. |
| `Arquitectura-web-basica.pdf` | Teoria de suport | Coneixement previ sobre peces d'una aplicació web. |
| `Llenguatges-frameworks-i-full-stack.pdf` | Teoria de suport | Suport per a triar o justificar stack. |
| `Entorn-executable-servidor-i-Docker.pdf` | Teoria de suport | Suport per a entorn executable. |
| `Muntar-lentorn-executable.pdf` | Microrepte o guia pràctica | Pot alimentar una presentació de sessió sobre entorn executable. |

## Lectura per a Gamma

Per al Repte 1, els PDF existents suggereixen esta separació:

- Presentació de repte:
  - kickoff professional del backend;
  - criteris d'avaluació i evidències.
- Presentacions de microrepte:
  - `R1M1`: model client/servidor i elecció guiada de stack;
  - `R1M2/R1M3`: entorn executable i primer punt d'entrada;
  - `R1M4`: tancament, verificació i evidències de pas a `R2`, si continua definit com a microrepte.
- Presentacions teòriques:
  - client-servidor;
  - què és el backend;
  - arquitectura web bàsica;
  - llenguatges, frameworks i full stack;
  - entorn executable, servidor i Docker.

## Criteri d'actualització

Quan es regenere una presentació amb Gamma:

- revisar abans la versió PDF existent;
- comprovar si el nom i abast continuen alineats amb els microreptes actuals;
- evitar duplicar una presentació que ja cobrix el mateix objectiu;
- crear un prompt nou només si el PDF existent no reflectix la seqüència actual.
