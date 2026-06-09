# 🤖 Guia d'ús verificable de la IA

## 🎯 Finalitat

Esta guia fixa un criteri comú perquè la IA es puga usar com a eina de suport dins del curs sense substituir comprensió, validació ni defensa tècnica.

La IA es considera una ferramenta habitual de treball, però només té valor real si el seu ús deixa rastre i es convertix en treball comprovat dins del teu repositori.

## ✅ Per a què sí la pots usar

La IA es pot usar per:

- generar esquelets o primers punts de partida
- ajudar en debugging
- proposar proves o casos límit
- revisar documentació tècnica
- comparar alternatives de disseny
- explorar maneres diferents d'organitzar una solució

## ⛔ Per a què no és acceptable

No s'ha d'usar com a substitut de:

- comprensió del codi o de la decisió tècnica
- execució de proves o verificació real
- defensa del treball davant professorat
- lectura crítica de riscos, límits o impacte dels canvis

Tampoc és acceptable:

- copiar codi o documentació sense entendre'ls
- donar per bona una resposta només perquè sembla plausible
- inventar proves o resultats no executats
- ocultar que has usat IA
- entregar una solució que no pots tocar, modificar ni explicar

## 🔄 Recorregut mínim quan uses IA

Qualsevol ús de IA hauria de seguir este recorregut:

1. formular una necessitat concreta
2. revisar críticament la resposta
3. adaptar-la al context real del teu projecte
4. executar, provar o contrastar el resultat
5. deixar rastre del que has acceptat i del que has descartat

## 📝 AI log mínim recomanat

Quan la IA haja tingut un pes rellevant, convé deixar un registre mínim amb:

- tasca o problema treballat
- resum del que s'ha demanat a la IA
- proposta acceptada o rebutjada
- verificació aplicada
- resultat final o canvi introduït

El lloc recomanat per deixar este rastre és:

```text
docs/ai-log.md
```

No cal copiar tota la conversa amb la IA. El que importa és deixar clar què t'ha aportat, què has decidit tu i com ho has comprovat.

### Exemple curt d'entrada en `docs/ai-log.md`

```md
## Consulta 1 - R2M7 - Classe per validar una regla del projecte

- Objectiu de la consulta: separar una regla del flux en una classe simple i preparar una prova unitària.
- Resum del suggeriment: la IA ha proposat una classe `ReservaService` amb un mètode per comprovar si hi ha places disponibles i un test bàsic amb dos casos.
- Què s'ha acceptat: la idea de posar la regla en una classe i provar-la sense navegador.
- Què s'ha rebutjat o modificat: he canviat els noms perquè encaixen amb el meu projecte i he eliminat la part que usava base de dades perquè encara no és el focus del microrepte.
- Com s'ha verificat: he executat `composer dump-autoload`, la prova unitària i un cas del flux web que ja funcionava en `R2M6`.
```

Una entrada bona no ha de ser llarga. Ha de permetre entendre:

- quin problema volies resoldre;
- què va proposar la IA;
- què has aprofitat, canviat o descartat;
- quina prova o comprovació real has fet després.

## 🔎 Com es comprovarà que l'AI log és real

Un `AI log` ben escrit no demostra per si sol que entens el treball. També pot haver sigut redactat amb ajuda d'una IA. Per això el professorat no valorarà només la qualitat del text, sinó si el registre encaixa amb el teu repositori i amb la teua defensa tècnica.

El teu `AI log` ha de poder contrastar-se amb:

- commits del repositori;
- fitxers concrets modificats;
- proves executades;
- errors trobats i corregits;
- decisions que pots explicar;
- canvis que pots fer en directe si se't demana.

Si una entrada diu que has acceptat una proposta, has de poder ensenyar on està aplicada. Si diu que has rebutjat una alternativa, has de poder explicar per què. Si diu que has verificat un canvi, has de poder repetir o descriure la prova.

### Què pot preguntar el professorat

En una revisió o microdefensa, el professorat pot triar una entrada de l'`AI log` i demanar-te:

- en quin fitxer està el canvi relacionat;
- quin commit o part del procés correspon a eixa entrada;
- quina part de la proposta vas acceptar i quina vas modificar;
- quin error va aparéixer i com el vas resoldre;
- quina prova demostra que funciona;
- què passaria si canviàrem una condició, una dada o un cas de prova.

La resposta ha d'eixir del teu projecte real, no d'una explicació genèrica.

### Senyals d'alerta

El professorat pot considerar que l'`AI log` no és una evidència suficient si:

- apareix complet només al final i no té relació clara amb commits o canvis;
- és massa genèric i podria servir per a qualsevol projecte;
- diu que s'han fet proves però no hi ha cap rastre, captura, comanda, checklist o resultat;
- no coincideix amb el codi entregat;
- l'alumne no pot explicar la decisió que diu haver pres;
- l'alumne no pot modificar o provar una part menuda del codi relacionat.

En eixe cas, el problema no és haver usat IA per redactar millor el registre. El problema és que el registre no és verificable o no demostra autoria tècnica.

### Regla curta

Pots usar IA per ordenar o redactar millor l'`AI log`, però les decisions, proves, errors i explicacions han de correspondre amb el teu repositori real i has de poder defensar-les.

## 👀 Quan convé deixar rastre de manera especialment clara

Convé deixar AI log o rastre equivalent sobretot:

- quan la IA ha generat codi que incorpores al repositori
- quan t'ha ajudat a resoldre un error o una prova
- quan ha influït en una decisió d'arquitectura, `API` o integració
- quan l'has usada per redactar documentació que després entregues com a evidència

## ⚠️ Errors habituals o riscos

- copiar codi o documentació sense entendre'ls
- confiar en respostes correctes en aparença però incompatibles amb el teu stack o amb el teu repte
- donar per bones solucions no verificades
- perdre capacitat de defensa tècnica perquè no saps què has acceptat realment
- presentar com a criteri propi una decisió que no has revisat críticament

## ✅ Checklist final

- pots explicar el codi, la prova o la decisió assistida per IA
- hi ha execució real o contrast tècnic del que has incorporat
- el registre d'ús permet saber què ha aportat la IA
- cada entrada important es pot relacionar amb fitxers, commits, proves o decisions concretes
- la resposta de la IA s'ha adaptat al teu projecte i al teu repte reals
- la IA s'ha usat com a suport, no com a substitut del treball tècnic
- si la IA ha fallat o has descartat una proposta, això també pot quedar reflectit si aporta context útil
- el resultat final continua sent defensable encara que desaparega el text original generat


## 🌟 IA i ampliacions 9→10

En les ampliacions `9→10`, la IA també es pot usar com a suport per contrastar enfocaments, revisar codi, suggerir proves o comparar alternatives.

Però continua sense ser acceptable que substituïsca:

- la decisió tècnica
- la validació real
- la prova funcional
- la defensa de l'ampliació

Si la IA ha tingut un paper rellevant en una ampliació, convé que això quede reflectit en el rastre o `AI log` corresponent.
