---
tag: Mate, Analisi
---
###### Somme Integrali Superiori e Inferiori
- **D** Scomposizione
- **D** Intervallo $k$-esimo di una scomposizione
- **D** Somme Integrali
- **L** Siano $f:[a,b]\rightarrow \mathbb R$ limitata e $\sigma \in \Omega_{a,b}$, allora $s(f,\sigma)$ e $S(f, \sigma)$ sono numeri reali e $\text{inf}_{[a,b]}f\cdot(b-a)≤s(f, \sigma)≤S(f,\sigma)≤\text{sup}_{a,b}f \cdot (b-a)$
- **L** Siano $f:[a,b]\rightarrow \mathbb R$ e $\sigma, \sigma' \in \Omega_{a,b}, \sigma \subset \sigma'$, allora $s(f,\sigma)≤s(f, \sigma')$ e $S(f,\sigma')≤S(f,\sigma)$
- **P** Siano $f :[a,b] \rightarrow \mathbb R$ e $\sigma,\sigma' \in \Omega_{a,b}$, allora $s(f,\sigma)≤S(f, \sigma'), \forall \sigma, \sigma' \in \Omega_{a,b}$

###### Funzioni Integrabili
- **D** Integrale Superiore e Inferiore
- **P** Sia $f:[a,b]\rightarrow \mathbb R$ limitata. Allora $\displaystyle{\text{inf}_{[a,b]}f \cdot (b-a)≤ \underline \int_a^b f(x)dx≤\overline \int^b_a f(x)dx}≤\text{sup}_{[a,b]}f\cdot(b-a)$
- **D** Funzione Integrabile
- **D** Area del Sottografico
- **P** Stima dell'Integrale Definito
- **C** Sia $f:[a,b]\rightarrow \mathbb R$. Se $f \in \mathscr R([a,b])$, allora $f≥0\Rightarrow \displaystyle{\int^b_a f(x)dx≥0}$
- **C** Le costanti sono integrabili
###### Formula Fondamentale del Calcolo Integrale
- **D** Funzione Primitiva
- **P** Formula Fondamentale del Calcolo Integrale
- **D** Notazioni delle Primitive
- **T** Teorema di Darboux
- **P** Condizione necessaria per l'esistenza di una primitiva

###### Caratterizzazione delle Funzioni Integrabili
- **T**  Teorema di Riemann - Caratterizzazione delle Funzioni Integrabili

###### Proprietà dell'Integrale Definito
- **D** Siano $A,B \subseteq \mathbb R$ e $\lambda \in \mathbb R$. Allora si hanno $\lambda A:= \{\lambda a\; | \; a \in A\}$ e $A+B:=\{a+b \; |\; a \in A, b \in B\}$
- **L** Siano $A, B \subseteq \mathbb R$, allora si hanno:
	1.  $\lambda≥0 \quad\Rightarrow\quad \text{inf}(\lambda A)=\lambda \text{inf(A)} \quad \text{sup}(\lambda A)=\lambda \text{sup}(A)$
	2. $\lambda < 0\quad \Rightarrow \quad \text{inf}(\lambda A) = \lambda \text{sup}(A) \quad \text{sup}(\lambda A)=\lambda \text{inf}(A)$
	3. $\text{inf}(A+B)≥\text{inf}(A)+\text{inf}(B)\quad \text{sup}(A+B)≤\text{sup}(A) + \text{sup}(B)$
- **D** Parte Positiva e Parte Negativa di una funzione
- **L** Proprietà della Parte Positiva e Parte Negativa di una funzione
- **P** Siano $f, g:[a,b]\rightarrow \mathbb R, f,g \in\mathscr R([a,b])$ e $\lambda \in \mathbb R$, allora:
	1.  $(\lambda f) \in \mathscr R([a,b])$ e $\displaystyle{\int^b_a\lambda f(x)dx = \lambda \int^b_a f(x)dx}$
	2. $(f+g) \in \mathscr{R}([a,b])$ e $\displaystyle{\int^b_a(f(x)+g(x))dx = \int_a^b f(x)dx + \int^b_af(x) dx}$
	3. (monotonia) se $f(x)≤g(x), \forall x \in [a,b]$ allora $\displaystyle{\int_a^bf(x)dx≤ \int^b_a g(x)dx}$
	4. $|f| \in \mathscr R([a,b])$ e $\displaystyle{\left| \int_a^b f(x)dx\right|≤\int^b_a |f(x)|dx}$
- **C** $\mathscr R([a,b])$ è uno spazio vettoriale e $\mathscr{F}:\mathscr R([a,b]) \rightarrow \mathbb R$, $\,\mathscr F(f):=\displaystyle{\int_a^bf(x)dx}$ è lineare
- **D** Sia $f:I \rightarrow \mathbb R, a,b \in I, a<b$. Se $f \in \mathscr R([\,b])$ allora $\displaystyle{\int_a^b f(x)dx}=-\int^a_b f(x)dx$ e $\displaystyle{\int^a_a}f(x)dx = 0$

###### Additività dell'Integrale
- **P** Additività dell'Integrale
- **P** Sia $f: [a,b]\rightarrow \mathbb R$ e $a=x_0<x_1<...<x_n =b$, allora $f\in\mathscr{R}([a,b])\Leftrightarrow f \in \mathscr{R}([x_{k-1}, x_k]), \forall k \in \{1,...,n\}$ e in tal caso si ha che $\displaystyle{\int_a^b f(x)dx = \sum_{k = 1}^n \int^{x_k}_{x_{k-1}}f(x)dx}$
- **P** Siano $\alpha, \beta, \gamma \in \mathbb R$ e poniamo $a = \text{min}\{\alpha, \beta, \gamma$ e $b = \text{max}\{\alpha, \beta , \gamma\}$. Sia $f \in \mathscr{R}([a,b])$, allora $\displaystyle{\int_\alpha^\beta f(x)dx = \int_\alpha^\gamma f(x)dx + \int_\gamma^\beta f(x)dx}$

###### Funzione Integrale
- **D** Funzione Integrale
- **P** Sia $f \in \mathscr R([a,b])$ e sia $F:[a,b] \rightarrow \mathbb R$ la funzione integrale $\displaystyle{F(x):= \int^x_a f(t)dt}$, allora $F$ è lipschitziana e per ogni $x \in [a,b]$ si ha $\displaystyle{\lim_{\delta \rightarrow 0} \int^{x + \delta}_x f(t)dt = 0}$

###### Classi di Funzioni Integrali
- **T** Sia $f:[a,b]\rightarrow \mathbb R$ monotona, allora $f \in \mathscr R([a,b])$
- **T** Sia $f:[a,b]\rightarrow \mathbb R$ continua, allora $f \in \mathscr R([a,b])$
- **T** Sia $f:[a,b]\rightarrow \mathbb R$, $f$ limitata in $[a,b]$ e continua in $]a,b[$. Allora $f \in \mathscr R([a,b])$ e $\displaystyle{\int_a^b}f(x)dx$ non dipende da $f(a)$ e $f(b)$
- **T** Sia $f:[a,b]\rightarrow \mathbb R$ limitata ed esiste $n \in \mathbb N\setminus\{0\}$ tale che $\{x \in [a,b]\; | \; f \text{ è discontinua in }x\}=\{x0, x_1,...,x_n\}$ con $x_0<x_1<...<x_n$. Allora $f \in \mathscr R([a,b])$ e $\displaystyle{\int_a^bf(x)dx=\int_a^{x_0}f(x)dx + \sum_{i = 1}^n\int_{x_{i-1}}^{x_i}f(x)dx + \int_{x_n}^b}f(x)dx$
- **T** Sia $f:[a,b]\rightarrow \mathbb R, \; f≥0$, allora $\displaystyle{\int_a^b f(x)dx=0\Rightarrow f(x)=0, \; \forall x\in[a,b]}$
###### Teorema Fondamentale del Calcolo Integrale
- **T** Teorema Fondamentale del Calcolo Integrale (generale)
- **T** Teorema della Media Integrale (Primo Approccio)
- **T** Teorema della Media Integrale (Secondo Approccio)
- **T** Teorema Fondamentale del Calcolo Integrale (ridotta)

###### Teorema di Torricelli
- **T** Teorema di Torricelli

###### Integrale Indefinito
- **D** Integrale Indefinito
- **T** Caratterizzazione delle Primitive

###### Integrazione Per Sostituzione
- **T** Formula di Integrazione per Sostituzione per l'Integrale Indefinito
- **T** Prima Formula di Integrazione per Sostituzione negli Integrali Definiti
- **T** Seconda Formula di Integrazione per Sostituzione negli Integrali Definiti
- **L** Sia $g:[-a,a]\rightarrow \mathbb R$ con $a >0$, allora $\displaystyle{\int_{-a}^0g(y)dy=\int^a_0g(-y)dy}$
- **P** Sia $g:[-a,a]\rightarrow \mathbb R$ con $a>0$ e $g$ continua
	1. Se $g$ è pari, allora $\displaystyle{\int_{-a}^ag(y)dy=2\int^a_0g(y)dy}$
	2. Se $g$ è dispari, allora $\displaystyle{\int_{-a}^ag(y)dy=0}$
###### Integrazione per Parti
- **D** $y+A:=\{y+a\; | \;a \in A\}$ 
- **T** Formula di Integrazione per Parti per l'Integrale Indefinito
- **T** Formula di Integrazione per Parti per l'Integrale Definito