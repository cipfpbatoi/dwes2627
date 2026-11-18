# Suport tècnic mínim per a R3

Esta guia no substituïx la documentació oficial del framework. Servix per saber quines peces has de buscar i com han d'encaixar en `R3`.

Si primer vols entendre què és un framework i veure una arrencada mínima amb
Laravel o NestJS, consulta els [miniapunts de frameworks](mini_apunts_frameworks.md).

Per preparar específicament `R3M4`, consulta la guia de
[components de vista i manteniment d'un recurs](manteniment_components.md).

## Recorregut d'una petició

En un flux web bàsic, el camí és:

1. El navegador o client fa una petició.
2. Una ruta rep la URL i el mètode.
3. Un controlador coordina què cal fer.
4. Un servei o cas d'ús aplica lògica si cal.
5. Un model, repositori o ORM consulta o guarda dades.
6. Una vista, plantilla o resposta retorna el resultat.

En `R3`, almenys un recorregut ha de passar per una vista o plantilla renderitzada en servidor. Si tots els fluxos acaben només en JSON o en una futura `API`, falta una part del repte.

Si tot passa dins d'un únic fitxer o controlador gegant, no estàs aprofitant bé el framework.

## Per què separar presentació i lògica

Separar responsabilitats aporta avantatges pràctics:

- pots canviar una vista sense tocar tota la lògica
- pots provar millor una operació
- pots reutilitzar una consulta o servei
- pots entendre abans on està un error
- pots preparar millor una futura `API`

En `MP1` has de comparar el framework triat amb una altra opció i explicar quin avantatge t'ajuda més en el teu projecte. No cal una comparativa llarga; cal una decisió tècnica comprensible.

## Rutes

Una ruta connecta una URL amb una acció.

Exemples de rutes de `R3`:

- `GET /incidencies`: llistat.
- `GET /incidencies/3`: detall.
- `POST /incidencies`: crear.
- `POST /incidencies/3/tancar`: canvi d'estat.

Criteri mínim:

- cada cas d'ús ha de tindre ruta clara
- el nom ha de correspondre al domini
- no crees rutes només per provar codi intern

## Controladors

El controlador rep la petició i coordina.

Ha de fer:

- rebre entrada
- cridar serveis o models
- decidir resposta
- retornar vista, plantilla o JSON

No hauria de fer:

- tindre tota la lògica del negoci
- construir consultes llargues sense criteri
- carregar dades falses
- barrejar HTML, validació, consulta i resposta sense separació

## Vistes, plantilles o respostes

Segons l'stack:

- `Laravel`: Blade o resposta JSON.
- `Symfony`: Twig o resposta JSON.
- `Django`: plantilles Django o resposta JSON.
- `NestJS`: resposta JSON; configura plantilles si el projecte necessita HTML renderitzat en servidor.

Criteri mínim:

- la resposta ha de mostrar o retornar dades reals
- ha de permetre provar el cas d'ús
- els errors han de ser visibles o identificables

Per al cas server-rendered:

- el controlador ha de passar dades reals a una vista o plantilla
- el servidor ha de retornar `HTML` generat pel framework
- el contingut ha de canviar segons dades, paràmetres, estat, filtre o formulari
- no val una plantilla estàtica sense dades del projecte

## Formularis i flux d'escriptura en R3M3

En `R3M2` prepares l'esquema, les dades inicials i una primera lectura. En `R3M3`, si el cas d'ús crea o modifica dades, el recorregut esperat és:

```text
GET formulari
  → plantilla server-rendered
  → POST amb CSRF
  → validació en servidor
  → regla de negoci
  → alta o canvi en BBDD
  → redirecció
  → resultat llegit de la BBDD
```

### El formulari ha de demostrar

- camps vinculats al domini, no un formulari de contacte genèric;
- opcions tancades procedents d'una única font coherent;
- protecció CSRF pròpia del framework;
- conservació de valors aprofitables quan hi ha error;
- errors visibles i comprensibles;
- validació en servidor encara que també hi haja restriccions HTML;
- persistència només després de validar;
- redirecció després de l'èxit per evitar reenviar en refrescar;
- resultat visible obtingut novament de la BBDD.

No uses directament tota la petició per fer una inserció massiva. Selecciona o obtín només les dades validades i calcula en servidor els camps que l'usuari no ha de controlar, com l'estat inicial, l'autoria, el cost o el saldo.

### Equivalències orientatives

| Peça | Laravel | Symfony | Django | NestJS |
|---|---|---|---|---|
| Mostrar formulari | ruta `GET` + controlador + Blade | ruta/controlador + Form/Twig | URL + view + Form/ModelForm + template | `@Get()` + template engine configurat |
| Processar | ruta `POST` | mateixa ruta o acció `POST` | branca `request.method == "POST"` o view de classe | `@Post()` + DTO |
| CSRF | `@csrf` | token CSRF del Form | `{% csrf_token %}` | protecció equivalent coherent amb sessió/formulari |
| Validar | Form Request/validator | Form + Validator | `form.is_valid()` + validators | DTO + `ValidationPipe` |
| Dades segures | `$request->validated()` o `safe()` | dades vàlides del Form | `cleaned_data` o instància del ModelForm | DTO validat |
| Guardar | Eloquent/model/relació | EntityManager/repositori | ORM amb `save()` | service + repositori/ORM |
| Tancar | `redirect()->route()` + flash | `redirectToRoute()` + flash | `redirect()` + messages | redirecció/resposta server-rendered equivalent |

La sintaxi canvia, però la idea és la mateixa: la plantilla presenta; la validació protegix l'entrada; el controlador coordina; la regla decidix; la capa de dades persistix.

### Cas positiu i cas negatiu

La prova del flux no ha de limitar-se a comprovar un codi `200`:

- amb entrada correcta, comprova redirecció o resposta i fila creada/modificada;
- amb entrada invàlida, comprova error visible i que la BBDD no ha canviat;
- si hi ha una regla calculada, comprova també el valor resultant;
- si es puja un fitxer, comprova que no quede orfe quan falla la BBDD.

Consulta el desenvolupament complet en [R3M3. Primer cas d'ús complet](../../02_reptes/repte_03.md#r3m3-primer-cas-dus-complet).

## Edició, eliminació i components en R3M4

`R3M4` amplia el flux anterior sobre un recurs existent. Incorpora actualització
amb `PUT/PATCH`, eliminació amb `DELETE` o els equivalents server-rendered del
framework, una peça de vista reutilitzada, resposta `404`, regla d'eliminació i
transacció quan una operació modifica diversos registres.

Consulta la [teoria específica d'R3M4](manteniment_components.md) per entendre
la semàntica dels mètodes, els equivalents de component en Laravel, Symfony,
Django i NestJS, i les proves mínimes que has de preparar.

## Models i capa de dades

El model, entitat, esquema o repositori representa dades del domini.

Exemples:

- `Incidencia`
- `Reserva`
- `Producte`
- `Usuari`
- `MovimentInventari`

Criteri mínim:

- el model ha d'estar connectat amb la BBDD
- ha de servir als casos d'ús
- no modeles tot el projecte si només necessites una base inicial

## Conjunt de dades recuperat

En `MP2` has de recuperar un conjunt de dades real i usar-lo.

Exemples:

- llistat d'incidències
- reserves d'un usuari
- productes amb stock baix
- últims moviments d'inventari
- tasques filtrades per estat

El conjunt de dades ha d'arribar a una vista, resposta o flux funcional. Una consulta feta només en consola no és suficient si després no alimenta cap part del projecte.

Si alimenta una vista, has de poder assenyalar clarament:

- on es fa la consulta o recuperació
- on es passa el conjunt de dades al controlador o resposta
- on la plantilla el recorre o el mostra
- com es comprova que les dades venen de la BBDD

## Connexió a BBDD

La connexió ha d'estar configurada amb variables d'entorn.

`README.md` ha d'explicar:

- nom del servei de BBDD en Docker
- usuari
- contrasenya
- nom de BBDD
- com executar migracions
- com carregar dades inicials

No publiques secrets reals. Usa `.env.example`.

## Migrations

Una migració crea o modifica l'estructura de la BBDD.

Ha de quedar al repositori.

Ha de permetre crear la BBDD des de zero.

Criteri mínim:

- almenys una migració útil per als fluxos
- camps necessaris per provar dades reals
- noms comprensibles
- sense dependència de canvis manuals en la BBDD

## Dades inicials reproduïbles

Un seeder, fixture o script de càrrega crea dades inicials.

Servix perquè el professorat puga provar el projecte sense inventar dades a mà.

Criteri mínim:

- dades suficients per als `2` casos d'ús
- dades recognoscibles
- instrucció clara per executar-lo
- es pot repetir després de reiniciar la BBDD

## Prova mínima del projecte

Com a mínim has de poder comprovar:

- el projecte arranca
- la BBDD es crea
- els fixtures/seeders o scripts carreguen dades
- el primer flux funciona
- el segon flux funciona
- una entrada incorrecta dona error controlat

Pot ser:

- test automatitzat
- comanda del framework
- checklist manual reproduïble
- col·lecció de peticions si treballes amb API

El que no val és dir "ho he provat" sense deixar cap rastre.

## Docker mínim del repte

La configuració concreta depén de l'stack, però normalment necessites:

- servei de l'aplicació
- servei de BBDD
- volum o configuració per persistir dades mentre treballes
- variables d'entorn
- instruccions d'arrencada

`README.md` ha de dir com fer:

```bash
docker compose up -d
```

I també com executar dins del contenidor les comandes del framework, si cal.

## Mapa ràpid per stack

| Peça | Laravel | Symfony | Django | NestJS |
|---|---|---|---|---|
| Ruta | `routes/web.php` o `api.php` | atributs o fitxers de rutes | `urls.py` | decorators en controller |
| Controlador | `app/Http/Controllers` | `src/Controller` | funció o classe view | `*.controller.ts` |
| Servei | `app/Services` o accions | `src/Service` | servei o lògica pròpia | `*.service.ts` |
| Model | `app/Models` | `src/Entity` | models Django ORM | entity, schema o model |
| Migració | `database/migrations` | Doctrine migrations | `python manage.py makemigrations` | carpeta de migrations de l'ORM |
| Dades inicials | `database/seeders` | fixtures | fixtures o management command | script o seeder |
| Vista | Blade | Twig | plantilles Django | configurar plantilles per al flux server-rendered de `R3` |
| Proves | PHPUnit/Pest | PHPUnit | Django TestCase/pytest-django | Jest |
