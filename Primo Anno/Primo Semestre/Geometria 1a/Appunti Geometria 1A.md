---
banner: Images/c4030b0d68d93fce9fca83796fcce15b.jpg
sticker: emoji//1f4d6
---
## Definizioni Generali

>[!def] Definizione di Anello
Un anello è un insieme $(A,+,\cdot)$ tali che sono valide le proprietà associativa e commutativa dell’addizione, esista un elemento neutro “0” e $\forall a\in A,\exists(-a)\in A$. Per essere tale si richiede inoltre che la moltiplicazione risulti distributiva alla somma. 

Se valgono anche le proprietà della moltiplicazione, allora l’anello prende ulteriori nomi:
-   è definito Anello Commutativo se la moltiplicazione risulta commutativa;
-   è definito Anello Associativo se la moltiplicazione risulta associativa;
-   è definito Anello con Unità se è presente l’elemento neutro della moltiplicazione.

**Esempi**:
	$\mathbb{Z}\subset \mathbb{Q}\subset \mathbb{R}$ sono anelli

>[!def] Definizione di Sottoanello 
Dato un anello $(A,+,\cdot)$, si chiama sottoanello di $A$ un sottoinsieme non vuoto $S\subseteq A$ tale che: 
>-   $S$ è chiuso rispetto a $+$ e $\cdot$ (Ossia se calcolo in S ottengo risultati in S)
>-   $\forall x\in S, \exists (-x)\in S$ (il fatto che è specificato che non è vuoto implica che $0\in S$)
>
*Se non fosse stato specificato sarebbe stato richiesto*
Poi le caratteristiche da Anello a Sottoanello vengono trasferite

**Esempi di anelli non numerici**:
	Consideriamo un intervallo $I\subset \mathbb{R}$ e l’insieme delle funzioni $\{f:I\rightarrow \mathbb{R}\}=A$. Per definire $A$ un anello devo definire una somma ed un prodotto che rispecchi le sue proprietà. Quindi $(f+g)(x)=f(x)+g(x)$. Visto che $f(x)+g(x)$ è commutativa allora lo è anche $(f+g)(x)$. Ciò risulta valido anche la associativa
	Per l’elemento neutro posso affermare che $f_0:I\rightarrow \mathbb{R}=x \mapsto 0$. Per l’inverso invece posso definire che $(-f)(x)=-f(x)$. Per quanto riguarda il prodotto posso definire che $(f\cdot g)(x)=f(x)\cdot g(x)$. Così facendo posso renderla valida anche la proprietà associativa. Risulta distributiva? $f(g+h)=f\cdot g+g\cdot h\Leftrightarrow \forall x\in I,f(g+h)(x)=(f\cdot g+f\cdot h)(x)$
	(Due funzioni sono uguali se sono per ogni punto sono uguali le sue immagini)
	$f(x)(g+h)(x)=(f\cdot g)(x)+(f\cdot h)(x); \; f(x)(g(x)+h(x))=f(x)g(x)+f(x)h(x)$
	Visto che quest’ultimo rappresenta un prodotto tra numeri razionali si può dire che l’uguaglianza conferma la proprietà distributiva della moltiplicazione sull’addizione.
	Così facendo, viene ritenuta valida anche la proprietà commutativa della moltiplicazione.
	Definendo $f_1:I\rightarrow \mathbb{R}=x \mapsto 1$ si ottiene l’elemento neutro della moltiplicazione.
	-----
	Un altro esempio di anelli non numerici è quello dei polinomi
	Sia $\mathbb{R}[x]=\{(x)=a_0+a_1\cdot x+a_2\cdot x^2+...+a_n\cdot x^n|a_i\in I, n\in \mathbb{N}\}$. In questo anello sia la somma sia la moltiplicazione sono verificate e applicate come con una normali somme e prodotti tra polinomi. ^fc9cd1

>[!def] Definizione di Gruppo Abeliano
Se dovessi avere un anello in cui manca un’operazione, si parla allora di gruppo abeliano (additivo se manca la moltiplicazione, moltiplicativo se manca l’addizione).
I gruppi abeliani sono tali se verificano le proprietà commutativa e associativa, ammettono un elemento neutro (0 per addizione e 1 per moltiplicazione) e vi è un opposto per i gruppi abeliani additivi / inverso per i gruppi abeliani moltiplicativi: comunque sia manca la proprietà distributiva. Quindi si ha $(A,+)$ oppure $(A,\cdot)$ ^f8f949

**Esempio di gruppo abeliano additivo**:
	$\mathbb{Q}=\{(a,b)|a,b\in\mathbb{Q}\}$
	Possiamo definire $\mathbb{Q}^2$ un gruppo abeliano additivo ponendo $(a,b)+(a',b')=(a+a',b+b')$, risultano quindi verificate le proprietà commutativa e associativa in quanto $a,b\in\mathbb{Q}$ nel quale queste proprietà sono verificate. Si può poi porre l’elemento neutro $(0,0)$, tuttavia non è un anello in quanto manca la moltiplicazione

>[!def] Definizione di Campo $\mathbb{K}$ 
Un campo $\mathbb{K}$ è un anello commutativo, associativo, con unità $(1)$, in cui ogni elemento non nullo $a≠0$ ha un suo inverso $a^{-1}$ Si può quindi dedurre che ogni campo è un anello, ma non viceversa ^5eaece

**Esempi di Campo**:  
	$\mathbb{Z}$, l’anello delle funzioni $\{f:I\rightarrow \mathbb{R}\}=A$ per come l’abbiamo prima definito, ma anche $\mathbb{Z}_{/n}$ purché $n$ non sia primo (ci sarebbero i divisori di 0), e l’insieme dei polinomi (nel quale non ci sono inversi)

**Proposizione**: L’anello  $\mathbb{Z}_{/n}$ è un campo se e solo se n è primo
***Dimostrazione***:
	$\Rightarrow$) vista con il prof Moci
	$\Leftarrow$) sia ora $n=p$, ossia un numero primo. L’obiettivo è quello di verificare che se $[a]\in \mathbb{Z}_{/p}$ allora  $[a]^{-1}\in \mathbb{Z}_{/p}$, ossia un elemento che moltiplicato per $[a]$ dia $1$
	Consideriamo gli elementi dell’insieme $\{[0];[a];[2a];...;[(p-1)a]\}$, dobbiamo prima verificare che tutti gli elementi siano tutti diversi tra loro. La domanda che devo farmi è “ci sono elementi $k,$l con $1≤k,l≤p-1$ tali che $[ka]=[la]$?” $[ka]=[la]\Rightarrow [ka-la]=0=[(k-l)\cdot a]=0\Rightarrow p|(k-l)\cdot a$
	affinché la cosa sia tale si deve avere $p|(k-l)\vee p|a$
	-  $p|a$ è impossibile perché $[a]≠[0]$
	- $p|(k-l)$ è anche impossibile perché $1-p<k-l< p-1$
	Quindi sono sicuro di aver preso tutti gli elementi $[ka]≠[la]$ ciò mi permette di dire che tra di essi c’è $[1]$ quindi $1≤k≤p-1$ t.c. $[k\cdot a]=[1]\Rightarrow [k]\cdot[a]\Rightarrow[k]=[a]^{-1}$

**Esempio di Campo**:
	Consideriamo l’insieme $\mathbb{Q}[\sqrt2]=\{a+b\sqrt2|a,b\in \mathbb{Q}\}\in \mathbb{R}$
	Voglio crearci una struttura di Campo. Un campo è un anello che gode della proprietà dell’inverso, per ogni elemento non nullo. Definiamo le seguenti operazioni su $\mathbb{Q}[\sqrt2]$
	$[+]$ $(a+b\sqrt2)+(c+d\sqrt2)=a+c+(b+d)\cdot\sqrt2$, dove $(a+c)$,$(b+d)\in\mathbb{Q}$, con  $a,b,c,d\in\mathbb{Q}$
	$[\cdot]$ $(a+b\sqrt2)+(c+d\sqrt2)=ac+2bd+(ac+bd)\cdot \sqrt2$, dove $(ac+2\cdot bd),(ac+bd)\in\mathbb{Q}$
	Una volta verificate queste, si può dire che sono presenti anche un elemento neutro e un opposto.
	Il vero problema sorge nel trovare un inverso tale che appartenga a $\mathbb{Q}[\sqrt2]$, ossia che $\forall z\in \mathbb{Q}$, $z≠0$, $\exists z^{-1}\in\mathbb{Q}[\sqrt2]$, quindi: 
	$a+b\sqrt2=0\Rightarrow a=-b\sqrt2\Rightarrow a=b=0$ *In altri casi si otterrebbe che una frazione = $\sqrt2$*
	Supponendo che $a+b\sqrt2≠0$, sappiamo che è invertibile in $\mathbb{R}$, cioè che $\displaystyle{\frac{1}{a+b\sqrt2}=\frac{a-b\sqrt2}{a^2-2b^2}=\frac{a}{a^2-2b^2}-\frac{b}{a^2-2b^2}\sqrt2}$ 
	la soluzione è plausibile in quanto da prima si conoscono già le condizioni di esistenza ($a≠0,b≠0$) ed è scritto nella forma $a+b\sqrt2$.
	Di conseguenza abbiamo dimostrato che $\mathbb{Q}[\sqrt2]$ è un sottocampo di $\mathbb{R}$

>[!def] Definizione di Sottocampo 
Un Sottocampo $S$ di un Insieme $X$ è un sottoinsieme che gode delle seguenti proprietà: ^c0da6f
>-   è chiuso rispetto alla somma (il risultato $\in S$);
>-   è chiuso rispetto alla moltiplicazione (risultato in $\in S$);
>-   $\forall z\in S,\exists -z\in S\Rightarrow 0\in S$;
>-   $\forall z\in S, z≠0, \exists z^{-1}\in S\Rightarrow 1\in S$;

L’insieme $\mathbb{Q}[\sqrt2]$ viene definito **Estensione di Campo** $\mathbb{Q}$ con $[\sqrt2]$: consiste nell’aggiungere il valore $\sqrt2$ all’insieme $\mathbb{Q}$. Questo è lo stesso principio dell’insieme dei numeri complessi $C$, infatti: $\mathbb{C}=\mathbb{R}[i]$ dove si prendere per definizione che $i=-1$ ^e1ac1f

**Osservazione**: Sia $\mathbb{K}$ un campo con caratteristica $=0$ (ossia la somma di tutte le unità non porta mai 0, allora si ha che il campo $\mathbb{K}$ contiene una copia di $\mathbb{N}$. Essendo, tuttavia un campo, si ha che $\forall x\in \mathbb{K}, \exists -x\in \mathbb{K}$, quindi $\mathbb{K}$ contiene una copia di $\mathbb{Z}$. Tuttavia. sempre essendo un campo, si ha che $\forall x\in \mathbb{K}, x≠0, \exists x^{-1}\in \mathbb{K}$, quindi $\mathbb{K}$ contiene una copia di $\mathbb{Q}$. Infatti $\mathbb{Q}$ rappresenta il campo completo più piccolo contenuto in ogni campo di caratteristica $=0$. Analogamente un campo di caratteristica p contiene una copia di $\mathbb{Z}_{/p}$
****
## Primi passi sugli Spazi Vettoriali

>[!def] Definizione di Spazio Vettoriale: 
Dato $\mathbb{K}$, si dice $\mathbb{K}-\text{spazio vettoriale}$ oppure spazio vettoriale su un insieme $\mathbb{K}$ un insieme $V$ con 2 operazioni dette, rispettivamente, somma e prodotto per scalari t.c.
$[+]$ $\begin{matrix}{V\times V\rightarrow V}\\ {(v;w)\mapsto v+w}\end{matrix}$, operazione interna a $V$
Quindi si può dire per ora che $(V,+)$ è un gruppo abeliano additivo:
>	-   vale la proprietà commutativa;
>	-   vale la proprietà associativa;
>	-   elemento neutro $0_V$ detto “vettore nullo”
>	-   $\forall v\in V,\exists -v\in V\; t.c.\; v+(-v)=0$
$[\cdot]$ $\begin{matrix}{\mathbb{K}\times V\rightarrow V}\\ {(\alpha ;v)\mapsto v}\end{matrix}$ , questa non è un’operazione interna perché $\forall \alpha \in \mathbb{K}; \forall v \in V$
Il prodotto per scalari gode di alcune proprietà:
>	-   $1\times v=v \quad \forall v\in V$
>	-   $\alpha\cdot(\beta v)=(\alpha \cdot \beta )\cdot v \quad \forall \alpha , \beta \in \mathbb{K}, \forall v\in V$ *È molto simile ad una proprietà associativa, ma non è associativa*
>	-   $(\alpha +\beta)\cdot v=\alpha\cdot v+\beta\cdot v\quad \forall \alpha, \beta \in \mathbb{K}, \forall v\in V$ *Da notare come la somma tra $\alpha +\beta$ è un somma in $\mathbb{K}$, mentre la somma tra $v+v$ è una somma in $V$*
>	-   $\alpha\cdot(v+w)=\alpha \cdot v+\alpha \cdot w\quad  \forall \alpha \in \mathbb{K},  \forall v,w\in V$
Gli elementi $v$ di $V$ sono detti vettori, gli elementi di $\mathbb{K}$ sono detti scalari.

**Osservazioni**:
1.  Uno spazio vettoriale non può mai essere vuoto (tanto che lo zero esiste e si chiama *vettore nullo*)
2.  $0\cdot v=0_V$ infatti: $0\cdot v=(0+0)\cdot v=0\cdot v+0\cdot v$. Ad entrambe le parti posso sommare l’opposto di $0\cdot v=-0\cdot v$; $0_V:=0\cdot v+(-0\cdot v)=0\cdot v+0\cdot v+(-0\cdot v)$ ma $0\cdot v- 0\cdot v=0_V\Rightarrow 0_V:=0\cdot v+0_V=0\cdot v$
3.  $-1\cdot v=-v$ infatti: $v+(-1\cdot v)=(1-1)\cdot v=0\cdot v=0_V$

Non posso dire che si tratta di un anello perché ancora non posso moltiplicare

**Esempio 0**:
	Spazio banale $\{0\cdot v\}=\{0\}$. Dato un qualsiasi campo $\mathbb{K}$, $0\cdot v+0\cdot v=0\cdot v$ = Tutto fa zero: $0\cdot v=0\cdot v$ | per questo è banale. Lo spazio banale può essere definito come uno spazio chiuso in quanto tutte le operazioni restano all’interno dell’insime

**Esempio 1**:
	Sia n un numero naturale $> 1$, sia $\mathbb{K}$ un campo qualsiasi. Indichiamo con $\mathbb{K}^n$ l’insieme di n-uple ordinate di elementi in $\mathbb{K}$:
	$\mathbb{K}^n=\left\{\left(\; \begin{array}{c} {a_1}\\ {\vdots}\\ {a_n} \end{array} \; \right)|\; a_i\in \mathbb{K}\right\}$
	Definiamo su $\mathbb K^n$ una struttura $\mathbb{K}-spazio\; vettoriale$ nel modo seguente:
	$[+]$ $\left(\; \begin{array}{c} {a_1}\\ {\vdots}\\ {a_n} \end{array} \; \right)+\left(\; \begin{array}{c} {b_1}\\ {\vdots}\\ {b_n} \end{array} \; \right)=\left(\; \begin{array}{c} {a_1+b_1}\\ {\vdots}\\ {a_n+b_n} \end{array} \; \right)$
	$[\cdot]$    $\alpha \cdot \left(\; \begin{array}{c} {a_1}\\ {\vdots}\\ {a_n} \end{array} \; \right)=\left(\; \begin{array}{c} {\alpha \cdot a_1}\\ {\vdots}\\ {\alpha \cdot a_n} \end{array} \; \right)$
	Tutto ciò funziona in quanto tutti i risultati sono all’interno del campo
	L’elemento nullo: $\left(\; \begin{array}{c} {0_1}\\ {\vdots}\\ {0_n} \end{array} \; \right)$, di conseguenza l’opposto:
	$-\left(\; \begin{array}{c} {a_1}\\ {\vdots}\\ {a_n} \end{array} \; \right)=\left(\; \begin{array}{c} {-a_1}\\ {\vdots}\\ {-a_n} \end{array} \; \right)$

Molto simile all’esempio precedente è il campo-spazio vettoriale $\mathbb{R}^2$
	$v:\left(\; \begin{array}{c} {2}\\ {0} \end{array} \; \right)$ e $w:\left(\; \begin{array}{c} {1}\\  {1} \end{array} \; \right)$ rappresentano punti di arrivo (è un vettore applicato in 0).
	Sulla base di quanto definito prima si ha che:
	$v+w:\left(\; \begin{array}{c} {3}\\ {1} \end{array} \; \right)\in \mathbb{R}^2$  $-v:\left(\; \begin{array}{c} {-2}\\ {0} \end{array} \; \right)$   $2\cdot (v+w):\left(\; \begin{array}{c} {6}\\ {2} \end{array} \; \right)$

>[!def] Definizione di Moltiplicazione per uno Scalare
Moltiplicare un vettore per uno scalare significa trovare un altro vettore situato sulla stessa retta, di lunghezza e verso diversi.

>[!def] Definizione di Somma di Vettori 
>Sommare due vettori significa trovare un terzo vettore che sta su un’altra retta. 

>[!def] Definizione di Matrice 
>Siano $m,n \in \mathbb{N}$ e sia $\mathbb{K}$ un campo. Si chiama matrice $m\times n$ a coefficienti (o entrate) una tabella di $m\cdot n$ elementi di $\mathbb{K}$ collocati su $m$ righe e $n$ colonne. 

Esempio:
	$\left( \; \begin{matrix} {2} & {1} & {-1}\\ {\frac{1}{2}} & {\sqrt2} & {0} \end{matrix} \; \right)$ è una matrice $2\times3$ a coefficienti reali

L’elemento che si trova all’incrocio nella posizione i-esima riga con la j-esima colonna viene definito come “elemento di posto $i-j$"
In generale si indica una matrice con $A=(a_{i,j})$ una matrice di termine $a_{i,j}$ di posto $i,j$
$A=\left( \; \begin{matrix} {a_{1,1}} & {a_{1,2}} & {...} & {a_{1,n}} \\ {a_{2,1}} & {a_{2,2}} & {...} & {a_{2,n}} \\ {\vdots} & {\vdots} & {} & {\vdots} \\ {a_{m,1}} & {a_{m,2}} & {...} & {a_{m,n}} \end{matrix} \; \right)$ = $a_{i,j}\in \mathbb{K}$
Possiamo indicare con $M_{m,n}(\mathbb{K})$ l’insieme di tutte le matrici mn a coefficienti in K

*Piccola annotazione*: Non si può dire che $M_{m,n}(\mathbb{K})\subseteq \mathbb{K}$ perché i due insiemi contengono categorie di elementi diversi (matrici/numeri), così come $\mathbb{R}^2$ e $\mathbb{R}$ (coppie/numeri)

**Esempio 2**:
	Definiamo su $M_{m,n}(\mathbb{K})$, una struttura di $\mathbb{K}-spazio\; vettoriale$ nel modo seguente. Dati $A$ e $B\in M_{m,n}(\mathbb{K})$ si ha che $A+B=C\Rightarrow C=(c_{ij})=(a_{ij}+b_{ij})$, e dato $\forall \alpha \in \mathbb{K}$ si ha $\alpha \cdot A=(\alpha \cdot a_{ij})$

**Esempio**:
	$-\frac{1}{2}\cdot\begin{pmatrix} {4} & {1} & {\sqrt2} \\ {3} & {-1}&  {2} \end{pmatrix}=\begin{pmatrix} {-2} & {-\frac{1}{2}} & {-\frac{\sqrt2}{2}} \\ {-\frac{3}{2}} & {\frac{1}{2}} & {-1} \end{pmatrix}$

Esiste anche l’elemento neutro della Matrice $M_{mn}=\begin{pmatrix}0 & ... & 0\\ \vdots & & \vdots\\ 0 & ... & 0\end{pmatrix}$ 
Esiste anche l’opposto della matrice, ossia una matrice tale che tutti i suoi elementi sono opposti della matrice di partenza

>[!def] Definizione di Matrice Quadrata 
Se in una matrice $M_{mn}(\mathbb{K})$ si ha che $m=n$, ossia ha lo stesso numero di righe e di colonne, allora si può scrivere come $M_m(\mathbb{K})$, e si definisce come una Matrice Quadrata. ^34b9f5

**Osservazione**: $M_{n,1}(\mathbb{K})\simeq \mathbb{K}^n$ (si assomigliano come spazi vettoriali). Non si può però dire che sono uguali perché comunque uno è un insieme di matrici l’altro di vettori (insiemisticamente sono due oggetti diversi)
$M_{n,1}=\left\{\left( \; \begin{array}{c} {a_{1,1}}\\ {\vdots}\\ {a_{n,1}}\end{array} \; \right)|a_i\in \mathbb{K}\right\}\simeq \mathbb{K}^n$ (vengono scritti e rappresentati in maniera simile)
Sono simili tra loro anche $M_{n,1}(\mathbb{K})$ e $M_{1,n}(\mathbb{K})$, cambia solo il modo in cui vengono scritti. *(Il primo in verticale in orizzontale, attraverso una trasposizione si equivalgono)*

Un’altra somiglianza può essere vista con $M_{m,n}(\mathbb{K})$ e $K^{m\cdot n}$, in quanto entrambi contengono nm elementi, ma è diversa la loro disposizione, così come $M_{m,n}(\mathbb{K})$ e $M_{n,m}(\mathbb{K})$ (sempre attraverso una trasposizione).

Infatti in entrambi i casi mantengo costante l’ordine (ossia le operazioni di somma e moltiplicazioni per scalari tengono conto dell’ordine).

**Esempio 3**: 
	$\mathbb{K}[x]$ rappresenta il campo dei polinomi. Abbiamo già definito in precedenza la somma di polinomi. 
	$\forall \alpha \in \mathbb{K}, p(x):a_0+a_1\cdot x+a_2\cdot x^2+...+a_i\cdot x^i,i\in I\Rightarrow p(x): \alpha\cdot a0+\alpha\cdot a_1x+\alpha\cdot a_2x^2+...+\alpha\cdot a_ix^i, i\in I$
	Ora che è definita anche la moltiplicazione per scalari, possiamo definirlo come uno spazio vettoriale. Volendo potremmo definirlo come un anello, definendo le moltiplicazioni per altri polinomi, ma non è necessario per trattarlo come uno spazio vettoriale (infatti non è consentito).
	Non è inoltre possibile fissare un grado un grado x del polinomio, infatti è possibile che il grado diminuisca se si annullano i due addendi con il grado più alto.

*Osservazione*: Uno spazio vettoriale $\mathbb{K}[x]$ “assomiglia” in qualche modo a $\mathbb{K}^n$ per qualche n? No. Infatti gli elementi di $\mathbb{K}^n$ dipendono da n variabili contenuti in $\mathbb{K}$, invece, $\mathbb{K}[x]$  contiene qualsiasi polinomio di qualsiasi grado, di conseguenza dipende da infinite variabili, libere (non la x, ma il coefficiente)

**Osservazione 2**: Notiamo che sommando 2 polinomi di grado $≤k$ (fissato), si ottiene un polinomio di grado minore o uguale a $k$ ^6bd6f2

>[!def] Definizione di sottospazio vettoriale:
Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$. Un Sottoinsieme $S$ di $V$, con $S≠\varnothing$, si chiama Sottospazio Vettoriale di $V$ se è chiuso rispetto alla somma e chiuso rispetto al prodotto per scalare in $V$ cioé:
$[+]\;  v_1,v_2\in S, v_1+v_2\in S$
$[\cdot] \; \; \forall \alpha \in \mathbb{K}, \forall v\in S, \alpha\cdot v\in S$ 

**Controesempio**: 
	- L’insieme dei polinomi di coefficiente 3 non è un sottospazio perché non è chiuso rispetto alla somma 
	- L’insieme costituito da $\displaystyle{\binom{1}{1}}$ non è un sottospazio vettoriale di $\mathbb{K}^2$ perché è privo di un vettore nullo e non ha un vettore opposto.

Osserviamo infatti che una condizione necessaria affinché $S\subseteq V$ è che ci sia $0_v$ in $S$. Infatti $S≠\varnothing$ per definizione, quindi $\exists v\in S$, ma essendo chiuso rispetto agli scalari, $\exists -v\in S$
Di conseguenza si ha che $v+(-v)=0_v\in S$

**Esempio**:
	L’insieme dei polinomi di grado $≤k$ con $k\in \mathbb{N}$ fissato è un sottospazio vettoriale di $\mathbb{K}[x]$
	-   Abbiamo già dimostrato del perché è chiuso rispetto alla somma
	-   Analogamente si ha che nella moltiplicazione tra uno scalare e il polinomio il grado non può salire.

$S=\left\{\begin{pmatrix} b & 0\\ a & 0 \end{pmatrix}\in M_2(\mathbb{K})\right\}$ è un sottospazio di $M_2(\mathbb{K})$
$[+]\quad \begin{pmatrix} b & 0\\ a & 0 \end{pmatrix}+\begin{pmatrix} {b'} & 0\\ {a'} & 0 \end{pmatrix}=\begin{pmatrix} {b+b'} & 0\\ {a+a'} & 0 \end{pmatrix}\qquad [\cdot] \alpha\cdot \begin{pmatrix} b & 0\\ a & 0 \end{pmatrix}=\begin{pmatrix} {\alpha \cdot b} & 0\\ {\alpha\cdot a} & 0 \end{pmatrix}$
Si ha che entrambi i risultati sono appartenenti a S

L’idea di creare dei sottospazi, così come dei sottoinsiemi è nata dall’idea di assiomatizzare qualsiasi cosa, in modo da studiare contemporaneamente vari elementi simili tra loro in una volta soltanto.

**Osservazione 3**: Se $S$ è sottospazio di $V$. La restrizione ad S delle operazioni di $V$ definisce su $S$ una struttura di spazio vettoriale $K_{≤m}[x]$ è un sottospazio del polinomi in $x$ a coefficiente in $\mathbb{K}$ di grado $≤m \Rightarrow \mathbb{K}_{≤m}[x]=\{p(x):a_0+a_1x+a_2x^2+...+a_mx^m, m\in I\}$ Si può dire che $\mathbb{K}_{≤m}[x]\simeq \mathbb{K}^{m+1}$, in quanto dipende solamente dai coefficienti del polinomio

**Osservazione**: Sia $V$ uno spazio vettoriale, $V$ ha almeno 2 sottospazi, uno $\{0_v \}$ e uno $V$ *(O è il più piccolo possibile o è il più grande possibile)*

**Esempio**: 
	Sia $\mathbb{K}=V$ (caso degenere in cui il campo scalare e quello vettoriale coincidono) (come $K-spazio\; vettoriale$). Si ha che gli unici sottocampi di V sono $\{0_v\}$ e $V$ stesso. Infatti vi sono il caso in cui $S$ (sottospazio) sia:
	- S è banale, ossia $S=\{0\}$;
	- S non è banale, ossia $\exists k\in S, k≠0$; visto che $k\in \mathbb{K}$ (e $\mathbb{K}$ è campo per Ip) allora k è invertibile con $k≠0$. Poiché $S$ è un campo chiuso rispetto al prodotto per scalari si ha che $\displaystyle{S\ni \frac{\alpha}{k}\cdot k\Rightarrow S\ni \forall \alpha\Rightarrow S\supseteq \mathbb{K}\Rightarrow S=\mathbb{K}}$, dove $k$ corrisponde allo scalare e $k$ al vettoriale ma avendo che coincidono si possono vedere come la stessa identità.

**Osservazione**: Dall’esercizio fatto (quaderno), si è dimostrato che l’unione di due sottospazi non è un sottospazio. 

**Proposizione**: Siano $S,T$ sottospazi di uno spazio vettoriale $V$, allora $S\cup T$ è sottospazio se e solo se $S\subseteq T\vee T\subseteq S$
***Dimostrazione***: 
	- Se $S\subseteq T\Rightarrow S\cup T=T$ verificato
	- Se  $T\subseteq S\Rightarrow S\cup T=S$ verificato
	- Se $S\subsetneq T$ e $T\subsetneq S$, si ha che $v\in S, v\notin T, w\in T, w\notin S$. Considero $v+w$ e mi chiedo se appartiene a $S\cup T$, ciò significa vedere se $v+w\in S\vee v+w\in T$. $v+w\in S$ non può capitare perché $S$ è sottospazio $\Rightarrow v+w\in S, v+w+(-v)\in S$, ma $w\notin S$. (Poi in maniera analoga si fa lo stesso con w e T). Quindi $S\cup T$ non è chiuso rispetto alla Somma. Non è un sottospazio

**Osservazione**: Sia $V$ uno spazio vettoriale e $S$ un suo sottospazio, si possono distinguere 3 casi:
1.  $\forall v,w\in S, v+w\in S$
2.  Se prendo uno dentro e uno fuori, $v+w\notin S$
3.  Se prendo entrambi fuori, possono capitare entrambi i casi 

**Esempio**: 
	$V=\mathbb{K}^2\quad S=\left\{\left. \begin{pmatrix}0\\ y\end{pmatrix}\; \right| \; y\in\mathbb{K}\right\}\in\mathbb{K}^2$ 
	$v_1=\begin{pmatrix}1\\3\end{pmatrix}+v_2=\begin{pmatrix}0\\ -3\end{pmatrix}=\begin{pmatrix}1\\0\end{pmatrix}\notin S$ 
	Se fosse stato $v_2=\begin{pmatrix}0\\4\end{pmatrix}$ la somma non avrebbe fatto parte del sottospazio

*Domanda*: Abbiamo visto che $S$ e $T$ sono sottoinsiemi di uno spazio vettoriale $V$, tali che $S\subsetneq T$ e $T\subsetneq S$, allora $S\cup T$ non è sottospazio di $V$. Qual è il più piccolo sottospazio di $V$ che contiene $S\cup T$?
$V$ è un sottospazio di sé stesso che contiene l’unione.
Il più piccolo sottospazio che contiene l’unione è l’insieme che è chiuso rispetto alla somma.

>[!def] Definizione di Somma di Sottospazi: 
Dati $S$ e $T$, sottospazi del $\mathbb{K}-\text{spazio vettoriale}$ $V$, si chiama somma di $S$ e $T$ e si indica con $S+T$ il sottoinsieme di $V$ così definito: $S+T=\{v=s+t\; |\; s\in S, t\in T\}$ ^a4c99e

Si osserva che $S\cup T\subseteq S+T$

**Osservazione**: Una volta verificato che $S+T$ è un sottospazio vettoriale di $V$, possiamo affermare che esso è il più piccolo (rispetto all’unione) fra tutti i sottospazi di $V$, contenente $S\cup T$.

Infatti se $W$ è un sottospazio di $V$, t.c. $S\cup T\subseteq W$, allora, per chiusura di $W$ rispetto alla somma, $W$ deve contenere tutte le possibili somme di tutti gli elementi di $S$ e $T$, cioè $W\supseteq S+T$
Se $S\subseteq T\Rightarrow S+T=T$

**Proposizione**: Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$, siano $S$ e $T$ sottospazi di $V$. Allora $S+T$ è un sottospazio di $V$ 
$S+T=\{v=s+t\; |\; s\in S, t\in T\}\supseteq S\cup T\supseteq S\cap T$
- $0_v=0_v(\in S)+0_v(\in T)\leftarrow 0_v\in S\cap T$, perché sono sottospazi
- Chiusura rispetto alla somma:
	Siano $v_1=s_1+t_1$ e $v_2=s_2+t_2$, allora $v_1+v_2=s_1+t_1+s_2+t_2=\underbrace{s_1+s_2}_{\in S}+\underbrace{t_1+t_2}_{\in T}$ 
	Quindi risulta chiuso rispetto alla Somma
- Chiusura rispetto al prodotto per scalari 
	Sia $\alpha \in \mathbb{K}$ e $v=s+t\in S+T$,     $\alpha\cdot v=\underbrace{\alpha\cdot s}_{\in S}+\underbrace{\alpha\cdot t}_{\in T}$
	Quindi risulta chiuso rispetto al prodotto per scalari

**Esempio**:
	$S=\left\{\left.\begin{pmatrix}x\\ 0\end{pmatrix}\; \right|\; \in \mathbb{R}^2\right\}$    e     $T=\left\{\left. \begin{pmatrix}0\\ y\end{pmatrix}\; \right|\; \in \mathbb{R}^2\right\}$ 
	$S\cap T=\left\{ \begin{pmatrix}0\\0 \end{pmatrix}\right\}\qquad S\cup T=\left\{ \left. \begin{pmatrix}x\\ y\end{pmatrix}\in \mathbb{R}^2\; \right|\; x\cdot y=0\right\} \qquad S+T=\left\{\begin{pmatrix}x\\0\end{pmatrix}+\begin{pmatrix}0\\ y\end{pmatrix}\right\}=\left\{ \begin{pmatrix}x\\ y\end{pmatrix}\in \mathbb{R}^2\right\}=\mathbb{R}^2$ 
	Si ha che $S \cup T$ è l'unione degli assi cartesiani, mentre $S+T$ è tutto il piano

>[!def] Definizione di Somma Diretta: 
Dati due sottospazi $S$ e $T$ di $V$, $\mathbb{K}-\text{spazio vettoriale}$ di $V$, la somma di $S$ e $T$ si dice diretta e si indica con $S\oplus T$, se $S\cap T=\{0_v\}$ ^67f3de

**Esempio**:
	$\mathbb{R}\oplus\mathbb{R}\simeq\mathbb{R}^2 \Rightarrow s+t=(s,t)$

**Proposizione**: Siano $S$ e $T$ sottospazi di $V$ in somma diretta. Allora ogni vettore di $S\oplus T$ si scrive in *modo unico* come somma di un elemento di $S$ e di un elemento di $T$

>[!def] Definizioni sulle Matrici: 
Data una matrice quadrata $\begin{pmatrix} a & b \\ c & d\end{pmatrix}$, si definiscono: 
>- *Diagonale Principale* la diagonale che unisce il primo elemento in alto a sinitra all'ultimo elemento in basso a destra ($a\rightarrow d$)
>- *Triangolare Superiore* una matrice che ha tutti 0 nei termini posti sotto alla Diagonale Principale
>- *Triangolare Inferiore* una matrice che ha tutti 0 nei termini posti sopra alla Diagonale Principale
>- *Matrice Diagonale* una matriche che è sia Diagonale Superiore che Diagonale Inferiore

**Esempio**:
	In $M_2(\mathbb{K})$ consideriamo i sottoinsiemi $S=\left\{ \begin{pmatrix} a & b \\ 0 & c\end{pmatrix}\in M_2(\mathbb{K}) \right\}$ e $T=\left\{\begin{pmatrix} \alpha & 0 \\ \beta & \gamma\end{pmatrix}\in M_2(\mathbb{K})\right\}$. Osserviamo che sono sottospazi in $M_2(\mathbb{K})$ *(ossia chiusi rispetto alla somma e al prodotto per scalari)*. 
	La somma è diretta? $S\cap T$ non è uno spazio banale, quindi non c'è somma diretta
	Però si ha che $S+T=M_2(\mathbb{K})$.
	$\begin{pmatrix} 1 & 1 \\ -1 & 1\end{pmatrix}=\underbrace{\begin{pmatrix} 1 & 1 \\ 0 & -1\end{pmatrix}}_{\in S}+\underbrace{\begin{pmatrix} 0 & 0 \\ -1 & 0\end{pmatrix}}_{\in T}=\underbrace{\begin{pmatrix} 0 & 1 \\ 0 & 0\end{pmatrix}}_{\in S}+\underbrace{\begin{pmatrix} 1 & 0 \\ -1 & -1\end{pmatrix}}_{\in T}$
	In questo senso non si può scrivere in senso unico.

Si vede che la somma è diretta o meno dall'intersezione.
***Dimostrazione***:
	Se l'intersezione è banale, ciascuna delle somme è unica. 
	Supponiamo che $v\in s+t$ si scriva in due modi differenti, ossia come somma di un elemento s e di un elemento t, cioè: $v=s_1+t_1=s_2+t_2$, con $s_1,s_2 \in S$ e $t_1, t_2 \in T$
	Visto che sono sottospazi, la somma è chiusa, quindi $\underbrace{s_1-s_2}_{\in S}=\underbrace{t_2-t_1}_{\in T}$, ma risulta che $S\cap T=\{0_v\}$. Quindi la somma è diretta.
	Ciò significa che $s_1=s_2$ e $t_1=t_2$, quindi la scrittura risulta unica
	
***

## Combinazioni Lineari e Generatori

>[!def] Definizione di Combinazione Lineare: 
Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$, siano $v_1...v_n$ elementi di $V$ Si chiama combinazione lineare di $v_1...v_n$ ogni vettore di $V$ della forma $\alpha_1\cdot v_1+...+\alpha_n\cdot v_n$, con $\alpha_1...\alpha_n$ 

**Esempio**:
	Se $V$ è $\mathbb{K}^3$, con $v_1=\left( \; \begin {array}{c} {1} \\ {0} \\ {1} \end{array} \; \right)$ e $v_2=\left( \; \begin {array}{c} {0} \\ {-1} \\ {-1} \end{array} \; \right)$, le combinazioni lineari in $\mathbb{K}^3$ di $v_1$ e $v_2$ sono tutti i vettori della forma  $\alpha_1\cdot v_1+\alpha_2\cdot v_2=\left( \; \begin {array}{c} {\alpha_1} \\ {-\alpha_2} \\ {\alpha_1-\alpha_2} \end{array} \; \right)$ 

>[!def] Definizione di Sottospazio di $V$ Generato da $v_1,...,v_n$ 
Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$ e siano $v_1,...,v_n$ elementi di $V$, si chiama sottospazio di $V$ generato da $v_1,...,v_n$ e si indica con $Span\{v_1,...,v_n\}$ l'insieme di tutte le combinazioni lineari di $v_1,...,v_n$. I vettori $v_1,...,v_n$ $$Span=\{v_1,...,v_n\}=\left\{\left. \sum_{i=1}^n\alpha_1\cdot v_1\; \right| \;\alpha_1\in \mathbb{K}\right\}$$ ^b3d12d

**Osservazione**: $Span\{v_1...v_n\}$ per costruzione è un sottospazio vettoriale di $V$. 
- $0_v=0v_1+...+0v_n\in Span=\{v_1,...,v_n\}$
- $\displaystyle{\sum_{i=1}^k\alpha_i\cdot v_i+\sum_{i=1}^k\beta_i\cdot v_i=\sum_{i=1}^k(\alpha_i+\beta_i)\cdot v_i \in Span\{v_1,...,v_n\}}$ 
- $\forall \lambda \in \mathbb{K}$ e $\forall \sum_{i=1}^k\alpha_i\cdot v_i \in Span\{v_1...v_n\}$: $\displaystyle{\lambda \cdot \sum_{i=1}^k\alpha_i\cdot v_i=\sum_{i=1}^k(\lambda \cdot \alpha_i)\cdot v_i}$ 
Quindi è il più piccolo sottospazio contenenti tutti $v_1,...,v_n$

**Osservazione**: Osserviamo anche che tra tutti i sottospazi di $V$ contenenti tutti $v_1...v_n$, $Span=\{v_1...v_n\}$ è il più piccolo (nel senso di inclusione) perché $S$ è un sottospazio di $V$ che contiene $v_1...v_n$, allora (poiché è chiuso rispetto al prodotto per scalare), $S$ contiene tutti i multipli $\alpha_i\cdot v_1...\alpha_n \cdot v_n$ di $v_1...v_n, \forall \alpha_1...\alpha_n\in \mathbb{K}$. Ma essendo $S$ chiuso rispetto alle somma, $S$ contiene anche tutte le somme $\alpha_1 \cdot v_1+...+\alpha_n \cdot v_n$, cioè tutti gli elementi di $Span\{v_1,...,v_n\}$

**Esempi**: 
	$\mathbb{K}^3$ come span di numeri finiti di elementi 
	$\mathbb{K}^3=Span=\left\{\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {0}\\ {1} \end{array}\; \right) \right\}$
	Possono esseci anche più di soli tre elementi

**Esercizio**:
	Stabilire se i vettori $\left(\; \begin{array}{c} {1}\\ {2}\\ {1} \end{array} \; \right)$,  $\left(\; \begin{array}{c} {1}\\ {0}\\ {1} \end{array} \; \right)$ e $\left(\; \begin{array}{c} {1}\\ {2}\\ {0} \end{array} \; \right)$ generano $\mathbb{R}^3$.

**Soluzione**:
	Si tratta di stabilire se ogni vettore di $\mathbb{R}^3$ si può scrivere come combinazione lineare dei vettori dati, cioè se esistono dei coefficienti $\alpha, \beta, \gamma$ per qualsiasi vettore $\left(\; \begin{array}{c} {a}\\ {b}\\ {c} \end{array} \; \right)\in \mathbb{R}^3$  tale che: $$\left(\; \begin{array}{c} {a}\\ {b}\\ {c} \end{array} \; \right)=\alpha\cdot\left(\; \begin{array}{c} {1}\\ {2}\\ {1} \end{array} \; \right)+\beta\cdot\left(\; \begin{array}{c} {1}\\ {0}\\ {1} \end{array} \; \right)+\gamma\cdot\left(\; \begin{array}{c} {1}\\ {2}\\ {0} \end{array} \; \right)$$
	A questo punto è come dover risolvere un sistema lineare a tre incognite:$$\left \{ \; \begin{array}{c} {a=\alpha+\beta+\gamma}\\ {b=2\alpha+2\gamma}\\ {c=\alpha+\beta}\end{array} \right.\quad \Longrightarrow \left \{ \; \begin{array}{c} {\alpha=\frac{b}{2}-a+c}\\ {\beta=a-\frac{b}{2}}\\ {\gamma=a-c} \end{array} \right.$$
	Quindi si otterrà $$\left(\; \begin{array}{c} {a}\\ {b}\\ {c} \end{array} \; \right)=(\frac{b}{2}-a+c)\cdot\left(\; \begin{array}{c} {1}\\ {2}\\ {1} \end{array} \; \right)+(a-\frac{b}{2})\cdot\left(\; \begin{array}{c} {1}\\ {0}\\ {1} \end{array} \; \right)+(a-c)\cdot\left(\; \begin{array}{c} {1}\\ {2}\\ {0} \end{array} \; \right)$$
	Tuttavia questa rappresenta la generazione di $\mathbb{R}^3$, ma in caso non rappresenterebbe quella di $\mathbb{Z}_{/2}$, in quanto si avrebbe che i vettori sono $\left(\; \begin{array}{c} {1}\\ {0}\\ {1} \end{array} \; \right)$, $\left(\; \begin{array}{c} {1}\\ {0}\\ {1} \end{array} \; \right)$e $\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array} \; \right)$, quindi si avrebbero solamente due vettori, visto che 2 sono uguali tra di loro. Ma con due vettori non è possibile generare $\mathbb{K}^3$, in quanto alcuni vettori non possono essere generati, come $\left(\; \begin{array}{c} {0}\\ {1}\\ {0} \end{array} \; \right)$

Come si può vedere facilmente se tre vettori generano un campo?
Sia $\mathbb{K}^3$, si ha che i vettori $\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array}\; \right),\left(\; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right),\left(\; \begin{array}{c} {0}\\ {0}\\ {1} \end{array}\; \right)$ generano il campo $\mathbb{K}^3$, infatti $\forall\left(\; \begin{array}{c} {a}\\ {b}\\ {c} \end{array} \; \right)\in \mathbb{R}^3=a\cdot\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array}\; \right)b\cdot\left(\; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right)c\cdot\left(\; \begin{array}{c} {0}\\ {0}\\ {1} \end{array}\; \right)$ ovvero $\mathbb{R}^3$, quindi mi basta vedere se generano $\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array}\; \right),\left(\; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right),\left(\; \begin{array}{c} {0}\\ {0}\\ {1} \end{array}\; \right)$. Si può osservare che $\left\{\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {0}\\ {1} \end{array}\; \right) \right\}\subseteq Span\left\{\left(\; \begin{array}{c} {1}\\ {2}\\ {1} \end{array}\; \right);\left(\; \begin{array}{c} {1}\\ {0}\\ {1} \end{array}\; \right);\left(\; \begin{array}{c} {1}\\ {2}\\ {0} \end{array}\; \right) \right\}$

Infatti $\mathbb{R}^3=Span\left\{\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {0}\\ {1} \end{array}\; \right) \right\}=$ Span più piccolo che contiene i vettori di prima $\subseteq \mathbb{R}^3$. Da ciò si deduce hce lo span generato dai vettori di prima è uguale a $\mathbb{R}^3$

*Riflessione*: $Span\left\{\left(\; \begin{array}{c} {1}\\ {1}\\ {1} \end{array}\;  \right) \right\}=\left\{ \left. \left( \; \begin{array}{c} {\alpha}\\ {\alpha}\\ {\alpha} \end{array} \; \right)\; \right|\; \alpha \in \mathbb{K} \right\}$;
$Span\left\{\left(\; \begin{array}{c} {1}\\ {1}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {1}\\ {1} \end{array}\; \right)\right\}\Rightarrow\left(\; \begin{array}{c} {a}\\ {b}\\ {c} \end{array}\; \right)=\alpha\cdot\left(\; \begin{array}{c} {1}\\ {1}\\ {0} \end{array} \; \right)+\beta\cdot\left(\; \begin{array}{c} {0}\\ {1}\\ {1} \end{array} \; \right)=\left( \; \begin{array}{c} {\alpha}\\ {\alpha+\beta}\\ {\beta}\end{array} \; \right)$, ottengo quindi che il secondo numero rappresenta la somma degli altri due, quindi non posso dire che generarno $\mathbb{K}^3$ in quanto ci sono vettori come $\left(\; \begin{array}{c} {1}\\ {0}\\ {0} \end{array}\; \right)$ che non ne fanno parte.

Si possono individuare diverse casistiche in base allo Span: 
- $Span\{0_v\}=\{0_v\}$ *(Banale)*
- $Span\{v\}=\{\alpha\cdot v\; |\; \alpha\in\mathbb{K}\}$ *(In $\mathbb{R}$ è una retta)
- $Span\{v_1;v_2\}\wedge v_1≠v_2$:
	- $Span\{v_1;\lambda\cdot v_1\}=Span\{v_1\}$ *(In $\mathbb{R}$ è sempre una retta)
	- $v_1\notin Span\{v_2\}$ *(In $\mathbb{R}^2$ è un piano)*
- $Span\{v_1;v_2;v_3\}^=_\supseteq Span\{v_1;v_2\}\Leftrightarrow v_3\in Span\{v_1;v_2\}$ 

**Esempio**:
	$Span\left\{\left(\; \begin{array}{c} {1}\\ {1}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {-1}\\ {-1}\\ {3} \end{array}\; \right) \right\}\subsetneq Span\left\{\left(\; \begin{array}{c} {1}\\ {1}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {-1}\\ {-0}\\ {3} \end{array}\; \right);\left(\; \begin{array}{c} {1}\\ {2}\\ {2} \end{array}\; \right) \right\}$, in quanto nel primo caso si ottengono tutti i vettori tali che il primo membro e il secondo membro sono uguali

**Osservazione**: $Span\{v_1;v_2;...;v_n;v_{n+1}\}\supsetneq Span\{v_1;v_2;...;v_n\}$ se e solo se $v_{n+1}\notin Span\{v_1;v_2;...;v_n\}$ 
Quindi si può concludere dicendo che si può aggiungere un elemento allo span se e solo se fa che già fa parte dell'insieme generato, così allo stesso modo è possibile toglierlo se fa già parte dell'insieme generato.

>[!def] Definizione di Insieme Finitamente Generato 
Un insieme di definisce Finitamente Generato se esiste un numero finito di vettori $v_1,...,v_k$ di $V$, tali che $V$ si può scrivere come $V=Span\{v_1,...v_k\}$ 

**Esempi**:
	- $\mathbb{K}^n$ è uno spazio finitamente generato perché $\mathbb{K}^n=Span\left\{\left(\; \begin{array}{c} {1}\\ {0}\\ {\vdots}\\ {0} \end{array}\; \right);\left(\; \begin{array}{c} {0}\\ {1}\\ {\vdots}\\ {0} \end{array}\; \right);\; ...\;  ;\left(\; \begin{array}{c} {0}\\ {0}\\ {\vdots}\\ {1} \end{array}\; \right) \right\}$ $n$ volte
	- $M_{m,n}\mathbb{K}$ è uno spazio finitamente generato perché  $M_{m,n}\mathbb{K}=Span\left\{\ \left( \begin{matrix} 1 & 0 & ... & 0 \\ 0 & 0 & ... & 0 \\ \vdots & \vdots & & \vdots \\ 0 & 0 & ... & 0 \end{matrix} \; \right);\ \left( \begin{matrix} 0 & 1 & ... & 0 \\ 0 & 0 & ... & 0 \\ \vdots & \vdots & & \vdots \\ 0 & 0 & ... & 0 \end{matrix} \; \right);\; ... \; ;\ \left( \begin{matrix} 0 & 0 & ... & 0 \\ 0 & 0 & ... & 0 \\ \vdots & \vdots & & \vdots \\ 0 & 0 & ... & 1 \end{matrix} \; \right) \right\}$  $m\cdot n$ volte
	- $K[x]$ non è uno spazio finitamente generato: Infatti se lo fosse stato, avremmo avuto un numero finito di polinomi $p_1(x),...,p_k(x)$. Tuttavia esistendo un grado maggiore per ogni polinomio si ha che: $x^{M+1}\notin Span\{p_1(x), p_2(x),...,p_M(x)\}$, poiché combinando polinomi si possono ottenere solamente altri polinomi di grado uguale o inferiore di quello di partenza.

>[!def] Definizione di Vettore/Matrice Elementare
Si definisce un Vettore elementare $E_i$ un vettore che ha un 1 nella posizione 1 e in tutte le altre 0: $$E_2=\left(\; \begin{array}{c} {0}\\ {1}\\ {\vdots}\\ {0} \end{array}\; \right)$$Similmente si definisce Matrice Elementare $E_{i,j}$ una matrice con un 1 nel posto ($i;j)$ e 0 in tutte le altre: $$E_{1,2}=\left( \begin{matrix} 0 & 1 & ... & 0 \\ 0 & 0 & ... & 0 \\ \vdots & \vdots & & \vdots \\ 0 & 0 & ... & 0 \end{matrix} \; \right)$$ ^ad0cf3

Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$ e sia $A\subseteq V$, $Span\{A\}$ è il più piccolo sottoinsieme $\subseteq A$, in quanto $Span\{A$ tutte le combinazioni lineari degli elementi di $A$}.

**Obiettivo**: generare uno spazio vettoriale con il minor numero di vettori ($\mathbb{K}^n$ da n vettori).
La cosa può valere anche per un insieme finito di finiti elementi.

Tutto sta nella nozione di Lineare Indipendenza, ossia che l'unica combinazione lineare è quella banale.

>[!def] Definizione di Lineare Indipendenza 
$\{v_1,...,v_k\}$ è un insieme linearmente indipendente se l'unica combinazione lineare che da il vettore nullo è quello banale.
In altri termini se $\lambda_1\cdot v_1+...+\lambda_k\cdot v_k=0\Rightarrow \lambda_1=\lambda_2=...=\lambda_k=0$ ^4189d0

>[!def] Definizione di Lineare Dipendenza
$\{v_1,...,v_k\}$ sono linearmente dipendenti se non sono linearmente indipendenti. Ossia esistono $\lambda_1,  \lambda_2, ...,\lambda_k\in \mathbb{K}$ non tutti nulli (almeno uno è $\lambda_i ≠0$), tale che $\lambda_1\cdot v_1+...+\lambda_k\cdot v_k=0$. ^e30427

**Esempio**:
	- $\left( \; \begin{array}{c} {1}\\ {2}\\ {1} \end{array}\; \right);\left( \; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right);\left( \; \begin{array}{c} {1}\\ {1}\\ {3} \end{array}\; \right) \in \mathbb{K}^3$ , sono linearmente dipendenti o linearmnete Indipendenti?
		Quindi $\lambda_1\cdot \left( \; \begin{array}{c} {1}\\ {2}\\ {1} \end{array}\; \right)+\lambda_2\cdot \left( \; \begin{array}{c} {0}\\ {1}\\ {0} \end{array}\; \right)+\lambda_3\cdot \left( \; \begin{array}{c} {1}\\ {1}\\ {3} \end{array}\; \right)=\left( \; \begin{array}{c} {0}\\ {0}\\ {0} \end{array}\; \right)$, si ha quindi un sisema a tre $\begin{cases} \lambda_1+\lambda_3=0 \\ 2\cdot \lambda_1+\lambda_2 +\lambda_3=0 \\ \lambda_1+3\cdot \lambda_3=0 \end{cases}$ 
		Assumendo che la caratteristica è $≠2$, si ottiene che $\lambda_1=\lambda_2=\lambda_3=0$
		Quindi sono linearmente indipendenti.
		Se il campo fosse stato a caratteristica 2, allora sarebbe stato linearmente dipendente.
	- $\mathbb{K}[x]_{≤3}=\{x^3;x^3+x^2;x^3+x;x^3+1\}$ L.I. o L.D.?
		Con le combinazioni lineari si otterrebbe che $\lambda_1\cdot(x^3)+\lambda_2\cdot(x^3+x^2)+\lambda_3\cdot(x^3+x)+\lambda_4\cdot(x^3+1)=$ 
		$=(\lambda_1+\lambda_2+\lambda_3+\lambda_4)\cdot x^3+ \lambda_2\cdot c^2+\lambda_3\cdot x+ \lambda_4=0$. Per ottenere che la somma di tutti gli addendi sia uguale a zero, bisogna porre che siano tutti uguali a 0.
		Si ottiene quindi che sono linearmente indipendenti
	- $\left( \; \begin{array}{c} {1}\\ {2}\\ {1} \end{array}\; \right);\left( \; \begin{array}{c} {1}\\ {1}\\ {0} \end{array}\; \right);\left( \; \begin{array}{c} {10}\\ {13}\\ {3} \end{array}\; \right) \in \mathbb{K}^3$ sono L.I o L.D?
		$\lambda_1\cdot \left( \; \begin{array}{c} {1}\\ {2}\\ {1} \end{array}\; \right)+\lambda_2\cdot \left( \; \begin{array}{c} {1}\\ {1}\\ {0} \end{array}\; \right)+\lambda_3\cdot \left( \; \begin{array}{c} {10}\\ {13}\\ {3} \end{array}\; \right)=\left( \; \begin{array}{c} {0}\\ {0}\\ {0} \end{array}\; \right)$, Risolvendo il sistema si ottiene che $\begin{cases} \lambda_2=-7\lambda_3 \\ 0\lambda_3=0 \\ \lambda_1=-3\lambda_3 \end{cases}$ , si ottiene che una soluzione è indeterminata, quindi non banale, quindi sono linearmente dipendenti.

**Proposizione**: Se ho un insieme $\{v_1,...,v_k\}$ è linearmente dipendente se e solo se uno dei vettori che può essere scritto come combinazione lineare di altri. (Cioè esiste $1≤i≤k$ tale che $v_i\in Span\{v_1,...v_{i-1};v_{i+1};...;v_k\}$)
***Dimostrazione***: 
	$\Rightarrow)$ $\{v_1,...,v_k\}$ sono linearmente dipendenti, quindi esistono $\lambda_1,...,\lambda_k$ non nulli tali che $\lambda_1\cdot v_1+...+\lambda_k\cdot v_k=0$. Se ad esempio $\lambda_k≠0\Rightarrow v_k=\frac{-\lambda_1}{\lambda_K}\cdot v_1,...,\frac{-\lambda_{k-1}}{\lambda_K}\cdot v_1$, quindi $v_k\in Span\{v_1,...,v_{k-1}\}$ 
	$\Leftarrow)$ Se ad esempio $v_k$ è combinazione lineare di $\{v_1,...,v_{k-1}\}$, cioè $v_k=a_1\cdot v_1,...,a_{k-1}\cdot v_{k-1}\Rightarrow a_1\cdot v_1,...,a_{k-1}\cdot v_{k-1}-v_k$, quindi non è banale in quanto $-1≠0$, quindi in questo caso si ha che $Span\{v_1,...,v_{k-1}\}=Span\{v_1,...,v_{k}\}$ 
	Analogamente $\{v_1,...,v_k\}$ è L.I. $\Leftrightarrow$ $\{0\}\subsetneq Span\{v\}\subsetneq Span\{v_1,v_2\}\subsetneq Span\{v_1,...v_n\}$

>[!th] Teorema dello Scambio
Sia $V$ uno spazio vettoriale su $\mathbb{K}$, sia $\varnothing≠A\subseteq V$ un sottoinsieme finito e $n \in \mathbb{N}^+$, se in $Span(A)$ esistono $m$ vettori linearmente indipendenti, allora in A esistono $m$ vettori linearmente indipendenti. (L'opposto è ovvio)

**Corollario**: Ogni insieme di cardinalità $>n$ in $\mathbb{K}^3$ e linearmente dipendente
***Dimostrazione***: Prendo $A=\{E_1,...,E_2\}$, $Span(A)=\mathbb{N}^n$, si applica il Teorema dello Scambio.

***Dimostrazione del Teorema dello Scambio***: 
	Sia $B\{z_1,...,z_n\}$ in Lineare Dipendenza $z_i\in Span(A),\forall i=1,...,n$
	Considerando $A\cup B$ e consideriamo $f=\{$sottoinsiemi di $A\cup B$ a cardinalità m linearmente indipendenti$\}$, si ha che $f\supseteq \mathcal{P}(A\cup B)$. Tuttavia si ha che $f$ non è vuoto e inoltre $(B\subseteq A)\rightarrow B\in f$. Sia $C\in f$ t.c. la cardinalità di $C\cap A$ sia massima (però C non deve essere necessariamente unico)
	Adesso si dimostra che $C\subseteq A$ (basta questo per dimostrare che sia verificato)
	Quindi $C\{v_1,...,v_m\}$ e supponiamo per assurdo che $C \subsetneq A$ ad esempio $v_m\notin A$
	Quindi $Span\{v_1,...,v_{n-1}\}$ è $\subsetneq Span(A)$.
	Questo implica che esiste $w\in A$ t.c. $w\notin Span\{v_1,...,v_{n-1}\}$ (Se $w$ non esistesse, $A\subseteq Span\{v_1,...,v_{m-1}\}$)
	Quindi $Span(A)\subseteq Span(Span(v_1,...,v_{m-1}))=Span(v_1,...,v_{m-1})$. Questo però contraddice $Span(v_1,...,v_m)\subsetneq Span(A)$, ma $w\notin Span\{v_1,...,v_{m-1}\}$ equivale a dire che $\{v_1,...,v_{m-1}, w\}$ è Linearmente Indipendente, ha $m$ elementi ma ha un elemento $A$ in più di $C$. Questo però si contraddice che $C$ abbia il massimo numero di elementi in $A$

**Corollario**: Siano $v_1,...,v_n$ generatori di $V$ (quindi $V$ è finitamente generato), ogni sottoinsieme di $V$ con più di $n$ vettori è Linearmente Dipendente. ^ccc059

**Proposizione**: Sia $V$ un $\mathbb{K}-spazio\; vettoriale$, è finitamente generato $\Leftrightarrow$ per ogni intero $n$ esistono $n$ vettori linearmente indipendenti.
***Dimostrazione***: 
	$\Leftarrow$) è letteralmente [[Geometria 1A - Migliorini#^ccc059]] (Tramite negazione/assurdo).
	$\Rightarrow$) Prendiamo $v_1≠0$, si ha che $\{v_1\}$ è Linearmente Indipendente. Poiché $Span\{v_1\}≠V$, si ha un $v_2\notin Span\{v_1\}\Rightarrow \{v_1,v_2\}$ sono Linearmente Indipendenti, ma $Span\{v_1,v_2\}≠V$, quindi si ha un $v_3\notin Span\{v_1,v_2\}\Rightarrow \{v_1,v_2,v_3\}$, ma $Span\{v_1,v_2,v_3\}≠V$ e così via per ricorrenza.

**Corollario della Proposizione**: Sia $V$ finitamente generato e $W\subseteq V$ un sottospazio generato, allora $W$ è finitamente generato. 
***Dimostrazione***: 
	Sia $\{v_1,...,v_n\}$ un insieme di generatori di $V$. Per il corollario [[Geometria 1A - Migliorini#^ccc059]] si ottiene che ogni sottoinsieme con più di $n$ vettori è Linearmente Dipendente, ma si ha che $W\subseteq V$, quindi in $W$ ogni sottoinsieme con più di $n$ vettori è Linearmente Dipendente. Questo per la dimostrazione $\Rightarrow$ della proposizione precedente si ha che $W$ è finitamente generato.
***
## Basi e Dimensioni

>[!def] Definizione di Insieme Base: 
Sia $V≠\{0\}$ limitamente generato, un insieme *ordinato* si definisce una *base* se: 
>- $\{v_1,...,v_n\}$ è un insieme di generatori di $V$;
>- $\{v_1,...,v_n\}$ sono Linearmente Indipendenti.

In questo caso l'ordine conta $\{v_1,v_2,v_3\}≠\{v_3,v_1,v_2\}$ 

>[!th] Teorema delle Dimensioni
Tutte le basi di uno spazio vettoriale finitamente generato hanno lo stesso numero di elementi, che si chiama la dimensione di $V$ e si indica con $dim(V)$

***Dimostrazione***: 
	Supponiamo di avere 2 basi $v_1,...,v_n$ e $u_1,...,u_m$, vogliamo dimostrare che $n=m$
	$\{v_1,...,v_n\}$ sono i generatori e $\{u_1,...,u_n\}$ sono Linearmente Indipendenti $\Rightarrow m≤n$
	$\{u_1,...,u_n\}$ sono i generatori e $\{v_1,...,v_n\}$ sono Linearmente Indipendenti $\Rightarrow m≥n$
	Da queste due considerazioni si riesce a concludere che $m=n$

**Esempio**:
	$dim\mathbb{K}^n=n$ perché la base canonica $e_1,...,e_n$ è una base
	$dimM_{n,m}(\mathbb{K})=n\cdot m$ è una base perché l'insieme delle matrici canoniche è una base
	$dim\mathbb{K}[x]_{≤d}=d+1$ in quanto $\{1,x,...,x^d\}$ è una base

**Proposizione**: Sia $\mathscr{B}=\{v_1,...,v_n\}$ una base di $V$. $\forall v\in V$ esistono $\lambda_1,...,\lambda_n$ in $\mathbb{K}$ t.c. $v=\lambda_1\cdot v_1+,...,\lambda_n\cdot v_n$, ossia $\lambda_1,...,\lambda_n$ sono univocamente determinati (cioè la scrittura $v=\lambda_1\cdot v_1+,...,\lambda_n\cdot v_n$ è unica).
***Dimostrazione***: 
	L'esistenza di $\lambda_1,...,\lambda_n$ segue dal fatto che $\{v_1,...,v_n\}$ è un insieme di generatori.
	Dimostriamo l'unicità: supponiamo ne che esista un'altra scrittura $v=\mu_1\cdot v_1+,...,\mu_n\cdot v_n$, mostriamo che $\lambda_1=\mu_1;...,\lambda_n=\mu_n$: $0=v-v=\lambda_1\cdot v_1+,...,\lambda_n\cdot v_n-(\mu_1\cdot v_1+,...,\mu_n\cdot v_n)=(\lambda_1-\mu_1)\cdot v_1+...+(\lambda_n-\mu_n)\cdot v_n$  
	ma si ha che $v_1,...,v_n$ sono Linearmente Indipendenti, quindi $\lambda_1-\mu_1=...=\lambda_n-\mu_n=0$, quindi $\lambda_1=\mu_1,...,\lambda_n=\mu_n$.

Si ottiene quindi che il vettore colonna $\left( \; \begin{array}{c} {\lambda_1} \\ {\vdots} \\ {\lambda_n} \end{array} \; \right)\in \mathbb{K}^n$ si dice il vettore delle coordinate di $v$ rispetto alla base $\mathscr{B}=\{v_1,...,v_n\}$ (questo spiega il motivo per cui si deve avere un insieme ordinato) 

Questo definisce una funzione $\phi_{\mathscr{B}}:V\rightarrow \mathbb{K}^n;v\mapsto$ vettore di $v$ rispetto a $\mathscr{B}$. ^8a6304

Questo torna comodo in un certo senso, in quanto si può trasformare qualcosa di astratto in un qualcosa di più concreto, però rappresenta un'arma a doppio taglio, in quanto non c'è una base privilegiata rispetto alle altre. Tutte le basi sono uguali tra loro.

**Esempio**:
	$\mathscr{B}=\{v_1,...,v_n\}$, $\phi_{\mathscr{B}}(v_1)=e_1$, $\phi_{\mathscr{B}}(v_3)=e_3$, $\phi_{\mathscr{B}}(v_1+v_2+v_3)=\left(\;\begin{array}{c} {1}\\ {\vdots}\\ {1} \end{array}\;\right)$ 

**H.C.E. (Highly Confusing Example)**:
	$V=\mathbb{K}^2$, $\mathscr{B}_1=\{e_1,e_2\}$,  $\mathscr{B}_2=\{e_1+e_2,2e_1+e_2\}$ 
	Per calcolare un qualsiasi vettore basta porre a sistema lineare i vari vettori con dei coefficienti $\lambda_1,\lambda_2$ da ricavare.

>[!def] Definizione di Minimale
Un insieme $\{u_1,...,u_n\}$ di generatori di $V$, si chiama Minimale se ogni suo sottoinsieme genera un sottospazio vettoriale $\subsetneq V$ (in parole povere nessuno dei suoi sottoinsiemi proprio è un insieme di generatori) 

>[!def] Definizione di Massimale
Un insieme $\{w_1,...,w_n\}$ Linearmente Indipendente, si dice che è Massimale se qualunque sottoinsieme che lo contenga è Linearmente Dipendente (In altre parole $\forall v \in V$, $\{w_1,...,w_n\}$ è linearmente Dipendente). ^5118fe

>[!th] Teorema
>1. Sia $\{v_1,...,v_n\}$ un insieme di elementi Linearmente Indipendenti. Questo è massimale $\Leftrightarrow$ $\{v_1,...,v_n\}$ è un insieme di generatori (ciò implica che è una base una volta ordinati i suoi elementi)
>2. Analogamente sia $\{u_1,...,u_n\}$ un insieme di generatori. È minimale $\Leftrightarrow$ i suoi elementi sono Linearmente Indipendenti. (Ciò implica che una volta riordinati rappresentano una base).

*Da cui si arriva che per essere una base. ci devono essere più elementi linearmente indipendenti possibile e meno elementi possibili che generano*

***Dimostrazione***: 
	Lo si dimostra per assurdo.
1. $\Rightarrow$ Se esistesse un $v\in V\land \notin Span\{v_1,...,v_n\}\Rightarrow\{v_1,...,v_n,v\}$ sarebbe linearmente indipendente, ma risulterebbe in contrasto con il fatto che sia Massimale.
	$\Leftarrow$ (Si segue il ragionamento inverso di quello precedente) Per dimostrare che $\forall v \in V, \{v_1,...,v_n,v\}$ è 
		linearmente indipendente, ma se l'insieme dei generatori è $\{v_1,...,v_n\}$ allora si ha che $v$ è una combinazione lineare di $a_1\cdot v_1+...+a_n\cdot v_n$ da cui $a_1\cdot v_1+...+a_n\cdot v_n-v=0$, quindi si ottiene una combinazione lineare non banale
2. $\Rightarrow$ Se $\{u_1,...,u_n\}$ fosse Linearmente Dipendente, si avrebbe che $a_1\cdot u_1+...+a_n\cdot u_n=0$ con almeno un $a_i≠0$ per qualche $i$. Supponiamo che l'elemento diverso da 0 sia $u_n\Rightarrow a_n\in Span\{u_1,...,u_{n-1}\}$. Si ottiene quindi che $\{u_1,...,u_{n-1}\}$ è un insieme di generatori, ma ciò contraddice il fatto che sia il Minimale
	$\Leftarrow$ Se consideriamo un sottoinsieme proprio di $\{u_1,...,u_n\}$ devo dimostrare che non genera
		Supponiamo che $u_n\notin S$ per Lineare Indipendenza, quindi si ottiene che $u_n$ non può stare in $SpanS$, quindi non genera

**Proposizione**: Sia $n=dimV$ in modo da avere $\{v_1,...,v_n\}$. Per vedere se rappresenta una base oppure no, bisogna che ci sia un rapporto di Lineare Indipendenza e che generi. Ma in questo caso si ha che: $\text{Base} \Leftrightarrow \text{L.I.} \Leftrightarrow \text{Genera}$
Per la definizione di base.
***Dimostrazione***: 
	$\text{Base} \Rightarrow \text{L.I.}$ e $\text{Base} \Rightarrow \text{Genera}$ sono ovvie per la definizione di base.
	$\text{L.I.}\Rightarrow \text{Base}$: Devo mostrare che generano $V$. Se esistono $v\notin Span\{v_1,...,v_n\}$, allora si otterrebbe che $\{v_1,...,v_n,v\}$ è Linearmente Indipendente. Cosa che contrasta il fatto che lo Spazio è di dimensione $n$.
	$\text{Genera}\Rightarrow \text{Base}$: Devo dimostrare che sono Linearmente Indipendenti Se così non fosse, potrei trovare un insieme di $n-1$ che generano $V$, ma la cosa si contraddice in quanto si ha che la dimensione di $V$ è $n$. ^181d24

Il fatto che si abbia $dimV=n$ implica che
1. Ogni insieme di generatori abbia $≥n$ elementi
2. Ogni insieme di vettori linearmente indipendente abbia $≤n$ elementi

Se non sapessi che $dimV=n$ dovrei dimostrare contemporaneamente che l'insieme dei vettori generi lo spazio e che sono linearmente indipendenti. Ma sapendo quanto valga $dimV$ mi basta dimostrarlo uno soltanto, in quanto uno implica l'altro.

**Conseguenza**: Se $W\subseteq V$ sottospazio vettoriale e $V$ finitamente generato implica che $dimW≤dimV$ e che $dimW=dimV\Rightarrow W=V$ 
***Dimostrazione***: 
	Sia $\{w_1,...,w_k\}$ banale in $W$, quindi Linearmente Indipendenti. Si ha che sono anche elementi in $V$, quindi $k≤dimV$. (Per il teorema dello scambio). Ma se si ottiene che $k=dimV$, per le conseguenze del teorema dello scambio, si ottiene che $\{w_1,...,w_k\}$ rappresenta una base di $V$, cioè $W=V$.

**Esempio**:
	Sia $W\subseteq\mathbb{K}^3$ e $W=\left\{\left. \left( \; \begin{array}{c} {x_1}\\ {x_2}\\ {x_3} \end{array} \; \right)\; \right|\; x_1+x_2+x_3=0\right\}$. $W$ è sottospazio vettoriale? basta prendere tre vettori $\left( \; \begin{array}{c} {1}\\ {-1}\\ {0} \end{array} \; \right)$, $\left( \; \begin{array}{c} {1}\\ {0}\\ {-1} \end{array} \; \right)$ e $\left( \; \begin{array}{c} {0}\\ {1}\\ {-1} \end{array} \; \right)$  e verificare che generano qualsiasi vettore $\left( \; \begin{array}{c} {a}\\ {b}\\ {c} \end{array} \; \right)$ tramite un sistema lineare a tre equazioni. 
	Rappresentano una base? No in quanto si riesce a trovare una combinazione non banale tra i tre vettori: $\left( \; \begin{array}{c} {1}\\ {-1}\\ {0} \end{array} \; \right)-\left( \; \begin{array}{c} {1}\\ {0}\\ {-1} \end{array} \; \right)+\left( \; \begin{array}{c} {0}\\ {1}\\ {-1} \end{array} \; \right)=\left( \; \begin{array}{c} {0}\\ {0}\\ {0} \end{array} \; \right)$, quindi $dimW<3$ e i tre vettori sono linearmente dipendenti e uno è la somma degli altri 2.
	Ma se considerassi solamente due vettori, ad esempio $\left( \; \begin{array}{c} {1}\\ {-1}\\ {0} \end{array} \; \right)$ e $\left( \; \begin{array}{c} {1}\\ {0}\\ {-1} \end{array} \; \right)$, si ha che sono generatori di $W$ e sono linearmente indipendenti. Per cui si ottiene che $dimW=2$. La cosa però non è unica, perché potevo considerare qualunque coppia di vettori tra i tre proposti, oppure altri ancora
	In generale si può dire che i vettori che costituiscono una base di un vettore non è unica 

>[!th] Teorema del completamento della base 
Sia $V$ uno spazio vettoriale di dimensioni finite. 
>1. Sia $\{v_1,...,v_n\}$ uno spazio di generatori, allora esiste un suo sottoinsieme che è una base e il sottoinsieme è non unico (Ossia posso estrarre da un insieme di generatori una base)
>2. Sia $\{v_1,...,v_k\}$ un insieme di elementi Linearmente Indipendenti, posso trovare in modo non unico $\{v_{k+1},...,v_n\}$ in modo che $\{v_1,...,v_k,v_{k+1},...,v_n\}$ generi. (Posso anche partire $\varnothing$).

***Dimostrazione***: 
	1. Se $\{v_1,...,v_n\}$ sono linearmente indipendenti, allora è una base. In caso contrario $\exists i$ in $1,...,n$ t.c. $v_i\in Span\{v_1,...,v_{i-1},v_{i+1},...,v_n\}=V$. In caso contrario il procedimento si può ripetere dopo $n-dimV$ volte.
	2. Se ho che $\{v_1,...,v_k\}=V$, allora non ho nulla da dimostrare, in quanto rappresentano una base $k=dimV$. In caso contrario ottengo che $Span\{v_1,...,v_k\}\subsetneq V$, quindi posso scegliere un $v_{k+1}\notin Span\{v_1,...,v_k\}$ così da ottenere $\{v_1,...,v_k,v_{k+1}\}$ che sono linearmente indipendenti. In caso contrario si può procedere con lo stesso ragionamento $dimV-k$ volte. (Questo da la dimostrazione che si possono esistono infiniti modi di completare un insieme)

**Osservazione**: Sia $V$ un $\mathbb{K}\text{spazio vettoriale}$ di dimensioni finite e siano $S$ e $T$ due sottospazi di $V$. Fissiamo una base $\mathscr{B}_S$ e una base $\mathscr{B}_T$. Allora si ha che $\mathscr{B}_S\cup\mathscr{B}_T$ genera $S+T$.
Infatti se $\mathscr{B}_S=\{v_1,...,v_k\}$ e $\mathscr{B}_T=\{w_1,...,w_k\}$, ogni vettore di $S+T$ è della forma $v=s+t$, ma $s\in S$ e $t\in T$, quindi $v=s+t=\alpha_1\cdot v_1+...+\alpha_k\cdot v_k+\beta_1\cdot w_1+...+\beta_k\cdot w_k$. L'affermazione continua ad esser vera sostituendo a $\mathscr{B}_S$ e/o $\mathscr{B}_T$ gli insiemi dei generatori di $S$ e $T$ rispettivamente.
Questo però $\mathbf{NON}$ significa che l'unione di $\mathscr{B}_S$ e $\mathscr{B}_T$ è una base di $S+T$ ^f55b5a

**Controesempio**:
	Siano $S=Span\left\{\left(\;\begin{array}{c} {1}\\ {1}\\ {1}\end{array} \;\right);\left(\;\begin{array}{c} {1}\\ {1}\\ {0}\end{array} \;\right) \right\} =\mathscr{B}_S\subseteq \mathbb{K}^3$ e $T=Span\left\{ \left(\;\begin{array}{c} {1}\\ {-1}\\ {2}\end{array} \;\right);\left(\;\begin{array}{c} {1}\\ {0}\\ {0}\end{array} \;\right) \right\} =\mathscr{B}_T\subseteq \mathbb{K}^3$. La loro unione $\mathscr{B}_S\cup\mathscr{B}_T=\{\left(\;\begin{array}{c} {1}\\ {1}\\ {1}\end{array} \;\right);\left(\;\begin{array}{c} {1}\\ {1}\\ {0}\end{array} \;\right);\left(\;\begin{array}{c} {1}\\ {-1}\\ {2}\end{array} \;\right);\left(\;\begin{array}{c} {1}\\ {0}\\ {0}\end{array} \;\right)\}$ non rappresenta una base di $S+T$, ma questo è anche evidente in quanto $S+T$ è a tre dimensioni, mentre $\mathscr{B}_S\cup\mathscr{B}_T$ ha quattro vettori, quindi sicuramente non in lineare indipendenza.

**Osservazione**: Sia $V$ un $\mathbb{K}\text{spazio vettoriale}$ di dimensioni $n$ e siano $\{v_1,...,v_k\}$ vettori di $V$ in lineare indipendenza con $k<n$. Sappiamo che è possibile completare $S=\{v_1,...,v_k\}$ in una base $\mathscr{B}$ di $V$ aggiungendo un vettore alla volta. La scelta di questo completamento equivale a trovare un sottoinsieme $T$ di $V$ tale che $S\oplus T=V$. *(È un se e solo se, quindi vanno fatte entrambe le dimostrazioni)* ^c6119b

***Dimostrazione** 
	$\Rightarrow$*: Supponiamo di aver completato dalla base $\mathscr{B}$ l'insieme $S=\{v_1,...,v_n\}$ e sia $T=Span\{v_{k+1},...,v_n\}$ e sia $w\in S\cap T$. Si ha che $w\in S=\alpha_1\cdot v_1+...+\alpha_k\cdot v_k$, ma $w\in T=\beta_1\cdot v_{k+1}+...+\beta_{n-k}\cdot v_n$, quindi si ha che le combinazioni lineari dei vettori si equivale, quindi $\alpha_1\cdot v_1+...+\alpha_k\cdot v_k-\beta_1\cdot v_{k+1}-...-\beta_{n-k}\cdot v_n=0_v\Rightarrow\alpha_1=...=\alpha_k=\beta_1=...=\beta_{n-k}=0$ quindi $w=0_v$ in quanto si aveva che $S\oplus T$ 
	Viceversa *(Dimostrazione $\Leftarrow$)*: Siano $S$ e $T$ sottospazi di $V$ t.c. $S\oplus T=V$. Sia quindi $S=Span\{v_1,...,v_k\}$ e sia $\mathscr{B}_T=\{v_{k+1},...,v_n\}$ una base di $T$. Allora $\{v_1,...,v_k,v_{k+1},...,v_n\}$ sono linearmente indipendenti.
	Infatti se $\alpha_1\cdot v_1+...+\alpha_k\cdot v_k+\beta_1\cdot v_{k+1}+...+\beta_{n-k}\cdot v_n=0_v\Rightarrow$$\alpha_1\cdot v_1+...+\alpha_k\cdot v_k=-\beta_1\cdot v_{k+1}-...-\beta_{n-k}\cdot v_n$.
	Ma $\alpha_1\cdot v_1+...+\alpha_k\cdot v_k\in S$ e $-\beta_1\cdot v_{k+1}-...-\beta_{n-k}\cdot v_n\in T$, quindi il tutto è $\in S\cap T=\{0\}$ 

*Esempio*:
	Sia $S=Span\left\{\begin{pmatrix}1\\0 \end{pmatrix}\right\}\subseteq \mathbb{R}^2$. Trovare almeno 2 addendi diretti in $\subseteq\mathbb{K}^2$. Ciò significa esibire almeno 2 sottospazi distinti (diversi) $T$ e $W$ in $\mathbb{K}^2$ tali che $S\oplus T=\mathbb{K}^2$ e $S\oplus W=\mathbb{K}^2$. Ciò vuol dire equivalentemente completare $\left\{\begin{pmatrix}1\\0 \end{pmatrix}\right\}$ in 2 modi diversi almeno una base in $\mathbb{K}^2$. Quindi $\left\{\begin{pmatrix}1\\0 \end{pmatrix},v_1\right\}$ e $\left\{\begin{pmatrix}1\\0 \end{pmatrix},v_2\right\}$ in modo che $Spam\{v_1\}≠Spam\{v_2\}$. Questi possono essere per esempio $T=Span\left\{\begin{pmatrix}1\\1 \end{pmatrix}\right\}$ e $W=Span\left\{\begin{pmatrix}0\\1 \end{pmatrix}\right\}$ 

>[!th] Teorema: Formula di Grassman
Sia $V$ un $\mathbb{K}\text{spazio vettoriale}$ di dimensione finita e siano $S$ e $T$ due sottospazi di $V$, allora $dim(S+T)=dimS+dimT-dim(S\cap T)$ 
Questo teorema stabilisce dei legami importanti.

*Idea per la dimostrazione*: Dati due insiemi, per contare quanti elementi insieme ha l'unione, basta sommare il numero degli elementi del primo insieme con il numero degli elementi del secondo per poi togliere quelli dell'intersezione.

***Dimostrazione***: 
	Sia $\mathscr{B}_{S\cap T}=\{v_1,...,v_k\}$ base di $S\cap T$. Posso completare $\mathscr{B}_{S\cap T}$ in una base $\mathscr{B}_S=\{v_1,...,v_k,w_{k+1},...,w_n\}$ (Sto indicando con $k=dim(S\cap T)$ e con $n≥k$ $dimS$). Completo poi $\mathscr{B}_{S\cap T}$ in una base $\mathscr{B}_T=\{v_1,...,v_k,z_{k+1},...,z_m\}$ (dove $m=dimT$). Devo dimostrare che $dim(S+T)=n+m-k$, cioè devo costruire una base $\mathscr{B}_{S+T}$ con $n+m-k$ elementi.
	Sappiamo (da teoremi precedenti) che $\mathscr{B}_S\cup\mathscr{B}_T$ genera $S+T$ $\{v_1,...,v_k,w_{k+1},...,w_n\,z_{k+1},...,z_m\}$. Però quanti sono gli elementi di $\mathscr{B}_S\cup\mathscr{B}_T$? ($n+m-k$)
	Mi basta dimostrare che i vettori di $\mathscr{B}_S$ e di $\mathscr{B}_T$ sono Linearmente Indipendenti, e quindi ho finito.
	Sia $\alpha_1\cdot v_1+...+\alpha_k\cdot v_k+\beta_1\cdot w_{k+1}+...+\beta_{n-k}\cdot w_n+\gamma_1\cdot z_{k+1}+...+\gamma_{m-k}\cdot z_m=0_v$ con $\alpha_i,\beta_j,\gamma_l\in\mathbb{K}\Leftrightarrow$  
	$\alpha_1\cdot v_1+...+\alpha_k\cdot v_k+\beta_1\cdot w_{k+1}+...+\beta_{n-k}\cdot w_n=-\gamma_1\cdot z_{k+1}-...-\gamma_{m-k}\cdot z_m$ 
	Tuttavia, per l'osservazione preceddente, si sa che $Span\{z_{k+1},...,z_m\}\oplus Span\{v_1,...,v_k\}$. Quindi, stando in lineare indipendenza si ha che $-\gamma_1\cdot z_{k+1}-...-\gamma_{m-k}\cdot z_m=0\Rightarrow \gamma_r=0, \forall r$.
	Lo stesso ragionamento potrebbe essere fatto anche per i vettori $w_{k+1},...,w_n$, ma molto più semplicemente, visto che i vettori $v_1,...,v_k,w_{k+1},...,w_n$ sono linearmente indipendenti (rappresentano una base $\mathscr{B}_S$ di $S$) e visto che si sa che $\alpha_1\cdot v_1+...+\alpha_k\cdot v_k+\beta_1\cdot w_{k+1}+...+\beta_{n-k}\cdot w_n=0$, allora $\alpha_i=\beta_j=0, \forall i,j$

**Esempio**: 
	Siano $S=Span\left\{\left( \; \begin{array}{c} {1}\\ {1}\\ {1}\\ {1} \end{array} \; \right); \left( \; \begin{array}{c} {1}\\ {0}\\ {-1}\\ {0} \end{array} \; \right) ;\left( \; \begin{array}{c} {0}\\ {1}\\ {2}\\ {1} \end{array} \; \right)\right\}$ e $T=Span\left\{\left. \left( \; \begin{array}{c} {x}\\ {y}\\ {z}\\ {t} \end{array} \; \right)\in \mathbb{Q}^4\; \right|\; \; x-y-z-t=0; y-2z-t=0\right\}$. Determinare una base $\mathscr{B}$ di $S\cap T$ e completare una base di $S+T$.
	Prima si possono trovare le dimensioni di $S$ e di $T$
	$S:dimS=2$ in quanto si ha che i vettori presentati non sono in lineare indipendenza: $\left( \; \begin{array}{c} {1}\\ {1}\\ {1}\\ {1} \end{array} \; \right)- \left( \; \begin{array}{c} {1}\\ {0}\\ {-1}\\ {0} \end{array} \; \right)= \left( \; \begin{array}{c} {0}\\ {1}\\ {2}\\ {1} \end{array} \; \right)$, quindi il terzo vettore può essere eliminato dallo $SpanS$.
	Per trovare la dimensione di $T$ è sufficiente risolvere prima il sistema delle equazioni.
	$\begin{cases} x-y-z-t=0\\ y-2z-t=0 \end{cases}\Rightarrow\begin{cases} x=y+z+t=0\\ y=2z+t=0 \end{cases}\Rightarrow \begin{cases} x=3z+2t\\ y=2z+t=0 \end{cases}$ . Quindi diventa:
	$T=Span\left\{\left( \; \begin{array}{c} {3z+2t}\\ {2z+t}\\ {z}\\ {t} \end{array} \; \right),z,t\in \mathbb{Q}\right\}=\left\{\left( \; \begin{array}{c} {3}\\ {2}\\ {1}\\ {0} \end{array} \; \right);\left( \; \begin{array}{c} {2}\\ {1}\\ {0}\\ {1} \end{array} \; \right)\right\}$. Quindi $dimS=dimT=2$ 
	Adesso si può vedere in che forma sono i vettori di $S\cap T$, partendo prima dalla forma dei vettori in $S$ per poi risolvere il sistema proposto da $T$.
	$a\cdot \left( \; \begin{array}{c} {1}\\ {1}\\ {1}\\ {1} \end{array} \; \right)+ b\cdot \left( \; \begin{array}{c} {1}\\ {0}\\ {-1}\\ {0} \end{array} \; \right)= \left( \; \begin{array}{c} {a+b}\\ {a}\\ {a-b}\\ {a} \end{array} \; \right)\Rightarrow \begin{cases} a+b-a-a+b-a=0\\ a-2a+2b-a=0 \end{cases}\Rightarrow \begin{cases} 2b-2a=0\\ -2a+2b=0 \end{cases}\Rightarrow a=b$ 
	Si ottiene quindi che $S\cap T=\{\left( \; \begin{array}{c} {2a}\\ {a}\\ {0}\\ {a}\end{array} \; \right) \} \in \mathbb{R}^2\Rightarrow Span\{\left( \; \begin{array}{c} {2}\\ {1}\\ {0}\\ {1}\end{array} \; \right)\}\Rightarrow dim(S\cap T)=1$  
	$\mathscr{B}=\{\left( \; \begin{array}{c} {2}\\ {1}\\ {0}\\ {1}\end{array} \; \right)\}$ rappresenta una base di $S\cap T$, quindi si ottiene che $dim(S\cup T)=dimS+dimT-dim(S\cap T)=2+2-1=3$ 
	Per completare 	$\mathscr{B}=\left\{\left( \; \begin{array}{c} {2}\\ {1}\\ {0}\\ {1}\end{array} \; \right)\right\}$ in una base di $S\cup T$ basta prima completarla prima in una base di $S$ e poi in una base di $T$ (prendendo i vettori direttamente dagli $Span$), in modo così da formare $\mathscr{B}_S\cup \mathscr{B}_T$: 
	$\mathscr{B}_{S\cup T}=\left\{\left( \; \begin{array}{c} {2}\\ {1}\\ {0}\\ {1}\end{array} \; \right);\left( \; \begin{array}{c} {1}\\ {1}\\ {1}\\ {1}\end{array} \; \right);\left( \; \begin{array}{c} {3}\\ {2}\\ {1}\\ {0}\end{array} \; \right)\right\}$ dove il primo vettore appartiene a $\mathscr{B}_{S\cap T}$, il secondo a $\mathscr{B}_S$ e il terzo a $\mathscr{B}_T$ 
****
## Applicazioni Lineari

>[!def] Definizione di Applicazione Lineare
Siano $V$ e $W$ due $\mathbb{K}-\text{spazi vettoriali}$. Un'applicazione lineare $f:V\rightarrow W$ è un'applicazione soddisfacente le due seguenti proprietà:
a) $f(v_1+v_2)=f(v_1)+f(v_2)\quad \forall v_1,v_2\in V$;
b) $f(\alpha \cdot v)=\alpha \cdot f(v)\quad \forall \alpha\in \mathbb{K}, \forall v\in V$ ^bf336b

**Esempio**:
	Abbiamo già visto che, dato $V$ un $\mathbb{K}-\text{spazio vettoriale}$ di dimensione $dim=n$ e fissata una base $\mathscr{B}$ di $V$, l'applicazione $\phi:\begin{matrix} {V\rightarrow \; \;\mathbb{K}^n}\\ {v\mapsto \left( \begin{array}{c} {\alpha_1}\\ {\vdots}\\ {\alpha_n}\end{array}\right) }\end{matrix}$, che associa ad ogni vettore di $V$ la n-upla delle sue coordinate rispetto alla base $\mathscr{B}$. Visto che soddisfa le condizioni a e b, allora è una applicazione lineare, quindi $v= \left( \; \begin{array}{c} {\alpha_1}\\ {\vdots}\\ {\alpha_n}\end{array}\; \right)_\mathscr{B}$ 

>[!def] Definizione di Endomorfismo
Se in una applicazione lineare $f:V\rightarrow W$, $V=W$, allora si chiama Endomorfismo ^65e16a

>[!def] Definizione di Isomorfismo
Se una applicazione $f:V\rightarrow W$ è lineare e biunivoca, allora si parla di Isomorfismo ^6a1e81

**Esempi di funzioni lineari**: 
	$id_V:\begin{matrix}{V\rightarrow V}\\ {v\mapsto v}\end{matrix}$ Ci sono stessi dominio e codominio, non c'è nulla da verificare
	$0:\begin{matrix}{V\rightarrow W}\\ {v\mapsto 0_v}\end{matrix}$ Qui invece è tutto ovvio

**Osservazione**: Se nella proprietà b, che vale $\forall \alpha \in \mathbb{K}$ poniamo $\alpha=0$ si ottiene $0_V=f(0\cdot v)=0\cdot f(v)=0_W$.
In altre parole ogni applicazione manda il vettore nullo del dominio nel vettore nullo del codominio. ^24df1a

**Controesempio**:
	$f:\begin{matrix}{\mathbb{R}\rightarrow \mathbb{R}}\\ {x\mapsto x+1}\end{matrix}$ non è lineare
	$f:\begin{matrix} {\; \; \mathbb{K}^3\; \; \rightarrow \; \; \mathbb{K}^2}\\ {\left(\begin{array}{c} {x}\\ {y}\\ {z} \end{array}\right)\mapsto \left(\begin{array}{c} {x+1}\\ {y-z} \end{array}\right)}\end{matrix}$, per esempio $f\left( \; \begin{array}{c} {0}\\ {0}\\ {0} \end{array}\; \right)=\left( \; \begin{array}{c} {1}\\ {0}\\ \end{array}\; \right)≠\left( \; \begin{array}{c} {0}\\ {0}\\ \end{array}\; \right)$ 

Chiaramente l'Osservazione precedente  non è una condizione sufficiente per identificare una applicazione lineare, in quanto non è rispettata la somma.

**Esempio**:
	$f:\mathbb{R}\rightarrow \mathbb{R}\; f(x)= x^2$ non è lineare
	infatti: $f(2+3)=f(5)=25≠13=4+9=f(2)+f(3)$

**Esercizio**: 
	Dimostrare che le applicazioni lineari $f:\mathbb{K}\rightarrow \mathbb{K}$ sono tutte e sole quelle della forma $f(x)=kx$ al variare di $k\in \mathbb{K}$

**Soluzione**:
	Prima di tutto vanno verificate le condizioni di linearità
	a) $\forall x_1,x_2 \in \mathbb{K}, \; f(x_1+x_2)=k(x_1+x_2)=kx_1+kx_2=f(x_1)+f(x_2)$
	b) $\forall x \in \mathbb{K}, \forall \alpha \in \mathbb{K}, \; f(\alpha x)=k(\alpha x)=\alpha(kx)=\alpha\cdot f(x)$ 
	Poi va dimostrata l'unicità:
	mi basta dimostrarla vera per un solo elemento (1 per comodità) in modo da verificarla per un qualsiasi elemento di $\mathbb{K}$: $\varphi:\begin{matrix}{\mathbb{K}\rightarrow \mathbb{K}}\\ {1\mapsto k}\end{matrix}$ per un certo valore $k$. Si ottiene quindi per la proprietà b $\varphi(x)=\varphi(x\cdot 1)=x\cdot \varphi(1)=kx$ 
	Quindi l'immagine di $\varphi$ è definita completamente, in altre parole l'immagine di $A$ mediante $\varphi: \mathbb{K}\rightarrow \mathbb{K}$ determina $\varphi$ univocamente. 

**Osservazione**: Nell'esercizio precedente, definire una applicazione lineare $f:\mathbb{K}\rightarrow W$, con $W$ un qualsiasi spazio vettoriale, equivale a definire l'immagine di $f(1)$. Infatti $\{1\}$ è $\mathscr{B}_{\mathbb{K}}$, quindi $f(x), \forall x \in \mathbb{K}$, $f(x)=f(1\cdot x)=x\cdot f(1)$ 

**Esempio**:
	Voglio definire $f:\mathbb{K}\rightarrow M_2({\mathbb{K}})\simeq\mathbb{K}^4$ posso definire $f(1)=\begin{pmatrix}  a & b\\  c & d \end{pmatrix}\Rightarrow f(x)=\begin{pmatrix}  {ax} & {bx}\\  {cx} & {dx} \end{pmatrix}$ 

Equivalentemente, è possibile $f$ su qualunque elemento numerabile $z$ di $\mathbb{K}$ (che quindi definisce una base di $\mathbb{K}$)
Se $\displaystyle{f(z)=w \Rightarrow f(x)=\left(\frac{x}{z}\cdot z\right)=\frac{x}{z}\cdot w}$ 

*Domanda*: che succede se la dimensione è maggiore di 1?
Supponiamo di Voler definire una applicazione lineare $\varphi:\mathbb{K}^2\rightarrow \mathbb{K}^3$. Se definisco $\varphi\begin{pmatrix}1\\0\end{pmatrix}$ questo non basta per definire tutto $\mathbb{K^2}$. Infatti quanto vale $\varphi\begin{pmatrix}0\\1 \end{pmatrix}$?
Se $\varphi\begin{pmatrix} 1\\ 0 \end{pmatrix}\xlongequal{\text{def}}\begin{pmatrix} 1\\ 1\\ 1 \end{pmatrix}\Rightarrow \varphi\begin{pmatrix} \alpha\\ 0 \end{pmatrix}=\varphi\left(\alpha\begin{pmatrix} 1\\ 0 \end{pmatrix}\right)=\alpha\cdot \varphi\begin{pmatrix} 1\\ 0 \end{pmatrix}=\begin{pmatrix} \alpha\\ \alpha\\ \alpha \end{pmatrix}$, ma $\begin{pmatrix}1\\0 \end{pmatrix}$ non è linearmente dipendente con $\begin{pmatrix}0\\1\end{pmatrix}$. Devo definire quindi $\varphi$ per una base del dominio.
Per definire univocamente $\varphi$ su tutto $\mathbb{K}^2$ prendo ad esempio anche l'immagine di un vettore linearmente indipendente di $(^1_0)$ per esempio $(^0_1)$ e lo definisco come: $\varphi\begin{pmatrix} 0\\ 1 \end{pmatrix}=\begin{pmatrix} 1\\ {-1}\\ 0 \end{pmatrix}$ 
*Come si può vedere mi sto concentrando $\mathbf{SOLO}$ sul Dominio*. Quindi la funzione diventa $\varphi\begin{pmatrix} x\\ y \end{pmatrix}=\varphi \left( x\begin{pmatrix} 1\\ 0 \end{pmatrix}+y\begin{pmatrix} 0\\ 1 \end{pmatrix}\right) \xlongequal{\text{(a)}} \varphi \left(x\begin{pmatrix} 1\\ 0 \end{pmatrix}\right)+\varphi\left( \begin{pmatrix} 0\\ 1 \end{pmatrix}\right) \xlongequal{\text{(b)}}x\cdot \varphi\begin{pmatrix} 1\\ 0 \end{pmatrix} +y\cdot \varphi\begin{pmatrix} 0\\ 1 \end{pmatrix}=x\begin{pmatrix} 1\\ 1\\ 1 \end{pmatrix}+y\begin{pmatrix} 1\\ {-1}\\ 0 \end{pmatrix}=\begin{pmatrix} {x+y}\\ {x-y}\\ x \end{pmatrix}$ Da questo si ottiene che $\varphi:\begin{pmatrix} x\\ y \end{pmatrix}\mapsto \begin{pmatrix} {x+y}\\ {x-y}\\ x \end{pmatrix}$ 

**Esempio**:
	Trovare la definizione esplicita dell'applicazione lineare $f:\mathbb{Q}^2\rightarrow \mathbb{Q}_{≤3}[3]$ t.c. $f(^1_1)=x-x^3$ e $f(^{\; 1}_{-1})=1+x$ 
	$(^1_1)$ e $(^{\; 1}_{-1})$ sono due vettori linearmente indipendenti. Le condizioni assegnate definiscono $f$ univocamente, poiché $\{(^1_1),(^{\; 1}_{-1})\}$ individuano una base di $\mathbb{Q}^2$: $f(^a_b)=\alpha(^1_1)+\beta (^{\;1}_{-1})=(^{\alpha+\beta}_{\alpha-\beta})$ ricavando $\{^{\alpha+\beta=a}_{\alpha-\beta=b}\Rightarrow \{^{a=(\alpha+\beta)/2}_{b=(\alpha-\beta)/2}$.
	Quindi $f(^a_b)=f(\frac{a+b}{2}(^1_1)+\frac{a-b}{2}(^{\; 1}_{-1}))=^{\text{(a)}}_{\text{(b)}}\frac{a+b}{2}f(^1_1)+\frac{a-b}{2}(^{\;1}_{-1})=\frac{a+b}{2}(x-x^3)+\frac{a-b}{2}(x+1)=\frac{a-b}{2}+ax-\frac{a+b}{2}x^3$ 
	Se per case volessi trovare $f(^2_3)$ basta sopra con $a=2, b=3$ 

**Proposizione**: Una applicazione lineare $f:V\rightarrow W$ è univocamente determinata, definendo dalle immagini dei vettori di una base di $V$. 
***Dimostrazione***: 
	Sia $\mathscr{B}=\{v_1,...,v_n\}$ e siano $f(v_1)=w_1,...,f(v_n)=w_n$ per certi vettori $w_1,...,w_n$ fissati. Sia ora $v\in V$. Poiché $\mathscr{B}_V$ è base di $V$, allora $\alpha_1\cdot v_1+...+\alpha_n\cdot v_n, \alpha_i\in\mathbb{K}$. $f(v)=^\text{(a)}f(\alpha_1\cdot v_1)+...+f(\alpha_n\cdot v_n)=^\text{(b)}\alpha_1f(v_1)+...+\alpha_nf(v_n)=\alpha_1\cdot w_1+...+\alpha_n\cdot w_n$  ^6b3b8e

Da questa proposizione si ha che su ogni $v\in V$, $f$ è univocamente definita.
Verifichiamo che l'applicazione così definita è lineare: sia $v=\alpha_1\cdot v_1+...+\alpha_n\cdot v_n$ e $z=\beta_1\cdot w_1+...+\beta_n\cdot w_n$ con $v,z\in V$. Verifichiamola con la proprietà a della linearità (insieme alla b grazie al coefficiente $\lambda$): $f(v+\lambda z)=f((\alpha_1+\lambda \beta_1)v_1+...+(\alpha_n+\lambda\beta_n)v_n)=(\alpha_1+\lambda\beta_1)w_1+...+(\alpha_n+\lambda\beta_n)w_n=(\alpha_1w_1+...+\alpha_nw_n)+\lambda(\beta_1w_1+...+\beta_nw_n)$ il che è uguale a $f(v)+f(z)$
Tuttavia noi non sappiamo nulla di $w_1,...,w_n$. 

**Definizione di Immagine di f**: Sia $f:V\Rightarrow W$ una applicazione lineare. Si chiama *Immagine di f* e si indica con $Im(f)$ il seguente sottoinsieme di $W$: $Im(f)=\{w\in W|\exists v \in V:w=f(v)\}=f(V)$  ^08b2af

**Proposizione**: $Im(f)$ è un sottospazio di  $W$
***Dimostrazione***: 
	Rappresenta una semplice verifica rispetto alla somma e al prodotto per scalari:
	$[+]$ Siano $w_1,w_2\in Im(f)$, quindi $w_1=f(v_1),v_1\in V$ e $w_2=f(v_2),v_2\in V$, quindi 
	$w_1+w_2=f(v_1)+f(v_2)=^{\text{(a)}}f(v_1+v_2)$, visto che $v_1+v_2\in V$ allora $f(v_1+v_2)\in Im(f)$
	$[\; \cdot \;]$ Sia $w\in Im(f)$ e $\lambda \in \mathbb{K}$, $\lambda w= \lambda f(v)=^\text{(b)}f(\lambda v)$, ma visto che $\lambda v\in V$, allora $f(\lambda v)\in Im(f)$

**Osservazione**: Sia $f:V\rightarrow W$ lineare. $f$ è suriettiva se e solo se $Im(f)=W$, se e solo se $dim(Im(f))=dim(W)$ 
Ossia è un sottospazio del codominio con la stessa dimensione

**Proposizione**: Sia $f:V\rightarrow W$ lineare e sia $\mathscr{B}_V\{v_1,...,v_n\}$ una base di $V$, allora $Im(f)=Span\{f(v_1),...,f(v_n)\}$ 
***Dimostrazione***:
	Sia $w\in Im(f)\Rightarrow w=f(v)$ per qualche $v\in V$, ma $v=\alpha_1v_1+...+\alpha_nv_n$, quindi si ottiene $w=f(\alpha_1v_1+...+\alpha_nv_n)=\alpha_1f(v_1)+...+\alpha_n f(v_n)$, quindi sono dei generatori

**Esempio**:
	Sia $f:\mathbb{K}^3\rightarrow \mathbb{K}^2$ l'applicazione lineare definita da $f\begin{pmatrix} x\\ y\\ z\end{pmatrix}=\begin{pmatrix} {x-y}\\ {y-z} \end{pmatrix}$ 
	$Im(f)=Span\left\{f\begin{pmatrix} 1\\ 0\\ 0\end{pmatrix}\;f\begin{pmatrix} 0\\ 1\\ 0\end{pmatrix};f\begin{pmatrix} 0\\ 0\\ 1\end{pmatrix}\right\}$ è comodo per esempio (lo Span della base canonica)
	con $f$ si ottiene $Span=\left\{\begin{pmatrix} 1\\ 0\end{pmatrix}\begin{pmatrix} {-1}\\ 1\end{pmatrix}\begin{pmatrix} 0\\ {-1}\end{pmatrix}\right\}=\mathbb{K}^2$. La funzione è suriettiva, si ha però che i vettori sono linearmente dipendenti, quindi la funzione non è iniettiva.

*Osservazioni della funzione precedente*:
1. $f$ è suriettiva
2. $f$ *non* manda vettori linearmente indipendenti del Dominio in vettori linearmente indipendenti del Codominio (non potrebbe mai farlo perché sono diverse le dimensioni)
3. $f$ non è iniettiva (*Esempio: $f\begin{pmatrix}{-1}\\0\\1\end{pmatrix}=\begin{pmatrix}{-1}\\ 1\end{pmatrix}=f\begin{pmatrix}0\\ 1\\ 0\end{pmatrix}$*)

**Esempio**:
	$g:\mathbb{K}^2\rightarrow\mathbb{K}^3$. Si ha che $Im(g)=Span\left\{g\begin{pmatrix}1\\0 \end{pmatrix};g\begin{pmatrix}0\\1 \end{pmatrix}\right\}$, quindi si ha che $dim(Im(g))≤2$ ciò implica che la funzione non è mai suriettiva (Visto che $Im(g)\subsetneq \mathbb{R}^3$) e $g\begin{pmatrix}x\\ y \end{pmatrix}=\begin{pmatrix}0\\ y\\ 0\end{pmatrix}$, quindi sicuro non è iniettiva.

*Osservazioni della funzione precedente*:
1. $Im(g)$ è generato da $g\begin{pmatrix}1\\ 0 \end{pmatrix}$ e $g\begin{pmatrix}0\\1 \end{pmatrix}$, ossia da $Span\left\{\begin{pmatrix}0\\ 0\\ 0\end{pmatrix}\begin{pmatrix}0\\ 1\\ 0\end{pmatrix}\right\}=Span\left\{\begin{pmatrix}0\\ 1\\ 0\end{pmatrix}\right\}$, quindi è di dimensione 1
2. $g$ non è iniettiva ($g\begin{pmatrix}0\\0\end{pmatrix}=\begin{pmatrix}0\\0\\0 \end{pmatrix}=g\begin{pmatrix}1\\0 \end{pmatrix}$)
3. $g$ non presenta la lineare indipendenza 

**Esempio**: 
	$h:\mathbb{K}^2\rightarrow \mathbb{K}^3$ $h\begin{pmatrix}x\\ y\end{pmatrix}=\begin{pmatrix}x\\ y\\ 0\end{pmatrix}$ 

*Osservazioni sulla funzione precedente*: 
1. $h$ è iniettiva: $\begin{pmatrix}x\\ y\\ 0\end{pmatrix}=\begin{pmatrix}a\\ b\\ 0\end{pmatrix}\rightarrow \begin{matrix} {x=a}\\ {y=b}\end{matrix}$ 
2. $Im(h)=Span\left\{h\begin{pmatrix}1\\0\end{pmatrix},h\begin{pmatrix}0\\1\end{pmatrix}\right\}=\left\{\begin{pmatrix}1\\0\\0\end{pmatrix},\begin{pmatrix}0\\1\\0 \end{pmatrix}\right\}$, quindi $dim(Im(h))=2$ 

>[!def] Definizione di Nucleo della Funzione
Sia $f:V\rightarrow W$ lineare. Si chiama Nucleo di $f$ e si indica con $Ker(f)$ il seguente sottoinsieme: $$Ker(f)=\{v\in V|f(v)=0\}$$ ^e1598d

**Proposizione**: $Ker(f)$ è sottospazio di $V$
***Dimostrazione***: 
	Rappresenta una semplice verifica dello spazio vettoriale.
	- $[0_V]$  $0_V\in Ker(f)\Leftarrow f(0_V)=0_V$ 
	- $[+]$ Siano $v_1,v_2\in Ker(f)$, allora $v_1+v_2\in Ker(f)$ 
		Con $f(v_1+v_2)\xlongequal{\text{(a)}}f(v_1)+f(v_2)$ ma $f(v_1)=0_V$ e $f(v_2)=0_V$ allora $0_V+0_V=0_V$ 
	- $[\;\cdot\;]$ Siano $v\in Ker(f)$ e $\lambda\in\mathbb{K}$, $f(\lambda v)\xlongequal{\text{(b)}}\lambda f(x)=\lambda 0_V=0_V$ quindi $\lambda v\in Ker(f)$ 

Tutto questo mi serve per vedere se la funzione $f$ è iniettiva, infatti se $f$ è iniettiva, allora $Ker(f)$ è banale.

**Proposizione**: Sia $f:V\rightarrow W$ lienare. Se $f$ è iniettiva $\Leftrightarrow$ $Ker(f)=\{0_V\}$ ($\Leftrightarrow dim(Ker(f))=0$)
***Dimostrazione***: 
	$\Rightarrow$) Sia $f$ iniettiva. Allora $Ker(f)$ è banale perché se $Ker(f)\ni z≠0_V$, avremmo $f(z)=0_V=f(0_V)$, che è contro l'iniettività.
	$\Leftarrow$) Sia $Ker(f)=\{0_V\}$, Voglio dimostrare che $Ker(f)$ è iniettiva. Siano $f(v_1)=f(v_2)$ con $v_1,v_2\in V\Leftrightarrow f(v_1)=f(v_2)=0_V\Leftrightarrow f(v_1-v_2)=0_V\Rightarrow v_1-v_2\in Ker(f)=\{0_V\}\Leftrightarrow v_1-v_2=0_V\rightarrow v_1=v_2$ 

**Proposizione**: Sia $f:V\rightarrow W$ un'applicazione lineare, allora $f$ è iniettiva se e solo se manda vettori linearmente indipendenti in vettori linearmente indipendenti ($\Leftrightarrow$ preserva la lineare indipendenza). 

**Osservazioni**:
1. $f:\mathbb{K}^n\rightarrow \mathbb{K}^m$ lineare con $n>m$. $f$ non può preservare la lineare indipendenza e (per quanto detto nella proposizione precedente) non può essere iniettiva. *Non stiamo dicendo niente riguardo alla suriettività della funzione*
2. $g:\mathbb{K}^n\rightarrow \mathbb{K}^m$ con $n<m$. $g$ è lineare ma non può essere suriettiva. *Non stiamo dicendo niente sulla suriettività*

***Dimostrazione***: 
	$\Leftarrow$) Supponiamo che $f$ presenti la lineare indipendenza, allora $Ker(f)$ è banale, altrimenti esisterebbe un vettore non nullo nel nucleo di $f$ ($v\in Ker(f)$), per cui $f(v)=0_V$, ma $v$ è indipendente mentre $0_V$ è dipendente, quindi è in contraddizione l'iniettività. Quindi $Ker=\{0_V\}$, quindi la funzione è iniettiva
	$\Rightarrow$) Sia $f$ una funzione iniettiva ($\Leftrightarrow Ker(f)=\{0_V\}$). Siano $v_1,...,v_n\in V$ e linearmente indipendenti. Vogliamo dimostrare che le immagini dei vettori sono linearmente indipendenti in $W$. Sia dunque $\alpha_1 f(v_1)+...+\alpha_n f(v_n)=0_W$ con $\alpha_1,...,\alpha_n\in\mathbb{K}$. Per la linearità della funzione si ha che $f(\alpha_1v_1+...+\alpha_nv_n)=0_W$, ma si ha che $\alpha_1v_1+...+\alpha_nv_n\in Ker(f)$, quindi si ottiene che $\alpha_1v_1+...+\alpha_nv_n=0_V$ (perché la funzione iniettiva). Ma visto che $v_1,...,v_n$ sono linearmente indipendenti, si ha che le soluzioni sono $\alpha_1=...=\alpha_n=0$ e che $f(v_1),...,f(v_n)$ sono linearmente indipendenti
***
## Matrici e Applicazioni Lineari

>[!def] Definizione di Prodotto di Righe per Colonna
Sia $A\in M_{m,n}(\mathbb{K})$ e sia $\underline{v}=\begin{pmatrix} {x_1}\\ {\vdots}\\ {v_n}\end{pmatrix}\in \mathbb{K}^n$. Definiamo il prodotto "Righe per Colonna" $A\cdot \underline{v}$ nel modo seguente: $$\displaystyle{\begin{pmatrix} {a_{1,1}} & {a_{1,2}} & {...} & {a_{1,n}}\\ {a_{2,1}} & {a_{2,2}} & {...} & {a_{2,n}}\\ {\vdots} & {\vdots} & {} & {\vdots}\\ {a_{m,1}} & {a_{m,2}} & {...} & {a_{m,n}}\\ \end{pmatrix}\cdot\begin{pmatrix}x_1\\ x_2\\ \vdots\\ x_n\end{pmatrix}=\begin{pmatrix} a_{1,1}x_1+a_{1,2}x_2+...+a_{1,n}x_n \\ a_{2,1}x_1+a_{2,2}x_2+...+a_{2,n}x_n\\ \vdots\\ a_{m,1}x_1+a_{m,2}x_2+...+a_{m,n}x_n\end{pmatrix}=\begin{pmatrix} \sum^{n}_{j=1}a_{1,j}x_j \\ ∑^{n}_{j=1}a_{2,j}x_j\\ \vdots\\ ∑^{n}_{j=1}a_{m,j}x_j\end{pmatrix}}$$Oppure considerando solamente con la riga i-esima: $∑^{n}_{j=1}a_{i,j}x_j$  ^6c84ca

Fissata dunque una qualsiasi matrice $A\in M_{m,n}(\mathbb{K})$ possiamo definire una applicazione lineare:
$L_A: \begin{matrix}{\; \mathbb{K}^n \quad \rightarrow \quad \mathbb{K}^m \;}\\ {\begin{pmatrix}x_1\\ \vdots\\ x_n\end{pmatrix}} \mapsto A{\begin{pmatrix}x_1\\ \vdots\\ x_n\end{pmatrix}}\end{matrix}$ (Verificata che è lineare sul quaderno)

**Esempio**:
	Sia $A=\begin{pmatrix}-1 & 0 & 1\\ 1 & 2 & 1\end{pmatrix}\in M_{2,3}(\mathbb{Q})$. Consideriamo l'applicazione $L_A:\mathbb{Q}^3\rightarrow\mathbb{Q}^2$ $L_A\begin{pmatrix}x\\ y\\ z\end{pmatrix}=\begin{pmatrix}-1 & 0 & 1\\ 1 & 2 & 1\end{pmatrix}\begin{pmatrix}x\\ y\\ z\end{pmatrix}=\begin{pmatrix}-x+z\\ x+2y+z\end{pmatrix}$. Che insieme è $Ker(L_A)$?
	$Ker(L_A)=\left.\left\{\begin{pmatrix}x\\ y\\ z\end{pmatrix}\in \mathbb{Q}^3\;\right|\;L_A\begin{pmatrix}x\\ y\\ z\end{pmatrix}=\begin{pmatrix}0\\0\end{pmatrix}\right\}\Rightarrow\left.\left\{\begin{pmatrix}x\\ y\\ z\end{pmatrix}\in \mathbb{Q}^3\;\right|\; \begin{cases} {-x+z=0}\\ {x+2y+z=0}\end{cases}\right\}$ 
	*Chiaramente si ha che non può essere iniettiva in quanto si passa da $\mathbb{Q}^3$ a $\mathbb{Q}^2$*
	$\begin{cases} {-x+z=0}\\ {x+2y+z=0}\end{cases}\Rightarrow \begin{cases} {x=-y}\\ {z=-y} \end{cases}$  Quindi $Ker(L_A)=Span\left\{\begin{pmatrix}1\\ -1\\ 1\end{pmatrix}\right\}$ 
	Se si volesse calcolare $Im(L_A)$ si ottiene 
	$Im(L_A)=Span\left\{L_A\begin{pmatrix}1\\0 \\0\end{pmatrix}, L_A\begin{pmatrix}0\\1 \\0\end{pmatrix}, L_A\begin{pmatrix}0\\0 \\1\end{pmatrix}\right\}=Span\left\{\begin{pmatrix}-1\\1\end{pmatrix},\begin{pmatrix}0\\2\end{pmatrix},\begin{pmatrix}1\\1\end{pmatrix}\right\}=\mathbb{Q}^2$ 
	I valori dei numeri corrispondono alle colonne della matrice $A$
	Si ottiene inoltre che $dim(Ker(L_A))+dim(Im(L_A))=dim(\mathscr{Dominio})$ 


**Osservazioni**:
1. Le colonne di una matrice $A\in M_{n,m}(\mathbb{K})$ sono le immagini mediante l'applicazione lineare $L_A$ dei vettori $e_1,...,e_n$ della base canonica di $\mathbb{K}^m$. Quindi $Im(L_A)=Span\{\text{ colonne di A }\}$.
2. Una applicazione lineare $\varphi:\mathbb{K}^n\rightarrow \mathbb{K}^m$ è univocamente definita dalle immagini di una base di $\mathbb{K}^n$, per esempio dalle immagini della base canonica. In altre parole, esiste un'unica applicazione lineare $\varphi: \mathbb{K}^n\rightarrow\mathbb{K}^m$ tale che esiste $\varphi(e_1)=w_1,...,\varphi(e_n)=w_n$ con $w_1,...,w_n\in\mathbb{K}^m$ assegnati.
3. (Somma di 1. e 2.) Per ogni applicazione lineare $\mathbb{K}^n\rightarrow\mathbb{K}^m$ esiste una matrice $A\in M_{n,m}(\mathbb{K})$ t.c. $\varphi=L_A$. Basterà infatti costruire la matrice $A=(\varphi(e_1),...,\varphi(e_n))\in M_{n,m}(\mathbb{K})$. In questo modo $L_A(e_1)=\varphi(e_1), L_A(e_2)=\varphi(e_2),...,L_A(e_n)=\varphi(e_n)$ (che per 2. $L_A=\varphi$) 

>[!th] Teorema del Rango
Sia $f:V\rightarrow W$ lineare con $V$ e $W$ di dimensione finita, allora $dim(V)=dim(Ker(f))+dim(Im(f))$  

*Questo non è un teorema di struttura, in quanto non stabilisce legami tra le dimensioni e V. Però fa sorgere la tentazione di affermare che il nucleo e l'Immagine sono in somma diretta. $\mathbf{FALSO}$, perché semplicemente sono due cose completamente distinte*.

***Dimostrazione***: 
	Sia $\{v_1,...,v_k\}=\mathscr{B}_K$ base di $Ker(f)$. Completo $\mathscr{B}_K$ in una base $\mathscr{B}_V=\{v_1,..,v_k,v_{k+1},...,v_n\}$ di $V$. Supponiamo $Im(f)=Span\{f(v_1),...,f(v_k),f(v_{k+1},...,f(v_n)\}$. Tuttavia si ha che $f(v_1)=...=f(v_k)=0_W$ perché stanno nel Nucleo di $V$. 
	Dobbiamo però dimostrare che $dim(Im(f))=n-k$, questo lo si può fare dimostrando che $f(v_{k+1},...,v_n)$ sono linearmente indipendenti. Siano quindi $\alpha_1f(v_{k+1})+...+\alpha_{n-k}f(v_n)=0_W$ con $\alpha_1,...,\alpha_{n-k}\in\mathbb{K}$. Per la linearità dell'applicazione $f$, la si può scrivere anche come $f(\alpha_1v_{k+1}+...+\alpha_{n-k}v_n)=0_W$. Si ha quindi che la combinazione $\alpha_1v_{k+1}+...+\alpha_{n-k}v_n$ fa parte di $Ker(f)=Span\{v_{k+1},...,v_n\}$. 
	Ma si ha che $Span\{v_1,...,v_k\}\cap Span\{v_{k+1},...,v_n\}=\{0_V\}$. Quindi i vettori $v_{k+1},...,v_n$ sono linearmente indipendenti, di conseguenza si ha che $\alpha_1=...=\alpha_{n-k}=0$. Allora si ha che $f(v_{k+1}),...,f(v_n)$ sono linearmente indipendenti, rappresentano quindi una base di $Im(f)$, di conseguenza $dim(Im(f))=n-k$

*Da notare come tutti questi numeri sono $≥0$*

*Conseguenze*: 
1. Sia $dim(V)>dim(W)$, $\nexists$ un'applicazione iniettiva $f:V\rightarrow W$ perché $dim(Ker(f))>0$
2. Se $dim(V)<dim(W)$, $\nexists$ un'applicazione suriettiva $g:V\rightarrow W$ perché $dim(Im(f))≤dim(V)<dim(W)\Rightarrow Im(f)\subsetneq W$ 
3. Se $V=W$, allora $f:V\rightarrow W$, $f$ iniettiva $\Leftrightarrow$ $f$ suriettiva. 
	Infatti $f$ iniettiva $\Leftrightarrow$ $Ker(f)=\{0_V\}$ $\Leftrightarrow$ $dim(Ker(f))=0$ $\xLeftrightarrow{\text{Teorema del Rango}}$  $dim(Im(f))=dim(W)$ $\Leftrightarrow$ $Im(f)=W$ $\Leftrightarrow$ $f$ suriettiva

**Osservazione**: Nella dimostrazione del teorema del Rango si ha che $f:V\rightarrow W$ è lineare. Presa $\mathscr{B}=\{v_1,...,v_k\}$ del $Ker(f)$. La completiamo in $V$:  $\mathscr{B}_V=\{v_1,...,v_k,v_{k+1},...,v_n\}$, applicando la funzione lineare si ottiene $\{f(v_{k+1}),...,f(v_n)\}=\mathscr{B}_{f(v)}$, si ottiene quindi che $Ker(f)\oplus Span\{v_{k+1},...,v_n\}=V$. Quindi applicando delle restrizioni si ottiene $\large{f|_{Span\{v_{k+1},...,v_n\}}}:Span\{v_{k+1},...,v_n\}\rightarrow W$. Questa funzione è ristretta e iniettiva, quindi è un isomorfismo su $Im(f)$
Se così non fosse avrei un vettore tra $v_{k+1},...,v_n$ tale che $f(v)=0$. Quindi dovrebbe dare 0, cioè dovrebbe far parte del nucleo, ma la cosa è impossibile perché $0_V$ è linearmente dipendente, perciò $f(0_V)=0_W$, quindi $Ker(Span\{v_{k+1},...,v_n\})=\{0_V\}$. 

>[!def] Definizione di Controimmagine
Data una funzione $f:V\rightarrow W$. Si chiama Controimmagine o Preimmagine o Antimmagine di $W$ mediante $f$ e si indica con $f^{-1}(w)$ il seguente sottoinsieme di $V$: $$f^{-1}(w)=\{v\in V\;|\; f(v)=w\}$$ ^36ba34

**Esempio**:
	$f^{-1}(0_W)=Ker(f)$

**Osservazioni**:
1. $f^{-1}(w)≠\varnothing$ se e solo se $w\in Im(f)$ (cioè se $f$ è suriettiva)
2. $f^{-1}(w)$ è sottospazio di $V$ se e solo se $w=0_W$ 
	Infatti se $w=0$, $f^{-1}(w)=Ker(f)$ che sappiamo essere un sottospazio vettoriale 
	$\forall w ≠ 0_W$, $f^{-1}(w)¬\ni 0_V$ (per definizione di sottospazio vettoriale)

Come è fatta $f^{-1}(w)$ quando $w≠0_W$ e $w\in Im(f)$? *($f^{-1}$ non è altro che altro che una notazione)*
Se $w \in Im(f)$ significa che $\exists v_1 \in V$ tale che $w_1=f(v_1)$. Se $f$ è iniettiva, $f^{-1}(w_1)=\{v_1\}$.
Altrimenti supponiamo $\exists v_2\in f^{-1}(w_1)$ con $v_1≠v_2$. Cioè $f(v_1)=f(v_2)=w\Leftrightarrow f(v_1-v_2)=0 \Leftrightarrow v_1-v_2\in Ker(f)$ $\Leftrightarrow v_1=v_2+z, \; z\in Ker(f)$. Quindi $f^{-1}(w)\subseteq v+Ker(f)$

Definiamo il sottoinsieme di $V$: $v_2+Ker(f)=\{v_2+z; | \; z\in Ker(f)\}$. 
Abbiamo dimostrato poco prima che $f^{-1}(w)\subseteq v+Ker(f)$. 
D'altra parte $\forall z\in Ker(f), \; f(v_2+z)=f(v_2)+f(z)$, ma $f(v_2)=w_w$ e $f(z)=0_W$, quindi $f(v_2)+f(z)=w_2$, cioè vale l'inclusione inversa $v+Ker(f)\subseteq f^{-1}(w)$. Quindi $v+Ker(f)=f^{-1}(w)$ 
Tutto questo grazie alla definizione di linearità.
Si ha però che non è un sottospazio (a meno che $w=0_W$)

In generale dato un vettore $v\in V$ e dato un sottospazio $S$ di $V$, posso definire un sottoinsieme $v+S\subseteq V$ e che $v+S=\{v+z\; |\; z\in S\}$ *(La somma rappresenta una traslazione)*

**Esempio**: 
	Sia $f: \mathbb{K}^3\rightarrow \mathbb{K}^2$ un'applicazione lineare definita come $f\begin{pmatrix}x\\ y\\ z\end{pmatrix}\rightarrow \begin{pmatrix}{x-y+z}\\ {y-z}\end{pmatrix}$. Sia $w=\begin{pmatrix} 1\\ -1 \end{pmatrix}$. Determinare $f^{-1}$.	$f^{-1}(w)=\left.\left\{\begin{pmatrix}x\\ y\\ z\end{pmatrix} \in \mathbb{Z}^3 \; \right| \; f\begin{pmatrix} x\\ y\\ z\end{pmatrix} = \begin{pmatrix}1\\-1\end{pmatrix}\right\}=\left.\left\{\begin{pmatrix}x\\ y\\ z\end{pmatrix} \in \mathbb{Z}^3 \; \right| \; \begin{cases} {x-y+z=1}\\ {y-z=-1} \end{cases}\right\}$$=\left.\left\{\begin{pmatrix}x\\ y\\ z\end{pmatrix} \in \mathbb{Z}^3 \; \right| \; \begin{cases} {x=0}\\ {y=z-1} \end{cases}\right\}=\left.\left\{\begin{pmatrix}0\\ z-1\\ z\end{pmatrix} \in \mathbb{Z}^3 \; \right| \; z\in \mathbb{K}\right\}$
	Dobbiamo separare i termini noti dalle variabili quindi: $\begin{pmatrix}0\\-1\\ 0\end{pmatrix}+Span\left\{\begin{pmatrix}0\\ 1\\ 1\end{pmatrix}\right\}$ 

**Proposizione**: Siano $f:V\rightarrow W$ e $g:W\rightarrow U$ due funzioni lineari. $W$ è Codominio di $f$ e Dominio di $g$, quindi $g\circ f: V\rightarrow U$ è lineare.
***Dimostrazione***: 
	$(g\circ f)(v_1+v_2)=g(f(v_1+v_2))=g(f(v_1)+f(v_2))$ per la linearità di $f$ $=g(f(v_1))+g(f(v_2))$ per la linearità di $g=$ $g\circ f(v_1)+g\circ f(v_2)$. Analogamente si dimostra che $(g\circ f)(\lambda v)=\lambda (g\circ f)(v)$ 

*Domanda*: Come sono fatte le applicazioni $\mathbb{K}^n\rightarrow \mathbb{K}^m$? Attraverso $L_A$ 
Siano $f:\mathbb{K}^n\rightarrow \mathbb{K}^m$ lineare e $g:\mathbb{K}^m\rightarrow \mathbb{K}^p$ lineare. Sappiamo che $\exists A \in M_{m,n}(\mathbb{K})$ t.c. $f=L_A$ e $\exists B \in M_{p,n}(\mathbb{K})$ t.c. $f=L_B$. 
Per la proposizione precedente si ha che $f\circ g: \mathbb{K}^n\rightarrow \mathbb{K}^p$ è lineare, quindi $\exists C \in M_{p,n}(\mathbb{K})$ t.c. $g\circ f=L_C$.
Come si trova $C$? Attraverso il prodotto di matrici *più avanti*. 

**Proposizione**: Se $f:V\rightarrow W$ è lineare e biunivoca, allora $f^{-1}:W\rightarrow V$ è lineare. Si dice in questo caso che $f$ è isomorfismo di spazi vettoriali.

**Esempio**:
	Se $\mathscr{B}$ è base di $V$, avevamo definito che $\phi_\mathscr{B}:V\rightarrow \mathbb{K}^n$, $\phi_\mathscr{B}$ è un isomorfismo di spazi vettoriali.
	$\phi_\mathscr{B}^{-1}: \mathbb{K}^n\rightarrow V$  è costruita così: $\mathscr{B}\{v_1,...,v_n\}$, $\phi_\mathscr{B}^{-1}\left(\begin{pmatrix}x_1 \\ \vdots \\ x_n\end{pmatrix}\right)=x_1v_1+...+x_nv_n$.
	Ogni spazio vettoriale di $dim=n$ è isomorfo a $\mathbb{K}^n$, in quanto in ogni spazio vettoriale esiste una base.
	Non è unico in quanto ogni base definisce un diverso isomorfismo.

***Dimostrazione***: 
	Siano $w_1$ e $w_2$, dobbiamo dimostrare che $f^{-1}(w_1+w_2)=f^{-1}(w_1)+f^{-1}(w_2)$. $f^{-1}(w_1)$ è l'unico vettore in $V$ t.c. $f(\;\;)=w_1$ e $f^{-1}(w_2)$ è l'unico vettore in $V$ t.c. $f(\;\;)=w_2$. Quindi $f(f^{-1}(w_1)+f^{-1}(w_2))=^{\text{per la linearità di }f}_{\text{si ottiene che}}=f(f^{-1}(w_1))+f(f^{-1}(w_2))$, ma $f(f^{-1}(w_1))=w_1$ e $f(f^{-1}(w_2))$. Quindi l'immagine di $f$ mediante $f^{-1}(w_1)+f^{-1}(w_2)$ mediante $f$ è $w_1+w_2$, cioè $f^{-1}(w_1)+f^{-1}(w_2)=f^{-1}(w_1+w_2)$. In maniera analoga si dimostra che $f^{-1}(\lambda w)=\lambda f^{-1}(w)$ 

Conseguenza molto importante: Se consideriamo l'insieme delle funzioni lineari $V\rightarrow V$, biunivoche, quest'insieme con la composizione rappresenta un gruppo chiamato $GL(V)$ o $Aut(V)$. Queste funzioni sono dette Automorfismi di $V$ ^f462a4
*Si ha che la funzione neutra corrisponde alla funzione identità*.

Considerazione sugli isomorfismi su spazi vettoriali.
**Proposizione**: Due spazi vettoriali di dimensione finita su $\mathbb{K}$ sono isomorfi se e solo se hanno la stessa dimensione. 
***Dimostrazione***: 
	$\Leftarrow$) Siano $V$ e $W$ con $dim(V)=dim(W)=n$. $\mathscr{B}_V$ è una base di $V$ e $\mathscr{B}_W$ è una base di $W$. Allora ho $\phi_{\mathscr{B}_V}:V\rightarrow \mathbb{K}^n$ isomorfismo e $\phi_{\mathscr{B}_W}:W\rightarrow \mathbb{K}^n$. Allora $\phi_{\mathscr{B}_W}^{-1} \circ \phi_{\mathscr{B}_V}:V\rightarrow W$ è isomorfismo.
	$\Rightarrow$) Sia $f:V\rightarrow W$ isomorfismo, poiché $f$ è suriettiva $dim(W)≤dim(V)$ e poiché $f$ è iniettiva $dim(V)≤dim(W)\Rightarrow dim(V)=dim(V)$.

**Osservazione**: $f:V\rightarrow W$ è isomorfismo se $\{v_1,...,v_n\}\Leftrightarrow \{f(v_1),...,f(v_n)\}=\mathscr{B}_W$ 

**Esempio**: 
	$L_A: \mathbb{K}^n\rightarrow \mathbb{K}^n$ è un automorfismo $\Leftrightarrow$ Colonne di $A$ sono base di $\mathbb{K}^n$

**Esercizio**:
	Costruire se possibile una funzione lineare $\mathbb{R}^3\rightarrow \mathbb{R}^2$ suriettiva tale che:
	$f \begin{pmatrix}1\\0\\1\end{pmatrix}=\begin{pmatrix}1\\1\end{pmatrix}\qquad f \begin{pmatrix}1\\0\\-1\end{pmatrix}=\begin{pmatrix}1\\1\end{pmatrix}\qquad f \begin{pmatrix}2\\0\\3\end{pmatrix}=\begin{pmatrix}2\\2\end{pmatrix}$ 

**Soluzione**:
	Per *Costruire* si intende trovare $f\begin{pmatrix}x_1\\ x_2\\ x_3\end{pmatrix}=\begin{pmatrix}\; & \; & \; \\ \; & ... & \; \\ \; & \; & \; \end{pmatrix}$, oppure posso definirlo io secondo il teorema (Data una base $\mathscr{B}_V=\{v_1,...,v_n\}$) di $V$ e fissati $w_1,...,w_n$ di $W$, esiste un'unica funzione $f:V\rightarrow W$  che lega $f(v_1)=w_1,...,f(v_n)=w_n$ 
	So che la funzione deve essere suriettiva, quindi la Base deve essere generatore di Base. 
	Come procedere:
	1. Si controlla se i vettori dati rappresentano una base: 
	$\begin{pmatrix}1\\0\\1\end{pmatrix}, \begin{pmatrix}1\\0\\-1 \end{pmatrix}, \begin{pmatrix} 2\\0\\3\end{pmatrix}$ rappresentano una base? No, perché $\begin{pmatrix}0\\1\\0\end{pmatrix}$ non ne è combinazione lineare.
	Quindi sono linearmente dipendenti: $\alpha \begin{pmatrix}1\\0\\1 \end{pmatrix}+\beta \begin{pmatrix}1\\0\\-1 \end{pmatrix}=\begin{pmatrix}2\\0\\3\end{pmatrix}\Rightarrow \begin{cases} {\alpha+\beta=2}\\ {\alpha-\beta=3} \end{cases}\Rightarrow \begin{cases} {\alpha=\frac{5}{2}}\\ {\beta=-\frac{1}{2}} \end{cases}$ 
	Quindi per ogni $f:\mathbb{R}^3\rightarrow \mathbb{R}^2$ si avrà che:
	$f\begin{pmatrix}2\\0\\3 \end{pmatrix}=\frac{5}{2}\begin{pmatrix}1\\0\\1\end{pmatrix}-\frac{1}{2}\begin{pmatrix}1\\0\\-1\end{pmatrix}=\frac{5}{2}\begin{pmatrix}1\\1\end{pmatrix}-\frac{1}{2}\begin{pmatrix}1\\1\end{pmatrix}=\begin{pmatrix}2\\2\end{pmatrix}$ *(Se fosse stato $\begin{pmatrix}2\\3\end{pmatrix}$ non poteva esistere $f$)*
	Ciò significa che $f \begin{pmatrix}2\\0\\3\end{pmatrix}=\begin{pmatrix}2\\2\end{pmatrix}$ è una condizione che non determina niente.
	2. Si completa $\begin{pmatrix}1\\0\\1 \end{pmatrix}, \begin{pmatrix}1\\0\\-1\end{pmatrix}$ in una base di $\mathbb{R}^3$, aggiungendo (per esempio) $\begin{pmatrix}0\\1\\0\end{pmatrix}$ e per ogni $\begin{pmatrix}a\\ b\end{pmatrix}$ esiste un'unica $f\begin{pmatrix}1\\0\\1\end{pmatrix}=\begin{pmatrix}1\\1\end{pmatrix}\qquad f\begin{pmatrix}1\\0\\-1\end{pmatrix}=\begin{pmatrix}1\\1\end{pmatrix}\qquad f\begin{pmatrix}0\\1\\0\end{pmatrix}=\begin{pmatrix}a\\ b\end{pmatrix}$ 
	Quindi mi base prendere un $\begin{pmatrix}a\\ b\end{pmatrix}\notin Span\left\{\begin{pmatrix}1\\1\end{pmatrix}\right\}$ come ad esempio $\begin{pmatrix}1\\0\end{pmatrix}$

**Esercizio**:
	Sia $\mathbb{K}$ con $p$ elementi ($\mathbb{Z}_{/p}$) e considero $\mathbb{K}^3$
	Quante sono le basi in $\mathbb{K}^3$? *(Equivale a chiedere "quanti elementi ha $Gl(\mathbb{K}^3)$")*
	1. Quanti vettori ci sono in $\mathbb{K}^3$? $p!$ vettori
	2. Cerco $v_1,v_2,v_3$ 
		a. Il primo vettore deve essere $v_1≠0$ quindi ci sono $p^3-1$ scelte
		b. Il secondo vettore (una volta scelto $v_1$) non deve essere multiplo di $v_1$, quindi ci sono $p^3-p$ scelte
		c. Il terzo vettore (una volta scelti $v_1$ e $v_2$) non deve appartenere a $Span\{v_1,v_2\}$, quindi ci sono $p^3-p^2$ scelte
	Quindi le scelte possibili sono $(p^3-1)(p^3-p)(p^3-p^2)$ 
Riprendendo l'esercizio precedente si arriva a concludere che le scelte possibili sono $\displaystyle{\prod_{k=0}^n(p^n-p^k)}$ 

>[!def] Matrice Associata ad una applicazione lineare
Sia $f:V\rightarrow W$ una applicazione lineare. Siano $\mathscr{B}_V=\{v_1,...,v_n\}$ una base del Dominio (da cui $dimV=n$) e $\mathscr{B}_W=\{w_1,...,w_m\}$ una base del Codominio (da cui $dimW=m$). Si definisce una matrice associata ad $f$ rispetto alle basi $\mathscr{B}_V$ e $\mathscr{B}_W$ e si indica con $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f) \in M_m,n(\mathbb{K})$ la matrice che ha sulla i-esima colonna le coordinate del vettore $f(v_i)$ rispetto alla base $\mathscr{B}_W$ (ma dipende strettamente da quali basi si sono scelte)
$\mathscr{B}_V\ni v_1\mapsto f(v_1) \in W= \alpha_1w_1+...+\alpha_mw_m=\begin{pmatrix}\alpha_1\\ \vdots \\ \alpha_m \end{pmatrix}_{\mathscr{B}_W}$;$v_2\mapsto f(v_2) \in W= \beta_1w_1+...+\beta_mw_m=\begin{pmatrix}\beta_1\\ \vdots \\ \beta_m \end{pmatrix}_{\mathscr{B}_W}$
Quindi la matrice diventa $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)=\begin{pmatrix}\alpha_1 & \beta_1 & ...\\ \vdots & \vdots & \\ \alpha_m & \beta_m & ...\end{pmatrix}$.

**Esempio**: 
	La matrice di $L_A:\mathbb{K}^n\rightarrow \mathbb{K}^m$ rispetto alle basi canoniche è $A$.

**Esempio**: 
	Sia $f:M_2(\mathbb{K})\rightarrow \mathbb{K}_{≤2}[x]$: $f\begin{pmatrix}a & b\\ c & d\end{pmatrix}=a+b+cx+(d-c)x^2$ 
	Come prima cosa devo fissare una base del Dominio e del Codominio:
	$\mathscr{B}_V=\{E_1,E_2,E_3,E_4\}$ e $\mathscr{B}_W\{1,x,x^2\}$, 
	$E_{1,1}=\begin{pmatrix}1 & 0\\ 0 & 0\end{pmatrix}\mapsto 1=\begin{pmatrix} 1\\ 0\\ 0\end{pmatrix}_{\mathscr{B}_W}$, $E_{1,2}=\begin{pmatrix}0 & 1\\ 0 & 0\end{pmatrix}\mapsto1=\begin{pmatrix} 1\\ 0\\ 0\end{pmatrix}_{\mathscr{B}_W}$ 
	$E_{2,1}=\begin{pmatrix}0 & 0\\ 1 & 0\end{pmatrix}\mapsto x-x^2 =\begin{pmatrix} 0\\ 1\\ -1\end{pmatrix}_{\mathscr{B}_W}$,$E_{2,2}=\begin{pmatrix}0 & 0\\ 0 & 1\end{pmatrix}\mapsto x^2 =\begin{pmatrix} 0\\ 0\\ 1\end{pmatrix}_{\mathscr{B}_W}$ 
	quindi $M^{\mathscr{B}_V}_{\mathscr{B}_W}\in M_{3,4}(\mathbb{K})=\begin{pmatrix} 1 & 1 & 0 & 0\\ 0 & 0 & 1 & 0\\ 0 & 0 & -1 & 1\end{pmatrix}$ 
	Cambiando base del Codominio si ottiene $\mathscr{B}'_{W}=\{1+x+x^2,x+x^2,x^2\}$  
	$E_{1,1}=\begin{pmatrix}1 & 0\\ 0 & 0\end{pmatrix}\mapsto 1=\begin{pmatrix} 1\\ -1\\ 0\end{pmatrix}_{\mathscr{B}_W}$, $E_{1,2}=\begin{pmatrix}0 & 1\\ 0 & 0\end{pmatrix}\mapsto1=\begin{pmatrix} 1\\ -1\\ 0\end{pmatrix}_{\mathscr{B}_W}$ 
	$E_{2,1}=\begin{pmatrix}0 & 0\\ 1 & 0\end{pmatrix}\mapsto x-x^2 =\begin{pmatrix} 0\\ 1\\ -2\end{pmatrix}_{\mathscr{B}_W}$,$E_{2,2}=\begin{pmatrix}0 & 0\\ 0 & 1\end{pmatrix}\mapsto x^2 =\begin{pmatrix} 0\\ 0\\ 1\end{pmatrix}_{\mathscr{B}_W}$ 
	Quindi $M^{\mathscr{B}_V}_{\mathscr{B}'_W}\in M_{3,4}(\mathbb{K})=\begin{pmatrix} 1 & 1 & 0 & 0\\ -1 & -1 & 1 & 0\\ 0 & 0 & -2 & 1\end{pmatrix}$ 

**Osservazione**: $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)$ determina $f$ univocamente perché ha sulle colonne i vettori $f(v_1),...,f(v_n)$ (scritti in coordinate rispetto alla base $\mathscr{B}_W$) essendo $\mathscr{B}_V=\{v_1,...,v_n\}$ una base del Dominio $V$. In particolare il numero di colonne linearmente indipendenti di $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)$ è $dim(Im)$

Come si trova $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)$?
Sia $v\in V$ e $v\mapsto \begin{pmatrix}a_1\\ \vdots \\ a_n\end{pmatrix}$. Il prodotto righe per colonna $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)\begin{pmatrix}a_1\\ \vdots \\ a_n\end{pmatrix}=\begin{pmatrix}b_1\\ \vdots \\ b_n\end{pmatrix}$ fornisce le coordinate di $f(v)$ nella base $\mathscr{B}_W$ 

**Esempio**:
	$f:M_2(\mathbb{K})\rightarrow \mathbb{K}_{≤2}[x]$: $f\begin{pmatrix}a & b\\ c & d\end{pmatrix}=a+b+cx+(d-c)x^2$ 
	Riprendendo le basi precedenti si ottiene che $f\begin{pmatrix}1 & 0\\ 1 & -1\end{pmatrix}=1+x-2x^2=\begin{pmatrix} 1 & 1 & 0 & 0\\ -1 & -1 & 1 & 0\\ 0 & 0 & -2 & 1\end{pmatrix}\begin{pmatrix}1\\0\\1\\-1\end{pmatrix}=\begin{pmatrix}1\\0\\-3\end{pmatrix}_{\mathscr{B}_W}$ 
	Infatti andando a sostituire i coefficienti nelle basi si ottiene $1+x-2x^2$ 

Perché tutto ciò funziona?
$\begin{matrix} & V & \rightarrow^f & W\\ \varphi^{-1}_{\mathscr{B}_V} \uparrow & \varphi_{ \mathscr{B}_V} \downarrow & & \downarrow \varphi_{\mathscr{B}_W} \\ & \mathbb{K}^n & \rightarrow_{L_A} & \mathbb{K}^m \end{matrix}$, quindi si ottiene $\varphi_{\mathscr{B}_W}\circ f \circ \varphi^{-1}_{\mathscr{B}_V}: \mathbb{K}^n\rightarrow \mathbb{K}^m$ lineare. Tutto questo è per una questione di isomorfismi. In fatti si riesce ad ottenere anche che $f=\varphi^{-1}_{\mathscr{B}_W}\circ L_A \circ \varphi_{\mathscr{B}_V}$ 
In sintesi $e_1 \mapsto ^{\varphi^{-1}_{\mathscr{B}_V}} v_1 \mapsto^f f(v_1) \mapsto^{\varphi_{\mathscr{B}_V}}\text{vettore coordinate di }f(v_1)\text{ nella base di W}$  
***

## Proiezioni

>[!def] Definizione di Proiezione
Siano $V=S\oplus T$ con $dim(V)=n$, $dim(S)=k$ e $dim(T)=n-k$ (in cui ogni vettore è scrivibile in forma unica) Posso definire una applicazione $π^{(T)}_{S}:^{V\rightarrow V}_{v\mapsto s}$ (Proiezione di $S$ lungo $T$) (da verificare che è lineare). Si ottiene che $π^{(T)}_S=S$ in quanto ogni vettore $v=s+t$ ma $t\mapsto 0$ quindi $v=s+t\mapsto s+0=s$ per qualsiasi vettore in $S$ ^93f341

In questo caso si ottiene che $Ker(π^{(T)}_S)=T$, quindi $V=Ker(π^{(T)}_S)\oplus Im(π^{(T)}_S)$ 
Ma non è sempre così.

**Controesempio**:
	$L_A: \mathbb{K}^2\rightarrow \mathbb{K}^2$ con $\begin{pmatrix}1\\0 \end{pmatrix}\mapsto\begin{pmatrix}0\\0 \end{pmatrix}$ e $\begin{pmatrix}0\\1 \end{pmatrix}\mapsto\begin{pmatrix}1\\0 \end{pmatrix}$, quindi si ha che $A=\begin{pmatrix}0 & 1\\ 0 & 0\end{pmatrix}$, quindi $Ker(L_A)=Im(L_A)=Span\left\{\begin{pmatrix}1\\0\end{pmatrix}\right\}$ 

Fissata una base $\mathscr{B}_V$ di $V$ si ha che $\mathscr{B}_V=\mathscr{B}_S\cup \mathscr{B}_T=\{v_1,...,v_k\}\cup \{v_{k+1},...,v_n\}$, quindi la matrice diventa: 
$M^{\mathscr{B}_V}_{\mathscr{B}_V}(π^{(T)}_S)=\Large{\begin{pmatrix}Im & 0\\ 0 & 0\end{pmatrix}}$  dove $Im=\begin{pmatrix}1 & ... & 0\\ \vdots & \ddots & \vdots\\ 0 & ... &1 \end{pmatrix}$ 

>[!def] Seconda Definizione di Proiezione $π^{(T)}_S$
Prendo un $v\in V$, questo può essere scritto come somma di due vettori $u+w$ di due sottospazi vettoriali in somma diretta $S\oplus T$ con $u\in S, w\in T$. In questo modo si ha che $π_S=u$.
Non solo, si ha che $Kerπ_S=T$ e $Imπ_S=S$. Quindi $π_S|_{_S}=id(S)$.

Consideriamo adesso $\{v_1,...,v_k\}=\mathscr{B}_S$ e $\{v_{k+1},...,v_n\}=\mathscr{B}_T$. Quindi $\{v_1,...,v_k,v_{k+1},...,v_n\}=\mathscr{B}_V$. Chi è $M_{\mathscr{B}_V}^{\mathscr{B}_V}(π_S)$?
*Quando si tratta di Endomorfismi, prendere la stessa base è sempre la cosa migliore*
Facendo $π_S$ dei vettori della base si ottiene che $π_S(v_1)=v_1$, ... ,$π_S(v_{k})=v_{k}$, $π_S(v_{k+1})=0$, ... , $π_S(v_n)=0$ 
Quindi $M^{\mathscr{B}_V}_{\mathscr{B}_V}(π_S)=\Large{\begin{pmatrix}Im & 0\\ 0 & 0\end{pmatrix}}$, mentre con $M^{\mathscr{B}_V}_{\mathscr{B}_V}(π_T)=\Large{\begin{pmatrix}0 & 0\\ 0 & Im\end{pmatrix}}$ 

Non sempre la matrice associata è fatta allo stesso modo, infatti dipende dalle basi.

**Esempio**:
	Siano $S=\left. \left\{\begin{pmatrix}x\\ y\end{pmatrix}\right|\;  2x+y=0\right\}$ e $T=\left. \left\{\begin{pmatrix}x\\ y\end{pmatrix}\right|\;  x-3y=0\right\}$, quindi $S=Span\left\{\begin{pmatrix}1\\-2\end{pmatrix}\right\}$ e $T=Span\left\{\begin{pmatrix}3\\1\end{pmatrix}\right\}$ 
	Se prendo $\mathscr{B}_V=\left\{\begin{pmatrix}1\\-2\end{pmatrix},\begin{pmatrix}3\\1\end{pmatrix}\right\}$, si ottiene che $M^{\mathscr{B}_V}_{\mathscr{B}_V}(π_S)=\begin{pmatrix}1 & 0\\ 0 & 0\end{pmatrix}$.
	Chi sarebbe se prendessi come basi le basi canoniche $M^{Can}_{Can}(π_S)$?
	Mi basta calcolare $π_S\begin{pmatrix}1\\0\end{pmatrix}$ e $π_S\begin{pmatrix}0\\1\end{pmatrix}$ 
	$\begin{pmatrix}1\\0\end{pmatrix}=a\begin{pmatrix}1\\-2\end{pmatrix}+b\begin{pmatrix}3\\1\end{pmatrix}=\begin{cases} {a+3b=1} \\ {-2a+b=0}\end{cases}=\begin{cases} {a=\frac{1}{7}} \\ {b=\frac{2}{7}}\end{cases}\Longrightarrow π_S\begin{pmatrix}1\\0\end{pmatrix}=\frac{1}{7}\begin{pmatrix}1\\-2\end{pmatrix}=\begin{pmatrix}\frac{1}{7} \\ -\frac{2}{7}\end{pmatrix}$ 
	$\begin{pmatrix}0\\1\end{pmatrix}=a\begin{pmatrix}1\\-2\end{pmatrix}+b\begin{pmatrix}3\\1\end{pmatrix}=\begin{cases} {a+3b=0} \\ {-2a+b=1}\end{cases}=\begin{cases} {a=\frac{1}{7}} \\ {b=-\frac{3}{7}}\end{cases}\Longrightarrow π_S\begin{pmatrix}0\\1\end{pmatrix}=-\frac{3}{7}\begin{pmatrix}1\\-2\end{pmatrix}=\begin{pmatrix}-\frac{3}{7} \\ \frac{6}{7}\end{pmatrix}$ 
	Quindi $M^{Can}_{Can}(π_S)=\begin{pmatrix} \frac{1}{7} & -\frac{2}{7}\\ -\frac{3}{7} & \frac{6}{7} \end{pmatrix}$ 

Il trucco è scegliere la base ideale

Chi è $π_S \circ π_S$? (che si può indicare anche come $π_S^2$)  $π_S^2=π_S$, perché un vettore proiettato su una retta, già proiettato sulla stessa retta, resta sempre lo stesso vettore. $π_S^2(v)=π_S(u)=u$ 
Mostriamo che se $P$ (qui $P=π$) è un endomorfismo tale che $P^2=P$, allora esiste una scomposizione $V=S\oplus T$ tale che $p$ rappresenta la proiezione di $V$ su $S$.
Dove cerchiamo $S$ e $T$?
Notiamo già che $P^2=P$ implica che $V=KerP\oplus ImP$ (per quanto osservato sopra), infatti per il teorema del rango basta dimostrare che $KerP\cap ImP=\{0\}$ 
Supponiamo di prendere un vettore $v\in KerP\cap ImP$ 
- Visto che sta in $KerP\Rightarrow P(v)=0$
- Visto che sat in $Im(P)\Rightarrow v=P(u)$ 
Quindi $P^2(u)=P(v)=0$ ma avendo per ipotesi che $P^2=P$ si ha che $P^2(u)=P(u)=v=0$, Quindi si ha che l'unico $v$ possibile è $v=0$. 
Questo significa che preso un $w$ qualsiasi, se $w=v+u$ con $v\in ImP$ e $u\in KerP$ si ha che $P(w)=P(v)=P(u)=v+0=v$ 

>[!def] Prodotto di Matrici (Righe per Colonne) 
Siano $A\in M_{m,n}(\mathbb{K})$ e $B\in M_{n,p}(\mathbb{K})$. Definiamo allora il prodotto $AB\in M_{m,,p}(\mathbb{K})$ con la matrice di di posto $a_{i,j}$ tale che $A=(a_{q,k})$ e $B=(b_{r,s})$ è $(AB)_{i,j}=\sum^n_l a_{i,l}b_{l,j}$  
In maniera esplicita risulta: $$\begin{pmatrix} a_{1,1} & a_{1,2} & ... & a_{1,n}\\ a_{2,1} & a_{2,2} & ... & a_{2,n}\\ \vdots & \vdots & & \vdots \\ a_{m,1} & a_{m,2} & ... & a_{m,n}\end{pmatrix} \begin{pmatrix} b_{1,1} & b_{1,2} & ... & b_{1,p}\\ b_{2,1} & b_{2,2} & ... & b_{2,p} \\ \vdots & \vdots & & \vdots \\ b_{n,1} & b_{p,2} & \dots & b_{p,n}\end{pmatrix}=\begin{pmatrix} \displaystyle\sum^n_{l=1} a_{1,l}b_{l,1} & ... & \displaystyle\sum^n_{l=1} a_{1,l}b_{l,p} \\ \vdots & & \vdots \\ \displaystyle\sum^n_{l=1} a_{m,l}b_{l,1} & ... & \displaystyle\sum^n_{l=1} a_{m,l}b_{l,p}\end{pmatrix}$$  

Quali proprietà soddisfa:
1. **Non** è commutativo al punto che se $AB$ è ben definito ma non $BA$, talvolta è definito anche il contrario
	Per esempio se $A=\begin{pmatrix} 1 & -1\\ 0 & 2 \end{pmatrix}$ e $B=\begin{pmatrix} 1 & 0 & 1\\ 2 & 0 & -2 \end{pmatrix}$ si ha che $AB=\begin{pmatrix} -1 & 0 & 3\\ 4 & 0 & -4 \end{pmatrix}$, ma non è definito $BA$. 
	Se invece esistono sia $AB$ sia $BA$, le due matrici sono diverse:
	$A=\begin{pmatrix} 1 & 2\\ -1 & 4 \end{pmatrix}$ e $B=\begin{pmatrix} 1 & 3\\ 0 & 1 \end{pmatrix}$ allora $AB=\begin{pmatrix} 1 & 5\\ -1 & 1 \end{pmatrix}≠BA=\begin{pmatrix} -2 & 14\\ -1 & 4 \end{pmatrix}$  
	*Ricorda molto la composizione di funzioni*
2. Il prodotto di matrici è associativo $A(BC)=(AB)C$ 
3. È distributiva rispetto alla somma $A(B+C)=AB+AC$ e $(A+B)C=AC+BC$ 
4. $I_n$ è una matrice quadrata $\begin{pmatrix} 1 & ... & 0\\ \vdots & \ddots & \vdots\\ 0 & ... & 1 \end{pmatrix}$ tale che $I_n \; A=A=A \; I_n$ 
	La verifica è $(I_n \; A)_{i,j}=\displaystyle\sum^n_{l=1}z_{1,n}a_{n,j}=a_{i,j}$ dove $z_{i,n}=0$ e $z_{i,i}=1$ 

**Osservazione**: Sia $id_V:V\rightarrow V$ l'identità e $\mathscr{B}_V$ una base di $V$. Allora $M^{\mathscr{B}_V}_{\mathscr{B}_V}(id_V)=In$. Questo però non è verso se scelgo una base del Dominio e una base diversa del Codominio. 

**Esempio**:
	$\mathscr{B}_V=\left\{\begin{pmatrix} 1\\1 \end{pmatrix},\begin{pmatrix}1\\0\end{pmatrix}\right\}$ e $\mathscr{B}_V'=\left\{\begin{pmatrix} 1\\0 \end{pmatrix},\begin{pmatrix}0\\1\end{pmatrix}\right\}$ e $id_V:V\rightarrow V$, si ha che $M^{\mathscr{B}_V}_{\mathscr{B}_V'}(id_V)=\begin{pmatrix} 1 & 1\\1 & 0 \end{pmatrix}$ 
	Ma se cambiamo i vettori di $\mathscr{B}_V$ scritti sulle coordinate rispetto a $\mathscr{B}_V'$: $M^{\mathscr{B}_V'}_{\mathscr{B}_V}(id)=\begin{pmatrix} 0 & 1\\ 1 & -1 \end{pmatrix}$. La matrice rappresenta i vettori di $\mathscr{B}_V'$ scritti in coordinate di $\mathscr{B}_V$. Infatti $\begin{pmatrix}1 & 1\\1 & 0\end{pmatrix}\begin{pmatrix}0 & 1\\1 & -1\end{pmatrix}=\begin{pmatrix}1 & 0\\0 & 1\end{pmatrix}=\begin{pmatrix}0 & 1\\1 & -1\end{pmatrix}\begin{pmatrix}1 & 1\\1 & 0\end{pmatrix}$ 

>[!def] Definizione di Matrice Invertibile 
Sia $A\in M_n(\mathbb{K})$. Diremo che $A$ è invertibile se esiste una matrice $B\in M_n(\mathbb{K})$ tale che $AB=BA=I_n$. Inoltre, $B$ si chiama inverso di $A$ e si indica con $A^{-1}$

>[!th] Teorema
Siano $f:V\rightarrow W$ e $g:W\rightarrow Z$ applicazioni lineari tra $K-\text{spazi vettoriali}$. Sia $\mathscr{B}_V$, $\mathscr{B}_W$ e $\mathscr{B}_Z$ basi fissate di $V,W,Z$ rispettivamente. Allora: $${\overrightarrow{\begin{matrix} V & \xrightarrow{f} & W & \xrightarrow{g} & Z \\ \mathscr{B}_V & & \mathscr{B}_W & & \mathscr{B}_Z \end{matrix}}^{g\circ f}}$$ e la matrice associata è $M^{\mathscr{B}_{V}}_{\mathscr{B}_{Z}}(g\circ f)=M^{\mathscr{B}_{W}}_{\mathscr{B}_{Z}}(g)\cdot M^{\mathscr{B}_{V}}_{\mathscr{B}_{W}}(f)$ 

***Dimostrazione***
	So già che sono lineari. Siano $\mathscr{B}_V=\{v_1,...,v_b\}$, $\mathscr{B}_W=\{w_1,...,w_m\}$ e $\mathscr{B}_Z=\{z_1,...,z_k\}$. Sulla $i$-esima colonna di $M^{\mathscr{B}_{V}}_{\mathscr{B}_{Z}}(g\circ f)$ trovare le coordinate rispetto alla base $\mathscr{B}_Z$ del vettore $(g\circ f)(v)$ 
	D'altra parte $(g\circ f)(v)=g(\underbrace{f(v)}_{\text{i-esima colonna di }M^{\mathscr{B}_{V}}_{\mathscr{B}_{W}}})$ = $M^{\mathscr{B}_{V}}_{\mathscr{B}_{Z}}(g)\cdot(^{\text{coordinate di } f(v_i) }_{\text{rispetto a }\mathscr{B}_W})$ = $i$-esima colonna di $A$. 

**Applicazione 1**: 
	Sia $f:V\rightarrow W$ un isomorfismo ($\Rightarrow dim(V)=dim(W)=n$), cioè $f$ è lineare, invertibile $\Leftrightarrow\exists f^{-1}:W\rightarrow V$ isomorfo: $\overrightarrow{V \rightarrow^{f} W\rightarrow^{f^{-1}}V}^{id}\rightarrow f^{-1}\circ f=id$. Fissata una base $\mathscr{B}_V$ di $V$ e una base di $\mathscr{B}_W$ di $W$. Con le matrici si ottiene:
	$\overbrace{M^{\mathscr{B}_{V}}_{\mathscr{B}_{V}}(id)}^{I_n}=\overbrace{M^{\mathscr{B}_{W}}_{\mathscr{B}_{V}}(f^{-1})}^{M^{-1}}\overbrace{M^{\mathscr{B}_{V}}_{\mathscr{B}_{W}}(f)}^{M}$. Analogamente $\overrightarrow{W \rightarrow^{f^{-1}} V\rightarrow^{f}W}^{id}$ e $I_n=M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)\cdot M^{\mathscr{B}_W}_{\mathscr{B}_V}(f^{-1})$ 

**Applicazione 2**: 
Sia $\begin{matrix}V & \xrightarrow{f} & W\\ \mathscr{B}_V & & \mathscr{B}_W \end{matrix}\Rightarrow M^{\mathscr{B}_V}_{\mathscr{B}_W}$  con $f:V\rightarrow W$ biunivoca. Si ha che: $$\left.{\overrightarrow{\begin{matrix} V & \xrightarrow{id_{V}}& V & \xrightarrow{f} & W & \xrightarrow{id_W} & W \\ \mathscr{B}_V' & & \mathscr{B}_V & & \mathscr{B}_W & & \mathscr{B}_{W}'\\ v & \mapsto & v & \mapsto & w & \mapsto & w\end{matrix}}^{g\circ f}}\right\}\Rightarrow f=id_W\circ f \circ id_V$$ E si ottiene che: $M^{\mathscr{B}_{V}'}_{\mathscr{B}_{W}'}(f)=\underbrace{M^{\mathscr{B}_{W}}_{\mathscr{B}_{W}'}(id_W)}_{\text{matrice del campio base da }\mathscr{B}_W \text{ a }\mathscr{B}_W'}\cdot M^{\mathscr{B}_{V}}_{\mathscr{B}_{W}}(f)\cdot \underbrace{M^{\mathscr{B}_{V}'}_{\mathscr{B}_{W}}(id_V)}_{\text{matrice del campio base da }\mathscr{B}_V' \text{ a }\mathscr{B}_V}$ 

>[!def] Definizione di Matrice del Cambiamento di Base
Dati $V$ un $\mathbb{K}-\text{spazio vettoriale}$ e $\mathscr{B}_V'$ e $\mathscr{B}_V$ due basi distinte di $V$, si chiama matrice del cambiamento di base da $\mathscr{B}_V'$ a $\mathscr{B}_V$ la matrice assegnata a $id_V$ rispetto alla base $\mathscr{B}_V'$ nel Dominio alla base $\mathscr{B}_V$ nel Codominio, cioè la matrice ${M^{\mathscr{B}_{V}'}_{\mathscr{B}_{V}}(id_V)}$. Quindi tale matrice ha sulle colonne i vettori coordinate dei vettori di $\mathscr{B}_V'$ rispetto a $\mathscr{B}_V$. ^b21938

Notiamo che le matrici del cambiamento di base ${M^{\mathscr{B}_{V}'}_{\mathscr{B}_{V}}(id_V)}$ e ${M^{\mathscr{B}_{V}}_{\mathscr{B}_{V}'}(id_V)}$ sono una l'inverso dell'altra e sono del tipo $${\overrightarrow{\begin{matrix} V & \xrightarrow{id} & V & \xrightarrow{id} & V \\ \mathscr{B}_V & & \mathscr{B}_V' & & \mathscr{B}_V \end{matrix}}^{id}}$$ dove ${M^{\mathscr{B}_{V}}_{\mathscr{B}_{V}}(id)}={M^{\mathscr{B}_{V}}_{\mathscr{B}_{V}'}(id)}{M^{\mathscr{B}_{V}'}_{\mathscr{B}_{V}}(id)}$ 

**Esempio**:
	SIa $V=\mathbb{K}^2$. Siano $\mathscr{B}'_V=\left\{\begin{pmatrix}1\\-1\end{pmatrix},\begin{pmatrix}2\\1\end{pmatrix}\right\}$ $\mathscr{B}_V=\left\{\begin{pmatrix}1\\1\end{pmatrix},\begin{pmatrix}-3\\1\end{pmatrix}\right\}$.
	$\left. \begin{matrix} {\begin{pmatrix}1\\-1\end{pmatrix}=a\begin{pmatrix}1\\1\end{pmatrix}+b\begin{pmatrix} -3\\1\end{pmatrix}=\begin{cases} {a-3b=1}\\ {a+b=-1} \end{cases}=\begin{cases} {a=-\frac{1}{2}}\\ {b=-\frac{1}{2}} \end{cases}} \\ {\begin{pmatrix}2\\1 \end{pmatrix} =a\begin{pmatrix}1\\1\end{pmatrix}+b\begin{pmatrix} -3\\1\end{pmatrix}=\begin{cases} {a-3b=2}\\ {a+b=1} \end{cases}=\begin{cases} {a=\frac{5}{4}}\\ {b=-\frac{1}{4}} \end{cases}} \end{matrix} \right\}\Rightarrow M^{\mathscr{B}_V'}_{\mathscr{B}_V}\begin{pmatrix} -\frac{1}{2} & \frac{5}{4}\\ -\frac{1}{2} & -\frac{1}{4} \end{pmatrix}$ 
	Sia $v=\begin{pmatrix}1\\1\end{pmatrix}$ in $\mathscr{B}_V'$, chi è in $\mathscr{B}_V$?  $\begin{pmatrix} -\frac{1}{2} & \frac{5}{4}\\ -\frac{1}{2} & -\frac{1}{4} \end{pmatrix}\begin{pmatrix} 1\\1 \end{pmatrix}=\begin{pmatrix} \frac{3}{4}\\ -\frac{3}{4} \end{pmatrix}$ 
	$v=\begin{pmatrix}1\\-1\end{pmatrix}+\begin{pmatrix}2\\1\end{pmatrix}=\begin{pmatrix}3\\0\end{pmatrix}=\frac{3}{4} \begin{pmatrix}1\\1\end{pmatrix}-\frac{3}{4}\begin{pmatrix}-3\\1\end{pmatrix}$ 

Se $v=\begin{pmatrix}\alpha_1 \\ \vdots \\ \alpha_n\end{pmatrix}_{\mathscr{B}_V'}$, il prodotto riche per colonne $M^{\mathscr{B}_V'}_{\mathscr{B}_V}\begin{pmatrix}\alpha_1 \\ \vdots \\ \alpha_n\end{pmatrix}$  fornisce (in colonna) le coordinate di $V$ rispetto alla base $\mathscr{B}_V$ e più in generale: $\left.{\overrightarrow{\begin{matrix} V & \xrightarrow{id_{V}}& V & \xrightarrow{f} & W & \xrightarrow{id_W} & W \\ \mathscr{B}_V' & & \mathscr{B}_V & & \mathscr{B}_W & & \mathscr{B}_{W}'\end{matrix}}^{g\circ f}}\right\}\Rightarrow f=id_W\circ f \circ id_V$ e $M^{\mathscr{B}_{V}'}_{\mathscr{B}_{W}'}(f)=M^{\mathscr{B}_{W}}_{\mathscr{B}_{W}'}(id_W)\cdot  M^{\mathscr{B}_{V}}_{\mathscr{B}_{W}}(f)\cdot M^{\mathscr{B}_{V}'}_{\mathscr{B}_{W}}(id_V)$ 
Se volessi non volessi cambiare base da entrambe le parti mi basta togliere un pezzo agli estremi.

*Caso Particolare*: Un caso particolare si presenta con gli endomorfismi. $$\left.{\overrightarrow{\begin{matrix} V & \xrightarrow{id_{V}}& V & \xrightarrow{f} & V & \xrightarrow{id_V} & V \\ \mathscr{B}_V' & & \mathscr{B}_V & & \mathscr{B}_V & & \mathscr{B}_{V}'\end{matrix}}^{g\circ f}}\right\}\Rightarrow f=id_W\circ f \circ id_V$$ e con $M^{\mathscr{B}_{V}'}_{\mathscr{B}_{V}'}(f)=\underbrace{M^{\mathscr{B}_{V}}_{\mathscr{B}_{V}'}(id_V)}_{H^{-1}}\cdot  M^{\mathscr{B}_{V}}_{\mathscr{B}_{V}}(f)\cdot \underbrace{M^{\mathscr{B}_{V}'}_{\mathscr{B}_{V}}(id_V)}_{H}=H^{-1}\cdot M^{\mathscr{B}_{V}}_{\mathscr{B}_{V}}(f)\cdot H$ 

>[!def] Definizione di Matrici Coniugate
Diciamo che due matrici $A,B\in M_n(\mathbb{K})$ si dicono Coniugate o Simili se esiste una matrice $M\in GL_n(H)$ (ossia è invertibile) t.c. $B=H^{-1}AH$ 

**Osservazione**: Matrici simili associano lo stesso endomorfismo rispetto a basi diverse

***Problema Principale***: Date due matrici quadrate $A,B\in M_n(\mathbb{K})$ stabilire se sono simili. Cioè capire se stabiliscono lo stesso endomorfismo.

**Esempio**:
	- Le matrici $A=\underbrace{\begin{pmatrix}1 & -1\\ 2 & -2\end{pmatrix}}_{\text{Dimensione = 1}}$ e $B=\underbrace{\begin{pmatrix}1 & 1\\1 & 0\end{pmatrix}}_{\text{Dimensione = 2}}$ sono simili?
	$NO$, La matrice $A$ descrive un endomorfismo la cui immagine ha dimensione $1$, mentre la matrice $B$ descrive un endomorfismo la cui immagine ha dimensione $2$
	- Le matrici $C=\begin{pmatrix}0 & 1\\0 & 0\end{pmatrix}$ e $D=\begin{pmatrix}1 & 1\\1 & 1\end{pmatrix}$ su $M_2(\mathbb{Q})$ sono simili?
	Entrambe hanno dimensione 1, quindi non si può seguire lo stesso ragionamento di prima
	*Si può però pensare alle proiezioni.*
	$C$ descrive un endomorfismo $f$ di $\mathbb{K}^2$ tale che $f^2=0$ perché se $C=M^{\mathscr{B}_V}_{\mathscr{B}_V}(f)\Rightarrow C^2=M^{\mathscr{B}_V}_{\mathscr{B}_V}(f^2)$. 
	E $C^2=\begin{pmatrix}0 & 1\\0 & 0\end{pmatrix}\begin{pmatrix}0 & 1\\0 & 0\end{pmatrix}=\begin{pmatrix}0 & 0\\0 & 0\end{pmatrix}$ che è il vettore nullo
	$D$ tuttavia non può descrivere un endomorfismo con la stessa caratteristica $\Rightarrow D^2≠0$ 
	Infatti $D^2=\begin{pmatrix}1 & 1\\1 & 1\end{pmatrix}\begin{pmatrix}1 & 1\\1 & 1\end{pmatrix}=\begin{pmatrix}2 & 2\\2 & 2\end{pmatrix}≠\begin{pmatrix}0 & 0\\0 & 0\end{pmatrix}$ 
	Quindi la risposta definitiva è $NO$ 

>[!def] Definizione di Matrice Nilpotente
Una matrice si definisce *Nilpotente* quando $\exists k \in \mathbb{N} \;|\; C^k=0$ 

**Riflessioni**:
1. L'unica matrice simile alla matrice nulla è la matrice nulla: $H^{-1}0H=0$ e rappresenta un endomorfismo nullo. Infatti la matrice $0$ rappresenta l'applicazione nulla. $M^{\mathscr{B}_V}_{\mathscr{B}_V}(^\text{operatore}_\text{nullo})=0,\forall \mathscr{B}_V$, cioè posso scegliere qualsiasi base che la matrice risulterà sempre nulla
2. L'unica matrice simile a $I_n$ è $I_n$: $H^{-1}\cdot I_n \cdot H= H^{-1}\cdot H=I_n\Leftrightarrow M^{\mathscr{B}_V}_{\mathscr{B}_V}(id_V)=I_n$  con la stessa base sia nel Dominio sia nel Codominio
		Nell'esempio di prima, leggiamo $C=M^{\mathscr{B}_V}_{\mathscr{B}_V}(f), f\in end(\mathbb{Q}^2)$ (endomorfismi di $\mathbb{Q}^2$). Sia una base $\mathscr{B}$ di $V$, esiste una base $\mathscr{B}'$ di $\mathbb{Q}^2$ tale che $D=M^{\mathscr{B}}_\mathscr{B}(f)$? 
		Osservo che $C^2=0\Rightarrow M^\mathscr{B}_\mathscr{B}(f^2)=f^2=0$ 
		Al contrario ho che $D^2≠0$, quindi $D≠M^{\mathscr{B}'}_\mathscr{B}(f)$, altrimenti $D^2=M^{\mathscr{B}'}_{\mathscr{B}}(f^2)=0$ ma si ha che $f^2≠0$
		$C=\begin{pmatrix}0 & 1\\0 & 0\end{pmatrix}$ e sia la base $\mathscr{B}=\{v_1,v_2\}$ tali che $v_1\mapsto 0$ e $v_2\mapsto v_1$ 
		Se $\mathscr{B}'=\{v_1+v_2,v_1+2v_2\}$  $v_1+v_2\mapsto 2(v_1+v_2)-(v_1+2v_2)$ e $v_1+2v_2\mapsto 2v_2=4(v_1+v_2)-2(v_1+2v_2)$ 
		Quindi $M^{\mathscr{B}'}_\mathscr{B}(f)=\begin{pmatrix}2 & 4\\ -1 & -2\end{pmatrix}$ e $\begin{pmatrix}2 & 4\\ -1 & -2\end{pmatrix}\begin{pmatrix}2 & 4\\ -1 & -2\end{pmatrix}=\begin{pmatrix}0 & 0\\ 0 & 0\end{pmatrix}$

**Esercizio**:
	$A=\begin{pmatrix}0 & 1\\ 0 & 0\end{pmatrix}$ e $B=\begin{pmatrix}0 & 0\\1 & 0\end{pmatrix}$ sono matrici simili?

**Soluzione**:
	Si ha che $A^2=B^2=0$ e $dim\left(Span\left\{\begin{pmatrix} 0\\0 \end{pmatrix}, \begin{pmatrix} 1\\0 \end{pmatrix} \right\}\right)=dim\left(Span\left\{\begin{pmatrix} 0\\1 \end{pmatrix}, \begin{pmatrix} 0\\0 \end{pmatrix} \right\}\right)$  
	Possiamo leggere la matrice $A$ come la matrice di un endomorfismo $f$ di $\mathbb{K}^2$ rispetto ad una base $\mathscr{B}=\{v_1,v_2\}$ 
	Allora $f(v_1)=0_{\mathbb{K}^2}$ e $f(v_2)=v_1$ 
	Ora leggiamo la matrice $B$ come la matrice di un endomorfismo $g$ di $\mathbb{K}^2$ rispetto ad una base $\mathscr{C}=\{w_1,w_2\}$ 
	Quindi $g(w_1)=w_2$ e $g(w_2)=0_{\mathbb{K}^2}$ 
	Posso prendere $w_1=v_2$ e $w_2=v_1$ in quanto attraverso le funzioni $f$ e $g$ mandano $w_1$ e $v_2$ rispettivamente in $w_2$ e $v_1$, mentre $v_1$ e $w_2$ sono mandati in $0$. Si ha che: $M^\mathscr{C}_\mathscr{C}(f)=\begin{pmatrix}0 & 0\\1 & 0\end{pmatrix}=B=H^{-1}AH$, dove $H=\begin{pmatrix} 0 & 1\\1 & 0\end{pmatrix}$ e rappresenta la matrice del cambio base $M^\mathscr{C}_\mathscr{B}(id_{\mathbb{K}^2})$ 
	*($H$ salta fuori dal fatto che $v_1=0w_1+1w_2$ e $v_2=1w_1+0w_2$)* 

**Osservazione**: Sia $B=H^{-1}AH$ dell'esercizio precedente. $B,A$ rappresentano lo stesso endomorfismo rispetto a basi diverse. In questa lettura $H$ è la matrice del cambiamento di base. Se $A=M^\mathscr{B}_\mathscr{B}(f)$ e $B=M\mathscr{C}_\mathscr{C}(f)$, allora $H=M^\mathscr{C}_\mathscr{B}(id_V)$. In particolare ogni matrice invertibile si può leggere come una matrice di cambiamento di base.
$H\in M_{n}(\mathbb{K})$ è invertibile se e solo se individua una base di $\mathbb{K}^n\Rightarrow H^{-1}H=I_n=HH^{-1}$, questo se e solo se $H$ descrive una applicazione lineare invertibile. 

**Esempio**:
	$A=\begin{pmatrix} 1 & 1 & 1\\ -1 & 1 & 0\\ 0 & 0 & 1 \end{pmatrix}$  è sicuramente invertibile, poiché ha sulle colonne una base $\mathscr{B}$ di $\mathbb{K}^3$.
	Infatti $\text{Lineare Indipendendza} \Rightarrow \text{Suriettiva} \xRightarrow{\text{Teorema del Rango}}  \text{Iniettiva}$ 
	Posso quindi leggere $A$ come la matrice di un cambiamento di base perché è invertibile
	Se prendessi una base $\mathscr{B}=\left\{\begin{pmatrix}1\\1\\1\end{pmatrix},\begin{pmatrix} 1\\1\\0 \end{pmatrix},\begin{pmatrix} 1\\0\\0 \end{pmatrix}\right\}$ e sia $A=M^\mathscr{B}_\mathscr{C}(id_{\mathbb{K}^3})$, allora $\mathscr{C}=\{w_1,w_2,w_3\}$ 
	Visto che la matrice mi rappresenta le coordinate dei vettori $w_1,w_2,w_3$ in base $\mathscr{B}$, mi è sufficiente risolvere:
	$\begin{cases} {\begin{pmatrix}1\\1\\1\end{pmatrix}=w_1-w_2}\\ {\begin{pmatrix}1\\1\\0\end{pmatrix}=w_1+w_2}\\ {\begin{pmatrix}1\\0\\0\end{pmatrix}=w_1+w_3} \end{cases}\Rightarrow \begin{cases} {w_1=\begin{pmatrix}1\\1\\\frac{1}{2}\end{pmatrix}} \\ {w_2=\begin{pmatrix}0\\0\\\frac{1}{2}\end{pmatrix}}\\ {w_3=\begin{pmatrix}0\\-1\\-\frac{1}{2}\end{pmatrix}} \end{cases}\Rightarrow \mathscr{C}=\left\{\begin{pmatrix}1\\1\\\frac{1}{2}\end{pmatrix},\begin{pmatrix}0\\0\\\frac{1}{2}\end{pmatrix},\begin{pmatrix}0\\-1\\-\frac{1}{2}\end{pmatrix}\right\}$ 
***

## Operazioni Con le Matrici

>[!def] Definizione di Matrice a Scala per Righe
Una matrice si dice a Scala per Righe se soddisfa le seguenti proprietà:
>1. Eventuali righe nulle si trovano in fondo alla matrice;
>2. Il primo elemento *non* nullo di ogni riga (chiamato Pivot) si trova più a destra del primo elemento non nullo della riga precedente

**Esempio**:
	$A=\begin{pmatrix}1 & 0 & -1 & 3\\ 0 & 0 & 4 & 2\\ 0 & 0 & 0 & 1\end{pmatrix}$ è una Matrice a Scala per Righe
	$B=\begin{pmatrix}1 & 0 & -1 & 3\\ 0 & 1 & 2 & 4\\ 0 & 2 & -1 & 3\end{pmatrix}$ non è una Matrice a Scala per Righe

>[!def] Definizione di Rango Righe
Sia $A$ una matrice a Scala per Righe. Si chiama Rango Righe di $A$ il numero di righe non nulle di $A$, cioè il numero di Pivot di $A$ 

**Esempio**:
	Il Rango Righe di $A$ è 3

**Osservazione**: Sia $A$ una matrice a scale per righe, naturalmente il rango di $A$ non può essere maggiore delle righe di $A$. Tale rango non può essere neppure maggiore del numero delle colonne, perché ogni gradino della scala occupa almeno una colonna.

**Osservazione 2**: Sia $A$ a Scala per Righe ($A\in M_{m,n}(\mathbb{K})$). Possiamo leggere le righe di $A$ come vettore di $\mathbb{K}^n$. Allora il rango righe di $A$ è la dimensione del Sottospazio di $\mathbb{K}^n$ generato dalle righe di $A$. Infatti ogni riga non nulla di $A$ contiene un Pivot che sotto di sé ha tutti $0$, dunque essa è Linearmente Indipendente da tutte le righe stanno sotto. Le righe non nulle di una matrice a scala sono dunque Linearmente Indipendenti. 

>[!def] Seconda Definizione di Rango Righe
Sia $A$ una matrice qualsiasi ($A\in M_{m,n}(\mathbb{K})$). Si chiama Rango Righe di $A$ la dimensione del Sottospazio di $\mathbb{K}^n$ generato dalle righe di $A$  ^89282f

**Esempio**:
	$A=\begin{pmatrix}1 & 1 & 1 & 1\\ 2 & 2 & 2 & 2\\ -1 & -1 & -1 & -1\end{pmatrix}$ ha Rango Righe 1
	$B=\begin{pmatrix}1 & -2 & 3 & 1\\ 2 & 1 & 2 & -1\\ -2 & 4 & \frac{3}{2} & -8\end{pmatrix}$ non si può stabilire il Rango Righe su 2 piedi

>[!def] Riduzione di Gauss
La Riduzione di Gauss serve (a partire da $A\in M_{m,n}(\mathbb{K})$) a creare una matrice a Scala $A'\in M_{m,n}(\mathbb{K})$ tale che il Rango Righe di $A$ coincide con il Rango Righe di $A'$ 
Questo è possibile attraverso delle operazioni consentite: ^83c91b
>1. Scambiare due righe
>2. Sostituire una riga con un suo multiplo non nullo
>3. Sostituire la $i$-esima con la somma della $i$-esima riga con un multplo della $j$-esima riga con $i≠j$. Ossia $i \text{-esima}\rightarrow i\text{-esima} + \alpha j\text{-esima}$ con $i≠j$ 
>
>Mediante queste operazioni elementari è sempre possibile ridurre una matrice in forma a Scala per Righe

**Esempio**:
	$\begin{pmatrix}0 & 1 & 2 & 1\\ 2 & -1 & 1 & 1\\ -1 & 1 & -2 & 4\end{pmatrix}\xRightarrow{\text{Scambio}} \begin{pmatrix}-1 & 1 & -2 & 4\\ 2 & -1 & 1 & 1\\ 0 & 1 & 2 & 1\end{pmatrix}\xRightarrow{\text{Sostituzione 2°=2°+2(1°)}}\begin{pmatrix}-1 & 1 & -2 & 4\\ 0 & 1 & -3 & 9\\ 0 & 1 & 2 & 1\end{pmatrix}\xRightarrow{\text{Sostituzione}}$ 
	$\xRightarrow{3°=3°-(2°)} \begin{pmatrix}-1 & 1 & -2 & 4\\ 0 & 1 & -3 & 9\\ 0 & 0 & 5 & -8\end{pmatrix}$  Quindi il rango della matrice è $3$ 

**Osservazione**: Le operazioni elementari sulle righe di una matrice $A\in M_{m,n}(\mathbb{K})$ preservano il sottospazio generato dalle righe e quindi la sua dimensione, cioè il rango righe. Indichiamo con $v_1,...,v_n$ i vettori riga di $A$  $v_1,...,v_b\in \mathbb{K}$: $A=\begin{pmatrix}v_1\\ \vdots \\ v_n\end{pmatrix}$
1. Con lo scambio righe si ottiene $Span\{v_1,...,v_i,...,v_j,...,v_n\}=Span\{v_1,...,v_j,...,v_i,...,v_n\}$ 
2. Prodotto di una riga per uno scalare non nullo ($\alpha ≠0$): $Span\{v_1,...,v_n\}=Span\{\alpha v_1,...,\alpha v_n\}$ 
3. $v_i\mapsto v_1+\beta v_j$ con $\beta \in \mathbb{K}$. Poiché questa operazione coinvolge solo la i-esima riga e la j-esima riga e tutti gli altri vettori restano gli stessi, allora basta osservare che $Span\{v_1,v_j\}=Span\{v_1+\beta v_j, v_j\}$ (Infatti entrambe le implicazioni $\subseteq$ e $\supseteq$ sono ovvie in quanto l'uno è combinazione lineare dell'altra)
Quindi preservano il sottospazio generato dalle righe.

**Attenzione**: Le operazioni elementari sulle righe non preservano il sottospazio generato dalle colonne

**Esempio**:
	$A\begin{pmatrix}1 & 1\\ -1 & -1\end{pmatrix}$ ha rango righe 1 e $A'\begin{pmatrix}1 & 1\\ 0 & 0 \end{pmatrix}$ 
	Si ha che $Span\left\{\begin{pmatrix}1\\1\end{pmatrix},\begin{pmatrix}-1\\-1\end{pmatrix}\right\}$ (Righe di $A$) = $Span\left\{\begin{pmatrix}1\\1\end{pmatrix},\begin{pmatrix}0\\0\end{pmatrix}\right\}$ (Righe di $A'$) = $Span\left\{\begin{pmatrix}1\\1\end{pmatrix}\right\}$
	Si ha che $Span\left\{\begin{pmatrix}1\\-1\end{pmatrix},\begin{pmatrix}1\\-1\end{pmatrix}\right\}$ (Colonne di $A$) ≠ $Span\left\{\begin{pmatrix}1\\0\end{pmatrix},\begin{pmatrix}1\\0\end{pmatrix}\right\}$ (Colonne di $A'$) = $Span\left\{\begin{pmatrix}1\\0\end{pmatrix}\right\}$ 

**Osservazione**: Sia $A\in M_{m,n}(\mathbb{K})$. Considero $L_A: \mathbb{K}^n\rightarrow \mathbb{K}^m$. Si ha che: $$Ker(L_A):\left\{\left.\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}\in \mathbb{K}^n \; \right| \; \underbrace{A\begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix}= \begin{pmatrix} 0 \\ \vdots \\ 0\end{pmatrix}}_{\text{Sistema Lineare}}\right\}$$ 
**Esempio**
	Sia $A\begin{pmatrix}1 & -1 & 1\\ 1 & 1 & 1\\ 1 & 0 & -1\end{pmatrix}$, allora $Ker(L_A)=\left\{\left. \begin{pmatrix}x_1\\ x_2\\ x_3 \end{pmatrix} \in \mathbb{K}3 \; \right| \; \begin{cases} {x_1-x_2+x_3=0}\\ {x_1+x_2+x_3=0}\\ {x_1-x_3=0} \end{cases} \right\}$ 

Le operazioni elementari sulle righe di $A$ producono un sistema lineare omogeneo equivalente, infatti:
1. Scambio di Righe $\Leftrightarrow$ Scambio di due equazioni, quindi non cambio nulla
2. Prodotto di una riga per uno scalare non nullo $\Leftrightarrow$ Prodotto di un'equazione per uno scalare non nullo, quindi ottengo un'equazione equivalente (stesse soluzioni)
3. $v_i\mapsto v_i+\beta v_j=\begin{cases} \text{Equazione j-esima}\\ \text{Equzione i-esima} \end{cases}\Rightarrow \begin{cases} \text{Equazione j-esima}\\ {\text{Equazione i-esima +}\beta \text{-Equazione j-esima}} \end{cases}$ 
Quindi riducendo a scala la matrice $A$ ottengo una matrice $A'$ a scala tale che $Ker(A)=Ker(A')$ 

Vantaggi: 
1. $Ker(A)$ rappresenta l'insieme delle soluzioni di un sistema a scala che si risolve per sostituzione successive dal basso
	Esempio:
		$A\begin{pmatrix}1 & 1 & 0\\ 1 & -1 & 2\\ 1 & 0 & 1\end{pmatrix}\Rightarrow \begin{pmatrix}1 & 1 & 0\\ 0 & -2 & 2\\ 0 & -1 & 1\end{pmatrix}\Rightarrow \begin{pmatrix}1 & 1 & 0\\ 0 & -1 & 1 \\ 0 & 0 & 0\end{pmatrix}=A'$  
		$Ker(L_A)=Ker(L_{A'})=\begin{cases} {x_1+x_2=0}\\ {-x_2+x_3=0} \end{cases}=\begin{cases} {x_1=-x_2=-x_3}\\ {x_2=x_3} \end{cases}=\left\{\begin{pmatrix}-x_3 \\ x_3 \\ x_3\end{pmatrix}\right\}=Span\left\{\begin{pmatrix}-1\\ 1\\ 1\end{pmatrix}\right\}$ 
		Quindi il Rango Righe di $A$= Rango Righe di $A'$= 2
2. $dim(Ker(L_A))=dim(Ker(L_{A'}))=n-\text{Rango Righe}(A)=n-dim(Im(L_A))$ 

>[!def] Definizione di Rango Colonne
Sia $A\in M_{m,n}(\mathbb{K})$, si chiama Rango Colonne di $A$ la dimensione del sottospazio di $\mathbb{K}^m$, generato dalle colonne di A 

Si ha che $dim(Ker(L_A))=n-\text{Rango Colonne di }A\Rightarrow \text{Rango Righe }A=\text{Rango Colonne }A$ 

>[!def] Definizione di Rango di una Matrice
Data una matrice $A\in M_{m,n}(\mathbb{K})$, si chiama Rango di $A$ e si indica con $rg(A)$ o $rk(A)$ il Rango Righe oppure, equivalentemente, il Rango Colonne di $A$ 

**Osservazione**: La Riduzione a scala si può fare anche per le colonne, ma danno due risultati diversi.
Infatti il Rango Righe da $dim(Span\{\text{Righe}\})$, ossia il numero delle righe diverse da zero, mentre il Rango Colonne da $dim(Span\{\text{Colonne}\})$, ossia il numero delle colonne diverse da zero. Ma il numero è lo stesso.

Sia $A=\begin{pmatrix} a_{1,1} & ... & a_{1,n}\\ \vdots & & \vdots\\ a_{m,1} & ... & a_{m,n}\end{pmatrix}$, se si vuole sapere solo la dimensione posso fare sia la riduzione per righe, sia la riduzione per colonne, tanto ottengo lo stesso risultato. 

Se voglio una base per $Span\{\text{Righe}\}$ allora devo ridurre per righe e prendere quelle non nulle (Analogamente devo fare lo stesso procedimento per le colonne).

Se voglio sapere quanti vettori $a_1,...,a_k\in \mathbb{K}^n$ sono linearmente indipendenti, considero la matrice che ha per colonne $a_1,...,a_k$, allora $a_1,...,a_k$ sono linearmente indipendenti $\Leftrightarrow$ $rk(A)=k$. In particolare se $rk(A)=k$ allora $a_1,...,a_n$ rappresenta una base di $\mathbb{K}^n$ 

Questo rappresenta un criterio comodo per vedere se anche una matrice quadrata è invertibile. 

La riduzione a scala di $A$ deve essere triangolare superiore, dove tutti i termini superiori devono essere diversi da $0$, infatti non appena c'è un gradino più lungo, significa che c'è una riga nulla e quindi non è invertibile.

Dato un qualsiasi sistema lineare, $\begin{cases} {a_{1,1}x_1+...+a_{n,1}x_n=b_1}\\ \vdots \\ {a_{m,1}x_1+...+a_{m,n}x_n=b_m} \end{cases}\; = \; A=\begin{pmatrix}a_{1,1} & ... & a_{1,n}\\ \vdots & & \vdots \\ a_{m,1} & ... & a_{m,n}\end{pmatrix}\quad x=\begin{pmatrix}x_1 \\ \vdots \\ x_n\end{pmatrix}\quad b=\begin{pmatrix}b_1\\ \vdots \\ b_m\end{pmatrix}$ dove $A\in M_{m,n}(\mathbb{K}), a\in \mathbb{K}^n, b\in \mathbb{K}^m$. Questo sistema lineare può essere scritto come $Ax=b$

>[!def] Definizione di Sistema Lineare Omogeneo
Un sistema lineare si dice omogeneo se $b=0$, ossia ogni soluzione è una n-upla nulla. Nello specifico, l'insieme delle soluzioni $Ax=b=\{x\in \mathbb{K}^n \text{ tale che } Ax=b\}$ (definendo la funzione lineare $L_A:\mathbb{K}^n\rightarrow \mathbb{K}^m$ si ottiene che le soluzioni sono nell'insieme $\{x\in \mathbb{K}^n \text{ tale che } L_A(x)=b\}$ (In particolare, risolvere un sistema lineare significa ricavare una controimmagine).  

Se $b≠Im(L_A)$ allora $b=\varnothing$ e l'applicazione inversa è $L_A^{-1}(0)=Ker(L_A)$ 

>[!def] Definizione di Matrice Completa
Una matrice si definisce completa se è nella forma $(A,b)$ (ossia se si aggiunge una colonna alla matrice) 

**Esempio**:
	$\begin{cases} {x_1-2x_2+x_3+3x_4=1}\\ {2x_1-5x_3+x_4=2}\\ {5x_1-6x_2+\alpha x_3+10x_4=\beta} \end{cases}$ Si può scrivere anche come $\left.\left(\begin{matrix} 1 & -2 & 1 & 3\\ 2 & 0 & -5 & 1\\ 5 & -6 & \alpha & 10\end{matrix} \; \right| \; \begin{matrix}1\\ 2 \\ \beta\end{matrix}\right)$ con $\mathbb{K}=\mathbb{Q}, x\in \mathbb{K}^n, b\in \mathbb{K}^m$ 
	Tuttavia si sa che non ha soluzione unica in quanto $dim(Ker(L_A))=1$ 

**Osservazione**: L'insieme delle soluzioni $Ax=b≠\varnothing$ se e solo se $b\in Im(L_A)$, ossia $b\in Span\{\text{Colonne}\}$, cioè $rk(A,b)=rk(A)$ 

**Continuo dell'esempio**:
	$\left.\left(\begin{matrix} 1 & -2 & 1 & 3\\ 2 & 0 & -5 & 1\\ 5 & -6 & \alpha & 10\end{matrix} \; \right| \; \begin{matrix}1\\ 2 \\ \beta\end{matrix}\right) \text{Facendo le Operazioni}: R_2-2R_1; R_3-5R_1\Rightarrow \left.\left(\begin{matrix} 1 & -2 & 1 & 3\\ 0 & 4 & -7 & -5\\ 0 & 4 & \alpha-5 & 7\end{matrix} \; \right| \; \begin{matrix}1\\ 0 \\ \beta-5 \end{matrix}\right)$ $\text{Con l'Operazione}:R_3-R_2\Rightarrow \left.\left(\begin{matrix} 1 & -2 & 1 & 3\\ 0 & 4 & -7 & -5\\ 0 & 0 & \alpha+2 & 0\end{matrix} \; \right| \; \begin{matrix}1\\ 0 \\ \beta-5 \end{matrix}\right)$ 
	Si ottiene che il Rango della Matrice è di Rango 3 se $\alpha≠-2$ ed è di Rango 2 se $\alpha=-2\wedge \beta=5$ 
	Quindi nel primo caso si ha che $dim(Ker(L_A))=1$ e nel secondo caso è $dim(Ker(L_A))=2$ 
	Le operazioni sulle righe della matrice completa lasciano invariate l'insieme delle soluzioni, cioè portano a sistemi equivalenti
	$\begin{cases} {x_1-2x_2+x_3+3x_4=1}\\ {2x_1-5x_3+x_4=2}\\ {5x_1-6x_2+\alpha x_3+10x_4=\beta} \end{cases}\; = \; \begin{cases} {x_1-2x_2+x_3+3x_4=1}\\ {4x_2-7x_3-5x_4=0}\\ {(\alpha+2)x_3}=\beta-5\end{cases}$ 
	Trovare le soluzioni di un sistema omogeneo significa porre la colonna dei termini noti uguale a 0
	Infatti se si risolve il sistema ponendo $\alpha ≠-2$ si ottiene $\begin{cases}x_1=\frac{1}{4}\\ x_2=\frac{5}{4}\\ x_3=0 \end{cases}$, ossia che le soluzioni sono date da qualsiasi vettore del tipo $x_4\begin{pmatrix} -\frac{1}{4}\\\frac{5}{4}\\ 0\\ 1  \end{pmatrix}$, quindi le soluzioni sono date da $Span\left\{\begin{pmatrix}-\frac{1}{4}\\ \frac{5}{4}\\ 0\\ 1\end{pmatrix}\right\}$.
	Se invece si avesse $\alpha=-2\wedge \beta≠5$, non si avrebbero soluzioni
	Se si avesse $\alpha=-2\wedge \beta=5$, allora si otterrebbe che anche $x_3$ è una variabile libera e le soluzioni sono $\begin{cases} {x_1=\frac{5}{2}x_3-\frac{1}{2}x_4}\\ {x_2=\frac{7}{4}x_3+\frac{5}{4}x_4} \end{cases}$ e quindi che le soluzioni sono date da $Span\left\{\begin{pmatrix}\frac{5}{2}\\ \frac{7}{4}\\ 1 \\ 0\end{pmatrix}, \begin{pmatrix}-\frac{1}{2}\\ \frac{5}{4}\\ 0\\ 1\end{pmatrix}\right\}$, quindi $\begin{pmatrix}\frac{5}{2}x_3-\frac{1}{2}x_4\\ \frac{7}{4}x_3+\frac{5}{4}x_4\\ x_3\\ x_4\end{pmatrix}=x_3\begin{pmatrix}\frac{5}{2}\\ \frac{7}{4}\\ 1 \\ 0\end{pmatrix}+ x_4\begin{pmatrix}-\frac{1}{2}\\ \frac{5}{4}\\ 0\\ 1\end{pmatrix}$.
	Resta adesso da trovare le soluzioni di un sistema non omogeneo.
	Sia $\alpha≠2$, poniamo $x_4=0$ quindi si ottiene $\begin{cases}{x_3=\frac{\beta-5}{\alpha +2}}\\ {x_2=\frac{7(\beta-5)}{4(\alpha+2)}}\\ {x_1=\frac{2\alpha +5\beta -2}{2(\alpha+2)}}\end{cases}\Rightarrow \begin{pmatrix}{\frac{2\alpha +5\beta -2}{2(\alpha+2)}}\\ \frac{7(\beta-5)}{4(\alpha+2)} \\ \frac{\beta-5}{\alpha +2} \\ 0\end{pmatrix}+t\begin{pmatrix}-\frac{1}{2}\\ \frac{5}{2}\\ 0\\ 1\end{pmatrix}$   
	Se $\alpha=-2\wedge \beta≠5$, non ci sono soluzioni.
	Se $\alpha=-2\wedge \beta=5$ allora si ha che (ponendo $x_3=x_4=0$) le soluzioni sono $\begin{cases}x_1=1\\ x_2=0\end{cases}$, quindi $\begin{pmatrix}1\\0\\0\\0\end{pmatrix}$ e tutte le soluzioni possono essere scritte come $\begin{pmatrix}1\\0\\0\\0\end{pmatrix} +t\begin{pmatrix}\frac{5}{2}\\ \frac{7}{4}\\ 1 \\ 0\end{pmatrix}+s\begin{pmatrix}-\frac{1}{2}\\ \frac{5}{4}\\ 0\\ 1\end{pmatrix}$ 

*Problema: Dati due sottospazi $S$ e $T$ di uno spazio vettoriale $V$, determinare l'intersezione*
**Esempio**:
	Sia $S=Span\left\{\underbrace{\begin{pmatrix}1\\ -1\\ 2\end{pmatrix},\begin{pmatrix}1\\ 0\\ -3 \end{pmatrix}}_{\mathscr{B}_S}\right\}\subseteq \mathbb{K}^3$ e $T=Span\left\{\underbrace{\begin{pmatrix}1\\1\\1\end{pmatrix},\begin{pmatrix}-1\\ 2\\ 1\end{pmatrix}}_{\mathscr{B}_T}\right\}\subseteq \mathbb{K}^3$  con $\mathbb{K}=\mathbb{Q}$ come sono i vettori di $S\cap T$?
	Si ottiene che tutti i vettori di $S$ sono della forma $a\begin{pmatrix}1\\-1\\2\end{pmatrix}+b\begin{pmatrix}1\\0\\-3 \end{pmatrix}=\begin{pmatrix}a+b\\ -a\\ 2a-3b\end{pmatrix}$, Quali vettori di questa forma stanno in $Span\left\{\begin{pmatrix}1\\1\\1\end{pmatrix},\begin{pmatrix}-1\\2\\1\end{pmatrix}\right\}$?
	Lo si può sapere attraverso una matrice $\begin{pmatrix} 1 & 1 & 1\\ -1 & 2 & 1\\ a+b & -a & 2a-3b\end{pmatrix}$, che deve essere di rango 2, in modo che sia linearmente dipendente con i vettori di $T$ 
	$rg\begin{pmatrix} 1 & 1 & 1\\ -1 & 2 & 1\\ a+b & -a & 2a-3b\end{pmatrix}=2\Rightarrow rg\begin{pmatrix} 1 & 1 & 1\\ 0 & 3 & 2\\ 0 & -2a-b & a-4b\end{pmatrix}=2\Rightarrow rg\begin{pmatrix} 1 & 1 & 1\\ 0 & 3 & 2\\ 0 & -0 & a-4b+\frac{2}{3}(2a+b)\end{pmatrix}=2$. Quindi $a-4b+\frac{2}{3}(2a+b)=0\Rightarrow 7a-10b=0\Rightarrow a=\frac{10}{7}b$ 
	$S\cap T=\left\{\left.\begin{pmatrix}\frac{17}{7}b\\ -\frac{10}{7}b\\ -\frac{1}{7}b\end{pmatrix} \; \right| \; b\in \mathbb{Q}\right\}=Span\left\{\begin{pmatrix}17\\ 10\\ 1\end{pmatrix}\right\}$ 

*Problema: Trovare un sistema lineare con soluzioni assegnate*
**Esempio**:
	Sia $S=Span\left\{\begin{pmatrix}1\\-1\\1\\1\end{pmatrix}, \begin{pmatrix}0\\1\\-1\\1\end{pmatrix}\right\}\subseteq \mathbb{K}^4$ con $\mathbb{K}=\mathbb{Q}$. Determinare un sistema lineare avente $S$ come insieme di soluzioni
	Cerco i vettori $x,y,z,t\in \mathbb{Q}^4$ che stiano in $S\Leftrightarrow rg\begin{pmatrix}1 & -1 & 1 & 1\\ 0 & 1 & -1 & 1\\ x & y & z & t\end{pmatrix}=2$ 
	Andando con la riduzione di Gauss $rg\begin{pmatrix}1 & -1 & 1 & 1\\ 0 & 1 & -1 & 1\\ x & y & z & t\end{pmatrix}=2\Rightarrow rg\begin{pmatrix}1 & -1 & 1 & 1\\ 0 & 1 & -1 & 1\\ 0 & y-x & z-x & t-x\end{pmatrix}=2 \Rightarrow rg\begin{pmatrix}1 & -1 & 1 & 1\\ 0 & 1 & -1 & 1\\ 0 & 0 & z+y & t+y\end{pmatrix}=2$ 
	$\Leftrightarrow y=-z\wedge y=-z=\begin{cases} y+z=0\\ y+t=0 \end{cases}$ 
	Analogamente, se cercassi un sistema lineare avente $\begin{pmatrix}1\\1\\2\end{pmatrix}+Span\left\{\begin{pmatrix}0\\1\\-1\end{pmatrix},\begin{pmatrix}1\\0\\2\end{pmatrix}\right\}$ come insieme delle soluzioni, posso procedere nel modo seguente: $\begin{pmatrix}x\\ y\\ z\end{pmatrix}\in \begin{pmatrix}1\\1\\2\end{pmatrix}+Span\left\{\begin{pmatrix}0\\1\\-1\end{pmatrix},\begin{pmatrix}1\\0\\2\end{pmatrix}\right\} \Rightarrow \begin{pmatrix}x-1\\ y-1\\ z-2\end{pmatrix}\in Span\left\{\begin{pmatrix}0\\1\\-1\end{pmatrix},\begin{pmatrix}1\\0\\2\end{pmatrix}\right\}$.
	Quindi posso procedere come prima:
	$rg\begin{pmatrix}1 & 0 & 2\\ 0 & 1 & -1\\ x-1 & y-1 & z-2\end{pmatrix}=2$, riducendo si otterrebbe che $a_{3,3}=0$ 
	Equivalentemente si ha $S=\begin{pmatrix}1\\1\\2\end{pmatrix}+Span\left\{\begin{pmatrix}0\\1\\-1\end{pmatrix},\begin{pmatrix}1\\0\\2\end{pmatrix}\right\} \Rightarrow \begin{pmatrix}x\\ y\\ z\end{pmatrix}=\begin{pmatrix}1\\1\\2\end{pmatrix}+a\begin{pmatrix}0\\1\\-1\end{pmatrix}+ b\begin{pmatrix}1\\0\\2\end{pmatrix}$ con $a,b\in \mathbb{K}$.
	Quindi $\begin{cases} {x=1+b}\\ {y=1+a}\\ {z=2+2b-a} \end{cases}$ rappresenta un sistema di equazioni parametriche di $S$ che al variare di $a,b$ trova soluzioni di $S$.
	Avendo $b=x-1$ e $a=y-1$ si ottiene che $z=2x-y-z+1$ che è una soluzione di $\begin{pmatrix}1\\1\\2\end{pmatrix}+a\begin{pmatrix}0\\1\\-1\end{pmatrix}+ b\begin{pmatrix}1\\0\\2\end{pmatrix}$ 
	Infatti tutte le altre sono i multipli non nulli

***

## Spazio Vettoriale $Hom(V,W)$ e $V^*$

>[!def] Definizione di $Hom(V,W)$ 
Sia $V$ un $\mathbb{K}\text{-spazio vettoriale}$ di dimensione $n$ e $W$ un $\mathbb{K}\text{-spazio vettoriale}$ di dimensione $m$. Definiamo $Hom(V,W)$ l'insieme di tutte le applicazioni lineari da $V$ a $W$ $$Hom(V,W)=\{f:V\rightarrow W \; | \; f \text{ è lineare}\}$$

Definiamo su $Hom(V,W)$ una struttura di spazio vettoriale su $\mathbb{K}$ nel seguente modo: ^6359f5
- Dati $f_1,f_2\in Hom(V,W), \; f_1+f_2:V\rightarrow W, (f_1+f_2)(v)=f_1(v)+f_2(v)$ lineare
- Dato $\lambda\in \mathbb{K}$, definisco $\lambda f: V\rightarrow W, (\lambda f)(v)=\lambda f(v)$ lineare
Inoltre, fissata una base $\mathscr{B}_V$ di $V$ e $\mathscr{B}_W$ di $W$ e considero l'applicazione $$M^{\mathscr{B}_V}_{\mathscr{B}_W}:\begin{matrix}Hom(V,W) & \rightarrow & M_{m,n}(\mathbb{K})\\ f & \mapsto & M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)\end{matrix}$$
>[!th] Teorema 
$M^{\mathscr{B}_V}_{\mathscr{B}_W}$ è un isomorfismo di un $\mathbb{K}$

***Dimostrazione***: 
	Prima di tutto bisogna dimostrare che $M^{\mathscr{B}_V}_{\mathscr{B}_W}$ è lineare. 
	Siano $f_1,f_2\in Hom(V,W)$, devo mostrare che $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f_1+f_2)=M^{\mathscr{B}_V}_{\mathscr{B}_W}(f_1)+M^{\mathscr{B}_V}_{\mathscr{B}_W}(f_2)$ 
	Siano $\mathscr{B}_V=\{v_1,...,v_n\}$ e $\mathscr{B}_W\{w_1,...,w_m\}$. Si consideri la $i$-esima colonna, $(f_1+f_2)(v_i)=f_1(v_i)+f_2(v_i)$in coordinate rispetto a $\mathscr{B}_W$ 
	Siano $\lambda\in \mathbb{K}$ e $f\in Hom(V,W)$. $M^{\mathscr{B}_V}_{\mathscr{B}_W}(\lambda f)=\lambda M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)$. Se si considera la $i$-esima colonna $(\lambda f)(v_i)=\lambda f(v_i)$
	$\underline{\text{Iniettività}}$: Si guarda il nucleo, $Ker(M^{\mathscr{B}_V}_{\mathscr{B}_W})=\{f\in Hom(v,w)\; | \; M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)=0\}= \{\text{Applicazione identicamente nulla}\}$
	$\underline{\text{Suriettività}}$: Se $A=(a_{i,j})\in M_{m,n}(\mathbb{K})$, allora $A=M^{\mathscr{B}_V}_{\mathscr{B}_W}(f_A)$ dove $f_A$ è l'unica applicazione lineare $f_A:V\rightarrow W$ t.c. $f_A(v_i)=\displaystyle{\sum^m_{j=1} a_{j,i}w_j}$ che è ben definita ed è unica.
**Corollario**: Se $dim(V)=n$ e $dim(W)=m$, $Hom(V,W)=m\cdot n$ 

**Esercizio**:
	Siano $U=\left\{\left.\begin{pmatrix}x_1\\ x_2\\ x_3\\ x_4\end{pmatrix}\in \mathbb{K}^4 \; \right| \; x_1-x_2+x_3-x_4=0\right\}$ e $W=Span\left\{ \begin{pmatrix}1\\0\\1\end{pmatrix}, \begin{pmatrix}-1\\0\\1\end{pmatrix}\right\}$. Sia $\mathscr{H}=\{f\in Hom(\mathbb{K}^4,\mathbb{K}^3)\; | \; f(U)\subseteq W\}$.
	Mostrare che $\mathscr{H}$ è un sottospazio di $Hom(\mathbb{K}^4,\mathbb{K}^3)$ e calcolarne la dimensione.

**Soluzione**:
	L'obiettivo è quello di verificare che sia chiuso rispetto alla somma e al prodotto per scalari di $\mathscr{H}$ 
	Siano $f_1,f_2\in \mathscr{H}$ e sia $u\in U$. Per come è stato definito $Hom$, $(f_1+f_2)(u)=f_1(u)+f_2(u)$. Però $W$ è sottospazio, quindi $f_1(u)+f_2(u)\in W\; \forall u\in U$, quindi $f_1+f_2\in\mathscr{H}$ 
	Siano $\lambda \in \mathbb{K}$, $f\in \mathscr{H}$ e $u\in U$. Per come è stato definito $Hom$, $(\lambda f)(u)=\lambda f(u)$. Ma $W$ è sottospazio, quindi $\lambda f(u)\in W$, quindi $(\lambda f)\in \mathscr{H}$.
	Si ha che $dim(V)=3$. Fisso una base di $\mathscr{B}_U=\{u_1,u_2,u_3\}$ di $V$ e la completo in una base di $\mathscr{B}=\{u_1,u_2,u_3,v\}$ di $\mathbb{K}^4$ 
	Si ha che $dim(W)=2$. Fisso una base di $\mathscr{B}_W=\{w_1,w_2\}$ di $W$ e la completo in una base $\mathscr{C}=\{w_1,w_2,z\}$ di $\mathscr{K}^3$ 
	Quindi considero l'isomorfismo $M^{\mathscr{B}}_{\mathscr{C}}:Hom(\mathbb{K}^4,\mathbb{K}^3)\rightarrow M_{3,4}(\mathbb{K})$ 
	Si ha che $dim(\mathscr{H})=dim(M^{\mathscr{B}}_{\mathscr{C}}(\mathscr{H}))=9$ 
	Infatti se $f\in \mathscr{H}$, $M^{\mathscr{B}}_{\mathscr{C}}(f)=\begin{pmatrix}* & * & * & *\\ * & * & * & *\\ 0 & 0 & 0 & *\end{pmatrix}$ 

**Esercizi**:
	Caso 1: $U=\left\{\left.\begin{pmatrix}x_1\\ x_2\\ x_3\end{pmatrix}\in \mathbb{K}^3 \right|\; x_1+x_2+x_3=0\right\}$ e $W=Span\left\{\begin{pmatrix}1\\0\\0\end{pmatrix}\right\}$ 
	Caso 2: $U=\left\{\left.\begin{pmatrix}x_1\\ x_2\\ x_3\end{pmatrix}\in \mathbb{K}^3 \right|\; x_1+x_2+x_3=0\right\}$ e $W=Span\left\{\begin{pmatrix}1\\-1\\0\end{pmatrix}\right\}$ 
	Sia $\mathscr{H}=\{f\in End(\mathbb{K}^3)\; | \; f(U)\subseteq U \wedge f(W)\subseteq W\}$ 
		In questo caso si definiscono endomorfismi $f-\text{invarianti}$, ossia non cambia il risultato in presenza o meno della funzione ^347afb
	a) Dimostrare che $\mathscr{H}$ è un sottospazio di $End(\mathbb{K}^3)$  b) Calcolare la dimensione di $\mathscr{H}$ in entrambi i casi

**Soluzione**:
	a)
	Visto che la funzione identicamente nulla $0$ appartiene a $End(\mathbb{K}^3)$, allora $0\in \mathscr{H}$ 
	Supponiamo $f_1,f_2\in \mathscr{H},\quad \forall u \in U, f_1(u)+f_2(u)\in U,\quad  \forall w \in W, f_1(w)+f_2(w)\in W$ 
	Voglio mostrare che $f_1+f_2\in \mathscr{H}$, cioè $\forall u \in U, f_1(u)+f_2(u)\in U$ e $\forall w \in W, f_1(w)+f_2(w)\in W$. 
	La cosa è verificata unendo la definizione di Somma di funzioni in $Hom(U,U)$ e il fatto che $U$ è sottospazio. ($(f_1+f_2)(u)=f_1(u)+f_2(u)$ ma $f_1(u)\in U$ e $f_2(u)\in U$ quindi $f_1(u)+f_2(u)\in U$)
	La stessa cosa è valida con $W$
	Il procedimento è analogo con $(\lambda f)=\lambda f\in \mathscr{H}$. $\begin{cases} {\forall u \in U} & {(\lambda f)(u)=\lambda f(u)\in U}\\ {\forall w \in W} & {(\lambda f)(u)=\lambda f (w)\in W} \end{cases}$ 
	b)
	Caso 1
	Consideriamo $\{u_1,u_2\}=\mathscr{B}_U$ (Non importa quale, basta che sia una base) e $\{w\}=\mathscr{B}_W$, si ha che $\{u_1,u_2,w\}=\mathscr{B}$ in quanto sono tutti linearmente indipendenti.
	Supponiamo di avere $f\in \mathscr{H}$. Cosa sappiamo dire di $M^\mathscr{B}_\mathscr{B}(f)$?
	Devo calcolare $f(u_1),f(u_2),f(2)$ ma sapendo che $U$ e $W$ sono sottospazi ho che $f(u_1)=\alpha_1u_1+\alpha_2u_2$, $f(u_2)=\beta_1u_1+ \beta_2u_2$ e $f(w)=\gamma w$ $$M^\mathscr{B}_\mathscr{B}=\begin{pmatrix}\alpha_1 & \alpha_2 & 0\\ \beta_1 & \beta_2 & 0\\ 0 & 0 & \gamma\end{pmatrix}$$ Viceversa, se avessi $M^\mathscr{B}_\mathscr{B}(g)$ e $g\in \mathscr{H}$ la matrice sarà di questa forma: $$M^\mathscr{B}_\mathscr{B}=\begin{pmatrix} * & * & 0\\ * & * & 0\\ 0 & 0 & *\end{pmatrix}$$ In questo caso si dice che la matrice è a blocchi.
	Quindi l'isomorfimo $\begin{matrix}End(V) & \rightarrow & M_3(\mathbb{K}^3)\\ f & \mapsto & M_\mathscr{B}(f)\end{matrix}$ porta $\mathscr{H}$ nel sottospazio vettoriale di $M_3(\mathbb{K})$ dato che $a_{1,3}=a_{2,3}=a_{3,1}=a_{3,2}=0$. Quindi ha dimensione 5.
	Caso 2
	In questo caso si ha che $W\subseteq U$, quindi si ha una bandiera completa.
	Si ha che $\{v_1\}=\mathscr{B}_W$, $\{v_1,v_2\}=\mathscr{B}_U$ e $\{v_1,v_2,v_3\}=\mathscr{B}$. 
	Se $f\in \mathscr{H}$, cosa posso dire di $M_\mathscr{B}(f)$?
	$W\ni f(v_1)=a_{1,1}v_1,\; U\ni f(v_2)=a_{1,2}v_1+a_{2,2}v_2,\; f(v_3)=a_{1,3}v_1+a_{2,3}v_2+a_{3,3}v_3$. Quindi $$dim(\mathscr{H})=6\qquad M=\begin{pmatrix}a_{1,1} & a_{1,2} & a_{1,3}\\ 0 & a_{2,2} & a_{2,3}\\ 0 & 0 & a_{3,3}\end{pmatrix}=\text{È una matrice diagonale superiore}$$

>[!def] Definizione di Spazio Duale
Sia $V$ un $\mathbb{K}\text{-spazio vettoriale}$. Chiamo Spazio Duale di $V$, indicato con $V^*$ oppure con $V^\vee$, lo spazio delle applicazioni dello spazio $Hom(V,\mathbb{K})$.
$Hom(V,\mathbb{K})=V^*=\{f: V\rightarrow \mathbb{K} \; | \; f \text{ è lineare}\}$ con la struttura di $\mathbb{K}\text{-spazio vettoriale}$ già studiata. In particolare se $dim(V)=n$ allora $dim(V^*)=n$. Quindi $V\simeq V^*$ 

Fissiamo una base $\mathscr{B}_V=\{v_1,...,v_n\}$ e una base di $\mathscr{B}_\mathbb{K}=\{1\}$ e consideriamo l'isomorfismo $$M^{\mathscr{B}_V}_{\mathscr{B}_\mathbb{K}}=\begin{matrix}V^* & \rightarrow & M_{1,k}(\mathbb{K})\\ f & \mapsto & M^{\mathscr{B}_V}_{\mathscr{B}_\mathbb{K}} \end{matrix} \qquad\text{Ossia che }\qquad \begin{pmatrix} a_1 & a_2 & ... & a_n \end{pmatrix}\in M_{1,k}(\mathbb{K})\Leftrightarrow f(v_1)=a_1, f(v_2)=a_2,...,f(v_n)=a_n$$In particolare $\varphi_i(v_j)=\begin{matrix} \nearrow & 1 \text{ se } i=j\\ \searrow & 0 \text{ se } i≠j\end{matrix}$. Questo può essere scritto con il delta di Kronecker $\varphi_i(v_j)=\delta_{ij}$ 
Si ottiene inoltre che $\{\varphi_1,...,\varphi_n\}$ è una base di $V^*$ che chiamo Base *Duale* di $\mathscr{B}_V$.

>[!def] Definizione di Annullante
Sia $V$ un $\mathbb{K}\text{-spazio vettoriale}$ con dimensione finita e sia $W$ un sottospazio di $V$. Si chiama *Annullante* di $W$ e si indica con $Ann(W)$ il seguente sottoinsieme di $V^*$: $$Ann(W)=\{f\in V^*\; | \; f(w)=0\; (\text{Funzione identicamente nulla})\;\}$$ ^9ad636

**Proposizione**: L'$Ann(W)$ è un sottoinsieme di $V^*$ e la sua dimensione è $dim(Ann(W))=dim(V)-dim(W)$ 
***Dimostrazione***: 
	- Siano $f_1,f_2\in Ann(W)$, è da verificare che $f_1+f_2\in Ann(W)$. 
	Calcolo $(f_1+f_2)(\underbrace{w}_{\in W})$, per la definizione di $Hom(V,\mathbb{K})$, è uguale a scrivere $\underbrace{f_1(w)}_{=0}+\underbrace{f_2(w)}_{=0}=0$, quindi è chiuso sulla somma
	- Siano $\lambda \in \mathbb{K}$ e $f\in Ann(W)$. Devo verificare che $\lambda f\in Ann(W)$ 
	Ma $(\lambda f)(w)=\lambda \underbrace{f(w)}_{=0}=0$, quindi è chiuso sul prodotto per scalari.
	Sia $\mathscr{B}_W=\{w_1,...,w_k\}$ una base di $W$. Completo $\mathscr{B}_W$ in una base di $V$: $\mathscr{B}_V=\{w_1,...,w_k,v_{k+1},...,v_n\}$ e considero $M^{\mathscr{B}_V}_{\{1\}}: V\rightarrow M_{1,n}(\mathbb{K})$. Si ottiene quindi che $f\in Ann(W)\Rightarrow f(w_1)=0,...,f(w_k)=0, f(v_{k-1})=*,...,f(v_{n})=*$ 
	Quindi $M^{\mathscr{B}_V}_{\{1\}}=\left( \underbrace{\begin{matrix}0 & ... & 0\end{matrix}}_{k} \quad \underbrace{\begin{matrix}* & ... & *\end{matrix}}_{n-k}\right)$ da cui si deduce che $dim(Ann(W))=dim(V)-dim(W)$ 
	Equivalentemente, per calcolare $dim(Ann(W))$, potrei esibire una base di $Ann(W)$. 
	Sia $\mathscr{B}_V=\{\underbrace{w_1,...,w_k}_{\text{Base di } W}, v_{k+1},...,v_n\}$ la base di partenza. Allora $\{\varphi_1,...,\varphi_n\}$ è una base di $Ann(W)$ 
	Infatti, per definizione $\varphi_i(w_j) \; \forall i\in \{k+1,...,n\}, \; \forall j\in \{1,...,k\}\Rightarrow \varphi_{k+1},...,\varphi_n \in Ann(W)$ sono L.I.
	Possiamo mostrare che generano $Ann(W)$ in modo diretto, infatti:
	Sia $f\in Ann(W)\Rightarrow f=a_1\varphi _1+...+ a_n\varphi_n, \; a_1,...,a_n\in \mathbb{K}$ ma $f(w_j)=0\; \forall j\in \{1,...,k\}$ per definizione di base duale, quindi si ottiene che $f=a_{k+1}\varphi_{k+1}+...+a_n\varphi_n$ 

**Esempio**:
	$\mathbb{K}^3\supseteq W=Span\left\{ \begin{pmatrix}1\\0\\1\end{pmatrix} \right\}$ con $V=\mathbb{K}^3, dim(V)=3, dim(W)=1$.Quindi $(\mathbb{K}^3)^*\ni Ann(W)=\left\{f:\mathbb{K}^3\rightarrow \mathbb{K} \; \left| \; f\begin{pmatrix}1\\0\\-1\end{pmatrix}=0 \right.\right\}=M_{1,3}(\mathbb{K})$ 
	Fissiamo la base canonica $\mathscr{C}$ di $\mathbb{K}^3$ e $\{1\}$ di $\mathbb{K}\Rightarrow f\Leftrightarrow M_{1,3}(f)=\begin{pmatrix}a & b & c\end{pmatrix}$. Quindi $\begin{pmatrix}a & b & c\end{pmatrix}\begin{pmatrix}1\\0\\-1\end{pmatrix}=0\Leftrightarrow a-c=0$ 
	Equivalentemente posso completare $\left\{\begin{pmatrix}1\\0\\-1\end{pmatrix}\right\}$ in una base $\mathscr{B}$ di $\mathbb{K}^3$ e considerare un isomorfismo $M^{\mathscr{B}}_{\{1\}}: \begin{matrix} (\mathbb{K}^3)^* & \rightarrow & M_{1,3}(\mathbb{K})\\ f\in Ann(W) & \mapsto & \begin{pmatrix}0 & \alpha & \beta\end{pmatrix} \end{matrix}$ 

**Osservazione**: Sia $dim(V)=n$. Ogni elemento non nullo di $V^*$ ha nucleo di dimensione $n-1$ (per il teorema del Rango), in quanto $dim(Im)=1$. 
Infatti: $Im(\varphi)=\begin{matrix}\nearrow & \{0\} \Leftrightarrow \varphi=0\\ \searrow & \mathbb{K} \Leftrightarrow dim(Ker(\varphi))=n-1\end{matrix}$ 
Abbiamo ottenuto una corrispondenza tra $\{\text{Sottospazi }k\text{-dimensionali di V}\}\rightarrow \{\text{Sottospazi }n-k\text{-dimensionali di }V^*\}$ 

>[!def] Definizione di Luogo di Zeri
Sia $H$ un sottospazio di $V^*$, si chiama *Luogo di Zeri* di $H$ e si indica con $Z(H)$ il seguente sottoinsieme di $V$: $$Z(H)=\{v\in V\; | \; f(v)=0\; \forall f \in H\}$$ ^fa7106

**Lemma**: Siano $V$ un $\mathbb{K}\text{-spazio vettoriale}$ e siano $\varphi_1,...,\varphi_r\in V^*$. Considero l'applicazione $\Phi:V\rightarrow \mathbb{K}^r$ definita come $$\Phi(v)=\begin{pmatrix}\varphi_1(v)\\ \vdots \\ \varphi_r(v)\end{pmatrix}$$Allora $\Phi$ è suriettiva se e solo se $\varphi_1,...,\varphi_r$ sono L.I. in $V^*$ 

**Esempio**: 
	$\varphi: \mathbb{K}^4\rightarrow \mathbb{K}^3$. Allora $\varphi\begin{pmatrix}x\\ y\\ z\\ t\end{pmatrix}=\begin{pmatrix}x-y\\ y\\ z-t\end{pmatrix}$, si ha che $(\mathbb{K}^4)^*\ni \varphi\begin{pmatrix}x\\ y\\ z\\ t\end{pmatrix}=x-y \in \mathbb{K}$ 

***Dimostrazione***:
	Supponiamo che $\varphi_1,...,\varphi_r$ sono linearmente dipendenti. Allora esiste $a_1,...,a_r$ elementi di $\mathbb{K}$ non tutti nulli tali che $a_1\varphi_1+...+a_r\varphi_r=0\in V$. 
	$\forall v \in V, \; a_1\varphi_1(v)+...+a_r\varphi_r(v)=0\in \mathbb{K}\Leftrightarrow Im(\Phi)\subseteq \text{Sottospazio di }\mathbb{K}^r\text{ di equazione }a_1x_1+...+a_rx_r=0\Leftrightarrow \Phi \text{ non è suriettiva}$.
	Viceversa, supponiamo che $\Phi$ non sia suriettiva, cioè che $Im(\Phi)\subsetneq\mathbb{K}^r$. Questo implica che gli elementi di $Im(\Phi)$ sono contenuti in un iperpiano ($\Leftrightarrow$ soddisfa almeno un'equazione lineare omogenea). 
	Questo implica cioè che esistono $a_1,...,a_r$ non tutti nulli che gli elementi di $Im(\Phi)$ soddisfa l'equazione $a_1x_1+...+a_rx_r=0$, cioè $a_1\varphi_1(v)+...+a_r\varphi_r(v)=0, \; \forall b \in V\Leftrightarrow a_1\varphi_1+...+a_r\varphi_r=0 \Leftrightarrow \varphi_1,...,\varphi_r$ sono linearmente dipendenti.

>[!def] Definizione di Iperpiano
Un sottospazio vettoriale di dimensione $n-1$ in uno spazio di dimensione $n$ si dice *Iperpiano* di codimensione 1 (ossia la differenza tra lo spazio ambiente e il sottospazio è $1$) ^d23b52

Ogni elemento non nullo $\varphi$ di $V^*$ definisce un iperpiano di $V$ (infatti corrisponde con $Ker(\varphi)$)
Viceversa se $S$ è sottospazio di codimensione $1$, questo lo si può sempre pensare come il nucleo di un elemneto non nullo di $V^*$ 

**Esempio**:
	Sia $\mathscr{B}_S=\{v_1,...,v_{n-1}\}$ una base di $S$ e $\mathscr{B}_V=\{v_1,...,v_{n-1},v_n\}$ base di $V$. Definisco $\varphi: V\rightarrow \mathbb{K}$. Si ottiene $\begin{matrix} \left.\begin{matrix} \varphi(v_1)=0\\ \vdots\\ \varphi(v_{n-1})=0\end{matrix}\right\} & \varphi \in V^*\\ \varphi(v_n)=1 \end{matrix}$, quindi $\varphi≠0$ visto che $\varphi(v_n)=1$ quindi si ha che $Ker(\varphi)=S$
	Sia $S$ un sottospazio di $\mathbb{K}^n$ dove $S=\left\{\left.\begin{pmatrix}x_1\\ \vdots\\ v_x\end{pmatrix}\; \right| \; x_1+x_2+...+x_n=0\right\}\Rightarrow dim(S)=n-1$. Da questo si ottiene che $S=Ker\begin{pmatrix}1 & ... & 1\end{pmatrix}\begin{pmatrix}x_1\\ \vdots\\ x_n\end{pmatrix}=0\Rightarrow (\mathbb{K}^n)^*\rightarrow \mathbb{K}$  Duale

**Proposizione**: $Z(H)$ è un sottospazio vettoriale di $V$ e $dim(Z(H))=n-dim(H)$ 
***Dimostrazione***:
	Bisogna prima dimostrare che $Z(H)$ è un sottospazio di $V$. 
	Siano $v_1,v_2\in Z(H)\xRightarrow{?}v_1+v_2\in Z(H)$: 
	$\forall f \in H, \; f(v_1+v_2)=\underbrace{f(v_1)}_{=0}+\underbrace{f(v_2)}_{=0}=0$. Quindi è chiuso rispetto alla somma.
	Siano $\lambda \in \mathbb{K}$ e $v \in Z(H)\xRightarrow{?}\lambda v\in Z(H)$:
	$\forall f \in H, \; f(\lambda v)=\lambda \underbrace{f(v)}_{=0}=0$. Quindi è chiuso rispetto al prodotto per scalari.
	Sia $\mathscr{B}_H=\{\varphi_1,..,\varphi_m\}$ una base di $H$
	Costruisco l'applicazione lineare $\Phi: \begin{matrix} V & \rightarrow & \mathbb{K}^m\\ v & \mapsto & \begin{pmatrix}\varphi_1(v)\\ \vdots \\ \varphi_m(v)\end{pmatrix} \end{matrix} \Rightarrow Z(H)=Ker(\Phi)$  
	Quindi per il teorema del Rango si ottiene che $\underbrace{dim(Z(H))}_{=Ker(\Phi)}=dim(V)-\underbrace{dim(Im(\Phi))}_{=m \text{ Per il lemma precedente}}\Rightarrow dim(V)-m$  
	Si ottiene quindi che $\left. \begin{matrix}\{^{\text{Sottospazio }k-}_{\text{dimensionale di } V}\} & \rightarrow & \{^\text{{Sottopazio }(n-k)}_{\text{dimensionale di }V^*}\} \\ W & \mapsto & Ann(W) \\ Z(H) & \leftarrow\!| & H\end{matrix} \right\}\Rightarrow \left.\underbrace{Z(\underbrace{Ann(W)}_{n-k})}_{k}\supseteq \underbrace{W}_{k}\right\}= Z(Ann(W))=W$ 
	Viceversa si ottiene che $H\subseteq V^*: \left. \underbrace{Ann(\underbrace{Z(H)}_{k})}_{n-k} \supseteq \underbrace{H}_{n-k} \right\}=Ann(Z(H))=H$ 
	Quindi sono anche isomorfi.

>[!th] Teorema
Esiste un isomorfismo *canonico* tra $(V^*)^*\simeq V$ (con $V$ di dimensione finita $n$)

***Dimostrazione***:
	Costruiamo esplicitamente l'isomorfismo $\varphi:\begin{matrix} V & \rightarrow & (V^*)^*\\ v & \mapsto & \varphi_n \end{matrix}$, dove $\varphi_n=V^* \rightarrow \mathbb{K}, \; \varphi_n(f)=f(v)\in \mathbb{K}$ 
	Devo dimostrare che $\varphi$ è lineare e iniettiva (e di conseguenza anche suriettiva)
	$\underbrace{\phi(v_1+v_2)}_{\varphi_{v_1+v_2}}= \underbrace{\varphi(v_1)}_{\varphi_{v_1}}+\underbrace{\varphi(v_2)}_{\varphi_{v_2}}$, dove $\varphi_{v_1+v_2},\varphi_{v_1},\varphi_{v_2}:V\rightarrow \mathbb{K}$ 
	Per la definizione di $Hom(V^*,\mathbb{K}):\varphi_{v_1+v_2}(f)=\varphi_{v_1}(f)+\varphi_{v_2}(f)$, ma per la definizione di $V^*: \begin{matrix} (\varphi_{v_1}+\varphi_{v_2})(f) & \varphi_{v_1}(f) & \varphi_{v_2}(f) \\ || & || & || \\ f(v_1+v_2) & f(v_1) & f(v_2)\end{matrix}$, quindi si ha che $\varphi_{v_1+v_2}(f)=\varphi_{v_1}(f)+\varphi_{v_2}(f)\Leftrightarrow f(v_1+v_2)=f(v_1)+f(v_2)$, quindi $\varphi$ è chiuso rispetto alla somma.
	Analogamente $\lambda \in \mathbb{K}, v \in V$, $\varphi(\lambda v)\xlongequal{?} \lambda \varphi(v) \in (V^*)^*$ 
	$\varphi(\lambda v)\xRightarrow{\varphi} \varphi_{\lambda v}\xlongequal{Hom(V^*,\mathbb{K})} \lambda \varphi_v \Leftrightarrow {\forall f \in V^*}, \; \varphi_{\lambda v}(f)=\lambda \varphi_v(f)\xRightarrow{V^*} f(\lambda v)=\lambda f(v)$. Quindi $\varphi$ è chiuso rispetto al prodotto per scalari.
	Quindi $\varphi$ è lineare.
	Quindi $\varphi:\begin{matrix} V & \rightarrow &(V^*)^*\\ v & \mapsto & \varphi_n: & V^* & \rightarrow & \mathbb{K}\\ & & & f & \mapsto & f(v)\end{matrix}$. Si ha che $Ker(\varphi)=\{v\in V \; | \; \varphi_v=0\}$ ma $\varphi_v(f)=0 \Leftrightarrow f(v)=0, \; \forall f \in V^*$. Si ottiene quindi che $Ker(\varphi)=Z(V^*)$, cioè $n-dim(V)=n-n=0$. Quindi $\varphi$ è iniettiva.
	Si ottiene inoltre che $Ann(V)=\{0_{V^*}\}$ e che $Z(V^*)=\{0_V\}$

>[!def] Definizione di Applicazione Trasposta
Supponiamo che $f:V\rightarrow W$ sia lineare. Allora posso costruire una applicazione lineare $f^*:\begin{matrix}W^* & \rightarrow & V^* \\ \varphi & \mapsto & \varphi \circ f\end{matrix}$  nel modo seguente$$\overrightarrow{\begin{matrix}V & \xrightarrow{f} & W & \xrightarrow{\varphi} & \mathbb{K}\end{matrix}}^{\varphi\circ f}$$che si chiama *Applicazione Trasposta di $f$*

>[!def] Definizione di Matrice Trasposta
Data una matrice $A\in M_{m,n}(\mathbb{K})$, si chiama *Matrice Trasposta di $A$* e si indica con $A^T$ la matrice in $M_{n,m}(\mathbb{K})$ che si ottiene scambiando le righe con le colonne di $A$ ^1f9e76

**Esempio**: 
	$A=\begin{pmatrix} -1 & 2 & 3\\ 0 & 1 & 1\end{pmatrix}\Rightarrow A^T=\begin{pmatrix} -1 & 0\\ 2 & 1\\ 3 & 1\end{pmatrix}$ 

**Proposizione**: Siano  $\mathscr{B}_V$ una base di $V$ e $\mathscr{B}_W$ una base di $W$. Indichiamo con $\mathscr{B}_{V^*}$ e $\mathscr{B}_{W^*}$ rispettivamente le basi di $V^*$ e $W^*$ duali di $\mathscr{B}_V$ e di $\mathscr{B}_W$. Allora $$(M^{\mathscr{B}_V}_{\mathscr{B}_W}(f))^T=M^{\mathscr{B}_{W^*}}_{\mathscr{B}_{V^*}}(f^*)$$ ***Dimostrazione***:
	Siano $\mathscr{B}_V=\{v_1,...,v_n\}$ base di $V$ e $\mathscr{B}_W=\{w_1,...,w_m\}$ base di $W$.
	Siano $\mathscr{B}_{W^*}=\{\underbrace{\varphi_1,...,\varphi_n}_{\varphi_1(v_j)=\delta_{i,j}}\}$ base di $W^*$ e duale di $\mathscr{B}_V$ e $\mathscr{B}_{V^*}=\{\underbrace{\psi_1,...,\psi_m}_{\psi_{r}(w_s)\delta_{rs}}\}$ base di $V^*$ e duale di $\mathscr{B}_W$ 
	Sia $f:V\rightarrow W$ e sia $M^{\mathscr{B}_V}_{\mathscr{B}_W}(f)=(a_{i,j})\in M_{m,n}(\mathbb{K})$. La sua $j$-esima colonna sarà $\begin{pmatrix}a_{1,j}\\ a_{2,j}\\ \vdots \\ a_{m,j}\end{pmatrix}$, quindi $f(v_j)=\displaystyle{\sum^m_{h=1}a_{h,j}w_h}$ 
	Sia $f^*:W^* \rightarrow V^*$ (definita come sopra) e sia $M^{\mathscr{B}_{W^*}}_{\mathscr{B}_{V^*}}(f^*)=(b_{\ell,j})\in M_{n,m}(\mathbb{K})$. La sua $k$-esima colonna sarà $\begin{pmatrix}b_{1,k}\\ b_{2,k}\\ \vdots \\ b_{n,k}\end{pmatrix}$, quindi $f^*(\psi_k)=\displaystyle{\sum^n_{j=1}b_{j,k}\varphi_j}$. Quindi $f^*(\psi_k)(v_i)=\left(\displaystyle{\sum^n_{j=1}b_{j,k}\varphi_j}\right)(v_i)$. Tuttavia, analizzando per bene i due elementi dell'uguaglianza si ha che:
	$\left. \begin{matrix} f^*(\psi_k)(v_i)\xlongequal{\text{Definizione di }f^*} (\psi_k\circ f)(v_i)=\psi_k(f(v_i))\xlongequal{\text{Per sopra}} \psi_k \left(\displaystyle{\sum^m_{h=1}a_{h,i}w_h}\right)\xlongequal{\text{Definizione di }Hom}\displaystyle{\sum^m_{h=1}a_{h,i}\underbrace{\psi_k(w_h)}_{\delta_{k,h}}}=a_{k,i} \\ \left(\displaystyle{\sum^n_{j=1}b_{j,k}\varphi_j}\right)(v_i)\xlongequal{\text{Definizione di }Hom} \displaystyle{\sum^n_{h_1}b_{j,k}\underbrace{\varphi_jv_i}_{\delta_{i,j}}}=b_{i,k} \end{matrix} \right\} a_{k,i}=b_{i,k}$ 
	Cioè sono l'una la trasposta dell'altra.
	Abbiamo dimostrato dunque che $\forall i \in \{1,...,n\}, \; \forall k\in \{1,...,m\}$ si ha che $b_{k,i}=a_{i,k}\Rightarrow M^{\mathscr{B}_{W^*}}_{\mathscr{B}_{V^*}}(f^*)=(M^{\mathscr{B}_V}_{\mathscr{B}_W}(f))^T$ 

*Proprietà* della matrice trasposta:
1. $Ker(f^*)=\{\varphi \in W^*\; | \; f^*(\varphi)=0\} = \{\varphi \in W^*\; | \; \varphi \circ f=0 \}$= $\{\varphi \in W^*\; | \; (\varphi \circ f)(v_i)=0\} = \{\varphi \in W^*\; | \; \varphi(\underbrace{f(v)}_{Im(f)})=0\}=Ann(Im(f))$ 
2. $Im(f^*)=\{f^*(\varphi) \; | \; \varphi \in W^*)\} = \{\varphi \circ f \; | \; \varphi \in W^*\} \subseteq V^*$.
	Osserviamo che $Ker(f)\subseteq Ker(\varphi \circ f)$: infatti se $v \in Ker(f)$, cioè $v\in V$ e $f(v)=0$ allora anche $\varphi(f(v))=0\Rightarrow (\varphi \circ f)(v)=0\Rightarrow v \in Ker(\varphi \circ f) \Rightarrow \forall(\varphi \circ f)\in Im(f^*)\Rightarrow \varphi \circ f\in Ann(Ker(f))\Leftrightarrow Im(F^*)\subseteq Ann(Ker(f))$ 
	$dim(Im(f^*))=dim(W^*)-dim(Ker(f^*))= dim(W^*)-dim(Ann(Im(f)))=dim(W^*)-(dim(W)-dim(Im(f)))=dim(Im(f))$ Tutto questo è possibile grazie al teorema del Rango.
	Dunque $Im(f^*)=Ann(Ker(f))$ 

**Osservazione**: Il punto 2. era osservabile anche per il fatto che $rg(A)=rg(A^T)$ 

**Esercizio 1**:
	Si consideri la base $\mathscr{B}_V\left\{\begin{pmatrix}1\\1\\1\end{pmatrix}, \begin{pmatrix}1\\0\\1\end{pmatrix}, \begin{pmatrix}1\\-1\\0\end{pmatrix}\right\}$ di $\mathbb{K}^3$. Costruire la base di $(\mathbb{K}^3)^*$ duale di $\mathscr{B}$.

**Soluzione**:
	La base che cerchiamo sarà $\left\{\varphi_1,\varphi_2,\varphi_3\right\}\subseteq \mathbb{K}^3$ dove $\varphi_i(v_j)=\delta_{i,j}$ 
	Vogliamo scrivere la matrice di $\varphi_i, \; \forall i \in \{1,2,3\}$ rispetto alla base canonica $\mathscr{Can}$ di $\mathbb{K}^3$ e $\{1\}$ di $\mathbb{K}$
	Questo significa trovare $M^{\mathscr{Can}}_{\{1\}}(\varphi_1)=\begin{pmatrix}a & b & c\end{pmatrix}$ 
	$\varphi_1=\begin{cases} \begin{pmatrix}a & b & c\end{pmatrix}\begin{pmatrix}1\\1\\1\end{pmatrix}=1\\ \begin{pmatrix}a & b & c\end{pmatrix}\begin{pmatrix}1\\0\\1\end{pmatrix}=0\\ \begin{pmatrix}a & b & c\end{pmatrix}\begin{pmatrix}1\\-1\\0\end{pmatrix}=0 \end{cases}\Rightarrow \begin{cases}a+b+c=1\\ a+c=1\\ a-b=1\end{cases}\Rightarrow \begin{cases}a=1\\ b=1\\ c=-1\end{cases}\Rightarrow \varphi_1=\begin{pmatrix}1 & 1 &-1\end{pmatrix}$  
	Analogamente si ottengono che $\varphi_2=\begin{pmatrix}-1 & -1 & 2\end{pmatrix}$ e $\varphi_3=\begin{pmatrix}1 & 0 & -1\end{pmatrix}$ 

**Esercizio 2**:
	Sia $V$ spazio vettoriale di dimensione $n$, $H$ e $K$ sottospazi di $V$. Dimostrare che
	1. $Ann\{0_V\}=V^*, Ann(V)=\{O_{V^*}\}$ 
	2. $H\subseteq K\Rightarrow Ann(K)\subseteq Ann(H)$ 
	3. $Ann(H+K)=Ann(H)\cap Ann(K)$ 
	4. $Ann(H\cap K)=Ann(H)+Ann(K)$ 

**Soluzione**:
	1. Tutte le funzioni lineari $V\rightarrow \mathbb{K}$ si annullano in 0. L'unica funzione lineare che manda ogni vettore di $V$ in 0 è la funzione identicamente nulla.
	2. Segue subito dalla definizione di annullante.
	3. $H\subseteq H+K$ e $K\subseteq H+K$. Dal punto 2 $Ann(H+K)\subseteq Ann(H)\cap Ann(K)$. Sia $f\in Ann(H)\cap Ann(K)$. Sia $h+k\in H+K\Rightarrow f(h+k)=\underbrace{f(h)}_{0}+\underbrace{f(k)}_{0}=0\Rightarrow f\in Ann(H+K)\Rightarrow Ann(H)\cap Ann(K)\subseteq Ann(H+K)\Rightarrow$$\Rightarrow Ann(H)\cap Ann(K)= Ann(H+K)$  
	4. Dobbiamo verificale la doppia inclusione
		1. $\supseteq$) Sia $g\in Ann(H)+Ann(K)\Rightarrow g=g_1(\in Ann(H))+g_2(\in Ann(K))$. Sia $z\in H\cap K$. Si ha che $g(z)=(g_1+g_2)(z)=\underbrace{g_1(z)}_{0}+\underbrace{g_2(z)}_{0}=0\Rightarrow g\in Ann(H\cap K)\Rightarrow Ann(H)+Ann(K)\subseteq Ann(H\cap K)$ 
		2. $\subseteq$) Lo si fa tranquillamente attraverso la Formula di Grassmann, ossia calcolo $dim(Ann(H\cap K))$ e $dim(Ann(H)+Ann(K))$. 
			$dim(Ann(H\cap K))=n-dim(H\cap K)$ 
			$dim(Ann(H)+Ann(K))=dim(Ann(H))+dim(Ann(H))-dim(Ann(H)\cap Ann(K))=$$=n-dim(H)+n-dim(K)-dim(Ann(H+ K))=n-dim(H)+n-dim(K)-(n-dim(H+K))=$$=n-dim(H)-dim(K)+dim(H)+dim(K)-dim(H\cap K)=n-dim(H\cap K)$ 
			Quindi $Ann(H\cap K)\subseteq Ann(H)+Ann(K)$ 
		Avendo entrambe le inclusioni $Ann(H\cap K)=Ann(H)+Ann(K)$ 
***
## Determinante, Autospazi e Autovettori

>[!def] Determinante di una matrice quadrata
$A=\begin{pmatrix}a_{1,1} & ... & a_{1,n}\\ \vdots & & \vdots\\ a_{n,1} & ... & a_{n,n}\end{pmatrix}=\begin{pmatrix}A_1 & ... & A_n\end{pmatrix}$ dove ogni $A_i$ rappresenta una colonna della matrice.
Identificando la matrice $M_n(\mathbb{K})$ con $\mathbb{K}^n\times ... \times \mathbb{K}^n, n$ volte. Il determinante rappresenta una funzione che $\delta:\mathbb{K}^n\times ... \times \mathbb{K}^n\rightarrow \mathbb{K}$ che gode di queste proprietà: 
>1. Alternanza: Se due colonne sono uguali, la funzione si annulla.
>2. Multilinearità: $\forall i \in \{1,...,n\}$ e $\forall (n-1)$-upla.
>
>Sia $A_1,...,A_{i-1},A_{i+1},...,A_n$ di $\mathbb{K}^n$. La funzione $\begin{matrix} x & \rightarrow & \delta(A_1,...,A_{i-1},A_{i+1},...,A_n)\\ \in \mathbb{K}^n & & \in \mathbb{K} \end{matrix}$ è lineare.
Infatti per ogni posto: $\delta(A_1,...,A_{i-1},\lambda B+\mu C, A_{i+1},...,A_n)=\lambda \delta(A_1,...,A_{i-1},B,A_{i+1},...,A_n)+\mu \delta(A_1,...,A_{i-1},C,A_{i+1},...,A_n)$ 

**Osservazione**: Le proprietà 1) e 2) lo scambio di 2 colonne implicano il cambiamento di segno di $\delta$ $$\delta(A_1,...,A_i,...,A_j,...,A_n)=-\delta(A_1,...,A_j,...,A_i,...,A_n)$$Infatti: $\delta(A_1,...,A_{i+j},...,A_{i+j},...,A_n)=0\Rightarrow \delta(A_1,...,A_i,...,A_{i+j},...,A_n)+\delta(A_1,...,A_j,...,A_{i+j},...,A_n)=0\Rightarrow$ $\Rightarrow \delta(A_1,...,A_i,...,A_{i},...,A_n)+\delta(A_1,...,A_i,...,A_{j},...,A_n)+$$+\delta(A_1,...,A_j,...,A_{i},...,A_n)+\delta(A_1,...,A_j,...,A_{j},...,A_n)=0\Rightarrow$ $\Rightarrow \delta(A_1,...,A_i,...,A_{j},...,A_n)+\delta(A_1,...,A_j,...,A_{i},...,A_n)=0\Rightarrow$$\Rightarrow\delta(A_1,...,A_i,...,A_{j},...,A_n)=-\delta(A_1,...,A_j,...,A_{i},...,A_n)$
Questo implica che $\forall \sigma \in \mathfrak{S}_n, \delta(A_1,...,A_n)=sgn(\sigma)\delta(A_{\sigma(1)},...,A_{\sigma(n)})$ 

**Esempio su una matrice quadrata**$A=\begin{pmatrix}a_{1,1} & a_{1,2}\\ a_{2,1} & a_{2,2}\end{pmatrix}$
	Calcoliamo $\delta(A)=\delta \left(\begin{pmatrix} a_{1,1}\\ a_{2,1}\end{pmatrix},\begin{pmatrix} a_{1,2}\\ a_{2,2}\end{pmatrix} \right)=\delta(a_{1,1}e_1+a_{2,1}e_2,a_{1,2}e_1+a_{2,2}e_2)=a_{1,1}\delta(e_1,a_{1,2}e_1+a_{2,2}e_2)+a_{2,1}\delta(e_2,a_{1,2}e_1+a_{2,2}e_2)=$$=a_{1,1}a_{1,2}\delta(e_1,e_2)+a_{1,1}a_{2,2}\delta(e_1,e_2)+a_{2,1}a_{1,2}\delta(e_2,e_1)+a_{2,1}a_{2,2}\delta(e_2,e_2)=a_{1,1}a_{2,2}\delta(e_1,e_2)+a_{2,1}a_{1,2}\delta(e_2,e_1)=$ $=a_{1,1}a_{2,2}\delta(e_1,e_2)-a_{2,1}a_{1,2}\delta(e_1,e_2)=(a_{1,1}a_{2,2}-a_{2,1}a_{1,2})\delta(e_1,e_2)$.

Allo stesso modo si ottiene $A=\begin{pmatrix}a_{1,1} & a_{1,2} & a_{1,3}\\ a_{2,1} & a_{2,2} & a_{2,3} \\ a_{3,1} & a_{3,2} & a_{3,3}\end{pmatrix}= \delta(a_{1,1}e_1+e_{1,2}e_2+a_{1,3}e_3+a_{2,1}e_1)+a_{2,2}e_2+a_{2,3}e_3+a_{3,1}e_1+a_{3,2}a_2+a_{3,3}e_3)$.
Ottengo $3^3=27$ termini: $\displaystyle{\sum^{3}_{i,j,k}a_{i,1}a_{j,2}a_{k,3}\delta(e_i,e_j,e_k)}$ ma $\delta(e_i,e_j,e_k)=0$ se $i,j,k$ non sono permutazioni.
Quindi $\delta(A)=\left(\displaystyle{\sum_{\sigma \in \mathfrak{S}_n} a_{\sigma(1),1}a_{\sigma(2),2}a_{\sigma(3),3}\delta(e_{\sigma(1)},e_{\sigma(2)},e_{\sigma(3)})}\right)=$$=(a_{1,1}a_{2,2}a_{3,3}-a_{1,1}a_{2,3}a_{3,2}+a_{2,1}a_{3,2}a_{1,3}-a_{2,1}a_{1,2}a_{3,3}+a_{3,1}a_{1,2}a_{2,3}-a_{3,1}a_{2,2}a_{1,3})\delta(e_1,e_2,e_3)$ 
Lo stesso può essere fatto per un qualsiasi $n$, da $\delta(A)=\displaystyle{\sum_{\sigma \in \mathfrak{S}_n}sgn(\sigma)a_{\sigma(1),1}\cdot ... \cdot a_{\sigma(n),n}}\delta(e_1,...,e_n)$ 

>[!th] Teorema di esistenza e unicità del determinante
Esiste una e una sola funzione che si determina $det:\mathbb{K}^n\times... \times \mathbb{K}^n\rightarrow \mathbb{K}$ che è alternata, multilineare e vale $1$ su $e_1,...,e_n$ ed è dato da $\delta(A)=\displaystyle{\sum_{\sigma \in \mathfrak{S}_n}sgn(\sigma)a_{\sigma(1),1}\cdot ... \cdot a_{\sigma(n),n}}$.

***Dimostrazione***:
	Per verificare l'esistenza basta verificare che la funzione verifica le due proprietà di alternanza e multilinearità.

*Osservazione*: $det(A)=det(A^T)$ 

**Esercizio**: 
	$A=\begin{pmatrix}a_{1,1} & ... & a_{1,n}\\ \vdots & \ddots & \vdots \\ 0 & ... & a_{n,n}\end{pmatrix}$, visto che $a_{i,j}=0$ se $i>j$, quindi il suo determinante è $a_{1,1}\cdot ... \cdot a_{n,n}$

**Osservazione**: Se $A$ è invertibile $\Leftrightarrow$ $det(A)≠0$ 

Sia $A'$ ottenuta da $A$ mediante operazioni elementari sulle righe e sulle colonne. Che relazione c'è tra $det(A')$ e $det(A)$?
- Scambio di due colonne: $det(A')=-det(A)$ 
- Moltiplicazione di una colonna per $\lambda≠0\in \mathbb{K}$: $det(A')=\lambda det(A)$ 
- Somma di una colonna $A_i$ con un multiplo di $A_j$ diversa da $A_i$ ($i≠j$): $det(A')=det(A)$ 

**Proposizione**: Se $A'$ è ottenuta da $A$ mediante operazioni elementari sulle colonne e sulle righe $det(A')≠0 \Leftrightarrow det(A)≠0$ 

Combinare il calcolo del determinante di una matrice triangolare si ha $A$ invertibile $\Leftrightarrow$ $detA≠0$ 

>[!def] Sviluppo di Laplace del Determinante
>$$det\begin{pmatrix}a_{1,1} & ... & a_{1,n}\\ \vdots & & \vdots\\ a_{n,1} & ... & a_{n,n}\end{pmatrix}=a_{1,1}\begin{pmatrix}a_{2,2} & ... & a_{2,n}\\ \vdots & & \vdots \\ a_{n,2} & ... & a_{n,n}\end{pmatrix}-a_{1,2}\begin{pmatrix} a_{2,1} & ... & a_{2,n}\\ \vdots & & \vdots \\ a_{2,n} & ... & a_{n,n}\end{pmatrix}+...$$Ossia si sceglie una riga o una colonna (di solito con più 0) e si procede alternando rispetto alla matrice a scacchiera $$\begin{pmatrix}+ & - & + & - & ...\\ - & + & - & + & ...\\ + & - & + & - & ...\\ - & + & - & + & ... \\ \vdots &\vdots &\vdots &\vdots & \ddots\end{pmatrix}$$
>

>[!th] Esistenza e unicità della funzione $det$
>Esiste ed è unica la funzione $det: \mathbb{K}^n \times ... \times \mathbb{K}\rightarrow \mathbb{K}$ che è
>1) Alternata 
>2) Multilaterale
>3) $det=\overbrace{e_1,...,e_n}^{In}=1$ 


***Dimostrazione***:
Se $\delta:\mathbb{K}^n\times ... \times \mathbb{K}^n\rightarrow \mathbb{K}$ è una funzione che verifica 1) e 2) $\Rightarrow \exists c \in \mathbb{K} \; t.c.\; \delta(A)=c\cdot det(A)\Rightarrow c=\delta (Im)$
$det(A)≠0\Leftrightarrow A$ è invertibile e $det(A)=\displaystyle{\sum_{\sigma \in \mathfrak{S}} sgn(\sigma)a_{\sigma(1),1}\cdot ... \cdot a_{\sigma(n),n}}$ 

>[!th] **Formula di Binet**: 
Siano $A,B \in M_n(\mathbb{K})$, $det(A\cdot B)=(detA)(detB)$

*Una dimostrazione diretta risulta troppo complessa* 

***Verifica***: 
	Consideriamo la funzione $\delta: \underbrace{\mathbb{K}^n\times ... \times \mathbb{K}^n}_{n\text{ volte}}\rightarrow \mathbb{K}$ definita come $\delta(x_1,...,x_n)=det(\overbrace{Ax_1,...,Ax_n}^{Ax})$.
	$\delta$ verifica 1) e 2), quindi per il teorema di Binet $\delta(x)= c \cdot det(x)$ dove $c=\delta(Im)=det(A)$, quindi $det(Ax)=\delta(x)=det(A)\cdot det(x)$  ^821eba

In particolare questo dice che $det: GL(\mathbb{K})\rightarrow \mathbb{K}^*$ (Ossia privo di 0) è un omomorfismo di gruppi.

*Domanda: È suriettiva?*
Si, è sufficiente moltiplicare una colonna per uno scalare $\lambda\in \mathbb{K}^*$ 
Si ottiene inoltre che $Ker(det):\{A\in M_n(\mathbb{K})\; | \; det(A)=1\}$ 

>[!def] **Definizione di Gruppo Speciale Lineare** 
Il gruppo $Ker(det):\{A\in M_n(\mathbb{K})\; | \; det(A)=1\}$ rappresenta un sottogruppo normale di $GL(\mathbb{K})$ e si indica con $SL_n(\mathbb{K})$. ^344de4

**Corollario**: Se $A$ è invertibile, $det(A^{-1})=(det(A))^{-1}$  
***Dimostrazione***:
	$det(Im)=1\Rightarrow det(A\cdot A^{-1})=1\Rightarrow det(A)\cdot det(A^{-1})$ 

**Corollario**: Se $A$ e $B$ sono simili, $det(A)=det(B)$
***Dimostrazione***: 
	Se $B=HAH^{-1}$ con $H$ invertibile, $det(B)=det(HAH^{-1})=det(H)\cdot det(A)\cdot det(H^{-1})=det(A)$ 

Tutto questo permette di trovare il determinante di un endomorfismo. 

>[!def] **Sviluppo di Laplace per il Determinante (per le righe)**
Data una qualsiasi matrice $A_n$, per $1≤k,\ell,≤n$, sia $A_k$ la matrice ottenuta tagliando la dalla matrice la $k$-esima riga e la $\ell$-esima colonna. Scelgo quindi la la $i$-esima riga e determino $det(A)=\displaystyle{\sum^n_{j=1}(-1)^{i+j}a_{i,j} det(A_{i,j})}$ 

>[!def] **Determinante di Vandermonde**
Siano $\lambda_1,...,\lambda_n \in \mathbb{K}$. La matrice di Vandermonde è della forma: $$\begin{pmatrix} 1 & 1 & ... & 1\\ \lambda_1 & \lambda_2 & ... & \lambda_n\\ \lambda_1^2 & \lambda_2^2 & ... & \lambda_n^2\\\vdots & \vdots & & \vdots\\ \lambda_n^{n-1} & \lambda_2^{n-1} & ... & \lambda_{n-1}^n\end{pmatrix}$$

Il suo determinante si ricava:$$\begin{pmatrix} 1 & 1 & ... & 1\\ \lambda_1 & \lambda_2 & ... & \lambda_n\\ \lambda_1^2 & \lambda_2^2 & ... & \lambda_n^2\\\vdots & \vdots & & \vdots\\ \lambda_n^{n-1} & \lambda_2^{n-1} & ... & \lambda_{n-1}^n\end{pmatrix}\xrightarrow{\text{Riduzione}} \begin{pmatrix} 1 & 1 & ... & 1\\ 0 & \lambda_2-\lambda_1 & ... & \lambda_n-\lambda_1\\ 0 & \lambda_2^2-\lambda_1^2 & ... & \lambda_n^2-\lambda_1^2\\\vdots & \vdots & & \vdots\\ 0 & \lambda_2^{n-1}-\lambda_1^{n-1} & ... & \lambda_{n-1}^n-\lambda_1^{n-1}\end{pmatrix}\xrightarrow{\text{Raccoglimento}}$$$$\xrightarrow{\text{Raccoglimento}}(\lambda_2-\lambda_1)\cdot...\cdot(\lambda_n-\lambda_1)\begin{pmatrix}  1 & ... & 1\\  \lambda_2 & ... & \lambda_n\\  \lambda_2^2 & ... & \lambda_n^2\\ \vdots & & \vdots\\ \lambda_2^{n-1} & ... & \lambda_{n-1}^n\end{pmatrix}\xrightarrow{\text{Proseguendo}}\prod_{i>j}(\lambda_i-\lambda_{j})$$
**Esempio**:
	Con $n=2$: $\begin{pmatrix}1 & 1\\ \lambda_1 & \lambda_2\end{pmatrix}= \lambda_1-\lambda_2$ 
	Con $n=3$: $\begin{pmatrix}1 & 1 & 1\\ \lambda_1 & \lambda_2 & \lambda_3\\ \lambda_1^2 & \lambda_2^2 & \lambda_3^2\end{pmatrix}\xrightarrow{\text{Riduzione}}\begin{pmatrix} 1 & 1 & 1\\ 0 & \lambda_2-\lambda_1 & \lambda_3-\lambda_1\\ 0 & \lambda_2^2-\lambda_1^2 & \lambda_3^2-\lambda_1^2\end{pmatrix}=det\begin{pmatrix} \lambda_2-\lambda_1 & \lambda_3-\lambda_1\\ \lambda_2^2-\lambda_1^2 & \lambda_3^2-\lambda_1^2\end{pmatrix}=(\lambda_2-\lambda_1)(\lambda_3-\lambda_1)(\lambda_3-\lambda_2)$ 

>[!def] **Regola di Cramer**
Sia $A$ invertibile, sappiamo che il sistema di equazioni $Ax=b$ con $b\in \mathbb{K}^n$ ha una e una sola soluzione. Come si trova?
Se $A=(\underbrace{A_1,...,A_n}_{\text{Colonne di }A})$ e $x=\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}$. Allora $Ax=x_1A_1+...+x_nA_n=\begin{pmatrix}a_{1,1} & ... & a_{1,n}\\ \vdots & & \vdots\\ a_{n,1} & ... & a_{n,n}\end{pmatrix}\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}$.
Se $x$ risolve $Ax=b$, vuol dire che $b=x_1A_1+...+x_nA_n$ 
Considero quindi la matrice $(A_i,...,A_{i-1},b,A_{i+1},...,A_n)$, ottenuta sostituendo $b$ con $A_i$. Calcoliamo il suo determinante.$det(A_1,...,A_{i-1},(x_1A_1,...,x_nA_n),A_{i+1},...,A_n)=x_1 \cdot det(A_i,...,A_{i-1},A_1,A_{i+1},...,A_n)+...+x_n\cdot det(A_i,...,A_{i-1},A_n,A_{i+1},...,A_n)$Ma per la proprietà Alternata del determinante si ha che la soluzione è $x_i\cdot det(\underbrace{A_i,...,A_{i-1},A_i,A_{i+1},...,A_n}_{A})$ 
Abbiamo dimostrato quindi che il determinante è $x_i=\frac{det(A_i,...,A_{i-1},b,A_{i+1},...,A_n)}{det(A)}$.
*Questa formula coinvolge $n-1$ determinanti di ordine $n$, quindi non è molto efficace praticamente* ^846617

**Esercizio**:
	$\begin{cases} {x_1+x_2+x_3=1}\\ {2x_1-x_2+x_3=0}\\ {x_1-x_2+3x_3=1} \end{cases}\Rightarrow A=\begin{pmatrix}1 & 1 & 1\\ 2 & -1 & 1\\ 1 & -1 & 3\end{pmatrix}$ il cui determinante è $8$ e $B=\begin{pmatrix}1\\0\\1\end{pmatrix}$ 

**Soluzione**:
	$x_1=\displaystyle{\frac{det\begin{pmatrix} 1 & 1 & 1\\ 0 & -1 & 1\\ 1 & -1 & 3 \end{pmatrix}}{8}}=0;\quad x_2=\displaystyle{\frac{det\begin{pmatrix} 1 & 1 & 1\\ 2 & 0 & 1\\ 1 & 1 & 3 \end{pmatrix}}{8}=-\frac{4}{8}=-\frac{1}{2}};\quad x_1=\displaystyle{\frac{det\begin{pmatrix} 1 & 1 & 1\\ 2 & -1 & 0\\ 1 & -1 & 1 \end{pmatrix}}{8}=\frac{1}{2}}$  


Sia $A$ una matrice invertibile e $b\in \mathbb{K}^n$. La soluzione $x=\begin{pmatrix}x_1 \\ \vdots \\ x_n\end{pmatrix}$ di $Ax=b$ è data da $$x_1=\frac{det(A_1,...A_{i-1},b,A_{i+1},...,A_n)}{det(X)}$$Questa da la regola per il calcolo dell'inversa di una matrice $A^{-1}$ 
Infatti mi basta trovare una $x$ tale che $Ax=I_m$ 
Se $x=(x_1,...,x_n)\Rightarrow Ax_=(Ax_1,...,Ax_n)$, ossia si deve avere che $Ax=e_1,...,Ax_n=e_n$ 
Per $i\in \{1,...,n\}$ risolviamo $Ax_i=e_i$ con Cramer:
Sia $x_i$ la $i$-esima colonna delle matrici che so e devo cercare $x_i=\begin{pmatrix}x_{1,i}\\ \vdots \\ x_{n,i}\end{pmatrix}$ 
Con Cramer si ha che $x_{k,i}=\displaystyle{\frac{det(A_1,...,A_{k-1},e_i,A_{k+1},...,A_n)}{det(A)}}$ dove la matrice al numeratore è la matrice: $$\begin{pmatrix}a_{1,1} & ... & a_{1,k-1} & 0 & a_{1,k+1} & ... & a_{1,n}\\ \vdots & & \vdots & \vdots & \vdots & & \vdots \\ a_{i,1} & ... & a_{i,k-1} & 1 & a_{i,k+1} & ... & a_{i,n}\\ \vdots & & \vdots & \vdots & \vdots & & \vdots\\ a_{n,1} & ... & a_{n,k-1} & 0 & a_{n,k+1} & ... & a_{n,n}\end{pmatrix}$$Si ottiene quindi che $x_{k,i}=\displaystyle{\frac{det(A_1,...,A_{k-1},e_i,A_{k+1},...,A_n)}{det(A)}=\frac{(i)^{i+k}det(A_{i,k})}{det(A)}}$ 
Quindi bisogna trovare $n^2$ determinanti di ordine $n-1$ più un determinante di ordine $n$ 

**Osservazione**: Se ho una matrice a coefficienti interi, ossia $\in \mathbb{Z}$, e il determinante è $\pm 1$ $\xLeftrightarrow{\text{Binet}}$ $A^{-1}$ ha coefficiente intero 

**Esercizio**:
	$det\begin{pmatrix}3 & 9 & 7\\ 1 & 2 & 0\\ 2 & 0 & 4\end{pmatrix}=24-36-28=40$ 
	Calcoliamo le soluzioni con la formula precedente i vari elementi della matrice
	$\left. \begin{matrix}(A^{-1})_{1,1}=\frac{1}{5} & (A^{-1})_{1,2}=\frac{-9}{10} & (A^{-1})_{1,3}=\frac{7}{20} \\ (A^{-1})_{2,1}=\frac{1}{10} & (A^{-1})_{1,20}=\frac{-9}{10} & (A^{-1})_{2,3}=\frac{-7}{40}\\ (A^{-1})_{3,1}=\frac{1}{10} & (A^{-1})_{3,2}=\frac{9}{20} & (A^{-1})_{3,3}=\frac{3}{20}\end{matrix} \right\} A^{-1}=\begin{pmatrix}\frac{1}{5} & \frac{-9}{10} & \frac{7}{20}\\ \frac{1}{10} & \frac{-9}{10} & \frac{-7}{40}\\ \frac{1}{10} & \frac{9}{20} & \frac{3}{20}\end{pmatrix}$ 
	Infatti se si fa $\begin{pmatrix}3 & 9 & 7\\ 1 & 2 & 0\\ 2 & 0 & 4\end{pmatrix} \cdot \begin{pmatrix}\frac{1}{5} & \frac{-9}{10} & \frac{7}{20}\\ \frac{1}{10} & \frac{-9}{10} & \frac{-7}{40}\\ \frac{1}{10} & \frac{9}{20} & \frac{3}{20}\end{pmatrix}=\begin{pmatrix}1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1\end{pmatrix}= I_m$ 

>[!def] **Definizione di Matrice Unipotente** 
È una matrice con tutti uno nella diagonale principale $$A=\begin{pmatrix}1 & ... & *\\ & \ddots & \vdots \\ 0 & & 1\end{pmatrix}$$ 

*Analizziamo un caso particolare*:
	$A=\begin{pmatrix}1 & ... & *\\ & \ddots & \vdots \\ 0 & & 1\end{pmatrix}$ è una matrice Unipotente, ossia ha tutti 1 sulla diagonale principale. Questa può essere scritta come $I_m+X$ dove $X$ è la matrice $A$ con tutti $0$ al posto degli $1$ nella diagonale superiore.
	Per esempio sia la matrice $A'\begin{pmatrix}1 & 2 & 3\\ 0 & 1 & 4\\ 0 & 0 & 1\end{pmatrix}= I_m\begin{pmatrix}1 & 0 & 0\\ 0 & 1 & 0 \\ 0 & 0 &1\end{pmatrix}+ X'\begin{pmatrix}0 & 2 & 3\\ 0 & 0 & 4\\ 0 & 0 & 0\end{pmatrix}$  
	Quanto vale $X^n$? $$\begin{pmatrix}0 & 2 & 3\\ 0 & 0 & 4\\ 0 & 0 & 0\end{pmatrix}\begin{pmatrix}0 & 2 & 3\\ 0 & 0 & 4\\ 0 & 0 & 0\end{pmatrix}\begin{pmatrix}0 & 2 & 3\\ 0 & 0 & 4\\ 0 & 0 & 0\end{pmatrix}=\begin{pmatrix}0 & 0 & 8\\ 0 & 0 & 0\\ 0 & 0 & 0\end{pmatrix}\begin{pmatrix}0 & 2 & 3\\ 0 & 0 & 4\\ 0 & 0 & 0\end{pmatrix}=\begin{pmatrix}0 & 0 & 0\\ 0 & 0 & 0\\ 0 & 0 & 0\end{pmatrix}$$Quindi $X^n=0$ 
	Si sa però che vale $(1+x)(1-x+x^2-x^3+...x^{n-1})=(1-x^n)\Rightarrow (\underbrace{I_m+X}_{A})(\underbrace{I_m-X+X^2-...X^{n-1}}_{A^{-1}})=I_m$. 
	Quindi nel nostro caso $\begin{pmatrix}1 & 0 & 0\\ 0 & 1 & 0 \\ 0 & 0 &1\end{pmatrix}-\begin{pmatrix}0 & 2 & 3\\ 0 & 0 & 4\\ 0 & 0 & 0\end{pmatrix}+\begin{pmatrix}0 & 0 & 8\\ 0 & 0 & 0\\ 0 & 0 & 0\end{pmatrix}=\begin{pmatrix}1 & -2 & 5\\ 0 & 1 & -4\\ 0 & 0 & 1\end{pmatrix}$ 

***

## Endomorfismi nel Dettaglio

**Studio approfondito degli Endomorfismi**
Siano $f \in End(V)$, $\mathscr{B}$ e $\mathscr{B}'$ basi di $V$. $M_{\mathscr{B}}(f)$ e $M_{\mathscr{B}'}(f)$ sono matrici simili, in quanto $$M_{\mathscr{B}}(f)=M^{\mathscr{B}}_{\mathscr{B}'}(id)\cdot M_{\mathscr{B}'}(f)\cdot M^{\mathscr{B}'}_{\mathscr{B}}(id)$$dove $M^{\mathscr{B}}_{\mathscr{B}'}$ e $M^{\mathscr{B}'}_{\mathscr{B}}$ sono una l'inversa dell'altra.
Le questioni fondamentali sono 2:
1. Data $f$ devo trovare $\mathscr{B}$ in modo che $M_\mathscr{B}(f)$ sia la più "semplice possibile"
2. Date $A$ e $B\in M_n(\mathbb{K})$, devo stabilire se $A$ e $B$ sono simili.

>[!def] **Definizione di Autovettore e Autovalore**
Quindi sia $v \in V, v≠0$ e $f(v)=\alpha v$. Un vettore $v≠0$ si dice "Autovettore" di $f$ se $\exists \lambda \in \mathbb{K}$ (Chiamato Autovalore) tale che $f(v)=\lambda v$. Se $A\in M_n(\mathbb{K}), x\in \mathbb{K}^n, x≠0$ si dice che è Autovettore di $A$ se $\exists \lambda \in \mathbb{K}$ tale che $Ax=\lambda x$, quindi $x$  è autovettore di $L_A$   ^18affd

Si richiede che $v≠0$ perché sennò l'affermazione sarebbe banale

**Esempio**:
	$\begin{pmatrix}0 & -1\\ 1 & 0\end{pmatrix}$ è una matrice di una rotazione, quindi non ha autovettori.

*Domanda*: Chi sono gli autovettori di autovalore $0$? 
	Sono tutti i vettori non nulli di $Ker(f)$

*Domanda*: Chi sono gli autovettori di autovalore $\lambda_0$?
	Sono tutti i vettori non nulli di $Ker(f-\lambda_0 id)$ 

*Domanda*: Se esiste una base $\mathscr{B}=\{v_1,...,v_n\}$ in cui ogni $v_i$ è autovettore (di autovalore $\lambda_i$) chi è $M_\mathscr{B}(f)$?
	Visto che $f(v_1)=\lambda_1v_1,...,f(v_n)=\lambda_nv_n$ la matrice sarà $M_\mathscr{B}(f)=\begin{pmatrix}\lambda_1 &  & 0\\ & \ddots & \\ 0 & & \lambda_n \end{pmatrix}$  

>[!def] **Definizione di Diagonalizzabilità** 
Sia $f\in End(V)$. Si dice che è diagonalizzabile se esiste $\mathscr{B}$ di $V$ tale che è composta di autovettori. Analogamente una matrice si dice diagonalizzabile se esiste $\mathscr{B}$ di $V$ tale che è composta di autovettori. $f$ è diagonalizzabile $\Leftrightarrow \exists \mathscr{B}$ tale che $M_\mathscr{B}(f)$ è diagonale. $A\in M_n(\mathbb{K})$ è diagonalizzabile $\Leftrightarrow$ è simile ad una matrice triangolare. 

*Domanda*: Dove devo cercare gli Autovalori?

Come faccio a sapere se $0$ è autovalore di $f$? (cioè se $\exists v≠0$ autovettore di autovalore $0$?)
$0$ è autovalore di $f\Leftrightarrow Ker(f)≠\{0\}\Leftrightarrow det(f)=0$ 

Analogamente come faccio a sapere se $\lambda_0\in \mathbb{K}$ è autovalore di $f$?
$\lambda_0$ è autovalore di $f\Leftrightarrow Ker(f-\lambda_0I_m)≠\{0\}\Leftrightarrow det(f-\lambda_0I_m)=0$ 

>[!def] **Definizione di Polinomio Caratteristico** 
Sia $A\in M_n(\mathbb{K})$. Definiamo $p_A(x)=det(A-xI_m)$ il polinomio caratteristico di $A$ ^6d914a

**Osservazione**: Se $A$ e $B$ sono simili, allora $p_A(x)=p_B(x)$, matrici simili hanno lo stesso polinomio caratteristico.
***Dimostrazione***:
	$B=HAH^{-1}\rightarrow p_B(x)=det(HAH^{-1}-xI_m)$ ma $I_m=HH^{-1}$ quindi si può raccogliere $\Rightarrow det(H(A-xI_m)H^{-1})=$$=det(H)\cdot det(A-xI_m)\cdot det(H^{-1})=det(A-I_m)=p_A(x)$ 

Dove si trovano gli autovalori? Nella radice del polinomio

**Esempio**:
	$A=\begin{pmatrix}0 & -1 \\ 1 & 0\end{pmatrix}\Rightarrow p_A(x)=det\left(\begin{pmatrix}0 & -1 \\ 1 & 0\end{pmatrix} -x \begin{pmatrix}1 & 0 \\ 0 & 1\end{pmatrix}\right)=det\begin{pmatrix}x & -1 \\ 1 & x\end{pmatrix}=x^2+1$ che non ha soluzioni in $\mathbb{R}$ 
	$B=\begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix}\Rightarrow p_A(x)=det\left(\begin{pmatrix}2 & 0 \\ 0 & 3\end{pmatrix} -x \begin{pmatrix}1 & 0 \\ 0 & 1\end{pmatrix}\right)=det\begin{pmatrix}2-x & 0 \\ 0 & 3-x\end{pmatrix}=(2-x)(3-x)$ 
	$C=\begin{pmatrix}2 & 1 \\ 0 & 3\end{pmatrix}\Rightarrow p_A(x)=det\left(\begin{pmatrix}2 & 1 \\ 0 & 3\end{pmatrix} -x \begin{pmatrix}1 & 0 \\ 0 & 1\end{pmatrix}\right)=det\begin{pmatrix}2-x & 1 \\ 0 & 3-x\end{pmatrix}=(2-x)(3-x)$ 

**Osservazione**: In generale se $A$ è triangolare, allora $p_A(x)=(a_{1,1}-x)\cdot(a_{2,2}-x)\cdot...\cdot(a_{n,n}-x)$ 

>[!def] **Definizione di Autospazio Relativo all'Autovalore $\lambda$** 
Sia $\lambda$ autovalore di $f$. Si chiama Autospazio Relativo all'Autovalore $\lambda$ l'insieme $V_\lambda=\{v \in V \; | \; f(v)=\lambda v\}\ni 0$ 

**Osservazione**: $f(v)=\lambda v \Leftrightarrow f(v)-\lambda v=0 \Leftrightarrow (f - \lambda id)(v)=0$. Quindi $V_\lambda = Ker(f-\lambda id)\Rightarrow V_\lambda$ è sottospazio vettoriale di $V$ 

**Attenzione**: L'insieme degli Autovettori non contiene $0$, invece $V_\lambda$ si (in quanto per poter essere un sottospazio richiede l'esistenza di $0$)

**Osservazione**: $V_\lambda$ è sottospazio di $V$ generato dagli autovettori relativi a $\lambda$, inoltre $dim(V_\lambda)$ è strettamente positiva, in quanto se esiste un autovalore, esiste necessariamente almeno un autovettore.

>[!def] **Definizione di Molteplicità Geometrica**
Sia $\lambda$ autovalore di $f \in End(V)$. Si dice *Molteplicità Geometrica* di $\lambda$ la dimensione dell'autospazio $V_\lambda$. 

Sia $f:V\rightarrow V$. Fissiamo una base $\mathscr{B}$ di $V$ e indichiamo con $F=M_{\mathscr{B}_V}(f)$. $\lambda$ è autovalore di $f$ se esiste $v\in V, v≠0$ tale che $f(v)=\lambda v \Leftrightarrow$ se $v=\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}$ allora $F\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}=\lambda \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}\Leftrightarrow (F-\lambda I_m)\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix} = \begin{pmatrix}0\\ \vdots \\ 0\end{pmatrix} \Rightarrow \underbrace{\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}}_{≠0}\in Ker(F-\lambda I_m)$, Quindi il nucleo non è banale, di conseguenza la funzione non è iniettiva, quindi $det(F-\lambda I_m)=0$ (cioè la matrice non è invertibile)
Ma $det(F-\lambda I_m)$ rappresenta un polinomio con variabile $\lambda$, chiamato polinomio caratteristico di $F$ o equivalentemente di $f$ in quanto matrici simili descrivono lo stesso endomorfismo.
Indichiamo $F=(a_{i,j})$, quindi $det(F-\lambda I_m)=det\begin{pmatrix}a_{1,1}-\lambda & a_{1,2} & ... & a_{1,n}\\ a_{2,1} & a_{2,2}-\lambda & & \vdots \\ \vdots & & \ddots & \vdots \\ a_{n,1} & ... & ... & a_{n,n}-\lambda \end{pmatrix}$ 
Sapendo che la formula del determinante è $\displaystyle{\sum_{\sigma \in \mathfrak{S}_n}{sgn(\sigma)}\; b_{\sigma(1),1}\cdot... \cdot b_{\sigma(n),n}}$ si ha che sulla diagonale principale, ossia dove non ci sono permutazioni si ottiene: $(a_{1,1}-\lambda)\cdot ... \cdot (a_{n,n}-\lambda)$ che rappresenta un polinomio di grado $n$, mentre tutto il resto da al massimo un polinomio di grado $n-2$ *Se c'è una permutazione, allora necessariamente minimo due elementi non devono stare sulla diagonale principale*

**Esempio**:
	sia $n=4$, il polinomi dato dalla sua diagonale principale sarà data $(a_{1,1}-\lambda)(a_{2,2}-\lambda)(a_{3,3}-\lambda)(a_{4,4}-\lambda)$ ha grado 4 mentre $a_{2,1}a_{1,2}(a_{3,3}-\lambda)(a_{4,4}-\lambda)$ ha grado $2$ 

Quindi il polinomio effettivo del determinante sarà $(-1)^n\lambda^n + (-1)^{n-1}(a_{1,1}+...+a_{n,n})\lambda^{n-1}+ \displaystyle{\sum}\{\text{Polinomi di grado }n-2\}$ 
Ma il termine noto? Lo si ottiene sostituendo $\lambda = 0\Rightarrow det(F)$ 

>[!def] **Definizione di Traccia di una Matrice** 
Data $A=(a_{i,j})\in M_n(\mathbb{K})$, si dice Traccia di $A$ e si indica con $tr(A)$ la somma dei suoi elementi diagonali $$tr(A)=\sum^n_{i=1}a_{i,i}$$

**Osservazione**: Utilizzando la definizione di Determinante abbiamo dimostrato i seguenti fatti:
1. Se $f \in M_n(\mathbb{K})$, il suo polinomio caratteristico $p_F(\lambda)=det(F-\lambda I_m)$ è un polinomio a variabile $\lambda$ di grado $n$ 
2. Il coefficiente del termine di grado massimo è $\pm 1$
3. Il coefficiente del termine di grado $n-1$ è $(-1)^n\cdot tr(F)$ 
4. Il termine nullo è $det(F)$

**Esempio**:
	$F=\begin{pmatrix}1 & 2 \\ -1 & 0\end{pmatrix}\Rightarrow det(F)=2$ e $tr(F)=1\Rightarrow p_F=\lambda^2-\lambda+2$ 

**Osservazione**: Poiché il polinomio caratteristico è invariante per similitudine, la traccia e il determinante sono invarianti per similitudine.
Abbiamo visto che $\lambda_0$ è autovalore di $f\Leftrightarrow$ è radice del suo polinomio caratteristico.

>[!def] **Definizione di Molteplicità Algebrica**
Si chiama Molteplicità Algebrica dell'autovettore $\lambda_0$ la sua molteplicità come radice del polinomio caratteristico, ossia se $k$ è la molteplicità di $\lambda_0\Rightarrow (\lambda_0-\lambda)^k$ divide il polinomio caratteristico, mentre $(\lambda_0-\lambda)^{k-1}$ no.

**Esempio**:
	$p_F(\lambda)=(\lambda_1)^2(-\lambda-3)$ le radici sono $1$, con molteplicità 2, e $-3$ con molteplicità 1.

**Esempio**:
	$A=\begin{pmatrix}1 & 1 & 1\\ 1 & 1 & 1\\1 & 1 & 1\end{pmatrix}$. Determinare autovalori, autovettori, molteplicità geometrica e algebrica degli autovalori
	$det(A)=0\Rightarrow 0$ è autovalore di $A$. 
	Inoltre $dim(\underbrace{V_0}_{Ker(A-0I_m)})= 3_{\text{Numero delle colonne}}- rg(A)=3-1 = 2$   
	$p_A(\lambda)=det(A-\lambda I_m)=det\begin{pmatrix}1-\lambda & 1 & 1\\ 1 & 1-\lambda & 1 \\ 1 & 1 & 1-\lambda\end{pmatrix}\xlongequal{\text{Laplace}}(1-\lambda)((1-\lambda)^2-1)-(1-\lambda-1)+1-1+\lambda=$$=(1-\lambda)(\lambda^2-2\lambda+1-1)+2\lambda=\lambda^2-2\lambda-3\lambda^3+2\lambda^2+2\lambda=-\lambda^3+3\lambda=\lambda^2(3-\lambda)$  
	Quindi $p_A(\lambda)$ ha grado 3
	*Se dovessi calcolare il polinomio caratteristico in una matrice ridotta otterrei tutt'altro risultato*
	- Se $Char(\mathbb{K})=3$ 
		$p_A(\lambda)=-\lambda^3=0\Leftrightarrow \lambda=0$ con molteplicità algebrica = 3
		Tuttavia si ottiene che la molteplicità geometrica di $0$ è 2 (guarda sopra)
		Quindi $\nexists$ base di $\mathbb{K}^3$ costituito da autovettori $\Leftrightarrow$ $A$ non è diagonalizzabile.
		Infatti $V_0=Ker(A)=\left\{\left. \begin{pmatrix}x\\ y\\ z\end{pmatrix} \in \mathbb{K}^3 \ \right| \; x+y+z=0\right\}\Rightarrow \mathscr{B}=\left\{\begin{pmatrix}1\\ -1\\ 0\end{pmatrix}, \begin{pmatrix}0\\ 1\\ -1\end{pmatrix}\right\}$ 
	- Se $Char(\mathbb{K})≠3$ 
		$\lambda_1=0$ con molteplicità algebrica = 2 e $\lambda_2=3$ con molteplicità algebrica = 1
		Si osserva che gli autovettori $\begin{pmatrix}1\\ -1\\ 0\end{pmatrix}, \begin{pmatrix}0\\ 1\\ -1\end{pmatrix}$ relativi a $0$, e $\begin{pmatrix}1\\1\\1\end{pmatrix}$ relativo a $3$ sono linearmente indipendenti.
		Quindi $\mathscr{B}\left\{\begin{pmatrix}1\\ -1\\ 0\end{pmatrix}, \begin{pmatrix}0\\ 1\\ -1\end{pmatrix},\begin{pmatrix}1\\ 1\\ 1\end{pmatrix}\right\}$ è una base di Autovettori.
		Quindi $A$ è diagonalizzabile e la matrice è $M_\mathscr{B}(L_A)=\begin{pmatrix}\boldsymbol{0} & 0 & 0\\ 0 & \boldsymbol{0} & 0\\ 0 & 0 & \boldsymbol{3}\end{pmatrix}=D$ 
		*In grassetto sono gli autovalori relativi agli autovettori*
		Si ottiene che $A\sim D$, cioè $\exists H$ tale che $HAH^{-1}=D$ dove $H$ è la matrice di cambiamento di base da base di autovettori a base canonica che ha sulle colonne i vettori delle basi di $D$: $$H=M^\mathscr{B}_{Can}(id_{\mathbb{K}^3})=\begin{pmatrix}1 & 0 &1\\ -1 & 1 & 1\\ 0 & -1 & 1\end{pmatrix}$$Inoltre $H$ non è unica, infatti se permuto i vettori ottengo un'altra matrice.

**Osservazione**: Combinando linearmente autovettori relativi ad autovalori diversi non si ottiene un autovalore:

**Esempio**:
	se $f(v_1)=2v_1$ e $f(v_2)=v_2$, ma $f(v_1+v_2)=2v_1+v_2≠\lambda(v_1+v_2)$ 

**Osservazione**: Ogni proiezione su uno spazio vettoriale è diagonalizzabile: $P^2=P$$$\begin{matrix}V & = & Ker(P) & \oplus & Im(P) && \forall v \in Im(P)\\ && || && || \\ && V_0 & \oplus & V_1 && P(v)=v\end{matrix}$$
**Proposizione**: Sia $f\in End(V)$ e sia $\lambda_0$ un autovalore di $f$, allora la molteplicità algebrica di $\lambda_0$ è maggiore della sua molteplicità geometrica o è uguale ad essa.
***Dimostrazione***:
	Sia $k$ la dimensione dell'Autospazio $V_{\lambda_0}$ ($k$= molteplicità geometrica di $\lambda_0$). Sia $\{v_1,...,v_k\}$ una base di $V_{\lambda_0}$ e la completo in una base $\mathscr{B}_V$ di $V=\{v_1,...,v_k,v_{k+1},...,v_n\}$, quindi la matrice associata risulterà:$$M_{\mathscr{B}_V}(f)=\begin{pmatrix}\begin{matrix}\lambda_0 & & 0\\ & \ddots &\\ 0 && \lambda_0\end{matrix} & \boldsymbol{B}\\ \boldsymbol{0} & \boldsymbol{C}\end{pmatrix}$$Quindi il suo polinomio caratteristico sarà: $p_f(\lambda)=det(M_{\mathscr{B}_V}-\lambda I_m)=det\begin{pmatrix}\begin{matrix}\lambda_0-\lambda & & 0\\ & \ddots &\\ 0 && \lambda_0-\lambda\end{matrix} & \boldsymbol{B}\\ \boldsymbol{0} & \boldsymbol{C-\lambda I_m}\end{pmatrix}$ 
	Ossia $(\lambda_0-\lambda)^k\cdot p_C(\lambda)$, in quanto il determinante di una matrice a blocchi è il prodotto dei determinante dei blocchi sulla diagonale.
	Quindi si ha che $(\lambda_0-\lambda)$ divide $p_f(\lambda)\Rightarrow$ la molteplicità algebrica è almeno $k$, ed è esattamente $k$ se $(\lambda_0-\lambda)\nmid p_C(\lambda)$ 

A questo punto si apre un un grandissimo problema (che va avanti da metà corso): 
*Come si stabilisce se due matrici simili?*
Ma la domanda può essere ridotta a:
*Come si stabilisce se una matrice/funzione è diagonalizzabile, cioè se è simile ad una matrice diagonalizzabile?*

**Osservazione**: Date $A$ e $B\in M_n(\mathbb{K})$, se $A$ è diagonalizzabile e $B$ non lo è, allora $A$ e $B$ non possono essere simil

Se ho $A,B\in M_n(\mathbb{K})$ diagonalizzabili, allora $A$ e $B$ sono simili se e solo se hanno lo stesso gli stessi autovalori con le stesse molteplicità

**Osservazione**: Se $A$ e $B$ sono simili, hanno lo stesso polinomio caratteristico, quindi gli stessi autovalori con la stessa molteplicità algebrica.

Notiamo che anche la molteplicità geometrica di ogni autovettore è invariante per similitudine.
	Infatti: Supponiamo che $\lambda_0$ sia un autovettore di $A$ e di $B$, allora la molteplicità algebrica di $\lambda_0$ per $A$ e le dimensioni di $V_\lambda^A=Ker(A-\lambda_0 I_m)=n-rg(A-\lambda_0 I_m)$ e la stessa cosa vale per $B$, ossia $V_\lambda^B=n-rg(B-\lambda_0 I_m)$. Inoltre se $B=H^{-1}AH\Rightarrow B-\lambda_0 I_m=H^{-1}(A-\lambda_0I_m)H$ 

**Osservazione**: Il fatto che due matrici $A,B \in M_n(\mathbb{K})$ abbiano lo stesso polinomio caratteristico e autovalori con la stessa molteplicità algebrica e geometrie è una condizione necessaria ma non sufficiente per constatare se due matrici sono simili o meno.

**Controesempio**:
	Siano $A=\begin{pmatrix}0 & 1 & 0 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 1\\ 0 & 0 & 0 & 0\end{pmatrix}$ e $B=\begin{pmatrix}0 & 1 & 0 & 0\\ 0 & 0 & 1 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\end{pmatrix}$ due matrici Nilpotenti, triangolari superiori.
	Per calcolare facilmente il loro determinante è sufficiente calcolare $\displaystyle{\prod_{i=1}^n (a_{i,i}-\lambda)}$, quindi $p_A(\lambda)=\lambda^4=p_B(\lambda)$ 
	Questo significa che $\lambda$ è autovalore di $A$ e di $B$ di molteplicità algebrica.
	Inoltre hanno anche la stessa molteplicità geometrica, in quanto $dim V_\lambda^A=dim V_\lambda^B=4-rg(A-0I_m)=4-rg(B-0I_m)=2$ 
	Tuttavia non sono simili in quanto: $A^2=\begin{pmatrix}0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\end{pmatrix}$ e $B^2=\begin{pmatrix}0 & 0 & 1 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\end{pmatrix}$ 
	Infatti se due matrici sono simili, allora sono simili anche le loro potenze.
	Ma non solo, le potenze sono simili rispetto alla stessa matrice: $B^k=(H^{-1}AH)^k=H^{-1}AH\cdot...\cdot H^{-1}AH=H^{-1}A^kH$ 

Notiamo quindi che se $v$ è autovettore per $f$ relativo all'autovalore $\lambda$,cioè $f(v)=\lambda v\Rightarrow f^k(v)=\lambda^k v$  
Coerentemente se $A$ è diagonalizzabile, cioè $H^{-1}AH=D=\begin{pmatrix}\lambda_1 & & 0\\ & \ddots \\ 0 & & \lambda_n\end{pmatrix}\Rightarrow H^{-1}A^kH=D^k=\begin{pmatrix}\lambda_1^k & & 0\\ & \ddots \\ 0 & & \lambda_n^k\end{pmatrix}$ 

Leggiamo $A$ dell'esempio precedente come la matrice di un endomorfismo $f$ di uno spazio vettoriale con $dim(V)=4$ rispetto ad una base $\{v_1,v_2,v_3,v_4\}$.
Si ha che $f(v_1)=0, \; f(v_2)=v_1, \; f(v_3)=0, \; f(v_4)=v_3$ 
Si ottiene quindi che $W_1=Span\{v_1,v_2\}, W_2=\{v_3,v_4\}$ sono sottospazi $f$-invarianti.
La matrice infatti può essere vista come una matrice a blocchi $\begin{pmatrix}\begin{matrix}0 & 1\\ 0 & 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}0 & 1\\ 0 & 0\end{matrix}\end{pmatrix}$, quindi $W_1\oplus W_2= A$ 
Leggiamo $B$ dell'esempio precedente come la matrice di un endomorfismo $g$ in $V$ di dimensione 4 rispetto ad una base $\{w_1,w_2,w_3,w_4\}$ 
Si ha che $g(w_1)=0, \; g(w_2)=w_1, \; g(w_3)=w_2, \; g(w_4)=0$ 
Quindi $\{w_1,w_2,w_3\}$ è un sottospazio $g$ invariante

**Corollario**: Se $\lambda_0$ è autovettore di $f$ con molteplicità algebrica 1, allora la molteplicità geometrica è necessariamente 1, in quanto $1≤dim(V_{\lambda_0})≤\text{Molteplicità Algebrica}(\lambda_0)=1$ 

**Proposizione**: La Somma $f \in End(V)$ di autospazi relativi ad autovalori diversi è Diretta
***Dimostrazione***:
	Cominciamo con il caso di 2 autovalori $\lambda_1≠\lambda_2$. Voglio dimostrare che $V_{\lambda_1}\cap V_{\lambda_2}=\{0\}$ 
	Sia $v\in V_{\lambda_{1}}\cap V_{\lambda_2}\Leftrightarrow \begin{matrix}\nearrow & v \in V_{\lambda_1}v\Rightarrow f(v)=\lambda_1 & \searrow \\ \searrow & v \in V_{\lambda_2} \Rightarrow f(v)=\lambda_2 v & \nearrow\end{matrix}\lambda_1v=\lambda_2v\Rightarrow (\lambda_1-\lambda_2)(v)=0\xRightarrow{\lambda_1≠\lambda_2}v=0$ 
	Abbiamo così dimostrato che Autovettori relativi a 2 Autovalori diversi sono linearmente indipendenti.
	Per induzione voglio estendere la dimostrazione ad un qualsiasi numero.
	Assumiamo vera l'ipotesi che per $k$ autovalori distinti $\lambda_1,...,\lambda_k$, ossia che $V_{\lambda{k+1}}\cap (V_{\lambda_1} \oplus ... \oplus V_{\lambda_k})$ è banale.
	Se $v \in V_{\lambda{k+1}}\cap (V_{\lambda_1} \oplus ... \oplus V_{\lambda_k})\Rightarrow \begin{matrix}\nearrow & v \in V_{\lambda_{k+1}}\Rightarrow f(v)=\lambda_{k+1}v = \lambda_{k+1}(v_1+...+v_k) & \searrow \\ \searrow &v \in V_{\lambda_1}\oplus ... \oplus V_{\lambda_k}\Rightarrow f(v)=\lambda_1v_1+...+\lambda_kv_k & \nearrow\end{matrix}\Rightarrow$$\Rightarrow \lambda_{k+1}(v_1+...+v_k)=\lambda_1v_1+...+\lambda_kv_k\Rightarrow \lambda_{k+1}v_1+...+\lambda_{k+1}v_k=\lambda_1v_1+...+\lambda_kv_k\Rightarrow \underbrace{(\lambda_{k+1}-\lambda_1)}_{≠0}v_1+...+\underbrace{(\lambda{k+1}-\lambda_k)}_{≠0}v_k=0\Rightarrow$$v_1+...+v_n=0\Rightarrow v=0$ 

**Osservazione Preliminare**: Sia $f\in End(V)$, si dice che $f$ è diagonalizzabile se esiste una base di $V$ costituita solamamente da autovettori $\Leftrightarrow V=V_{\lambda_1}\oplus... \oplus V_{\lambda_{k}}$, cioè $V$ si spezza nella somma di Autospai.

>[!th] *Teorema* 
Se $f\in End(V)$ dove $dim(V)=n$ e il polinomio caratteristico di $f$ ha $n$ radici, allora $f$ è diagonalizzabili.

**Esempio**:
	$f\in End(\mathbb{K}^3), p_f:(\lambda-1)(\lambda-2)(-\lambda)$ è diagonalizzabile perché ha tre autovalori distinti con moleplicità algebrica = 1, quindi ho tre Autospazi di dimensione 1, quindi $V$ è riempito da questi 3

***Dimostrazione***:
	Siano $\lambda_1,...,\lambda_n$ gli autovalori di $f$, allora ognuno di essi ha molteplicità algebrica e geometrica =1 e $V=V_{\lambda_1}\oplus ... \oplus V_{\lambda_n}$ 

>[!th] **Teorema sulla Diagonalizzabilità**
Sia $A\in M_n(\mathbb{K})$. Allora $A$ è diagonalizzabile se e solo se valgono le seguenti due condizioni:
>1. $A$ ha $n$ autovalori (contati con le loro molteplicità). 
>	*Il che equivale a dire: Il polinomio caratteristico di $A$ è fattorizzabile in $\mathbb{K}[x]$ in polinomi di primo grado (completamente fattorizzabile) $p_A(\lambda)=(\lambda_1-\lambda)^{k_1}\cdot ... \cdot (\lambda_r-\lambda)^{k_r}$ con $k_1+...+k_r=n$* 
>2. La molteplicità algebrica e geometrica di ogni autovalore coincide

***Dimostrazione***:
	$\Rightarrow$) Supponiamo che $A$ sia diagonalizzabile, cioè è simile ad una matrice diagonale $D\Rightarrow \exists H \in GL_n(\mathbb{K})$ tale che$$H^{-1}AH=D=\begin{pmatrix}\left.\begin{matrix}\lambda_1 & ... & 0\\ \vdots & \ddots & \vdots \\ 0 &... & \lambda_1\end{matrix}\right\}k_1 & \boldsymbol{0} & ... & \boldsymbol{0}\\\boldsymbol{0} & \left.\begin{matrix}\lambda_2 & ... & 0\\ \vdots & \ddots & \vdots \\ 0 &... & \lambda_2\end{matrix}\right\}k_2 & ... & 0\\ \vdots & \vdots & \ddots & \vdots\\ \boldsymbol{0} & \boldsymbol{0} & ... & \left.\begin{matrix}\lambda_r & ... & 0\\ \vdots & \ddots & \vdots \\ 0 &... & \lambda_r\end{matrix}\right\}k_r\end{pmatrix}\Rightarrow p_A(\lambda)=p_D(\lambda)=(\lambda_1-\lambda)^{k_1}\cdot ... \cdot (\lambda_r-\lambda)^{k_r}$$con $k_1+...+k_r=n$ con $k_i$ la moltiplicità algebrica di $\lambda_i$ e $\lambda_1≠\lambda_2≠...≠\lambda_r$, quindi vale la proprietà 1.
	La forma diagonale della matrice $D$ indica che l'endomofismo che stiamo studiando ha, rispetto ad una base $\mathscr{B}_V$ forma diagonale, cioè che se $\mathscr{B}_V=\{\underbrace{v_1^{(1)},...,v_1^{(k_1)}}_{\mapsto \lambda_1v_1^{(i)}},\underbrace{v_2^{(1)},...,v_2^{(k_2)}}_{\mapsto \lambda_2v_2^{(i)}},...,\underbrace{v_r^{(1)},...,v_r^{(k_r)}}_{\mapsto \lambda_rv_r^{(i)}}\}\Rightarrow dim(V_{\lambda_i})=k_i\Rightarrow$ Vale la condizione 2.
	$\Leftarrow$) Supponiamo che $A$ soddisfi le condizione 1. e 2. e leggiamo $A$ come la matrice di un endomorfismo di uno spazio vettoriale $V$ di dimensione $n$.
	Siano $\lambda_1,...,\lambda_n$ gli autovalori di $A$ con molteplicità algebrica $k_1,...,k_r$.
	Supponiamo che la somma degli Autospazi relativi ad autovalori diversi è diretta $\Rightarrow dim(V_{\lambda_1}\oplus ... \oplus V_{\lambda_r})=$$=dim(V_{\lambda_1})+ ... + dim(V_{\lambda_r})\xlongequal{2.}k_1+...+k_r\xlongequal{1.}n = dim(V)\Rightarrow V=V_{\lambda_1}\oplus ... \oplus V_{\lambda_r}\Rightarrow A$ è diagonalizzabile.
	*Inoltre una base di $V$ costituita da autovettori di $A$ si ottiene come unione delle basi dei singoli autospazi*

**Proposizione**: Date $A$ e $B\in M_n(\mathbb{K})$ diagonalizzabili, allora $A$ e $B$ sono simili se e solo se hanno lo stesso polinomio caratteristico.
***Dimostrazione***:
	$\Rightarrow$) $A,B$ (diagonalizzabili) e simili ($\Rightarrow$ sono simili alla stessa matrice diagonale) $\Rightarrow$ hanno lo stesso polinomio caratteristico. *La parte tra parentesi è trascurabile*
	$\Leftarrow$) Se $A,B$ sono diagonalizzabili con lo stesso polinomio caratteristico e $p_A(\lambda)=p_B(\lambda)\Rightarrow$ hanno gli stesso autovalori, allora $\exists H,K \in GL_n(\mathbb{K})$ tale che $H^{-1}AH=D$ e $K^{-1}BK=D\Rightarrow H^{-1}AH=K^{-1}BK\Rightarrow (H^{-1}K)A(HK^{-1})=B$ 

Quindi alla domanda *Stabilire se due matrici $A,B$ sono simili* si hanno le risposte:
- Se $A$ è diagonalizzabile e $B$ non lo è, allora non sono simili
- Se sia $A,B$ sono diagonalizzabili, sono simili se e solo se hanno lo stesso polinomio caratteristico.
- Ma se $A$ e $B$ non sono diagonalizzabili?

**Esercizio**:
	Sia $A \in M_n(\mathbb{K})$
	1. Mostrare che $A$ e $A^T$ hanno lo stesso polinomio caratteristico 
	2. Mostrare che $A$ è diagonalizzabile $\Leftrightarrow$ $A^T$ lo è

**Soluzione**:
	1) $p_A(\lambda)=det(A-\lambda I_m)$ e $p_{A^T}=det(A^T-\lambda I_m)=det((A-\lambda I_m)^T)=det(A-\lambda I_m)=p_A$, questo perché $T:\begin{matrix}M_n(\mathbb{K}) & \rightarrow & M_n(\mathbb{K})\\ A & \mapsto & A^T\end{matrix}$ è lineare.
	2) $A$ è diagonalizzabile $\Leftrightarrow$ possiede $n$ autovalori (ognuno contati con la propria molteplicità) $\lambda_1,...,\lambda_r$ con le proprie molteplicità algebriche $k_1,...,k_r$ tali che $k_1+...+k_r=n$ e $k_1=dim (V_{\lambda_1}),...,k_r=dim(V_{\lambda_r})$. Per il punto 1, $A$ ha $n$ autovalori $\Leftrightarrow$ $A^T$ ha $n$ autovalori (con stessa molteplicità geometrica) $dim(V^A_{\lambda_i})=n-rg(A-\lambda I_m)$, ma come prima $(A-\lambda I_m)^T=A^T-\lambda I_m\Rightarrow rg(A^T-\lambda I_m)=rg(A-\lambda I_m) \Rightarrow A$ e $A^T$ hanno gli stessi autovalori con le stesse molteplicità algebriche e geometriche $\Rightarrow$ $A$ soddisfa il teorema di diagonalizzabilità $\Leftrightarrow$ $A^T$ lo soddisfa.

>[!def] **Definizione di Matrice Compagna**: 
Sia $q(t)=t^n-a_1t^{n-1}-...-a_n \in \mathbb{K}[t]$ con $a_1,...,a_n \in \mathbb{K}$. Si chiama matrice compagna di $q_T$ la matrice della forma$$C=\begin{pmatrix}0 & & & a_n\\ 1 & \ddots & & \vdots\\ & \ddots& \ddots& \vdots\\ 0 & & 1 & a_1\end{pmatrix}$$

**Esercizio**:
	Il polinomio caratteristico della matrice compagna di $q(t)$ è $(-1)^n q(t)$

**Soluzione**:
	Si risolve quest'esercizio per induzione:
	$n=1\Rightarrow q(t)=t-a_1$, quindi la matrice compagna è $C=(a_1)\Rightarrow det(C-t)=a_i-t$ 
	$n>1\Rightarrow p(t)=det(c-t)\begin{pmatrix}0 & & & a_n\\ 1 & \ddots & & \vdots\\ & \ddots& \ddots& \vdots\\ 0 & & 1 & a_1\end{pmatrix}$. Faccio lo sviluppo di Laplace sulla prima riga:
	$-t\cdot det\underbrace{\begin{pmatrix}-t & & & a_n\\ 1 & \ddots & & \vdots\\ & \ddots& \ddots& \vdots\\ 0 & & 1 & a_1-t\end{pmatrix}}_{\text{Ipotesi Induttiva}}+ (-1)^{n+1}a_n=-t((-1)^{n-1}(t^{n-1}-a_1t^{n-2}-...-a_{n-1}))+(-1)^{n+1}a_n=$$=(-1)^n(t^n-a_1t^{n-1}-...-a_{n-1}t-a_n)=(-1)^nq(t)$ 1

>[!def] **Definizione di Relazione di Equivalenza tra vettori**
Sia $V$ uno spazio vettoriale su $\mathbb{K}$ e sia $W\subseteq V$. Definiamo la relazione di equivalenza $\displaystyle{\sim_W}$  in $V$ se: $v_1  \sim_W v_2 \Leftrightarrow v_1-v_2 \in W\Leftrightarrow v_1=v_2+w \in W$   ^3b7ebe

È una relazione di equivalenza?
- (R) $v_1-v_1=0_V \in W$ 
- (S) $v_1 \sim_W v_2\xRightarrow{?} v_2 \sim_W v_1$, si perché la somma è commutativa
- (T) $v_1 \sim_W v_2$ e $v_2 \sim v_3 \xRightarrow{?} v_1 \sim_W v_3$ si, $v_1-v_3=\underbrace{(v_1-v_2)}_{\in W}-\underbrace{v_2-v_3}_{\in W}\in W$ 

>[!def] **Definizione di Spazio Quoziente** 
$V/_W$ è l'insieme quoziente per la relazione di equivalenza $\sim_W$. Questo diventa uno spazio vettoriale avente $[v]$ la classe di equivalenza di vettore del gruppo $V$, la cui somma è definita come $[v_1]+[v_2]:=[v_1+v_2]$ 
Quest'operazione è ben definita, cioè se $[v_1']=[v_1]$ e $[v_2']=[v_2]\Rightarrow [v_1'+v_2']=[v_1+v_2]$ 
Sono verificati anche gli assiomi di uno spazio vettoriale (la cui verifica è ovvia)
Con questa definizione possiamo definire l'applicazione canonica $π:\begin{matrix}V & \rightarrow & V/_W \\ v & \mapsto & [v]\end{matrix}$, che è lineare. Inoltre $dim(V/_W)=dim(V)-dim(W)$, infatti, essendo $π$ suriettiva, $Im(π)=V/_W$ e $Ker(π)=W$, quindi per il teorema del Rango: $dim(V/_W)=dim(V)-dim(Ker(π))=dim(V)-dim(W)$ 
Infatti, sia $\{v_1,...,v_k\}$ base di $W$ e $\{v_1,...,v_k,v_{k+1},...,v_n\}$ base di $V$, attraverso $π$ si ottiene $\{[v_{k+1}],...,[v_n]\}$ base di $V/_W$  

**Proposizione**: $\exists \tilde{f}$ t.c. $f=\tilde{f}\circ π\Leftrightarrow W\subseteq Ker$ 
***Dimostrazione***:
	Sia $U,W\subseteq V$, e sia lo schema $\begin{matrix} V & \xrightarrow{f} & V\\ π\downarrow & \nearrow_{\tilde{f}}\\ V/_W\end{matrix}$, quale è la condizione tale che $\exists \tilde{f}$? Se $\tilde{f}$ esiste, allora $\forall w \in W, f(w)=\tilde{f}(π(w))=\tilde{f}(\overbrace{[w]}^{[0]})=0$, cioè $f(W)\subseteq 0\Rightarrow W\subseteq Ker(f)$. Se $W \subseteq Ker(f)$ posso definire $\tilde{f}[v]=f(v)$ e questo perché $[v]=[v']\Rightarrow f(v-v')=0\Rightarrow f(v)=f(v')$

Chi è $Ker(\tilde{f})$? $Ker(\tilde{f})=Ker(f)/_W$. In particolare, se $W=Ker(f)$, allora $\tilde{f}$ è iniettiva, quindi è un isomorfismo su $Im(f)$. 

**Corollario (Upgrade del Teorema del Rango)**: $V/_{Ker(f)}\simeq Im(f)$ 

**Proposizione**: Sia $f$ un endomorfismo ($\Leftrightarrow V\xrightarrow{f} V$) e sia $W\subseteq V$ un sottospazio vettoriale $f$-invariante, allora è ben definita $[f]:\; ^V/_W\rightarrow \; ^V/_W$, dato che $[f]([v]):=[f(v)]$ 
***Dimostrazione***:
	Bisogna dimostrare che $v\sim_W v'\Rightarrow [f(v)]=[f(v')]$, cioè $f(v)\sim_W f(v')$, quindi $f(v)-f(v')\in^? W$ 
	Tuttavia si sa che $W$ è $f$-invariante, quindi $f(v)-f(v')=f(\overbrace{v-v'}^{\in W})\in W$
	Sia $\{v_{k+1},...,v_n\}=\mathscr{B}_{V-W}$  e $\{v_1,...,v_k\}=\mathscr{B}_W$, da cui si ottiene che $\{[v_{k+1}],...,[v_n]\}=\mathscr{B}_{^V/_W}$ 
	Voglio calcolare $M_{\mathscr{B}_{^V/_W}}([f])$: $[f]([v_{k+1}])=[f(v_{k+1})]=[a_{1,k+1}v_1+...+a_{k,k+1}v_{k}+a_{k+1,k+1}v_{k+1}+...+a_{n,k+1}v_{n}]=$$=a_{k+1,k+1}[v_{k+1}]+...+a_{n,k+1}[v_n]$ 
	Quindi la matrice che si ottiene è della forma $M_{\mathscr{B}_{V}}(f)=\begin{pmatrix}M_{\mathscr{B}_W}(f) & *\\ 0 & M_{\mathscr{B}_{^V/_W}}([f])\end{pmatrix}$, dove $*$ rappresenta una matrice chiamata *Classe di Estensione*, che rappresenta un complemento del quoziente (non canonico)

>[!def] **Definizione di Matrice Triangolarizzabile** 
Un endomorfismo si dice triangolarizzabile se esiste una base di $V$ tale che $M$ è triangolare, analogamente una matrice quadrata si dice triangolarizzabile se è simile ad una matrice triangolare.
Inoltre se $M_\mathscr{B}(f)=\begin{pmatrix}a_{1,1} & ... & a_{1,n}\\ & \ddots & \vdots\\ 0 & & a_{n,n}\end{pmatrix}\Rightarrow p_f(\lambda)=(a_{1,1}-\lambda)\cdot... \cdot (a_{n,n}-\lambda)$  ^7007b4

**Controesempio**:
	$\begin{pmatrix}0 & 1\\ -1 & 0\end{pmatrix}$ non è triangolarizzabile in $\mathbb{R}$, infatti $p(\lambda)=\lambda^2+1$ 
	*Il polinomio caratteristico deve avere tutte le radici nel campo*

>[!th] Teorema
$f\in End(V)$ è triangolarizzabile se tutte le radici di $p_f(\lambda)$ sono in $\mathbb{K}$

***Dimostrazione***:
	Abbiamo osservato che è una condizione necessaria.
	Per la sufficienza si fa per induzione sulla dimensione di $V$
	- $dim(V)=1$, non c'è nulla da dimostrare, quindi è vera
	- Supponiamo sia vera per $dim(V)=n-1$ e sia $\lambda_1$ radice di $p_f(\lambda)$ che esiste per Ipotesi. Quindi $\exists v_1≠0$ tale che $f(v_1)=\lambda_1v_1$. Osserviamo che $Span\{v_1\}$ è $f$ invariante, quindi è ben definito $[f]: \; ^V/_{Span\{v_1\}}\rightarrow \; ^V/_{Span\{v_1\}}$. Si ha che $\displaystyle{p_{[f]}(\lambda)=\frac{p_f(\lambda)}{\lambda_1-\lambda}}$, quindi $p_{[f]}(\lambda)$ verifica ancora le ipotesi. Quindi per induzione $[f]$ è triangolarizzabile. Sia $[v_2],...,[v_n]$ una base di $^V/_{Span\{v_1\}}$ rispetto alla quale $M_\mathscr{B}(f)$ è triangolare $\Rightarrow$ se $\mathscr{B}=\{v_1,v_2,...,v_n\}\Rightarrow M_\mathscr{B}(f)$ è triangolare

## Collegamenti
Geometria 1A - Canta [[Geometria 1A - Cantarini]]
Geometria 1A - Miglio [[Geometria 1A - Migliorini]]
Geometria 1A - PDF [[Geometria 1A.pdf|Geometria 1A]]
Programma [[Programma in linea di massima.pdf]]
Mappa Geometria 1A [[Geometria 1A mappa.pdf]]
Manetti [[algebralineare.pdf]]
Foglio di Meazzini [[Foglio di Meazzini.pdf]]
Geometria 1 [[Geometria 1.pdf]]
Ripasso [[Ripasso.pdf]]

