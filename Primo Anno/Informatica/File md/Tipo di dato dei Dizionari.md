---
tag: Mate, Info
---
## Tipo di dato dei Dizionari

Problema dato dal problema delle sequenze
_Data una stringa, contare quante lettere ci sono in una stringa_

Proviamo a farlo con quello che abbiamo
```py
'Contare le frequenze dei caratteri in una stringa'
LC = 'Nel mezzo del cammin di nostra vita'
LL = []
LF = []

for c in LC:
	if c not in LL:
		LL.append(c)
		LF.append(1)
	else:
		LF[LL.index(c)] += 1
		
print(LL)
print(LF)
```
Non si può fare meglio, inoltre ci sono problemi di efficienza e leggibilità
Infatti $\text{.index}$ è lineare, quindi pago un prezzo lineare.
E se le lettere fossero usate come indici?
```py
Freq = {}                  #Inizializzazione del Dizionario
for c in LC:
	if e not in Freq:
		Freq[c] = 1
	else: 
		Freq[c] += 1
print Freq
```
$\text{Freq}$ è un dizionario:
- Valore: Una corrispondenza (finita) tra chiavi e valori dove le chiavi sono oggetti di tipo non modificabile e i valori sono oggetti qualsiasi, quindi delle sequenze e sono modificabili _(Le liste possono essere viste come corrispondenze tra $\text{range(len(L))}$ e oggetti)_
- Presentazione: $\{\}$ (dizionario vuoto) e con $\{k_1:v_1, \; k_2,v_2, \; ...\; , k_n:v_n\}$
- Operazioni: Accesso all'elemento (Selezione) ($<\text{Nome DIzionario}>[\text{Chiave}]$), posso modificare le associazioni tramite assegnamento $<\text{Nome Dizionario}>[<\text{Chiave}>]=<\text{Valore}>$. Per i dizionari non conta l'ordine con cui sono messi i valori, infatti l'uguaglianza è da essere considerata a meno dell'ordine. (Tuttavia non c'è un modo canonico per ottenere la chiave a partire dal valore)

Le chiavi devono essere tutte distinte, ma che succede se sono tutte uguali?
Mi prende solo l'ultima elencata alla posizione del primo elemento.
```py
>>> D = {1:100, 2:200, 1:1000}
>>> D
{1:1000, 2:200}
```
Se associo un elemento del dizionario ad una chiave che non è presente all'interno del dizionario, l'azione che faccio equivale ad aggiungere un elemento in più
```py
>>> D = {1:100, 2:200}
>>> D['Mao'] = True
>>> D
{1:100, 2:200, 'Mao':True}
```
Inoltre le chiavi devono poter essere scritte in Hash, altrimenti da errore (posso usare una tupla, ma non una lista)
*Non posso usare oggetti modificabili o oggetti che hanno al loro interno oggetti modificabili*

Nel dettaglio le operazioni sui dizionari ($D$ nel nostro esempio):
- $D.\text{len}$ numero di elementi nel dizionario;
- Selezioni con $D[a]$ come espressione (a destra di un assegnamento) restituisce il valore associato ad $a$, ma se non ci sono valori associati a $a$ da errore (Nell'assegnazione crea una nuova chiave e vi associa il valore)
- Cancellazione $\text{del }D[k]$, ma c'è una chiave soltanto soltanto;
- $D1 == D2$ restituisce $\text{True}$ se sono presenti gli stessi item a meno dell'ordine
- $k \text{ in } D$ restituisce $\text{True}$ se e solo se $k$ è una chiave di $D$
- Si può fare il $\text{for}$ che varia sulle chiavi di $D$ ($\text{for e in }D$), ma come varia? (In ordine di inserimento, ossia lo stesso ordine con cui si presentano quando si chiede la stampa del dizionario - però la cosa migliore è immaginare che il dizionario sia ordinato secondo la macchina Python)
- Non ci sono né concatenazione né slice

L'esempio canonico di utilizzo dei dizionari è con quello delle frequenze:

Esempio di Fibonacci con memoization, cioè mi salvo i valori all'interno del dizionario:
```py
Fib = {0:1, 1:1}

def fibo(k):
	if k in Fib:
		return Fib[k]
	Fib[k] = fibo(k-1) + fibo(k-2)
	return Fib[k]
```
Questa tecnica sfrutta valori complessi che mi sono già calcolato e che mi sono segnato

Confronto tra liste e dizionari: a livello di informazione sono la stessa identica cosa, ma sui dizionari ho l'accesso per chiave (più efficiente), mentre con le liste ho l'accesso per indice (devo scorrere per trovare l'indice a cui è associato l'elemento che voglio)

Ripasso con le liste:
```py
L = [3, 0, 27, 0, 0, 9, -1]
for i in range(len(L)):
	if L[i] == 0:
		del L[i]
```
Questo $\text{for}$ fa casino, perché cambia la lunghezza durante l'esecuzione, per questo non va mai usato

La stessa cosa per i dizionari:
```py
D = {1:0, 2:3, 4:0}
for k in D:
	if D[k] == 0:
		del D[k]
```

Sui dizionari il divieto non viene dal prof (come nel caso delle liste), ma direttamente dalla macchina Python

**Morale**: Sulle strutture non si usa il $\text{for}$ se la loro lunghezza cambia durante l'esecuzione.

Anche qui ci sono i metodi:
- Surrogato di $\text{append}$: $\text{.update}$:
```py
>>> D = {1: 100, 2:200, 3:300}
>>> D.update({'a':10, 'b':20, 'c':30})
>>> D is D
True               #Inplace
```
- Visto che il $\text{for}$ restituisce le chiavi, per avere i valori si usa il metodo $\text{.values}()$, mentre per le chiavi c'è il metodo $\text{.key}()$ ma è sottointeso direttamente con il for, con $\text{.items}()$ restituisce le coppie
```py
for i in D.key() #D.values() oppure D.items()
```

Quello che i metodi restituiscono delle Viste dinamiche per spiegare ecco un esempio:
```py
>>> E = {1:100, 2:200}
>>> val = E.values()
>>> val 
dict_values([100, 200])
>>> E[3] = 300
>>> E
{1:100, 2:200, 3:300}
>>> val
dict_values([100, 200, 300])
```

La vista varia al variare di $E$. Questi metodi restituiscono una vista su quei tre componenti 
Il metodo è chiamato solo una volta e in ogni momento il valore effettivo del Dizionario

È possibile anche congelare il dizionario attraverso una tupla:
```py
#Dall'esempio precedente
>>> T = tuple(val)
>>> T
(100, 200, 300)
>>> del D[1]
>>> D
{200, 300}
>>> T
(100, 200, 300)
```

Un altro metodo ancora è $\text{.get()}$
In particolare $D.\text{get}(k, \text{default})=\begin{cases}D[k] & \text{se }k\text{ è in }D\\ \text{default} & \text{Altrimenti}\end{cases}$

Riprendendo il primo esempio sui dizionari: $\text{Freq}[e] = \text{Freq.get}(e, 0)+1$

*****