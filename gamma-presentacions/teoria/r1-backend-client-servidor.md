# Brief Gamma. Teoria R1. Backend, client-servidor i arquitectura web

## Objectiu

Crear una presentació teòrica de transició per obrir el curs i preparar `R1M1`. Ha d'introduir conceptes nous amb més calma que una micro-presentació: backend, client, servidor, petició, resposta, runtime i responsabilitats.


## Idees clau

- Client i servidor tenen responsabilitats diferents.
- El navegador no és el backend.
- El backend aporta resposta dinàmica, validació, accés a dades i regles.
- Una arquitectura web mínima té petició, servidor, runtime, resposta i navegador.
- El mateix URL pot donar respostes diferents si el servidor executa lògica.
- Una pàgina estàtica no és el mateix que una resposta generada pel backend.
- El backend no és només "on està el codi": és qui aplica regles i protegeix el producte.
- El projecte del curs necessitarà backend perquè haurà de validar, conservar, protegir i integrar dades.

## Desenvolupament recomanat

1. **Problema inicial**
   - Una web estàtica no pot validar una reserva, protegir una acció o consultar dades.
   - El backend apareix quan la resposta depén d'una regla, usuari, estat o dada.
2. **Client**
   - Navegador, HTML, CSS, JavaScript i formularis.
   - Què veu i manipula l'usuari.
3. **Servidor**
   - Rep peticions, executa codi i torna respostes.
   - Pot consultar fitxers, BBDD o serveis.
4. **Petició i resposta**
   - URL, mètode, capçaleres, cos i resposta.
   - Exemple simple: demanar `/reserves` i rebre HTML generat.
5. **Runtime**
   - PHP, Node, Python o altres entorns executen el codi servidor.
   - El navegador rep el resultat, no el codi privat.
6. **Connexió amb el projecte**
   - Inventari, reserves o incidències necessiten regles.
   - El repte no és "fer una web", sinó començar un producte backend.

## Format recomanat

- 10-12 diapositives.
- Un exemple visual de petició i resposta.
- Una diapositiva de vocabulari mínim.
- Un exemple comparant HTML estàtic i resposta generada.
- Una diapositiva amb tres dominis del projecte i què farà el backend en cadascun.
- Una diapositiva de "què no és backend".
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Frameworks en profunditat.
- Persistència avançada.
- Autenticació.
- Codi extens.
