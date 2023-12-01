---
tag: Mate, Info
---
## Complessità Computazionale

Domanda fondamentale: *Quante risorse sono necessarie per eseguire un programma?*
Che può essere *Quanta energia? / Quanta corrente?*

Qui è: *Tempo di Calcolo* e *Spazio di Memorizzazione ausiliario*. (Nel senso di *quanto spazio nascosto uso all'interno del programma per fare i conti*)

Noi ci concentriamo soprattuto sul tempo.

Come già detto, non ci interessa un tempo assoluto, perché i dati assoluti sono dipendenti da una quantità incredibile che cambia da molte cose (OS, carico sul sistema, ...)
Tempo assoluto è tempo troppo variabile per fare una teoria.

A noi ci interessa il tempo di calcolo come $\text{Dipendenza Funzionale}$, ossia come varia al variare di determinati parametri *(Come il consumo di risorse varia al variare di alcuni parametri di dati)*. Questi parametri vengono chiamati $\text{Dimensione dei dati}$

Abbiamo già visti degli esempi (parte sopra):

Nella scansione lineare:
```py
def sl(S):
	for e in S:
		print(e)
```
Il tempo varia in maniera lineare rispetto alla lunghezza dei dati (qui di $S$).
Ossia $\text{Tempo di Calcolo lineare a len(S)}$. *Non interessa il tipo di dati, ma dalla dimensione*

In alcuni casi, come la ricerca lineare, non tutte le esecuzioni hanno lo stesso tempo (alcune di più altre di meno):
```py
def sl(S, e):
	for t in S:
		if t == e:
			return True
		else:
			return False
```
Tempo di calcolo dipende anche dal fatto se $e$ compare in $S$ oppure no.
A noi però interessa solamente il caso pessimo / peggiore.
Fissata una dimensione ci interessa determinare il caso peggiore. *In questo caso è come se non compare, quindi il tempo di calcolo collassa con quello della scansione lineare e diventa appunto lineare alla dimensione dei dati*.

Quello di cui tratteremo è la $\text{Valutazione del Limite Superiore (Uppedband) di Complessità}$
Abbiamo un algoritmo che risolve un problema e vogliamo capire quanto ci mette.
Limite superiore = caso peggiore

Un altro capitolo della Complessità Computazionale che al posto di prendere un algoritmo e studiarne il tempo, si preoccupa di rispondere alla domanda: *determinare la complessità intrinseca di un problema*. (Che non tratteremo)
Si limita a studiare il minimo delle risorse che un algoritmo spende per ogni situazione.

*Cosa conto per determinare il tempo di calcolo?*
Nell'analisi contiamo i passi di calcolo, cioè unità convenzionali di tempo che non dipendono dalla dimensione dei dati (Concetto di Base).
*Quali sono i possibili passi?*

1. Un'operazione tra due $\text{float}$ può essere vista come un'unità in quanto non dipende dalla dimensione dei numeri. 
2. Un'operazione tra due $\text{bool}$
3. Un'operazione tra due interi piccoli (in Python ci sono degli interi arbitrariamente grande, quindi più tempo)
4. Un'operazione tra caratteri (Stringhe da un elemento) 
5. Un assegnamento (La valutazione potrebbe non essere a tempo costante)
6. Un $\text{return}$ (Sempre senza valutazione)
7. Un $\text{print}$ (Sempre senza valutazione)

Esempio: Ricerca lineare con $\text{while}$ e studio di $\text{rlw}$:
```py 
def rlw(S, e):
	i = 0                                #1 passo (Assegnazione)
	while i < len(S) and e != S[i]:      #3 passi (I due confronti e l'and) n + 1 volte
		i += 1                           #2 passi (Valutazione e Assegnazione) n volte
	return i < len(S)                    #2 passi (Return e valutazione)
```
- Dimensione: $\text{len(S)} = n$
- Caso peggiore: $\text{e} \notin \text{S}$
- Passi nel caso peggiore: $\underbrace{3}_{\text{Quello Fuori}}+\underbrace{3(n+1)}_{\text{Guardia}}+\underbrace{2n}_{\text{Corpo}}=5n+6$

*Se ho fatto tutto bene, cronometrando il tempo impiegato ottengo che il tempo segue la funzione $f(t)=5t+6$*

*Cosa posso supporre che non sia un passo di calcolo:*
1. $\text{x in S}$ (lineare nella lunghezza di $S$)
2. Un operazione tra interi grandi (gli interi in Python sono illimitati, quindi devo tenere conto al numero delle cifre, di cui il tempo è lineare)
3. Confrontare due sequenze ($\text{L = LL}$ va a confrontare due liste elemento per elemento)
4. Chiamare una funzione (la chiamata in sé è un passo, ma poi viene eseguita la funzione, che ha un suo tempo)
5. I comandi composti (in cui bisogna valutare la parte interna)

Un'altra cosa che mi interessa nell'analisi non è la formula esplicita, ma il suo ordine di grandezza, ossia è $\text{Asintotica,}$ ossia non vado a considerare le costanti che sono in gioco.
Per questo motivo si utilizza la notazione di $O()$ grande.

**Definizione di $O()$**: Siano $f,g: \text{Dimensione dei dati} \rightarrow \mathbb{N}$. Diciamo che $f = O(g)\Leftrightarrow \exists c,b,n_0: \forall n>n_0, f(n)≤cg(n)+b$ 

Quindi continuando l'esempio si ha che:
- Dipendenza lineare: $O(n)$

Esercizio:
- $3n^3=O(n^3)\Rightarrow \exists c,b,n_0: 3n^3≤n^3+b, \forall n>n_0$, mi basta prendere $c = 3, b = 0, ,n_0 = 0$
	Questo per sottolineare che gli $o()$ non servono a niente, ma servono solo le costanti moltiplicative.
- $n \log(n)=O(n^2)\Rightarrow c = 1, n_0=1, b=0$
	Le basi dei logaritmi è assolutamente inutile, perché è una costante che non serve

Per le costanti in informatica:
$k = 2^{10} = 1024 \sim 1000$
$M = 2^{20} \sim 1000000$

Nei metodi per le liste:
	- Creazione della lista è lineare o costante
	- Tutte le operazioni di concatenazione tra sequenze, aggiunte di valori e altro ancora, possiamo maggiorare con un coso della lunghezza della stringa
	- La lunghezza è estratta a tempo costante, in quanto è fuori dalla lista in sé
	- Ordinare la lista invece è $0(n \log n)$ 

Esercizio di Valutazione:
```py
def foo(L, a):
	for i in range(len(L)):
		L.insert(0, a)         #Ci dice che deve essere una lista
	return L
```
- Capire cosa fa: Aggiunge in place inserisce alla posizione in indice $0$ tante volte quanto è la lunghezza di $\text{L}$
- Dimensione: $\text{len(L) = n}$
- Caso peggiore: Tutte le istanze sono istanze del caso peggiore (Hanno lo stesso tempo di esecuzione)
- Passi nel caso peggiore: Per quanto riguarda il corpo, alla prima interazione costa $n$ passi ($\text{insert}$ su una lista lunga $n$, alla seconda costa $n+1$, alla terza $n+2$, finché all'ultima non costerà $2n-1$). Il costo globale è di conseguenza la somma di tutti i tempi $\displaystyle{\underbrace{\left(\sum_{\ell=0}^{n}n+\ell\right)}_{\text{for}}}+\underbrace{1}_{\text{return}}=nn+\sum_{\ell=0}^{n-1}\ell+1=n^2+\frac{n(n-1)}{2}+1$
	La seconda possibilità è: Poiché il corpo è $O(n)$ ma lo ripeto $n$ volte ottengo $nO(n)=O(n^2)$

Esercizio 2:
```py
def primik_2(S, k):
	T = []
	for i in range(k):
		m = max(S)
		S.remove(m)
		T.append(m)
	return T
```
- Capire cosa fa: Data una lista, estrae il massimo dalla lista e poi lo aggiunge alla fine
- Dimensione: $\text{n = len(S), k ≤ len(S)}$ *Parametri che influenzano l'esercizio*
- Caso peggiore: *(Dopo aver fissato $n$ e $k$)*. Tutte le istanze sono equivalenti e quindi quelle peggiori
- Passi nel caso peggiore: 
	Iterazione $1$: $\underbrace{n}_{\text{max}}+\underbrace{n}_{\text{remove}}+\underbrace{1}_{\text{append}}$
	Iterazione $2$: $\underbrace{n-1}_{\text{max}}+\underbrace{n-1}_{\text{remove}}+\underbrace{1}_{\text{append}}$
	Interazione $k$: $\underbrace{n-k+1}_{\text{max}}+\underbrace{n-k+1}_{\text{remove}}+\underbrace{1}_{\text{append}}$
	Quindi il costo totale: $\displaystyle{\underbrace{\sum_{i=1}^{k}(2n-2i+2+1)}_{\text{for}}+\underbrace{1}_{\text{L =[ ]}}=2kn-2\sum_{i=1}^ki+3k}=2kn-2\frac{k(k+1)}{2}+3k=O(kn)$

Esercizio della ricerca binaria, ricorsiva:
```py
def ric_ip_aux(L, el, low, high):
	if low > high:
		return False
	med = (high + low) // 2
	if L[med] == el:
		return True
	if el < L[med]:
		return ric_ip_aux(L, el, low, med)
	else: #el >= [med]:
		return ric_ip_aux(L, el, med + 1, high)
```
- Capire cosa fa: Ricerca Binaria ricorsiva
- Dimensione: $\text{n = len(L)}$
- Caso peggiore: 
- Passi nel caso peggiore: 
	Sia $T(n)$ la complessità della funzione per $L$ di lunghezza $n$
	Sia $T(1)$ il caso base, quindi ha un costo costante $c$
	Sia $T(n)$ un caso non base, ha un po' di passi costanti $b$ più $T(\frac{n}{2})$
	Quindi $\begin{cases}T(1)=c\\ T(n)=d+T(\frac{n}{2})\end{cases}$
	*In questo caso, si prova ad espandere la relazione, in modo da poter trovare un caso particolare*
	Supponiamo $n = 2^k$ e proviamo a vedere cosa si ottiene: $T(2^k)=d+T(2^{k-1})$, così posso continuare ad usare la relazione di ricorrenza ossia $T(2^k)=d+T(2^{k-1})=2d+T(2^{k-2})=3d+T(2^{k-3})$, ma in generale: $id+T(2^{k-i})$, ci si ferma quando $i = k$, in particolare $kd+T(2^0)=kd+c\Rightarrow k = d\log_2n+c\Rightarrow O(\log_2n)$. 
	Se non è una potenza di due, posso prendere quella più grande, tanto sempre in $O()$ sono, quindi resta sempre logaritmica.

Esercizio, ricerca binaria con slice:
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
		return ric_bin_r(S[:med], el)
	else: 
		return ric_bin_r(S[med + 1:], el)
```
- Tutti i dati precedenti restano lo stesso tranne il numero di passi
- Rifacciamo lo stesso calcolo per il numero di passi.
$\begin{cases}S(1) = c\\ S(n)= d+S(\frac{n}{2})+ O(\frac{n}{2})\end{cases}$, dove l'ultimo $\frac{n}{2}$ è dato dal costo di costruzione di una slice.
	Prendiamo $n = 2^k$, quindi diventa $S(2^k)=d+S(2^{k-1})+O(2^{k-1})=2d+S(2^{k-2})+O(2^{k-1})+O(2^{k-2})$, quindi iterando si ottiene che $id+S(2^{k-1})+O\left(\displaystyle{\sum_{j=1}^{i}2^{k-j}}\right)=kd+S(1)+O\! \left(\displaystyle{\sum_{j=1}^{k}2^{k-j}}\right)=kd+S(1)+O\! \left(2^k-1\right)=$$=d\log n+c+O(2^{n-1})=O(n)$ 

Quale è la complessità dello spazio? È la quantità di spazio aggiuntivo che utilizzo per portare a termine la mia funzione. 

Sia $Sp(n)$ lo spazio **di lavoro** utilizzato per completare l'esecuzione
Lo spazio nel caso base $Sp(1)=0$, lo spazio nel caso $n$, 
$\begin{cases} Sp(1)=0\\ Sp(n)=1+Sp(\frac{n}{2})+ \underbrace{O(\frac{n}{2})}_{\text{Creazione della slice (Trascurabile, può essere anche }\frac{n}{2})}+ \underbrace{f}_{\text{frame che vado a costruire}}\end{cases}$
*La formula del consumo dello spazio ha la stessa forma di quella del tempo*
Questa formula diventa quindi $O(\log n)+O(n)$, quindi la formula 

**Algoritmi numerici**: (Come $\mathcal{MCD}$, Euclide, Fibonacci...)
Dobbiamo chiederci "qual è la dimensione dei dati per gli algoritmi numerici?"
Pensiamo all'algoritmo di somma $32345+12372=44717$. La sua complessità dipende da numero di cifre.
Anche in generale la dimensione dei dati in un algoritmo numerico è dato dal numero di cifre del dato.
Quindi se il dato è $n$, la dimensione del dato è $\log n$, si assume $\log_2$ ma non ha importanza.
La dipendenza funzionale del tempo è in funzione del tempo

Prendiamo l'algoritmo di $\mathcal{MCD}$:
```py
def primo(n):
	for k in range(2, n-1):
		if n % k == 0:
			return False
	return True
```
Numero di passi: Il corpo costa un'operazione, il corpo viene eseguito $n-2$ volte, dunque si eseguono $n-2=O(n)$ operazioni elementari *(supposto siano tutti interi piccoli)*. 
Poiché però la dimensione dei dati va presa come $\log n$, di conseguenza l'algoritmo di $\mathcal{MCD}$ risulta esponenziale rispetto a $O(n)$ in quanto $n=2^{\log n}$

*Complessità negli algoritmi numerici*: 
La dimensione che dovrebbero avere è la dimensione di spazio per rappresentare il numero di cifre (ossia il logaritmo del numero del valore). Esempio $\mathcal{MCD}$, test di primarità e logaritmo di Euclide.

Sugli algoritmi numerici c'è un altro problema, oltre a capire la giusta dimensione del dato: Altro problema è dato da numeri troppo grandi. Il primo più grande noto è $2^{89589931}-1$, nell'ordine di $10^{24862048}$ 
Per interagire con i numeri troppo grandi ci sono modi diversi a seconda del linguaggio
In Python, dati due numeri $a$ e $b$ e $k = \log(min(a,b))$, allora $a+b$ costa circa $k$ ed è dell'ordine di $k$, mentre $a*b, a\%b, a/b$ costa $k^2$, ossia un logaritmo quadrato del valore del numero.
Nel caso del test di primarità ovvio: $2^k$ passi, ma ciascun passo costa ancora $2^k$. Quindi diventa $O(\log^2(k) \cdot 2^k)$ 
Nel caso dell'algoritmo di Euclide $O(k)$ considerando che ogni operazione costa $O(k^2)$ diventa $O(k^3)$ 
Nella primarità, poiché è esponenziale è estremamente costoso.
*In crittografia, conoscere numeri primi è estremamente importante per gli stessi motivi di Algebra*.
Per anni si è chiesto quale sia la complessità dell'algoritmo del test di Primarità, del quale non c'era risposta. C'erano di limiti inferiori ovvi (lineari in $k$), ma non c'erano degli upper bound.
Negli anni '70 sono stati proposti degli algoritmi efficienti (Miller-Rabin, algoritmi polinomiali (Da Riemann)). Nel 2002 si è trovato un algoritmo di test primarità, polinomiale che non dipende dall'ipotesi di Riemann.

L'algoritmo AKS (2002), test di primarità è $O(k^{12}\cdot \log^p(k^12))$ ora è stata diminuita a $O(k^6 \cdot \log^a(k^6))$.
Problema della fattorizzazione: se $n$ non è primo determina una scomposizione. È un problema è ancora aperto.
Ci sono degli algoritmi ma sono comunque esponenziali, quindi come quello ovvio.
Ma non sappiamo effettivamente se è un limite inferiore di efficienza.
*Questo è vero problema della fattorizzazione*.
I protocolli sono sicuri perché è difficilissimo fattorizzare numeri troppo grandi. Ma non sappiamo se è veramente così.
Forse potrebbe esiste un algoritmo polinomiale per risolvere.

Esistono anche altri modelli di calcolo come quello quantistico, che sfrutta le sovrapposizioni di eventi quantici, capace di semplificare infinitamente problemi quasi impossibili con i calcolatori standard.

**Problema dell'Ordinamento (Sorting)**:
Abbiamo una lista di oggetti (ordinabili - c'è una relazione d'ordine) e vogliamo determinarne una permutazione ordinata.
Mettiamo un vincolo sulle operazioni: *Le operazioni devono essere basate su confronti*.
*Alcuni algoritmi di ordinamento sono alla base di tanti dispositivi di oggi*. Vediamone tre:

**Insertion Sort**:
Sia una sequenza numerica: $9\quad 1 \quad 8\quad 7\quad 2\quad 5$. 
Fisso il primo elemento $9\; | \; 1 \quad 8\quad 7\quad 2\quad 5$ e lo confronto con il secondo. Poiché $1<9\Rightarrow 1\quad 9\; | \; 8\quad 7\quad 2\quad 5$. La parte a sinistra della barra è ordinata. Ho creato una *invarianza*: "Fino ad un certo indice $i$, la sequenza è ordinata"
Cioè, data una sequenza $S$ è invariante e $S[:i]$ è ordinata dove $i$ varia da $0$ a $\text{len}(S)$
Quindi poi diventerà $1\quad 8\quad 9 \; | \; 7\quad 2\quad 5$, fino ad arrivare alla sequenza completamente ordinata.
Questo tipo di ordinamento si chiama **Insertion Sort**:

```py
def Insort(L):
	for i in range(L):     #L[:i] è ordinata
		temp = L[i]        #Libero il posto di L[i]
		k = i - 1
		while k >= 0 and L[k] > temp:
			L[k+1] = L[k]  #Sposta a destra
			k -= 1
		L[k+1] = tempo
```

In questo modo si possono fare anche su sequenze non modificabili.

Analisi della Complessità: il caso peggiore è quando gli elementi in fondo sono i più piccoli.
*Lasciamo un attimo il $\text{for}$ esterno*.
Il $\text{while}$ interno viene eseguito $i$ volte, quindi $i$ confronti 
Ossia $0+1+...+n=O(n^2)$ per la formula di Gauss, è un algoritmo quadratico nel caso peggiore.

**Teorema**: Il problema dell'ordinamento di confronti ha un limite inferiore di complessità di $O(n \cdot \log(n))$ confronti.

**Quick Sort**: È stato creato da Tony Hoare (1961) e funziona con la scelta, del primo elemento e della separazione degli elementi più grandi o più piccoli dei successivi.

```py
def QS(L):
	if len(L) < 2:
		return L
	pivot = L[0]
	L1 = []           #I due mucchi: L1 più piccoli, L2 più grandi
	L2 = []
	for e in L[1:]:
		if e < pivot:
			L1.append(e)
		else:
			L2.append(e)
	return QL(L1) + [pivot] + QL(l2)
```

La complessità computazionale tra questa e quella precedente è la stessa $O(n^2)$ nel caso peggiore.
$t_Q(n)=c+\underbrace{O(n)}_{\text{Divisione dei gruppi}}+T_Q(k-1)+ T_Q(n-k+1)$

Per calcolo complessità:
	- Quali sono i dati e la loro dimensione;
	- Quale è il caso peggiore
	- Effettuare un'analisi asintotica

Normalmente la funzione da analizzare è $T(n)$ ossia il tempo in relazione al alla dimensione dei dati.

Se ho una costante $k$ e $f(n)=O(g(n))\Rightarrow k\cdot f(n)=O(g(n))$ 
Se ho due funzioni $f(n)=O(g(n))$ e $d(n)=O(h(n))\Rightarrow f(n)+d(n)=O(g(n)+h(n))=O(max\{g(n), h(n)\})$ e $f(n)\cdot d(n)=O(g(n)\cdot h(n))$ 

L'ordine degli $O(n)$:
$n^n>> n! >> c^n >> 2^n >> n^3 >> n^2 >> n\log(n) >> n >> \sqrt{n} >> \log(n) >> 1$

Visto che è una valutazione asintotica, conta soltanto quando $n$ è grande

Ci sono altri vari algoritmi naive per l'ordinamento, ma non sono altre che modifiche di quelli iniziali, ma tutti hanno la stessa caratteristica: sono $O(n^2)$ nel caso peggiore e in tante delle possibili permutazioni.

Ponendo $n_1 = \text{len(L1)}, n_2=\text{len(L2)}$ con $n_1,n_2<n$
$QS(n)=\underbrace{O(n-1)}_{\text{Partition}}+QS(n_1)+QS(n_2)+\underbrace{O(n)}_{\text{Concatenazione finale}}$

Caso Peggiore: Ogni volta il Pivot è scelto in modo che uno uno tra $L1$ e $L2$ è vuota.
Per esempio se Pivot=$L[0]$ se $L$ è ordinata al contrario
Quindi $QS(n)=\underbrace{O(n)}_{\text{Concatenazione finale}}+\underbrace{QS(0)}_{O(1)}+QS(n-1)\Rightarrow O(n)+O(n-1)=O(n)+O(n)+O(n-2)=\;...$
In generale $QS(n)=\underbrace{O(n)+...+O(n)}_{i \text{ volte}}+O(n-i)$. Quando $i = n\Rightarrow \underbrace{O(n)+...+O(n)}_{n\text{ volte}}=n\cdot O(n)=O(n^2)$ 
Ossia è alla pari degli altri sistemi di ordinamento

Caso Migliore: Pivot scelto in modo tale che $n_1=n_2=n/2$
Ipotizziamo $n=2^k$
Allora $QS(2^k)=O(2^k)+QS(2^{k-1})+QS(2^{k-1})w O(2^k)+2QS(2^{k-1})=O(2^k)+2O(2^{k-1})+2QS(2^{k-2})=$$=O(2^k)+2(O(2^k)+QS(2^{k-2}))=O(2^k)+O(2^k)+2^2QS(2^{k-2})=\; ...$
Il caso generale diventa $\underbrace{O(2^k)+...+O(2^k)}_{i\text{ volte}}+2^iQS(2^{k-i})$
L'ultimo caso diventa $\underbrace{O(2^k)+...+O(2^k)}_{k \text{ volte}}+O(1)=k\cdot O(2^k)\xlongequal{k = \log(n)} O(n \log (n))$

**Teorema**: 
Supponiamo equiprobabili le $n!$ permutazioni di una sequenza $S$ in cui la lunghezza di $S$ è $n$
	1. Il tempo medio di Insertion Sort (e di conseguenza tutti gli alti ordinamenti naive) è $O(n^2)$
	2. Il tempo medio di Quick Sort è $O(n \log (n))$

**Merge Sort**: Ordinamento per fusione di Von Newmann (1945)
L'essenza è una funzione che ha lo scopo di unire le liste, ma che abbiamo già fatto in laboratorio
_Date due sequenze, costruirne una ordinata_.
$\text{merge}(L1,\;L2)$ con $L1, L2$ sequenze ordinate, restituisce una sequenza ordinata con gli elementi di $L1$ e di $L2$.

```py
def merge(L1, L2):
	len1 = len(L1)
	len2 = len(L2)
	res = []
	i = j = 0
	while i < len1 and j < len2:
		if L1[i] <= L2[j]:
			res.append(L1[i])
			i += 1
		else:
			res.append(L2[j])
			j += 1
	if i == len1:
		res.extend(L2[j:])
	else: 
		res.extend(L1[i:])
	return res	
```
Per farlo nel migliore dei modi serve la ricorsione, con interazione diventa un problema.

```py
def mergesort(L):
	if len(L) <= 1:
		return L
	mid = len(L) // 2
	L1 = mergesort(L[:mid])
	L2 = mergesort(L[mid:])
	return merge(L1,L2)
```

Analisi di complessità nel caso peggiore (Supponendo $n=2^k$)
$MS(2^k)=2MS(2^{k-1})+O(2^k)$ che è la stessa equazione di complessità del caso migliore di Quicksort
Quindi la soluzione è $O(n\log (n))$
In realtà non c'è un caso peggiore, perché non è sensibile alla effettiva disposizione dei dati, quindi tutte le istanze si comportano nello stesso modo, quindi è un algoritmo ottimale

Altra caratteristica non ancora analizzata è la stabilità dell'algoritmo, che nel sort è data dalla presenza di elementi uguali. In particolare, è stabile se viene mantenuto l'ordinamento relativo degli elementi (ossia se ci sono degli stessi elementi uguali, viene rispettato l'ordine originario)

**Master Theorem**: $T(n)=\begin{cases} aT(n/b)+n^c & n>1\\ d & n =1\end{cases}$, dipende da:
	1. $\log_ba<c \Rightarrow T(n)=O(n^c)$
	2. $\log_ba=c\Rightarrow T(n)=O(n^c\log n)$
	3. $\log_ba>c\Rightarrow T(n)=O(n^{\log_ba})$

****