# R2S10. Contracte d’autenticació per a DWEC

`R2S10` és una sessió opcional d’ampliació del Repte 2. No és un microrepte nou, no substituïx `R2M6` i no genera una nota pròpia. Servix per convertir la mini API d’autenticació que ja funciona en un contracte que una altra persona puga consumir des de `DWEC` sense haver de llegir el backend ni preguntar al seu autor.

Pots usar este treball com a ampliació `9→10` quan el nucli complet de `R2` ja està resolt i validat.

## Producte esperat

Has de crear `docs/api-auth-contract.md` o un document equivalent amb informació real del teu projecte:

- URL base del backend;
- endpoint i mètode del login;
- endpoint i mètode de la ruta protegida;
- headers necessaris, com `Content-Type` i `Authorization`;
- cos de la petició de login;
- exemples reals de resposta correcta (`200`) i no autenticada (`401`);
- error de validació, si el teu endpoint el diferencia;
- usuari i contrasenya de demostració que no siguen credencials personals;
- format del token o del mecanisme d’autenticació utilitzat;
- indicació de CORS si el client i el servidor usen orígens diferents;
- limitacions conegudes i aspectes provisionals fins al Repte 4.

No inventes endpoints ni respostes per completar la plantilla: el document ha de descriure el comportament que es pot executar en el repositori.

## Ordre de treball

1. Comprova de nou el cas correcte i el cas incorrecte de `R2M6`.
2. Anota les URL, els mètodes, els headers i els camps que realment usa cada petició.
3. Revisa que les respostes siguen JSON estable i que no exposen contrasenyes, hashes ni dades internes.
4. Prepara unes credencials de demostració no sensibles.
5. Escriu el contracte amb exemples complets de petició i resposta.
6. Demana a una altra persona o al professorat que faça login i consulte la ruta protegida usant només el document.
7. Corregeix almenys una ambigüitat detectada en eixa prova i deixa’n constància.

## Evidències

Per considerar completa esta via d’ampliació han de poder revisar-se:

- `docs/api-auth-contract.md` o document equivalent;
- petició de login correcta i resposta `200`;
- petició incorrecta o sense autenticació i resposta `401`;
- petició a la ruta protegida amb el mecanisme documentat;
- resultat de la prova creuada i ambigüitats corregides;
- commit o branca identificable;
- declaració de l’ampliació en `docs/r2-ampliacio.md` abans d’entregar `R2M9`.

## Què ha de poder fer DWEC

Una persona de `DWEC`, sense mirar el codi del servidor, ha de poder:

- saber on enviar les credencials;
- construir la petició amb el format correcte;
- distingir èxit, credencials incorrectes i falta d’autenticació;
- extraure i enviar el token o mecanisme equivalent;
- accedir a la ruta protegida;
- entendre les limitacions actuals del backend.

## Què no és suficient

- Escriure només una llista d’URL.
- Documentar únicament el cas correcte.
- Posar captures sense peticions i respostes reproduïbles.
- Explicar els headers oralment però no incloure’ls en el document.
- Usar credencials personals reals com a dades de prova.
- Fer una interfície completa en JavaScript i deixar ambigu el contracte del backend.
- Documentar un comportament diferent del que retorna l’aplicació.

## Checklist final

- [ ] El nucli de `R2` està complet i esta millora no tapa treball obligatori pendent.
- [ ] El contracte indica URL, mètodes, headers, body i respostes reals.
- [ ] Hi ha exemples de `200` i `401`.
- [ ] Les dades demo no són sensibles.
- [ ] Una altra persona ha provat el contracte sense mirar el backend.
- [ ] He corregit o registrat les ambigüitats trobades.
- [ ] He declarat esta candidatura en `docs/r2-ampliacio.md`.

## Relació amb el Repte 4

En `R2S10` només estabilitzes el contracte mínim d’autenticació. La construcció d’una API més completa, la seua documentació formal i el consum integral corresponen al Repte 4.
