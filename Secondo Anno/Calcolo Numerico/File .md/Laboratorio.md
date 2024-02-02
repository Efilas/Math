# Matlab Base

## Lista [[Lista dei Programmi e Funzioni]]

Per aprire gli script, in alto a sinistra c'è la possibilità

Costruito apposta per matrici e vettori (fatto apposta)
Unità base è l'array:
	- 0 dimensionale = Scalare
	- 1 dim = vettore
	- 2 dim = matrici

Dimensione indica il numero di indici

![[Pasted image 20230921153112.png | {width = 100%}]]

La Cartella di lavoro sarà nella riga subito sotto il menù delle opzioni
Dove si scriverà la roba sarà sul command window

Dove c'è >> ci sarà la possibilità di mettere il comando
In basso a sinistra ci sarà la scheda delle informazioni

Nello Workspace verranno segnate le varie variabili, con le quali sarà possibile lavorare

Un'istruzione utile è l'```help``` che descrive i dettagli delle varie funzioni o altro ancora

Un esempio di ```Sum```:
![[Pasted image 20230921153112.png]]

Per la documentazione completa  c'è in alto la barra di ricerca per avere un ```help``` più completo.
Altrimenti, come tutti i programmatori che si rispettano, Google

C'è la notazione standard per le operazioni:
	- "+" per la somma
	- "-" per la sottrazione
	- "$*$" per il prodotto
	- "$/$" per la divisione
	- "$\wedge$" per l'elevamento a potenza

Per fare l'assegnazione
```m
>> x = 5;
```

A destra dell'uguale ci deve essere un valore o una variabile già creata

Per tirare fuori il valore basta scrivere la variabile

Tutti i comandi richiedono ";"

I nomi delle variabili possono essere tutto, ma ci sono delle regole:
	- Non possono essere solo numeri;
	- Non possono iniziare con gli underscore

Alcuni nomi non possono essere utilizzati, come:
	- pi = legata a $\pi$
	- i, j = legata ai numeri immaginari
	- eps = legata al valore minimo della macchina
	- realmin = massimo
	- realmax = minimo
	- Inf = Infinito
	- NaN = Numero non Esistente

Si possono sovrascrivere le variabili, chiaramente non dovrebbe essere fatto

Con il comando ```clear``` si possono o cancellare una sola variabile
```m
>> clear pi 
```
È possibile cancellare anche tutta la Workspace 
```m
>> clear
```

Con ```clc``` è possibile invece pulre tutta la Command Window

Con ```whos``` si possono ottenere le informazioni legate alle variabili (la dimensione, i byte necessari per crearli e la classe legata alla variabile)

Si possono rappresentare numeri non solo interi
```m
>> a = 0.01;
>> b = .01;
>> c = 1e-2;
```
Tutte e tre le variabili hanno il numero $\frac 1 {100}$

I numeri possono essere salvati in maniera diversa, principalmente in maniera *floating point double*
Si possono cambiare i formati di stampa per pura questione di comodità

I formati sono:
	- ```format short```
	- ```format long```
	- ```format short e```
	- ```format long e```

Tra questi prediligeremo ```format short e``` per gli errori 

Se vogliamo tenere traccia delle cose fatte, si può utilizzare il comando ```diary```

```m
diary (nome del file opzionale)

Serie di Comandi che verranno salvati

diary off
```

Comandi base molto utili:
- ```zeros(m,n)``` dove m,n sono dei numeri naturali = Crea una matrice di $0$ di dimensione $m \times n$. Se è messo un numero soltanto, allora crea una matrice quadrata 
- ```ones(m,n)``` = Crea una matrice di $1$ di dimensione $m \times n$
- ```rand(m,n)``` = Crea una matrice di componenti random tra 0 e 1 di dimensione $m \times n$
- ```randn(m,n)``` = Come sopra ma con valori totalmente casuali
- ```eye(3)``` = $I_3 \in M_3(\mathbb R)$
- Per una matrice qualsiasi ```a = [a,b,c;d,e,f]```, questa rappresenta la matrice $$\begin{pmatrix}a & b & c\\ d & e & f\end{pmatrix}$$ dove $a,b,c,d,e,f \in \mathbb R$

In generale con le parentesi quadre si crea un array, dove con "," (oppure con degli spazi) mi sposto di una colonna, mentre con ";" ci si sposta di colonna

È possibile poi andare a modificare direttamente i valori all'interno della matrice: 
```m
>> a = [1, 2, 3; 11, 12, 13];
>> a(1, 3) = 120;
```

*Al posto di 3 sto mettendo 120*

Questa scrittura può essere usata sia a destra sia a sinistra
Se scritta a sinistra è una semplice assegnazione
Se è a destra, prende il valore della matrice a quella posizione e la mette nella variabile di sinistra

È possibile anche modificare direttamente le sottomatrici:
```m
>> a = [1, 2, 3; 11, 12, 13];
>> a(1, 1:3) = zeros(1,3);
```

*Al posto della prima riga sto mettendo degli zeri*

È fondamentale che tutto abbia la stessa dimensione, se le dimensioni non sono le stesse mi da errore

Un altro utilizzo dei due punti può essere 
```m
>> a = [1, 2, 3; 11, 12, 13];
>> a(:, 2) = [22;32];
```

*In questo esempio prendo tutta la seconda colonna*

Altri utilizzi del ";":
	- ```b = 7:12``` genera un vettore di interi tra 7 e 12 (**COMPRESI**), ```b = [7, 8, 9, 10, 11, 12]```
	- ```b = 7:2:19```  genera un vettore di interi da 7 a 19 (**COMPRESI**) con passo 2, chiaramente il passo può essere anche negativo

Questo tipo di notazione può essere usato anche nelle sopra (nella modifica delle sottomatrici)

Possiamo anche modificare la matrice in sé per sé

```m
>> a = [1, 2, 3; 11, 12, 13];
>> a(:, 3) = [];
```

*Al posto della terza colonna mi mette una matrice vuota e mi trasforma la matrice da $2\times 3$* a $2 \times 2$
*La cosa è completamente diversa da metterci zero al posto di quella*

È possibile anche innestare matrici

```m
>> a = [1, 2, 3; 11, 12, 13];
>> b = [4, 5; 6, 7];
>> x = [a, b];
```

Si avrà che $$a = \begin{pmatrix}1 & 2 & 3\\ 11 & 12 & 13\end{pmatrix} \quad b = \begin{pmatrix}4& 5\\ 6& 7\end{pmatrix}\quad\Rightarrow\quad x = \begin{pmatrix}1 & 2 & 3 & 4 & 5\\ 11 & 12 & 13 & 6 &7\end{pmatrix}$$

Chiaramente anche qua le dimensioni devono essere compatibili (con $;$ la mette sotto)

Sono valide le stesse operazioni tra le matrici:
	- $+$ somma di matrici
	- $-$ sottrazione di matrici
	- $*$ moltiplicazione di matrici (devono combaciare le dimensioni)
	- $.*$ prodotto elemento per elemento nelle matrici
	- $/$ divisione tra matrici definita come $A/B = A*B^{-1}$
	- $\setminus$ divisione tra matrici definita come $A\setminus B = A^{-1}*B$
	- $\wedge$ elevamento tra matrici definita come $A^2 = A*A$
	- $.\wedge$ elevamento tra matrici elemento per elemento

Quando si fa un'operazione del tipo $A+3$ dove $A \in M_n(\mathbb R)$ e $3 \in \mathbb R$, allora $A + 3 = A+3I_n$ 
Ossia ```A + 3``` è equivalente a ```A + 3 * eyes(n)```

Esistono funzioni che data in input una matrice, mi restituisce la dimensione della matrice 
```m
>> A = [1 3 5; 11 13 15]
>> size(A)
		2     3
>> size(A,1)
		2
>> size(A,2)
		3
```
Restituisce prima la riga e poi la colonna

Se ho un vettore ```length``` mi restituisce la lunghezza del vettore

****

# Strutture Logiche
```if``` esattamente come con Python
```m
if espressione logica
	comando
elseif espressione logica
	comando
else
	comando
end
```

Chiaramente le parole chiavi saranno evidenziate in qualche modo e metterà le identatzioni in qualche modo
Alcune di queste parti possono essere omesse

Tra gli operatori ci sono:
	- $<$ minore
	- $>$ maggiore
	- $<=$ minore o uguale
	- $>=$ maggiore o uguale
	- $==$ uguale a 
	- $\sim =$ diverso da (Per ~ option - 5)

Si possono anche concatenare più condizioni logiche:
	- & se sono verificate entrame (AND)
	- | se almeno una è verificata (OR)
	- $\sim$ se non è verificata (NOT)

Se non funziona bisogna usare && al posto di & e || al posto di |

Un'altra struttura importante è quello del ```for``` che mi permette di eseguire un tot di volte dei comandi da eseguire:
```m
for i = inizio:setp:fine
	comando da esegire
end
```

Per esempio:
```m
for i = 1:n
	v(i) = 2
end
```

Questo pezzettino di codice crea un vettore di due, in maniera totalmente inefficace (infatti sarebbe meglio ```v = 2*ones(n)```)

Un altro esempio:
```m
A = [1 2 3; 22 23 24] 
[l,m] = size(A); 
for i = 1:l 
	for j = 1:m 
		A(i,j) = A(i,j)+2; 
	end 
end
```
Otterrò la matrice $\begin{pmatrix}3 & 4 &5\\ 24 & 25 & 26\end{pmatrix}$
In maniera del tutto più efficiente si poteva scrivere come ```A = A + 2*ones(size(A))```

Un'altra struttura è il ciclo ```while```, la differenza principale dal ```for``` è che non so nell'effettivo quanti cicli faccio.
La sua struttura logica è
```m
while espressione logica
	comando da eseguire
end
```

Un esempio:
```m
i=0; 
z=12; 
while i<=3 
	z=z+i;  
	i=i+1; 
end
```

Può capitare però che il ciclo ```while``` sia infinito, come in questo caso:
```m
A = [1 2 3; 22 23 24] 
[l,m] = size(A); 
while m >= 0 
	for j = 1:m 
		A(i,j) = A(i,j)+2; 
	end 
end
```

Per fare la trasposta di un qualsiasi vettore basta fare ```a'``` dove $a$ è un vettore
Possiamo calcolare anche la funzione ```norm``` che restituisce la norma del vettore (oppure ```sqrt(a'*a)```)
La vera struttura di $norm$ è ```norm(elemento, norma)``` se norma è lasciato vuoto fa la norma 2

Un altro comando importante è il ```break``` che posso utilizzare per fermare un ciclo ```for```

Un esempio:
```m
a=-10:2:12; 
n=length(a); 
for i=1:n 
	if a(i)<0 
		break; 
	end 
end 
a(i)
```
Questo pezzo di programma stamperà $-10$

È possibile memorizzare tutti i comandi che si vogliono eseguire in files con estensione $.m$ 
Esistono due tipologie di funzioni a seconda di cosa si voglia fare:


> [!multi-column]
> >[!blank]  **Colonna 1**
> > **Script**:
>> 	- Opera su dati present
>> 	- Non accetta variabili in input
>> 	- Non ha variabili in output
>> 	- Le variabili usate nello script vengono salvate nel workspace
>
> >[!blank]   **Colonna 2**
> >**Functions**:
> >	- Opera su variabili locali 
> >	- Accetta variabili in input 
> >	- Ha variabili in output 
> >	- Solo le variabili in output vengono salvate nel workspace


Per distinguere uno Script da una Function si scrive:
```m
function [output] = nome_della_function(input)
```

Importante che le variabili di input e di output siano utilizzate e menzionate, ma chiaramente posso utilizzarne anche altre
Per le funzioni è importante che assegnamo al nome del file lo stesso nome della funzione, perché Matlab va a cercare un file function all'interno della cartella.

Funzioni utili:
- ```exp(t)``` restituisce $e^t$
- ```factorial(k)``` restituisce $k !$
- ```abs(x)``` restituisce il valore assoluto di $x$
- ```semilogy(err)``` fa un plot dell'errore (Rappresentazione solo da una parte sfruttando il logaritmo (comodo per quando l'ordine di grandezza varia incredibilmente))
- ```plot(x,y)``` per stampare il grafico con $x$ alle ascisse e $y$ alle ordinate
- ```linspace(x1,x2,n)``` genera un vettore di $n$ elementi compresi tra $x_1$ e $x_2$ (come vettore riga)
- ```title``` per mettere i titoli
- ```label``` per mettere le etichette

Quando applico una funzione ad un vettore, in realtà applico quel quella funzione ad componente per componente a quel vettore, quindi si ha che 
$$x = \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix} \qquad \Rightarrow \qquad y = f(x) = \begin{pmatrix}f(x_1)\\ \vdots \\ f(x_n)\end{pmatrix}$$

Quando plottiamo una funzione con un valore soltanto, abbiamo che mette sulle ordinate l'unico valore messo e sulle ascisse l'indice del numero

Sono invece la stessa identica cosa ```plot(x = lenght(y), y)``` e ```plot(y)```

In ```plot``` possiamo mettere anche un altro valore virgolettato che va a distinguere la tipologia del grafico
Se mettiamo $-$ vengono uniti, $--$ vengono uniti tratteggiati, $k$ è per il colore nero eccetera

https://it.mathworks.com/help/matlab/creating_plots/specify-line-and-marker-appearance-in-plots.html?s_tid=mwa_osa_a per vederli tutti

Se metto più plot uno dietro l'altro, sovrascrive il primo grafico con il secondo
Per far si che ho tutti i grafici, devo usare il comando ```figure``` che mi permette di aprire un'altra finestra grafica

Con il comando ```hold on``` posso mettere tutto insieme (per poi smettere ```hold off```)
Chiaramente ci andrà un ```figure``` per cominciare una nuova finestra grafica
Con ```legend('Desc1','Desc2',...)``` posso dare una legenda (tra stringhe) ai graifici
 
È possibile anche mettere i grafici uno a fianco all'altro con il comando ```subplot(m,n,i)``` dove:
	- $m$ è il numero di colonne
	- $n$ è il numero di righe
	- $i$ indice che segue un'ordinamento naturale (da sinistra a destra e passa da riga a riga in base ai multipli di $m$)

Esiste un comando ```fplot``` che data una funzione, ne traccia il grafico compreso tra $[-5,5]$, numeri che chiaramente possono essere modificati. Per dargli la funzione basta metterci un @ (è necessaria mettere la chiocciola perché in questo modo diciamo alla macchina che è una funzione e non una variabile - se è una funzione di matlab)

Con il comando ```logspace``` posso creare una serie di numeri (100) di default e i valori che posso mettere rappresentano l'ordine di grandezza dei numeri

Un altro comando per stampare i dati è ```fprintf``` che mi permette di stampare i dati in una maniera particolare
per esempio ```fprintf('iterazione:%d', k)``` mi stampa $\text{Iterazione 5, }$ e il rispettivo valore $k$
	- $\%d$ indica un numero intero
	- $\%e$ indica il formato esponenziale
	- $\setminus n$ per andare a capo

***
<div style="page-break-after: always;"></div>

# Risoluzione di Sistemi Lineari
Facciamo prima il caso triangolare superiore
Facciamo con la sostituzione all'indietro
$$Ux = b \Rightarrow \begin{pmatrix}U_{1,1} & U_{1,2} & \cdots & U_{1,2}\\ & U_{2,2} & \cdots & U_{2,n} \\ &&\ddots & \vdots\\ &&& U_{n,n}\end{pmatrix} \begin{pmatrix}x_1\\ x_2\\ \vdots \\ x_n\end{pmatrix} = \begin{pmatrix}b_1\\ b_2\\ \vdots\\ b_n\end{pmatrix}$$
$$x_i = \frac{b_i - \sum_{j = 1}^{i+1}(U_{i,j}x_j)}{U_{i,i}}$$
**Memo**: Per fare un ciclo che va all'indietro si fa ```for k = n-1:-1:1```

L'algoritmo scritto in matlab sarà:
```m
function [x] = RisolviTriangSupCorretto(U,y)
% Risolve il sistema lineare triangolare superiore U*x = y

% prealloco x
n = length(y);
x = zeros(n,1);

% definisco ultima componente di x
x(n) = y(n)/U(n,n);

%inizio ciclo for
for k = n-1:-1:1
	x(k) = 1/U(k,k) * (y(k)-U(k,k+1:n)*x(k+1:n));
end
```

Possiamo inoltre sfruttare l'algoritmo precedente per implementare l'algoritmo di Gauss:
```m
function [x] = Gauss(A,b)

n = length(b);

for k = 1:n-1
	for i = k+1:n
		m(i) = A(i,k)/A(k,k);
		for j = k+1:n
			A(i,j) = A(i,j) - m(i)*A(k,j);
		end
		b(i) = b(i) - m(i)*b(k);
	end
end

U = triu(A);

x = RisolviTriangSupCorretto(U,b);
```

Andando nel dettaglio con i sistemi lineari $$Ax = b$$
Possiamo sfruttare la sparsità di $A$ ossia quanti zeri ha e dove sono
I casi più semplici sono quelli diagonali e triangolari
Se in generale non ho questi, posso sfruttare la $LU$

Andiamo a vedere i casi in cui $A$ è tridiagonale
Qui è vero che non è triangolare, ma gli elementi non zero sono pochi e vicino alla diagonale, quindi possiamo sorvolare la $LU$
Un'altra struttura è una matrice $\hat A$ tale che $$\hat A = A + uv^T \qquad v,u \in \mathbb R^n$$

Un utilizzo un po' particolare di ```diag```:
- ```diag(2 ones(n,1))```: Genera una matrice diagonale con due sulla diagonale principale
- ```diag(-ones(n-1,1),1)```: Ha lunghezza $-1$ sembra una matrice diagonale di grandezza $n-1\times n-1$ però con $1$ nella seconda variabile di input, mi mette la matrice nella prima diagonale sopra quella principale (ecco il motivo della matrice $n -1 \times n-1$): $$\begin{pmatrix}0 & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ &&& 0\end{pmatrix}$$Ponendo con $-1$ nella seconda variabile di input me lo metteva sotto la diagonale principale

Andiamo a scrivere la sua fattorizzazione $LU$: $$L = \begin{pmatrix}1 \\ \beta_2 & 1\\& \ddots & \ddots\\ && \beta_n & 1\end{pmatrix}\qquad U= \begin{pmatrix}\alpha_1 & c_1\\ & \alpha_2 & c_2\\ && \ddots & \ddots\\ &&&\ddots & c_{n-1}\\ &&&& a_n\end{pmatrix}$$
Abbiamo quindi che $a_1 = a_1$, $\beta_i = \frac{b_i}{\alpha_{i-1}}$ e $\alpha_i = a_i - \beta_i c_{i-1}$

Ecco il codice:
```m
function u = Thomas(A,f)

a = diag(A);
b = diag(A,-1);
c = diag(A,1);
n =length(f);

alpha = zeros(n,1);
beta = zeros(n-1,1);

alpha(1,1) = a(1,1);
for i = 1:1:n-1
	beta(i) = b(i)/alpha(i);
	alpha(i+1) = a(i+1)-beta(i)*c(i);
end

y = zeros(n,1);
y(1) = f(1);
for j = 2:1:n
	y(j) = f(j) - beta(j-1)*y(j-1);
end

u = zeros(n,1);
u(n) = y(n)/alpha(n);
for j = n-1:-1:1
	u(j) = (y(j)-c(j)*u(j+1))/alpha(j);
end
```

La formula di Sherron Morrison dice che: $$(A+wv^T)^{-1} = A^{-1} - A^{-1}w(1+v^Ta^{-1}w)^{-1} v^T A^{-1}$$
Che nel caso del sistema lineare $(A+wv^T)x = b \Rightarrow x = (A+wv^T)^{-1}b$ che è esattamente uguale a: $$\underbrace{A^{-1}b}_{z}-\underbrace{A^{-1}w}_{y}\underbrace{(1+v^T\underbrace{A^{-1}w}_w)^{-1} }_{\theta_1}\underbrace{v^T\underbrace{A^{-1}b}_{z}}_{\theta_2}$$
Per questo codice possiamo sfruttare il fatto che $A$ è la matricie tridiagonale di prima

****

# Metodi Iterativi
Vogliamo fare una successione $$(x)_k \qquad \text{tali che} \qquad x_k \rightarrow x^*$$
Vogliamo un metodo che dato un $x$ e una $A$ faccia per ogni iterazione: $$x_{k+1} = x_k  +P^{-1}r_k\qquad r_{k+1} = b-Ax_{k+1}$$ 
Vedremo due metodi
Jacobi ```P = diag(diag(A))``` e Gaus-Seidel ```P = tril(A)```

Con Jacobi, se $P$ è diagonale allora: $$\begin{pmatrix}p_1\\ & \ddots\\ && p_n\end{pmatrix} \begin{pmatrix}y_1\\ \vdots\\ y_n\end{pmatrix} = \begin{pmatrix}r_1\\ \vdots \\r_n\end{pmatrix}$$
Mi basta fare la divisione componente per componente, quindi richiede $n$ operazioni

Se invece è triangolare inferiore (con Gauss-Seidel per esempio), allora sostituzione all'indietro
Visto che sono metodi iterativi, mi serve anche una indice massimo e una tolleranza, sennò posso proseguire all'infinito