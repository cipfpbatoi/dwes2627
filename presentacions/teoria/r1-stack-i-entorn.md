# Brief Gamma. Teoria R1. Stack, servidor i entorn executable

## Objectiu

Crear una presentació teòrica de transició per preparar la decisió de stack i el muntatge de l'entorn executable. Ha d'explicar conceptes nous amb temps: llenguatge, runtime, servidor web, contenidor, dependències, entorn local i comprovació mínima.


## Idees clau

- Diferència entre llenguatge, runtime, framework, servidor web i base de dades.
- Què vol dir full stack sense convertir-ho en una llista de tecnologies.
- Què ha de tindre un entorn mínim executable.
- Com es comprova que l'entorn funciona amb una ruta mínima (`/health` o `/`).
- Variables de versió i runtime clares perquè el projecte no depenga d'un entorn inesperat.
- Quin paper pot tindre Docker en una base comuna.
- Una tecnologia no és millor per nom, sinó perquè permet construir i defensar el producte.
- Un entorn executable és part de l'evidència, no una tasca administrativa.
- El README ha d'explicar com repetir l'arrencada en una altra màquina.

## Desenvolupament recomanat

1. **Decidir stack no és triar marca**
   - Què necessita el projecte ara.
   - Què quedarà per a reptes posteriors.
2. **Peces de l'entorn**
   - Codi.
   - Runtime.
   - Servidor web.
   - Dependències.
   - Variables d'entorn.
3. **Docker o entorn equivalent**
   - Què resol.
   - Què no resol.
   - Per què ajuda a reproduir.
4. **Comprovar que funciona**
   - Ruta `/` o `/health`.
   - Resposta del servidor.
   - Log o captura.
5. **Errors habituals**
   - Funciona només en la meua màquina.
   - README incomplet.
   - Versions no documentades.

## Diapositives sobre stacks possibles

Incloure 2-3 diapositives específiques per comparar opcions sense presentar-les com una competició de tecnologies. La idea és que l'alumnat aprenga a justificar una decisió tècnica segons el repte, el temps disponible, l'equip i les evidències que podrà entregar.

### Diapositiva. Mapa de stacks possibles

| Stack | Ús raonable en el curs | Moment natural |
|---|---|---|
| PHP base | Entendre servidor, formularis, estat, fitxers i autenticació mínima sense ocultar massa capes. | R1-R2 |
| PHP amb Laravel | Construir un producte complet amb rutes, controladors, vistes, BBDD, auth i API amb un ecosistema productiu. | R3-R5 |
| PHP amb Symfony | Treballar arquitectura més explícita, components reutilitzables i mantenibilitat professional. | R3-R5 |
| Node.js amb NestJS | Fer backend TypeScript amb API, capes, DTO, validació i contractes clars. | R3-R5 |
| Python amb FastAPI | Construir API-first amb documentació automàtica i validació de dades, si el projecte ho justifica. | Opció avançada |

### Diapositiva. Avantatges i riscos

| Stack | Avantatges | Riscos o punts de vigilància |
|---|---|---|
| PHP base | Permet veure què passa en cada petició i ajuda a entendre el model client-servidor. | Pot acabar amb codi poc organitzat si no es posen límits clars. |
| Laravel | Dona estructura, convencions, eines d'autenticació, migracions i proves. | Pot ocultar conceptes bàsics si s'usa abans d'entendre el flux HTTP i l'estat. |
| Symfony | Fa visibles moltes decisions d'arquitectura i afavoreix dissenys robustos. | Té una corba d'entrada més alta i pot ser massa pesat per a un prototip curt. |
| NestJS | És coherent si ja es domina TypeScript i es vol una API modular. | Requereix controlar més ferramentes abans d'arribar al producte. |
| FastAPI | És ràpid per a APIs i molt clar en contractes de dades. | Pot allunyar-se del focus PHP del mòdul si no hi ha una justificació docent. |

### Diapositiva. Com decidir el stack

- Quin problema ha de resoldre el repte ara?
- Quina part del stack ajuda a generar una evidència observable?
- Què sabrà explicar l'equip en una defensa curta?
- Què quedarà més fàcil de provar, desplegar o revisar?
- Quin risc tècnic introdueix la decisió i com es controlarà?

## Format recomanat

- 12-15 diapositives.
- Una diapositiva de mapa de peces.
- 2-3 diapositives de comparació de stacks possibles.
- Una diapositiva de comprovacions mínimes.
- Una diapositiva amb exemple de README d'arrencada.
- Una diapositiva amb exemple de `docker compose up` o comanda equivalent.
- Una diapositiva d'errors habituals.
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Instal·lació detallada pas a pas si ja està en una guia separada.
- Frameworks en profunditat.
- Arquitectura MVC.
- Persistència formal.

## Preguntes de comprovació

- Quina diferència hi ha entre llenguatge, runtime, servidor web i framework?
- Què ha de passar perquè pugues dir que l'entorn és executable?
- Quina comanda o URL usaràs per comprovar que el projecte arranca?
- Què ha d'explicar el README perquè una altra persona puga repetir l'arrencada?
- Quin problema resol Docker o l'entorn equivalent en este projecte?
- Quin avantatge i quin risc té el stack que proposes per al repte?
