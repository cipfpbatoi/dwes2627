# Brief Gamma. Teoria R3. Rutes, controladors, vistes i flux end-to-end

## Objectiu

Crear una presentació teòrica curta per preparar `R3M3` i `R3M4`, explicant com una petició recorre el framework fins a generar una resposta visible amb dades reals.


## Idees clau

- Un flux end-to-end comença en una ruta i acaba en una resposta verificable.
- El controlador coordina, però no hauria de concentrar tota la lògica.
- La capa de dades recupera o guarda informació real.
- La vista, plantilla o resposta ha de mostrar dades reals del projecte.
- En `R3`, almenys un flux ha de ser server-rendered amb HTML generat pel servidor.
- El segon flux ha d'aportar valor funcional, no només una pantalla nova.
- Cal provar cas positiu i almenys un error o validació.

## Format recomanat

- 8-10 diapositives.
- Diagrama del recorregut de la petició.
- Exemple mínim de llistat o detall.
- Exemple de dades passades a vista/plantilla.
- Diapositiva sobre primer flux heretat de `R2`.
- Diapositiva sobre segon flux o ampliació funcional.
- Errors habituals.

## No incloure

- Contracte d'API com a focus principal.
- Frontend client complex.
- Arquitectura hexagonal o patrons avançats com a requisit.
