---
tag: Mate, Algebra
---
## Algebra di Base

**Definizione di Insieme**: Un Insieme è definito come una collezione di elementi (di qualsiasi genere) ^9939ba

$x\in A$: si legge “x è un elemento dell’insieme A”
$x\notin A$ si legge “x non è un elemento che fa parte dell'insieme A”
$A\subseteq B$ si legge “L’insieme A è contenuto o uguale all’insieme B”
$B\subseteq A$ si legge “L’insieme B è contenuto o uguale all’insieme A”

Da queste ultime due affermazioni si può dedurre che $A=B$, ossia che “l’insieme A è uguale all’insieme B” o che “tutti gli elementi contenuti in A sono anche contenuti in B”

**Definizione di Insieme delle Parti**: Dato un insieme $A$, si può definire Insieme delle Parti $\mathcal{P}(A)$ quell’insieme che contiene tutti i sottoinsiemi di $A$. ^6fd9eb

Esempio:
	Dato l’insieme $A=\{x;y;z\}$, allora l’insieme $\mathcal{P}(A)=\{\varnothing;\{x\};\{y\};\{z\};\{x;y\};\{x;z\};\{y;z\};\{x;y;z\}\}$
	È possibile inoltre poter indovinare di quale sottoinsieme si sta trattando con tre semplici domande:
	- “Contiene x?”
	- “Contiene y?”
	- “Contiene z?”

**Operazioni binarie** (ossia da due elementi ne ottengo uno soltanto): pippo
-   Unione $A\cup B\Leftrightarrow B\cup A=\{x|x\in A\vee x\in B\}$
-   Intersezione $A\cap B\Leftrightarrow B\cap A=\{x|x\in A\wedge x\in B\}$
*Su queste due operazioni sono valide sia la proprietà Commutativa sia quella Associativa*
-   Differenza Insiemistica $A\setminus B=\{x|x\in A\wedge x\notin B\}$
*Su quest’operazione non si posso applicare né la proprietà Commutativa né quella Associativa*
-   Prodotto Cartesiano: si definisce il Prodotto Cartesiano l’insieme $A\times B:\{(a;b), a\in A, b\in B\}$

Esempio:
	$A=\{1;2;3;4\} \quad B=\{x;y;z\}$
	$A\times B=\{(1;x);(1,y);(1;z);(2;x);(2;y);...;(4;z)\}$

Si osserva che se l’insieme $A$ ha $n$ elementi e l’insieme $B$ ha m elementi, allora l’insieme $A\times B$ avrà $n\cdot m$ elementi

Si chiama apposta prodotto cartesiano perché (in caso si tratta di numeri) è possibile rappresentarlo in un grafico, nel quale il primo numero rappresenta l’asse delle ascisse, mentre il secondo numero quelle delle ordinate.

**Definizione di Relazione**: Una Relazione è un sottoinsieme $R$ del prodotto cartesiano $A\times B$. Si dice che “$a$ è in relazione con $b$ se $(a;b)\in R$ ^291453

Esempio:
	Dati gli insiemi $A = B$ gli insiemi di tutte le rette, si può definire $R$ l’insieme di tutte le rette con un punto in comune

Esistono vari tipi di Relazioni. Tra queste vi sono:

**Relazione di Equivalenza**: Si definisce Relazione di Equivalenza una relazione $R\subseteq A\times A$ che gode delle seguenti proprietà: ^9247d9
-   Riflessiva (R): $(a;a)\in R\wedge a\in A$ ogni elemento è in relazione con sé stesso;
-   Simmetrica (S): se $(a;b)\in R$, allora $(b;a)\in R\wedge a,b\in A$;
-   Transitiva (T): se $(a;b)\in R$ e $(b;c)\in R$, allora $(a;c)\in R\wedge a,b,c\in A$.

Esempio:
	Dato un Insieme $A$ di numeri uguali:
	(R) Un numero $a$ è sempre uguale ad un numero $a$
	(S) Se un numero $a$ è uguale ad un numero $b,$ allora il numero $b$ è uguale al numero $a$ (è sempre lo stesso numero)
	(T) Se un numero $a$ è uguale ad un numero $b$, e un numero $b$ è uguale ad un numero $c$, allora il numero $a$ è uguale al numero $c$

**Relazione di Ordine**: Si definisce una Relazione d’Ordine una relazione $R\subseteq A\times A$ che gode delle seguenti proprietà: ^1c1e2c
-   Riflessiva (R): $(a;a)\subseteq R \wedge a\in A$ ogni elemento è in relazione con sé stesso;
-   Antisimmetrica (A): se $(a;b)\in R$ e $(b;a)\in R$, allora $b=a$; 
*se invertendo i valori $a$ e $b$ si ottiene lo stesso risultato allora $a = b$*
-   Transitiva (T): se $(a;b)\in R$ e $(b;c)\in R$, allora $(a;c)\in R\wedge a,b,c\in A$;

Esempio: 
	Dato un insieme di numeri $\mathbb{Z}$ si ha che $(a;b)\in R$ se $a≤b$

Si definisce una Relazione d’Ordine Totale in $\mathbb{Z}$ se tutti gli elementi sono confrontabili attraverso il segno $≤$, in particolare se dati qualunque $a,b$ si ha che $(a,b)\in R$ oppure $(b,a)\in R$. In caso contrario viene definito Parziale. ^d7da4b

L’Obiettivo di una Relazione di Equivalenza è quello di trovare degli aspetti di similitudine tra i vari elementi dell’insieme.
L’Obiettivo di una Relazione d’Ordine è quello di gerarchizzare gli elementi secondo una condizione.

È possibile rappresentare le Relazioni d’Ordine attraverso il diagramma di Hasse:

Un particolare tipo di Relazione d’Ordine si ha quando: 
Dati $n\in \mathbb{N}$, $n>1$ e dati $a,b\in \mathbb{Z}$ diciamo che $a\equiv b (n)$ se $n|a-b$, ossia “a è congruo a b in modulo n se n divide a-b ”

Esempio: 
	$-7\equiv 3\equiv 18\quad (5)$
	$5|3-18 = 5|15 \quad5|3-(-7)= 5|10$

*Osservazioni*: Si può dire che un numero $a$ è congruo ad un numero $b$ se hanno lo stesso resto nella divisione per $n$. In particolare, se $n$ è uguale a 2 e il resto è uguale a 0 il numero è pari, mentre se il resto è 1 allora è dispari. ^999dfe

Questa Relazione d’Ordine diventa una Relazione di Equivalenza quando $n\in \mathbb{Z}$:
*Dimostrazione* 
	(R) $a\in \mathbb{Z},\quad   a\equiv a\quad (n)\Rightarrow  a-a=0\quad n|0=0$
		Visto che la differenza di un numero per sé stesso è 0, si ha che $\exists d: n\cdot d=a-a\Rightarrow n\cdot d=0d=0$
	(S) $a\equiv b\quad (n)\Rightarrow n|a-b\Leftrightarrow n|b-a\Rightarrow b\equiv a\quad (n)$
		Questo perché $\exists d: d\cdot n=a-b \Rightarrow -d\cdot n=b-a$
		Questo è il passaggio che rende la relazione d’Ordine ( con $n\in \mathbb{N}$) una Relazione di Equivalenza (con $n \in \mathbb{Z}$)
	(T) $a\equiv b\quad (n) \wedge b\equiv c\quad (n) \Rightarrow n|a-b \wedge n|b-c\Rightarrow  n|(a-b)+(b-c) \Rightarrow n|a-c \Rightarrow a\equiv c\quad (n)$

**Definizione di Classe di Equivalenza**: Data una qualsiasi relazione di equivalenza (di uguaglianza o di congruenza) $R$ di $A$ (per cui si ha $R\subseteq A\times A$ per cui sono verificate le tre proprietà) invece di scrivere $(a,b)\in R$ si può scrivere $a\sim b$, in quanto sono accumulati da una relazione di equivalenza.
A questo punto per ogni $a\in A$ di può definire una classe di equivalenza tale che $$[a]=\{x\in A\; |\; x~
\sim a\}$$ ^73294c

Esempio:
	Siano $a,b\in A$, allora $[a]=[b]\Leftrightarrow a\sim b$
	Per verificare la proposizione bisogna dimostrare entrambe le proposizioni:
	$\Rightarrow$) Si ha che $[a]=[b]\Rightarrow a\sim b$
		$\forall x\in A,x\in [b]$ (per p. Riflessiva) $a\in [b]\Rightarrow a\sim b$
	$\Leftarrow$) Si ha che $a\sim b\Rightarrow [a]=[b]$
		-   Dimostriamo che $[a]\subseteq [b]$
			Sia $x\in [a]\Rightarrow x\sim a$ (per Ipotesi si ha che $a\sim b$), per p. Transitiva $x\sim b\Rightarrow x\in [b]$
		-   Dimostriamo che $[b]\subseteq [a]$
			Sia $x\in [b]\Rightarrow x\sim b$, per ipotesi si ha che $a\sim b$, per la proprietà Simmetrica si ha $x\sim b\wedge b\sim a$ per la proprietà Transitiva $x\sim a\Rightarrow x\in [a]$
		Avendo contemporaneamente $x\in [a]$ e $x\in [b]$ si giunge alla conclusione che $[a]=[b]$

**Definizione di Insieme Quoziente**: Si può definire l’insieme quoziente come l’insieme i cui elementi sono le classi di equivalenza $$A_{/\sim}=\{[a],a\in A\}$$ ^477fe1

Esempio:
	Prendiamo “essere coniugi a modulo 2”, gli elementi possono essere o solo pari o solo dispari (quindi appartenere alla classe $[0]$ o alla classe $[1]$)

**Definizione di Partizione**: Sia $A$ un insieme, una partizione di $A$ è una collezione di sottoinsiemi di $A$ non vuoti a due a due disgiunti, la cui unione è $A$. A questo punto $A$ può essere rappresentato come l’insieme di tutte le parti: $A=\{A:i,\in I\}$ dove $I$ rappresenta l’insieme dei contatori
Ogni sottoinsieme gode delle seguenti caratteristiche: ^c4a300
-   $A_i≠\varnothing, \forall i\in I$;
-   $A_i\cap A_j= \varnothing, \forall i≠j$;
-   $\displaystyle{\bigcup_{i\in I}A_i=A}$ 
  
*Osservazione*: Data una relazione di equivalenza, l’insieme delle classi di equivalenza costituisce una partizione di $A$ (per tutti i motivi precedenti). Viceversa, data una partizione $A=\{A_i,\forall i\in I\}$, appartenere allo stessi $A_i$ è una relazione di equivalenza.

Esempio:
	Sia $A=\mathbb{Z}$ con la Relazione di Equivalenza essere congrui ad $a$ con modulo $n$ . L’insieme $A_{/\sim}$ può essere indicato con $\mathbb{Z}_{/n}$ per cui: 
	$\mathbb{Z}_{/n}$= Relazione di Equivalenza di essere congrui ad $a$ di modulo $n$
		Con $n=2$ si ha che $\mathbb{Z}_{/2}=\{[0];[1]\}$
		Con $n=3$ si ha che $\mathbb{Z}_{/3}=\{[0];[1];[2]\}$
		Con qualsiasi $n$ si ha che $\mathbb{Z}_{/n}=\{[0];[1];[2];...;[n-1]\}$

**Collegamento tra qualsiasi funzione/relazione**: Siano $X,Y$ due insiemi, una relazione $f\subseteq X\times Y$ (funzione interpretata come relazione) è una funzione o una applicazione se:$$\forall x\in X, \exists!y\in Y:(x,y)\in f$$In questo caso si scrive $y=f(x)$ oppure $f:X\rightarrow Y$ ^fa3b0c

*Osservazione*: Normalmente una relazione di questo genere viene chiamata “Applicazione”, ma se si ha che $Y\sim \mathbb{R}/\mathbb{R}^2$ allora viene definita “Funzione”

**Definizione di Funzione Iniettiva**: Un’applicazione $f:X\rightarrow Y$ è definita “Iniettiva” se “ad elementi diversi sono associati elementi diversi”, cioè che se $f(a')=f(a)\Rightarrow a'=a$ ^7e3bca

Esempio:
	$f:\begin{matrix}{\mathbb{Z}\rightarrow \mathbb{Z}} \\ {a\mapsto 2a} \end{matrix}$ $\; f(a)=2a$ è una funzione iniettiva

**Definizione di Immagine**: Dati $f:X\rightarrow Y$, si può definire l’Immagine di $f$:$$Im(f)=\{y\in Y\; |\; \exists x\in X:f(x)=y\}$$“Gli elementi di y che vengono da qualche elemento di X” ^587026

**Definizione di Funzione Suriettiva**: Un’applicazione $f:X\rightarrow Y$ è definita “Suriettiva” se $Y=Im(f)$ ^192a42

Esempio:
	$p:\begin{matrix}{\mathbb{R}\rightarrow \mathbb{R}}\\ {(x;y)\mapsto x}\end{matrix}$$\quad p(x,y)=x$ è una proiezione
	$π:\begin{matrix}{A\rightarrow A_{/π}}\\{a\mapsto[a]}\end{matrix}$ $π$ è una trasformazione canonica (suddivisione in classi)

**Definizione di Funzione Biettiva**: Un’applicazione $f:X\rightarrow Y$ è biunivoca se è Suriettiva e Iniettiva, cioè se per ogni $y\in Y$ esiste ed è unico $x\in X$ tale che $f(x)=y$. In questo caso è definita anche l’applicazione inversa tale che:
$f^{-1}:\begin{matrix}{Y\rightarrow X}\\ {y\mapsto f^{-1}(y)}\end{matrix}$ , ossia che $x\in X$ è l’unico x tale che $y=f(x)$ ^daad69

Esempi:
	$d:\begin{matrix}{X\rightarrow X}\\ {x\mapsto x}\end{matrix}$
	$g:\begin{matrix}{\mathbb{Z}\rightarrow \mathbb{Z}}\\ {a\mapsto a+1} \end{matrix} \; \Leftrightarrow \; g^{-1}:\begin{matrix}{\mathbb{Z}\rightarrow \mathbb{Z}}\\ {b\mapsto b-1}\end{matrix}$  

**Definizioni di Composizioni**: Dati gli insiemi $X,Y,Z$ e le funzioni $f:X\rightarrow Y$ e $g:Y\rightarrow Z$ e si ha che $$X\xrightarrow{f} Y\xrightarrow{g} Z\Rightarrow x\mapsto f(x)\mapsto g(f(x))$$allora è possibile comporle: $g\circ f:X\rightarrow Z$ oppure $z=g(f(x))$ o $z=g\circ f(x)$ ^dfdf4e

*Osservazione*: Se si ha che $f:X\rightarrow Y$ è biunivoca allora:
- $f^{-1}\circ f$ è un’identità di x
- $f\circ f^{-1}$ è un’identità di y

*Osservazione*: In generale la composizione non è biunivoca

Esempio: 
	$f(x)=2x\quad  g(x)=x+1\quad  g\circ f≠f\circ g$

Esempi di funzioni Suriettive e non e Iniettive e non (su $f(x)=x^2$):
	$f_1=\mathbb{R}\rightarrow\mathbb{R}$ non iniettiva né suriettiva
	$f_2=[0;+∞)\rightarrow \mathbb{R}$ solo iniettiva
	$f_3= \mathbb{R}\rightarrow [0;+∞)$ solo suriettiva
	$f_4=[0;+∞)\rightarrow [0;+∞)$ biettiva
	(Tutto sta nel cambiare il dominio e il codominio)

Posso “curare” la mancanza di Suriettività di una funzione $f:X\rightarrow Y$ “sostituendo” $y$ con $f(x)$
Posso “curare” la mancanza di Iniettività di una funzione $f:X\rightarrow Y$ “identificando” tra loro elementi che vanno nella stessa $y$: introduco quindi una relazione di equivalenza $x1\sim x2\Leftrightarrow f(x1)=f(x2)$ e sostituisco $X$ con $X_{/\sim}$.  ^029a5e

Esempio:
	$f: \begin{matrix}{X\rightarrow  Y}\\ {x \mapsto f(x)}\end{matrix}$
	Con le trasformazioni $π$ e $J$ diventa
	$f:\begin{matrix}{X_{/\sim} \rightarrow Im(f)}\\ {[x] \mapsto f(x)}\end{matrix}$  
****