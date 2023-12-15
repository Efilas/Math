---
tag: Mate, Analisi
---
###### Definizioni
- **D** Integrale Generalizzato (Esistenza e non)
- **D** Integrale Generalizzato (Convergenza e Divergenza)
- **D** Funzione Integrabile in senso generalizzato in $[a,b[$
- **D** Sia $f:]a,b[\rightarrow \mathbb R, \; -∞≤a<b≤+∞$. Diciamo che $f$ è integrabile in senso generalizzato in $]a,b[$ se, preso $c \in ]a,b[$, è integrabile in senso generalizzato in $]a,c]$ e in $[c,b[$ e in tal caso si pone $\displaystyle{\int^b_af(x)dx = \int^c_af(x)dx + \int^b_cf(x)dx}$

###### Proprietà dell'Integtale Generalizzato
- **P** Siano $f:[a,b[\rightarrow \mathbb R, -∞<a<b≤+∞$ e $\lambda \in \mathbb R$. Se esiste $\displaystyle{\int_a^bf(x)dx}$, allora esiste $\displaystyle{\int_a^b \lambda f(x)dx}$ e $\displaystyle{\int_a^b \lambda f(x)dx = \lambda \int_a^bf(x)dx}$
- **P** Siano $f,g:[a,b[\rightarrow \mathbb R$, se esistono $\displaystyle{\int^b_af(x)dx}$ e $\displaystyle{\int_a^bg(x)dx}$ e $\displaystyle{\int^b_af(x)dx+\int_a^bg(x)dx}$ non si presenta come una forma indeterminata, allora esiste $\displaystyle{\int_a^b(f(x)+g(x))dx}=\int_a^bf(x)dx+\int_a^bg(x)dx$ 
- **L** Sia $f:[a,b[\rightarrow \mathbb R, -∞<a<b≤+∞$ tale che $f \in \mathscr R([a,\beta]), \forall \beta \in [a,b[$. Sia $c \in ]a,b[$, allora $\displaystyle{\int_a^bf(x)dx}$ e $\displaystyle{\int_c^bf(x)dx}$ hanno lo stesso carattere
- **T** Sia $f:[a,b[\rightarrow \mathbb R, -∞<a<b≤+∞$ tale che:
	1. $f \in \mathscr{R}([a,\beta]), \forall \beta \in [a,b[$
	2. $f≥0$
Allora esiste $\displaystyle{\int_a^bf(x)dx}$ e converge ad un numero non negativo oppure diverge a $+∞$

###### Intervalli Limitati: Condizione Sufficiente per la Convergenza
- **L** Sia $f:]a,b]\rightarrow \mathbb R, -∞<a<b<+∞$, allora $f$ continua e limitata $\Rightarrow \displaystyle{\int_a^bf(x)dx}$ convergente
- **P** Sia $f:]a,b]\rightarrow \mathbb R, -∞<a<b<+∞$, allora $f$ contintua e $\displaystyle{\exists \lim_{x\rightarrow a^+}f(x)\in \mathbb R \Rightarrow \int_a^bf(x)dx}$ convergente

###### Intervalli Illimitati: Condizione Necessaria per la Convergenza
- **T** Intervalli Illimitati: Condizione Necessaria per la Convergenza
- **C** Sia $f:[a, +∞[\rightarrow \mathbb R$ tale che:
	1. $f \in \mathscr R([a,\beta]), \forall \beta \in ]a,b[$
	2. $f(x)≥0, \forall x \in [a,+∞[$
Allora $\displaystyle{\exists\lim_{x \rightarrow +∞} f(x)≠0\Rightarrow \int_a^{+∞}f(x)dx=+∞}$
###### Criteri di Convergenza
- **L** Siano $f,g:[a,b[\rightarrow \mathbb R, -∞<a<b≤+∞$ tali che:
	1. $f,g \in \mathscr R([a,\beta]), \forall \beta \in [a,b[$ 
	2. $f(x)≤g(x), \forall x \in [a,b[$ 
Se esistono $\displaystyle{\int_a^bf(x)dx}$ e $\displaystyle{\int^b_ag(x)dx}$ allora $\displaystyle{\int_a^bf(x)dx≤\int_a^bg(x)dx}$
- **T** Primo Teorema del Confronto: Caso della Divergenza
- **T** Secondo Teorema del Confronto: Caso della Convergenza
- **T** Teorema del Confronto Asintotico
###### Integrazione per Parti per gli Integrali Generalizzati
- **T** Formula di Integrazione per Parti per gli Integrali Generalizzati
###### Assoluta Integrabilità
- **D** Funzione Assolutamente Integrabile in Senso Generealizzato in $[a,b[$
- **T** Assoluta Integrabilità implica Integrabilità
- **T** Criterio di Convergenza per le Funzioni Oscillanti