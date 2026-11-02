# Miniapunts: què aporta un framework?

Estos apunts presenten idees comunes a Laravel, Symfony, Django i NestJS. La
demostració guiada usa Laravel; NestJS apareix com a exemple de l'opció Node.js.
No cal que tots els frameworks tinguen les mateixes carpetes ni que anomenen
igual les seues peces.

## 1. Què és un framework?

Un framework és una base de treball que ofereix convencions i peces
reutilitzables per construir aplicacions. Ajuda a resoldre necessitats que es
repeteixen —com rebre peticions, definir rutes i generar respostes— i deixa que
el projecte se centre en el seu domini.

Un framework no fa automàticament una aplicació correcta. Cal entendre què
genera, on va cada responsabilitat i com es configura i es prova.

**Node.js no és un framework**: és un entorn per executar JavaScript fora del
navegador. NestJS funciona sobre Node.js i proposa una estructura guiada amb
mòduls, controladors i serveis. Django és un framework web de Python amb ORM,
rutes, plantilles i altres peces integrades.

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

Els noms i l'estructura depenen del framework. En NestJS, per exemple, els
mòduls, controladors i serveis ajuden a organitzar el codi, però l'equip ha de
decidir com aplicar-los al seu domini.

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

### Projecte nou amb Docker, sense PHP ni Composer locals

Si només tens Docker instal·lat, pots crear el projecte Laravel executant
Composer dins d'un contenidor temporal. Com que el repositori del curs ja té
fitxers, crea l'aplicació dins d'una carpeta pròpia, com ara `r3/`, per no
sobreescriure'ls. Executa les ordres des de l'arrel del repositori.

En macOS o Linux:

```bash
mkdir -p r3
docker run --rm -it \
  --mount "type=bind,source=$PWD/r3,target=/app" \
  -w /app composer:2 create-project laravel/laravel .
```

El contenidor temporal porta PHP i Composer; els fitxers i les dependències
queden en `r3/`, dins del teu repositori. No instal·les PHP ni Composer a
l'ordinador.

Entra al projecte:

```bash
cd r3
```

Les aplicacions Laravel noves solen incloure Sail. Si no trobes
`vendor/bin/sail`, afegeix-lo des de l'arrel de `r3/`, encara amb Composer
dins d'un contenidor:

```bash
docker run --rm -it \
  --mount "type=bind,source=$PWD,target=/app" \
  -w /app composer:2 require laravel/sail --dev
```

Genera la configuració de Sail amb MySQL i Mailpit. Esta ordre executa PHP des
del contenidor de Composer, no des de l'ordinador:

```bash
docker run --rm -it \
  --mount "type=bind,source=$PWD,target=/app" \
  -w /app --entrypoint php composer:2 artisan sail:install --with=mysql,mailpit
```

Amb Docker en marxa, inicia Sail i prepara l'aplicació:

```bash
./vendor/bin/sail up -d
./vendor/bin/sail artisan key:generate
./vendor/bin/sail artisan migrate
```

A partir d'ací, usa `./vendor/bin/sail` (o `docker compose exec laravel.test`)
per a les ordres d'Artisan, proves i altres dependències del projecte. No
versiones el fitxer `.env` ni secrets reals; conserva les instruccions i
`.env.example` sense credencials.

### Projecte ja clonat: arrancar-lo només amb Docker

En clonar o baixar un projecte Laravel existent, la carpeta `vendor/` no sol
estar versionada. En un projecte amb Laravel Sail, `compose.yaml` pot necessitar
`vendor/laravel/sail/` fins i tot per construir la imatge. Per això, si
l'ordinador no té PHP ni Composer, primer cal generar `vendor/` amb un
contenidor temporal de Composer.

Des de l'arrel del repositori, entra a la carpeta Laravel i prepara la
configuració local. Estes ordres no sobreescriuen un `.env` que ja existisca:

```bash
cd r3
[ -f .env ] || cp .env.example .env
grep -q '^APP_PORT=' .env || echo 'APP_PORT=8080' >> .env
grep -q '^WWWUSER=' .env || echo "WWWUSER=$(id -u)" >> .env
grep -q '^WWWGROUP=' .env || echo "WWWGROUP=$(id -g)" >> .env
touch database/database.sqlite
```

Crea les dependències mínimes necessàries per construir Sail. El contenidor
esborra en acabar, però `vendor/` queda en la carpeta del projecte:

```bash
docker run --rm \
  --user "$(id -u):$(id -g)" \
  -e COMPOSER_HOME=/tmp/composer \
  --mount "type=bind,source=$PWD,target=/app" \
  -w /app \
  composer:2 install --ignore-platform-reqs --no-scripts
```

Ara ja es pot construir i arrancar l'entorn. La resta d'ordres s'executen dins
del contenidor Laravel, que sí que inclou PHP, Composer i Node:

```bash
docker compose up -d --build
docker compose exec laravel.test composer install
docker compose exec laravel.test php artisan key:generate
docker compose exec laravel.test php artisan migrate --force
docker compose exec laravel.test npm install
docker compose exec laravel.test npm run build
```

Comprova el recorregut de la petició en
`http://localhost:8080/recorregut?nom=Aina`.

En els pulls següents, `vendor/` i `.env` continuen en la màquina perquè Git
els ignora. Després de baixar canvis, actualitza dependències i migracions dins
del contenidor:

```bash
git pull
cd r3
docker compose up -d --build
docker compose exec laravel.test composer install
docker compose exec laravel.test npm install
docker compose exec laravel.test php artisan migrate --force
```

No cal instal·lar PHP, Composer, Node ni npm en l'ordinador amfitrió. Si s'ha
eliminat `vendor/`, repeteix abans el `docker run` amb `composer:2`. No copies
`.env.example` damunt d'un `.env` existent, perquè perdries la configuració
local.

## 4. Demostració curta amb Django

Django necessita Python i pip. Django diferencia el **projecte**, que conté la
configuració global, de les **aplicacions**, que agrupen funcionalitats. En un
entorn amb Python instal·lat, pots crear una demostració així:

```bash
mkdir demo-django
cd demo-django
python -m venv .venv
source .venv/bin/activate
python -m pip install Django
django-admin startproject config .
python manage.py startapp web
```

En `web/views.py`, crea una vista que prepare la resposta HTTP:

```python
from django.http import HttpResponse


def demo_framework(request):
    return HttpResponse("La ruta respon des de Django")
```

Defineix les rutes pròpies de l'aplicació en `web/urls.py`:

```python
from django.urls import path

from . import views

app_name = "web"

urlpatterns = [
    path("demo-framework/", views.demo_framework, name="demo-framework"),
]
```

Connecta-les amb la configuració global en `config/urls.py`:

```python
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path("", include("web.urls")),
    path("admin/", admin.site.urls),
]
```

Prepara la base SQLite inicial i arranca el servidor de desenvolupament:

```bash
python manage.py migrate
python manage.py runserver
```

En obrir `http://127.0.0.1:8000/demo-framework/`, Django busca la URL en
`config/urls.py`, delega en `web/urls.py`, executa `demo_framework()` i retorna
un `HttpResponse`. En una funcionalitat completa, la vista pot coordinar
serveis, models de l'ORM i una plantilla HTML. `runserver` és només per a
desenvolupament, no per a producció.

### Projecte Django amb Docker, sense Python ni pip locals

Si l'ordinador només té Docker, crea el projecte amb una imatge temporal de
Python. Des de l'arrel del repositori, usa una carpeta pròpia per no
sobreescriure altres fitxers:

```bash
mkdir -p r3-django
cd r3-django
printf 'Django\n' > requirements.txt

docker run --rm \
  --user "$(id -u):$(id -g)" \
  -e HOME=/tmp \
  --mount "type=bind,source=$PWD,target=/app" \
  -w /app \
  python:3.13-slim sh -lc '
    python -m venv /tmp/venv &&
    /tmp/venv/bin/pip install --no-cache-dir -r requirements.txt &&
    /tmp/venv/bin/django-admin startproject config . &&
    /tmp/venv/bin/python manage.py startapp web
  '
```

Després de crear `web/views.py`, `web/urls.py` i modificar `config/urls.py`
com en l'exemple anterior, arranca Django dins del contenidor:

```bash
docker run --rm -it \
  --user "$(id -u):$(id -g)" \
  -e HOME=/tmp \
  -p 8000:8000 \
  --mount "type=bind,source=$PWD,target=/app" \
  -w /app \
  python:3.13-slim sh -lc '
    python -m venv /tmp/venv &&
    /tmp/venv/bin/pip install --no-cache-dir -r requirements.txt &&
    /tmp/venv/bin/python manage.py migrate &&
    exec /tmp/venv/bin/python manage.py runserver 0.0.0.0:8000
  '
```

La carpeta del projecte, el codi i `db.sqlite3` queden en l'ordinador; l'entorn
virtual i les dependències d'esta demostració viuen dins del contenidor. En un
projecte de curs ja preparat, usa el `Dockerfile` o el `compose.yaml` que porte
el repositori i executa `migrate` i `runserver` en el servei indicat pel seu
README.

## 5. La mateixa idea amb NestJS

NestJS necessita Node.js i npm. Pots crear un projecte amb la CLI oficial:

```bash
npm install -g @nestjs/cli
nest new demo-nestjs
cd demo-nestjs
```

En `src/app.controller.ts`, defineix una ruta:

```ts
import { Controller, Get } from '@nestjs/common';

@Controller('demo-framework')
export class AppController {
  @Get()
  getDemo(): string {
    return 'La ruta respon des de NestJS';
  }
}
```

Arranca el servidor de desenvolupament:

```bash
npm run start:dev
```

La petició a `http://localhost:3000/demo-framework` retorna el text. NestJS
organitza les rutes amb decoradors i controladors, i permet separar la lògica
en serveis.

## 6. Què tenen en comú i què canvia?

| Idea | Laravel | Symfony | Django | NestJS |
|---|---|---|---|---|
| Entorn principal | PHP | PHP | Python | Node.js |
| Definir una ruta | Fitxers de rutes | Configuració o atributs | URLconf (`urls.py`) | Decorador en un controlador |
| Organització | Convencions de Laravel | Components i serveis | Aplicacions, URLconf, views i models | Mòduls, controladors i serveis |
| Resposta HTML | Blade | Twig | Plantilles Django | Cal configurar una vista o alternativa |
| Instal·lació habitual | Composer | Composer | pip i Django | npm i CLI de NestJS |

No compares només noms de carpetes. Compara com resol cada opció les mateixes
necessitats del projecte: arrencada, rutes, separació de responsabilitats,
resposta HTML, dades, proves i facilitat per a l'equip.

## 7. Procés general per instal·lar i arrancar

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

## 8. Preguntes per a comprovar que ho has entés

- Quina part del recorregut rep la URL?
- On posaries una regla pròpia del projecte?
- Quina diferència hi ha entre Node.js i NestJS?
- Què resol Laravel abans que escrigues la primera funcionalitat?
- Com connecta Django el URLconf amb una vista?
- Quines peces d'arquitectura proposa NestJS?
- Quina ordre arranca el projecte triat i quina ruta faràs servir per comprovar
  que funciona?

## Documentació oficial

- [Laravel: instal·lació](https://laravel.com/docs/installation)
- [Symfony: crear una aplicació](https://symfony.com/doc/current/setup.html)
- [Django: primers passos](https://docs.djangoproject.com/en/stable/intro/)
- [NestJS: primers passos](https://docs.nestjs.com/first-steps)
