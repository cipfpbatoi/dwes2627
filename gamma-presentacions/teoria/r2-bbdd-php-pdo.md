# Gamma brief - BBDD en PHP amb PDO

## Objectiu de la presentació

Explicar la base tècnica necessària per a `R2M9`: què és una BBDD dins d'un projecte PHP, com es configura una connexió mínima, com s'executen `INSERT` i `SELECT`, i per què cal usar consultes preparades.

## Públic

Alumnat que ja sap executar PHP, rebre dades de formulari, validar-les i mantindre estat bàsic.

## Idees clau

- La sessió i la cookie no substituïxen una BBDD.
- Una BBDD conserva dades estructurades.
- El codi de connexió ha d'estar separat.
- Els secrets no han d'anar al repositori.
- `PDO` permet connectar i executar consultes de manera controlada.
- Les consultes preparades són obligatòries quan entren dades d'usuari.
- Les dades que arriben a BBDD han d'haver passat abans per validació.
- Mostrar dades recuperades també exigeix escapar l'eixida HTML.

## Estructura suggerida

1. **Persistència: què vol dir de veritat**
   - Dada temporal.
   - Dada de sessió.
   - Dada persistent.
   - Exemple: una reserva, una incidència, una publicació, una petició.

2. **Peces mínimes**
   - Motor de BBDD.
   - Taula.
   - Connexió.
   - Consulta.
   - Resultat.

3. **Estructura de fitxers**
   - `config/database.php`.
   - `database/schema.sql`.
   - `src/Connexio.php` o equivalent.
   - `public/crear.php`.
   - `public/llistar.php`.

4. **Connexió amb PDO**
   - DSN.
   - Usuari i contrasenya quan toque.
   - Mode d'errors.
   - Tractament bàsic d'excepcions.

5. **Crear dades**
   - Dades que ja han passat per validació.
   - `prepare`.
   - `execute`.
   - Confirmació.

6. **Llegir dades**
   - `SELECT`.
   - `fetch` o `fetchAll`.
   - Cas de taula buida.
   - Mostrar resultat sense trencar l'HTML.

7. **Seguretat mínima**
   - No concatenar dades d'usuari.
   - No pujar secrets.
   - No mostrar errors interns complets a l'usuari final.
   - Usar `htmlspecialchars` en eixida HTML.

8. **Pont cap a R3**
   - Què serà una migration.
   - Què serà un seeder.
   - Què aportarà un ORM.
   - Per què és útil haver vist abans el SQL real.

## Exemples PHP que han d'aparéixer

- Connexió `PDO` amb mode d'errors.
- `INSERT` amb `prepare` i `execute`.
- `SELECT` amb `fetchAll`.
- Eixida HTML amb `htmlspecialchars`.
- `.env.example` o configuració sense secrets reals.

## Codi base per a diapositives

```php
$pdo = new PDO($dsn, $user, $password, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
]);
```

```php
$stmt = $pdo->prepare('INSERT INTO reserves (nom, estat) VALUES (:nom, :estat)');
$stmt->execute([
    'nom' => $nom,
    'estat' => 'pendent',
]);
```

```php
$reserves = $pdo->query('SELECT nom, estat FROM reserves')->fetchAll(PDO::FETCH_ASSOC);
```

## Exemple de narrativa

“Primer guardàvem una dada perquè el flux tinguera sentit. Ara comprovem si eixa dada mereix existir més enllà de la petició i de la sessió. Si mereix existir, necessita una BBDD.”

## To visual

Clar, pràctic i amb fragments de codi curts. Prioritzar diagrames de flux i taules simples. Evitar una classe magistral de SQL completa.

## Preguntes de comprovació

- Quina dada del teu projecte mereix persistir en BBDD?
- Per què sessió o cookie no són suficients per a eixa dada?
- On està separada la connexió a BBDD?
- Per què uses `prepare` i `execute` quan entren dades d'usuari?
- Com comproves una alta i una lectura reproduïbles?
