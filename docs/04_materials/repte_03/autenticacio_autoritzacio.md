# Orientació tècnica per a R3M5

Esta guia t'ajuda a localitzar les peces del framework que necessites. No
decidix quina operació has de protegir ni quina regla correspon al teu domini:
eixes dos decisions formen part del microrepte.

## Abans d'instal·lar res

Escriu una matriu de tres files sobre una operació real d'R3M4:

| Identitat | Relació amb el recurs | Resultat esperat |
|---|---|---|
| Persona convidada | No es pot determinar | Demanar autenticació o denegar |
| Usuari A | Propietari, responsable o participant autoritzat | Permetre l'operació |
| Usuari B | Autenticat però sense permís sobre el recurs | Denegar sense canviar la BBDD |

Concreta què significa «tindre permís» en el teu projecte. No uses una regla
genèrica com «qualsevol usuari autenticat» si el recurs té propietari,
responsable, oferent o participants.

## Les quatre peces que has de trobar

1. **Backend d'autenticació:** comprova credencials i crea o recupera la
   identitat de la sessió.
2. **Protecció de ruta:** impedix que una persona convidada arribe a l'acció.
3. **Autorització sobre el recurs:** decidix si la identitat autenticada pot
   actuar sobre eixe registre concret.
4. **Interfície coherent:** mostra o oculta accions segons el permís, però no
   substituïx la protecció del servidor.

Si només tens les peces 1 i 4, encara no has protegit l'operació.

## Ruta guiada si uses Laravel 13

### 1. Activa l'autenticació del framework

`laravel/framework` ja inclou el guard de sessió, els middleware `auth` i
`guest`, gates i policies. Si el teu projecte Laravel existent no es va crear
amb un *starter kit*, pots afegir el backend oficial
[Laravel Fortify](https://laravel.com/framework/docs/13.x/fortify):

```bash
cd <directori-del-projecte-laravel>
composer require laravel/fortify
php artisan fortify:install --no-interaction
php artisan migrate --no-interaction
```

Fortify aporta el backend i les rutes, però no et construïx la interfície.
Configura la vista de login en `FortifyServiceProvider` i fes que el formulari
Blade envie `email`, `password` i, si l'uses, `remember` a `POST /login` amb
`@csrf`. El logout ha de ser una petició `POST`, no un enllaç `GET`.

Si el projecte ja usa un *starter kit* oficial, no instal·les Fortify una
segona vegada: els *starter kits* ja l'integren. En els dos casos, activa només
les funcionalitats que necessita R3M5; registre públic, recuperació de
contrasenya i 2FA queden fora d'abast.

Comprova què ha registrat realment el projecte abans d'afegir rutes manuals:

```bash
php artisan route:list --path=login
php artisan route:list --path=logout
```

Si apareixen dos `GET /login` o dos `POST /login`, revisa si has duplicat les
rutes del paquet.

### 2. Protegix una ruta real

Comença per una operació d'escriptura que ja funcione. Adapta este esquelet als
noms del teu projecte:

```php
Route::middleware('auth')->group(function (): void {
    Route::patch('/recursos/{recurs}', [RecursController::class, 'update'])
        ->name('recursos.update');
});
```

El middleware `auth` respon només a la primera pregunta: hi ha una identitat
autenticada? Encara no decidix si eixa persona pot modificar `{recurs}`.

| Middleware | Ús orientatiu |
|---|---|
| `guest` | Formularis o rutes que només tenen sentit abans d'iniciar sessió |
| `auth` | Accions que exigixen una identitat autenticada |
| `can` | Accions que exigixen una capacitat sobre un model concret |

### 3. Crea una policy i escriu la teua regla

Genera la policy del model que realment protegiràs:

```bash
php artisan make:policy RecursPolicy --model=Recurs --no-interaction
```

Completa una capacitat relacionada amb l'operació. L'esquelet següent denega
per defecte deliberadament; has de substituir-lo per la regla del teu domini:

```php
public function update(User $user, Recurs $recurs): bool
{
    return false; // Substituïx-ho per la teua regla de propietat o responsabilitat.
}
```

Fes-te estes preguntes abans d'escriure la condició:

- Quin camp o relació identifica la persona propietària o responsable?
- La identitat autenticada s'obté de la sessió o encara uses un id fix?
- Què passa si el recurs no existix?
- La denegació deixa la BBDD exactament igual?

Amb els noms convencionals `App\Models\Recurs` i
`App\Policies\RecursPolicy`, Laravel pot descobrir la policy automàticament.
També pots registrar-la explícitament si el teu projecte no seguix eixa
convenció.

### 4. Aplica l'autorització en servidor

Pots aplicar la capacitat en la ruta:

```php
Route::patch('/recursos/{recurs}', [RecursController::class, 'update'])
    ->middleware('auth')
    ->can('update', 'recurs');
```

O comprovar-la en el controlador abans de modificar dades:

```php
Gate::authorize('update', $recurs);
```

Tria una ubicació coherent i comprova que la policy s'executa. Una denegació
ha de produir `403` o la resposta controlada que hages documentat. En Blade,
`@can` servix per no oferir una acció impossible, però una petició directa ha
de continuar protegida.

## Equivalències en altres frameworks

| Stack | Què has d'activar o instal·lar | Protecció de ruta | Autorització sobre el recurs |
|---|---|---|---|
| Laravel | Fortify si l'aplicació existent no té backend d'auth | `auth` | policy, `can` o `Gate` |
| Symfony | [`symfony/security-bundle`](https://symfony.com/doc/current/security.html) | firewall i `access_control` | voter i `denyAccessUnlessGranted()` |
| Django | [`django.contrib.auth`](https://docs.djangoproject.com/en/6.0/topics/auth/default/), normalment ja inclòs | `login_required` o `LoginRequiredMixin` | permís, `user_passes_test` o comprovació d'objecte en servidor |
| NestJS | [`@nestjs/authentication`](https://docs.nestjs.com/security/authentication) | guard global, `@Authenticate()` o `@Public()` | [`@nestjs/authorization`](https://docs.nestjs.com/security/authorization), policy i `@Can()` |

No cal que reproduïsques la sintaxi de Laravel en un altre stack. Has de poder
assenyalar quina peça identifica, quina impedix l'accés anònim i quina decidix
sobre el registre concret.

## Comprova el recorregut abans d'entregar

Executa la mateixa operació en este ordre:

1. sense sessió;
2. després d'un login incorrecte;
3. amb l'usuari autoritzat;
4. amb un segon usuari autenticat però sense permís;
5. després de logout.

En el cas 4, comprova també la BBDD. Rebre `403` no és suficient si l'operació
ja havia modificat dades abans d'autoritzar.

## Pistes per diagnosticar bloquejos

| Símptoma | Primera comprovació |
|---|---|
| El convidat entra | La ruta usa realment el middleware o guard d'autenticació? |
| Tots els usuaris entren | Has aplicat una regla sobre el recurs o només `auth`? |
| La policy no s'executa | Coincidixen capacitat, model, paràmetre de ruta i registre de la policy? |
| Ocultes el botó però la URL funciona | La comprovació està també en la ruta, controlador o servei? |
| El cas denegat canvia dades | Autoritzes abans de l'efecte i de la transacció? |
| Després de logout encara entra | S'ha invalidat la sessió o el token que usa la petició? |

Torna a l'[enunciat d'R3M5](../../02_reptes/repte_03/r3m5.md) per revisar les
evidències i els casos mínims que has d'entregar.
