# R2M7. Automatitza el flux HTTP

## Què faràs

En els microreptes anteriors ja has comprovat manualment el login, l'estat i una operació protegida. Ara convertiràs eixe recorregut en una prova executable que el puga repetir qualsevol persona amb una sola ordre.

El producte habitual en PHP és `tests/flux-r2.sh`. També pots fer una prova HTTP equivalent en Python o Java si recorre l'aplicació real i falla automàticament davant un resultat incorrecte.

## Tres coses diferents

| Tipus | Qui decidix si passa? | Què observa? | On encaixa? |
|---|---|---|---|
| comprovació manual | una persona | navegador, resposta o captura | preparació i depuració |
| prova de flux | el script | HTTP, cookies o token i resultat visible | `R2M7` |
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

No cal una suite completa, mocks ni un framework de testing. Sí que cal que el programa execute tot el recorregut, faça assercions i retorne un codi d'error si alguna no es complix.

## Bash mínim que necessites

Una base possible és:

```bash
#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${BASE_URL:-http://localhost:8000}"
DEMO_USER="${DEMO_USER:-demo@example.test}"
DEMO_PASSWORD="${DEMO_PASSWORD:-demo-password}"
TEMP="$(mktemp -d)"
COOKIES="$TEMP/cookies.txt"
trap 'rm -rf "$TEMP"' EXIT

fail() {
  echo "ERROR: $1" >&2
  exit 1
}
```

- `set -euo pipefail` evita continuar silenciosament després d'errors.
- Les variables permeten canviar URL i credencials demo sense editar el fitxer.
- `mktemp -d` crea un espai temporal per a respostes i cookies.
- `trap` neteja eixe espai quan acaba el script.
- `exit 1` comunica a la terminal o a CI que la prova ha fallat.

No versions contrasenyes reals. Usa un compte demo preparat per a la correcció.

## Comprova la resposta, no sols la mostres

Amb `curl` pots guardar el cos i capturar per separat el codi HTTP:

```bash
CODI=$(curl -sS -o "$TEMP/resposta.html" -w '%{http_code}' \
  "$BASE_URL/protegida.php")

[[ "$CODI" == "302" ]] || fail "sense sessió s'esperava 302 i s'ha rebut $CODI"
```

També pots comprovar un text estable:

```bash
grep -Fq "Accés denegat" "$TEMP/resposta.html" \
  || fail "no apareix el missatge estable d'accés denegat"
```

Tria indicadors que formen part del contracte de l'aplicació: un codi, una capçalera, una redirecció o un text estable. Evita comparar tot l'HTML o detalls decoratius que canvien amb facilitat.

## Mantín la identitat entre peticions

Si el projecte usa sessions, `curl` pot escriure i reutilitzar cookies:

```bash
curl -sS -c "$COOKIES" \
  -d "email=$DEMO_USER&password=$DEMO_PASSWORD" \
  "$BASE_URL/login.php" -o "$TEMP/login.html"

curl -sS -b "$COOKIES" \
  "$BASE_URL/protegida.php" -o "$TEMP/protegida.html"
```

Si usa una API amb token, extrau el token de la resposta del login i envia'l en les peticions següents. No inventes una sessió o un token directament en la prova: obtín-lo mitjançant el mateix login que usa el projecte.

## Com depurar el guió

Executa primer un cas, comprova el codi i mira el cos guardat. Després:

1. identifica la primera expectativa que falla;
2. repetix manualment eixa petició amb `curl -i` si necessites veure capçaleres;
3. decidix si està malament l'aplicació, la ruta o l'expectativa;
4. corregix una sola causa;
5. torna a executar el recorregut complet.

Pots usar `bash -x tests/flux-r2.sh` temporalment per veure les ordres, però evita que les traces mostren secrets.

## Altres tecnologies

En Python pots usar `requests` contra el servidor real o el client de proves de Flask. En Java pots usar el client HTTP o MockMvc. L'equivalent és vàlid quan:

- recorre els sis passos HTTP;
- conserva cookies o token;
- conté assercions automàtiques;
- acaba amb error quan una expectativa falla;
- té una única ordre documentada.

Una prova que només crida una funció o una classe és unitària i correspon a `R2M8`, no a este lliurable.

## Entrega i evidència

Documenta, en el `README.md` o la guia del projecte:

- com arrancar l'aplicació;
- la URL base i els requisits previs;
- quin compte demo s'usa, sense publicar secrets reals;
- l'ordre `bash tests/flux-r2.sh` o l'equivalent real.

Guarda una execució correcta en `evidence/r2m7/verificacio.txt`. En la revisió, el professorat pot canviar temporalment una expectativa o una ruta per comprovar que el test falla de veritat.

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
- captures o una taula de casos sense el guió automatitzat;
- un script que sempre acaba amb èxit;
- una prova unitària que no recorre HTTP;
- instruccions sense una execució real guardada.
