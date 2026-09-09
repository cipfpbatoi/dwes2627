# Suport ràpid del Repte 4

| Necessite... | Recurs |
|---|---|
| veure l'enunciat | [Repte 4](../../02_reptes/repte_04.md) |
| consultar com s'avalua cada microrepte | [Guies d'avaluació de R4](../../03_com_s_avalua/rubriques/index.md#repte-4) |
| comprovar el tancament de R4 | [Checklist de R4](#checklist-de-r4) |
| repassar el mapa general de R4 | [R4. API pròpia, consum i documentació](../../recursos/Repte4/R4-API-propia-consum-i-documentacio.pdf) |
| repassar disseny del contracte del servei | [R4M1. Disseny del contracte del servei](../../recursos/Repte4/R4M1-Disseny-del-contracte-del-servei.pdf) |
| repassar primer endpoint funcional | [R4M2. Primer endpoint funcional](../../recursos/Repte4/R4M2-Primer-endpoint-funcional.pdf) |
| repassar protecció de l'API | [R4M3. Protecció de l'API](../../recursos/Repte4/R4M3-Proteccio-de-lAPI.pdf) |
| repassar consum real del servei | [R4M4. Consum real del servei](../../recursos/Repte4/R4M4-Consum-real-del-servei.pdf) |
| repassar documentació i prova del servei | [R4M5. Documentació i prova del servei](../../recursos/Repte4/R4M5-Documentacio-i-prova-del-servei.pdf) |

## Checklist de R4

Usa esta llista abans de dir que tens `R4` tancat.

### Contracte de l'API

- [ ] He triat un recurs o cas d'ús real del producte.
- [ ] Els endpoints tenen URL, mètode, entrada i resposta previstos.
- [ ] Els codis d'estat tenen sentit per al comportament real.
- [ ] Hi ha errors previstos i documentats.

### Implementació

- [ ] Hi ha almenys un endpoint funcional amb dades reals.
- [ ] La resposta és estructurada i coherent amb el contracte.
- [ ] La validació d'entrada està en servidor.
- [ ] Els errors no retornen respostes improvisades o incoherents.

### Protecció

- [ ] Els punts sensibles tenen autenticació o permisos quan cal.
- [ ] He provat un cas autoritzat.
- [ ] He provat un cas denegat.
- [ ] La protecció no depén només del client o d'ocultar botons.

### Consum i documentació

- [ ] He consumit l'API amb eina, script, client, col·lecció o equivalent.
- [ ] La prova de consum és repetible.
- [ ] La documentació coincideix amb el comportament real de l'API.
- [ ] He registrat incidències o ajustos detectats durant la prova.

### Tancament

- [ ] Puc demostrar el contracte, la implementació, la protecció i el consum.
- [ ] Puc explicar què passaria si una tercera persona consumira l'API.
- [ ] El repte deixa preparada la base per a la integració de `R5`.

Si alguna casella bàsica no està marcada, `R4` encara no està complet.
