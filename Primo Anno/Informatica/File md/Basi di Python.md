---
tag: Mate, Info
---
## Basi di Python

*La parte dopo ">>" è l'input*

**Definizione di Calcolare**: Calcolare è un procedimento meccanico di manipolazione simbolica non interpretata *(cioè significativa)*

Esempio:
	L'addizione standard, meccanica e combinata, $321+493=814$, operazione puramente meccanica e priva di significato.

Già in quest'esempio si possono vedere 3 attori/livelli:
1. *Calcolo* in sé e per sé
2. *Descrizione* di questo processo (data dal maestro in linguaggio normale)
3. *Esecutore* del calcolo

In informatica questa struttura a tre livelli è data dal programma (esecutore), che attraverso il linguaggio di programmazione (descrizione), esegue il calcolo (calcolo).

**Definizione di Programma**: Descrizione tramite un linguaggio artificiale (linguaggio di programmazione) della collezione di calcoli

**Definizione di Esecutore**: Macchina astratta di quel linguaggio.
Poiché ogni linguaggio ha la sua macchina, ogni macchina è capace di eseguire un programma solo se è scritto nel suo linguaggio.

Esempio:
	L'esempio precedente può essere tradotto secondo lo schema:
	- Descrizione: $321+493$
	- Esecutore: $\text{PC}$
	- Calcolo: $321+492 \boldsymbol{\rightarrow} 814$

La macchine manipolano simboli raggruppati in collezioni omogenei di oggetti, per esempio gli interi (di cui fanno parte anche le operazioni di somma "+", differenza "-", moltiplicazione "*", elevamento a potenza "**", divisione intera "//", operazione modulo "%").

*Altre informazioni:*
	*I simboli possono essere infissi (in mezzo agli operandi), prefissi (posti prima $\sqrt{2}$), oppure postfissi (cioè messi dopo $2!$)*
	*Utilizza la notazione posizionale decimale (ossia la posizione della cifra nel numero prendono un significato a seconda di dove sono scritti e sono scritti in base 10)
	Inoltre non c'è un massimo per come grandezza di numeri, però c'è un limite nella realizzazione da parte della macchina*

Ogni tipo di dato ha due caratteristiche principali, il Valore e le Operazioni:

**Definizione di Valore**: Con valore si intende il modo in cui sono rappresentati i dati 

Esempio:
	Per il tipo $\text{int}$ il valore è rappresentato dalla usuale scrittura posizionale in base 10

**Definizione di Operazioni**: Sono le operazioni effettivi che si possono fare sui quei valori

Esempio:
	Le operazioni su $\text{int}$ sono la Somma, la Sottrazione (unarie e binarie), la Moltiplicazione, la Divisione tra interi, l'elevamento a potenza, l'estrazione di radice e la divisione con modulo.

È poi possibile scrivere in numeri anche in base diversa da 10.
0b serve per scrivere i numeri in base binaria, 0o serve per scrivere i numeri in base ottale e 0x in base 16

**Tipo dei numeri con la virgola**: Non possono essere definiti dei numeri Reali $\mathbb{R}$ in quanto non è possibile poter definire qualcosa di indefinito, ossia non possono essere definiti in modo effettivo, quindi ci si limita ad una porzione limitata dei numeri razionali $\mathbb{Q}$, più o meno centrata attorno allo 0. Questa è la tipologia $\text{float}$.
Vengono presentati attraverso l'usuale rappresentazione posizionale decimale con il punto.
(*Si potrebbe dire che c'è una iniezione tra numeri in $\text{float}$ e in $\text{int}$, ma in realtà si tratta di cose completamente diverse*)
Possono essere scritti anche con significante/matissa dell'esponente, segnata da una virgola mobile.

Esempio:
	$\text{9.88e+25}$ che è esattamente equivalente a $9.88\times 10^{25}$

La maggiore utilità di questa scrittura è quella di ridurre al minimo l'errore.
Le sue Operazioni sono la Somma + e la Differenza - (entrambi scritti sia come infissi che come prefissi), la moltiplicazione *, l'elevamento a potenza ** e la divisione tra razionali /.

Domanda: *Perché ci sono errori con i calcoli?* 
Perché la macchina Python ragiona in binario e quindi tende a commettere errori con le trasformazioni.

Esempio:
	$\frac{1}{10}=0.1_{0}=0.0\overline{0011}_{2}$

Domanda: *L'elevamento a potenza funziona normale con i numeri "reali"?* si

**Definizione di Espressione**: Un'espressione è una frase corretta del linguaggio la cui valutazione produce un valore (oggetto), strutturato in tipi (che possono essere per esempio di tipo $\text{float}$ oppure $\text{int}$)
La valutazione procede da sinistra a destra con usuali precedenze: $\text{Elevamento a potenza}\rightarrow$ $\text{Somma e differenza unarie}\rightarrow \text{Moltiplicazione, entrambe le Divisioni, Modulo}\rightarrow\text{Somma e Differenza binarie}$
Poi possono essere modificate attraverso l'eventuale uso delle parentesi tonde.

*Esiste anche il Tipo dei numeri complessi che risulta futile per il corso*

Se mi serve invece solo la parte intera (attraverso il troncamento) mi basta il comano $\text{int}$:
```py
>> int(<numero>)
```
Esempio:
	$\text{int}(-56.888)=-56$

**Definizione di Overloading**: Il fenomeno dell'overloading è quel fenomeno in cui uno stesso simbolo viene utilizzato per diverse funzioni ed in questo caso non è possibile stabilire immediatamente a quale comando fa riferimento 

Esempio:
	Un esempio di overloading è dato dal segno $+$ che sta a significare la somma fra interi che la somma fra numeri razionali, *apparentemente sono la stessa cosa ma in realtà non lo sono, in quanto sono diversi i tipi dei valori*

**Definizione di Tipo $\text{str}$**: È la tipologia di simboli che non sono numerici, ossia sono stringhe, da cui $\text{str}$ 
I suoi valori sono successioni finite di caratteri da opportuno argomento *ossia simboli dall'alfabeto anglosassone, simboli in sé e per sé, numeri, eccetera*

Esempio:
	$\text{SIMONE}$ è una stringa, ma scritta in questo modo la macchina non è in grado di leggerla, infatti deve essere presentata in modo opportuno.

La presentazione infatti deve avvenire in questi tre modi possibili: 
```py
"Simone"
'Simone'
'''Simone'''
```
Operazioni in $\text{str}$:
- Concatenazione: da due stringe attraverso il segno $+$ ottengo un'unica scritta composta dall'unione delle due scritte precedenti;

Esempio:
```py
>> x = 'Simone'+'Martini'
>> x 
'SimoneMartini'
```

- Commando $\text{len}$: commando che restituisce la lunghezza della scritta, in tipo $\text{int}$

Esempio:
```py
>> x = len('Ciao')
>> x
4
```


- Ripetizione $*$: Concatenazione con sé stesso $n$ volte, dove $n$ è un numero di tipo $\text{int}$, $\text{'stringa'}*{int}$

Esempio:
```py
>> x = 'Simone'*7
>> x
'SimoneSimoneSimoneSimoneSimoneSimoneSimone'
```

- Selezione: Seleziona il carattere in stringhe in maniera postfissa $\text{'stringa'}[{int}]$. 
	Se il segno del numero è negativo allora parte dal fondo.
	*Si può concatenare con $\text{len}$*

Esempio:
```py
>> x = 'Simone'[2]
>> x
'm'
```

- Comando $\text{type}$: Restituisce il tipo dell'input

Esempio:
```py
>> len('ciao')
<class str>
```

Chiaramente nelle operazioni non posso concatenare diversi tipi.

**Definizione di Comando**: È la base del linguaggio la cui valutazione modifica lo stato della macchina

**Definizione di Stato Interno**: È la lista di associazioni fra nome e valore/oggetto, che evolve nel tempo grazie ai comandi. Il comando più semplice è quello di Assegnamento: 
```shell
>> <nome> = <espressione>
```

Esempio:
```py
>> 7*x
"x non è stato ancora assegnato"
>> x = 8
>> 7*x
56
```

Un nome viene definito quando si trova per la prima volta a sinistra in un assegnamento.
*In altri linguaggi esiste una parte che prende il nome di "dichiarazione delle variabili", che in Python non esiste, in quanto è strettamente legato al valore*.

**Regole di Assegnamento:**
1. Si valuta la parte di destra (*Si guarda se è corretta oppure no*)
2. Se $\text{<nome>}$ non è definito, viene messo nello stato interno
3. Crea un legame tra $\text{<nome>}$ e valore definendo un legame tra il nome e il valore determinato al passo 1

Domanda: *È possibile usare a destra lo stesso valore a sinistra (tipo $\text{x=x+1}$)*
Si in quanto l'ordine è rispettato

Domanda: *Che succede se nomino lo stesso oggetto due volte? (tipo $\text{x=4}; \text{y=x}$)?*
Molto semplicemente quello stesso valore/oggetto avrà due nomi (fenomeno dell'Aliasing)

I nomi dati possono essere lettere maiuscole e minuscole, cifre e trattini bassi.
L'unica regola è che non possono iniziare con numero.
Esistono poi dei nomi che non possono essere usati, questi sono dei nomi riservati (per esempio $\text{from}$ non può essere utilizzato in quanto è un nome utilizzato già dalla macchina)

**Definizione di Script**: È un testo in cui ogni riga deve essere una frase legale in Python.
*Chiaramente quando si esegue uno script, tutto quello che era presente nella sessione precedente viene eliminato*.

Per vedere direttamente un risultato c'è la funzione $\text{print()}$

Esempio:
```py
[SCRIPT]
x = 10
y = 15
z = x+y
print(z)

[SHELL]
25
```

Si possono scrivere più elementi di uno stesso $\text{print}$ separando i vari elementi con una virgola

Altri tipi sono i booleani $\text{bool}$ che servono per le verità (vero o falso) e i numeri complessi $\text{complex}$ (al posto di $i$ viene messa $j$)

Esiste un sito in cui è possibile fare Tracing del programma, ossia è possibile seguire passo per passo i vari comandi del programma Python Tutor.
Visualizza lo Stato Interno della Macchina Python

Servono per spiegare al meglio quello che fa il programma in linguaggio normale
Per poter fare i commenti è sufficiente mettere davanti $\#$, oppure tra tripli doppi apici

Esempio:
```py
#Sono un commento felice
"""Sono un Commento"""
```

Ci sono i moduli, che sono delle funzioni già pronte e dei nomi a cui sono già stati assegnati dei valori

Esempio:
	In $\text{math}$, pi è già assegnata un'ottima approssimazione di $π$ 

Un altro modulo è $\text{random}$ per creare numero pseudo randomici (tutto trovato nelle documentazioni)

Per fare già si usa il comando di Importazione "$\text{from}\; <...> \; \text{import} <...>$"

Esempio:
```py
>> from math import pi
>> pi
3.1415...
```
È possibile importare sia numeri costanti (per esempio $e$) sia funzioni ($\text{sqrt}$ che risulta essere più precisa rispetto a $**1/2$)

Questi moduli non sono altro che altri file $.\text{py}$, quindi è possibile farlo anche con i nostri file
*L'importante è salvare il tutto nello stesso posto*

Esempio:
```py
[PROVA.py]
secondo = 'nome generico'

[SHELL]
>> from PROVA import secondo
>> secondo
'nome generico'
```

Per poter mandare a capo basta mettere nel comando di $\text{print}$ un "$\setminus \text{n}$"

Esiste un funzione che permette di trasferire dallo stato esterno a quello interno $\text{Input}$

**Definizione di Input**: È una funzione predefinita che permette di trasferire da stato esterno a stato interno: $\text{input}()$. Valutare $\text{input}()$ restituisce la stringa che è stata digitata su dispositivo di ingresso.
*Quello che nell'effettivo succede è che la valutazione del programma viene interrotta per aspettare che l'utente inserisca una stringa, per terminare con invio*

Esempio:
```py
print('Inizio')
test = input()
print('dopo')
print(testo)

[SHELL]
inizio
{Qui la macchina aspetta che venga inserita una stringa} 'Pippo'
dopo
Pippo
>>
```

Se non assegno un nome ad un valore semplicemente viene buttato via.

Normalmente il valore viene salvato in tipo $\text{str}$, per poter renderlo in un altro tipo, semplicemente mi è sufficiente davanti il tipo del valore.

È possibile scrivere anche all'interno di $\text{input}()$

Esempio:
```py
[FILE.py]
text = input('Dammi il raggio')

[SHELL]
Dammi il raggio

```

**Definizione di Funzione**: Pezzo di programma, a cui è possibile associare un nome, costituito da diversi comandi e restituisce un valore. Posso eseguire una funzione semplicemente chiamandola.
*Non è necessario un $\text{print}()$ per ridare il valore*

Esempio:
```py
[FILE.py]
def VolumeSfera(Raggio):
	vol = (4/3)*pi*(raggio)**3
	return vol

[SHELL]
>> VolumeSfera(3)
>> <Valore del volume>
```

La funzione è costituita da due aspetti diversi:
- La definizione di funzione dato dal nome riservato $\text{def}$, poi il nome della funzione, poi una parentesi tonda $($, poi ci possono essere i parametri, poi chiusa e poi due punti: 
	$\text{def <nome> ( <parametro formale> ):}$ *Si chiama intestazione della funzione*
- Corpo della funzione: Sono linee di comandi in Python che devono avere una indentazione positiva (*Devono essere spostate dal margine e tutte alla stessa indentazione, quella canonica sono 4 spazi*)
	Il corpo deve necessariamente terminare con la funzione $\text{return}$

È definito come comando composto in quanto è costituito da una intestazione seguito da un corpo a indentazione positiva.

Quando una macchina valuta una funzione, il corpo non viene eseguito, ma viene messo un legame interno tra la funzione e lo Stato Interno e non viene eseguito (se non eseguito esplicitamente)

*Per mettere più parametri, basta separarli con un virgola*

Solo nel corpo di una funzione ci può stare il comando $\text{retrun}$ seguito dal valore che voglio restituire ($\text{return <valore>}$)

Posso chiamare o usare una funzione in questo modo: $\text{<nome> ( <parametro attuale> )}$
*Come nell'esempio sopra*
Chiamare una funzione significa mandare in esecuzione il corpo della funzione

Se ho un determinato numero di Parametri Formali, devo avere lo stesso numero di Parametri Attuali
Parametri Attuali sono espressioni e sono valutate alla chiamata, mentre quelli formali sono Formali sono i "nomi" dei Parametri Attuali.

È possibile anche dare assegnare al valore finale della funzione un nome 

Esempio:
```py
[FILE.py]
def VolumeSfera(Raggio):
	vol = (4/3)*pi*(raggio)**3
	return vol
	
volume = vol

[SHELL]
>> VolumeSfera(8)
>> Volume
2144,66...
```

Se ci si dimentica del $\text{return}$ è come se ci fosse scritto $\text{retun None}$

Le funzioni aiutano molto perché è possibile spezzare il programma in tanti piccoli programmi

Esempio:
Calcolare il volume della sfera con raggio pari alla diagonale di un quadrato di lato l 
```py
[FILE.py]
from math import pi, sqrt

def diag_quad(l)
	return l*sqrt(2)

def volsf(raggio)
	return (4/3)*pi*(raggio**3)

def mio_prob(l)
	return volsf(diga_quad(l))

res = volsf(8)

[SHELL]
>> mio_prob(8)
6066,00..
```

*L'ideale è importare prima tutto quello che serve per poi far partire il programma*

L'associazione tra parametro attuale e tra parametro formale viene distrutta al termine della funzione. (Ossia viene distrutto l'ambiente locale)
Il parametro formale è un nome **locale** alla funzione

**Definizione di Frame**: Lo stato interno di una si chiama Frame. Il frame del programma prende il nome di Frame Globale, mentre lo stato interno di una funzione prende il nome di Frame Locale

**Regola per i Frame Locali**: Un nome che compare a sinistra di un assegnamento nel corpo di una funzione è *locale* a quella funzione e quindi ha senso ad una associazione *solo* durante l'esecuzione di quella funzione. *Vero anche se quel nome fosse stato già presente nello Stato Globale, infatti ci sarebbero due nomi uguali ma che facevano riferimento a due cose diverse.*

Se all'interno di un frame locale utilizzo un nome a destra, possono succedere tre casi:
	- lo prende dal locale;
	- se non c'è nel locale, lo prende dal globale;
	- se non c'è nel globale da errore.
Ma se lo usassi a sinistra quel valore non sarebbe più globale ma locale.

È possibile definire una funzione dentro una funzione in questo modo:
```py
def a(x)
	def b(y)
		return
	return
```
Solo che la funzione dentro l'altra funzione è locale all'altra, quindi devo prima chiamare la funzione più esterna, poi passare a quella più interna.

Utilizza un processo di Scoping Statico (ossia è in base alla struttura del codice).

**Definizione di Numeri Pseudocasuali**: Algoritmo che estrae dei numeri che dovrebbero passare dei test casistici. Sembrano casuali ma in realtà non lo sono (giusto un paio di cose in natura lo sono)

Struttura dell'$\text{if}$:
```py
if <condizione>
	<comando nel ramo then>
	...
else:
	<comando nel ramo else>
	...
<comando fuori dall'if>
```
Questo tipo di struttura è definita struttura booleana, ossia può essere valutata come vera o falsa e, in caso sia vera, vengono eseguite le istruzioni che si trovano all'interno del costrutto $\text{if}$

Ecco la lista di alcuni operatori di confronto:
```py
x==y
x!=y
x>y
x<y
x>=y
x<=y
```
Altri tipi di operatori sono gli operatori logici:
	- $a\text{ and }b$: Se sono entrambe vere allora valgono $\text{True}$
	- $a \text{ or }b$: Se una tra $a$ e $b$ è vera allora vale $\text{True}$
	- $\text{not } a$: Se $a$ vale $\text{True}$, allora vale $\text{False}$

Un caso particolare di $\text{else}$ è dato da $\text{elif}$ in cui è possibile mettere un'altra condizione:
```py
if <condizione 1>
	<comando del then>
	...
elif <condizione 2>
	<comando dell'elseif>
	...
else 
	<comando qualora non vengono soddisfatte le condizioni>
	...
```

Esistono delle sequenze che possono essere immutabili (come stringhe o tuple) o mutabili (cioè che vengono create e poi possono essere modificate).

Le tuple (di tipo $\text{tuple}$) sono delle sequenze di valori (tra parentesi tonde) separate da delle virgole.

Altre operazioni sulle stringhe (oltre a $*$ e $+$) vi sono gli operatori di confronto, come $==, <, >...$
Una particolare operazione è quella di $\text{slicing}$ $([\text{inizio}:\text{fine}])$, che come dice il nome, serve per "tagliare" delle parti da delle stringhe. *Se inizio non è specificato allora inizia dal primo indice, se fine non è specificato arriva fino alla fine*

Esempio:
```py
>>> parola = 'Ciao'
>>> parola[2:3]
'ao'
```

Vi è un altro tipo di $\text{slicing}$ che è lo $\text{slicing esteso}$ che ha la struttura $[\text{inizio}:\text{fine}:\text{passo}]$ dove il passo serve per indicare il senso di percorrenza (in caso $\text{inizio}>\text{fine}$)

Le tuple sono un tipo strutturato e sono delle sequenze immodificabili di valori separate da stringhe:

Esempio:
```py
>>> dati = 'Anna', 'Pannocchia' ,'F' ,20
>>> dati
('Anna', 'Pannocchia', 'F', 20)
```

Le virgole sono indispensabili, in quanto danno la netta separazione tra stringhe e tuple, infatti $('\text{Michael}')$ è una stringa mentre $('\text{Michael}, ')$ è una tupla con un solo elemento

Le operazioni che si possono fare con le tuple sono $+$ per poter concatenare le tuple, $[\;]$ di selezione e $[\; : \; : \;]$ di slicing.

È possibile anche impacchettare le tuple e spacchettarle:

Esempio:
```py
>>> dati = ('Anna', 'Pannocchia', 'F', 20)
>>> dati
('Anna', 'Pannocchia', 'F', 20)
>>> (nome, cognome, sesso, eta) = dati
>>> nome
'Anna'
>>> cognome
'Pannocchia'
```

Per verificare l'appartenenza è possibile usare $\text{in}$ e $\text{not in}$ se un elemento (o una sequenza di elementi) appartiene o meno ad una sequenza.

Esiste la possibile di creare una iterazione sulle sequenze:
```py
for <nome> in <sequenza>
	<blocco>
```

In Python vi è una gran differenza tra "Oggetto" e "Valore". Infatti due oggetti diversi $x$ e $y$ per esempio possono avere lo stesso valore ma essere oggetti diversi:
```py
x = 1000
y = 1000
```
Così hanno lo stesso valore
```py
x = 1000
y = x
```
Così hanno lo stesso oggetto (e di conseguenza lo stesso valore)

Per verificare effettivamente che sono lo stesso oggetto esiste il comando $\text{is}$

Esempio:
```py
>>> x = 1000
>>> y = 1000
>>> x is y
False
>>> y = x
>>> x is y
True
```

Esiste un comando particolare che è $\text{accum}$ che permette di "accumulare" dei determinati dati:

Esempio:
```py
accum = <valore iniziale>
for e in <sequenza>
	<comandi>
	accum = <op>(accum, e)
	<comandi>
```

$<\text{op}>$ non è altro che l'operazione che si vuole fare con l'accumulazione
Spesso il valore iniziale di $\text{accum}$ non è altro che l'elemento neutro dell'operazione

Ogni oggetto è un "valore attivo".
Esistono una serie di comandi (differenti per tipo) che permettono di stimolare gli oggetti e il metodo è una di queste modalità.
Ha la struttura di:
```py
<oggetto>.<metodo>(<eventuali parametri>)
```

Chiaramente oggetti dello stesso tipo condividono gli stessi metodi.

Esempi di metodi offerti per $\text{str}$:
https://docs.python.org/3/library/stdtypes.html

Un altro tipo particolare di sequenze è quello del $\text{range}$. Questi sono altro che intervalli di $\text{int}$ e ha la stessa notazione dello $\text{slice}$, ossia $\text{<range>}(\text{<inizio>, <fine>, <passo>})$ 

Durante la scrittura del codice si possono individuare due tipi di errori:
	- quelli statici:
		$\text{SyntaxError: invalid syntax}$
	- quelli dinamici (che vengono chiamati anche eccezioni):
		$\text{Traceback (most recent call last): File "", line 1, in ZeroDivisionError: division by zero}$

È possibile arginare l'eccezione attraverso i comandi $\text{try} - \text{except}$

Esempio:
```py
def mediaE(T): 
	somma = 0 
	for e in T: 
		somma = somma + e 
	try: 
		return somma/len(T) 
	except ZeroDivisionError: 
		return 0
```

La struttura base di $\text{try} - \text{except}$ è:
```py
try:
	<block>
except <exception>:
	<handlerblock>
```

Se non è presente $\text{<exception>}$, allora vengono bloccate tutte le eccezioni

Esiste un altro modo di fare cilci, ossia sfruttando il comando $\text{while}$:
```py
<comando>
while <guardia>
	<corpo>
<comando>
```

Notare come la guardia viene valutata ogni volta che si ricomincia il tutto.
Chiaramente la parte prima deve avere un senso e che la parte del $<\text{corpo}>$ modifichi qualcosa, perché sennò il programma andrebbe in loop.

Invariante di un ciclo: proprietà vera quando si entra nel ciclo e che è di nuovo vera quando si rientra nuovamente nel ciclo (Proprietà che sostanzialmente mantenuta vera durante il ciclo).

Esempio:
```py
def pari(tup): #True sse esiste pari in tup 
	for i in range(len(tup): 
		if tup[i]%2==0: 
			return True 
	return False
```
L'invariante in questo caso è $\text{Inv(i)} \equiv ¬\exists x \in tup[:i]$ ed è quello che succede
Con $\text{Inv}(0) ¬ \exists x \in tup[:0]$ per pari, Vero perché non ci sono elementi pari in nell'insieme vuoto $(\varnothing)$
Poi lo si fa per induzione:
Supponiamo che $\text{Inv}(i)$ sia vera quando iniziamo l'esecuzione del corpo con valore $i$. Vogliamo dimostrare che vale $\text{Inv}(i+1)$ dopo che abbiamo eseguito una volta il corpo e non abbiamo fatto il $\text{return}$ del corpo.
Sappiamo che $\nexists x \in tup[:i]$ che è pari. Se eseguiamo il corpo e **non** viene fatto return vuol dire che $tup[:i]$ è dispari, cioè $\nexists x \in tup[:i+1]$ che sia pari.
Quindi se il $\text{for}$ termina senza mai eseguire il return al suo interno, vale $\text{Inv(len }tup) \equiv \nexists x \in tup$ x pari 

Definizione di Debug: Processo di eliminazione di errori del software (attraverso le varie prove):

Ci sono tre tipi di errore:
- Errori di Sintassi (normalmente facilmente visibili): Codice scritto male
- Errori di $\text{run-time}$: Errori che non saltano fuori durante la fase di debug che l'IDE non riesce a percepire (errore che avvengono durante l'esecuzione) e ne consegue che l'errore si chiude per un'anomalia
- Errori di Semantica: Il programma non si comporta come vorremmo.

Algoritmo di Debug:
	- La prima cosa da fare è quello di leggere attentamente il testo del programma (ossia ipotizzando quali sono i risultati che vorrei ottenere);
	- Lo si prova a fare "a mano" (ossia provando a spiegarlo a qualcuno - o ad una paperella di gomma, in gergo qualcuno che non è altamente intelligente)
	- Lo si prova su diverse prove (per vedere che effetti e risultati). 
	- Quando c'è un errore provo a sistemarlo, ma se sto peggiorando le cose posso tornare indietro.

Uno dei più grandi errori da principiante è quello di fare lunghe sessioni di programmazione senza mai testare il codice.

**Scansione lineare**: Quantità di tempo proporzionale alla lunghezza della sequenza (lineare per questo motivo).
La scansione lineare, indipendentemente dai dati, il costo è proporzionale a $n$, perché deve scandire tutta la sequenza.


Esempio:
```py
for i in s
	if e in vocali:
		print(e)
```

$\text{for i in s}$ è la scansione lineare ed è proporzionale a $s$ (cambia al massimo la costante proporzionale).

Poi c'è la Ricerca Lineare (che non è più come la scansione), in quanto c'è anche il "se c'è" e "in che posizione si trova":

Esempio:
```py
for i in s
	if e in vocali:
		return 'Trovata'
return 'No vocale'
```
Qui il tempo della funzione non è strettamente legata alla lunghezza, ma dipende anche dal tipo di dati che inseriamo.
Il caso peggiore qui è che $s$ non abbia vocali (quindi il tempo su una sequenza lunga $n$ è proporzionale a $kn$, dove $n$ è la lunghezza della stringa).
Il caso ottimale è che $s[0]$ è una vocale e il tempo impiegato non dipende più da $n$ ed è costante.
Poi ci sono tutti i casi intermedi $s[i]$ è una vocale e in $s[:i]$ non ci sono vocali. Qui il tempo è proporzionale a $i$ (nonostante la sequenza sia lunga $n$).

Nel caso della scansione lineare dipende solo dalla lunghezza della stringa (poco interessante)
Nella ricerca lineare (più interessanti) dipende da lunghezza e posizione. Quello che ci interesserà di più è il caso peggiore.

*Volendo potremmo cercare le cose intermedie, tempo e posizione, ma per parlare di media devo sapere come sono fatti i dati. In ipotesi di distribuzione omogenea il tempo sarebbe proporzionale a $\frac{n}{2}$, ma così non lo vedremo quasi mai.*

Quanto si tratta di un problema di complessità, non si cerca il tempo in secondi, ma la complessità in sé da quello che richiede (Quindi analisi del caso peggiore).

**Dove usare il $\text{while}$?** 

- Scrivere una funzione in cui si utilizza una ricerca lineare (e dove non si possa usare $\text{return}$)

Esempio:
```py
i = 0
while i < len(tup) and tup[i]%2 != 0:
	i = i + 1
if i < len(tup):
	#c'è un pari
else: 
	#non ci sono pari
```

- In cicli di Input

Esempio:
```py
x = None
while x is None
	try 
		x = float(input('Dammi un numero' ))
	except ValueError
		print('Sei duro? Un numero.')
		x = float(input())
print(x)
```

- Liste che cambiamo lunghezza
- Moltissimi algoritmi belli, interessanti e eleganti

Esempio sull'algoritmo naive per $\mathcal{MCD}$:
```py
def MCD_naive(a, b):
	if a == 0 or b == 0:
		return max(a, b)
	for k in range(min(a, b), 0, -1):
		if a % k == 0 and b % k == 0:
			return k
```
Qui il tempo è proporzionale (nel caso peggiore) al minore tra $a$ e $b$ (Ossia quando sono coprimi)

Sfruttando l'algoritmo di Euclide possiamo definire una due successioni $\{a_i\}$ e $\{b_i\}$ tali che:
$a_0=a, \; b_0 = b$ che diventa $a_{i+1}=b_i, \; b_{b+1}=a_i \% b_i \Rightarrow a_n=\mathcal{MCD}(a,b)$
Bisogna vedere due cose: 
	1. Se effettivamente il programma termina
	2. E se termina effettivamente con $a_n=\mathcal{MCD}(a,b)$

1. poiché $b_1 = a_0 \%b_0 \in [0,b_0[$ e di conseguenza $\forall b_i:\;b_{i+1}=a_i \% b_i \in [0, b_{i}[$ Quindi $b_i$ è una successione decrescente che eventualmente raggiungerà lo $0$. Di conseguenza prima o poi l'algoritmo termina.
2. Data la dimostrazione si ha effettivamente che $a_n = \mathcal{MCD}(a,b)$

Il codice:
```py
def Euclide_base(a, b)
	ai = a
	bi = b
	while b != 0 
		temp = ai
		ai = bi
		bi = temp % b
	return ai

def Euclide(a, b):
	while b != 0:
		a, b = b, a % b #Assegnamento multiplo mi permette di non usare temp
	return a
```

Tra questo e quello precedente, il caso peggiore è quando sono coprimi.
Il caso peggiore è quando $a$ e $b$ sono due numeri successivi della sequenza di Fibonacci, in quanto è proporzionale al logaritmo del più piccolo dei due $\log min(a,b)$ nel secondo caso e al più piccolo dei due nel primo caso.

Un altro bell'algoritmo è quello dello schema del ricerca binaria/dicotonica (schema che può essere applicato ovunque). È un algoritmo che va a cercare un elemento in una sequenza ordinata.

Funzionamento: $\ell = 0$ (low = indice dell'inizio), $h = \text{indice più alto}$, $m = (\ell + h)//2$ (il punto medio con divisione intera). Se cerco un numero posso partire analizzando l'elemento medio. Se è maggiore allora sta a destra, altrimenti a sinistra. Se sta a destra allora $\ell = m+1$, se invece sta a sinistra $h = m$ e così via
Se cercassi un valore che non c'è, otterrei un intervallo vuoto, che rappresenta la condizione di terminazione dell'algoritmo.

Ecco un possibile codice:
```py
def binsearch(A, item):
	high = len(A)
	low = 0
	while low < high:
		med = (high + low) // 2
		if A[med] == item:
			return med
		if item < A[med]:
			high = med
		else: 
			low = med + 1
	return -1 
```

$-1$ è un modo convenzionale di dire che l'elemento non c'è

Il caso peggiore nella ricerca binaria è il caso in cui non c'è l'elemento (ossia quando $\ell =h$).
Se la sequenza $A$ è lunga $2^n$ ci vogliono $n$ o $n-1$ sequenze, ossia $\log_2 \text{len(A)}$ 

C'è anche un elemento di invarianza, ossia $\text{In(low, high)} = \text{item} \notin A \text{ or item} \in A[\text{low:high}]$ 

Ripasso Tuple: 
	- Valore: Sequenze non modificabili di valori:
	- Presentazione: $(v_1, v_2, ..., v_k)$
	- Operazioni: $+, *, len, t[],$ slice

Liste:
	- Valore: Sono sequenze modificabili di valori (Modificabili: è possibile modificare/cambiare il **valore** di un oggetto preservandone l'identità)
	- Presentazione: $[v_1,v_2,...,v_k]$
	- Operazioni: *le stesse delle tuple*

Esempio:
```py
>>> L = [1, 2, 3]
>>> V = L + [5, 6]
>>> print(V[2])
3
```
![[Esempio 1]]

Nelle Liste è possibile fare anche assegnazioni a sinistra:

Esempio:
```py
>>> V[2] = 200
```
Adesso il valore 3 è diventato 200 ma il comando $\text{is}$ continua a dare vero

Altro Esempio:
```py
>>> W = ['5', L, 10]
```
![[Esempio 2]]
```py
>>> L[0] = 100
>>> print(W)
['s', [100, 2, 3], 10]
```

Non è più quello che vedevo prima perché $W$ è $L$, quindi una modifica su $L$ si ripercuote su tutto $W$ (side effect - effetti collaterali)
Comodo sì ma può creare tantissimi errori.

Per copiare una lista/tupla si fa con le slice.

Continuo esempio:
```py
>>> L = [1, L[:], 20]
```
![[Esempio 3]]
```py
>>> print(Z[1][0])
```

Se io facessi:
```py
>>> V[2] = V #Sono lo stesso oggetto - caso di Aliasing (2 nomi stesso oggetto)
#Ottengo una lista ciclica che ripete sé stessa nella posizione 2
>>> V[2][0] = 9
>>> V[2][2][2][2][0] = 10
#Posso scriverlo tutte le volte che voglio ma alla fine modifica sempre lo stesso elemento.
>>> print(V)
[10, 2, [10, 2, [10, 2, [...]]], 5, 6]
```

Python si accorge che c'è un ciclo e mette dei puntini.
Quando ci sono dei puntini nella valutazione della lista significa che c'è un qualche ciclo.

*A cosa servono le tuple se abbiamo le liste?*
Con liste ci sono degli aspetti delicati e condivisione. Con liste non sono modificabili. Sostanzialmente modifica il ragionamento durante la programmazione

Con le liste ci sono due vincoli affinché non vengano generate eccezioni:
- Devono essere su un oggetto modificabile;
- La sintassi deve essere scritta bene.

```py
<selezione> = <espressione>
```

Esempio:
```py
#Ho lista non vuota e voglio scambiare primo e ultimo elemento
>>> L = [10, 20, 30, 40]
>>> L[0], L[-1] = L[-1], L[0] #Posso usare assegnamento multiplo con le liste
>>> print(L)
[40, 20, 30, 10]
```

Altro Esempio:
```py
L = [10, 20, 30, 40]
def doppio(l)
	#Modifica ogni elemento della lista con il suo doppio
	for i in range(len(L))
		L[i] = L[i] * 2 #La selezione deve essere fatta sugli indici, non su singoli nomi
		#La selezione inoltre deve essere fatta a sinistra

[SHELL]
>>> doppio(L) #Se facessi direttametne print(doppio(L)) mi avrebbe dato None
>>> L
[20, 40, 60, 80]
```

Non si può cambiare una lista in una tupla, ma è possibile creare una tupla che abbia gli stessi valori della lista.
```py
>>> L = ['a', 'b', 'c']
>>> T = tuple(L)
>>> T
(a, b, c)
>>> L[1] = 100
>>> T
('a', 'b', 'c')
```

**Non dobbiamo mai supporre l'identità di oggetti anche se hanno lo stesso valore. Le operazioni creano sempre nuovi oggetti.**

```py
>>> L = [10, 20, 30]
>>> W = [100, L ,200]
>>> Z = W[:]
```
![[Esempio 4]]
Posso chiamare lo stesso oggetto $L$ in tre modi diversi
```py
>>> L
>>> W[1]
>>> Z[1]
```

Nelle liste è possibile fare anche operazioni in più rispetto alle tuple:

Il comando $\text{del }L[i]$ elimina l'elemento della lista $L$ nella posizione $i$:
```py
del L[i]
```
L'identità dell'oggetto è rimasto, ma all'interno della lista qualcosa è cambiato.
La cancellazione di un elemento ha fatto si che gli elementi vengano ricalcolati.
![[Esempio 5]]

Esempio:
```py
L = [10, 0,30 ,40, 0, 50, 0]
i = 0
while i < len(L):
	if i == 0:      #Qua non aumento l'indice perché vengono già cambiati
		del L[i]
	else:
		i = i + 1
```
Con il for non si poteva fare perché il for congela l'oggetto ma non il suo valore (quindi cambia il valore di $\text{len(L)}$)
Quindi il ciclo sarebbe andato oltre la lunghezza della lista.
Per questo **Mai usare $\boldsymbol{\text{for}}$ per le liste**

Per creare una lista con un solo elemento è possibile fare:
```py
>>> L = [2] #Non c'è bisogno di mettere una virgola rispetto alla tupla
```

Un modo in cui si possono usare la lunghezza delle liste è utilizzando lo $\text{slice}$ a sinistra dell'assegnamento:
```py
>>> L = [10, 20, 30]
>>> L
[10, 20, 30]
>>> L[0:2] = [100, 200, 300] #Parte in cui si aggiunge
>>> L 
[100, 200, 300, 30]
```
Allo stesso modo si può anche cancellare
```py
>>> L = [100, 200, 300, 30]
>>> L[1:2] = [] #Parte in cui si elimina
>>> L
[100, 300, 30]
```

Esiste anche un altro modo per aumentare e diminuire, ossia attraverso i metodi (in quanto le liste sono attive e possono essere stimolati attraverso metodi).
Il metodo più semplice è $\text{.append}$ (ma restituisce $\text{None}$)

Esempio:
```py
>>> L = [100, 200, 300, 30]
>>> L.append(900)
>>> L
[100, 200, 300, 30, 900]
>>> L.append('simo')
>>> L
[100, 200, 300, 30, 900, 'simo']
>>> L.append([3, 4, 5])
>>> L
[100, 200, 300, 30, 900, 'simo', [3, 4, 5]]
```
Per tutto il codice l'identità della lista resta sempre la stessa.
Concatenare due liste invece altera l'identità della lista.

Esempio:
```py
>>> L = [10, 20]
>>> L = L + [30, ]
>>> L
[10, 20, 30]
```

Con $\text{.insert}(i,x)$ posso aggiungere un elemento $x$ all'indice $i$
Esempio:
```py
>>> L = [10, 20, 30]
>>> L.insert(0, 100)
>>> L
[100, 10, 20, 30]
>>> L.insert(33, 1000) #Se l'indice supera la lunghezza della lista è come .append
>>> L
[100, 10, 20, 30, 1000]
```

Con $\text{.extend(Lista)}$ si fa una concatenazione che elimina l'oggetto
Con $.clear()$ svuota la lista

**Tutti questi metodi restituiscono $\text{None}$ in quanto ci interessa soltanto quello che fanno**

Altro esempio:
```py
>>> L = [10, 20]
>>> W = L
>>> L = L + [30]
>>> L
[10, 20, 30]
>>> W
[10, 20]

#È la stessa cosa di fare
>>> L = [10, 20]
>>> W = L
>>> L.append(30)
>>> L
[10, 20, 30]
>>> W 
[10, 20]
```

*Ripasso lista*: Una lista è una sequenza di oggetti modificabile, ossia posso modificare un elemento all'interno della lista, mantenendone la giusta relazione.

*Ripasso $\text{for}$*: 
```py
for n in expr:
	corpo
```
Il $\text{for}$ valuta expr, determinando un oggetto $s$. 
0.1 - Se $s$ non è una sequenza eccezione
0.2 - Mette via un riferimento a questo oggetto $s$, sequenza che controlla il $\text{for}$. Usa quel riferimento per controllare il $\text{for}$

Questo spiega perché in
```py
A = 3
for i in range(A):
	print(i)
	A = 10
print(A)
```

In questo codice, il valore di $A$ viene cambiato ma solamente dopo aver congelato il valore $\text{range(A)}$ (restando costantemente 3) quindi, quello che viene stampato è:
```py
0
1
2
10
```

Che succede invece in:
```py
A = [3,4]
for i in A:
	print (i)
	A = A + [5]
print(A)
```
![[Drawing 2023-03-21 14.24.35.excalidraw]]
A furia di fare si ottiene una nuova lista con cose nuove
Quello che esce fuori è:
```py
3
4
[3,4,5,5]
```

Nuovo codice:
```py
A = [3,4]
for i in A:
	print (i)
	A.append(5)
print(A)
```
![[Drawing 2023-03-21 14.29.31.excalidraw]]
Quello che viene stampato è:
```py
3
4
5
5
5
[...]
```
E il programma non finisce più

**Assegnamento Aumentato**: Durante $\text{while}$, spesso si è trovato $\text{A = A +1}$ oppure $\text{Res = Res + Val}$ 
Python non ha auto incremento/ auto decremento, ma ha gli assegnamenti aumentati.
$\text{A = A + 1}\Leftrightarrow \text{A += 1}$ e quindi $\text{Res = Res + Val}\Leftrightarrow \text{Res += Val}$
Come già visto, il $+$ dipende dal tipo legato ad $A$, non ha un significato a sé stante.

```py
>>> s = 10
>>> s += 20
>>> print(s)
30
>>> T = (10, 20)
>>> T += (30,)
>>> print(T)
(10, 20, 30)
```

Ce ne sono moltissimi di Assegnamenti Aumtentati: $+=, -=, *=, /=, //=, \%=, **=$ *Per le cose basi, si tende a preferirle a quelle estese*

**Non sono esattamente la stessa cosa**: infatti ci sono tre grosse differenze:
- Se possibile, l'operazione avviene "in place" (con la modifica dell'oggetto senza la creazione in un altro) *Cosa più importante per il corso*
```py
L = [10, 20] #Qui la lista viene modificata
L += [30]
#È diversa da 
L = [10, 20] #Qui viene creata un'altra lista
L = L + [30]
#La differenza viene vista direttamente dall'id con
id(L)
```
- Il $\text{LHS}$ (parte sinistra dell'assegnamento) è valutato prima della parte destra $\text{RHS}$
```py
X = 3 + 5 + 9 #Viene valutata prima parte destra
X += 39 + 7 #Viene valutata prima la parte sinistra, qui è coerente
L[f(i)] += 29 #Qui non è coerente
L[f(i)] += f(i) #Qui ci sono ancora più effetti collaterali
```
- $\text{LHS}$ è valutato una volta soltanto
Infatti se fosse davvero una abbreviazione si avrebbe la valutazione due volte, ma questo non è il caso

Altri metodi sulle liste:
	- $\text{L.remove(x)}$ rimuove da $\text{L}$ il primo elemento che ha valore $\text{x}$, da errore se non presente
	- $\text{L.copy()}$ restituisce una copia piatta di $\text{L}$, come fare $\text{from copy import copy}\setminus \text{copy(L)}$, il primo per le liste e il secondo per tutti gli oggetti. Oppure sempre da $\text{copy}$ possiamo importare il modulo $\text{deep copy}$ 
	- $\text{L.reverse(L)}$ rovescia $\text{L}$ ma non è la stessa cosa di $\text{L = L[::-1]}$. Nel primo l'oggetto non è cambiato, mentre il secondo è un nuovo oggetto rovesciato.
	- $\text{L.pop(i)}$ fa due cose, prima restituisce l'elemento ad indice $i$, poi rimuove l'elemento a quella posizione. Se non si mette indice, restituisce l'ultimo elemento e poi lo rimuove
	- $\text{L.index(el)}$ restituisce il primo indice $i$ per cui $\text{L[i] == el}$
	- $\text{L.count(el)}$ restituisce quante volte compare $\text{el}$

Esempio:
```py
W = [3, 4]
L = [10, 20, W]
Z = L.copy()
Y = deepcopy(L)
```
![[Drawing 2023-03-21 15.00.57.excalidraw]]
*La sostanziale differenza è che con $\text{copy}$ crea un riferimento alla stessa lista, mentre con $\text{deepcopy}$ crea da zero tutto quello precedente, anche le sottoliste*

Non tutte le operazioni/metodi hanno costo unitario (per esempio $\text{x in S}$, dipende da dove si trova $\text{x}$, oppure è proporzionale a $\text{len(S)}$)

L'operazione $\text{del L[i]}$ costa. Infatti data una lista $[10, 20, 30, 40, 50]$ se si elimina l'elemento con indice $i$ viene cancellato e tutti vengono traslati a indice precedente (per assurdo costa di più cancellare un elemento ad indice prima che dopo)
La stessa cosa anche con $\text{L.insert(x)}$.
Entrambe sono proporzionali a $\text{len(lista)-i}$. 
Fa eccezione $\text{L.append(e)}$ che ha costo unitario (su una sequenza di append), ossia non dipende dalla lunghezza di $\text{L}$.

Esercizio:
	Data una sequenza $S$ di numeri interi ordinata e crescente, viene dato un intero $x$. Inserire $x$ in $S$, mantenendo ordine (da realizzare "in place").

```py
def insortL(L, x):
	i = 0
	while i < len(L) and L[i] < x: #Tempo lineare
		i += 1
	L.insert(i-1, x) #Tempo lineare
	return L 

def ins_ord_b(L, el):
	high = len(L)
	low = 0
	while low < high: #Tempo logaritmico
		med = (low + high) // 2
		if el < L[med]:
			high = med
		else:
			low = med + 1
	L.insert(high, el) #Tempo lineare che sovrasta quello lineare
	return L 

L = [10, 20, 30]
```
In sintesi, non tutti gli algoritmi si equivalgono e non tutti sono efficienti allo stesso modo.

**Definizione di Funzione Ricorsiva**: È una funzione che nel corpo richiami sé stessa. (per esempio $n!$) 

Esempio:
```py
def lung(L):
	res = 0
	for e in L:
		res += 1
	return res

def lr(L):
	if L == []:
		return 0
	else: 
		return 1 + lr(L[1:]) #Chiamata a funzione stessa
```

Sempre sullo stesso fattoriale:
```py
def fact(n):
	if n == 0:
		return 1
	else: 
		return n*fact(n-1) #Chiamata a funzione stessa
```

![[Drawing 2023-03-21 15.50.14.excalidraw]]

In generale mi servono due ingredienti affinché funzioni:
- Un caos base nella quale non vi sono chiamate ricorsive;
- Casi ricorsivi (L'importante è che la sequenza di chiamate si avvicini al caso base)

Affinché il tutto abbia senso, ogni elemento deve eventualmente capitare nel caso base, tutto questo spetta al programmatore.

La Ricorsione come l'Iterazione esprimono una ripetizione.

Esempio Iterazione:
```py
n = 10
for i in range(n): #(1, 2, 3) condensati
	print(i)
```
Abbiamo corpo dell'iterazione (1), modo per passare da una iterazione alla seguente (2) e abbiamo un criterio di terminazione (3).

Lo stesso succederebbe se scrivessimo con la iterazione indeterminata:
```py
i = 0
n = 10
while i < n:   #(3)
	print(i)   #(1)
	i += 1     #(2) 
```

Lo si può fare anche con la ricorsione:
```py
def rip_s(n):
	if x == 10:     #(3)
		return
	else: 
		print(x)    #(1)
		rip_s(x+1)  #(2)
```
Non c'è un secondo $\text{return}$ perché ci interessano soltanto gli effetti collaterali, ossia che stampi qualcosa e basta.
*Metterlo concettualmente è sbagliato, anche perché restituirebbe $\text{None}$*

*Sono modi diversi ma sono del tutto analoghi*:
1. Abbiamo quello che vogliamo ripetere: $\text{print(x)}$
2. Abbiamo come passare da un caso al successivo: il caso ricorsivo $\text{rip\_s(x+1)}$
3. Abbiamo una condizione di terminazione chiamato caso base: $\text{if x == 10: return}$

I due modi, dal punto di vista, sono effettivamente equivalenti.

Supponiamo di avere una funzione che si può calcolare solo con il $\text{while}$, allora la si può scrivere con un modo ricorsivo e viceversa (Ricorsione $\Leftrightarrow \text{while}$)
Tuttavia ci sono anche dei casi in cui una forma è più intuitiva e semplice dell'altra (Con alcuni algoritmi)

Algoritmo di Euclide (Ricorsivo):
```py
def MCDr(a, b):
	if b == 0:
		return a
	MCDr(a, a%b)
```

Test di Palindromicità (Esercizio di un laboratorio):
```py
def pali(s): #Senza ricorsività
	return s == s[::-1]

def palr(s): #Con ricorsività
	if len(s) <= 1:   #Caso base con sequenze lunghe 0/1 caratteri
		return True
	if s[0] != s[1]:
		return False
	return palr(s[1:-1])
```

Funzione Fibonacci: ($f_0= 0,\; f_1 = 1 \Rightarrow f_{n+1}=f_n+f_{n-1}$)
```py
def fib(n): #n >= 0 #Ricorsiva e più lenta
	if n < 2:
		return n
	return fib(n-1) + fib(n-2)

def fibi(n): #Iterativa e più veloce
	if n < 2:
		return n
	a, b = 1, 0
	while n > 1:
		a, b = a + b, a
		n -= 1
	return a
```

Perché è così inefficiente? Proviamo con $\text{fib(6)}$
![[Drawing 2023-03-23 10.21.51.excalidraw]]
In questo modo non faccio altro che creare un albero binario che mi va a calcolare tantissime funzioni per niente, in quanto la macchina Python non si rende conto che va a calcolare cose che ha già calcolato.

È possibile quindi fare una funzione ricorsiva senza dover fare il "pastrocchio" della funzione prima:
```py
def fibc(n):
	#Restituisce la coppia fib(n) e fib(n-1)
	if n < 2:
		return n, 0
	a, b == fibc(n-1)
	return a + b, a
```

Ricerca lineare (Ricorsiva):
```py
def ricli(S, e):           #Fatto in maniera Iterativa
	for i in S:    
		if x == e:
			return True
	return False

def ricl(S, e):            #Fatto in maniera Ricorsiva
	'Ricerca lineare di e nella sequenza S'
	if len(S) == 0:
		return False
	if S[0] == e:
		return True
	return ricl(S[1:], e)
```
La stessa funzione ma vogliamo l'indice:
```py
#Fatto in modo Iterativo

def ricli(S, e):            
	for i in range(len(S)):
		if S[i] == e:
			return i
	return -1

#Fatto in modo Ricorsivo

def ricl_aux(S, e:    
	'Ricerca lineare di e nella sequenza S'
	if len(S) == 0:
		return False, -1
	if S[0] == e:
		return True, i
	return ricl_aux(S[1:], e, i+1)

def ricl(S, e):
	return ricl(S, e, 0)

#Oppure

def ricl(S, e):
	'Ricerca lineare di e nella sequenza S'
	
	def ricl_aux(S, e, i = 0):    
		if len(S) == 0:
			return False, -1
		if S[0] == e:
			return True, i
		return ricl_aux(S[1:], e, i+1)
	
	return ricl(S, e, 0)
```
Così definisco una funzione locale solo per $\text{ricl(S, e)}$.
Oppure sfruttando una cosa non ancora vista:
```py
def ricl2(S, e, i = 0): #Sto definendo un parametro default.
	#Quindi posso chiamare la funzione con 2 parametri in quanto me lo mette da solo a 0
	if len(S) == 0:
		return False, -1
	if S[0] == e:
		return True, i
	return ricl2(S[1:], e, i+1)

#Oppure partendo dal fondo

def riclf(S, e):
	'Ricerca lineare di e nella sequenza S'
	if len(S) == 0:
		return -1
	if S[-1] == e:
		return len(S)-1
	return ricl_aux(S[:-1], e)
```

Abbiamo appena visto 5 modi diversi (di cui 4 ricorsivi) per far vedere che ci sono diverse scuole di pensiero. Tutto questo per imparare a fare le stesse cose in maniere diversi, disastrose o eleganti.

Esercizi:
1. Funzione ricorsiva che restituisce una copia rovesciata di una lista $\text{L}\rightarrow\text{L[:-1]}$
2. Funzione ricorsiva che modifica "in place" una lista $\text{L}$ (la rovescia)

Soluzione:
```py
def rev(L):
	'Restituisce una copia di L rovesciata in maniera ricorsiva'
	if len(L) <= 1:
		return L[::]
	return rev(L[1:])+[L[0]] #Potevo fare anche return [L[-1]]+rev([:-1])

def rev2(L):
	if len(L) <= 1:
		return L[::]
	return [L[-1]]+rev(L[1:-1])+[L[0]] #Esattamente come con le parole Palindrome
```
```py
def revip(L):
	'Fa la stessa cosa come prima ma "in place"'
	
	def aux(W, l, h):
		'Fa tutto il lavoro tra l e h-1'
		if h - l <= 1:
			return None #Non devo fare niente
		W[l], W[h-1] = W[h-1], W[l]
		aux(W, l+1, h-1)
	
	aux(L, 0, len(L))
```

Si può fare anche la ricerca binaria con la ricorsione (infatti è uno di quelli che si presta meglio per la ricorsione):
```py
def ric_bin_r(S, el):
	if len(S) == 0:
		return False
	if len(S) == 1:
		return S[0] == el
	
	med = len(S) // 2
	
	if S[med] == el:
		return True
	if el < S[med]:
		return ric_bin_r(S[:med], el)       #high = med
	else:                                   #el > S[med]
		return ric_bin_r(S[:med + 1], el)   #low = med + 1
```

***