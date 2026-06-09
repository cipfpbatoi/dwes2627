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
  - `R1M2`: entorn executable, primer punt d'entrada, tancament, verificació i evidències de pas a `R2`.
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

## Repte 2

Encara no hi ha PDFs publicats localitzats en `docs/recursos/Repte2/`.

Briefs interns creats per preparar les presentacions de la seqüència actual:

| Fitxer | Ús probable | Observacions |
|---|---|---|
| `gamma-presentacions/reptes/r2.md` | Presentació de repte | Visió general de processament, reintent, guardat funcional, estat i autenticació. |
| `gamma-presentacions/microreptes/r2m1.md` | Presentació de microrepte | Entrada variada i validació bàsica de servidor. |
| `gamma-presentacions/microreptes/r2m2.md` | Presentació de microrepte | Processament, reintent i guardat funcional. |
| `gamma-presentacions/microreptes/r2m3.md` | Presentació de microrepte | Lògica del flux i regles del projecte. |
| `gamma-presentacions/microreptes/r2m4.md` | Presentació de microrepte | Estat, sessió i cookies. |
| `gamma-presentacions/microreptes/r2m5.md` | Presentació de microrepte | Autenticació i funcionalitat protegida. |
| `gamma-presentacions/microreptes/r2m6.md` | Presentació de microrepte | Proves, depuració i checkpoint tècnic. |
| `gamma-presentacions/microreptes/r2m7.md` | Presentació de microrepte | Primera peça testable amb POO i Composer. |
| `gamma-presentacions/teoria/r2-formularis-validacio-servidor.md` | Teoria de suport | Coneixement previ per a `R2M1`. |
| `gamma-presentacions/teoria/r2-reintent-guardat-funcional.md` | Teoria de suport | Coneixement previ per a `R2M2`. |
| `gamma-presentacions/teoria/r2-logica-regles-arrays-funcions.md` | Teoria de suport | Coneixement previ per a `R2M3`. |
| `gamma-presentacions/teoria/r2-estat-sessio-cookies.md` | Teoria de suport | Coneixement previ per a `R2M4`. |
| `gamma-presentacions/teoria/r2-auth-operacio-protegida.md` | Teoria de suport | Coneixement previ per a `R2M5`. |
| `gamma-presentacions/teoria/r2-proves-debug-checkpoint.md` | Teoria de suport | Coneixement previ per a `R2M6`. |
| `gamma-presentacions/teoria/r2-poo-composer-proves-unitaries.md` | Teoria de suport | POO, Composer i proves unitàries per a `R2M7`. |
