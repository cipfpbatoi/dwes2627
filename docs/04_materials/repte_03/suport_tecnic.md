# Suport tècnic mínim per a R3

Esta guia no substituïx la documentació oficial del framework. Servix per saber quines peces has de buscar i com han d'encaixar en `R3`.

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
- `NestJS`: resposta JSON; plantilles només si el projecte les usa.

Criteri mínim:

- la resposta ha de mostrar o retornar dades reals
- ha de permetre provar el cas d'ús
- els errors han de ser visibles o identificables

Per al cas server-rendered:

- el controlador ha de passar dades reals a una vista o plantilla
- el servidor ha de retornar `HTML` generat pel framework
- el contingut ha de canviar segons dades, paràmetres, estat, filtre o formulari
- no val una plantilla estàtica sense dades del projecte

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

El README ha d'explicar:

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

## Seeders

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
- els seeders carreguen dades
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

El README ha de dir com fer:

```bash
docker compose up -d
```

I també com executar dins del contenidor les comandes del framework, si cal.

## Mapa ràpid per stack

| Peça | Laravel | Symfony | NestJS |
|---|---|---|---|
| Ruta | `routes/web.php` o `api.php` | atributs o fitxers de rutes | decorators en controller |
| Controlador | `app/Http/Controllers` | `src/Controller` | `*.controller.ts` |
| Servei | `app/Services` o accions | `src/Service` | `*.service.ts` |
| Model | `app/Models` | `src/Entity` | entity, schema o model |
| Migració | `database/migrations` | Doctrine migrations | carpeta de migrations de l'ORM |
| Seeder | `database/seeders` | fixtures | script o seeder |
| Vista | Blade | Twig | plantilles si el projecte activa renderitzat servidor; si no, acordar amb el professorat quin flux HTML cobreix `R3` |
| Proves | PHPUnit/Pest | PHPUnit | Jest |
