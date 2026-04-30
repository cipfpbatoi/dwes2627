# 🧩 Reptes del curs

## 💡 Idea general

El curs funciona com un **projecte evolutiu basat en reptes**.

Això vol dir que els reptes no són activitats desconnectades. Cada repte té un focus principal, però el producte continua sent el mateix i va creixent o transformant-se.

El que construïxes en un repte ha de servir per al següent.

## 🧭 Com llegir els reptes

En cada repte trobaràs, com a mínim:

- La finalitat del repte.
- Què has de construir.
- Què has d’entregar.
- Quines evidències has d’aportar.
- Com es comprovarà el resultat.
- Quan es considera superat.

La idea no és només saber “què toca ara”, sinó entendre què aporta cada repte al mateix projecte de curs.

## 🗺️ Seqüència general del curs

La progressió general és esta:

- [Repte 1](repte_01.md): base tècnica i primer flux funcional del producte.
- [Repte 2](repte_02.md): processament de dades, estat o sessió, autenticació i primera funcionalitat protegida.
- [Repte 3](repte_03.md): reconstrucció en framework, BBDD real, `migrations`, `seeders` i `2` casos d'ús funcionals.
- [Repte 4](repte_04.md): `API` i serveis reutilitzables.
- [Repte 5](repte_05.md): aplicació híbrida, integració externa i manteniment.
- [Tancament i defensa](fase_final.md): verificació final, documentació i defensa del producte.

Cada fase reutilitza el treball anterior. Per això, si un repte queda massa superficial, el següent es complica molt.

## 🔀 Què canvia d’un repte a un altre

El producte continua sent el mateix, però el focus va canviant.

- En `R1`, la prioritat és obrir el projecte i deixar una primera base funcional.
- En `R2`, la prioritat és consolidar el flux complet de servidor sobre una base comuna en `PHP`.
- En `R3`, entra el framework i el producte es reconstrueix sobre una base real amb Docker, BBDD, `migrations`, `seeders` i `2` casos d'ús funcionals.
- En `R4`, el treball se centra a exposar serveis i reutilitzar el producte com a `API`.
- En `R5`, el sistema ja ha de connectar amb integracions o fluxos híbrids reals.
- En la fase final, el focus està en provar, documentar i defendre el conjunt del producte.

## 🧪 Paper especial del Repte 2

El `Repte 2` té un paper especial dins del curs.

Este repte es resol sobre una **base comuna en `PHP`**.

La seua base queda organitzada en `7` sessions de `3` hores.

En esta fase, la prioritat és consolidar el flux complet de programació en servidor:

- Tractament de dades.
- Lògica bàsica.
- Estat o sessió.
- Autenticació.
- Funcionalitat protegida.

El contrast de frameworks **encara no és el focus principal** en `R2`.

La sessió `7` de `R2` es dedica a revisar el codi, netejar-lo i millorar-ne la mantenibilitat.

En eixa sessió final també toca separar funcions comunes en fitxers, usar `include` / `require` amb sentit i donar forma a un primer objecte simple del domini.

Això no substituïx `R3` ni convertix `R2` en un repte centrat en POO completa o base de dades com a focus principal.

## 🛠️ Quan entra el framework

El contrast de frameworks entra a partir del moment en què s’introduïx el framework, és a dir, des de `R3`.

Des d’eixe punt, el mateix projecte pot continuar amb itineraris diferents, però sense canviar d’encàrrec funcional.

Els frameworks base d’este tram són:

- `Laravel`.
- `Symfony`.
- `NestJS`.

`FastAPI` només es considera una opció avançada o excepcional, no un itinerari base general.

## 🧱 Mateix projecte, diferents fases

Encara que canvie el focus tècnic de cada repte, el projecte continua sent el mateix.

La seqüència del curs fa que el producte:

- Naixa com una primera base funcional.
- Guanye una base comuna en `PHP`.
- Es reconstruïsca sobre framework amb persistència real i fluxos verificables.
- S’òbriga a `API`.
- I acabe amb integració, prova i defensa.

Per això, els reptes no són peces aïllades. Són fases del mateix recorregut.

## 🤝 Cooperació i autoria

El projecte es pot treballar amb contrast tècnic.

La modalitat base és la de **parelles de contrast tècnic**.

De manera puntual es poden donar **trios avançats**, però no és la forma general de treball.

Es pot compartir:

- El mateix projecte.
- El mateix encàrrec funcional.
- La comparació de decisions tècniques.
- Alguns checkpoints o moments de contrast.

Però continuen sent individuals:

- El repositori.
- Les evidències.
- La defensa.

## ✅ Què tenen en comú tots els reptes

En tots els reptes es valorarà que hi haja:

- Funcionalitat real.
- Evidències verificables.
- Prova del que s’ha construït.
- Documentació útil.
- Comprensió i defensa tècnica.

No convé avançar al següent repte si l’anterior encara no es pot revisar bé.

## 🚀 Accés ràpid

- [Repte 1](repte_01.md).
- [Repte 2](repte_02.md).
- [Repte 3](repte_03.md).
- [Repte 4](repte_04.md).
- [Repte 5](repte_05.md).
- [Tancament i defensa](fase_final.md).
