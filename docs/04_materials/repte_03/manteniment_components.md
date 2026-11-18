# R3M4. Components de vista i manteniment d'un recurs

Esta guia explica els conceptes nous d'`R3M4`. L'enunciat indica què has de
construir; ací trobaràs els criteris tècnics per prendre decisions coherents amb
el teu framework.

## Què canvia respecte d'R3M3

En `R3M3` vas completar el primer flux d'escriptura: mostrar un formulari,
validar-lo i crear dades. En `R3M4` treballes sobre un recurs que ja existix:

| En R3M3 | Ara, en R3M4 |
|---|---|
| `GET` mostra i `POST` crea | `GET` mostra o edita i `PUT/PATCH` actualitza |
| Formulari o vista completa | Peça de vista reutilitzada almenys en dos llocs |
| Validació d'una alta | Validació d'una edició i regla d'eliminació |
| Recurs nou | Recurs existent o resposta `404` |
| Una escriptura | Transacció si una operació necessita diverses escriptures |

El segon flux continua sent obligatori. Pot mantindre el recurs creat en
`R3M3` o actuar sobre una entitat relacionada, però ha d'aportar una operació
nova i útil al projecte.

## Mètodes HTTP amb intenció

| Mètode | Intenció habitual | Exemple |
|---|---|---|
| `GET` | Llegir o mostrar un formulari | Obrir l'edició d'un servici |
| `POST` | Crear un recurs nou | Publicar un servici |
| `PATCH` | Modificar una part d'un recurs | Canviar la descripció o l'estat |
| `PUT` | Substituir la representació completa | Guardar tots els camps editables |
| `DELETE` | Eliminar un recurs | Esborrar un servici sense intercanvis |

Cancel·lar, completar o arxivar sol ser un canvi d'estat amb `PATCH`, no una
eliminació. Usa `DELETE` quan el recurs deixa d'existir.

Els formularis HTML només envien `GET` i `POST` de manera nativa. Laravel i
Symfony poden interpretar un camp ocult com a *method override*. Altres
frameworks server-rendered poden usar una acció `POST` específica per editar o
eliminar. En eixe cas, documenta en el `README.md` quina intenció HTTP representa
i usa la convenció del framework de manera consistent.

!!! example "Dos recorreguts diferents"
    ```text
    GET /servicis/7/editar
      -> recupera el servici o retorna 404
      -> mostra el formulari amb les dades actuals

    PATCH /servicis/7
      -> comprova CSRF i valida
      -> aplica la regla de negoci
      -> actualitza la BBDD
      -> redirigix i torna a llegir el resultat
    ```

    ```text
    DELETE /servicis/7
      -> comprova CSRF
      -> recupera el servici o retorna 404
      -> impedix eliminar-lo si té intercanvis
      -> elimina i redirigix
    ```

## Component de vista reutilitzable

Un component de vista és una peça de presentació amb dades d'entrada clares.
Evita repetir el mateix HTML i manté la decisió visual en un únic lloc.

Pots reutilitzar, per exemple:

- una targeta o fila del recurs en el llistat i el detall;
- una etiqueta d'estat;
- un resum d'errors;
- un grup d'accions;
- els camps compartits pels formularis d'alta i edició.

El *layout* general del projecte no compta com a component nou. Tampoc compta
copiar el mateix fragment en dos fitxers: la mateixa peça s'ha de renderitzar
almenys en dos llocs i ha de rebre les dades que necessita explícitament.

| Framework | Equivalent adequat en R3M4 |
|---|---|
| Laravel | Component Blade anònim o de classe amb propietats explícites |
| Symfony | Component Twig, macro o `include` amb dades explícites |
| Django 6 o superior | *Template partial* amb `partialdef` i `partial` |
| Django 5.2 o anterior | `include ... with ... only`; `inclusion_tag` si cal preparar dades amb Python |
| NestJS server-rendered | Parcial o component del motor de plantilles configurat |

### Equivalent en Django

En Django no necessites instal·lar una biblioteca externa. Si el fragment només
presenta dades, un `include` amb context explícit és suficient:

```django
{% include "servicis/_targeta.html" with servici=servici only %}
```

Amb Django 6 també pots definir i renderitzar un *template partial*. Usa un
`inclusion_tag` quan la peça necessita preparar dades amb lògica Python abans
de renderitzar-se. La regla continua sent la mateixa: la plantilla presenta i
la lògica de negoci no queda amagada dins del component.

## Actualització segura

Una edició no consistix a guardar directament tota la petició. El flux segur és:

1. recuperar el recurs amb el mecanisme del framework;
2. retornar `404` o una resposta equivalent si no existix;
3. comprovar CSRF en el formulari;
4. validar en servidor només els camps editables;
5. aplicar les regles del domini;
6. guardar les dades validades;
7. redirigir i mostrar l'estat llegit novament de la BBDD.

Quan la validació falla, conserva els valors aprofitables, mostra errors
comprensibles i no persistisques cap canvi.

## Eliminació controlada

Abans d'eliminar, definix una condició del domini. Per exemple, un servici es
pot eliminar només si encara no té intercanvis. La comprovació ha d'estar en el
servidor; ocultar el botó no protegix l'operació.

L'eliminació necessita:

- protecció CSRF;
- recurs inexistent controlat;
- regla que permeta o denegue l'operació;
- missatge o resposta entenedora;
- comprovació de l'estat final en BBDD.

No implementes encara rols complexos ni autenticació nova: eixa protecció arriba
en `R3M5`.

## Quan cal una transacció

Usa una transacció quan una sola operació modifica diverses files o registres
relacionats i tots els canvis han de completar-se junts. Si falla un pas, el
*rollback* ha de deixar la BBDD com estava.

No cal afegir una transacció artificial a una actualització simple d'una sola
fila. Cal justificar-la pel risc real de deixar dades parcials.

## Proves mínimes

| Cas | Què has de comprovar |
|---|---|
| Component | La mateixa peça es renderitza en almenys dos llocs amb dades reals |
| Actualització correcta | Canvia el recurs i la BBDD conté el valor esperat |
| Actualització invàlida | Mostra l'error i la BBDD no canvia |
| Eliminació correcta | El recurs permés desapareix o queda segons la regla definida |
| Eliminació denegada | La regla del domini impedix l'operació i conserva les dades |
| Identificador inexistent | Retorna `404` o resposta equivalent controlada |
| Operació múltiple | Una fallada provoca *rollback* i no deixa canvis parcials |
| Regressió | El flux d'`R3M3` continua funcionant |

## Decisions que has de poder explicar

Abans d'entregar, comprova que pots respondre:

- Per què has usat `PUT` o `PATCH` en l'actualització?
- Quina convenció usa el teu framework per enviar l'operació des d'HTML?
- Quines dades rep el component i en quins dos llocs es reutilitza?
- Quina regla impedix una eliminació no vàlida?
- Què ocorre amb un identificador que no existix?
- La teua operació necessita transacció? Per què?
- Com has comprovat que `R3M3` no s'ha trencat?

Consulta també l'[enunciat d'R3M4](../../02_reptes/repte_03.md#r3m4-components-de-vista-i-manteniment-dun-recurs)
i la [guia d'avaluació](../../03_com_s_avalua/rubriques/r3m4.md).
