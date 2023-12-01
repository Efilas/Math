---
tag: Mate, Info
---
## Cenni di Informatica Teorica
*Cosa significa calcolare?* 
Manipolazione dei simboli per ottenere un nuovo valore

Studio viene ben prima dei primi calcolatori elettronici

La prima definizione risale da 1936 dal matematico Alan Turing

La domanda che si pone fa parte del titolo "On Computable Numbers". Cosa significa che un numero è calcolabile con numeri reali?
Abbiamo capito che sono alcuni delle bestie perché sono una quantità non definibile, infinita e non periodica
In particolare, per ogni numero reale c'è la possibilità di creare un programma capace di creare tutti i numeri?

No, ci sono dei numeri reali per cui non è possibile stampare dei numeri reali
Oggi è molto semplice arrivarci, è un argomento elementare

Definiamo $\text{Python} = \{p \; | \; p \text{ è un programma legale in Python}\}$ è l'insieme di tutti i programmi possibili
Qual è la sua cardinalità? Certamente è infinito ma è un infinito numerabile perché c'è una sequenza finita di simboli composti da caratteri finiti. Per cui $|\text{Python}|= |\mathbb{N}|$
Sappiamo che $|\mathbb{R}|>|\mathbb{N}|$ quindi abbiamo la certezza matematica che non esiste un programma Python per ogni numero in $\mathbb{R}$ perché abbiamo un insieme numerabile di programmi
È vero che lavoriamo con dei numeri reali, come $π$ e $e$, ma sono dei numeri reali con una quantità di informazioni limitata.

Turing fa tuttavia un ragionamento molto più interessante rispetto a quanto appena fatto.
Costruisce un numero reale che non è calcolabile (Non possiamo stampare l'esito preciso del numero reale)
Lo facciamo attraverso un detour dimostrando che "il problema della fermata non è decidibile" ossia: 

*Esiste un programma $\text{Halt(P, x)}$ di due argomenti che preso un qualsiasi programma Python $P$ e oggetto $x$:
	1) Termina sempre
	2) Restituisce $\text{True}$ se e solo se $P(x)$ termina, $\text{False}$ se $P(x)$ termina*

Chiaramente senza eseguirlo

Dimostriamolo per assurdo, cioè se esistesse crerei un programma che non può esistere, in quanto sarebbe un assurdo logico:

Per farlo mi servono tre ingredienti:

1) So scrivere funzioni divergenti (cicli)
```py
def Omega():           #Programma che va in ciclo
	while True:
		pass
```

2) Posso passare delle funzioni come argomento di altre funzioni:

```py
from math import sqrt, sin
L = [1, 2, 3, 4, 5, 6]
def map(f, S):
	return [f(e) for e in S]
```

3) Non è vietato applicare una funzione a sé stessa:

```py
def I(x):
	return x
```

Supponiamo quindi per assurdo di avere una funzione $\text{Halt(P, x)}$ come sopra.
```py
def Halt(P, x):
	< comandi >
	pass

def K(P):
	if Halt(P, P):
		Omega() #Da sopra, cioè va in ciclo
	else: 
		return 0

Assurdo = K(K)
```

Perché $K(K)$ non può esistere? 
Chiamando $(K, K)$ si va a vedere $\text{Halt}(K, K)= \begin{cases}\text{Omega}() & \text{Halt}(K, K) == True &\Leftrightarrow K(K) \text{ termina}\\ 0 &\text{Halt}(K, K)== False &\Leftrightarrow K(K) \text{ non termina}\end{cases}$ 
Cioè se $\text{Halt}(K, K)$ non termina, allora $K(K)$ termina e viceversa, ossia $K(K)$ termina $\Leftrightarrow K(K)$ non termina
L'unica cosa supposta era l'esistenza di questo programma, quindi era l'unico assurdo
*In sintesi ha invertito convergenza e divergenza per l'assurdo*

Su alcune classi di programmi ci si può accorgere se termina o meno
Altri invece vanno in ciclo per motivi complessi, non un banale ciclo ripetitivo sulle stesse configurazioni.

Da tutto questo ci sono dei problemi che non hanno soluzioni
Il problema che sorge è la teminazione di un programma (in Python) per il quale non siamo in grado di restituire un programma che non sappiamo risolvere. (Non ci sono abbastanza programmi per risolvere tutti i problemi)

*Chi mi dice che in altri linguaggi non ci sono modi per arginare il tutto?*
Ho usato $\text{if, then, else}$, i cicli e passare una funzione ad un'altra funzione, cose che si possono fare sostanzialmente in quasi tutti i linguaggi di programmazione (l'utilizzo in Python è solo un'istanza)

Ogni formalismo per la descrizione del calcolo ha gli ingredienti per riprodurre questa dimostrazione
Posso farlo in $\text{Java, C, Macchine di Turing,...}$
Non è una limitazione di Python, ma della nostra capacità di descrivere il calcolo, una sorta di filosofia naturale
"Non ci sono abbastanza programmi per descrivere tutti i problemi"

Posso dire di avere una biezione $r: \mathbb{N} \rightarrow \text{Python}$ (del tipo, dato un numero posso trovare un programma e viceversa)
Definisco un numero $t=0,d_0d_1d_2...d_i$ dove $d_i=\begin{cases}0 &\text{se } r(i)(r(i))\; \text{termina} & \Leftrightarrow \text{Halt}(r(i), r(i)) = T\\ 1 & \text{se} \; r(i)(r(i)) \text{ diverge}& \Leftrightarrow \text{Halt}(r(i), r(i)) = F\end{cases}$
Ho ridotto il problema della stampa del numero al problema della dedicibilità, per cui non ha soluzione.
*Chiaramente $t$ dipende dal linguaggio di programmazione e dalla scelta della biezione $r$, ma comunque ottengo lo stesso risultato, ossia che è impossibile*

Altri problemi per cui non abbiamo algoritmi - soluzioni: problema di Piastrellature del Piano

Le Piastrelle di Wang sono delle piastrelle con dei colori sui bordi.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Wang_11_tiles.svg/1200px-Wang_11_tiles.svg.png)

L'idea è che devono ricoprire il piano e possono essere attaccate se e solo se si toccano con lo stesso colore (senza ruotarle o ribaltarle)

Ci sono delle piastrellature periodiche e non periodiche (ossia che non fanno uno stesso stile in maniera uguale)

Per questo motivo il problema non è decidibile (dato per alcuni insiemi di piastrelle) e di conseguenza un programma capace di fare tutto ciò in maniera meccanica non esiste

*Tutto questo per sottolineare che non è solo legato all'informatica*

Ma c'è anche altro 
**Teorema**: Sia $f: \mathbb{N} \rightarrow \mathbb{N}$. Se esiste un programma in Python che la calcola, esiste anche un programma in C, in Java e altro ancora. (Sono tutte equivalenti)

Non tutte le funzioni sono numerabili, ma quelle che lo sono, lo sono indipendentemente dal formalismo che io scelgo, infatti $\mathscr{C}=\{f:\mathbb{N} \rightarrow \mathbb{N} \; | \;f \text{ calcolabile}\}$ 

**Tesi di Church-Turing**: una funzione da $\mathbb{N}$ a $\mathbb{N}$ è intuitivamente calcolabile se e solo se è calcolabile in modo formale da una macchina di Turing (se e solo se è calcolabile anche in altri linguaggi di programmazione - è un principio di filosofia naturale, sono cose di cui non si può fare un teorema)

Questa tesi è al cuore della teoria della computazione moderna, se riconosciamo che qualcosa è calcolabile, allora ci si può scrivere un programma. *Ci sono stati dei problemi per scalfirlo, ma nessuno ci è mai riuscito* 

Questi risultati di indicibilità sono in un certo senso assoluti, nel concetto di calcolo nell'universo.
Le cose cambiano quando vengono implementati dei vincoli (che vengono imposti a seconda della dimensione dei dati). Si passa da programmi con un indice di computazione pari a $O(1),\; O(n),\; O(n\log n)$, altri invece richiedono una lunghezza incredibile pari a $O(n!),\; O(n!)$ o addirittura $O(\infty)$ 

Esiste una classe di problemi chiamata $NP$-completi con certe proprietà:
	1) Ha un potenziale di tipo Polinomiale
	2) Ci sono solo soluzioni di tipo Esponenziale
	3) Riesco a capire se una soluzione può essere considerata tale solo se uso la forza-bruta, provando direttamente

Un esempio continua ad essere quello delle piastrelle di Wang (l'unico modo che ho è di provare direttamente)

Poi ci sono problemi di classificazione ancora più difficili (tipo non si sa neanche se sono polinomiali)
Tra questo c'è il problema della fattorizzazione di numeri primi e l'isomorfismo tra grafi

Il più grande problema per tutti i problemi $NP$ è $P\xlongequal{?}P$ cioè, è possibile trovare un programma a livello polinomiale per problemi non polinomiali?