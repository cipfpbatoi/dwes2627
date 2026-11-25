# Orientació tècnica d’R3M6. Esdeveniments i correu

Tria una acció protegida que ja funcione, com ara completar un intercanvi. Al final de l’operació, l’altra persona ha de rebre un avís de prova. Identifica primer quin canvi de la BBDD confirma l’èxit i d’on ix l’adreça del destinatari.

## 1. Prepara l’esdeveniment, el listener i el correu

Executa les ordres des de l’aplicació Laravel i usa el prefix del teu entorn si treballes amb contenidors.

```bash
php artisan make:event IntercanviCompletat
php artisan make:listener EnviaCorreuIntercanvi --event=IntercanviCompletat
php artisan make:mail AvisIntercanviCompletat
```

- A l’esdeveniment, passa l’intercanvi completat o les dades mínimes que necessite el listener.
- Al listener, rep l’esdeveniment en `handle(IntercanviCompletat $event)` i obtín el destinatari a partir del registre. Fes servir una adreça demo, com `biel@example.test`.
- Al `Mailable`, definix l’assumpte i apunta a una vista Blade del correu amb les dades que vols mostrar. El listener l’envia amb `Mail::to($destinatari)->send(new AvisIntercanviCompletat($intercanvi))`.
- Executa `php artisan event:list` i comprova que l’esdeveniment té associat el listener.

## 2. Emet l’esdeveniment quan el canvi queda confirmat

Conserva la validació i l’autorització d’R3M5. Emet `event(new IntercanviCompletat($intercanvi))` després de guardar correctament el canvi. Si l’acció usa una transacció, una opció és emetre’l després que acabe la transacció exterior. Si l’emets dins, fes que la classe de l’esdeveniment implemente `Illuminate\Contracts\Events\ShouldDispatchAfterCommit`. Laravel el descarta si la transacció es desfà. [Documentació d’esdeveniments de Laravel](https://laravel.com/docs/13.x/events#dispatching-events-after-database-transactions)

## 3. Comprova el correu sense eixir de l’entorn de prova

- **Amb bústia local.** Si el projecte té Mailpit configurat, seguix el Compose per identificar el servei SMTP i la URL de la bústia. Fes l’acció amb comptes demo i compara el nombre de missatges abans i després de cada cas.
- **Amb una prova funcional.** Crida `Mail::fake()` abans de la petició HTTP. Mantín actiu el listener. Després del cas correcte, comprova el recompte amb `Mail::assertSentCount(1)` i el destinatari amb `Mail::assertSent(AvisIntercanviCompletat::class, 'biel@example.test')`. En cada prova negativa, usa `Mail::assertNothingSent()`. Si l’esdeveniment espera el commit, comprova que l’entorn de test permet confirmar la transacció o verifica el recorregut complet amb la bústia local. [Documentació de proves de correu de Laravel](https://laravel.com/docs/13.x/mail#testing)

| Cas | Estat que has de comprovar | Correu nou |
|---|---|---|
| Acció vàlida i autoritzada | El canvi queda guardat. | Un, al destinatari demo esperat. |
| Error de validació o de domini | L’operació es rebutja. | Cap. |
| Usuari autenticat sense permís | La ruta denega l’acció i el registre queda intacte. | Cap. |

Guarda les ordres o els passos, l’eixida de les proves o el registre de la bústia i el resultat de cada cas.

## Si uses un altre framework

Mantín el mateix recorregut observable. En Symfony pots usar un esdeveniment amb EventDispatcher i un listener amb Mailer. En Django pots usar un senyal de domini i programar-ne l’emissió amb `transaction.on_commit`. En NestJS pots emetre l’esdeveniment des del servei, després de confirmar el canvi, i gestionar el correu en el listener. En cada cas, usa les eines de prova del teu projecte per comprovar destinació i recompte.
