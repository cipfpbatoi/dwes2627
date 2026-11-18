# Brief Gamma. Teoria R3. Rutes, controladors, vistes i flux end-to-end

## Objectiu

Crear una presentació teòrica curta per preparar `R3M3` i `R3M4`, explicant com una petició recorre el framework fins a generar una resposta visible amb dades reals.


## Idees clau

- Un flux end-to-end comença en una ruta i acaba en una resposta verificable.
- En un flux d'escriptura hi ha dos recorreguts HTTP: `GET` mostra el formulari i `POST` processa l'enviament.
- El formulari server-rendered necessita camps coherents, CSRF, valors previs i errors visibles.
- La validació HTML ajuda la persona usuària, però la validació del servidor protegix el sistema.
- El controlador coordina, però no hauria de concentrar tota la lògica.
- La capa de dades recupera o guarda informació real.
- La vista, plantilla o resposta ha de mostrar dades reals del projecte.
- Després d'una escriptura correcta, Post/Redirect/Get evita repetir l'operació en refrescar.
- Els formularis HTML només envien `GET` i `POST` nativament; el framework pot oferir *method override* o una convenció equivalent per a `PUT/PATCH/DELETE`.
- `PATCH` modifica parcialment, `PUT` substituïx i `DELETE` elimina; una transició d'estat no és una eliminació.
- Un component, parcial, macro o equivalent rep dades explícites i evita duplicar presentació.
- En Django 6, `partialdef` i `partial` definixen fragments reutilitzables; en versions anteriors, `include ... only` explicita el context i `inclusion_tag` incorpora lògica Python quan cal.
- En `R3`, almenys un flux ha de ser server-rendered amb HTML generat pel servidor.
- El segon flux ha d'aportar valor funcional, no només una pantalla nova.
- Cal provar cas positiu i almenys un error o validació.

## Format recomanat

- 8-10 diapositives.
- Diagrama del recorregut de la petició.
- Exemple mínim de llistat o detall.
- Exemple complet de formulari GET/POST amb cas positiu i entrada invàlida.
- Exemple de dades passades a vista/plantilla.
- Taula de responsabilitats: ruta, formulari/DTO, validador, controlador, servei, model/ORM i vista.
- Diapositiva sobre primer flux heretat de `R2`.
- Diapositiva sobre component de vista reutilitzat en llistat i edició.
- Diapositiva comparant `POST`, `PUT`, `PATCH`, `DELETE` i els equivalents server-rendered.
- Errors habituals.
- Una diapositiva final amb preguntes de comprovació.

## No incloure

- Contracte d'API com a focus principal.
- Frontend client complex.
- Arquitectura hexagonal o patrons avançats com a requisit.

## Preguntes de comprovació

- Quina ruta inicia el flux i quina resposta final genera?
- Què fa el controlador i què no hauria de concentrar?
- D'on venen les dades reals que es mostren?
- Quin flux heretat de `R2` queda reconstruït en framework?
- Quin error o validació pots demostrar en el flux?
