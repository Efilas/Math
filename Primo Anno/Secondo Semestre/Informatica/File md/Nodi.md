---
tag: Mate, Info
---
## Nodi

**Definizione di Grafo**: Un grafo è una coppia $G = (V, E)$ dove $V$ è un insieme arbitrario, chiamato **Insieme dei Vertici o dei nodi** e $E\subseteq V\times V$, chiamati **Archi** (visti che risultati del prodotto cartesiano - coppie unite). $G$ è finito $\Leftrightarrow E$ e $V$ sono insiemi finiti.
Se la relazione è simmetrica, il grafo si chiama "Grafo non orientato". Altrimenti si chiama "Orientato" o "Diretto"
![[Drawing 2023-04-21 11.43.32.excalidraw]]
$V = \{A, B, C, D, E, F\}$
$E = \{(A,B), (B,F), (B,C), (A,F), (C,E), (C,D), (E,F)\}$

Un grafo è echitettato quando ci sono due funzioni $lab_V: V \rightarrow D_1$ e $lab_E: E \rightarrow D_2$

**Definizione di Cammino**: Un cammino in $G = (V,E)$ è una sequenza di vertici $v_1,v_2,...,v_n$ tale che $\exists v_i, v_{i+1}\in E$ 
Un ciclo è un cammino $v_1,...,v_n$ con $v_1=v_n$ senza né archi né nodi ripetuti

Nell'esempio sopra non ci sono cicli
In questo appena sotto si:
![[Drawing 2023-04-21 11.43.32.excalidraw 1]]

**Definizione di Connesso**: Un grafo è connesso $\Leftrightarrow \forall v_1, v_2 \in V, \exists$ cammino da $v_1$ a $v_2$

Questi due sopra sono connessi, mentre questo appena sotto no
![[Drawing 2023-04-21 11.43.32.excalidraw 1 1]]

La teoria dei grafi è molto importante soprattutto per la teoria degli algoritmi, del tipo "dato un cammino, ci sono cammini in cui i punti vengono toccati una volta soltanto? E se ci sono, quale è quella con lunghezza minima?" A questi problemi abbiamo risposte solamente all'ordine esponenziale (esponenziale al numero di nodi)

**Definizione di Albero (per matematica discreta)**: Un albero è un grafo non orientato, connesso e senza cicli
Si dice che è radicato quando un suo vertice è scelto come nodo distinto che viene chiamato radice.

![[Drawing 2023-04-21 12.16.31.excalidraw]]
Che diventerà (scritto in Latex):
$$C\rightarrow \begin{cases}A \rightarrow B\\ D\\ F \rightarrow \begin{cases} E\\ G\end{cases}\\ H\rightarrow \begin{cases}P\rightarrow \begin{cases}Q\\ O\end{cases} \\ N\rightarrow \begin{cases}Z\\ R\rightarrow \begin{cases}M\\ L\\ I\end{cases}\end{cases}\end{cases}\end{cases}$$
Qui si mischiano linguaggi di botanica e genealogia. Dato un nodo quello prima viene chiamato "padre" e quello dopo "figlio". Se dopo un nodo non c'è un figlio, allora viene chiamato "Foglia".
Dopo aver fissato una radice la genealogia viene naturale.
Una volta scelta una radice, tutti i nodi rappresentano radici di sottoalberi

**Definizione di Ordinato**: Un albero è ordinato se per ogni vertice $v$ i figli di $v$ sono un insieme ordinato

**Definizione di Albero Binario**: Un albero si dice binario se è radicato, ordinato e ogni vertice ha al più due figli, chiamati "Figlio Sinistro" (o primo figlio) e "Figlio Destro" (o secondo FIglio)
*Destro o sinistro se scritto in latex va guardato come ruotato, cioè a in basso = a sinistra e viceversa*.

![[Drawing 2023-04-21 12.30.48.excalidraw]]

**Definizione di Profondità di un nodo**: Si chiama profondità di un nodo $v$ il numero di archi da $v$ alla radice
**Definizione di Altezza di un nodo**: Si chiama altezza di un nodo $v$ è il numero di archi da $v$ alla foglia più profonda (altezza del sottoalbero con vertice $v$). L'altezza della radice prende anche il nome di **Altezza dell'Albero**. 

**Definizione Ricorsiva di Albero Binario**: Un albero binario è: 
	- l'albero vuoto
	- $(v, t_1, t_2)$ dove $v$ è un nodo che chiamo $\text{radice}$, $t_1$ è l'albero binario chiamato $\text{figlio sinistro}$ e $t_2$ è un albero binario chiamato $\text{figlio destro}$.
Una $\text{foglia}$ è un albero binario dove entrambi i figli sono l'albero vuoto.

Esempio:
	Chiamo $av$ è un albero binario vuoto ($av \in AB$)
	Ho che $d=(D, av, av) \in AB$ e in modo analogo $e=(E,av,av)\in AB$ e $f=(F, av, av)$
	Posso costruire $b=(B, D, av)$ e $c=(C, E, F)$
	E infine $a = (A, B, C)$ 
	Questo è esattamente ![[Drawing 2023-04-21 12.44.13.excalidraw]]

Con questa definizione riesco a gestire meglio il concetto di Albero.

Definiamo la classe di un albero binario in termini di tipo:
```py
class tree:
	def __init__(self, lab = None, fs = None, fd = None):
	
		'''Albero vuoto lab, fs, fd sono None
		In albero non vuoto fs e fd devono essere di classe tree'''
		
		self.__label = lab
		self.__sx = fs
		self.__dx = fd
		
	def is_empty(self): #Metodo per vedere se l'albero è vuoto
		return self.__label == None
		
	def label(self):
		return self.__label
		
	def first_child(self):
		return self.__sx
		
	def second_child(self):
		return self.__dx
		
	def is_leaf(self):
		if self.__label is None:
			return False
		return self.__sx.is_empty() and self.__dx.is_empty()
```

Esempi di alberi binari sono:
- $\text{tree()}$ che coincide con l'albero vuoto
- $\text{5}$ che coincide con $5$
- $\text{tree(7, tree(5), tree())}$ che coincide con $7\rightarrow\begin{cases}5\\ {}\end{cases}$ 
- $T =\text{tree(8, tree(7, tree(5), tree()), tree(9, tree(), tree(4)))}$ che coincide con $8 \rightarrow \begin{cases} 7 \rightarrow \begin{cases}5\\ {}\end{cases}\\ 9 \rightarrow \begin{cases}{}\\ 4\end{cases}\end{cases}$ 

Sugli alberi ci sono determinati metodi, in base anche all'esempio:
```py
>>> T.label()
8
>>> T.first_child()
7
>>> T.is_empty()
False
>>> tree().is_empty()
True
>>> T.first_child().label()
7
>>> T.first_child().second_child().is_empty()
True
```

Useremo la classe in maniera totalmente astratta

Esercizi sugli alberi: Dato un albero stampare tutti i nodi di un albero
```py
from esempio_sopra.py import tree

def stampa_a(alb):
	if alb.is_empty() == True:
		return
	print(alb.label())
	stampa_a(alb.first_child)
	stampa_a(alb.second_child)
```

Se prendiamo $T =\text{tree(8, tree(7, tree(5), tree()), tree(9, tree(), tree(4)))}$, otterremo:
```py
8
7
5
9
4
```

Questa si chiama $\text{Visita dell'Albero}$ ossia ottengo tutte le etichette dei nodi.
In particolare si chiama $\text{Visita Anticipata}$ in quanto prima stampo l'etichetta e poi accedo al valore del nodo.
Si può anche fare una stampa in ordine posticipato (ottengo prima l'informazione sui figli e poi stampo il valore)

```py
from esempio_sopra.py import tree

def stampa_p(alb):
	if alb.is_empty() == True:
		return
	stampa_p(alb.first_child)
	stampa_p(alb.second_child)
	print(alb.label())
```

In questo caso sono perfettamente equivalenti.

Si può fare anche la $\text{Visita in Ordine Simmetrico}$

```py
from esempio_sopra.py import tree

def stampa_s(alb):
	if alb.is_empty() == True:
		return
	stampa_s(alb.first_child)
	print(alb.label())
	stampa_s(alb.second_child)
```

Con un albero binario si possono rappresentare anche le espressioni matematiche:

![[Drawing 2023-04-27 09.51.27.excalidraw]]

Con la Visita simmetrica perde completamente significato.
Con quella Anticipata no, perché si ottiene tutta una rappresentazione prefissa (Chiamata $\text{Polacca}$) delle operazioni.
Infatti stampa: $*+122**2$ f
Esiste anche una notazione polacca postfissa che si ottiene con una visita Posticipata (e si ottiene $12+2**2*$)

Altro Esercizio: Somma delle etichette di un albero:
```py
"Dall'esempio prima"
def somma(alb):
	"L'albero ha solo etichette numeriche e l'albero vuoto = 0"
	if alb.is_empty():
		return None
	return alb.label() + somma(alb.fist_child()) + somma(alb.second_child())
```

Questa è una visita dell'albero Anticipata

Per questioni di completezza si può estendere il codice a:
```py
def somma(alb):
	if alb.is_empty():
		return None:
	if alb.first_child().is_empty():
		sommaFC = 0
	else:
		sommaFC = somma(alb.fist_child())
	if alb.second_child().is_empty():
		sommaSC = 0
	else:
		sommaSC = somma(alb.second_child())
	return alb.label() + sommaFC + sommaSC
```

Fare qualcosa di simile anche per la produttoria.

Esercizio: Scrivere una funzione che indichi quanti nodi ci sono ad una profondità $h$

```py
def numeronodi(alb, h):
	'h interno e non negativo'
	if alb.is_empty():
		return 0
	if h == 0:
		return 1
	return numeronodi(alb.first_child, h-1) + numeronodi(alb.second_child, h-1)
```

Altro Esercizio: Dato un albero, restituire un altro con la stessa struttura ma con tutte le etichette uguali a 0:
```py
def dupl(alb):
	if alb.is_empty():
		return tree()
	return dupl(0, alb.first_child(), second_child())
```

Per noi i $\text{tree()}$ sono immodificabili, però si può fare un esercizio in cui si crea una classe nuova di $\text{tree}$ modificabili

Altro esercizio:
```py
def sommaf(a):
	if a.is_empty():
		return tree()
	if a.is_leaf():
		return tree(a.label())
	fs = sommaf(a.first_child())
	fd = sommaf(a.second_child())
	if fs.is_empty():
		newlab = a.label() + fd.label()
	elif fd.is_empty():
		newlab = a.label() + fs.label()
	else:
		newlab = a.label + max(fs.label(), fd.label())
	return tree(newlab, fs, fd)
```

Concettualmente questo va bene, ma mi devo assicurare che tutto funzioni - devo arginare gli errori

Esercizio: Scrivere una funzione tale che dato un albero binario con etichette intere restituisce un albero con la stessa struttura ogni nodo etichettato con la massima delle etichette sui cammini nodo-foglia dell'albero originale
*Il massimo della somma dei cammini che vengono dal basso*

![[Drawing 2023-05-03 14.40.51.excalidraw 1]]

```py
def sommaf(alb):
	if alb.is_empty():
		return tree()
	fs = sommaf(alb.fist_child())
	fd = sommaf(aln.second_child())
	if fs.is_empty():
		nefs = 0
	else:
		nefs = fs.label()
	if fd.is_empty():
		nefd = 0
	else:
		nefd = fd.label()
	return tree(alb.label() + max(nefs, nefd), fs, fd)
```

Esercizio: Scrivere una funzione tale che dato un albero binario con etichette intere restituisce un albero con la stessa struttura ogni nodoetichettato con la massima delle etichette sui cammini nodo-foglia dell'albero originale
*Il massimo della somma dei cammini che vengono dal basso*

Questa non è una cosa ottimale o naturale, perché non ho le informazioni del prima, ma del dopo:
*Con un esempio, non si comporta come il fattoriale dove $n! = n*(n-1)!$ e dal fondo ottengo quello che sto in cima*
Come si può fare? Con l'utilizzo dei parametri 

![[Drawing 2023-05-03 14.40.51.excalidraw]]

```py
def sommac(alb, parz = 0):
	if alb.is_empty():
		return tree()
	newlabel = alb.label() + parz
	return tree(newlabel, sommac(alb.first_child(), newlabel), sommac(alb.second_child(), 
								newlabel))
```

Questo tipo di visite vengono chiamate visite in profondità, in quanto prima arrivo in fondo e poi torno indietro
Differente è quella per livelli, però non è così facile con la ricorsione

Esercizio: Scrivere una funzione che restituisce una lista dei nodi che hanno solo etichette dispari su cammino radice-nodo, eccetto il nodo stesso.

```py
def tuttidisp(alb):
	if alb.is_empty():
		return []
	if alb.label() % 2 == 0:
		return [alb.label()]
	else:
		return [alb.label()] + tuttisip(alb.first_child() + tuttidisp(alb.second_child))
```

Questo tipo di visita è una visita posticipata

***