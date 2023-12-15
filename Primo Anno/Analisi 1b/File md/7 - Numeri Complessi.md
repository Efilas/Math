---
tag: Mate, Analisi
---
###### Definizione e Piano di Gauss
- **D** Unità Immaginaria
- **D** Numero Complesso
- **D** Insieme dei Numeri Complessi
- **D** Parte Reale $\Re(z)$ e Parte Immaginaria $\Im(z)$
- **P** $F:\mathbb C\rightarrow \mathbb R^2, F(a+ib):=(a,b)$ è biunivoca

###### Somma e Prodotto
- **D** Somma e Prodotto in $\mathbb C$
- **P** Somma e Prodotto in $\mathbb C$ seguono le stesse regole di somma e prodotto in $\mathbb R$ e $\mathbb R$ è chiuso rispetto a somma e prodotto definite in $\mathbb C$
- **D** Somma e Prodotto in $\mathbb R^2$
- **P** L'applicazione $F:(\mathbb C, +, \cdot) \rightarrow (\mathbb R^2, \oplus, \odot), F(a+ib)=(a,b)$ gode delle seguenti proprietà:
	1. $F(z+w)=F(z)\oplus F(w), \forall z,w \in \mathbb C$
	2. $F(z\cdot w)=F(z)\odot F(w), \forall z,w \in \mathbb C$
- **T** $(\mathbb C, +,\cdot)$ è un campo
###### Coniugato e Modulo
- **D** Coniugato di un Numero Complesso
- **P** Proprietà del Coniugato:
	1. $z=0$ se e solo se $\overline z=0$
	2. $\Re(z)=\frac{z+\overline z}{2}$ e $\Im(z)=\frac{z-\overline z}{2i}$
	3. $\overline{\overline z}=z$
	4. $\overline z=z$ se e solo se $\Im(z)=0$
	5. $\overline{(z+w)}=\overline z+\overline w$
	6. $\overline{z\cdot w}=\overline z\cdot\overline w$
	7. $\overline{(\frac z w)}=\frac {\overline z}{\overline w}$ se $w≠0$
	8. $z \overline z= (\Re (z))^2+(\Im(z))^2$
	9. $z\overline z=0$ se e solo se $z=0$
- **D** Modulo di un Numero Complesso
- **P** Proprietà del Modulo:
	1. $|z|≥0$
	2. $|z|=0$ se e solo se $z=0$
	3. $|z|=\sqrt{z \overline z}$
	4. $|z|=|\overline z|$
	5. $|zw|=|z|\cdot|w|$
	6. $|\underbrace{t}_{\in \mathbb R}|=|\underbrace{t+0i}_{\in \mathbb C}|$
	7. $|\underbrace{t}_{\in \mathbb R}\underbrace{z}_{\in \mathbb C}|=|\underbrace{t}_{\in \mathbb R}|\cdot |\underbrace{z}_{\in \mathbb C}|$
	8. $|\Re(z)|≤|z|$ e $|\Im(z)|≤|z|$
	9. (Disuguaglianza Triangolare) $|z+w|≤|z|+|w|$
	10. $|z|≤|\Re(z)|+|\Im(z)|$
	11. Se $z≠0$, si ha $z^{-1}=\frac 1 z=\frac{\overline z}{|z|^2}$

###### Argomento
- **L** Se $z \in \mathbb C\setminus \{0\}$, allora $\frac z{|z|}$ si trova sulla circonferenza con centro nell'origine e di raggio 1
- **L** Sia $w \in \mathbb C\setminus \{0\}$, sono equivalenti:
	1. $|w|=1$
	2. $w= \cos (\theta)+ i \sin (\theta)$, con $\theta \in \mathbb R$
E in tal caso $w = \cos (\theta)+i \sin (\theta)\Leftrightarrow \begin{cases}\cos(\theta)=\Re(w)\\ \sin(\theta)=\Im(w)\end{cases}$
- **D** Argomento di un Numero Complesso
- **L** Sia $z \in \mathbb C\setminus \{0\}$, allora l'insieme $arg(z)$ è non vuoto e se $\theta \in arg(z)$, allora $arg(z)=\{\theta + 2kπ:n\in\mathbb Z\}$
- **D** Argomento Principale
- **T** Sia $z\in \mathbb C\setminus\{0\}$, $z=a+ib$ con $a,b \in \mathbb R$, allora 
	$Arg(z)=\begin{cases}\arctan(\frac ba)-π & a<0, b<0\\ -\fracπ2 & a=0, b<0 \\ \arctan(\frac ba) & a>0,b<0\\ 0 & a> 0, b=0\\ \arctan(\frac ba)&a>0, b>0\\ \frac π2 & a=0, b>0\\ \arctan(\frac ba)+π & a<0, b>0\\ π & a<0, b=0\end{cases}$

###### Forma Trigonometrica
- **D** Forma Algebrica e Forma Trigonometrica
- **P** Siano $z,w \in \mathbb C\setminus\{0\}$, $z=\rho(\cos(\theta)+i\sin (\theta))$ e $w=r(\cos(\phi)+i \sin(\phi))$, allora valgono le seguenti:
	1. $z=w$ se e solo se $\rho = r$ e $\exists n\in \mathbb Z: \theta = \phi+2nπ$
	2. $\overline z=\rho(\cos(-\theta)+i\sin(-\theta))$
	3. $z^{-1}=\frac1\rho(\cos(-\theta)+i \sin(-\theta))$
	4. $zw=\rho\cdot r(\cos(\theta + \phi)+i \sin(\theta+\phi))$
	5. $\frac zw=\frac \rho r(\cos(\theta-\phi)+i \sin(\theta-\phi))$

###### Forma Trigonometrica e Potenze $n$-esime
- **D** Potenza $n$-esima
- **T** Formula di De Moivre

###### Forma Esponenziale e Potenze $n$-esime
- **D** Forma Esponenziale
- **P** Proprietà della Forma Esponenziale:
	1. $|e^{i \theta}|=1$
	2. $e^{i2nπ}=1$
	3. $\rho e^{i \theta}\cdot re^{i \phi}=\rho re^{i (\theta+\phi)}$
	4. $\frac{\rho e^{i \theta}}{r e^{i\phi}}=\frac \rho re^{i(\theta-\phi)}$
	5. (Formula di De Moivre) $(\rho e^{i \theta})^n=\rho^ne^{in\theta}$

###### Radici $n$-esime
- **D** Radice $n$-esima
- **T** Siano $w \in \mathbb C\setminus\{0\}$ e $n \in \mathbb N\setminus \{0\}$. Allora l'insieme $\sqrt[n]{w}$ ha $n$ elementi e se $w = \rho e^{i \theta}$, si ha $\sqrt[n]{w}=\{\sqrt[n]{\rho}e^{i\frac{\theta+2kπ}{n}}:k\in\{0, 1,...,n.1\}\}$
- **E** Radici Quadrate Complesse

###### Equazioni Algebriche in $\mathbb C$
- **T** Sia l'equazione $az^2+bz+c=0$, con $a,b,c \in \mathbb C, a≠0$, allora le soluzioni sono tutte e solo $\displaystyle{z=\frac{-b\pm\sqrt{b^2-4ac}}{2a}}$
- **E** Equazioni in $\mathbb C$ caso generale
- **D** Radice o Zero di un Polinomio
- **D** Molteplicità di uno Zero di Polinomio
- **E** Teorema fondamentale dell'Algebra
- **E** (Corollario) Un'equazione del tipo $P_n(z)=0$ con $P_n(z)$ un polinomio ha $n$ soluzioni contate con le loro molteplicità
- **P** Sia $P_n(z)$ un polinomio in variabile complessa a coefficienti reali, se $z_0$ è uno zero del polinomio, allora anche $\overline{z_0}$ lo è e ha la stessa molteplicità di $z_0$

###### Esponenziale Complesso
- **D** Funzione Esponenziale Complessa
- **P** Proprietà dell'Esponenziale Complesso:
	1. $|exp_\mathbb C(z)|=e^{\Re(z)}$
	2. $exp_\mathbb C(z)\in \mathbb C\setminus \{0\}$
	3. $exp_\mathbb C(i2nπ)=1$
	4. $exp_\mathbb C(z+w)=exp_\mathbb C(z)\cdot exp_\mathbb C(w)$
	5. $exp_\mathbb C(z+i2nπ)=exp_\mathbb C(z)$
- **P** La funzione $exp_\mathbb C:\mathbb C\rightarrow \mathbb C\setminus \{0\}$ non è iniettiva e se $z,w\in \mathbb C$, allora $exp_\mathbb C(z)=\exp_\mathbb C(w)\Leftrightarrow \begin{cases}\Re(z)=\Re(w)\\ \Im(z)=\Im(w)+2nπ\end{cases}$
- **T** Sia $\theta \in \mathbb R$. Si definisce $S(]\theta, \theta+2π]):= \{z \in \mathbb C:\Im(z)\in]\theta, \theta+2π]\}$. Allora $exp_\mathbb C:S(]\theta, \theta+2π])\rightarrow \mathbb C\setminus \{0\}$ è biunivoca
- **D** Determinazione Principale del Logaritmo Complesso