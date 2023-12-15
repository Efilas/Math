---
tag: Mate, Analisi
---
### Topologia dell'insieme dei numeri reali
- [ ] **D** Punto Esterno, Punto Interno e Punto di Frontiera
- [ ] **D** Interno, Frontiera e Chiusura di un sottoinsieme di $\mathbb R$ 
- [ ] **T** $c \in ∂A \Leftrightarrow \forall U \in \mathcal I_c, (U\cap A ≠ \varnothing) \wedge (U \cap \mathtt CA)$ 
- [ ] **T** int$A\subseteq A \subseteq \overline A$ e $\overline A =$ int$A \cup ∂ A$  
- [ ] **T** Siano $A, B \subseteq \mathbb R \Rightarrow \begin{cases}A \subseteq B \Rightarrow \text{int}A \subseteq \text{int}B\\ A \subseteq B \Rightarrow \text{I punti esterni di }B\text{ sono esterni anche ad } A\\ \text{int}(A\cap B) = \text{int}A \cap \text{int}B\end{cases}$ 
- [ ] **T** Sia $A \subseteq \mathbb R$ e $c \in \mathbb R$ 
	1. $c \in \overline A \Leftrightarrow$ esiste una successione $(a_n)_{n \in \mathbb N}$ in $A$ che converge a $c$ 
	2. $c$ è interno ad $A \Leftrightarrow$ qualunque sia $(a_n)_{n \in \mathbb N}$ in $\mathbb R$ convergente a $c$, $a_n \in A$ definitivamente
	3. $c$ è esterno ad $A \Leftrightarrow$ qualunque sia $(a_n)_{n \in \mathbb N}$ in $\mathbb R$ convergente a $c$, $a_n \notin A$ definitivamente
	4. $c$ è di frontiera per $A\Leftrightarrow$ esistono $(a_n)_{n \in \mathbb N}$ in $A$ e $(b_n)_{n \in \mathbb N}$ in $\mathtt CA$ convergenti in $c$ 
- [ ] **D** Insieme Aperto e Chiuso
- [ ] **T** Sia $A \subseteq \mathbb R\Rightarrow \begin{cases}A \text{ aperto}\Leftrightarrow A\cap ∂A = \varnothing\\ A \text{ chiuso} \Leftrightarrow ∂A \subseteq A\end{cases}$ 
- [ ] **T** Sia $A \subseteq \mathbb R\Rightarrow \begin{cases} A \text{ aperto} \Leftrightarrow \mathtt CA \text{ chiuso}\\ A \text{ chiuso} \Leftrightarrow \mathtt CA \text{ aperto}\end{cases}$ 
- [ ] **T** Sia $\{A_i\; | \; i \in I\}$ una famiglia di insiemi, allora $\displaystyle{\begin{cases}\forall i \in I, A_i\text{ aperto}\Rightarrow \bigcup_{i \in I}A_i \text{ aperto}\\ \forall i \in I, A_i\text{ chiuso}\Rightarrow \bigcap_{i \in I}A_i \text{ chiuso}\end{cases}}$ 
- [ ] **T** Siano $A,B \subseteq \mathbb R$ allora $\begin{cases}A, B \text{ aperti}\Rightarrow A\cap B\text{ aperto}\\ A, B \text{ chiusi}\Rightarrow A\cup B \text{ chiuso}\end{cases}$
- [ ] **T** Sia $A \subseteq \mathbb R \Rightarrow \begin{cases}\text{int}A \text{ aperto}\\ \overline A \text{ chiuso}\end{cases}$ 
- [ ] **D** Insieme Compatto
- [ ] **T** Caratterizzazione degli Insiemi Compatti
- [ ] **D** Punto limite, punto di accumulazione, punto isolato, insieme derivato di un sottoinsieme di $\mathbb R$ 
- [ ] **T** Sia $A \subseteq \mathbb R\Rightarrow \begin{cases}\text{int}A \subseteq D(A) \subseteq \overline A\\ ∂A\setminus A \subseteq D(A)\end{cases}$  
- [ ] **T** Siano $A \subseteq \mathbb R$ e $c \in \overline {\mathbb R}$, allora $c \in PL(A)$ se e solo se esiste $(a_n)_{n \in \mathbb N}$ in $A\setminus \{c\}$ che tende a $c$ 

### Estremi e Limitatezza Delle funzioni
- [ ] **D** Funzione superiormente limitata, superiormente illimitata e estremo superiore 
- [ ] **D** Funzione inferiormente limitata, inferiormente illimitata e estremo inferiore
- [ ] **D** Funzione limitata

### Limiti di Funzioni
- [ ] **D** Limite di una funzione
- [ ] **D** Funzione Convergente, Divergente, Regolare, Oscillante
- [ ] **T** Relazione tra limite di funzione e limite di successione
- [ ] **T** Unicità del Limite
- [ ] **T** Siano $A,B \subseteq \mathbb R,f:A\rightarrow \mathbb R, g:B \rightarrow \mathbb R, c \in PL(A)\cap PL(B)$ e sia $W \in \mathcal I_c$ tale che $\begin{cases}A\cap W\setminus\{c\}=B\cap W\setminus \{c\}\\ \forall x \in A\cap W\setminus \{c\}, f(x)=g(x)\end{cases}$ , allora se $f$ è regolare, anche $g$ lo è e $\displaystyle{\lim_{x \rightarrow c}f(x)=\lim_{x \rightarrow c}g(x)}$
- [ ] **T** Limitatezza delle funzioni regolari
- [ ] **T** Limite della Restrizione
- [ ] **T** Limite della Composizione
- [ ] **D** Limite Destro e Sinistro
- [ ] **T** Relazione tra limiti Unilateri e Bilatero
- [ ] **D** Funzione Asintotica
- [ ] **T** Relazione di Equivalenza tra Asintotici
- [ ] **T** Proprietà degli Asintotici
- [ ] **D** Funzione Trascurabile
- [ ] **T** Teorema Ausiliario tra Asintotici e Trascurabili
- [ ] **T** Regole di Calcolo dei Trascurabili
- [ ] **D** Funzione Controllata
- [ ] **T** Teorema di collegamento tra Controllate, Asintotici e Trascurabili
- [ ] **D** Funzione Crescente, Decrescente, Monotona
- [ ] **T** $A \subseteq \mathbb R, f:A \rightarrow \mathbb R$ strettamente monotona, allora è iniettiva e $f ^{-1}$ è strettamente monotona 
- [ ] **T** Limite delle Funzioni Monotone
- [ ] **D** Condizione di Cauchy
- [ ] **T** $f:A \rightarrow \mathbb R$ è convergente per $x \rightarrow c$ se e solo se verifica la condizione di Cauchy per $x\rightarrow c$ 
- [ ] **D** Massimo Limite e Minimo Limite per le Funzioni

### Funzioni Continue
- [ ] **D** Funzione Continua
- [ ] **D** Funzione Continua in un insieme
- [ ] **T** Siano $A\subseteq \mathbb R, f:A \rightarrow \mathbb R, c \in A$ allora
	1. Se $c$ è un punto isolato per $A$, $f$ è continua in $c$
	2. Se $c \in D(A)$, $f$ è continua in $c$ se e solo se $\displaystyle{\lim_{x \rightarrow c}f(x) = f(c)}$ 
- [ ] **T** Caratterizzazione della Continuità
- [ ] **T** Siano $f, g$ funzioni continue, allora $f+g, fg$ sono continue e se $\forall x, g(x)≠0$ $\frac{f}{g}$ è continua
- [ ] **T** Continuità della Composizione
- [ ] **T** Teorema di Weierstrass
- [ ] **T** Teorema di Bolzano o degli zeri
- [ ] **T** Teorema dei Valori Intermedi
- [ ] **T** $f$ monotona e $f(A)$ intervallo, allora $f$ è continua
- [ ] **T** Siano $a, b, c \in I \begin{cases}a<b, a<c, f(a)<f(b)\Rightarrow f(a)<f(c)\\ a<b, c<b, f(a)<f(b)\Rightarrow f(c)<f(b)\end{cases}$ 
- [ ] **T** Siano $I$ intervallo e $f$ continua e iniettiva, allora $f$ è strettamente monotona
- [ ] **T** Teorema sulla continuità dell'inversa
- [ ] **D** Funzione uniformemente continua
- [ ] **T** Se $f$ è continua è uniformemente continua
- [ ] **T** $f$ uniformemente continua $\Leftrightarrow$ qualunque siano $(a_n)_{n \in \mathbb N}$ e $(b_n)_{n \in \mathbb N}$ tali che $a_n-b_n \rightarrow 0$ risulta $f(a_n)-f(b_n)\rightarrow 0$ 
- [ ] **T** $f$ uniformemente continua e $(a_n)_{n \in \mathbb N}$ convergente, allora $f(a_n)$ è convergente
- [ ] **T** Teorema di Heine - Cantor
- [ ] **T** Teorema sulla prolungabilità delle funzioni