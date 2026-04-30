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

Si tot passa dins d'un únic fitxer o controlador gegant, no estàs aprofitant bé el framework.

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
| Vista | Blade | Twig | normalment JSON |
| Proves | PHPUnit/Pest | PHPUnit | Jest |
