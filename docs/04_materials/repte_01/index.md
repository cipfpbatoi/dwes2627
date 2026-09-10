# Suport ràpid del Repte 1

| Necessite... | Recurs |
|---|---|
| veure l'enunciat | [Repte 1](../../02_reptes/repte_01.md) |
| omplir el primer mapa del producte en R1S0 | [Fitxa inicial de R1S0](fitxa_r1s0_mapa_producte.md) |
| consultar com s'avalua cada microrepte | [Guies d'avaluació de R1](../../03_com_s_avalua/rubriques/index.md#repte-1) |
| comprovar el tancament de R1 | [Checklist de R1](#checklist-de-r1) |
| completar la decisió inicial de stack | [Fitxa breu d'exploració tècnica inicial](../fitxa_exploracio_tecnica_inicial.md) |
| repassar el kickoff | [R1. Kickoff backend i base executable](../../recursos/Repte1/R1-Kickoff-backend-i-base-executable.pdf) |
| repassar client, servidor i decisió tècnica | [R1M1. Model client-servidor i decisió tècnica inicial](../../recursos/Repte1/R1M1-Model-clientservidor-i-eleccio-guiada-de-stack.pdf) |
| repassar entorn executable i landing inicial | [R1M2. Entorn executable, landing inicial i tancament de R1](../../recursos/Repte1/R1M2-Entorn-executable-punt-dentrada-i-tancament-de-R1.pdf) |

## Checklist de R1

Usa esta llista abans de dir que tens `R1` tancat.

### Base tècnica

- [ ] El repositori està creat i té una estructura mínima coherent.
- [ ] L'entorn arranca amb Docker o mecanisme equivalent.
- [ ] `README.md` explica requisits, arrancada, parada, ports i URL.
- [ ] Una altra persona pot seguir `README.md` sense passos ocults.

### Punt d'entrada funcional

- [ ] Hi ha una landing inicial del producte servida pel backend.
- [ ] La landing té contingut propi del projecte i CSS senzill.
- [ ] La resposta es pot obrir amb una URL documentada.
- [ ] La landing no és només un fitxer estàtic obert fora del servidor.
- [ ] Si hi ha `healthcheck`, queda com a comprovació tècnica i no com a única entrega.
- [ ] Hi ha evidència que el servei respon: captura, log, URL o prova equivalent.

### Decisió tècnica

- [ ] He completat la fitxa d'exploració tècnica inicial.
- [ ] He justificat breument la decisió tècnica inicial.
- [ ] He indicat què es confirma o s'ajusta en `R1M2` i què queda per a `R3`.
- [ ] Sé explicar què s'executa en client i què s'executa en servidor.
- [ ] He indicat algun dubte o límit tècnic real que caldrà resoldre més avant.

### Tancament

- [ ] Hi ha commits o registre del treball fet.
- [ ] La documentació del repte és localitzable dins del repositori.
- [ ] Puc arrancar el projecte i ensenyar la landing inicial en una demo breu.
- [ ] Puc explicar les peces importants sense dependre de text generat per IA.

Si alguna casella bàsica no està marcada, `R1` encara no està complet.
