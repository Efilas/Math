---
tag: Mate, Info
---
## Cuore del Linguaggio

Concetti di Oggetti e Classi.
Tutto quello che abbiamo visto non sono altro che manifestazioni di Oggetti / Classi.
Ogni valore viene con il suo tipo $\text{Type}$. Ogni oggetto è di una certa classe e il tipo ci dice la struttura dell'elemento
Abbiamo le classi che qualcuno ha definito per noi che stabiliscono le strutture, i metodi e le operazioni.

Gli oggetti di una classe vengono chiamati **Istanze**, mentre le **Classi** ci definiscono i metodi comuni, le operazioni comuni eccetera per le istanze. Ma se qualcuno ha fatto qualcosa per noi, allora lo possiamo creare anche noi (Ossia il programmatore può definire lui stesso delle certe classi, definendo struttura comune, operazioni e metodi di quella classe)

Lo facciamo con un esempio:

```py
'''Una classe per i Punti Cartesiano
- Avrà due informazioni x e y 
- un punto è creato sull'origine 
- whoareyou: metodo che restituisce le coordinate x e y
- move(delta): metodo che sposta il punto di delta su entrambi gli assi'''

class Point:
	def __init__(self, xx, yy):       #Dunderinit #Crea la classe con i due punti
		self.x = xx
		self.y = yy
	def whoareyou(self):
		return self.x, self.y #Metodo che su una istanza restituisce il valori di x e di y
	def move(self, delta):
		self.x += delta
		self.y += delta

[SHELL]
>>> Point()
#Quello che restituisce è la conferma della creazione di una istanza con x = 0 e y = 0
>>> p = Point()
>>> p.whoareyou()
(0, 0)
>>> p.move(10)
>>> p.whoareyou()
(10, 10) #Sempre stesso oggetto ma ha cambiato l'informazione che contiene
>>> q = Point()
>>> q.whoareyou()
(0, 0)
>>> p.whoareyou
(10, 10)
```

I metodi di tipo $\text{\_\_init\_\_}$ sono nomi particolari che determinano cose particolari
$\text{\_\_init\_\_}$ questo metodo stabilisce la struttura comune di tutte le istanze.
Questo metodo ha parametro $\text{self}$ che è l'oggetto che viene creato (in realtà quando creo un oggetto dandogli il nome, viene evocato $\text{\_\_init\_\_}$ su $\text{self}$) 
Usando $\text{self.x}$ indica che nella creazione di tale classe viene creato l'Attributo $x$, ossia $x$ e $y$ sono istanze di $\text{Point}$
Quando creiamo $q$ di classe $\text{Point}$, $q$ ha il suo attributo con un suo valore (ma comunque necessariamente presente in $\text{\_\_init\_\_}$, in quanto stabilisce la struttura della classe)
Se non metto $\text{self.<qualcosa>}$, quel valore viene perso, perché resta comunque una funzione e il valore viene salvato localmente

Il corpo della classe può avere sia comandi che definizioni di metodi, ma sono puramente opzionali
Per le istanze dobbiamo usare il nome come costruttore.

**Produrre istanze di una classe**: 
Sia $\text{class nomeC}$. Se prendiamo $\text{nomeC()}$ crea un'istanza della classe $\text{nomeC}$, mediante un'invocazione del metodo $\text{\_\_init\_\_}$ sull'istanza che viene creata _(esempio precedente)_. 
Creare istanza = la macchina riserva dello spazio per quell'oggetto e assegna la struttura data dalla definizione della classe (nell'esempio le coordinate $x,y$)
Quando un metodo definito come: $\text{def met(self, }x_1, ..., x_n)$ è invocato su un oggetto $\text{obj}$, ossia $\text{obj.met(}v_1 ,..., v_n)$ 
La struttura delle istanze di una classe è descritta nel metodo $\text{\_\_init\_\_}$ se questo esiste (infatti non è obbligatorio)
Nel metodo $\text{\_\_init\_\_}$ creiamo gli attributi della classe.

A volte però il metodo $\text{\_\_init\_\_}$ potrebbe non esserci
```py
class Vuoto
	pass
```
La più semplice delle classi. È una classe che molto raramente viene utilizzata.
Ma posso comunque istanziare la classe vuota.
```py
class Vuoto
	pass

[SHELL]
>>> a = Vuoto()
>>> type(a)
<class '__main__.Vuoto'>
>>> v
<__main__.Vuoto at (id)>
>>> v.test = 100
>>> v 
100
>>> z = Vuoto()
```
Nel comando $\text{v.test = 100}$ assegno io l'attributo $\text{test}$ solo su $v$, ma non su $z$. Infatti la struttura interna sarà:
![[Drawing 2023-04-13 09.33.42.excalidraw]]

È possibile ottenere le funzioni passando per il "nome completo" della funzione:
Riprendendo l'esempio della classe $\text{Point}$:
```py
>>> Point.whoareyou
<function Point.whorareyou at ...>
>>> p = Point()
>>> p.whoareyou()
(0, 0)
>>> Point.whoareyou(p)
(0, 0)
```

_A che serve tutto ciò? Perché mettere due modi per far la stessa cosa?_

```py
class A:
	def __init__(self):
		self.x = 0
	def move(self):
		self.x += 100

class B:
	def __init__(self):
		self.x = 0
	def move(self):
		self.x += 10000

x = input()

if x == 'A':
	inst = A()
else: 
	inst = B()
inst.move()             
```
Con quest'ultima linea non sappiamo quale .move sarà eseguito. Con i metodi fa sì che la cosa sia molto più fluida
In caso contrario dovremmo mettere il metodo all'interno dell'$\text{if}$ (è lo stesso principio di $\text{a+b}$, di cui non sappiamo il tipo)

Questa si chiama **Selezione Dinamica dei Metodi** (cosa più importante di un linguaggio orientato agli oggetti)

Con le funzioni, ogni funzione fa la stessa cosa. Con i metodi, più metodi possono avere più nomi e quindi sono intercambiabili e possiamo sapere quale metodo viene utilizzato con lo stesso nome **solo all'esecuzione**, ossia non è possibile staticamente (guardando il codice) che tipo di metodo è.

Esercizio Guidato:
Una classe per rettangoli con il punto in basso a sinistra, la base e l'altezza, con tre metodi che restituisce l'area del rettangolo, uno che muove il rettangolo e il terzo che restituisce l'angolo in alto a destra:
```py
class Point:
	def __init__(self, xx = 0, yy = 0):
		self.x = xx
		self.y = yy
	def whoareyou(self):
		return self.x, self.y 
	def move(self, delta):
		self.x += delta
		self.y += delta

class Rect:
	def __init__(self, c, b, h):
		self.cornerSW = c
		self.base = b
		self.height = h
	def area(self):
		return self.base * self.hegiht
	def move(self, delta):
		self.cornerSW.move(delta) #Metodo move di Point
	def cornerNE(self):
		return Point(self.cornerSW.x + self.base, self.cornerSW.y + self.height)

[SHELL]
>>> p = Point(2, 3)
>>> r = Rect(p, 4, 1)
>>> r.area()
4
>>> r.cornerNE().whoareyou()
(6, 4)
```

 Supponiamo io voglia estendere la classe $\text{Point}$ con la somma di due punti:
```py
class Point:
	def __init__(self, xx = 0, yy = 0):
		self.x = xx
		self.y = yy
	def whoareyou(self):
		return self.x, self.y 
	def move(self, delta):
		self.x += delta
	def somma(self, other)
	return Point(self.x + other.x, self.y + other.y)

[SHELL]
>>> p = Point(2, 1)
>>> q = Point(4, 4)
>>> r = p.somma(q)
>>> r.whoareyou()
(6, 5)
>>> print(p)
<restituisce il fatto che p è di classe Point>
```
Però mi da errore fare $\text{q + p}$
Si può fare attraverso un metodo magico ossia attraverso $\text{\_\_add\_\_}$
Se facessi $\text{print(p)}$ mi ritorna soltanto che $p$ è un punto, ma si può usare $\text{\_\_str\_\_}$
```py
class Point:
	def __init__(self, xx = 0, yy = 0):
		self.x = xx
		self.y = yy
	def whoareyou(self):
		return self.x, self.y 
	def move(self, delta):
		self.x += delta
	def __add__(self, other)
		return Point(self.x + other.x, self.y + other.y)
	def __str__(self):
		return 'P(' + str(self.x) + ', ' + str(self.y) + ')'

[SHELL]
>>> p = Point(2, 1)
>>> q = Point(4, 4)
>>> r = p + q
>>> r.whoareyou()
(6, 5)
>>> r = p.__add__(q)
>>> r.whoareyou()
(6, 5)
>>> print(p)
P(2, 1)
>>> q = Point(4, 4)
>>> p is q
False
>>> p == q
False
```
Ponendo l'uguaglianza tra istanze, fino a prova contraria da sempre falso, perché la macchina Python a priori non sa se indica la stessa cosa.
Si può cambiare la definizione di $==$ attraverso il metodo $\text{\_\_eq\_\_}$
```py
class Point:
	def __init__(self, xx = 0, yy = 0):
		self.x = xx
		self.y = yy
	def whoareyou(self):
		return self.x, self.y 
	def move(self, delta):
		self.x += delta
	def __add__(self, other)
		return Point(self.x + other.x, self.y + other.y)
	def __str__(self):
		return 'P(' + str(self.x) + ', ' + str(self.y) + ')'
	def __eq__(self, other): 
		return self.x == other.x and self.y == other.y

[SHELL]
>>> p = Point(4, 4)
>>> q = Point(4, 4)
>>> p == q
True
```

I metodi magici sono tutti i metodi con $\_\_\text{<nome>}\_\_$  che vengono chiamati in alcune circostanze.
È quello che avviene in automatico.

Poi ci sono altri metodi magici che si possono trovare sulla documentazione ufficiale

**Attributi Privati**:
Esempio:
```py
from random import randint

class Coin:
	def __init__(self):
		self.face = 'H'
	def toss(self)
		if randint(0, 1) == 0:
			self.face = 'H'
		else: 
			self.face = 'T'
		return self.face

[SHELL]
>>> c.__face
'H'
  ```
Restituisce a volte testa o a volte croce:
Con il comando $\text{moneta.face = 'H'}$ ottengo sempre Testa, modificandolo da fuori.
Però posso cercare di segnalare che un attributo da fuori sarebbe meglio da non cambiare:
Posso cambiare il nome da $\text{face}$ a $\text{\_\_face}$ 
```py
from random import randint

class Coin:
	def __init__(self):
		self.__face = 'H'
	def toss(self)
		if randint(0, 1) == 0:
			self.__face = 'H'
		else: 
			self.__face = 'T'
		return self.__face

[SHELL]
>>> c.__face
<Coin has no attribute called face>
```
Dall'esterno apparentemente non c'è.

Gli attributi privati servono per nascondere dall'esterno gli attributi che non vogliamo vengano modificati.
È una cosa puramente metodologica, ma può essere trovato all'esterno con $\text{\_Coin\_\_c}$
```py
from random import randint

class Coin:
	def __init__(self):
		self.__face = 'H'
	def toss(self)
		if randint(0, 1) == 0:
			self.__face = 'H'
		else: 
			self.__face = 'T'
		return self.__face

[SHELL]
>>> c.__face
<Coin has no attribute called face>
>>> _Coin__c
'H'
```
Quest'operazione si chiama **Name Mangling** (letteralmente storpiatura del nome).
_Questo perché siamo tutti adulti consenzienti: una cosa non dovrebbe essere fatta, ma se è necessaria..._

Gli attributi possono essere attributi di classe o di istanza.
Gli attributi di classe sono gli stessi per ogni istanza
```py
class Stud:
	Uni = 'Bologna' #Attributo della classe, non dell'istanza
	def __init__(self):
		self.n = nome
	def __str__(self):
		return 'Studente: ' + self.nome + ' di ' + Stud.Uni

[SHELL]
>>> s = Stud('Maria')
>>> print(s)
Studente: Maria di Bologna
```
Il nome è legato alla classe e non alle diverse istanze
Se nell'esempio volessi fare più università ($\text{Uni}$ nell'esempio) devo o creare una nuova classe o non usare $Uni$ come attributo di classe.

```py
class Point:
	x_creazione = 0        #Attributo di istanza
	y_creazione = 0
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta

[SHELL]
>>> p = Point()
>>> q = Point(8, 9)
```
![[Drawing 2023-04-17 14.21.32.excalidraw]]

Voglio definire una nuova classe con un metodo che riporta all'origine

```py
class Point:
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta

class NewPoint:
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta
	def origin(self):
		self.x, self.y = 0

[SHELL]
>>> np = NewPoint(8, 9)
>>> np.x
8
>>> np.y
9
>>> np.origin
>>> np.x
0
>>> np.y
0
```

Il fatto che $\text{NewPoint}$ sia $\text{Point}$ più un qualcosa è detto solo a parole. Infatti sembra qualcosa direttamente di nuovo. 
"Leggendolo" si può vedere che sono la stessa cosa, ma la cosa migliore è farlo direttamente in maniera più concisa (Non solo come chiarezza del programma ma anche come manutenzione del programma). 
*Del tipo, supponiamo vogliamo cambiare la $move$ di $Point$, bisogna fare la modifica due volte, anche in $NewPoint$, ma non sempre è sicuro e diventa ingestibile quando si hanno numerose classi*. 
Proprio per questo motivo ci sono le sottoclassi:

```py
class Point:
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta

class NewPoint(Point):  #Definizione della sottoclasse
	def origin(self):
		self.x, self.y = 0
```

In questo modo quello che succede è che in $\text{NewPoint}$ vengono copiate (eredita) tutte le informazioni di $\text{Point}$ più un nuovo metodo ($\text{.origin}$). Possiamo dire che $\text{NewPoint}$ è la derivata di $\text{Point}$, che è definita anche come la base di $\text{NewPoint}$

**De. inizione di Sottoclasse**: È una classe che eredita ($\text{inherits}$) dalla sua sovraclasse i suoi attributi e i suoi metodi che non ridefinisce ($\text{overrights}$)

_Ma se invece volessi modificare?_

```py
class Point:
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta

class NewPoint(Point):
	def origin(self):
		self.x, self.y = 0
	def move(self, delta):
		self.x = 100
		self.y = 100
```

Altro esempio:

```py
class A:
	def __init__(self):
		self.x = 100

class B(A):
	def f(self):
		return self.x

class C(B):
	def g(self):
		self.x = 0
```

![[Drawing 2023-04-17 14.47.56.excalidraw]]

Tutti i metodi a partire da $A$ vengono ereditati su $C$ (seguendo la gerarchia delle classi) e termina sulla classe più alta e viene chiamata $\text{object}$ 

La nozione di sottoclasse estende la nozione di tipo, infatti riprendendo l'esempio precedente si ha che:
```py
[SHELL]
>>> c = C(1, 2)
>>> type(C)
<class '__main__.C'>
```

Ma è anche istanza di $B$ che a sua volta è istanza anche di $A$ (il tipo è fissato alla creazione dell'oggetto)

```py
[SHELL]
>>> c = C(1, 2)
>>> type(C)
<class '__main__.C'>
>>> isistance(c, C) #c è una istanza di C?
True
>>> isistance(c, B) #c è una istanza di B?
True
>>> isistance(c, A) #c è una istanza di A?
True
>>> isistance(c, object) #c è una istanza di object?
True
```

Tutte le cose sono istanze di $\text{object}$ 

```py
class Point:
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta

class NewPoint(Point):
	def origin(self):
		self.x, self.y = 0
	def move(self, delta):
		self.x = 100
		self.y = 100
```

La selezione del $\text{move}$ è stabilita principalmente e solamente dalla classe dell'elemento.
Questa si chiama **Selezione dinamica di metodi - Dinamic Method Lookup**

```py
class Point:
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta

def CPoint(Point):
	def __init__(self, xx, yy, cc):
		self.x = xx
		self.y = yy
		self.c = cc
```

Non è scritto nel migliore dei modi in quanto ho riscritto tutto il metodo $\text{\_\_init\_\_}$ della classe $\text{Point}$
La cosa migliore sarebbe prima inizializzare l'$\text{\_\_init\_\_}$ di $\text{Point}$ e poi aggiungere la parte nuova:

```py
class Point:
	def __init__(self, xx = x_creazione, yy = y_creazione):
		self.x = xx
		self.y = yy
	def move(self, delta):
		self.x, self.y = self.x + delta, self.y + delta

def CPoint(Point):
	def __init__(self, xx, yy, cc):
		super().__init__(xx, yy)  #Questa linea di codice serve per chiaramre l'__init__ di Point
		self.c = cc
```
$\text{super()}$ serve per prendere il metodo della sovraclasse immediata.

Se $B$ è sottoclasse immediata di $A$, dentro $B$ $\text{super()}$ è $\text{self}$ visto in $A$

Altro esempio:

```py
class A:
	def __init__(self, x):
		self.aa = x
	def m1(self):
		return self.aa

class B(A):
	def m1(self):
		return super().m1() + 1
	def m2(self, x):
		return self.aa + x

class C(B):
	def m2(self, z):
		return self.aa + 2 * Z

a = A(10)
print(a.m1())
b = B(10)
print(b.m1())
d = C(20)
print(d.m1())
print(d.m2(3))
```

![[Drawing 2023-04-17 15.42.31.excalidraw]]

Un altro esempio:
```py
class E:
	def __init__(self, y):
		self.ee = y
	def f(self):
		return self.ee
	def g(self):
		return self.f()
class F(E):
	def f(self):
		return 100

[SHELL]
>>> z = F(20)
>>> y = E(20)
>>> y.g()
20
>>> z.g()
100
```
![[Drawing 2023-04-17 15.51.25.excalidraw]]

È possibile anche fare:

```py
class E:
	def __init__(self, y):
		self.ee = y
	def g(self):
		return self.f()
class F(E):
	def f(self):
		return 100

[SHELL]
>>> z.F(20)
>>> z.g()
100
>>> y.E(20)
>>> y.g()
<Errore>
```

Questo è il meccanismo di Delega (ossia, qualche sottoclasse di una sottoclasse definirà un metodo).
In questo caso $\text{g}$ in $E$ delega $F$, $F$ è definita come sottoclasse astratte

L'utilizzo della scrittura $\text{<istanza>.<attributo>}$ si chiama **Dot Notation**
****