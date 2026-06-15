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

## Format recomanat

- 10-12 diapositives.
- Una diapositiva de mapa de peces.
- Una diapositiva de comprovacions mínimes.
- Una diapositiva amb exemple de README d'arrencada.
- Una diapositiva amb exemple de `docker compose up` o comanda equivalent.
- Una diapositiva d'errors habituals.

## No incloure

- Instal·lació detallada pas a pas si ja està en una guia separada.
- Frameworks en profunditat.
- Arquitectura MVC.
- Persistència formal.
