---
tag: Mate, Info
---
## Struttura della Comprehension

Viene utilizzata nella teoria degli insiemi

Esempio:
	$\{i \in [0,100]\; | \;\underbrace{ i \%2 == 0}_{\text{Predicato}}\}$ 

Tutto questo serve per la compressione e serve per la logica

Python da a disposizione una tecnica simile:

```py
'''Costruisco la lista degli int pari tra 0 e 100'''
res = []
for i in range(0, 101):
	if i % 2 == 0:
		res.append(i)
```

Questo è il modo standard semplice

Con la comprehension si può scrivere:
```py
ress == [i for i in range(0, 101) if i%2 == 0]
```

Questa teoria viene chiama $\text{List Comprehension}$ perché riprende molto dalla $\text{Set Comprehension}$ della matematica

```py
resss = [j for j in range(0, 101, 2)]
```

Sono tutti esattamente la stessa cosa
Per fare un confronto:

Esercizio: Scrivi una funzione $\text{foo(f, n, k)}$ che data una funzione di interi $f$ e due interi $n$ e $k$ restituisce il grafico di $f$ tra $n$ e $k$ come lista di coppie
Sia $\text{succ}$ la funzione successore, $\text{foo(succ, 1, 5)}$ deve restituire $\text{[(1, 2), (2, 3), (3, 4), (4, 5), (5, 6)]}$ 

```py
def foo(f, n k):
	return [(i, f(i)) for in range (n, k+1)]

def succ(k):
	return k + 1

[SHELL]
>>> foo(succ, 1, 5)
[(1, 2), (2, 3), (3, 4), (4, 5), (5, 6)]
```

$\text{foo}$ si chiama funzione di ordine superiore in quanto da come risultato un'altra funzione
$\text{foo}$ è applicabile a qualsiasi funzione

Nel metodo al quale eravamo abituati diventa:

```py
def foo(f, n, k):
	res = []
	for i in range(n, k + 1):
		res.append((i, f(i)))
	return res
```

La definizione generale è estremamente variabile ma quella più semplice è: $$\text{[ espressione}\; for\; \text{nome}\; in\; \text{sequenza}\;]$$Il nome $k$ non può più essere utilizzato in quanto è una variabile locale

Poi si può anche potenziare, ossia non solo tutti i valori della sequenza, ma devono soddisfare una certa condizione, ossia implementando un $\text{if}$ 
Volendo posso mettere non solo $\text{if}$ (anche più di uno) ma anche altri $\text{for}$ 

Esempio: Lista delle coppie $(i, j)$ con $i$ e $j$ tra $n$ e $k$ con $i$ quadrato perfetto e $j$ dispari
```py
n = 2
k = 20
R = [(i**2, j) for i in range(n, k + 1) for j in range(m, k + 1) if j % 2 == 1 if i**2 <= k]

[SHELL]
>>> R
[Lista di coppie con i = 4, 9, 16 e j = 3, 5, 7, 9, 11, 13, 15, 17, 19]
```

Quicksort:
```py
def quicksort(L):
	if len(L) < 2:
		return L
	pivot = L[0]
		return quicksort([x for x in L if x < pivot]) + [pivot] + quicksort([x for x in L if x >= 
									pivot])
```

La si può utilizzare anche su diverse strutture logiche:
Per esempio un dizionario in cui i valori sono i quadrati delle chiavi:
```py
D = {i : i**2 for i in range(21)}
```

Non si può fare le stesse cose con le tuple

```py
>>> T = (i**2 for in range(11))
>>> T
<generator object> #Generatore
>>> tuple(T)
(0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100)
>>> tuple(T)
()
```

List Comprehension: Lista di determinati valori che rispettano una condizione
```py
>>> Q = [i**2 for i in range(10)]
>>> Q
[1, 4, 9, 16, 25, 36, 49, 64, 81]
```

Poi si possono mettere anche delle condizioni:

```py
>>> Q = [i**2 for i in range(10) if i % 2 == 0]
>>> Q
[4, 16, 36, 64]
```

Altri esempi:

```py
def inentrambe(W1, W2):
	'Restituisce una lista con gli elementi in comune'
	res = []
	for i in W1:
		if i in W2:
			res.append(i)
	return res

def inentrambe2(W1, W2):
	'Restituisce una lista con gli elementi in comune'
	res [e for e in W1 if e in W2]
```

```py
def primi(n):
	return [k for k in range(2, n + 1) if len([i for i in range(2, k - 1) if k % i == 1]) == 0]

def primi(2):
	return [k for k in range(2, n + 1) if all([k % i != 0 for i in range(2, k-1)])]
```

La funzione $\text{all}$ sopra usata restituisce $\text{True}$ se tutti gli elementi sono $\text{True}$

Bisogna però non abusarne in maniera da rendere il codice illeggibile (e quindi difficile da correggere):

Esempio di abuso:
```py
def inentrambe(W1, W2):
	'Restituisce una lista con gli elementi in comune'
	res = []
	for i in W1:
		if i in W2:
			if i not in res:
				res.append(i)
	return res

def inentrambe2(W1, W2):
	return [e for e in W1 if e in W2 if not in this list] 
	#NO
	#Anche se fosse scritto bene, restituirebbe None, cioè niente

def inentrambe(W1, W2):
	res = []
	[res.append() for e in W1 if e in W2 if e not in res]
	return res
```

Esiste una cosa simile anche per i dizionari:
```py
>>> D = {i : i**2 for i in range(10)} 
>>> D
{0:0, 1:1, 2:4, 3:9, [...]}
```

Ma non con le tuple, infatti è un generatore.

```py
>>> Q = (i : i**2 for i in range(10))
>>> Q
(1, 4, 9, 16, ...)
>>> Q
(0, 0, 0, 0, ...)
```

Se lo trasformassi in una lisa, ottengo una lista con i quadrati
Ma posso farlo una volta, dopo mi da una lista vuota

Un $\text{Generatore}$ è una sequenza in potenza, che può generare ciò che gli chiediamo
Esiste una funzione che si chiama $\text{next}$ che mi restituisce il primo (poi i successivi uno alla volta) di un generatore

Non ci sono modi per tornare a quello precedente, solo al successivo con next.
Da un'eccezione se dopo l'ultimo elemento non non ci sono altri elementi $\text{< StopIteration >}$
I generatori sono coinvolti nell'interazione con $\text{for}$ 

Se provassi a fare una lista con un generatore finito ottengo una lista vuota $[\; ]$ e se facessi un print di tutti gli elementi della sequenza, non stampo niente

Convertire un generatore in una tupla significa svuotare il generatore con la funzione $\text{next}$, e di conseguenza diventa un generatore esaurito.

```py
>>> H = (i for i in range(10**200))
>>> next(H)
0
>>> next(H)
1
#Eccetera
```

Non si può utilizzare un indice per avere un determinato lavoro

Si può usare un generatore per fare delle operazioni.

```py
>>> sum([e for e in range(6)]) #Direttamene con una lista
15
>>> from math import prod
>>> prod([e for e in range(1, 6)])
120
>>> sum(e for e in range(6)) #Direttamente con il generatore in potenza, non lista
```

Un generatore non è altro che una variante di una definizione di funzione

```py
G = (i**2 for i in range(10)) #Forma Implicita

def Gen():
	for i in range(10): #Forma Esplicita
		yield i**2
```

$\text{yield}$ non è altro che un $\text{return}$ particolare

La funzione restituisce un generatore. Se io facessi:
```py
>>> G = Gen()
```

Chiamo $G$ il generatore dato dalla funzione

La funzione fatta in questo modo non esegue il corpo, ma restituisce un generatore che può essere chiamato da $\text{next}$, cioè, come valore del generatore c'è l'elemento del generatore

**Ma**, mentre $\text{return}$ distrugge il frame su cui si stava lavorando, $\text{yield}$ no, anzi si ricorda degli indici degli elementi e a quali elementi erano associati.

Altro generatore:
```py
def Prova(x):
	h = 0
	while x <= x:
		if h % 2 == 0:
			yield h
		print('Pippo')
		yield h
		h += 1
```

So che questa funzione restituisce un generatore perché c'è un $\text{yield}$ nel corpo e non esegue i comandi nel corpo

```py
>>> P = Prova(6)
>>> next(P)
0
>>>
```
![[Drawing 2023-05-09 15.27.41.excalidraw]]

Ogni volta che viene fatto un $\text{next}$ viene sospesa la definizione della funzione.

```py
>>> next(P)
'Pippo'
0
>>> next(P)
'Pippo'
1
>>> next(P)
2 
>>> next(P)
'Pippo'
2
>>>
```

```py
def Omega():
	i = 1
	while True:
		yield i**2
		i += 1

[SHELL]
>>> Q = Omega()
>>> next(Q)
0
>>> next(Q)
1
>>> next(Q)
4
>>> 
```
Generatori utili per creare dei flussi potenzialmente infiniti di oggetti, chiamati $\text{Stream}$ 

****