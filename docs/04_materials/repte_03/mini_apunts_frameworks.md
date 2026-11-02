# Miniapunts: què aporta un framework?

Estos apunts presenten idees comunes a Laravel, Symfony, NestJS i Express. La
demostració guiada usa Laravel; Express apareix com a exemple breu de l'opció
Node.js. No cal que tots els frameworks tinguen les mateixes carpetes ni que
anomenen igual les seues peces.

## 1. Què és un framework?

Un framework és una base de treball que ofereix convencions i peces
reutilitzables per construir aplicacions. Ajuda a resoldre necessitats que es
repeteixen —com rebre peticions, definir rutes i generar respostes— i deixa que
el projecte se centre en el seu domini.

Un framework no fa automàticament una aplicació correcta. Cal entendre què
genera, on va cada responsabilitat i com es configura i es prova.

**Node.js no és un framework**: és un entorn per executar JavaScript fora del
navegador. Express és un framework web minimalista que funciona sobre Node.js;
NestJS també funciona sobre Node.js, però proposa una estructura més guiada.

## 2. El recorregut d'una petició

En una aplicació web, el recorregut habitual és:

```text
navegador
   ↓ petició HTTP
ruta
   ↓
controlador o funció manejadora
   ↓
servei o lògica del domini (si cal)
   ↓
model o capa de dades (quan cal consultar o guardar)
   ↓
vista HTML o resposta
   ↓
navegador
```

En un primer exercici, una ruta pot retornar directament un text. En una
funcionalitat real, convé separar les responsabilitats perquè siguen més fàcils
d'entendre, provar i modificar.

| Responsabilitat | Pregunta que respon |
|---|---|
| Ruta | Quina URL i quin mètode HTTP activen l'acció? |
| Controlador o manejador | Qui coordina la petició i prepara la resposta? |
| Servei o cas d'ús | Quina regla del projecte s'ha d'aplicar? |
| Model o capa de dades | Quines dades del domini es consulten o es guarden? |
| Vista o resposta | Què rep el navegador o el client? |

Els noms i l'estructura depenen del framework. Express, per exemple, no obliga a
crear una arquitectura MVC completa: l'equip ha de mantindre el codi ordenat i
triar les peces que necessite.

## 3. Demostració curta amb Laravel

Laravel necessita PHP i Composer. En un projecte creat amb Laravel, una ruta web
es pot definir en `routes/web.php`:

```php
use Illuminate\Support\Facades\Route;

Route::get('/demo-framework', function () {
    return 'La ruta respon des de Laravel';
});
```

Des de la carpeta del projecte, en un entorn amb les dependències instal·lades,
es pot arrancar el servidor de desenvolupament:

```bash
php artisan serve
```

En obrir `http://127.0.0.1:8000/demo-framework`, el framework associa el mètode
`GET` i la ruta amb la funció i retorna el text. La carpeta `routes/` conté les
rutes web; per a una funcionalitat més completa, es pot passar la coordinació a
un controlador i retornar una vista.

Per crear un projecte nou amb Composer:

```bash
composer create-project laravel/laravel nom-del-projecte
cd nom-del-projecte
php artisan serve
```

La configuració real pot variar segons la versió i l'entorn del curs. Segueix la
guia oficial i les instruccions de Docker del projecte; no cal substituir ni
modificar el `compose` existent per a fer esta demostració.

## 4. La mateixa idea amb Express

Express necessita Node.js i npm. Un projecte mínim es pot iniciar així:

```bash
mkdir demo-express
cd demo-express
npm init -y
npm install express
```

En `index.js`, una ruta mínima pot ser:

```js
const express = require('express');
const app = express();

app.get('/demo-framework', (req, res) => {
  res.send('La ruta respon des d’Express');
});

app.listen(3000, () => {
  console.log('Servidor disponible en http://localhost:3000');
});
```

S'inicia amb:

```bash
node index.js
```

La petició a `http://localhost:3000/demo-framework` també acaba en una resposta.
Express dona més llibertat sobre l'estructura del projecte; no genera per si
mateix controladors, models ni accés a BBDD.

## 5. Què tenen en comú i què canvia?

| Idea | Laravel | Symfony | NestJS | Express |
|---|---|---|---|---|
| Entorn principal | PHP | PHP | Node.js | Node.js |
| Definir una ruta | Fitxers de rutes | Configuració o atributs | Decorador en un controlador | `app.get(...)` o un router |
| Organització | Convencions de Laravel | Components i serveis | Mòduls, controladors i serveis | L'equip tria l'estructura |
| Resposta HTML | Blade | Twig | Cal configurar una vista o alternativa | Cal configurar un motor de plantilles |
| Instal·lació habitual | Composer | Composer | npm i CLI de NestJS | npm |

No compares només noms de carpetes. Compara com resol cada opció les mateixes
necessitats del projecte: arrencada, rutes, separació de responsabilitats,
resposta HTML, dades, proves i facilitat per a l'equip.

## 6. Procés general per instal·lar i arrancar

Independentment del stack, comprova estos passos:

1. **Requisits:** versió del llenguatge/runtime, gestor de paquets i serveis
   necessaris.
2. **Creació:** ordre oficial per generar el projecte o afegir el framework.
3. **Dependències:** instal·lar-les amb el gestor corresponent.
4. **Configuració:** preparar les variables necessàries; no versionar secrets
   reals.
5. **Arrencada:** executar l'ordre indicada pel framework o per Docker.
6. **Comprovació:** obrir una ruta coneguda i verificar la resposta esperada.
7. **Reproduïbilitat:** anotar requisits i ordres perquè una altra persona puga
   repetir-ho.

Si ja tens un projecte amb Docker, comprova primer com es relaciona el framework
amb els serveis existents. No canvies el `compose` ni sobreescrigues informació
anterior del README sense seguir les instruccions del repositori.

## 7. Preguntes per a comprovar que ho has entés

- Quina part del recorregut rep la URL?
- On posaries una regla pròpia del projecte?
- Quina diferència hi ha entre Node.js i Express?
- Què resol Laravel abans que escrigues la primera funcionalitat?
- Què hauràs de decidir tu quan uses Express?
- Quina ordre arranca el projecte triat i quina ruta faràs servir per comprovar
  que funciona?

## Documentació oficial

- [Laravel: instal·lació](https://laravel.com/docs/installation)
- [Symfony: crear una aplicació](https://symfony.com/doc/current/setup.html)
- [NestJS: primers passos](https://docs.nestjs.com/first-steps)
- [Express: instal·lació](https://expressjs.com/en/starter/installing.html)
- [Express: Hello World](https://expressjs.com/en/starter/hello-world.html)
