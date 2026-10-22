# R2M7. Automatitza el flux HTTP amb PHP

## Què faràs

En els microreptes anteriors ja has comprovat manualment el login, l'estat i una operació protegida. Ara convertiràs eixe recorregut en una prova executable que el puga repetir qualsevol persona amb una sola ordre:

```bash
php tests/flux-r2.php
```

El producte recomanat i explicat a classe és `tests/flux-r2.php`. També pots entregar `tests/flux-r2.sh` en Bash, o una prova HTTP equivalent en Python o Java, si recorre l'aplicació real i falla automàticament davant un resultat incorrecte. L'opció Bash s'avalua amb els mateixos criteris i no comporta penalització.

## Tres coses diferents

| Tipus | Qui decidix si passa? | Què observa? | On encaixa? |
|---|---|---|---|
| comprovació manual | una persona | navegador, resposta o captura | preparació i depuració |
| prova de flux | el programa PHP | HTTP, cookies o token i resultat visible | `R2M7` |
| prova unitària | el framework de tests | una classe o funció aïllada | `R2M8` |

Una prova unitària amb `PHPUnit` és útil, però no substituïx el flux HTTP de `R2M7`: pot demostrar que una regla interna funciona sense demostrar que el login, la sessió, la ruta protegida i el logout estan connectats correctament.

## Recorregut obligatori

La prova ha d'executar en ordre:

1. accés sense autenticar a una ruta o operació protegida: denegat;
2. login amb credencials incorrectes: denegat;
3. login amb credencials demo correctes: sessió o token creat;
4. operació protegida amb eixa identitat: permesa;
5. logout o invalidació del token;
6. reutilització de l'estat anterior: denegada de nou.

No cal una suite completa, mocks ni un framework de testing. Sí que cal que el programa execute tot el recorregut, faça comprovacions i retorne un codi d'error si alguna no es complix.

## Requisit previ

Comprova que PHP CLI té disponible l'extensió cURL:

```bash
php -m
```

En la llista ha d'aparéixer `curl`. Si el projecte funciona dins de Docker, executa la prova dins del contenidor PHP o assegura't que el servidor és accessible des d'on llances l'ordre.

## PHP mínim que necessites

Una base possible és:

```php
<?php

declare(strict_types=1);

$baseUrl = rtrim(getenv('BASE_URL') ?: 'http://localhost:8000', '/');
$demoUser = getenv('DEMO_USER') ?: 'demo@example.test';
$demoPassword = getenv('DEMO_PASSWORD') ?: 'demo-password';
$cookies = tempnam(sys_get_temp_dir(), 'r2m7-');

if ($cookies === false) {
    fwrite(STDERR, "ERROR: no s'ha pogut crear el fitxer temporal\n");
    exit(1);
}

register_shutdown_function(static function () use ($cookies): void {
    if (is_file($cookies)) {
        unlink($cookies);
    }
});

function comprova(bool $condicio, string $missatge): void
{
    if (!$condicio) {
        fwrite(STDERR, "ERROR: $missatge\n");
        exit(1);
    }

    echo "OK: $missatge\n";
}
```

- `getenv()` permet canviar URL i credencials demo sense editar el fitxer.
- `tempnam()` crea un fitxer temporal per a les cookies.
- `register_shutdown_function()` i `unlink()` el netegen al final.
- `exit(1)` comunica a la terminal o a CI que la prova ha fallat.

No versions contrasenyes reals. Usa un compte demo preparat per a la correcció.

## Fes una petició i comprova-la

Pots crear una funció reutilitzable:

```php
function peticio(string $url, string $cookies, ?array $dades = null): array
{
    $curl = curl_init($url);

    $opcions = [
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_HEADER => false,
        CURLOPT_FOLLOWLOCATION => false,
        CURLOPT_COOKIEJAR => $cookies,
        CURLOPT_COOKIEFILE => $cookies,
    ];

    if ($dades !== null) {
        $opcions[CURLOPT_POST] = true;
        $opcions[CURLOPT_POSTFIELDS] = http_build_query($dades);
    }

    curl_setopt_array($curl, $opcions);
    $cos = curl_exec($curl);

    if ($cos === false) {
        $error = curl_error($curl);
        throw new RuntimeException("Error HTTP: $error");
    }

    return [
        'codi' => curl_getinfo($curl, CURLINFO_HTTP_CODE),
        'cos' => $cos,
    ];
}
```

Ara el programa pot decidir si el resultat és correcte:

```php
$senseSessio = peticio("$baseUrl/protegida.php", $cookies);

comprova(
    in_array($senseSessio['codi'], [302, 401, 403], true),
    'l’accés sense sessió queda denegat'
);
```

També pots comprovar un text estable:

```php
comprova(
    str_contains($senseSessio['cos'], 'Accés denegat'),
    'apareix el missatge estable d’accés denegat'
);
```

Adapta els codis i textos al contracte real del projecte. Evita comparar tot l'HTML o detalls decoratius que canvien amb facilitat.

## Mantín la identitat entre peticions

Totes les crides han de reutilitzar el mateix fitxer de cookies:

```php
$login = peticio("$baseUrl/login.php", $cookies, [
    'email' => $demoUser,
    'password' => $demoPassword,
]);

$protegida = peticio("$baseUrl/protegida.php", $cookies);
comprova($protegida['codi'] === 200, 'l’operació protegida queda permesa');
```

Si el projecte usa una API amb token, extrau el token de la resposta del login i envia'l en una capçalera de les peticions següents. No inventes una sessió o un token directament en la prova: obtín-lo mitjançant el mateix login que usa el projecte.

## Com depurar el programa

1. executa un cas i mostra temporalment el codi HTTP;
2. identifica la primera expectativa que falla;
3. revisa el cos o les capçaleres retornades;
4. decidix si està malament l'aplicació, la ruta o l'expectativa;
5. corregix una sola causa i torna a executar el recorregut complet.

Pots usar una petició `curl -i` manual per explorar, però el lliurable PHP ha de fer la comprovació automàticament.

## Altres tecnologies

`tests/flux-r2.sh` en Bash, `requests` o el client de Flask en Python, i MockMvc o un client HTTP en Java són equivalents quan:

- recorren els sis passos HTTP;
- conserven cookies o token;
- contenen comprovacions automàtiques;
- acaben amb error quan una expectativa falla;
- tenen una única ordre documentada.

Una prova que només crida una funció o una classe és unitària i correspon a `R2M8`, no a este lliurable.

## Entrega i evidència

Documenta, en el `README.md` o la guia del projecte:

- com arrancar l'aplicació;
- que es necessita PHP CLI amb l'extensió cURL;
- la URL base i els requisits previs;
- quin compte demo s'usa, sense publicar secrets reals;
- l'ordre `php tests/flux-r2.php` o l'equivalent real.

Guarda una execució correcta en `evidence/r2m7/verificacio.txt`. En la revisió, el professorat pot canviar temporalment una expectativa o una ruta per comprovar que la prova falla de veritat.

## Checklist

- [ ] L'accés inicial sense autenticar queda denegat.
- [ ] El login incorrecte queda denegat.
- [ ] El login correcte crea una sessió o retorna un token.
- [ ] Una operació protegida funciona amb eixa identitat.
- [ ] El logout o la invalidació elimina l'accés.
- [ ] Reutilitzar l'estat anterior torna a donar denegació.
- [ ] Cada resultat es comprova automàticament.
- [ ] Qualsevol discrepància produïx un codi d'eixida diferent de `0`.
- [ ] Els temporals es netegen i no hi ha secrets reals.
- [ ] Una sola ordre i una eixida real queden documentades.

## No és suficient

- una ordre `curl` que només imprimix la resposta;
- una col·lecció de peticions sense assercions executables;
- captures o una taula de casos sense el programa automatitzat;
- un programa que sempre acaba amb èxit;
- una prova unitària que no recorre HTTP;
- instruccions sense una execució real guardada.
